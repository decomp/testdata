; ModuleID = 'coreutils-8.27/src/nice.bc'
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
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"  -n, --adjustment=N   add integer N to the niceness (default 10)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !97
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !103
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !108
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !111
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !118
@.str.39 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.40 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.41 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.51, i32 0, i32 0), i8* null], align 16, !dbg !125
@.str.42 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.43 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.44 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.45 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.46 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.47 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.48 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.49 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.50 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.51 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !170
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !177
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !189
@.str.11.52 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.53 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.54 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.55 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.56 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.57 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.58 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !196
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !203
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !205
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.69 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.84 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !211
@.str.1.95 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.100 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !220
@.str.3.114 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.115 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.116 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.117 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.118 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !620 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !624, metadata !625), !dbg !626
  %2 = icmp eq i32 %0, 0, !dbg !627
  br i1 %2, label %8, label %3, !dbg !629

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !630, !tbaa !632
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !630
  %6 = load i8*, i8** @program_name, align 8, !dbg !630, !tbaa !632
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !630
  br label %43, !dbg !630

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !636
  %10 = load i8*, i8** @program_name, align 8, !dbg !636, !tbaa !632
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !636
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !638
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i32 -20, i32 19) #10, !dbg !638
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !639
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !632
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #10, !dbg !639
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !644
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !632
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #10, !dbg !644
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !645
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !632
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !645
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !646
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !632
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !646
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !647
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !73, metadata !625) #10, !dbg !648
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !73, metadata !625) #10, !dbg !648
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !650
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !650
  %30 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !651
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !81, metadata !625) #10, !dbg !652
  %31 = icmp eq i8* %30, null, !dbg !653
  br i1 %31, label %38, label %32, !dbg !655

; <label>:32:                                     ; preds = %8
  %33 = tail call i32 @strncmp(i8* nonnull %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !656
  %34 = icmp eq i32 %33, 0, !dbg !656
  br i1 %34, label %38, label %35, !dbg !657

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !658
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !658
  br label %38, !dbg !660

; <label>:38:                                     ; preds = %8, %32, %35
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !661
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !661
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !662
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !662
  br label %43

; <label>:43:                                     ; preds = %38, %3
  tail call void @exit(i32 %0) #15, !dbg !663
  unreachable, !dbg !663
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !21 {
  %3 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !29, metadata !625), !dbg !664
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !30, metadata !625), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !32, metadata !625), !dbg !666
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !33, metadata !625), !dbg !667
  %4 = load i8*, i8** %1, align 8, !dbg !668, !tbaa !632
  tail call void @set_program_name(i8* %4) #10, !dbg !669
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !670
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !671
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !672
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !673, metadata !625), !dbg !676
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !678, !tbaa !680
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !625), !dbg !683
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !33, metadata !625), !dbg !667
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !625), !dbg !683
  %9 = icmp sgt i32 %0, 1, !dbg !684
  br i1 %9, label %10, label %73, !dbg !685

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %1 to i64*
  br label %12, !dbg !685

; <label>:12:                                     ; preds = %10, %51
  %13 = phi i8* [ null, %10 ], [ %53, %51 ]
  %14 = phi i32 [ 1, %10 ], [ %52, %51 ]
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !38, metadata !625), !dbg !683
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !33, metadata !625), !dbg !667
  %15 = sext i32 %14 to i64, !dbg !686
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !686
  %17 = load i8*, i8** %16, align 8, !dbg !686, !tbaa !632
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !39, metadata !625), !dbg !687
  %18 = load i8, i8* %17, align 1, !dbg !688, !tbaa !689
  %19 = icmp eq i8 %18, 45, !dbg !690
  br i1 %19, label %20, label %34, !dbg !691

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !692
  %22 = load i8, i8* %21, align 1, !dbg !692, !tbaa !689
  %23 = icmp eq i8 %22, 45, !dbg !692
  %24 = icmp eq i8 %22, 43, !dbg !692
  %25 = or i1 %23, %24, !dbg !692
  %26 = select i1 %25, i64 2, i64 1, !dbg !692
  %27 = getelementptr inbounds i8, i8* %17, i64 %26, !dbg !692
  %28 = load i8, i8* %27, align 1, !dbg !692, !tbaa !689
  %29 = sext i8 %28 to i32, !dbg !692
  %30 = add nsw i32 %29, -48, !dbg !692
  %31 = icmp ult i32 %30, 10, !dbg !692
  br i1 %31, label %32, label %34, !dbg !693

; <label>:32:                                     ; preds = %20
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !33, metadata !625), !dbg !667
  %33 = add nsw i32 %14, 1, !dbg !694
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !38, metadata !625), !dbg !683
  br label %51, !dbg !696

; <label>:34:                                     ; preds = %20, %12
  %35 = add i32 %14, -1, !dbg !697
  %36 = sub nsw i32 %0, %35, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !46, metadata !625), !dbg !699
  %37 = sext i32 %35 to i64, !dbg !700
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !700
  tail call void @llvm.dbg.value(metadata i8** %38, i64 0, metadata !47, metadata !625), !dbg !701
  %39 = load i64, i64* %11, align 8, !dbg !702, !tbaa !632
  %40 = bitcast i8** %38 to i64*, !dbg !703
  store i64 %39, i64* %40, align 8, !dbg !703, !tbaa !632
  store i32 0, i32* @optind, align 4, !dbg !704, !tbaa !680
  %41 = tail call i32 @getopt_long(i32 %36, i8** %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !705
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !43, metadata !625), !dbg !706
  %42 = load i32, i32* @optind, align 4, !dbg !707, !tbaa !680
  %43 = add i32 %35, %42, !dbg !708
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !38, metadata !625), !dbg !683
  switch i32 %41, label %50 [
    i32 110, label %44
    i32 -1, label %55
    i32 -130, label %46
    i32 -131, label %47
  ], !dbg !709

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** @optarg, align 8, !dbg !710, !tbaa !632
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !33, metadata !625), !dbg !667
  br label %51

; <label>:46:                                     ; preds = %34
  tail call void @usage(i32 0) #16, !dbg !712
  unreachable, !dbg !712

; <label>:47:                                     ; preds = %34
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !632
  %49 = load i8*, i8** @Version, align 8, !dbg !713, !tbaa !632
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !713
  tail call void @exit(i32 0) #15, !dbg !713
  unreachable, !dbg !713

; <label>:50:                                     ; preds = %34
  tail call void @usage(i32 125) #16, !dbg !714
  unreachable, !dbg !714

; <label>:51:                                     ; preds = %44, %32
  %52 = phi i32 [ %43, %44 ], [ %33, %32 ]
  %53 = phi i8* [ %45, %44 ], [ %21, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !38, metadata !625), !dbg !683
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !33, metadata !625), !dbg !667
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !38, metadata !625), !dbg !683
  %54 = icmp slt i32 %52, %0, !dbg !684
  br i1 %54, label %12, label %55, !dbg !685, !llvm.loop !715

; <label>:55:                                     ; preds = %51, %34
  %56 = phi i8* [ %53, %51 ], [ %13, %34 ]
  %57 = phi i32 [ %52, %51 ], [ %43, %34 ]
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !33, metadata !625), !dbg !667
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !38, metadata !625), !dbg !683
  %58 = icmp eq i8* %56, null, !dbg !717
  br i1 %58, label %73, label %59, !dbg !718

; <label>:59:                                     ; preds = %55
  %60 = bitcast i64* %3 to i8*, !dbg !719
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #10, !dbg !719
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !48, metadata !625), !dbg !720
  %61 = call i32 @xstrtol(i8* nonnull %56, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !721
  %62 = icmp ugt i32 %61, 1, !dbg !723
  br i1 %62, label %63, label %66, !dbg !724

; <label>:63:                                     ; preds = %59
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !725
  %65 = call i8* @quote(i8* nonnull %56) #10, !dbg !725
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %64, i8* %65) #10, !dbg !725
  unreachable, !dbg !725

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %3, align 8, !dbg !726, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !48, metadata !625), !dbg !720
  %68 = icmp slt i64 %67, 39, !dbg !726
  %69 = select i1 %68, i64 %67, i64 39, !dbg !726
  %70 = icmp sgt i64 %69, -39, !dbg !726
  %71 = select i1 %70, i64 %69, i64 -39, !dbg !726
  %72 = trunc i64 %71 to i32, !dbg !726
  call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !32, metadata !625), !dbg !666
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #10, !dbg !729
  br label %73, !dbg !730

; <label>:73:                                     ; preds = %55, %2, %66
  %74 = phi i1 [ true, %66 ], [ false, %55 ], [ false, %2 ]
  %75 = phi i32 [ %57, %66 ], [ %57, %55 ], [ 1, %2 ]
  %76 = phi i32 [ %72, %66 ], [ 10, %55 ], [ 10, %2 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !32, metadata !625), !dbg !666
  %77 = icmp eq i32 %75, %0, !dbg !731
  br i1 %77, label %78, label %92, !dbg !733

; <label>:78:                                     ; preds = %73
  br i1 %74, label %79, label %81, !dbg !734

; <label>:79:                                     ; preds = %78
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !736
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !739
  call void @usage(i32 125) #16, !dbg !740
  unreachable, !dbg !740

; <label>:81:                                     ; preds = %78
  %82 = tail call i32* @__errno_location() #17, !dbg !741
  store i32 0, i32* %82, align 4, !dbg !742, !tbaa !680
  %83 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !31, metadata !625), !dbg !744
  %84 = icmp eq i32 %83, -1, !dbg !745
  br i1 %84, label %85, label %90, !dbg !747

; <label>:85:                                     ; preds = %81
  %86 = load i32, i32* %82, align 4, !dbg !748, !tbaa !680
  %87 = icmp eq i32 %86, 0, !dbg !749
  br i1 %87, label %90, label %88, !dbg !750

; <label>:88:                                     ; preds = %85
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !751
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %86, i8* %89) #10, !dbg !751
  unreachable, !dbg !751

; <label>:90:                                     ; preds = %85, %81
  %91 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %83) #10, !dbg !752
  br label %127, !dbg !753

; <label>:92:                                     ; preds = %73
  %93 = tail call i32* @__errno_location() #17, !dbg !754
  store i32 0, i32* %93, align 4, !dbg !755, !tbaa !680
  %94 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !756
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !31, metadata !625), !dbg !744
  %95 = icmp eq i32 %94, -1, !dbg !757
  br i1 %95, label %96, label %101, !dbg !759

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %93, align 4, !dbg !760, !tbaa !680
  %98 = icmp eq i32 %97, 0, !dbg !761
  br i1 %98, label %101, label %99, !dbg !762

; <label>:99:                                     ; preds = %96
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !763
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %97, i8* %100) #10, !dbg !763
  unreachable, !dbg !763

; <label>:101:                                    ; preds = %96, %92
  %102 = add nsw i32 %94, %76, !dbg !764
  %103 = call i32 @setpriority(i32 0, i32 0, i32 %102) #10, !dbg !765
  %104 = icmp eq i32 %103, 0, !dbg !766
  br i1 %104, label %117, label %105, !dbg !767

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* %93, align 4, !dbg !768, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !771, metadata !625), !dbg !776
  %107 = icmp eq i32 %106, 13, !dbg !778
  %108 = icmp eq i32 %106, 1, !dbg !779
  %109 = or i1 %107, %108, !dbg !780
  %110 = select i1 %109, i32 0, i32 125, !dbg !781
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !782
  call void (i32, i32, i8*, ...) @error(i32 %110, i32 %106, i8* %111) #10, !dbg !783
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, i64 0, metadata !786, metadata !625), !dbg !846
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 0, !dbg !848
  %114 = load i32, i32* %113, align 8, !dbg !848, !tbaa !849
  %115 = and i32 %114, 32, !dbg !848
  %116 = icmp eq i32 %115, 0, !dbg !784
  br i1 %116, label %117, label %127, !dbg !852

; <label>:117:                                    ; preds = %105, %101
  %118 = sext i32 %75 to i64, !dbg !853
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !853
  %120 = load i8*, i8** %119, align 8, !dbg !853, !tbaa !632
  %121 = call i32 @execvp(i8* %120, i8** %119) #10, !dbg !854
  %122 = load i32, i32* %93, align 4, !dbg !855, !tbaa !680
  %123 = icmp eq i32 %122, 2, !dbg !856
  %124 = select i1 %123, i32 127, i32 126, !dbg !855
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !52, metadata !625), !dbg !857
  %125 = load i8*, i8** %119, align 8, !dbg !858, !tbaa !632
  %126 = call i8* @quote(i8* %125) #10, !dbg !859
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %126) #10, !dbg !860
  br label %127

; <label>:127:                                    ; preds = %105, %117, %90
  %128 = phi i32 [ 0, %90 ], [ %124, %117 ], [ 125, %105 ]
  ret i32 %128, !dbg !861
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpriority(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setpriority(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !862 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !864, metadata !625), !dbg !865
  store i8* %0, i8** @file_name, align 8, !dbg !866, !tbaa !632
  ret void, !dbg !867
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !868 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !872, metadata !625), !dbg !873
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !874, !tbaa !875
  ret void, !dbg !877
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !878 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !883, !tbaa !632
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !884
  %3 = icmp eq i32 %2, 0, !dbg !885
  br i1 %3, label %21, label %4, !dbg !886

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !887, !tbaa !875, !range !888
  %6 = icmp eq i8 %5, 0, !dbg !887
  %7 = tail call i32* @__errno_location() #17, !dbg !889
  br i1 %6, label %11, label %8, !dbg !891

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !892, !tbaa !680
  %10 = icmp eq i32 %9, 32, !dbg !893
  br i1 %10, label %21, label %11, !dbg !894

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !895
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !880, metadata !625), !dbg !896
  %13 = load i8*, i8** @file_name, align 8, !dbg !897, !tbaa !632
  %14 = icmp eq i8* %13, null, !dbg !897
  %15 = load i32, i32* %7, align 4, !tbaa !680
  br i1 %14, label %18, label %16, !dbg !898

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !899
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !900
  br label %19, !dbg !900

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #10, !dbg !901
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !902, !tbaa !680
  tail call void @_exit(i32 %20) #15, !dbg !903
  unreachable, !dbg !903

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !904, !tbaa !632
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !906
  %24 = icmp eq i32 %23, 0, !dbg !907
  br i1 %24, label %27, label %25, !dbg !908

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !909, !tbaa !680
  tail call void @_exit(i32 %26) #15, !dbg !910
  unreachable, !dbg !910

; <label>:27:                                     ; preds = %21
  ret void, !dbg !911
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !912 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !914, metadata !625), !dbg !917
  %2 = icmp eq i8* %0, null, !dbg !918
  br i1 %2, label %3, label %6, !dbg !920

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !921, !tbaa !632
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !923
  tail call void @abort() #15, !dbg !924
  unreachable, !dbg !924

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !915, metadata !625), !dbg !926
  %8 = icmp eq i8* %7, null, !dbg !927
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !928
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !929
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !916, metadata !625), !dbg !930
  %11 = ptrtoint i8* %10 to i64, !dbg !931
  %12 = ptrtoint i8* %0 to i64, !dbg !931
  %13 = sub i64 %11, %12, !dbg !931
  %14 = icmp sgt i64 %13, 6, !dbg !933
  br i1 %14, label %15, label %24, !dbg !934

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !935
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.40, i64 0, i64 0), i64 7) #14, !dbg !936
  %18 = icmp eq i32 %17, 0, !dbg !937
  br i1 %18, label %19, label %24, !dbg !938

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !914, metadata !625), !dbg !917
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.41, i64 0, i64 0), i64 3) #14, !dbg !939
  %21 = icmp eq i32 %20, 0, !dbg !942
  br i1 %21, label %22, label %24, !dbg !943

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !944
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !914, metadata !625), !dbg !917
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !946, !tbaa !632
  br label %24, !dbg !947

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !914, metadata !625), !dbg !917
  store i8* %25, i8** @program_name, align 8, !dbg !948, !tbaa !632
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !949, !tbaa !632
  ret void, !dbg !950
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !951 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !956, metadata !625), !dbg !959
  %2 = tail call i32* @__errno_location() #17, !dbg !960
  %3 = load i32, i32* %2, align 4, !dbg !960, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !957, metadata !625), !dbg !961
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !962
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !962
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !962
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !963
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !958, metadata !625), !dbg !964
  store i32 %3, i32* %2, align 4, !dbg !965, !tbaa !680
  ret %struct.quoting_options* %8, !dbg !966
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !967 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !973, metadata !625), !dbg !974
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !975
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !975
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !976
  %5 = load i32, i32* %4, align 8, !dbg !976, !tbaa !977
  ret i32 %5, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !980 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !984, metadata !625), !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !985, metadata !625), !dbg !987
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !988
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !988
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !989
  store i32 %1, i32* %5, align 8, !dbg !990, !tbaa !977
  ret void, !dbg !991
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !992 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !996, metadata !625), !dbg !1004
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !997, metadata !625), !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !998, metadata !625), !dbg !1006
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !625), !dbg !1007
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1008
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1008
  %6 = lshr i8 %1, 5, !dbg !1009
  %7 = zext i8 %6 to i64, !dbg !1009
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1010
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1000, metadata !625), !dbg !1011
  %9 = and i8 %1, 31, !dbg !1012
  %10 = zext i8 %9 to i32, !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1002, metadata !625), !dbg !1014
  %11 = load i32, i32* %8, align 4, !dbg !1015, !tbaa !680
  %12 = lshr i32 %11, %10, !dbg !1016
  %13 = and i32 %12, 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1003, metadata !625), !dbg !1018
  %14 = and i32 %2, 1, !dbg !1019
  %15 = xor i32 %13, %14, !dbg !1020
  %16 = shl i32 %15, %10, !dbg !1021
  %17 = xor i32 %16, %11, !dbg !1022
  store i32 %17, i32* %8, align 4, !dbg !1022, !tbaa !680
  ret i32 %13, !dbg !1023
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1024 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1028, metadata !625), !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1029, metadata !625), !dbg !1032
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1033
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1028, metadata !625), !dbg !1031
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1028, metadata !625), !dbg !1031
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1036
  %6 = load i32, i32* %5, align 4, !dbg !1036, !tbaa !1037
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1030, metadata !625), !dbg !1038
  store i32 %1, i32* %5, align 4, !dbg !1039, !tbaa !1037
  ret i32 %6, !dbg !1040
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1041 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1045, metadata !625), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1046, metadata !625), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1047, metadata !625), !dbg !1050
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1045, metadata !625), !dbg !1048
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1045, metadata !625), !dbg !1048
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1054
  store i32 10, i32* %6, align 8, !dbg !1055, !tbaa !977
  %7 = icmp ne i8* %1, null, !dbg !1056
  %8 = icmp ne i8* %2, null, !dbg !1058
  %9 = and i1 %7, %8, !dbg !1059
  br i1 %9, label %11, label %10, !dbg !1059

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1060
  unreachable, !dbg !1060

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1061
  store i8* %1, i8** %12, align 8, !dbg !1062, !tbaa !1063
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1064
  store i8* %2, i8** %13, align 8, !dbg !1065, !tbaa !1066
  ret void, !dbg !1067
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1068 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1072, metadata !625), !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1073, metadata !625), !dbg !1081
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1074, metadata !625), !dbg !1082
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1075, metadata !625), !dbg !1083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1076, metadata !625), !dbg !1084
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1085
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1077, metadata !625), !dbg !1086
  %8 = tail call i32* @__errno_location() #17, !dbg !1087
  %9 = load i32, i32* %8, align 4, !dbg !1087, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1078, metadata !625), !dbg !1088
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1089
  %11 = load i32, i32* %10, align 8, !dbg !1089, !tbaa !977
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1090
  %13 = load i32, i32* %12, align 4, !dbg !1090, !tbaa !1037
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1091
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1092
  %16 = load i8*, i8** %15, align 8, !dbg !1092, !tbaa !1063
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1093
  %18 = load i8*, i8** %17, align 8, !dbg !1093, !tbaa !1066
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1094
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1079, metadata !625), !dbg !1095
  store i32 %9, i32* %8, align 4, !dbg !1096, !tbaa !680
  ret i64 %19, !dbg !1097
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1098 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1104, metadata !625), !dbg !1166
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1105, metadata !625), !dbg !1167
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1106, metadata !625), !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1107, metadata !625), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1108, metadata !625), !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1109, metadata !625), !dbg !1171
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1110, metadata !625), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1111, metadata !625), !dbg !1173
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1112, metadata !625), !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1114, metadata !625), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1115, metadata !625), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1116, metadata !625), !dbg !1177
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1117, metadata !625), !dbg !1178
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1118, metadata !625), !dbg !1179
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1180
  %14 = icmp eq i64 %13, 1, !dbg !1181
  %15 = lshr i32 %5, 1, !dbg !1182
  %16 = trunc i32 %15 to i8, !dbg !1182
  %17 = and i8 %16, 1, !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1120, metadata !625), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1121, metadata !625), !dbg !1183
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !625), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !625), !dbg !1185
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1186

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1123, metadata !625), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1118, metadata !625), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1117, metadata !625), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1112, metadata !625), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1111, metadata !625), !dbg !1173
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1108, metadata !625), !dbg !1170
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
  ], !dbg !1187

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1108, metadata !625), !dbg !1170
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1108, metadata !625), !dbg !1170
  br label %94, !dbg !1188

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1108, metadata !625), !dbg !1170
  %43 = and i8 %36, 1, !dbg !1190
  %44 = icmp eq i8 %43, 0, !dbg !1190
  br i1 %44, label %45, label %94, !dbg !1188

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1192
  br i1 %46, label %94, label %47, !dbg !1195

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1192, !tbaa !689
  br label %94, !dbg !1192

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.52, i64 0, i64 0), i32 %28), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1111, metadata !625), !dbg !1173
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), i32 %28), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1112, metadata !625), !dbg !1174
  br label %51, !dbg !1201

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1112, metadata !625), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1111, metadata !625), !dbg !1173
  %54 = and i8 %36, 1, !dbg !1202
  %55 = icmp eq i8 %54, 0, !dbg !1202
  br i1 %55, label %56, label %72, !dbg !1204

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1114, metadata !625), !dbg !1175
  %57 = load i8, i8* %52, align 1, !dbg !1205, !tbaa !689
  %58 = icmp eq i8 %57, 0, !dbg !1208
  br i1 %58, label %72, label %59, !dbg !1208

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1209

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1116, metadata !625), !dbg !1177
  %64 = icmp ult i64 %63, %40, !dbg !1209
  br i1 %64, label %65, label %67, !dbg !1212

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1209
  store i8 %61, i8* %66, align 1, !dbg !1209, !tbaa !689
  br label %67, !dbg !1209

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1114, metadata !625), !dbg !1175
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1114, metadata !625), !dbg !1175
  %70 = load i8, i8* %69, align 1, !dbg !1205, !tbaa !689
  %71 = icmp eq i8 %70, 0, !dbg !1208
  br i1 %71, label %72, label %60, !dbg !1208, !llvm.loop !1214

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !625), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1116, metadata !625), !dbg !1177
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1117, metadata !625), !dbg !1178
  br label %94, !dbg !1217

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !625), !dbg !1179
  br label %76, !dbg !1218

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1118, metadata !625), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !625), !dbg !1182
  br label %78, !dbg !1219

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1118, metadata !625), !dbg !1179
  %81 = and i8 %80, 1, !dbg !1220
  %82 = icmp eq i8 %81, 0, !dbg !1220
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !625), !dbg !1179
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1222
  br label %84, !dbg !1222

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1118, metadata !625), !dbg !1179
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1108, metadata !625), !dbg !1170
  %87 = and i8 %86, 1, !dbg !1223
  %88 = icmp eq i8 %87, 0, !dbg !1223
  br i1 %88, label %89, label %94, !dbg !1225

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1226
  br i1 %90, label %94, label %91, !dbg !1229

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1226, !tbaa !689
  br label %94, !dbg !1226

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1120, metadata !625), !dbg !1182
  br label %94, !dbg !1230

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1231
  unreachable, !dbg !1231

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1120, metadata !625), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1118, metadata !625), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1117, metadata !625), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1112, metadata !625), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1111, metadata !625), !dbg !1173
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1108, metadata !625), !dbg !1170
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1113, metadata !625), !dbg !1232
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
  br label %122, !dbg !1233

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1123, metadata !625), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1113, metadata !625), !dbg !1232
  %131 = icmp eq i64 %126, -1, !dbg !1234
  br i1 %131, label %134, label %132, !dbg !1235

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1236
  br i1 %133, label %590, label %138, !dbg !1237

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1238
  %136 = load i8, i8* %135, align 1, !dbg !1238, !tbaa !689
  %137 = icmp eq i8 %136, 0, !dbg !1239
  br i1 %137, label %590, label %138, !dbg !1237

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1129, metadata !625), !dbg !1240
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !625), !dbg !1242
  br i1 %108, label %139, label %154, !dbg !1243

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1245
  %141 = and i1 %109, %131, !dbg !1246
  br i1 %141, label %142, label %144, !dbg !1246

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1107, metadata !625), !dbg !1169
  br label %144, !dbg !1248

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1107, metadata !625), !dbg !1169
  %146 = icmp ugt i64 %140, %145, !dbg !1249
  br i1 %146, label %154, label %147, !dbg !1250

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1251
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1252
  %150 = icmp ne i32 %149, 0, !dbg !1253
  %151 = or i1 %150, %111, !dbg !1254
  %152 = xor i1 %150, true, !dbg !1254
  %153 = zext i1 %152 to i8, !dbg !1254
  br i1 %151, label %154, label %635, !dbg !1254

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1129, metadata !625), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1107, metadata !625), !dbg !1169
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1255
  %158 = load i8, i8* %157, align 1, !dbg !1255, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1124, metadata !625), !dbg !1256
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
  ], !dbg !1257

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1258

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1259

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !625), !dbg !1241
  %162 = and i8 %127, 1, !dbg !1263
  %163 = icmp eq i8 %162, 0, !dbg !1263
  %164 = and i1 %113, %163, !dbg !1263
  br i1 %164, label %165, label %181, !dbg !1263

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1265
  br i1 %166, label %167, label %169, !dbg !1269

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1265
  store i8 39, i8* %168, align 1, !dbg !1265, !tbaa !689
  br label %169, !dbg !1265

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1114, metadata !625), !dbg !1175
  %171 = icmp ult i64 %170, %130, !dbg !1270
  br i1 %171, label %172, label %174, !dbg !1273

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1270
  store i8 36, i8* %173, align 1, !dbg !1270, !tbaa !689
  br label %174, !dbg !1270

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1114, metadata !625), !dbg !1175
  %176 = icmp ult i64 %175, %130, !dbg !1274
  br i1 %176, label %177, label %179, !dbg !1277

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1274
  store i8 39, i8* %178, align 1, !dbg !1274, !tbaa !689
  br label %179, !dbg !1274

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %181, !dbg !1278

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1114, metadata !625), !dbg !1175
  %184 = icmp ult i64 %182, %130, !dbg !1279
  br i1 %184, label %185, label %187, !dbg !1282

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1279
  store i8 92, i8* %186, align 1, !dbg !1279, !tbaa !689
  br label %187, !dbg !1279

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1114, metadata !625), !dbg !1175
  br i1 %105, label %189, label %470, !dbg !1283

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1285
  %191 = icmp ult i64 %190, %155, !dbg !1286
  br i1 %191, label %192, label %470, !dbg !1287

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1288
  %194 = load i8, i8* %193, align 1, !dbg !1288, !tbaa !689
  %195 = add i8 %194, -48, !dbg !1289
  %196 = icmp ult i8 %195, 10, !dbg !1289
  br i1 %196, label %197, label %470, !dbg !1289

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1290
  br i1 %198, label %199, label %201, !dbg !1294

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1290
  store i8 48, i8* %200, align 1, !dbg !1290, !tbaa !689
  br label %201, !dbg !1290

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1114, metadata !625), !dbg !1175
  %203 = icmp ult i64 %202, %130, !dbg !1295
  br i1 %203, label %204, label %206, !dbg !1298

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1295
  store i8 48, i8* %205, align 1, !dbg !1295, !tbaa !689
  br label %206, !dbg !1295

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1114, metadata !625), !dbg !1175
  br label %470, !dbg !1299

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1300

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1301

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1302

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1304

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1306
  %214 = icmp ult i64 %213, %155, !dbg !1307
  br i1 %214, label %215, label %470, !dbg !1308

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1309
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1310
  %218 = load i8, i8* %217, align 1, !dbg !1310, !tbaa !689
  %219 = icmp eq i8 %218, 63, !dbg !1311
  br i1 %219, label %220, label %470, !dbg !1312

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1313
  %222 = load i8, i8* %221, align 1, !dbg !1313, !tbaa !689
  %223 = sext i8 %222 to i32, !dbg !1313
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
  ], !dbg !1314

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1315

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1113, metadata !625), !dbg !1232
  %226 = icmp ult i64 %124, %130, !dbg !1317
  br i1 %226, label %227, label %229, !dbg !1320

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1317
  store i8 63, i8* %228, align 1, !dbg !1317, !tbaa !689
  br label %229, !dbg !1317

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1114, metadata !625), !dbg !1175
  %231 = icmp ult i64 %230, %130, !dbg !1321
  br i1 %231, label %232, label %234, !dbg !1324

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1321
  store i8 34, i8* %233, align 1, !dbg !1321, !tbaa !689
  br label %234, !dbg !1321

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1114, metadata !625), !dbg !1175
  %236 = icmp ult i64 %235, %130, !dbg !1325
  br i1 %236, label %237, label %239, !dbg !1328

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1325
  store i8 34, i8* %238, align 1, !dbg !1325, !tbaa !689
  br label %239, !dbg !1325

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1114, metadata !625), !dbg !1175
  %241 = icmp ult i64 %240, %130, !dbg !1329
  br i1 %241, label %242, label %244, !dbg !1332

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1329
  store i8 63, i8* %243, align 1, !dbg !1329, !tbaa !689
  br label %244, !dbg !1329

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1114, metadata !625), !dbg !1175
  br label %470, !dbg !1333

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1128, metadata !625), !dbg !1334
  br label %256, !dbg !1335

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1128, metadata !625), !dbg !1334
  br label %256, !dbg !1336

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1128, metadata !625), !dbg !1334
  br label %254, !dbg !1337

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1128, metadata !625), !dbg !1334
  br label %254, !dbg !1338

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1128, metadata !625), !dbg !1334
  br label %256, !dbg !1339

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1128, metadata !625), !dbg !1334
  br i1 %113, label %252, label %253, !dbg !1340

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1341

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1344

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1128, metadata !625), !dbg !1334
  br i1 %117, label %256, label %635, !dbg !1346

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1128, metadata !625), !dbg !1334
  br i1 %104, label %497, label %470, !dbg !1348

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1349
  br i1 %259, label %260, label %265, !dbg !1351

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1352, !tbaa !689
  %262 = icmp ne i8 %261, 0, !dbg !1353
  %263 = icmp ne i64 %123, 0, !dbg !1354
  %264 = or i1 %263, %262, !dbg !1356
  br i1 %264, label %470, label %271, !dbg !1356

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1357
  %267 = icmp ne i64 %123, 0, !dbg !1354
  %268 = or i1 %267, %266, !dbg !1351
  br i1 %268, label %470, label %271, !dbg !1351

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1354
  br i1 %270, label %271, label %470, !dbg !1358

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1131, metadata !625), !dbg !1242
  br label %272, !dbg !1359

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1131, metadata !625), !dbg !1242
  br i1 %117, label %470, label %635, !dbg !1360

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1131, metadata !625), !dbg !1242
  br i1 %113, label %275, label %470, !dbg !1362

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1363

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1366
  %278 = icmp ne i64 %125, 0, !dbg !1368
  %279 = or i1 %278, %277, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1105, metadata !625), !dbg !1167
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1369
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1115, metadata !625), !dbg !1176
  %282 = icmp ult i64 %124, %281, !dbg !1370
  br i1 %282, label %283, label %285, !dbg !1373

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1370
  store i8 39, i8* %284, align 1, !dbg !1370, !tbaa !689
  br label %285, !dbg !1370

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1114, metadata !625), !dbg !1175
  %287 = icmp ult i64 %286, %281, !dbg !1374
  br i1 %287, label %288, label %290, !dbg !1377

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1374
  store i8 92, i8* %289, align 1, !dbg !1374, !tbaa !689
  br label %290, !dbg !1374

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1114, metadata !625), !dbg !1175
  %292 = icmp ult i64 %291, %281, !dbg !1378
  br i1 %292, label %293, label %295, !dbg !1381

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1378
  store i8 39, i8* %294, align 1, !dbg !1378, !tbaa !689
  br label %295, !dbg !1378

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %470, !dbg !1382

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1383

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1132, metadata !625), !dbg !1384
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1385
  %300 = load i16*, i16** %299, align 8, !dbg !1385, !tbaa !632
  %301 = zext i8 %158 to i64, !dbg !1385
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1385
  %303 = load i16, i16* %302, align 2, !dbg !1385, !tbaa !1387
  %304 = lshr i16 %303, 14, !dbg !1388
  %305 = trunc i16 %304 to i8, !dbg !1388
  %306 = and i8 %305, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1135, metadata !625), !dbg !1389
  br label %362, !dbg !1390

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1391
  store i64 0, i64* %10, align 8, !dbg !1392
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1135, metadata !625), !dbg !1389
  %308 = icmp eq i64 %155, -1, !dbg !1393
  br i1 %308, label %309, label %311, !dbg !1395

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1107, metadata !625), !dbg !1169
  br label %311, !dbg !1397

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1107, metadata !625), !dbg !1169
  br label %313, !dbg !1398, !llvm.loop !1399

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1401
  %316 = add i64 %314, %123, !dbg !1402
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1403
  %318 = sub i64 %312, %316, !dbg !1404
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1136, metadata !625), !dbg !1405
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1152, metadata !625), !dbg !1406
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1155, metadata !625), !dbg !1408
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1409

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1132, metadata !625), !dbg !1384
  %321 = icmp ugt i64 %312, %316, !dbg !1410
  br i1 %321, label %322, label %347, !dbg !1412

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1413

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1132, metadata !625), !dbg !1384
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1413
  %327 = load i8, i8* %326, align 1, !dbg !1413, !tbaa !689
  %328 = icmp eq i8 %327, 0, !dbg !1412
  br i1 %328, label %347, label %329, !dbg !1414

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1132, metadata !625), !dbg !1384
  %331 = add i64 %330, %123, !dbg !1416
  %332 = icmp ult i64 %331, %312, !dbg !1410
  br i1 %332, label %323, label %347, !dbg !1412, !llvm.loop !1417

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1418
  %335 = and i1 %115, %334, !dbg !1421
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1156, metadata !625), !dbg !1422
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1156, metadata !625), !dbg !1422
  br i1 %335, label %336, label %350, !dbg !1421

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1423

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1156, metadata !625), !dbg !1422
  %339 = add i64 %338, %316, !dbg !1423
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1424
  %341 = load i8, i8* %340, align 1, !dbg !1424, !tbaa !689
  %342 = sext i8 %341 to i32, !dbg !1424
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1425

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1156, metadata !625), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1156, metadata !625), !dbg !1422
  %345 = icmp ult i64 %344, %319, !dbg !1418
  br i1 %345, label %337, label %350, !dbg !1427, !llvm.loop !1428

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1430

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1430
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1431, !tbaa !680
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1152, metadata !625), !dbg !1406
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1433
  %353 = icmp eq i32 %352, 0, !dbg !1433
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1135, metadata !625), !dbg !1389
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1135, metadata !625), !dbg !1389
  %355 = add i64 %319, %314, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1136, metadata !625), !dbg !1405
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1436
  %357 = icmp eq i32 %356, 0, !dbg !1437
  br i1 %357, label %313, label %358, !dbg !1438, !llvm.loop !1399

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1439
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1439
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1135, metadata !625), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1132, metadata !625), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1107, metadata !625), !dbg !1169
  %366 = and i8 %365, 1, !dbg !1440
  %367 = icmp ne i8 %366, 0, !dbg !1440
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1131, metadata !625), !dbg !1242
  %368 = icmp ult i64 %364, 2, !dbg !1441
  %369 = or i1 %367, %112, !dbg !1442
  %370 = and i1 %368, %369, !dbg !1443
  br i1 %370, label %470, label %371, !dbg !1443

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1163, metadata !625), !dbg !1445
  br label %373, !dbg !1446

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1129, metadata !625), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1113, metadata !625), !dbg !1232
  br i1 %369, label %426, label %380, !dbg !1447

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1452

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !625), !dbg !1241
  %382 = and i8 %376, 1, !dbg !1455
  %383 = icmp eq i8 %382, 0, !dbg !1455
  %384 = and i1 %113, %383, !dbg !1455
  br i1 %384, label %385, label %401, !dbg !1455

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1457
  br i1 %386, label %387, label %389, !dbg !1461

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1457
  store i8 39, i8* %388, align 1, !dbg !1457, !tbaa !689
  br label %389, !dbg !1457

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1114, metadata !625), !dbg !1175
  %391 = icmp ult i64 %390, %130, !dbg !1462
  br i1 %391, label %392, label %394, !dbg !1465

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1462
  store i8 36, i8* %393, align 1, !dbg !1462, !tbaa !689
  br label %394, !dbg !1462

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1114, metadata !625), !dbg !1175
  %396 = icmp ult i64 %395, %130, !dbg !1466
  br i1 %396, label %397, label %399, !dbg !1469

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1466
  store i8 39, i8* %398, align 1, !dbg !1466, !tbaa !689
  br label %399, !dbg !1466

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %401, !dbg !1470

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1114, metadata !625), !dbg !1175
  %404 = icmp ult i64 %402, %130, !dbg !1471
  br i1 %404, label %405, label %407, !dbg !1474

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1471
  store i8 92, i8* %406, align 1, !dbg !1471, !tbaa !689
  br label %407, !dbg !1471

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1114, metadata !625), !dbg !1175
  %409 = icmp ult i64 %408, %130, !dbg !1475
  br i1 %409, label %410, label %414, !dbg !1478

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1475
  %412 = or i8 %411, 48, !dbg !1475
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1475
  store i8 %412, i8* %413, align 1, !dbg !1475, !tbaa !689
  br label %414, !dbg !1475

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1114, metadata !625), !dbg !1175
  %416 = icmp ult i64 %415, %130, !dbg !1479
  br i1 %416, label %417, label %422, !dbg !1482

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1479
  %419 = and i8 %418, 7, !dbg !1479
  %420 = or i8 %419, 48, !dbg !1479
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1479
  store i8 %420, i8* %421, align 1, !dbg !1479, !tbaa !689
  br label %422, !dbg !1479

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1114, metadata !625), !dbg !1175
  %424 = and i8 %377, 7, !dbg !1483
  %425 = or i8 %424, 48, !dbg !1484
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1124, metadata !625), !dbg !1256
  br label %435, !dbg !1485

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1486
  %428 = icmp eq i8 %427, 0, !dbg !1486
  br i1 %428, label %435, label %429, !dbg !1488

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1489
  br i1 %430, label %431, label %433, !dbg !1493

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1489
  store i8 92, i8* %432, align 1, !dbg !1489, !tbaa !689
  br label %433, !dbg !1489

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1129, metadata !625), !dbg !1240
  br label %435, !dbg !1494

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1129, metadata !625), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1114, metadata !625), !dbg !1175
  %441 = add i64 %374, 1, !dbg !1495
  %442 = icmp ugt i64 %372, %441, !dbg !1497
  br i1 %442, label %443, label %535, !dbg !1498

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1499
  %445 = icmp ne i8 %444, 0, !dbg !1499
  %446 = and i8 %440, 1, !dbg !1499
  %447 = icmp eq i8 %446, 0, !dbg !1499
  %448 = and i1 %445, %447, !dbg !1499
  br i1 %448, label %449, label %460, !dbg !1499

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1502
  br i1 %450, label %451, label %453, !dbg !1506

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1502
  store i8 39, i8* %452, align 1, !dbg !1502, !tbaa !689
  br label %453, !dbg !1502

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1114, metadata !625), !dbg !1175
  %455 = icmp ult i64 %454, %130, !dbg !1507
  br i1 %455, label %456, label %458, !dbg !1510

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1507
  store i8 39, i8* %457, align 1, !dbg !1507, !tbaa !689
  br label %458, !dbg !1507

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %460, !dbg !1511

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1114, metadata !625), !dbg !1175
  %463 = icmp ult i64 %461, %130, !dbg !1512
  br i1 %463, label %464, label %466, !dbg !1515

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1512
  store i8 %438, i8* %465, align 1, !dbg !1512, !tbaa !689
  br label %466, !dbg !1512

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1113, metadata !625), !dbg !1232
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1516
  %469 = load i8, i8* %468, align 1, !dbg !1516, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1124, metadata !625), !dbg !1256
  br label %373, !dbg !1517, !llvm.loop !1518

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1131, metadata !625), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1129, metadata !625), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1113, metadata !625), !dbg !1232
  br i1 %106, label %482, label %481, !dbg !1521

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1523

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1524

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1525
  %485 = zext i8 %484 to i64, !dbg !1525
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1526
  %487 = load i32, i32* %486, align 4, !dbg !1526, !tbaa !680
  %488 = and i8 %477, 31, !dbg !1527
  %489 = zext i8 %488 to i32, !dbg !1528
  %490 = shl i32 1, %489, !dbg !1529
  %491 = and i32 %487, %490, !dbg !1529
  %492 = icmp eq i32 %491, 0, !dbg !1529
  %493 = icmp eq i8 %156, 0, !dbg !1530
  %494 = and i1 %493, %492, !dbg !1531
  br i1 %494, label %535, label %497, !dbg !1531

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1530
  br i1 %496, label %535, label %497, !dbg !1532

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1131, metadata !625), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1113, metadata !625), !dbg !1232
  br i1 %111, label %507, label %635, !dbg !1533

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !625), !dbg !1241
  %508 = and i8 %502, 1, !dbg !1535
  %509 = icmp eq i8 %508, 0, !dbg !1535
  %510 = and i1 %113, %509, !dbg !1535
  br i1 %510, label %511, label %527, !dbg !1535

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1537
  br i1 %512, label %513, label %515, !dbg !1541

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1537
  store i8 39, i8* %514, align 1, !dbg !1537, !tbaa !689
  br label %515, !dbg !1537

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1114, metadata !625), !dbg !1175
  %517 = icmp ult i64 %516, %506, !dbg !1542
  br i1 %517, label %518, label %520, !dbg !1545

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1542
  store i8 36, i8* %519, align 1, !dbg !1542, !tbaa !689
  br label %520, !dbg !1542

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1114, metadata !625), !dbg !1175
  %522 = icmp ult i64 %521, %506, !dbg !1546
  br i1 %522, label %523, label %525, !dbg !1549

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1546
  store i8 39, i8* %524, align 1, !dbg !1546, !tbaa !689
  br label %525, !dbg !1546

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %527, !dbg !1550

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1114, metadata !625), !dbg !1175
  %530 = icmp ult i64 %528, %506, !dbg !1551
  br i1 %530, label %531, label %533, !dbg !1554

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1551
  store i8 92, i8* %532, align 1, !dbg !1551, !tbaa !689
  br label %533, !dbg !1551

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1131, metadata !625), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1113, metadata !625), !dbg !1232
  br label %562, !dbg !1555

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1131, metadata !625), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1130, metadata !625), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1124, metadata !625), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1113, metadata !625), !dbg !1232
  %546 = and i8 %540, 1, !dbg !1555
  %547 = icmp ne i8 %546, 0, !dbg !1555
  %548 = and i8 %543, 1, !dbg !1555
  %549 = icmp eq i8 %548, 0, !dbg !1555
  %550 = and i1 %547, %549, !dbg !1555
  br i1 %550, label %551, label %562, !dbg !1555

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1558
  br i1 %552, label %553, label %555, !dbg !1562

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1558
  store i8 39, i8* %554, align 1, !dbg !1558, !tbaa !689
  br label %555, !dbg !1558

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1114, metadata !625), !dbg !1175
  %557 = icmp ult i64 %556, %545, !dbg !1563
  br i1 %557, label %558, label %560, !dbg !1566

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1563
  store i8 39, i8* %559, align 1, !dbg !1563, !tbaa !689
  br label %560, !dbg !1563

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1121, metadata !625), !dbg !1183
  br label %562, !dbg !1567

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1114, metadata !625), !dbg !1175
  %572 = icmp ult i64 %570, %563, !dbg !1568
  br i1 %572, label %573, label %575, !dbg !1571

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1568
  store i8 %565, i8* %574, align 1, !dbg !1568, !tbaa !689
  br label %575, !dbg !1568

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1114, metadata !625), !dbg !1175
  %577 = and i8 %564, 1, !dbg !1572
  %578 = icmp eq i8 %577, 0, !dbg !1572
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !625), !dbg !1185
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1574
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1123, metadata !625), !dbg !1185
  br label %580, !dbg !1575

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1123, metadata !625), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1122, metadata !625), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1121, metadata !625), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1107, metadata !625), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1115, metadata !625), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1113, metadata !625), !dbg !1232
  %589 = add i64 %581, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1113, metadata !625), !dbg !1232
  br label %122, !dbg !1577, !llvm.loop !1578

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1580
  %593 = and i1 %113, %592, !dbg !1582
  %594 = xor i1 %593, true, !dbg !1582
  %595 = or i1 %111, %594, !dbg !1582
  br i1 %595, label %596, label %635, !dbg !1582

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1583
  %598 = xor i1 %597, true, !dbg !1583
  %599 = and i8 %128, 1, !dbg !1585
  %600 = icmp eq i8 %599, 0, !dbg !1585
  %601 = or i1 %600, %598, !dbg !1583
  br i1 %601, label %611, label %602, !dbg !1583

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1586
  %604 = icmp eq i8 %603, 0, !dbg !1586
  br i1 %604, label %607, label %605, !dbg !1589

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1590
  br label %645, !dbg !1591

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1592
  %609 = icmp ne i64 %125, 0, !dbg !1594
  %610 = and i1 %609, %608, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1114, metadata !625), !dbg !1175
  br i1 %610, label %27, label %611, !dbg !1595

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1596
  %613 = and i1 %612, %111, !dbg !1598
  br i1 %613, label %614, label %630, !dbg !1598

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1114, metadata !625), !dbg !1175
  %615 = load i8, i8* %99, align 1, !dbg !1599, !tbaa !689
  %616 = icmp eq i8 %615, 0, !dbg !1602
  br i1 %616, label %630, label %617, !dbg !1602

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1603

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1114, metadata !625), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1116, metadata !625), !dbg !1177
  %622 = icmp ult i64 %621, %130, !dbg !1603
  br i1 %622, label %623, label %625, !dbg !1606

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1603
  store i8 %619, i8* %624, align 1, !dbg !1603, !tbaa !689
  br label %625, !dbg !1603

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1114, metadata !625), !dbg !1175
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1116, metadata !625), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1114, metadata !625), !dbg !1175
  %628 = load i8, i8* %627, align 1, !dbg !1599, !tbaa !689
  %629 = icmp eq i8 %628, 0, !dbg !1602
  br i1 %629, label %630, label %618, !dbg !1602, !llvm.loop !1608

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1114, metadata !625), !dbg !1175
  %632 = icmp ult i64 %631, %130, !dbg !1610
  br i1 %632, label %633, label %645, !dbg !1612

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1613
  store i8 0, i8* %634, align 1, !dbg !1614, !tbaa !689
  br label %645, !dbg !1613

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1105, metadata !625), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1107, metadata !625), !dbg !1169
  %639 = icmp ne i32 %636, 2, !dbg !1615
  %640 = icmp eq i8 %103, 0, !dbg !1617
  %641 = or i1 %639, %640, !dbg !1618
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1108, metadata !625), !dbg !1170
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1108, metadata !625), !dbg !1170
  %643 = and i32 %5, -3, !dbg !1619
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1620
  br label %645, !dbg !1621

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1622
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1623 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1627, metadata !625), !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1628, metadata !625), !dbg !1632
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1633
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1629, metadata !625), !dbg !1634
  %4 = icmp eq i8* %3, %0, !dbg !1635
  br i1 %4, label %5, label %75, !dbg !1637

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1630, metadata !625), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1640, metadata !625), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !625), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !625), !dbg !1660
  %7 = load i8, i8* %6, align 1, !dbg !1661, !tbaa !689
  %8 = sext i8 %7 to i32, !dbg !1661
  %9 = and i32 %8, -33, !dbg !1661
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1661

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !625), !dbg !1677
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !625), !dbg !1681
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !625), !dbg !1682
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1683
  %12 = load i8, i8* %11, align 1, !dbg !1683, !tbaa !689
  %13 = sext i8 %12 to i32, !dbg !1683
  %14 = and i32 %13, -33, !dbg !1683
  %15 = icmp eq i32 %14, 84, !dbg !1683
  br i1 %15, label %16, label %72, !dbg !1683

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1685, metadata !625), !dbg !1698
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1696, metadata !625), !dbg !1702
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !625), !dbg !1703
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1704
  %18 = load i8, i8* %17, align 1, !dbg !1704, !tbaa !689
  %19 = sext i8 %18 to i32, !dbg !1704
  %20 = and i32 %19, -33, !dbg !1704
  %21 = icmp eq i32 %20, 70, !dbg !1704
  br i1 %21, label %22, label %72, !dbg !1704

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1706, metadata !625), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1716, metadata !625), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1717, metadata !625), !dbg !1723
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1724
  %24 = load i8, i8* %23, align 1, !dbg !1724, !tbaa !689
  %25 = icmp eq i8 %24, 45, !dbg !1724
  br i1 %25, label %26, label %72, !dbg !1726

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1727, metadata !625), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !625), !dbg !1742
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1737, metadata !625), !dbg !1743
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1744
  %28 = load i8, i8* %27, align 1, !dbg !1744, !tbaa !689
  %29 = icmp eq i8 %28, 56, !dbg !1744
  br i1 %29, label %30, label %72, !dbg !1746

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1747, metadata !625), !dbg !1757
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1755, metadata !625), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1756, metadata !625), !dbg !1762
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1763
  %32 = load i8, i8* %31, align 1, !dbg !1763, !tbaa !689
  %33 = icmp eq i8 %32, 0, !dbg !1763
  br i1 %33, label %34, label %72, !dbg !1765

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1766, !tbaa !689
  %36 = icmp eq i8 %35, 96, !dbg !1767
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.55, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.56, i64 0, i64 0), !dbg !1766
  br label %75, !dbg !1768

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !625), !dbg !1769
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !625), !dbg !1773
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !625), !dbg !1774
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1775
  %40 = load i8, i8* %39, align 1, !dbg !1775, !tbaa !689
  %41 = sext i8 %40 to i32, !dbg !1775
  %42 = and i32 %41, -33, !dbg !1775
  %43 = icmp eq i32 %42, 66, !dbg !1775
  br i1 %43, label %44, label %72, !dbg !1775

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1685, metadata !625), !dbg !1776
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1696, metadata !625), !dbg !1778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !625), !dbg !1779
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1780
  %46 = load i8, i8* %45, align 1, !dbg !1780, !tbaa !689
  %47 = icmp eq i8 %46, 49, !dbg !1780
  br i1 %47, label %48, label %72, !dbg !1781

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1706, metadata !625), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1716, metadata !625), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1717, metadata !625), !dbg !1785
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1786
  %50 = load i8, i8* %49, align 1, !dbg !1786, !tbaa !689
  %51 = icmp eq i8 %50, 56, !dbg !1786
  br i1 %51, label %52, label %72, !dbg !1787

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1727, metadata !625), !dbg !1788
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !625), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1737, metadata !625), !dbg !1791
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1792
  %54 = load i8, i8* %53, align 1, !dbg !1792, !tbaa !689
  %55 = icmp eq i8 %54, 48, !dbg !1792
  br i1 %55, label %56, label %72, !dbg !1793

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1747, metadata !625), !dbg !1794
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1755, metadata !625), !dbg !1796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1756, metadata !625), !dbg !1797
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1798
  %58 = load i8, i8* %57, align 1, !dbg !1798, !tbaa !689
  %59 = icmp eq i8 %58, 51, !dbg !1798
  br i1 %59, label %60, label %72, !dbg !1799

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1800, metadata !625), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !625), !dbg !1813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1808, metadata !625), !dbg !1814
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1815
  %62 = load i8, i8* %61, align 1, !dbg !1815, !tbaa !689
  %63 = icmp eq i8 %62, 48, !dbg !1815
  br i1 %63, label %64, label %72, !dbg !1817

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1818, metadata !625), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1824, metadata !625), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1825, metadata !625), !dbg !1831
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1832
  %66 = load i8, i8* %65, align 1, !dbg !1832, !tbaa !689
  %67 = icmp eq i8 %66, 0, !dbg !1832
  br i1 %67, label %68, label %72, !dbg !1834

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1835, !tbaa !689
  %70 = icmp eq i8 %69, 96, !dbg !1836
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.58, i64 0, i64 0), !dbg !1835
  br label %75, !dbg !1837

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1838
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.53, i64 0, i64 0), !dbg !1839
  br label %75, !dbg !1840

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1841
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1842 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1846, metadata !625), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1847, metadata !625), !dbg !1850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1848, metadata !625), !dbg !1851
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1852, metadata !625) #10, !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1857, metadata !625) #10, !dbg !1867
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1858, metadata !625) #10, !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1859, metadata !625) #10, !dbg !1869
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1870
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1860, metadata !625) #10, !dbg !1871
  %6 = tail call i32* @__errno_location() #17, !dbg !1872
  %7 = load i32, i32* %6, align 4, !dbg !1872, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1861, metadata !625) #10, !dbg !1873
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1874
  %9 = load i32, i32* %8, align 4, !dbg !1874, !tbaa !1037
  %10 = or i32 %9, 1, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1862, metadata !625) #10, !dbg !1876
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1877
  %12 = load i32, i32* %11, align 8, !dbg !1877, !tbaa !977
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1878
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1879
  %15 = load i8*, i8** %14, align 8, !dbg !1879, !tbaa !1063
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1880
  %17 = load i8*, i8** %16, align 8, !dbg !1880, !tbaa !1066
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1881
  %19 = add i64 %18, 1, !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1863, metadata !625) #10, !dbg !1883
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1884, metadata !625) #10, !dbg !1889
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1891
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1864, metadata !625) #10, !dbg !1892
  %21 = load i32, i32* %11, align 8, !dbg !1893, !tbaa !977
  %22 = load i8*, i8** %14, align 8, !dbg !1894, !tbaa !1063
  %23 = load i8*, i8** %16, align 8, !dbg !1895, !tbaa !1066
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1896
  store i32 %7, i32* %6, align 4, !dbg !1897, !tbaa !680
  ret i8* %20, !dbg !1898
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1853 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1852, metadata !625), !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1857, metadata !625), !dbg !1900
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1858, metadata !625), !dbg !1901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1859, metadata !625), !dbg !1902
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1903
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1860, metadata !625), !dbg !1904
  %7 = tail call i32* @__errno_location() #17, !dbg !1905
  %8 = load i32, i32* %7, align 4, !dbg !1905, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1861, metadata !625), !dbg !1906
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1907
  %10 = load i32, i32* %9, align 4, !dbg !1907, !tbaa !1037
  %11 = icmp ne i64* %2, null, !dbg !1908
  %12 = xor i1 %11, true, !dbg !1908
  %13 = zext i1 %12 to i32, !dbg !1908
  %14 = or i32 %10, %13, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1862, metadata !625), !dbg !1910
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1911
  %16 = load i32, i32* %15, align 8, !dbg !1911, !tbaa !977
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1912
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1913
  %19 = load i8*, i8** %18, align 8, !dbg !1913, !tbaa !1063
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1914
  %21 = load i8*, i8** %20, align 8, !dbg !1914, !tbaa !1066
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1915
  %23 = add i64 %22, 1, !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1863, metadata !625), !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1884, metadata !625) #10, !dbg !1918
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1864, metadata !625), !dbg !1921
  %25 = load i32, i32* %15, align 8, !dbg !1922, !tbaa !977
  %26 = load i8*, i8** %18, align 8, !dbg !1923, !tbaa !1063
  %27 = load i8*, i8** %20, align 8, !dbg !1924, !tbaa !1066
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1925
  store i32 %8, i32* %7, align 4, !dbg !1926, !tbaa !680
  br i1 %11, label %29, label %30, !dbg !1927

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1928, !tbaa !727
  br label %30, !dbg !1930

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1931
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1932 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1936, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1934, metadata !625), !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !625), !dbg !1938
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !625), !dbg !1938
  %2 = load i32, i32* @nslots, align 4, !dbg !1939, !tbaa !680
  %3 = icmp sgt i32 %2, 1, !dbg !1942
  br i1 %3, label %4, label %13, !dbg !1943

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1944

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1935, metadata !625), !dbg !1938
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1944
  %8 = load i8*, i8** %7, align 8, !dbg !1944, !tbaa !1945
  tail call void @free(i8* %8) #10, !dbg !1947
  %9 = add nuw i64 %6, 1, !dbg !1948
  %10 = load i32, i32* @nslots, align 4, !dbg !1939, !tbaa !680
  %11 = sext i32 %10 to i64, !dbg !1942
  %12 = icmp slt i64 %9, %11, !dbg !1942
  br i1 %12, label %5, label %13, !dbg !1943, !llvm.loop !1949

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1951
  %15 = load i8*, i8** %14, align 8, !dbg !1951, !tbaa !1945
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1953
  br i1 %16, label %18, label %17, !dbg !1954

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1955
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1957, !tbaa !1958
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1959, !tbaa !1945
  br label %18, !dbg !1960

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1961
  br i1 %19, label %22, label %20, !dbg !1963

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1964
  tail call void @free(i8* %21) #10, !dbg !1966
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1967, !tbaa !632
  br label %22, !dbg !1968

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1969, !tbaa !680
  ret void, !dbg !1970
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1971 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1975, metadata !625), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1976, metadata !625), !dbg !1978
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1979
  ret i8* %3, !dbg !1980
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1981 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !625), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1986, metadata !625), !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1987, metadata !625), !dbg !2001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1988, metadata !625), !dbg !2002
  %5 = tail call i32* @__errno_location() #17, !dbg !2003
  %6 = load i32, i32* %5, align 4, !dbg !2003, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1989, metadata !625), !dbg !2004
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2005, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1990, metadata !625), !dbg !2006
  %8 = icmp slt i32 %0, 0, !dbg !2007
  br i1 %8, label %9, label %10, !dbg !2009

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2010
  unreachable, !dbg !2010

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2011, !tbaa !680
  %12 = icmp sgt i32 %11, %0, !dbg !2012
  br i1 %12, label %34, label %13, !dbg !2013

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2014
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2015
  br i1 %15, label %16, label %17, !dbg !2017

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2018
  unreachable, !dbg !2018

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2019
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2019
  %20 = add nsw i32 %0, 1, !dbg !2020
  %21 = sext i32 %20 to i64, !dbg !2021
  %22 = shl nsw i64 %21, 4, !dbg !2022
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2023
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1990, metadata !625), !dbg !2006
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2024, !tbaa !632
  br i1 %14, label %25, label %26, !dbg !2025

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2026, !tbaa.struct !2028
  br label %26, !dbg !2029

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2030, !tbaa !680
  %28 = sext i32 %27 to i64, !dbg !2031
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2031
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2032
  %31 = sub nsw i32 %20, %27, !dbg !2033
  %32 = sext i32 %31 to i64, !dbg !2034
  %33 = shl nsw i64 %32, 4, !dbg !2035
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2032
  store i32 %20, i32* @nslots, align 4, !dbg !2036, !tbaa !680
  br label %34, !dbg !2037

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1990, metadata !625), !dbg !2006
  %36 = sext i32 %0 to i64, !dbg !2038
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2039
  %38 = load i64, i64* %37, align 8, !dbg !2039, !tbaa !1958
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1994, metadata !625), !dbg !2040
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2041
  %40 = load i8*, i8** %39, align 8, !dbg !2041, !tbaa !1945
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1996, metadata !625), !dbg !2042
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2043
  %42 = load i32, i32* %41, align 4, !dbg !2043, !tbaa !1037
  %43 = or i32 %42, 1, !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1997, metadata !625), !dbg !2045
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2046
  %45 = load i32, i32* %44, align 8, !dbg !2046, !tbaa !977
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2047
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2048
  %48 = load i8*, i8** %47, align 8, !dbg !2048, !tbaa !1063
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2049
  %50 = load i8*, i8** %49, align 8, !dbg !2049, !tbaa !1066
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1998, metadata !625), !dbg !2051
  %52 = icmp ugt i64 %38, %51, !dbg !2052
  br i1 %52, label %63, label %53, !dbg !2054

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1994, metadata !625), !dbg !2040
  store i64 %54, i64* %37, align 8, !dbg !2057, !tbaa !1958
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2058
  br i1 %55, label %57, label %56, !dbg !2060

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2061
  br label %57, !dbg !2061

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1884, metadata !625) #10, !dbg !2062
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2064
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1996, metadata !625), !dbg !2042
  store i8* %58, i8** %39, align 8, !dbg !2065, !tbaa !1945
  %59 = load i32, i32* %44, align 8, !dbg !2066, !tbaa !977
  %60 = load i8*, i8** %47, align 8, !dbg !2067, !tbaa !1063
  %61 = load i8*, i8** %49, align 8, !dbg !2068, !tbaa !1066
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2069
  br label %63, !dbg !2070

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1996, metadata !625), !dbg !2042
  store i32 %6, i32* %5, align 4, !dbg !2071, !tbaa !680
  ret i8* %64, !dbg !2072
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2073 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2077, metadata !625), !dbg !2080
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2078, metadata !625), !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2079, metadata !625), !dbg !2082
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2083
  ret i8* %4, !dbg !2084
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2085 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2089, metadata !625), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1975, metadata !625) #10, !dbg !2091
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1976, metadata !625) #10, !dbg !2093
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2094
  ret i8* %2, !dbg !2095
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2096 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2100, metadata !625), !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2101, metadata !625), !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2077, metadata !625) #10, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2078, metadata !625) #10, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2079, metadata !625) #10, !dbg !2107
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2108
  ret i8* %3, !dbg !2109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2110 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2118, metadata !2124), !dbg !2125
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2114, metadata !625), !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2115, metadata !625), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2116, metadata !625), !dbg !2129
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2130
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2117, metadata !625), !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2123, metadata !625) #10, !dbg !2132
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2133
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2118, metadata !625) #10, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2125
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2125
  %8 = icmp eq i32 %1, 10, !dbg !2135
  br i1 %8, label %9, label %10, !dbg !2137

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2138, !noalias !2139
  unreachable, !dbg !2138

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2118, metadata !2134) #10, !dbg !2125
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2142
  store i32 %1, i32* %11, align 8, !dbg !2142, !alias.scope !2139
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2142
  %13 = bitcast i32* %12 to i8*, !dbg !2142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2142
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2143
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2117, metadata !625), !dbg !2131
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2145
  ret i8* %14, !dbg !2146
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2147 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2118, metadata !2124), !dbg !2156
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2151, metadata !625), !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2152, metadata !625), !dbg !2159
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2153, metadata !625), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2154, metadata !625), !dbg !2161
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2155, metadata !625), !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2123, metadata !625) #10, !dbg !2164
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2165
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2165
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2118, metadata !625) #10, !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2156
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2156
  %9 = icmp eq i32 %1, 10, !dbg !2166
  br i1 %9, label %10, label %11, !dbg !2167

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2168, !noalias !2169
  unreachable, !dbg !2168

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2118, metadata !2134) #10, !dbg !2156
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2172
  store i32 %1, i32* %12, align 8, !dbg !2172, !alias.scope !2169
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2172
  %14 = bitcast i32* %13 to i8*, !dbg !2172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2173
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2155, metadata !625), !dbg !2163
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2175
  ret i8* %15, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2177 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2118, metadata !2124), !dbg !2183
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2181, metadata !625), !dbg !2186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2182, metadata !625), !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2114, metadata !625) #10, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2115, metadata !625) #10, !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2116, metadata !625) #10, !dbg !2190
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2117, metadata !625) #10, !dbg !2192
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2123, metadata !625) #10, !dbg !2193
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2194
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2118, metadata !625) #10, !dbg !2183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2183
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2183
  %7 = icmp eq i32 %0, 10, !dbg !2195
  br i1 %7, label %8, label %9, !dbg !2196

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2197, !noalias !2198
  unreachable, !dbg !2197

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2183
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2201
  store i32 %0, i32* %10, align 8, !dbg !2201, !alias.scope !2198
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2201
  %12 = bitcast i32* %11 to i8*, !dbg !2201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2201
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2117, metadata !625) #10, !dbg !2192
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2204
  ret i8* %13, !dbg !2205
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2206 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2118, metadata !2124), !dbg !2213
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2210, metadata !625), !dbg !2216
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2211, metadata !625), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2212, metadata !625), !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2151, metadata !625) #10, !dbg !2219
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2152, metadata !625) #10, !dbg !2220
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2153, metadata !625) #10, !dbg !2221
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2154, metadata !625) #10, !dbg !2222
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2223
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2155, metadata !625) #10, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2123, metadata !625) #10, !dbg !2225
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2226
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2118, metadata !625) #10, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2213
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2213
  %8 = icmp eq i32 %0, 10, !dbg !2227
  br i1 %8, label %9, label %10, !dbg !2228

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2229, !noalias !2230
  unreachable, !dbg !2229

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2213
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2233
  store i32 %0, i32* %11, align 8, !dbg !2233, !alias.scope !2230
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2233
  %13 = bitcast i32* %12 to i8*, !dbg !2233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2233
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2155, metadata !625) #10, !dbg !2224
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2236
  ret i8* %14, !dbg !2237
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2238 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !625), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2243, metadata !625), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2244, metadata !625), !dbg !2248
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2249
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2250, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2245, metadata !625), !dbg !2252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !996, metadata !625), !dbg !2253
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !997, metadata !625), !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !625), !dbg !2256
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !999, metadata !625), !dbg !2257
  %6 = lshr i8 %2, 5, !dbg !2258
  %7 = zext i8 %6 to i64, !dbg !2258
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2259
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1000, metadata !625), !dbg !2260
  %9 = and i8 %2, 31, !dbg !2261
  %10 = zext i8 %9 to i32, !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1002, metadata !625), !dbg !2263
  %11 = load i32, i32* %8, align 4, !dbg !2264, !tbaa !680
  %12 = lshr i32 %11, %10, !dbg !2265
  %13 = and i32 %12, 1, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1003, metadata !625), !dbg !2267
  %14 = xor i32 %13, 1, !dbg !2268
  %15 = shl i32 %14, %10, !dbg !2269
  %16 = xor i32 %15, %11, !dbg !2270
  store i32 %16, i32* %8, align 4, !dbg !2270, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2245, metadata !625), !dbg !2252
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2272
  ret i8* %17, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2274 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2278, metadata !625), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2279, metadata !625), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !625) #10, !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2243, metadata !625) #10, !dbg !2284
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2244, metadata !625) #10, !dbg !2285
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2287, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2245, metadata !625) #10, !dbg !2288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !996, metadata !625) #10, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !997, metadata !625) #10, !dbg !2291
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !625) #10, !dbg !2292
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !625) #10, !dbg !2293
  %5 = lshr i8 %1, 5, !dbg !2294
  %6 = zext i8 %5 to i64, !dbg !2294
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2295
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1000, metadata !625) #10, !dbg !2296
  %8 = and i8 %1, 31, !dbg !2297
  %9 = zext i8 %8 to i32, !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1002, metadata !625) #10, !dbg !2299
  %10 = load i32, i32* %7, align 4, !dbg !2300, !tbaa !680
  %11 = lshr i32 %10, %9, !dbg !2301
  %12 = and i32 %11, 1, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1003, metadata !625) #10, !dbg !2303
  %13 = xor i32 %12, 1, !dbg !2304
  %14 = shl i32 %13, %9, !dbg !2305
  %15 = xor i32 %14, %10, !dbg !2306
  store i32 %15, i32* %7, align 4, !dbg !2306, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2245, metadata !625) #10, !dbg !2288
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2308
  ret i8* %16, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2310 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2312, metadata !625), !dbg !2313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2278, metadata !625) #10, !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2279, metadata !625) #10, !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !625) #10, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2243, metadata !625) #10, !dbg !2319
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2244, metadata !625) #10, !dbg !2320
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2321
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2322, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2245, metadata !625) #10, !dbg !2323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !996, metadata !625) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !625) #10, !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !625) #10, !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !625) #10, !dbg !2328
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1000, metadata !625) #10, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !625) #10, !dbg !2331
  %5 = load i32, i32* %4, align 4, !dbg !2332, !tbaa !680
  %6 = or i32 %5, 67108864, !dbg !2333
  store i32 %6, i32* %4, align 4, !dbg !2333, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2245, metadata !625) #10, !dbg !2323
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2335
  ret i8* %7, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2337 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2339, metadata !625), !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2340, metadata !625), !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !625) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2243, metadata !625) #10, !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2244, metadata !625) #10, !dbg !2346
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2348, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2245, metadata !625) #10, !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !996, metadata !625) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !625) #10, !dbg !2352
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !625) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !625) #10, !dbg !2354
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2355
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1000, metadata !625) #10, !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !625) #10, !dbg !2357
  %6 = load i32, i32* %5, align 4, !dbg !2358, !tbaa !680
  %7 = or i32 %6, 67108864, !dbg !2359
  store i32 %7, i32* %5, align 4, !dbg !2359, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2245, metadata !625) #10, !dbg !2349
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2361
  ret i8* %8, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2363 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2118, metadata !2124), !dbg !2369
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2365, metadata !625), !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2366, metadata !625), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2367, metadata !625), !dbg !2373
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2123, metadata !625) #10, !dbg !2375
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2376
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2376
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2118, metadata !625) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !2134) #10, !dbg !2369
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2369
  %9 = icmp eq i32 %1, 10, !dbg !2377
  br i1 %9, label %10, label %11, !dbg !2378

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2379, !noalias !2380
  unreachable, !dbg !2379

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2118, metadata !2134) #10, !dbg !2369
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2384
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2385
  store i32 %1, i32* %13, align 8, !dbg !2385
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2385
  %15 = bitcast i32* %14 to i8*, !dbg !2385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !625), !dbg !2386
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !996, metadata !625), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !997, metadata !625), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !998, metadata !625), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !625), !dbg !2391
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2392
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1000, metadata !625), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1002, metadata !625), !dbg !2394
  %17 = load i32, i32* %16, align 4, !dbg !2395, !tbaa !680
  %18 = or i32 %17, 67108864, !dbg !2396
  store i32 %18, i32* %16, align 4, !dbg !2396, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !625), !dbg !2386
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2397
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2398
  ret i8* %19, !dbg !2399
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2400 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !625), !dbg !2408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2405, metadata !625), !dbg !2409
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2406, metadata !625), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2407, metadata !625), !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !625) #10, !dbg !2422
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2417, metadata !625) #10, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2418, metadata !625) #10, !dbg !2425
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2419, metadata !625) #10, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2420, metadata !625) #10, !dbg !2427
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2428
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2429, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2421, metadata !625) #10, !dbg !2430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1045, metadata !625) #10, !dbg !2431
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1046, metadata !625) #10, !dbg !2433
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1047, metadata !625) #10, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1045, metadata !625) #10, !dbg !2431
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1045, metadata !625) #10, !dbg !2431
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2435
  store i32 10, i32* %7, align 8, !dbg !2436, !tbaa !977
  %8 = icmp ne i8* %1, null, !dbg !2437
  %9 = icmp ne i8* %2, null, !dbg !2438
  %10 = and i1 %8, %9, !dbg !2439
  br i1 %10, label %12, label %11, !dbg !2439

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2440
  unreachable, !dbg !2440

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2441
  store i8* %1, i8** %13, align 8, !dbg !2442, !tbaa !1063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2443
  store i8* %2, i8** %14, align 8, !dbg !2444, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2421, metadata !625) #10, !dbg !2430
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2445
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2446
  ret i8* %15, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2413 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !625), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2417, metadata !625), !dbg !2449
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2418, metadata !625), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2419, metadata !625), !dbg !2451
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2420, metadata !625), !dbg !2452
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2454, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2421, metadata !625), !dbg !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1045, metadata !625) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1046, metadata !625) #10, !dbg !2458
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1047, metadata !625) #10, !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1045, metadata !625) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1045, metadata !625) #10, !dbg !2456
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2460
  store i32 10, i32* %8, align 8, !dbg !2461, !tbaa !977
  %9 = icmp ne i8* %1, null, !dbg !2462
  %10 = icmp ne i8* %2, null, !dbg !2463
  %11 = and i1 %9, %10, !dbg !2464
  br i1 %11, label %13, label %12, !dbg !2464

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2465
  unreachable, !dbg !2465

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2466
  store i8* %1, i8** %14, align 8, !dbg !2467, !tbaa !1063
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2468
  store i8* %2, i8** %15, align 8, !dbg !2469, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2421, metadata !625), !dbg !2455
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2471
  ret i8* %16, !dbg !2472
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2473 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2477, metadata !625), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2478, metadata !625), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2479, metadata !625), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !625) #10, !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2405, metadata !625) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2406, metadata !625) #10, !dbg !2486
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2407, metadata !625) #10, !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !625) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2417, metadata !625) #10, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2418, metadata !625) #10, !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2419, metadata !625) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2420, metadata !625) #10, !dbg !2493
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2495, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2421, metadata !625) #10, !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1045, metadata !625) #10, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1046, metadata !625) #10, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1047, metadata !625) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1045, metadata !625) #10, !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1045, metadata !625) #10, !dbg !2497
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2501
  store i32 10, i32* %6, align 8, !dbg !2502, !tbaa !977
  %7 = icmp ne i8* %0, null, !dbg !2503
  %8 = icmp ne i8* %1, null, !dbg !2504
  %9 = and i1 %7, %8, !dbg !2505
  br i1 %9, label %11, label %10, !dbg !2505

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2506
  unreachable, !dbg !2506

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2507
  store i8* %0, i8** %12, align 8, !dbg !2508, !tbaa !1063
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2509
  store i8* %1, i8** %13, align 8, !dbg !2510, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2421, metadata !625) #10, !dbg !2496
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2512
  ret i8* %14, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2514 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2518, metadata !625), !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2519, metadata !625), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2520, metadata !625), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2521, metadata !625), !dbg !2525
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2412, metadata !625) #10, !dbg !2526
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2417, metadata !625) #10, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2418, metadata !625) #10, !dbg !2529
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2419, metadata !625) #10, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2420, metadata !625) #10, !dbg !2531
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2532
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2533, !tbaa.struct !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2421, metadata !625) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1045, metadata !625) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1046, metadata !625) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1047, metadata !625) #10, !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1045, metadata !625) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1045, metadata !625) #10, !dbg !2535
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2539
  store i32 10, i32* %7, align 8, !dbg !2540, !tbaa !977
  %8 = icmp ne i8* %0, null, !dbg !2541
  %9 = icmp ne i8* %1, null, !dbg !2542
  %10 = and i1 %8, %9, !dbg !2543
  br i1 %10, label %12, label %11, !dbg !2543

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2544
  unreachable, !dbg !2544

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2545
  store i8* %0, i8** %13, align 8, !dbg !2546, !tbaa !1063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2547
  store i8* %1, i8** %14, align 8, !dbg !2548, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2421, metadata !625) #10, !dbg !2534
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2550
  ret i8* %15, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2552 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !625), !dbg !2559
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2557, metadata !625), !dbg !2560
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2558, metadata !625), !dbg !2561
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2562
  ret i8* %4, !dbg !2563
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2564 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2568, metadata !625), !dbg !2570
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2569, metadata !625), !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2556, metadata !625) #10, !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !625) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2558, metadata !625) #10, !dbg !2575
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2576
  ret i8* %3, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2578 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2582, metadata !625), !dbg !2584
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2583, metadata !625), !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !625) #10, !dbg !2586
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2557, metadata !625) #10, !dbg !2588
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2558, metadata !625) #10, !dbg !2589
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2590
  ret i8* %3, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2592 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2596, metadata !625), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2582, metadata !625) #10, !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2583, metadata !625) #10, !dbg !2600
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2556, metadata !625) #10, !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !625) #10, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2558, metadata !625) #10, !dbg !2604
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2605
  ret i8* %2, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2607 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2652, metadata !625), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2653, metadata !625), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2654, metadata !625), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2655, metadata !625), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2656, metadata !625), !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2657, metadata !625), !dbg !2663
  %7 = icmp eq i8* %1, null, !dbg !2664
  br i1 %7, label %10, label %8, !dbg !2666

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2667
  br label %12, !dbg !2667

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2668
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #10, !dbg !2669
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2669
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #10, !dbg !2670
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2670
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
  ], !dbg !2671

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2672
  unreachable, !dbg !2672

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #10, !dbg !2674
  %20 = load i8*, i8** %4, align 8, !dbg !2674, !tbaa !632
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2674
  br label %146, !dbg !2675

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #10, !dbg !2676
  %24 = load i8*, i8** %4, align 8, !dbg !2676, !tbaa !632
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2676
  %26 = load i8*, i8** %25, align 8, !dbg !2676, !tbaa !632
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2676
  br label %146, !dbg !2677

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #10, !dbg !2678
  %30 = load i8*, i8** %4, align 8, !dbg !2678, !tbaa !632
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2678
  %32 = load i8*, i8** %31, align 8, !dbg !2678, !tbaa !632
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2678
  %34 = load i8*, i8** %33, align 8, !dbg !2678, !tbaa !632
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2678
  br label %146, !dbg !2679

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #10, !dbg !2680
  %38 = load i8*, i8** %4, align 8, !dbg !2680, !tbaa !632
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2680
  %40 = load i8*, i8** %39, align 8, !dbg !2680, !tbaa !632
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2680
  %42 = load i8*, i8** %41, align 8, !dbg !2680, !tbaa !632
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2680
  %44 = load i8*, i8** %43, align 8, !dbg !2680, !tbaa !632
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2680
  br label %146, !dbg !2681

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #10, !dbg !2682
  %48 = load i8*, i8** %4, align 8, !dbg !2682, !tbaa !632
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2682
  %50 = load i8*, i8** %49, align 8, !dbg !2682, !tbaa !632
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2682
  %52 = load i8*, i8** %51, align 8, !dbg !2682, !tbaa !632
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2682
  %54 = load i8*, i8** %53, align 8, !dbg !2682, !tbaa !632
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2682
  %56 = load i8*, i8** %55, align 8, !dbg !2682, !tbaa !632
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2682
  br label %146, !dbg !2683

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #10, !dbg !2684
  %60 = load i8*, i8** %4, align 8, !dbg !2684, !tbaa !632
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2684
  %62 = load i8*, i8** %61, align 8, !dbg !2684, !tbaa !632
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2684
  %64 = load i8*, i8** %63, align 8, !dbg !2684, !tbaa !632
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2684
  %66 = load i8*, i8** %65, align 8, !dbg !2684, !tbaa !632
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2684
  %68 = load i8*, i8** %67, align 8, !dbg !2684, !tbaa !632
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2684
  %70 = load i8*, i8** %69, align 8, !dbg !2684, !tbaa !632
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2684
  br label %146, !dbg !2685

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #10, !dbg !2686
  %74 = load i8*, i8** %4, align 8, !dbg !2686, !tbaa !632
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2686
  %76 = load i8*, i8** %75, align 8, !dbg !2686, !tbaa !632
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2686
  %78 = load i8*, i8** %77, align 8, !dbg !2686, !tbaa !632
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2686
  %80 = load i8*, i8** %79, align 8, !dbg !2686, !tbaa !632
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2686
  %82 = load i8*, i8** %81, align 8, !dbg !2686, !tbaa !632
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2686
  %84 = load i8*, i8** %83, align 8, !dbg !2686, !tbaa !632
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2686
  %86 = load i8*, i8** %85, align 8, !dbg !2686, !tbaa !632
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2686
  br label %146, !dbg !2687

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #10, !dbg !2688
  %90 = load i8*, i8** %4, align 8, !dbg !2688, !tbaa !632
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2688
  %92 = load i8*, i8** %91, align 8, !dbg !2688, !tbaa !632
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2688
  %94 = load i8*, i8** %93, align 8, !dbg !2688, !tbaa !632
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2688
  %96 = load i8*, i8** %95, align 8, !dbg !2688, !tbaa !632
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2688
  %98 = load i8*, i8** %97, align 8, !dbg !2688, !tbaa !632
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2688
  %100 = load i8*, i8** %99, align 8, !dbg !2688, !tbaa !632
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2688
  %102 = load i8*, i8** %101, align 8, !dbg !2688, !tbaa !632
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2688
  %104 = load i8*, i8** %103, align 8, !dbg !2688, !tbaa !632
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2688
  br label %146, !dbg !2689

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #10, !dbg !2690
  %108 = load i8*, i8** %4, align 8, !dbg !2690, !tbaa !632
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2690
  %110 = load i8*, i8** %109, align 8, !dbg !2690, !tbaa !632
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2690
  %112 = load i8*, i8** %111, align 8, !dbg !2690, !tbaa !632
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2690
  %114 = load i8*, i8** %113, align 8, !dbg !2690, !tbaa !632
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2690
  %116 = load i8*, i8** %115, align 8, !dbg !2690, !tbaa !632
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2690
  %118 = load i8*, i8** %117, align 8, !dbg !2690, !tbaa !632
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2690
  %120 = load i8*, i8** %119, align 8, !dbg !2690, !tbaa !632
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2690
  %122 = load i8*, i8** %121, align 8, !dbg !2690, !tbaa !632
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2690
  %124 = load i8*, i8** %123, align 8, !dbg !2690, !tbaa !632
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2690
  br label %146, !dbg !2691

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #10, !dbg !2692
  %128 = load i8*, i8** %4, align 8, !dbg !2692, !tbaa !632
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2692
  %130 = load i8*, i8** %129, align 8, !dbg !2692, !tbaa !632
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2692
  %132 = load i8*, i8** %131, align 8, !dbg !2692, !tbaa !632
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2692
  %134 = load i8*, i8** %133, align 8, !dbg !2692, !tbaa !632
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2692
  %136 = load i8*, i8** %135, align 8, !dbg !2692, !tbaa !632
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2692
  %138 = load i8*, i8** %137, align 8, !dbg !2692, !tbaa !632
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2692
  %140 = load i8*, i8** %139, align 8, !dbg !2692, !tbaa !632
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2692
  %142 = load i8*, i8** %141, align 8, !dbg !2692, !tbaa !632
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2692
  %144 = load i8*, i8** %143, align 8, !dbg !2692, !tbaa !632
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2692
  br label %146, !dbg !2693

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2694
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2695 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2699, metadata !625), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2700, metadata !625), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2701, metadata !625), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2702, metadata !625), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2703, metadata !625), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2704, metadata !625), !dbg !2710
  br label %6, !dbg !2711

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2704, metadata !625), !dbg !2710
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2713
  %9 = load i8*, i8** %8, align 8, !dbg !2713, !tbaa !632
  %10 = icmp eq i8* %9, null, !dbg !2715
  %11 = add i64 %7, 1, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2704, metadata !625), !dbg !2710
  br i1 %10, label %12, label %6, !dbg !2715, !llvm.loop !2717

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2721 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2732, metadata !625), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2733, metadata !625), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2734, metadata !625), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2735, metadata !625), !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2736, metadata !625), !dbg !2744
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2745
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2738, metadata !625), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %11 = load i32, i32* %8, align 8, !dbg !2748
  %12 = icmp ult i32 %11, 41, !dbg !2748
  br i1 %12, label %13, label %18, !dbg !2748

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2748
  %15 = sext i32 %11 to i64, !dbg !2748
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2748
  %17 = add i32 %11, 8, !dbg !2748
  store i32 %17, i32* %8, align 8, !dbg !2748
  br label %21, !dbg !2748

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2748
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2748
  store i8* %20, i8** %10, align 8, !dbg !2748
  br label %21, !dbg !2748

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2748
  %25 = load i8*, i8** %24, align 8, !dbg !2748
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2751
  store i8* %25, i8** %26, align 16, !dbg !2752, !tbaa !632
  %27 = icmp eq i8* %25, null, !dbg !2753
  br i1 %27, label %30, label %28, !dbg !2754

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %29 = icmp ult i32 %22, 41, !dbg !2748
  br i1 %29, label %35, label %32, !dbg !2748

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2756
  ret void, !dbg !2756

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2748
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2748
  store i8* %34, i8** %10, align 8, !dbg !2748
  br label %40, !dbg !2748

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2748
  %37 = sext i32 %22 to i64, !dbg !2748
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2748
  %39 = add i32 %22, 8, !dbg !2748
  store i32 %39, i32* %8, align 8, !dbg !2748
  br label %40, !dbg !2748

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2748
  %44 = load i8*, i8** %43, align 8, !dbg !2748
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2751
  store i8* %44, i8** %45, align 8, !dbg !2752, !tbaa !632
  %46 = icmp eq i8* %44, null, !dbg !2753
  br i1 %46, label %30, label %47, !dbg !2754

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %48 = icmp ult i32 %41, 41, !dbg !2748
  br i1 %48, label %52, label %49, !dbg !2748

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2748
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2748
  store i8* %51, i8** %10, align 8, !dbg !2748
  br label %57, !dbg !2748

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2748
  %54 = sext i32 %41 to i64, !dbg !2748
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2748
  %56 = add i32 %41, 8, !dbg !2748
  store i32 %56, i32* %8, align 8, !dbg !2748
  br label %57, !dbg !2748

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2748
  %61 = load i8*, i8** %60, align 8, !dbg !2748
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2751
  store i8* %61, i8** %62, align 16, !dbg !2752, !tbaa !632
  %63 = icmp eq i8* %61, null, !dbg !2753
  br i1 %63, label %30, label %64, !dbg !2754

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %65 = icmp ult i32 %58, 41, !dbg !2748
  br i1 %65, label %69, label %66, !dbg !2748

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2748
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2748
  store i8* %68, i8** %10, align 8, !dbg !2748
  br label %74, !dbg !2748

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2748
  %71 = sext i32 %58 to i64, !dbg !2748
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2748
  %73 = add i32 %58, 8, !dbg !2748
  store i32 %73, i32* %8, align 8, !dbg !2748
  br label %74, !dbg !2748

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2748
  %78 = load i8*, i8** %77, align 8, !dbg !2748
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2751
  store i8* %78, i8** %79, align 8, !dbg !2752, !tbaa !632
  %80 = icmp eq i8* %78, null, !dbg !2753
  br i1 %80, label %30, label %81, !dbg !2754

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %82 = icmp ult i32 %75, 41, !dbg !2748
  br i1 %82, label %86, label %83, !dbg !2748

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2748
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2748
  store i8* %85, i8** %10, align 8, !dbg !2748
  br label %91, !dbg !2748

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2748
  %88 = sext i32 %75 to i64, !dbg !2748
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2748
  %90 = add i32 %75, 8, !dbg !2748
  store i32 %90, i32* %8, align 8, !dbg !2748
  br label %91, !dbg !2748

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2748
  %95 = load i8*, i8** %94, align 8, !dbg !2748
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2751
  store i8* %95, i8** %96, align 16, !dbg !2752, !tbaa !632
  %97 = icmp eq i8* %95, null, !dbg !2753
  br i1 %97, label %30, label %98, !dbg !2754

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %99 = icmp ult i32 %92, 41, !dbg !2748
  br i1 %99, label %103, label %100, !dbg !2748

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2748
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2748
  store i8* %102, i8** %10, align 8, !dbg !2748
  br label %108, !dbg !2748

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2748
  %105 = sext i32 %92 to i64, !dbg !2748
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2748
  %107 = add i32 %92, 8, !dbg !2748
  store i32 %107, i32* %8, align 8, !dbg !2748
  br label %108, !dbg !2748

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2748
  %111 = load i8*, i8** %110, align 8, !dbg !2748
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2751
  store i8* %111, i8** %112, align 8, !dbg !2752, !tbaa !632
  %113 = icmp eq i8* %111, null, !dbg !2753
  br i1 %113, label %30, label %114, !dbg !2754

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %115 = load i8*, i8** %10, align 8, !dbg !2748
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2748
  store i8* %116, i8** %10, align 8, !dbg !2748
  %117 = bitcast i8* %115 to i8**, !dbg !2748
  %118 = load i8*, i8** %117, align 8, !dbg !2748
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2751
  store i8* %118, i8** %119, align 16, !dbg !2752, !tbaa !632
  %120 = icmp eq i8* %118, null, !dbg !2753
  br i1 %120, label %30, label %121, !dbg !2754

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %122 = load i8*, i8** %10, align 8, !dbg !2748
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2748
  store i8* %123, i8** %10, align 8, !dbg !2748
  %124 = bitcast i8* %122 to i8**, !dbg !2748
  %125 = load i8*, i8** %124, align 8, !dbg !2748
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2751
  store i8* %125, i8** %126, align 8, !dbg !2752, !tbaa !632
  %127 = icmp eq i8* %125, null, !dbg !2753
  br i1 %127, label %30, label %128, !dbg !2754

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %129 = load i8*, i8** %10, align 8, !dbg !2748
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2748
  store i8* %130, i8** %10, align 8, !dbg !2748
  %131 = bitcast i8* %129 to i8**, !dbg !2748
  %132 = load i8*, i8** %131, align 8, !dbg !2748
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2751
  store i8* %132, i8** %133, align 16, !dbg !2752, !tbaa !632
  %134 = icmp eq i8* %132, null, !dbg !2753
  br i1 %134, label %30, label %135, !dbg !2754

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !625), !dbg !2747
  %136 = load i8*, i8** %10, align 8, !dbg !2748
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2748
  store i8* %137, i8** %10, align 8, !dbg !2748
  %138 = bitcast i8* %136 to i8**, !dbg !2748
  %139 = load i8*, i8** %138, align 8, !dbg !2748
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2751
  store i8* %139, i8** %140, align 8, !dbg !2752, !tbaa !632
  %141 = icmp eq i8* %139, null, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2737, metadata !625), !dbg !2747
  %142 = select i1 %141, i64 9, i64 10, !dbg !2754
  br label %30, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2757 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2761, metadata !625), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2762, metadata !625), !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2763, metadata !625), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2764, metadata !625), !dbg !2775
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2776
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2765, metadata !625), !dbg !2777
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2778
  call void @llvm.va_start(i8* nonnull %6), !dbg !2778
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2779
  call void @llvm.va_end(i8* nonnull %6), !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2781
  ret void, !dbg !2781
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2782 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #10, !dbg !2783
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #10, !dbg !2783
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #10, !dbg !2784
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.83, i64 0, i64 0)) #10, !dbg !2784
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.84, i64 0, i64 0), i32 5) #10, !dbg !2785
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2785, !tbaa !632
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2785
  ret void, !dbg !2786
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2787 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2791, metadata !625), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2792, metadata !625), !dbg !2794
  %3 = udiv i64 9223372036854775807, %1, !dbg !2795
  %4 = icmp ult i64 %3, %0, !dbg !2795
  br i1 %4, label %5, label %6, !dbg !2797

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2798
  unreachable, !dbg !2798

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2800, metadata !625) #10, !dbg !2807
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2806, metadata !625) #10, !dbg !2810
  %9 = icmp eq i8* %8, null, !dbg !2811
  %10 = icmp ne i64 %7, 0, !dbg !2813
  %11 = and i1 %10, %9, !dbg !2814
  br i1 %11, label %12, label %13, !dbg !2814

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2815
  unreachable, !dbg !2815

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2816
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2801 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2800, metadata !625), !dbg !2817
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2806, metadata !625), !dbg !2819
  %3 = icmp eq i8* %2, null, !dbg !2820
  %4 = icmp ne i64 %0, 0, !dbg !2821
  %5 = and i1 %4, %3, !dbg !2822
  br i1 %5, label %6, label %7, !dbg !2822

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2823
  unreachable, !dbg !2823

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2824
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2829, metadata !625), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2830, metadata !625), !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2831, metadata !625), !dbg !2834
  %4 = udiv i64 9223372036854775807, %2, !dbg !2835
  %5 = icmp ult i64 %4, %1, !dbg !2835
  br i1 %5, label %6, label %7, !dbg !2837

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2838
  unreachable, !dbg !2838

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625) #10, !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2845, metadata !625) #10, !dbg !2848
  %9 = icmp eq i64 %8, 0, !dbg !2849
  %10 = icmp ne i8* %0, null, !dbg !2851
  %11 = and i1 %10, %9, !dbg !2852
  br i1 %11, label %12, label %13, !dbg !2852

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2853
  br label %19, !dbg !2855

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2856
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2840, metadata !625) #10, !dbg !2846
  %15 = icmp eq i8* %14, null, !dbg !2857
  %16 = icmp ne i64 %8, 0, !dbg !2859
  %17 = and i1 %16, %15, !dbg !2860
  br i1 %17, label %18, label %19, !dbg !2860

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2861
  unreachable, !dbg !2861

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2862
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2845, metadata !625), !dbg !2864
  %3 = icmp eq i64 %1, 0, !dbg !2865
  %4 = icmp ne i8* %0, null, !dbg !2866
  %5 = and i1 %4, %3, !dbg !2867
  br i1 %5, label %6, label %7, !dbg !2867

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2868
  br label %13, !dbg !2869

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2840, metadata !625), !dbg !2863
  %9 = icmp eq i8* %8, null, !dbg !2871
  %10 = icmp ne i64 %1, 0, !dbg !2872
  %11 = and i1 %10, %9, !dbg !2873
  br i1 %11, label %12, label %13, !dbg !2873

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2874
  unreachable, !dbg !2874

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2875
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !582 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !587, metadata !625), !dbg !2876
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !588, metadata !625), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !589, metadata !625), !dbg !2878
  %4 = load i64, i64* %1, align 8, !dbg !2879, !tbaa !727
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !590, metadata !625), !dbg !2880
  %5 = icmp eq i8* %0, null, !dbg !2881
  br i1 %5, label %6, label %13, !dbg !2883

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2884
  br i1 %7, label %8, label %17, !dbg !2887

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !590, metadata !625), !dbg !2880
  %10 = icmp ugt i64 %2, 128, !dbg !2890
  %11 = zext i1 %10 to i64, !dbg !2890
  %12 = add nuw nsw i64 %9, %11, !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !590, metadata !625), !dbg !2880
  br label %17, !dbg !2892

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2893
  %15 = icmp ugt i64 %14, %4, !dbg !2896
  br i1 %15, label %20, label %16, !dbg !2897

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2898
  unreachable, !dbg !2898

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !625), !dbg !2880
  store i64 %18, i64* %1, align 8, !dbg !2899, !tbaa !727
  %19 = mul i64 %18, %2, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2845, metadata !625) #10, !dbg !2903
  br label %27, !dbg !2904

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2905
  %22 = add i64 %4, 1, !dbg !2906
  %23 = add i64 %22, %21, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !625), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !625), !dbg !2880
  store i64 %23, i64* %1, align 8, !dbg !2899, !tbaa !727
  %24 = mul i64 %23, %2, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2845, metadata !625) #10, !dbg !2903
  %25 = icmp eq i64 %24, 0, !dbg !2908
  br i1 %25, label %26, label %27, !dbg !2904

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2909
  br label %34, !dbg !2910

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2840, metadata !625) #10, !dbg !2901
  %30 = icmp eq i8* %29, null, !dbg !2912
  %31 = icmp ne i64 %28, 0, !dbg !2913
  %32 = and i1 %31, %30, !dbg !2914
  br i1 %32, label %33, label %34, !dbg !2914

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2915
  unreachable, !dbg !2915

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2916
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2917 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2919, metadata !625), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2800, metadata !625) #10, !dbg !2921
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2806, metadata !625) #10, !dbg !2924
  %3 = icmp eq i8* %2, null, !dbg !2925
  %4 = icmp ne i64 %0, 0, !dbg !2926
  %5 = and i1 %4, %3, !dbg !2927
  br i1 %5, label %6, label %7, !dbg !2927

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2928
  unreachable, !dbg !2928

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2930 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2934, metadata !625), !dbg !2936
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2935, metadata !625), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !587, metadata !625) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !588, metadata !625) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !589, metadata !625) #10, !dbg !2941
  %3 = load i64, i64* %1, align 8, !dbg !2942, !tbaa !727
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  %4 = icmp eq i8* %0, null, !dbg !2944
  br i1 %4, label %5, label %8, !dbg !2945

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  store i64 %7, i64* %1, align 8, !dbg !2948, !tbaa !727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2845, metadata !625) #10, !dbg !2951
  br label %17, !dbg !2952

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2953
  br i1 %9, label %11, label %10, !dbg !2954

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2955
  unreachable, !dbg !2955

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2956
  %13 = add i64 %3, 1, !dbg !2957
  %14 = add i64 %13, %12, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !625) #10, !dbg !2943
  store i64 %14, i64* %1, align 8, !dbg !2948, !tbaa !727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !625) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2845, metadata !625) #10, !dbg !2951
  %15 = icmp eq i64 %14, 0, !dbg !2959
  br i1 %15, label %16, label %17, !dbg !2952

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2960
  br label %24, !dbg !2961

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2840, metadata !625) #10, !dbg !2949
  %20 = icmp eq i8* %19, null, !dbg !2963
  %21 = icmp ne i64 %18, 0, !dbg !2964
  %22 = and i1 %21, %20, !dbg !2965
  br i1 %22, label %23, label %24, !dbg !2965

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2966
  unreachable, !dbg !2966

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2967
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2968 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2970, metadata !625), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2800, metadata !625) #10, !dbg !2972
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2806, metadata !625) #10, !dbg !2975
  %3 = icmp eq i8* %2, null, !dbg !2976
  %4 = icmp ne i64 %0, 0, !dbg !2977
  %5 = and i1 %4, %3, !dbg !2978
  br i1 %5, label %6, label %7, !dbg !2978

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2979
  unreachable, !dbg !2979

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2980
  ret i8* %2, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2982 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2984, metadata !625), !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2985, metadata !625), !dbg !2988
  %3 = udiv i64 9223372036854775807, %1, !dbg !2989
  %4 = icmp ult i64 %3, %0, !dbg !2989
  br i1 %4, label %8, label %5, !dbg !2991

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2992
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2986, metadata !625), !dbg !2993
  %7 = icmp eq i8* %6, null, !dbg !2994
  br i1 %7, label %8, label %9, !dbg !2995

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2996
  unreachable, !dbg !2996

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !625), !dbg !3006
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3005, metadata !625), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2800, metadata !625) #10, !dbg !3008
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2806, metadata !625) #10, !dbg !3011
  %4 = icmp eq i8* %3, null, !dbg !3012
  %5 = icmp ne i64 %1, 0, !dbg !3013
  %6 = and i1 %5, %4, !dbg !3014
  br i1 %6, label %7, label %8, !dbg !3014

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3015
  unreachable, !dbg !3015

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3016
  ret i8* %3, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3020, metadata !625), !dbg !3021
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3022
  %3 = add i64 %2, 1, !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !625) #10, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3005, metadata !625) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2800, metadata !625) #10, !dbg !3027
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2806, metadata !625) #10, !dbg !3030
  %5 = icmp eq i8* %4, null, !dbg !3031
  %6 = icmp ne i64 %3, 0, !dbg !3032
  %7 = and i1 %6, %5, !dbg !3033
  br i1 %7, label %8, label %9, !dbg !3033

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3034
  unreachable, !dbg !3034

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3035
  ret i8* %4, !dbg !3036
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3037 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3039, !tbaa !680
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.95, i64 0, i64 0), i32 5) #10, !dbg !3040
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* %2) #10, !dbg !3041
  tail call void @abort() #15, !dbg !3042
  unreachable, !dbg !3042
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3043 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3050, metadata !625), !dbg !3064
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3051, metadata !625), !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3052, metadata !625), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3053, metadata !625), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3054, metadata !625), !dbg !3068
  %7 = bitcast i8** %6 to i8*, !dbg !3069
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3058, metadata !625), !dbg !3070
  %8 = icmp ult i32 %2, 37, !dbg !3071
  br i1 %8, label %10, label %9, !dbg !3071

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.100, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #15, !dbg !3071
  unreachable, !dbg !3071

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3074
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3074
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3056, metadata !625), !dbg !3075
  %13 = tail call i32* @__errno_location() #17, !dbg !3076
  store i32 0, i32* %13, align 4, !dbg !3077, !tbaa !680
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3057, metadata !625), !dbg !3079
  %15 = load i8*, i8** %12, align 8, !dbg !3080, !tbaa !632
  %16 = icmp eq i8* %15, %0, !dbg !3082
  br i1 %16, label %17, label %26, !dbg !3083

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3084
  br i1 %18, label %196, label %19, !dbg !3087

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3088, !tbaa !689
  %21 = icmp eq i8 %20, 0, !dbg !3088
  br i1 %21, label %196, label %22, !dbg !3089

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3088
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !3090
  %25 = icmp eq i8* %24, null, !dbg !3090
  br i1 %25, label %196, label %33, !dbg !3091

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3092, !tbaa !680
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3094

; <label>:28:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3058, metadata !625), !dbg !3070
  br label %29, !dbg !3095

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !3058, metadata !625), !dbg !3070
  %31 = icmp eq i8* %4, null, !dbg !3097
  br i1 %31, label %32, label %33, !dbg !3099

; <label>:32:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3057, metadata !625), !dbg !3079
  store i64 %14, i64* %3, align 8, !dbg !3100, !tbaa !727
  br label %196, !dbg !3102

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3103, !tbaa !689
  %37 = sext i8 %36 to i32, !dbg !3103
  %38 = icmp eq i8 %36, 0, !dbg !3104
  br i1 %38, label %193, label %39, !dbg !3105

; <label>:39:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3059, metadata !625), !dbg !3106
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3062, metadata !625), !dbg !3107
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3108
  %41 = icmp eq i8* %40, null, !dbg !3108
  br i1 %41, label %42, label %44, !dbg !3110

; <label>:42:                                     ; preds = %39
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3057, metadata !625), !dbg !3079
  store i64 %35, i64* %3, align 8, !dbg !3111, !tbaa !727
  %43 = or i32 %34, 2, !dbg !3113
  br label %196, !dbg !3114

; <label>:44:                                     ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3115

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3116
  %47 = icmp eq i8* %46, null, !dbg !3116
  br i1 %47, label %58, label %48, !dbg !3119

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3120
  %50 = load i8, i8* %49, align 1, !dbg !3120, !tbaa !689
  %51 = sext i8 %50 to i32, !dbg !3120
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3121

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3122
  %54 = load i8, i8* %53, align 1, !dbg !3122, !tbaa !689
  %55 = icmp eq i8 %54, 66, !dbg !3125
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3062, metadata !625), !dbg !3107
  %56 = select i1 %55, i64 3, i64 1, !dbg !3126
  br label %58, !dbg !3126

; <label>:57:                                     ; preds = %48, %48
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3059, metadata !625), !dbg !3106
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3062, metadata !625), !dbg !3107
  br label %58, !dbg !3127

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3128

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3129, metadata !625), !dbg !3135
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3138
  br i1 %62, label %184, label %63, !dbg !3140

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3141
  %65 = shl nsw i64 %35, 9, !dbg !3143
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3144
  %67 = zext i1 %64 to i32, !dbg !3144
  br label %184, !dbg !3144

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3129, metadata !625), !dbg !3145
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3147
  br i1 %69, label %184, label %70, !dbg !3148

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3149
  %72 = shl nsw i64 %35, 10, !dbg !3150
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3151
  %74 = zext i1 %71 to i32, !dbg !3151
  br label %184, !dbg !3151

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  %76 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %77 = icmp slt i64 %35, %76, !dbg !3163
  br i1 %77, label %84, label %78, !dbg !3165

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3166
  %80 = icmp slt i64 %79, %35, !dbg !3167
  %81 = mul nsw i64 %35, %59, !dbg !3168
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3169
  %83 = zext i1 %80 to i32, !dbg !3169
  br label %84, !dbg !3169

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %87 = icmp slt i64 %85, %76, !dbg !3163
  br i1 %87, label %204, label %198, !dbg !3165

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3170
  %89 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3172
  %90 = icmp slt i64 %35, %89, !dbg !3173
  br i1 %90, label %97, label %91, !dbg !3175

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3176
  %93 = icmp slt i64 %92, %35, !dbg !3177
  %94 = mul nsw i64 %35, %59, !dbg !3178
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3179
  %96 = zext i1 %93 to i32, !dbg !3179
  br label %97, !dbg !3179

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3172
  %100 = icmp slt i64 %98, %89, !dbg !3173
  br i1 %100, label %258, label %252, !dbg !3175

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3182
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3182
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3180
  %102 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3152, metadata !625), !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3182
  %103 = icmp slt i64 %35, %102, !dbg !3183
  br i1 %103, label %184, label %104, !dbg !3185

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3186
  %106 = icmp slt i64 %105, %35, !dbg !3187
  %107 = mul nsw i64 %35, %59, !dbg !3188
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3189
  %109 = zext i1 %106 to i32, !dbg !3189
  br label %184, !dbg !3189

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3190
  %111 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3192
  %112 = icmp slt i64 %35, %111, !dbg !3193
  br i1 %112, label %119, label %113, !dbg !3195

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3196
  %115 = icmp slt i64 %114, %35, !dbg !3197
  %116 = mul nsw i64 %35, %59, !dbg !3198
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3199
  %118 = zext i1 %115 to i32, !dbg !3199
  br label %119, !dbg !3199

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3192
  %122 = icmp slt i64 %120, %111, !dbg !3193
  br i1 %122, label %279, label %273, !dbg !3195

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  %124 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  %125 = icmp slt i64 %35, %124, !dbg !3203
  br i1 %125, label %132, label %126, !dbg !3205

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3206
  %128 = icmp slt i64 %127, %35, !dbg !3207
  %129 = mul nsw i64 %35, %59, !dbg !3208
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3209
  %131 = zext i1 %128 to i32, !dbg !3209
  br label %132, !dbg !3209

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  %135 = icmp slt i64 %133, %124, !dbg !3203
  br i1 %135, label %289, label %283, !dbg !3205

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  %137 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  %138 = icmp slt i64 %35, %137, !dbg !3213
  br i1 %138, label %145, label %139, !dbg !3215

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3216
  %141 = icmp slt i64 %140, %35, !dbg !3217
  %142 = mul nsw i64 %35, %59, !dbg !3218
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3219
  %144 = zext i1 %141 to i32, !dbg !3219
  br label %145, !dbg !3219

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  %148 = icmp slt i64 %146, %137, !dbg !3213
  br i1 %148, label %332, label %326, !dbg !3215

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3129, metadata !625), !dbg !3220
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3222
  br i1 %150, label %184, label %151, !dbg !3223

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3224
  %153 = shl nsw i64 %35, 1, !dbg !3225
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3226
  %155 = zext i1 %152 to i32, !dbg !3226
  br label %184, !dbg !3226

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  %157 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %158 = icmp slt i64 %35, %157, !dbg !3230
  br i1 %158, label %165, label %159, !dbg !3232

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3233
  %161 = icmp slt i64 %160, %35, !dbg !3234
  %162 = mul nsw i64 %35, %59, !dbg !3235
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3236
  %164 = zext i1 %161 to i32, !dbg !3236
  br label %165, !dbg !3236

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %168 = icmp slt i64 %166, %157, !dbg !3230
  br i1 %168, label %364, label %358, !dbg !3232

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  %170 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %171 = icmp slt i64 %35, %170, !dbg !3240
  br i1 %171, label %178, label %172, !dbg !3242

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3243
  %174 = icmp slt i64 %173, %35, !dbg !3244
  %175 = mul nsw i64 %35, %59, !dbg !3245
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3246
  %177 = zext i1 %174 to i32, !dbg !3246
  br label %178, !dbg !3246

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %181 = icmp slt i64 %179, %170, !dbg !3240
  br i1 %181, label %440, label %434, !dbg !3242

; <label>:182:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3057, metadata !625), !dbg !3079
  store i64 %35, i64* %3, align 8, !dbg !3247, !tbaa !727
  %183 = or i32 %34, 2, !dbg !3248
  br label %196, !dbg !3249

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3063, metadata !625), !dbg !3250
  %187 = or i32 %186, %34, !dbg !3251
  tail call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !3058, metadata !625), !dbg !3070
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3252
  store i8* %188, i8** %12, align 8, !dbg !3252, !tbaa !632
  %189 = load i8, i8* %188, align 1, !dbg !3253, !tbaa !689
  %190 = icmp eq i8 %189, 0, !dbg !3253
  %191 = or i32 %187, 2, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !3058, metadata !625), !dbg !3070
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3058, metadata !625), !dbg !3070
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3058, metadata !625), !dbg !3070
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !3058, metadata !625), !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !3057, metadata !625), !dbg !3079
  store i64 %194, i64* %3, align 8, !dbg !3257, !tbaa !727
  br label %196, !dbg !3258

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3259
  ret i32 %197, !dbg !3259

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3166
  %200 = icmp slt i64 %199, %85, !dbg !3167
  %201 = mul nsw i64 %85, %59, !dbg !3168
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3169
  %203 = zext i1 %200 to i32, !dbg !3169
  br label %204, !dbg !3169

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %208 = icmp slt i64 %205, %76, !dbg !3163
  br i1 %208, label %215, label %209, !dbg !3165

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3166
  %211 = icmp slt i64 %210, %205, !dbg !3167
  %212 = mul nsw i64 %205, %59, !dbg !3168
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3169
  %214 = zext i1 %211 to i32, !dbg !3169
  br label %215, !dbg !3169

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %219 = icmp slt i64 %216, %76, !dbg !3163
  br i1 %219, label %226, label %220, !dbg !3165

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3166
  %222 = icmp slt i64 %221, %216, !dbg !3167
  %223 = mul nsw i64 %216, %59, !dbg !3168
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3169
  %225 = zext i1 %222 to i32, !dbg !3169
  br label %226, !dbg !3169

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %230 = icmp slt i64 %227, %76, !dbg !3163
  br i1 %230, label %237, label %231, !dbg !3165

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3166
  %233 = icmp slt i64 %232, %227, !dbg !3167
  %234 = mul nsw i64 %227, %59, !dbg !3168
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3169
  %236 = zext i1 %233 to i32, !dbg !3169
  br label %237, !dbg !3169

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3162
  %241 = icmp slt i64 %238, %76, !dbg !3163
  br i1 %241, label %248, label %242, !dbg !3165

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3166
  %244 = icmp slt i64 %243, %238, !dbg !3167
  %245 = mul nsw i64 %238, %59, !dbg !3168
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3169
  %247 = zext i1 %244 to i32, !dbg !3169
  br label %248, !dbg !3169

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3159, metadata !625), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3160
  br label %184, !dbg !3251

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3176
  %254 = icmp slt i64 %253, %98, !dbg !3177
  %255 = mul nsw i64 %98, %59, !dbg !3178
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3179
  %257 = zext i1 %254 to i32, !dbg !3179
  br label %258, !dbg !3179

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3172
  %262 = icmp slt i64 %259, %89, !dbg !3173
  br i1 %262, label %269, label %263, !dbg !3175

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3176
  %265 = icmp slt i64 %264, %259, !dbg !3177
  %266 = mul nsw i64 %259, %59, !dbg !3178
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3179
  %268 = zext i1 %265 to i32, !dbg !3179
  br label %269, !dbg !3179

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3159, metadata !625), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3152, metadata !625), !dbg !3170
  br label %184, !dbg !3251

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3196
  %275 = icmp slt i64 %274, %120, !dbg !3197
  %276 = mul nsw i64 %120, %59, !dbg !3198
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3199
  %278 = zext i1 %275 to i32, !dbg !3199
  br label %279, !dbg !3199

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3159, metadata !625), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3152, metadata !625), !dbg !3190
  br label %184, !dbg !3251

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3206
  %285 = icmp slt i64 %284, %133, !dbg !3207
  %286 = mul nsw i64 %133, %59, !dbg !3208
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3209
  %288 = zext i1 %285 to i32, !dbg !3209
  br label %289, !dbg !3209

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  %293 = icmp slt i64 %290, %124, !dbg !3203
  br i1 %293, label %300, label %294, !dbg !3205

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3206
  %296 = icmp slt i64 %295, %290, !dbg !3207
  %297 = mul nsw i64 %290, %59, !dbg !3208
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3209
  %299 = zext i1 %296 to i32, !dbg !3209
  br label %300, !dbg !3209

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  %304 = icmp slt i64 %301, %124, !dbg !3203
  br i1 %304, label %311, label %305, !dbg !3205

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3206
  %307 = icmp slt i64 %306, %301, !dbg !3207
  %308 = mul nsw i64 %301, %59, !dbg !3208
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3209
  %310 = zext i1 %307 to i32, !dbg !3209
  br label %311, !dbg !3209

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3202
  %315 = icmp slt i64 %312, %124, !dbg !3203
  br i1 %315, label %322, label %316, !dbg !3205

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3206
  %318 = icmp slt i64 %317, %312, !dbg !3207
  %319 = mul nsw i64 %312, %59, !dbg !3208
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3209
  %321 = zext i1 %318 to i32, !dbg !3209
  br label %322, !dbg !3209

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3159, metadata !625), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3200
  br label %184, !dbg !3251

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3216
  %328 = icmp slt i64 %327, %146, !dbg !3217
  %329 = mul nsw i64 %146, %59, !dbg !3218
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3219
  %331 = zext i1 %328 to i32, !dbg !3219
  br label %332, !dbg !3219

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  %336 = icmp slt i64 %333, %137, !dbg !3213
  br i1 %336, label %343, label %337, !dbg !3215

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3216
  %339 = icmp slt i64 %338, %333, !dbg !3217
  %340 = mul nsw i64 %333, %59, !dbg !3218
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3219
  %342 = zext i1 %339 to i32, !dbg !3219
  br label %343, !dbg !3219

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3212
  %347 = icmp slt i64 %344, %137, !dbg !3213
  br i1 %347, label %354, label %348, !dbg !3215

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3216
  %350 = icmp slt i64 %349, %344, !dbg !3217
  %351 = mul nsw i64 %344, %59, !dbg !3218
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3219
  %353 = zext i1 %350 to i32, !dbg !3219
  br label %354, !dbg !3219

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3159, metadata !625), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3152, metadata !625), !dbg !3210
  br label %184, !dbg !3251

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3233
  %360 = icmp slt i64 %359, %166, !dbg !3234
  %361 = mul nsw i64 %166, %59, !dbg !3235
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3236
  %363 = zext i1 %360 to i32, !dbg !3236
  br label %364, !dbg !3236

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %368 = icmp slt i64 %365, %157, !dbg !3230
  br i1 %368, label %375, label %369, !dbg !3232

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3233
  %371 = icmp slt i64 %370, %365, !dbg !3234
  %372 = mul nsw i64 %365, %59, !dbg !3235
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3236
  %374 = zext i1 %371 to i32, !dbg !3236
  br label %375, !dbg !3236

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %379 = icmp slt i64 %376, %157, !dbg !3230
  br i1 %379, label %386, label %380, !dbg !3232

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3233
  %382 = icmp slt i64 %381, %376, !dbg !3234
  %383 = mul nsw i64 %376, %59, !dbg !3235
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3236
  %385 = zext i1 %382 to i32, !dbg !3236
  br label %386, !dbg !3236

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %390 = icmp slt i64 %387, %157, !dbg !3230
  br i1 %390, label %397, label %391, !dbg !3232

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3233
  %393 = icmp slt i64 %392, %387, !dbg !3234
  %394 = mul nsw i64 %387, %59, !dbg !3235
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3236
  %396 = zext i1 %393 to i32, !dbg !3236
  br label %397, !dbg !3236

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %401 = icmp slt i64 %398, %157, !dbg !3230
  br i1 %401, label %408, label %402, !dbg !3232

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3233
  %404 = icmp slt i64 %403, %398, !dbg !3234
  %405 = mul nsw i64 %398, %59, !dbg !3235
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3236
  %407 = zext i1 %404 to i32, !dbg !3236
  br label %408, !dbg !3236

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %412 = icmp slt i64 %409, %157, !dbg !3230
  br i1 %412, label %419, label %413, !dbg !3232

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3233
  %415 = icmp slt i64 %414, %409, !dbg !3234
  %416 = mul nsw i64 %409, %59, !dbg !3235
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3236
  %418 = zext i1 %415 to i32, !dbg !3236
  br label %419, !dbg !3236

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3229
  %423 = icmp slt i64 %420, %157, !dbg !3230
  br i1 %423, label %430, label %424, !dbg !3232

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3233
  %426 = icmp slt i64 %425, %420, !dbg !3234
  %427 = mul nsw i64 %420, %59, !dbg !3235
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3236
  %429 = zext i1 %426 to i32, !dbg !3236
  br label %430, !dbg !3236

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3159, metadata !625), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3227
  br label %184, !dbg !3251

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3243
  %436 = icmp slt i64 %435, %179, !dbg !3244
  %437 = mul nsw i64 %179, %59, !dbg !3245
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3246
  %439 = zext i1 %436 to i32, !dbg !3246
  br label %440, !dbg !3246

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %444 = icmp slt i64 %441, %170, !dbg !3240
  br i1 %444, label %451, label %445, !dbg !3242

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3243
  %447 = icmp slt i64 %446, %441, !dbg !3244
  %448 = mul nsw i64 %441, %59, !dbg !3245
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3246
  %450 = zext i1 %447 to i32, !dbg !3246
  br label %451, !dbg !3246

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %455 = icmp slt i64 %452, %170, !dbg !3240
  br i1 %455, label %462, label %456, !dbg !3242

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3243
  %458 = icmp slt i64 %457, %452, !dbg !3244
  %459 = mul nsw i64 %452, %59, !dbg !3245
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3246
  %461 = zext i1 %458 to i32, !dbg !3246
  br label %462, !dbg !3246

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %466 = icmp slt i64 %463, %170, !dbg !3240
  br i1 %466, label %473, label %467, !dbg !3242

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3243
  %469 = icmp slt i64 %468, %463, !dbg !3244
  %470 = mul nsw i64 %463, %59, !dbg !3245
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3246
  %472 = zext i1 %469 to i32, !dbg !3246
  br label %473, !dbg !3246

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %477 = icmp slt i64 %474, %170, !dbg !3240
  br i1 %477, label %484, label %478, !dbg !3242

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3243
  %480 = icmp slt i64 %479, %474, !dbg !3244
  %481 = mul nsw i64 %474, %59, !dbg !3245
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3246
  %483 = zext i1 %480 to i32, !dbg !3246
  br label %484, !dbg !3246

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !625), !dbg !3239
  %488 = icmp slt i64 %485, %170, !dbg !3240
  br i1 %488, label %495, label %489, !dbg !3242

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3243
  %491 = icmp slt i64 %490, %485, !dbg !3244
  %492 = mul nsw i64 %485, %59, !dbg !3245
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3246
  %494 = zext i1 %491 to i32, !dbg !3246
  br label %495, !dbg !3246

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3159, metadata !625), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3152, metadata !625), !dbg !3237
  br label %184, !dbg !3251
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3270, metadata !625), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3271, metadata !625), !dbg !3277
  %3 = icmp eq i64 %0, 0, !dbg !3278
  %4 = icmp eq i64 %1, 0, !dbg !3279
  %5 = or i1 %3, %4, !dbg !3280
  br i1 %5, label %12, label %6, !dbg !3280

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3273, metadata !625), !dbg !3282
  %8 = udiv i64 %7, %1, !dbg !3283
  %9 = icmp eq i64 %8, %0, !dbg !3285
  br i1 %9, label %12, label %10, !dbg !3286

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3287
  store i32 12, i32* %11, align 4, !dbg !3289, !tbaa !680
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3270, metadata !625), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3271, metadata !625), !dbg !3277
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3290
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3272, metadata !625), !dbg !3291
  br label %16, !dbg !3292

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3293
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3294 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3311, metadata !625), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !625), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3313, metadata !625), !dbg !3322
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3314, metadata !625), !dbg !3323
  %6 = bitcast i32* %5 to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3324
  %7 = icmp eq i32* %0, null, !dbg !3325
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3311, metadata !625), !dbg !3320
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3327
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3311, metadata !625), !dbg !3320
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3315, metadata !625), !dbg !3329
  %10 = icmp ugt i64 %9, -3, !dbg !3330
  %11 = icmp ne i64 %2, 0, !dbg !3331
  %12 = and i1 %11, %10, !dbg !3332
  br i1 %12, label %13, label %18, !dbg !3332

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3333
  br i1 %14, label %18, label %15, !dbg !3334

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3335, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3317, metadata !625), !dbg !3336
  %17 = zext i8 %16 to i32, !dbg !3337
  store i32 %17, i32* %8, align 4, !dbg !3338, !tbaa !680
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3339
  ret i64 %19, !dbg !3339
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3340 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3385, metadata !625), !dbg !3390
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3391
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3392, metadata !625), !dbg !3395
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3397
  %4 = load i32, i32* %3, align 8, !dbg !3397, !tbaa !849
  %5 = and i32 %4, 32, !dbg !3397
  %6 = icmp eq i32 %5, 0, !dbg !3398
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3399
  %8 = icmp ne i32 %7, 0, !dbg !3400
  br i1 %6, label %9, label %19, !dbg !3401

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3403
  %11 = xor i1 %8, true, !dbg !3404
  %12 = or i1 %10, %11, !dbg !3404
  %13 = sext i1 %8 to i32, !dbg !3404
  br i1 %12, label %22, label %14, !dbg !3404

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3405
  %16 = load i32, i32* %15, align 4, !dbg !3405, !tbaa !680
  %17 = icmp ne i32 %16, 9, !dbg !3406
  %18 = sext i1 %17 to i32, !dbg !3407
  br label %22, !dbg !3407

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3408

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3410
  store i32 0, i32* %21, align 4, !dbg !3412, !tbaa !680
  br label %22, !dbg !3410

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3413
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3414 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3417, metadata !625), !dbg !3420
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3418, metadata !625), !dbg !3421
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3419, metadata !625), !dbg !3423
  %3 = icmp eq i8* %2, null, !dbg !3424
  br i1 %3, label %11, label %4, !dbg !3426

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #14, !dbg !3427
  %6 = icmp eq i32 %5, 0, !dbg !3432
  br i1 %6, label %10, label %7, !dbg !3433

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0)) #14, !dbg !3434
  %9 = icmp eq i32 %8, 0, !dbg !3435
  br i1 %9, label %10, label %11, !dbg !3436

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3418, metadata !625), !dbg !3421
  br label %11, !dbg !3437

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3438
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3439 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3445, metadata !625), !dbg !3519
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3512, metadata !625), !dbg !3522
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3443, metadata !625), !dbg !3524
  %4 = icmp eq i8* %3, null, !dbg !3525
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), i8* %3, !dbg !3527
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3443, metadata !625), !dbg !3524
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3528, !tbaa !632
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3459, metadata !625) #10, !dbg !3529
  %7 = icmp eq i8* %6, null, !dbg !3530
  br i1 %7, label %8, label %123, !dbg !3531

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.114, i64 0, i64 0)) #10, !dbg !3532
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3460, metadata !625) #10, !dbg !3533
  %10 = icmp eq i8* %9, null, !dbg !3534
  br i1 %10, label %14, label %11, !dbg !3536

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3537, !tbaa !689
  %13 = icmp eq i8 %12, 0, !dbg !3538
  br i1 %13, label %14, label %15, !dbg !3539

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3540

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.115, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3460, metadata !625) #10, !dbg !3533
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3463, metadata !625) #10, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3465, metadata !625) #10, !dbg !3543
  %18 = icmp eq i64 %17, 0, !dbg !3544
  br i1 %18, label %24, label %19, !dbg !3545

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3546
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3546
  %22 = load i8, i8* %21, align 1, !dbg !3546, !tbaa !689
  %23 = icmp ne i8 %22, 47, !dbg !3546
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3547
  %27 = add i64 %17, 14, !dbg !3548
  %28 = add i64 %27, %26, !dbg !3549
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3462, metadata !625) #10, !dbg !3551
  %30 = icmp eq i8* %29, null, !dbg !3552
  br i1 %30, label %121, label %31, !dbg !3552

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3553
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3556

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3557, !tbaa !689
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3559
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.116, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3560
  br label %37, !dbg !3561

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3559
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.116, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3560
  br label %37, !dbg !3561

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3467, metadata !625) #10, !dbg !3563
  %39 = icmp slt i32 %38, 0, !dbg !3564
  br i1 %39, label %119, label %40, !dbg !3565

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.117, i64 0, i64 0)) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3468, metadata !625) #10, !dbg !3567
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3568
  br i1 %42, label %43, label %45, !dbg !3569

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3570
  br label %119, !dbg !3572

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3575

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3576

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3577
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3578, metadata !625) #10, !dbg !3583
  %54 = load i8*, i8** %48, align 8, !dbg !3585, !tbaa !3586
  %55 = load i8*, i8** %49, align 8, !dbg !3585, !tbaa !3587
  %56 = icmp ult i8* %54, %55, !dbg !3585
  br i1 %56, label %59, label %57, !dbg !3585, !prof !3588

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3585
  br label %63, !dbg !3585

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3585
  store i8* %60, i8** %48, align 8, !dbg !3585, !tbaa !3586
  %61 = load i8, i8* %54, align 1, !dbg !3585, !tbaa !689
  %62 = zext i8 %61 to i32, !dbg !3585
  br label %63, !dbg !3585

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3511, metadata !625) #10, !dbg !3589
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3590, !llvm.loop !3591

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3596

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3578, metadata !625) #10, !dbg !3598
  %67 = load i8*, i8** %48, align 8, !dbg !3596, !tbaa !3586
  %68 = load i8*, i8** %49, align 8, !dbg !3596, !tbaa !3587
  %69 = icmp ult i8* %67, %68, !dbg !3596
  br i1 %69, label %72, label %70, !dbg !3596, !prof !3588

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3596
  br label %76, !dbg !3596

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3596
  store i8* %73, i8** %48, align 8, !dbg !3596, !tbaa !3586
  %74 = load i8, i8* %67, align 1, !dbg !3596, !tbaa !689
  %75 = zext i8 %74 to i32, !dbg !3596
  br label %76, !dbg !3596

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3596
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3511, metadata !625) #10, !dbg !3589
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3599, !llvm.loop !3600

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3603
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.118, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3604
  %81 = icmp slt i32 %80, 2, !dbg !3606
  br i1 %81, label %112, label %82, !dbg !3607

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3516, metadata !625) #10, !dbg !3609
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3517, metadata !625) #10, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3518, metadata !625) #10, !dbg !3612
  %85 = icmp eq i64 %51, 0, !dbg !3613
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3615

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  %90 = add i64 %87, 2, !dbg !3616
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  br label %96, !dbg !3619

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  %94 = add i64 %93, 1, !dbg !3622
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  %99 = icmp eq i8* %98, null, !dbg !3624
  br i1 %99, label %100, label %102, !dbg !3626

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  call void @free(i8* %52) #10, !dbg !3627
  br label %112, !dbg !3629

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3630
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3631
  %104 = xor i64 %84, -1, !dbg !3632
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3632
  %106 = xor i64 %83, -1, !dbg !3633
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3633
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3634, metadata !625) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3642, metadata !625) #10, !dbg !3643
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3645
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3634, metadata !625) #10, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3642, metadata !625) #10, !dbg !3647
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3649
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3509, metadata !625) #10, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3510, metadata !625) #10, !dbg !3574
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3630
  br label %50, !dbg !3651, !llvm.loop !3600

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3630
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3652
  %116 = icmp eq i64 %113, 0, !dbg !3653
  br i1 %116, label %119, label %117, !dbg !3655

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3656
  store i8 0, i8* %118, align 1, !dbg !3658, !tbaa !689
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3459, metadata !625) #10, !dbg !3529
  call void @free(i8* %29) #10, !dbg !3659
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3459, metadata !625) #10, !dbg !3529
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3660, !tbaa !632
  br label %123, !dbg !3661

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3459, metadata !625) #10, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3444, metadata !625), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3444, metadata !625), !dbg !3662
  %125 = load i8, i8* %124, align 1, !dbg !3663, !tbaa !689
  %126 = icmp eq i8 %125, 0, !dbg !3665
  br i1 %126, label %152, label %127, !dbg !3666

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3667

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3444, metadata !625), !dbg !3662
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3667
  %132 = icmp eq i32 %131, 0, !dbg !3669
  br i1 %132, label %139, label %133, !dbg !3670

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3671
  br i1 %134, label %135, label %143, !dbg !3672

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3673
  %137 = load i8, i8* %136, align 1, !dbg !3673, !tbaa !689
  %138 = icmp eq i8 %137, 0, !dbg !3674
  br i1 %138, label %139, label %143, !dbg !3675

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3676
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3678
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3443, metadata !625), !dbg !3524
  br label %152, !dbg !3680

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3681
  %145 = add i64 %144, 1, !dbg !3682
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3444, metadata !625), !dbg !3662
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3684
  %148 = add i64 %147, 1, !dbg !3685
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3444, metadata !625), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3444, metadata !625), !dbg !3662
  %150 = load i8, i8* %149, align 1, !dbg !3663, !tbaa !689
  %151 = icmp eq i8 %150, 0, !dbg !3665
  br i1 %151, label %152, label %128, !dbg !3666, !llvm.loop !3687

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3443, metadata !625), !dbg !3524
  %154 = load i8, i8* %153, align 1, !dbg !3689, !tbaa !689
  %155 = icmp eq i8 %154, 0, !dbg !3691
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %153, !dbg !3692
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3443, metadata !625), !dbg !3524
  ret i8* %156, !dbg !3693
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3739, metadata !625), !dbg !3743
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3740, metadata !625), !dbg !3744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3742, metadata !625), !dbg !3745
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3746
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3741, metadata !625), !dbg !3747
  %3 = icmp slt i32 %2, 0, !dbg !3748
  br i1 %3, label %4, label %6, !dbg !3750

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3751
  br label %24, !dbg !3752

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3753
  %8 = icmp eq i32 %7, 0, !dbg !3753
  br i1 %8, label %13, label %9, !dbg !3755

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3756
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3757
  %12 = icmp eq i64 %11, -1, !dbg !3758
  br i1 %12, label %16, label %13, !dbg !3759

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3760
  %15 = icmp eq i32 %14, 0, !dbg !3760
  br i1 %15, label %16, label %18, !dbg !3761

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3740, metadata !625), !dbg !3744
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3762
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3742, metadata !625), !dbg !3745
  br label %24, !dbg !3763

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3764
  %20 = load i32, i32* %19, align 4, !dbg !3764, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3740, metadata !625), !dbg !3744
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3740, metadata !625), !dbg !3744
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3762
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3742, metadata !625), !dbg !3745
  %22 = icmp eq i32 %20, 0, !dbg !3765
  br i1 %22, label %24, label %23, !dbg !3763

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3767, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3742, metadata !625), !dbg !3745
  br label %24, !dbg !3769

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3770
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3771 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3816, metadata !625), !dbg !3817
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3818
  br i1 %2, label %6, label %3, !dbg !3820

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3821
  %5 = icmp eq i32 %4, 0, !dbg !3821
  br i1 %5, label %6, label %8, !dbg !3822

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3823
  br label %17, !dbg !3824

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3825, metadata !625) #10, !dbg !3830
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3832
  %10 = load i32, i32* %9, align 8, !dbg !3832, !tbaa !849
  %11 = and i32 %10, 256, !dbg !3834
  %12 = icmp eq i32 %11, 0, !dbg !3834
  br i1 %12, label %15, label %13, !dbg !3835

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3836
  br label %15, !dbg !3836

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3837
  br label %17, !dbg !3838

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3839
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3886, metadata !625), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3887, metadata !625), !dbg !3893
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3888, metadata !625), !dbg !3894
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3895
  %5 = load i8*, i8** %4, align 8, !dbg !3895, !tbaa !3587
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3896
  %7 = load i8*, i8** %6, align 8, !dbg !3896, !tbaa !3586
  %8 = icmp eq i8* %5, %7, !dbg !3897
  br i1 %8, label %9, label %28, !dbg !3898

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3899
  %11 = load i8*, i8** %10, align 8, !dbg !3899, !tbaa !3900
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3901
  %13 = load i8*, i8** %12, align 8, !dbg !3901, !tbaa !3902
  %14 = icmp eq i8* %11, %13, !dbg !3903
  br i1 %14, label %15, label %28, !dbg !3904

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3905
  %17 = load i8*, i8** %16, align 8, !dbg !3905, !tbaa !3906
  %18 = icmp eq i8* %17, null, !dbg !3907
  br i1 %18, label %19, label %28, !dbg !3908

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3909
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3889, metadata !625), !dbg !3911
  %22 = icmp eq i64 %21, -1, !dbg !3912
  br i1 %22, label %30, label %23, !dbg !3914

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3915
  %25 = load i32, i32* %24, align 8, !dbg !3916, !tbaa !849
  %26 = and i32 %25, -17, !dbg !3916
  store i32 %26, i32* %24, align 8, !dbg !3916, !tbaa !849
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3917
  store i64 %21, i64* %27, align 8, !dbg !3918, !tbaa !3919
  br label %30, !dbg !3920

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3921
  br label %30, !dbg !3922

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3923
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
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !99, !105, !113, !120, !127, !569, !213, !577, !594, !596, !599, !601, !604, !606, !222, !608, !610, !612}
!llvm.ident = !{!614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614, !614}
!llvm.module.flags = !{!615, !616, !617, !618, !619}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !85, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !65)
!3 = !DIFile(filename: "src/nice.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12, !20, !56}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !13, line: 26, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!16 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!17 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!19 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !3, line: 170, size: 32, elements: !53)
!21 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 101, type: !22, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !28)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24, !25}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29, !30, !31, !32, !33, !36, !38, !39, !43, !46, !47, !48, !52}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !21, file: !3, line: 101, type: !24)
!30 = !DILocalVariable(name: "argv", arg: 2, scope: !21, file: !3, line: 101, type: !25)
!31 = !DILocalVariable(name: "current_niceness", scope: !21, file: !3, line: 103, type: !24)
!32 = !DILocalVariable(name: "adjustment", scope: !21, file: !3, line: 104, type: !24)
!33 = !DILocalVariable(name: "adjustment_given", scope: !21, file: !3, line: 105, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!36 = !DILocalVariable(name: "ok", scope: !21, file: !3, line: 106, type: !37)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 107, type: !24)
!39 = !DILocalVariable(name: "s", scope: !40, file: !3, line: 120, type: !34)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 119, column: 5)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 118, column: 3)
!42 = distinct !DILexicalBlock(scope: !21, file: !3, line: 118, column: 3)
!43 = !DILocalVariable(name: "c", scope: !44, file: !3, line: 129, type: !24)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 128, column: 9)
!45 = distinct !DILexicalBlock(scope: !40, file: !3, line: 122, column: 11)
!46 = !DILocalVariable(name: "fake_argc", scope: !44, file: !3, line: 130, type: !24)
!47 = !DILocalVariable(name: "fake_argv", scope: !44, file: !3, line: 131, type: !25)
!48 = !DILocalVariable(name: "tmp", scope: !49, file: !3, line: 171, type: !51)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 166, column: 5)
!50 = distinct !DILexicalBlock(scope: !21, file: !3, line: 165, column: 7)
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "exit_status", scope: !21, file: !3, line: 218, type: !24)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!55 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !57, line: 187, size: 32, elements: !58)
!57 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!60 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!61 = !DIEnumerator(name: "PRIO_USER", value: 2)
!62 = !{!63, !26, !64}
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{!66, !0}
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "infomap", scope: !68, file: !6, line: 632, type: !82, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !69, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !34}
!71 = !{!72, !73, !74, !81}
!72 = !DILocalVariable(name: "program", arg: 1, scope: !68, file: !6, line: 630, type: !34)
!73 = !DILocalVariable(name: "node", scope: !68, file: !6, line: 642, type: !34)
!74 = !DILocalVariable(name: "map_prog", scope: !68, file: !6, line: 643, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !68, file: !6, line: 632, size: 128, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !77, file: !6, line: 632, baseType: !34, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !6, line: 632, baseType: !34, size: 64, offset: 64)
!81 = !DILocalVariable(name: "lc_messages", scope: !68, file: !6, line: 655, type: !34)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 896, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 7)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 1024, elements: !95)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !88, line: 50, size: 256, elements: !89)
!88 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!90, !91, !92, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 52, baseType: !34, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !87, file: !88, line: 55, baseType: !24, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !87, file: !88, line: 56, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !88, line: 57, baseType: !24, size: 32, offset: 192)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "Version", scope: !99, file: !100, line: 2, type: !34, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, globals: !102)
!100 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{}
!102 = !{!97}
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "file_name", scope: !105, file: !110, line: 36, type: !34, isLocal: true, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, globals: !107)
!106 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{!103, !108}
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !105, file: !110, line: 46, type: !37, isLocal: true, isDefinition: true)
!110 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "exit_failure", scope: !113, file: !116, line: 24, type: !117, isLocal: false, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, globals: !115)
!114 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !{!111}
!116 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "program_name", scope: !120, file: !124, line: 33, type: !34, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !122, globals: !123)
!121 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !{!64, !26}
!123 = !{!118}
!124 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !127, file: !172, line: 77, type: !207, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !164, globals: !169)
!128 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !{!130, !144, !149}
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !131, line: 32, size: 32, elements: !132)
!131 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!133 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!134 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!135 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!136 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!137 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!138 = !DIEnumerator(name: "c_quoting_style", value: 5)
!139 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!140 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!141 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!142 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!143 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !131, line: 242, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!147 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!148 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 46, size: 32, elements: !151)
!150 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!152 = !DIEnumerator(name: "_ISupper", value: 256)
!153 = !DIEnumerator(name: "_ISlower", value: 512)
!154 = !DIEnumerator(name: "_ISalpha", value: 1024)
!155 = !DIEnumerator(name: "_ISdigit", value: 2048)
!156 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!157 = !DIEnumerator(name: "_ISspace", value: 8192)
!158 = !DIEnumerator(name: "_ISprint", value: 16384)
!159 = !DIEnumerator(name: "_ISgraph", value: 32768)
!160 = !DIEnumerator(name: "_ISblank", value: 1)
!161 = !DIEnumerator(name: "_IScntrl", value: 2)
!162 = !DIEnumerator(name: "_ISpunct", value: 4)
!163 = !DIEnumerator(name: "_ISalnum", value: 8)
!164 = !{!24, !165, !166, !26}
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 62, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!168 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!169 = !{!125, !170, !177, !189, !191, !196, !203, !205}
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !127, file: !172, line: 93, type: !173, isLocal: false, isDefinition: true)
!172 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 320, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!175 = !{!176}
!176 = !DISubrange(count: 10)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !127, file: !172, line: 1043, type: !179, isLocal: false, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !172, line: 57, size: 448, elements: !180)
!180 = !{!181, !182, !183, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !179, file: !172, line: 60, baseType: !130, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !172, line: 63, baseType: !24, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !179, file: !172, line: 67, baseType: !184, size: 256, offset: 64)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !179, file: !172, line: 70, baseType: !34, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !179, file: !172, line: 73, baseType: !34, size: 64, offset: 384)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !127, file: !172, line: 108, type: !179, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slot0", scope: !127, file: !172, line: 834, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "slotvec", scope: !127, file: !172, line: 837, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !172, line: 826, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !172, line: 828, baseType: !166, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !172, line: 829, baseType: !26, size: 64, offset: 64)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "nslots", scope: !127, file: !172, line: 835, type: !24, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "slotvec0", scope: !127, file: !172, line: 836, type: !199, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 704, elements: !209)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !213, file: !216, line: 26, type: !217, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, globals: !215)
!214 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !{!211}
!216 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 47)
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !222, file: !567, line: 120, type: !568, isLocal: true, isDefinition: true)
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, retainedTypes: !563, globals: !566)
!223 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !{!225}
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 41, size: 32, elements: !227)
!226 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!228 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!229 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!230 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!231 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!232 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!233 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!234 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!235 = !DIEnumerator(name: "DAY_1", value: 131079)
!236 = !DIEnumerator(name: "DAY_2", value: 131080)
!237 = !DIEnumerator(name: "DAY_3", value: 131081)
!238 = !DIEnumerator(name: "DAY_4", value: 131082)
!239 = !DIEnumerator(name: "DAY_5", value: 131083)
!240 = !DIEnumerator(name: "DAY_6", value: 131084)
!241 = !DIEnumerator(name: "DAY_7", value: 131085)
!242 = !DIEnumerator(name: "ABMON_1", value: 131086)
!243 = !DIEnumerator(name: "ABMON_2", value: 131087)
!244 = !DIEnumerator(name: "ABMON_3", value: 131088)
!245 = !DIEnumerator(name: "ABMON_4", value: 131089)
!246 = !DIEnumerator(name: "ABMON_5", value: 131090)
!247 = !DIEnumerator(name: "ABMON_6", value: 131091)
!248 = !DIEnumerator(name: "ABMON_7", value: 131092)
!249 = !DIEnumerator(name: "ABMON_8", value: 131093)
!250 = !DIEnumerator(name: "ABMON_9", value: 131094)
!251 = !DIEnumerator(name: "ABMON_10", value: 131095)
!252 = !DIEnumerator(name: "ABMON_11", value: 131096)
!253 = !DIEnumerator(name: "ABMON_12", value: 131097)
!254 = !DIEnumerator(name: "MON_1", value: 131098)
!255 = !DIEnumerator(name: "MON_2", value: 131099)
!256 = !DIEnumerator(name: "MON_3", value: 131100)
!257 = !DIEnumerator(name: "MON_4", value: 131101)
!258 = !DIEnumerator(name: "MON_5", value: 131102)
!259 = !DIEnumerator(name: "MON_6", value: 131103)
!260 = !DIEnumerator(name: "MON_7", value: 131104)
!261 = !DIEnumerator(name: "MON_8", value: 131105)
!262 = !DIEnumerator(name: "MON_9", value: 131106)
!263 = !DIEnumerator(name: "MON_10", value: 131107)
!264 = !DIEnumerator(name: "MON_11", value: 131108)
!265 = !DIEnumerator(name: "MON_12", value: 131109)
!266 = !DIEnumerator(name: "AM_STR", value: 131110)
!267 = !DIEnumerator(name: "PM_STR", value: 131111)
!268 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!269 = !DIEnumerator(name: "D_FMT", value: 131113)
!270 = !DIEnumerator(name: "T_FMT", value: 131114)
!271 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!272 = !DIEnumerator(name: "ERA", value: 131116)
!273 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!274 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!275 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!276 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!277 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!278 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!280 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!281 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!282 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!283 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!284 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!285 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!286 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!287 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!288 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!289 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!290 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!291 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!292 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!293 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!294 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!295 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!296 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!297 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!298 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!299 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!300 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!301 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!302 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!303 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!304 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!305 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!306 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!307 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!308 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!309 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!310 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!311 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!312 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!313 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!314 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!315 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!316 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!317 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!318 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!319 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!320 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!321 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!322 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!323 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!324 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!325 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!326 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!327 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!328 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!332 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!334 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!335 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!336 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!337 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!338 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!339 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!340 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!341 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!342 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!343 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!344 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!345 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!346 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!347 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!348 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!349 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!350 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!351 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!352 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!353 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!354 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!355 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!356 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!357 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!358 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!359 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!360 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!363 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!365 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!367 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!370 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!371 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!372 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!373 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!374 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!375 = !DIEnumerator(name: "CODESET", value: 14)
!376 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!378 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!431 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!432 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!447 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!448 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!449 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!450 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!451 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!452 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!453 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!454 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!455 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!456 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!457 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!458 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!459 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!460 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!461 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!462 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!463 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!464 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!465 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!466 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!467 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!468 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!469 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!486 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!487 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!490 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!491 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!492 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!493 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!494 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!495 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!496 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!497 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!498 = !DIEnumerator(name: "THOUSEP", value: 65537)
!499 = !DIEnumerator(name: "__GROUPING", value: 65538)
!500 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!501 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!502 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!503 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!504 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!505 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!506 = !DIEnumerator(name: "__YESSTR", value: 327682)
!507 = !DIEnumerator(name: "__NOSTR", value: 327683)
!508 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!510 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!511 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!512 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!513 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!517 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!520 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!521 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!522 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!530 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!531 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!532 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!533 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!534 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!535 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!538 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!539 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!541 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!542 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!543 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!544 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!561 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!562 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!563 = !{!64, !26, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!566 = !{!220}
!567 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !576)
!570 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = !{!572}
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !573, line: 41, size: 32, elements: !574)
!573 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !{!575}
!575 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!576 = !{!64}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !579, retainedTypes: !593)
!578 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!580}
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !582, file: !581, line: 192, size: 32, elements: !591)
!581 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DISubprogram(name: "x2nrealloc", scope: !581, file: !581, line: 180, type: !583, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !586)
!583 = !DISubroutineType(types: !584)
!584 = !{!64, !64, !585, !166}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!586 = !{!587, !588, !589, !590}
!587 = !DILocalVariable(name: "p", arg: 1, scope: !582, file: !581, line: 180, type: !64)
!588 = !DILocalVariable(name: "pn", arg: 2, scope: !582, file: !581, line: 180, type: !585)
!589 = !DILocalVariable(name: "s", arg: 3, scope: !582, file: !581, line: 180, type: !166)
!590 = !DILocalVariable(name: "n", scope: !582, file: !581, line: 182, type: !166)
!591 = !{!592}
!592 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!593 = !{!166, !26, !64}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101)
!595 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !598)
!597 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = !{!12}
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !576)
!600 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !603)
!602 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !{!166}
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101)
!605 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101)
!607 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101)
!609 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !576)
!611 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !576)
!613 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!615 = !{i32 2, !"Dwarf Version", i32 4}
!616 = !{i32 2, !"Debug Info Version", i32 3}
!617 = !{i32 1, !"wchar_size", i32 4}
!618 = !{i32 7, !"PIC Level", i32 2}
!619 = !{i32 7, !"PIE Level", i32 2}
!620 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !621, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !24}
!623 = !{!624}
!624 = !DILocalVariable(name: "status", arg: 1, scope: !620, file: !3, line: 67, type: !24)
!625 = !DIExpression()
!626 = !DILocation(line: 67, column: 12, scope: !620)
!627 = !DILocation(line: 69, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !620, file: !3, line: 69, column: 7)
!629 = !DILocation(line: 69, column: 7, scope: !620)
!630 = !DILocation(line: 70, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !3, line: 70, column: 5)
!632 = !{!633, !633, i64 0}
!633 = !{!"any pointer", !634, i64 0}
!634 = !{!"omnipotent char", !635, i64 0}
!635 = !{!"Simple C/C++ TBAA"}
!636 = !DILocation(line: 73, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !628, file: !3, line: 72, column: 5)
!638 = !DILocation(line: 74, column: 7, scope: !637)
!639 = !DILocation(line: 587, column: 3, scope: !640, inlinedAt: !643)
!640 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !641, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !101)
!641 = !DISubroutineType(types: !642)
!642 = !{null}
!643 = distinct !DILocation(line: 81, column: 7, scope: !637)
!644 = !DILocation(line: 83, column: 7, scope: !637)
!645 = !DILocation(line: 86, column: 7, scope: !637)
!646 = !DILocation(line: 87, column: 7, scope: !637)
!647 = !DILocation(line: 88, column: 7, scope: !637)
!648 = !DILocation(line: 642, column: 15, scope: !68, inlinedAt: !649)
!649 = distinct !DILocation(line: 89, column: 7, scope: !637)
!650 = !DILocation(line: 651, column: 3, scope: !68, inlinedAt: !649)
!651 = !DILocation(line: 655, column: 29, scope: !68, inlinedAt: !649)
!652 = !DILocation(line: 655, column: 15, scope: !68, inlinedAt: !649)
!653 = !DILocation(line: 656, column: 7, scope: !654, inlinedAt: !649)
!654 = distinct !DILexicalBlock(scope: !68, file: !6, line: 656, column: 7)
!655 = !DILocation(line: 656, column: 19, scope: !654, inlinedAt: !649)
!656 = !DILocation(line: 656, column: 22, scope: !654, inlinedAt: !649)
!657 = !DILocation(line: 656, column: 7, scope: !68, inlinedAt: !649)
!658 = !DILocation(line: 662, column: 7, scope: !659, inlinedAt: !649)
!659 = distinct !DILexicalBlock(scope: !654, file: !6, line: 657, column: 5)
!660 = !DILocation(line: 664, column: 5, scope: !659, inlinedAt: !649)
!661 = !DILocation(line: 665, column: 3, scope: !68, inlinedAt: !649)
!662 = !DILocation(line: 667, column: 3, scope: !68, inlinedAt: !649)
!663 = !DILocation(line: 91, column: 3, scope: !620)
!664 = !DILocation(line: 101, column: 11, scope: !21)
!665 = !DILocation(line: 101, column: 24, scope: !21)
!666 = !DILocation(line: 104, column: 7, scope: !21)
!667 = !DILocation(line: 105, column: 15, scope: !21)
!668 = !DILocation(line: 110, column: 21, scope: !21)
!669 = !DILocation(line: 110, column: 3, scope: !21)
!670 = !DILocation(line: 111, column: 3, scope: !21)
!671 = !DILocation(line: 112, column: 3, scope: !21)
!672 = !DILocation(line: 113, column: 3, scope: !21)
!673 = !DILocalVariable(name: "status", arg: 1, scope: !674, file: !6, line: 99, type: !24)
!674 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !621, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !675)
!675 = !{!673}
!676 = !DILocation(line: 99, column: 30, scope: !674, inlinedAt: !677)
!677 = distinct !DILocation(line: 115, column: 3, scope: !21)
!678 = !DILocation(line: 102, column: 18, scope: !679, inlinedAt: !677)
!679 = distinct !DILexicalBlock(scope: !674, file: !6, line: 101, column: 7)
!680 = !{!681, !681, i64 0}
!681 = !{!"int", !634, i64 0}
!682 = !DILocation(line: 116, column: 3, scope: !21)
!683 = !DILocation(line: 107, column: 7, scope: !21)
!684 = !DILocation(line: 118, column: 17, scope: !41)
!685 = !DILocation(line: 118, column: 3, scope: !42)
!686 = !DILocation(line: 120, column: 23, scope: !40)
!687 = !DILocation(line: 120, column: 19, scope: !40)
!688 = !DILocation(line: 122, column: 11, scope: !45)
!689 = !{!634, !634, i64 0}
!690 = !DILocation(line: 122, column: 16, scope: !45)
!691 = !DILocation(line: 122, column: 23, scope: !45)
!692 = !DILocation(line: 122, column: 26, scope: !45)
!693 = !DILocation(line: 122, column: 11, scope: !40)
!694 = !DILocation(line: 125, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !45, file: !3, line: 123, column: 9)
!696 = !DILocation(line: 126, column: 9, scope: !695)
!697 = !DILocation(line: 130, column: 37, scope: !44)
!698 = !DILocation(line: 130, column: 32, scope: !44)
!699 = !DILocation(line: 130, column: 15, scope: !44)
!700 = !DILocation(line: 131, column: 35, scope: !44)
!701 = !DILocation(line: 131, column: 18, scope: !44)
!702 = !DILocation(line: 134, column: 26, scope: !44)
!703 = !DILocation(line: 134, column: 24, scope: !44)
!704 = !DILocation(line: 137, column: 18, scope: !44)
!705 = !DILocation(line: 139, column: 15, scope: !44)
!706 = !DILocation(line: 129, column: 15, scope: !44)
!707 = !DILocation(line: 140, column: 16, scope: !44)
!708 = !DILocation(line: 140, column: 13, scope: !44)
!709 = !DILocation(line: 142, column: 11, scope: !44)
!710 = !DILocation(line: 145, column: 34, scope: !711)
!711 = distinct !DILexicalBlock(scope: !44, file: !3, line: 143, column: 13)
!712 = !DILocation(line: 151, column: 13, scope: !711)
!713 = !DILocation(line: 153, column: 13, scope: !711)
!714 = !DILocation(line: 156, column: 15, scope: !711)
!715 = distinct !{!715, !685, !716}
!716 = !DILocation(line: 163, column: 5, scope: !42)
!717 = !DILocation(line: 165, column: 7, scope: !50)
!718 = !DILocation(line: 165, column: 7, scope: !21)
!719 = !DILocation(line: 171, column: 7, scope: !49)
!720 = !DILocation(line: 171, column: 16, scope: !49)
!721 = !DILocation(line: 172, column: 30, scope: !722)
!722 = distinct !DILexicalBlock(scope: !49, file: !3, line: 172, column: 11)
!723 = !DILocation(line: 172, column: 28, scope: !722)
!724 = !DILocation(line: 172, column: 11, scope: !49)
!725 = !DILocation(line: 173, column: 9, scope: !722)
!726 = !DILocation(line: 175, column: 20, scope: !49)
!727 = !{!728, !728, i64 0}
!728 = !{!"long", !634, i64 0}
!729 = !DILocation(line: 176, column: 5, scope: !50)
!730 = !DILocation(line: 176, column: 5, scope: !49)
!731 = !DILocation(line: 178, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !21, file: !3, line: 178, column: 7)
!733 = !DILocation(line: 178, column: 7, scope: !21)
!734 = !DILocation(line: 180, column: 11, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !3, line: 179, column: 5)
!736 = !DILocation(line: 182, column: 24, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 181, column: 9)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 180, column: 11)
!739 = !DILocation(line: 182, column: 11, scope: !737)
!740 = !DILocation(line: 183, column: 11, scope: !737)
!741 = !DILocation(line: 186, column: 7, scope: !735)
!742 = !DILocation(line: 186, column: 13, scope: !735)
!743 = !DILocation(line: 187, column: 26, scope: !735)
!744 = !DILocation(line: 103, column: 7, scope: !21)
!745 = !DILocation(line: 188, column: 28, scope: !746)
!746 = distinct !DILexicalBlock(scope: !735, file: !3, line: 188, column: 11)
!747 = !DILocation(line: 188, column: 34, scope: !746)
!748 = !DILocation(line: 188, column: 37, scope: !746)
!749 = !DILocation(line: 188, column: 43, scope: !746)
!750 = !DILocation(line: 188, column: 11, scope: !735)
!751 = !DILocation(line: 189, column: 9, scope: !746)
!752 = !DILocation(line: 190, column: 7, scope: !735)
!753 = !DILocation(line: 191, column: 7, scope: !735)
!754 = !DILocation(line: 194, column: 3, scope: !21)
!755 = !DILocation(line: 194, column: 9, scope: !21)
!756 = !DILocation(line: 198, column: 22, scope: !21)
!757 = !DILocation(line: 199, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !21, file: !3, line: 199, column: 7)
!759 = !DILocation(line: 199, column: 30, scope: !758)
!760 = !DILocation(line: 199, column: 33, scope: !758)
!761 = !DILocation(line: 199, column: 39, scope: !758)
!762 = !DILocation(line: 199, column: 7, scope: !21)
!763 = !DILocation(line: 200, column: 5, scope: !758)
!764 = !DILocation(line: 201, column: 56, scope: !21)
!765 = !DILocation(line: 201, column: 9, scope: !21)
!766 = !DILocation(line: 201, column: 70, scope: !21)
!767 = !DILocation(line: 203, column: 7, scope: !21)
!768 = !DILocation(line: 205, column: 34, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 204, column: 5)
!770 = distinct !DILexicalBlock(scope: !21, file: !3, line: 203, column: 7)
!771 = !DILocalVariable(name: "err", arg: 1, scope: !772, file: !3, line: 95, type: !24)
!772 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 95, type: !773, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!37, !24}
!775 = !{!771}
!776 = !DILocation(line: 95, column: 25, scope: !772, inlinedAt: !777)
!777 = distinct !DILocation(line: 205, column: 14, scope: !769)
!778 = !DILocation(line: 97, column: 14, scope: !772, inlinedAt: !777)
!779 = !DILocation(line: 97, column: 31, scope: !772, inlinedAt: !777)
!780 = !DILocation(line: 97, column: 24, scope: !772, inlinedAt: !777)
!781 = !DILocation(line: 205, column: 14, scope: !769)
!782 = !DILocation(line: 206, column: 38, scope: !769)
!783 = !DILocation(line: 205, column: 7, scope: !769)
!784 = !DILocation(line: 212, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !769, file: !3, line: 212, column: 11)
!786 = !DILocalVariable(name: "__stream", arg: 1, scope: !787, file: !788, line: 132, type: !791)
!787 = distinct !DISubprogram(name: "ferror_unlocked", scope: !788, file: !788, line: 132, type: !789, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !845)
!788 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!789 = !DISubroutineType(types: !790)
!790 = !{!24, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !794)
!793 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !796)
!795 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !817, !818, !819, !820, !823, !824, !826, !830, !833, !835, !836, !837, !838, !839, !840, !841}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !794, file: !795, line: 242, baseType: !24, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !794, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !794, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !794, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !794, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !794, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !794, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !794, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !794, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !794, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !794, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !794, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !794, file: !795, line: 260, baseType: !810, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !812)
!812 = !{!813, !814, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !811, file: !795, line: 157, baseType: !810, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !811, file: !795, line: 158, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !811, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !794, file: !795, line: 262, baseType: !815, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !794, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !794, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !794, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !822, line: 140, baseType: !51)
!822 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !794, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !794, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!825 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !794, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 1)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !794, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !795, line: 150, baseType: null)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !794, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !822, line: 141, baseType: !51)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !794, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !794, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !794, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !794, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !794, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !794, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !794, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 20)
!845 = !{!786}
!846 = !DILocation(line: 132, column: 1, scope: !787, inlinedAt: !847)
!847 = distinct !DILocation(line: 212, column: 11, scope: !785)
!848 = !DILocation(line: 134, column: 10, scope: !787, inlinedAt: !847)
!849 = !{!850, !681, i64 0}
!850 = !{!"_IO_FILE", !681, i64 0, !633, i64 8, !633, i64 16, !633, i64 24, !633, i64 32, !633, i64 40, !633, i64 48, !633, i64 56, !633, i64 64, !633, i64 72, !633, i64 80, !633, i64 88, !633, i64 96, !633, i64 104, !681, i64 112, !681, i64 116, !728, i64 120, !851, i64 128, !634, i64 130, !634, i64 131, !633, i64 136, !728, i64 144, !633, i64 152, !633, i64 160, !633, i64 168, !633, i64 176, !728, i64 184, !681, i64 192, !634, i64 196}
!851 = !{!"short", !634, i64 0}
!852 = !DILocation(line: 212, column: 11, scope: !769)
!853 = !DILocation(line: 216, column: 11, scope: !21)
!854 = !DILocation(line: 216, column: 3, scope: !21)
!855 = !DILocation(line: 218, column: 21, scope: !21)
!856 = !DILocation(line: 218, column: 27, scope: !21)
!857 = !DILocation(line: 218, column: 7, scope: !21)
!858 = !DILocation(line: 219, column: 33, scope: !21)
!859 = !DILocation(line: 219, column: 26, scope: !21)
!860 = !DILocation(line: 219, column: 3, scope: !21)
!861 = !DILocation(line: 221, column: 1, scope: !21)
!862 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !110, file: !110, line: 41, type: !69, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !105, variables: !863)
!863 = !{!864}
!864 = !DILocalVariable(name: "file", arg: 1, scope: !862, file: !110, line: 41, type: !34)
!865 = !DILocation(line: 41, column: 41, scope: !862)
!866 = !DILocation(line: 43, column: 13, scope: !862)
!867 = !DILocation(line: 44, column: 1, scope: !862)
!868 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !110, file: !110, line: 78, type: !869, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !105, variables: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !37}
!871 = !{!872}
!872 = !DILocalVariable(name: "ignore", arg: 1, scope: !868, file: !110, line: 78, type: !37)
!873 = !DILocation(line: 78, column: 37, scope: !868)
!874 = !DILocation(line: 80, column: 16, scope: !868)
!875 = !{!876, !876, i64 0}
!876 = !{!"_Bool", !634, i64 0}
!877 = !DILocation(line: 81, column: 1, scope: !868)
!878 = distinct !DISubprogram(name: "close_stdout", scope: !110, file: !110, line: 107, type: !641, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !105, variables: !879)
!879 = !{!880}
!880 = !DILocalVariable(name: "write_error", scope: !881, file: !110, line: 112, type: !34)
!881 = distinct !DILexicalBlock(scope: !882, file: !110, line: 111, column: 5)
!882 = distinct !DILexicalBlock(scope: !878, file: !110, line: 109, column: 7)
!883 = !DILocation(line: 109, column: 21, scope: !882)
!884 = !DILocation(line: 109, column: 7, scope: !882)
!885 = !DILocation(line: 109, column: 29, scope: !882)
!886 = !DILocation(line: 110, column: 7, scope: !882)
!887 = !DILocation(line: 110, column: 12, scope: !882)
!888 = !{i8 0, i8 2}
!889 = !DILocation(line: 114, column: 19, scope: !890)
!890 = distinct !DILexicalBlock(scope: !881, file: !110, line: 113, column: 11)
!891 = !DILocation(line: 110, column: 25, scope: !882)
!892 = !DILocation(line: 110, column: 28, scope: !882)
!893 = !DILocation(line: 110, column: 34, scope: !882)
!894 = !DILocation(line: 109, column: 7, scope: !878)
!895 = !DILocation(line: 112, column: 33, scope: !881)
!896 = !DILocation(line: 112, column: 19, scope: !881)
!897 = !DILocation(line: 113, column: 11, scope: !890)
!898 = !DILocation(line: 113, column: 11, scope: !881)
!899 = !DILocation(line: 114, column: 36, scope: !890)
!900 = !DILocation(line: 114, column: 9, scope: !890)
!901 = !DILocation(line: 117, column: 9, scope: !890)
!902 = !DILocation(line: 119, column: 14, scope: !881)
!903 = !DILocation(line: 119, column: 7, scope: !881)
!904 = !DILocation(line: 122, column: 22, scope: !905)
!905 = distinct !DILexicalBlock(scope: !878, file: !110, line: 122, column: 8)
!906 = !DILocation(line: 122, column: 8, scope: !905)
!907 = !DILocation(line: 122, column: 30, scope: !905)
!908 = !DILocation(line: 122, column: 8, scope: !878)
!909 = !DILocation(line: 123, column: 13, scope: !905)
!910 = !DILocation(line: 123, column: 6, scope: !905)
!911 = !DILocation(line: 124, column: 1, scope: !878)
!912 = distinct !DISubprogram(name: "set_program_name", scope: !124, file: !124, line: 39, type: !69, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !120, variables: !913)
!913 = !{!914, !915, !916}
!914 = !DILocalVariable(name: "argv0", arg: 1, scope: !912, file: !124, line: 39, type: !34)
!915 = !DILocalVariable(name: "slash", scope: !912, file: !124, line: 46, type: !34)
!916 = !DILocalVariable(name: "base", scope: !912, file: !124, line: 47, type: !34)
!917 = !DILocation(line: 39, column: 31, scope: !912)
!918 = !DILocation(line: 51, column: 13, scope: !919)
!919 = distinct !DILexicalBlock(scope: !912, file: !124, line: 51, column: 7)
!920 = !DILocation(line: 51, column: 7, scope: !912)
!921 = !DILocation(line: 55, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !124, line: 52, column: 5)
!923 = !DILocation(line: 54, column: 7, scope: !922)
!924 = !DILocation(line: 56, column: 7, scope: !922)
!925 = !DILocation(line: 59, column: 11, scope: !912)
!926 = !DILocation(line: 46, column: 15, scope: !912)
!927 = !DILocation(line: 60, column: 17, scope: !912)
!928 = !DILocation(line: 60, column: 33, scope: !912)
!929 = !DILocation(line: 60, column: 11, scope: !912)
!930 = !DILocation(line: 47, column: 15, scope: !912)
!931 = !DILocation(line: 61, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !912, file: !124, line: 61, column: 7)
!933 = !DILocation(line: 61, column: 20, scope: !932)
!934 = !DILocation(line: 61, column: 25, scope: !932)
!935 = !DILocation(line: 61, column: 42, scope: !932)
!936 = !DILocation(line: 61, column: 28, scope: !932)
!937 = !DILocation(line: 61, column: 61, scope: !932)
!938 = !DILocation(line: 61, column: 7, scope: !912)
!939 = !DILocation(line: 64, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !124, line: 64, column: 11)
!941 = distinct !DILexicalBlock(scope: !932, file: !124, line: 62, column: 5)
!942 = !DILocation(line: 64, column: 36, scope: !940)
!943 = !DILocation(line: 64, column: 11, scope: !941)
!944 = !DILocation(line: 66, column: 24, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !124, line: 65, column: 9)
!946 = !DILocation(line: 70, column: 41, scope: !945)
!947 = !DILocation(line: 72, column: 9, scope: !945)
!948 = !DILocation(line: 84, column: 16, scope: !912)
!949 = !DILocation(line: 90, column: 27, scope: !912)
!950 = !DILocation(line: 92, column: 1, scope: !912)
!951 = distinct !DISubprogram(name: "clone_quoting_options", scope: !172, file: !172, line: 114, type: !952, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !955)
!952 = !DISubroutineType(types: !953)
!953 = !{!954, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "o", arg: 1, scope: !951, file: !172, line: 114, type: !954)
!957 = !DILocalVariable(name: "e", scope: !951, file: !172, line: 116, type: !24)
!958 = !DILocalVariable(name: "p", scope: !951, file: !172, line: 117, type: !954)
!959 = !DILocation(line: 114, column: 48, scope: !951)
!960 = !DILocation(line: 116, column: 11, scope: !951)
!961 = !DILocation(line: 116, column: 7, scope: !951)
!962 = !DILocation(line: 117, column: 40, scope: !951)
!963 = !DILocation(line: 117, column: 31, scope: !951)
!964 = !DILocation(line: 117, column: 27, scope: !951)
!965 = !DILocation(line: 119, column: 9, scope: !951)
!966 = !DILocation(line: 120, column: 3, scope: !951)
!967 = distinct !DISubprogram(name: "get_quoting_style", scope: !172, file: !172, line: 125, type: !968, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !972)
!968 = !DISubroutineType(types: !969)
!969 = !{!130, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!972 = !{!973}
!973 = !DILocalVariable(name: "o", arg: 1, scope: !967, file: !172, line: 125, type: !970)
!974 = !DILocation(line: 125, column: 50, scope: !967)
!975 = !DILocation(line: 127, column: 11, scope: !967)
!976 = !DILocation(line: 127, column: 46, scope: !967)
!977 = !{!978, !634, i64 0}
!978 = !{!"quoting_options", !634, i64 0, !681, i64 4, !634, i64 8, !633, i64 40, !633, i64 48}
!979 = !DILocation(line: 127, column: 3, scope: !967)
!980 = distinct !DISubprogram(name: "set_quoting_style", scope: !172, file: !172, line: 133, type: !981, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !954, !130}
!983 = !{!984, !985}
!984 = !DILocalVariable(name: "o", arg: 1, scope: !980, file: !172, line: 133, type: !954)
!985 = !DILocalVariable(name: "s", arg: 2, scope: !980, file: !172, line: 133, type: !130)
!986 = !DILocation(line: 133, column: 44, scope: !980)
!987 = !DILocation(line: 133, column: 66, scope: !980)
!988 = !DILocation(line: 135, column: 4, scope: !980)
!989 = !DILocation(line: 135, column: 39, scope: !980)
!990 = !DILocation(line: 135, column: 45, scope: !980)
!991 = !DILocation(line: 136, column: 1, scope: !980)
!992 = distinct !DISubprogram(name: "set_char_quoting", scope: !172, file: !172, line: 144, type: !993, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!24, !954, !27, !24}
!995 = !{!996, !997, !998, !999, !1000, !1002, !1003}
!996 = !DILocalVariable(name: "o", arg: 1, scope: !992, file: !172, line: 144, type: !954)
!997 = !DILocalVariable(name: "c", arg: 2, scope: !992, file: !172, line: 144, type: !27)
!998 = !DILocalVariable(name: "i", arg: 3, scope: !992, file: !172, line: 144, type: !24)
!999 = !DILocalVariable(name: "uc", scope: !992, file: !172, line: 146, type: !565)
!1000 = !DILocalVariable(name: "p", scope: !992, file: !172, line: 147, type: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1002 = !DILocalVariable(name: "shift", scope: !992, file: !172, line: 149, type: !24)
!1003 = !DILocalVariable(name: "r", scope: !992, file: !172, line: 150, type: !24)
!1004 = !DILocation(line: 144, column: 43, scope: !992)
!1005 = !DILocation(line: 144, column: 51, scope: !992)
!1006 = !DILocation(line: 144, column: 58, scope: !992)
!1007 = !DILocation(line: 146, column: 17, scope: !992)
!1008 = !DILocation(line: 148, column: 6, scope: !992)
!1009 = !DILocation(line: 148, column: 62, scope: !992)
!1010 = !DILocation(line: 148, column: 57, scope: !992)
!1011 = !DILocation(line: 147, column: 17, scope: !992)
!1012 = !DILocation(line: 149, column: 18, scope: !992)
!1013 = !DILocation(line: 149, column: 15, scope: !992)
!1014 = !DILocation(line: 149, column: 7, scope: !992)
!1015 = !DILocation(line: 150, column: 12, scope: !992)
!1016 = !DILocation(line: 150, column: 15, scope: !992)
!1017 = !DILocation(line: 150, column: 25, scope: !992)
!1018 = !DILocation(line: 150, column: 7, scope: !992)
!1019 = !DILocation(line: 151, column: 13, scope: !992)
!1020 = !DILocation(line: 151, column: 18, scope: !992)
!1021 = !DILocation(line: 151, column: 23, scope: !992)
!1022 = !DILocation(line: 151, column: 6, scope: !992)
!1023 = !DILocation(line: 152, column: 3, scope: !992)
!1024 = distinct !DISubprogram(name: "set_quoting_flags", scope: !172, file: !172, line: 160, type: !1025, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!24, !954, !24}
!1027 = !{!1028, !1029, !1030}
!1028 = !DILocalVariable(name: "o", arg: 1, scope: !1024, file: !172, line: 160, type: !954)
!1029 = !DILocalVariable(name: "i", arg: 2, scope: !1024, file: !172, line: 160, type: !24)
!1030 = !DILocalVariable(name: "r", scope: !1024, file: !172, line: 162, type: !24)
!1031 = !DILocation(line: 160, column: 44, scope: !1024)
!1032 = !DILocation(line: 160, column: 51, scope: !1024)
!1033 = !DILocation(line: 163, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1024, file: !172, line: 163, column: 7)
!1035 = !DILocation(line: 163, column: 7, scope: !1024)
!1036 = !DILocation(line: 165, column: 10, scope: !1024)
!1037 = !{!978, !681, i64 4}
!1038 = !DILocation(line: 162, column: 7, scope: !1024)
!1039 = !DILocation(line: 166, column: 12, scope: !1024)
!1040 = !DILocation(line: 167, column: 3, scope: !1024)
!1041 = distinct !DISubprogram(name: "set_custom_quoting", scope: !172, file: !172, line: 171, type: !1042, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !954, !34, !34}
!1044 = !{!1045, !1046, !1047}
!1045 = !DILocalVariable(name: "o", arg: 1, scope: !1041, file: !172, line: 171, type: !954)
!1046 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1041, file: !172, line: 172, type: !34)
!1047 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1041, file: !172, line: 172, type: !34)
!1048 = !DILocation(line: 171, column: 45, scope: !1041)
!1049 = !DILocation(line: 172, column: 33, scope: !1041)
!1050 = !DILocation(line: 172, column: 57, scope: !1041)
!1051 = !DILocation(line: 174, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !172, line: 174, column: 7)
!1053 = !DILocation(line: 174, column: 7, scope: !1041)
!1054 = !DILocation(line: 176, column: 6, scope: !1041)
!1055 = !DILocation(line: 176, column: 12, scope: !1041)
!1056 = !DILocation(line: 177, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1041, file: !172, line: 177, column: 7)
!1058 = !DILocation(line: 177, column: 23, scope: !1057)
!1059 = !DILocation(line: 177, column: 19, scope: !1057)
!1060 = !DILocation(line: 178, column: 5, scope: !1057)
!1061 = !DILocation(line: 179, column: 6, scope: !1041)
!1062 = !DILocation(line: 179, column: 17, scope: !1041)
!1063 = !{!978, !633, i64 40}
!1064 = !DILocation(line: 180, column: 6, scope: !1041)
!1065 = !DILocation(line: 180, column: 18, scope: !1041)
!1066 = !{!978, !633, i64 48}
!1067 = !DILocation(line: 181, column: 1, scope: !1041)
!1068 = distinct !DISubprogram(name: "quotearg_buffer", scope: !172, file: !172, line: 776, type: !1069, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!166, !26, !166, !34, !166, !970}
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1072 = !DILocalVariable(name: "buffer", arg: 1, scope: !1068, file: !172, line: 776, type: !26)
!1073 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1068, file: !172, line: 776, type: !166)
!1074 = !DILocalVariable(name: "arg", arg: 3, scope: !1068, file: !172, line: 777, type: !34)
!1075 = !DILocalVariable(name: "argsize", arg: 4, scope: !1068, file: !172, line: 777, type: !166)
!1076 = !DILocalVariable(name: "o", arg: 5, scope: !1068, file: !172, line: 778, type: !970)
!1077 = !DILocalVariable(name: "p", scope: !1068, file: !172, line: 780, type: !970)
!1078 = !DILocalVariable(name: "e", scope: !1068, file: !172, line: 781, type: !24)
!1079 = !DILocalVariable(name: "r", scope: !1068, file: !172, line: 782, type: !166)
!1080 = !DILocation(line: 776, column: 24, scope: !1068)
!1081 = !DILocation(line: 776, column: 39, scope: !1068)
!1082 = !DILocation(line: 777, column: 30, scope: !1068)
!1083 = !DILocation(line: 777, column: 42, scope: !1068)
!1084 = !DILocation(line: 778, column: 48, scope: !1068)
!1085 = !DILocation(line: 780, column: 37, scope: !1068)
!1086 = !DILocation(line: 780, column: 33, scope: !1068)
!1087 = !DILocation(line: 781, column: 11, scope: !1068)
!1088 = !DILocation(line: 781, column: 7, scope: !1068)
!1089 = !DILocation(line: 783, column: 43, scope: !1068)
!1090 = !DILocation(line: 783, column: 53, scope: !1068)
!1091 = !DILocation(line: 783, column: 60, scope: !1068)
!1092 = !DILocation(line: 784, column: 43, scope: !1068)
!1093 = !DILocation(line: 784, column: 58, scope: !1068)
!1094 = !DILocation(line: 782, column: 14, scope: !1068)
!1095 = !DILocation(line: 782, column: 10, scope: !1068)
!1096 = !DILocation(line: 785, column: 9, scope: !1068)
!1097 = !DILocation(line: 786, column: 3, scope: !1068)
!1098 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !172, file: !172, line: 248, type: !1099, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1103)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!166, !26, !166, !34, !166, !130, !24, !1101, !34, !34}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1128, !1129, !1130, !1131, !1132, !1135, !1136, !1152, !1155, !1156, !1163}
!1104 = !DILocalVariable(name: "buffer", arg: 1, scope: !1098, file: !172, line: 248, type: !26)
!1105 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1098, file: !172, line: 248, type: !166)
!1106 = !DILocalVariable(name: "arg", arg: 3, scope: !1098, file: !172, line: 249, type: !34)
!1107 = !DILocalVariable(name: "argsize", arg: 4, scope: !1098, file: !172, line: 249, type: !166)
!1108 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1098, file: !172, line: 250, type: !130)
!1109 = !DILocalVariable(name: "flags", arg: 6, scope: !1098, file: !172, line: 250, type: !24)
!1110 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1098, file: !172, line: 251, type: !1101)
!1111 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1098, file: !172, line: 252, type: !34)
!1112 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1098, file: !172, line: 253, type: !34)
!1113 = !DILocalVariable(name: "i", scope: !1098, file: !172, line: 255, type: !166)
!1114 = !DILocalVariable(name: "len", scope: !1098, file: !172, line: 256, type: !166)
!1115 = !DILocalVariable(name: "orig_buffersize", scope: !1098, file: !172, line: 257, type: !166)
!1116 = !DILocalVariable(name: "quote_string", scope: !1098, file: !172, line: 258, type: !34)
!1117 = !DILocalVariable(name: "quote_string_len", scope: !1098, file: !172, line: 259, type: !166)
!1118 = !DILocalVariable(name: "backslash_escapes", scope: !1098, file: !172, line: 260, type: !37)
!1119 = !DILocalVariable(name: "unibyte_locale", scope: !1098, file: !172, line: 261, type: !37)
!1120 = !DILocalVariable(name: "elide_outer_quotes", scope: !1098, file: !172, line: 262, type: !37)
!1121 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1098, file: !172, line: 263, type: !37)
!1122 = !DILocalVariable(name: "encountered_single_quote", scope: !1098, file: !172, line: 264, type: !37)
!1123 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1098, file: !172, line: 265, type: !37)
!1124 = !DILocalVariable(name: "c", scope: !1125, file: !172, line: 394, type: !565)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !172, line: 393, column: 5)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !172, line: 392, column: 3)
!1127 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 392, column: 3)
!1128 = !DILocalVariable(name: "esc", scope: !1125, file: !172, line: 395, type: !565)
!1129 = !DILocalVariable(name: "is_right_quote", scope: !1125, file: !172, line: 396, type: !37)
!1130 = !DILocalVariable(name: "escaping", scope: !1125, file: !172, line: 397, type: !37)
!1131 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1125, file: !172, line: 398, type: !37)
!1132 = !DILocalVariable(name: "m", scope: !1133, file: !172, line: 602, type: !166)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 600, column: 11)
!1134 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 418, column: 9)
!1135 = !DILocalVariable(name: "printable", scope: !1133, file: !172, line: 604, type: !37)
!1136 = !DILocalVariable(name: "mbstate", scope: !1137, file: !172, line: 613, type: !1139)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !172, line: 612, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !172, line: 606, column: 17)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1140, line: 6, baseType: !1141)
!1140 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1142, line: 21, baseType: !1143)
!1142 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 13, size: 64, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1143, file: !1142, line: 15, baseType: !24, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1143, file: !1142, line: 20, baseType: !1147, size: 32, offset: 32)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !1142, line: 16, size: 32, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1147, file: !1142, line: 18, baseType: !63, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1147, file: !1142, line: 19, baseType: !1151, size: 32)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !95)
!1152 = !DILocalVariable(name: "w", scope: !1153, file: !172, line: 623, type: !1154)
!1153 = distinct !DILexicalBlock(scope: !1137, file: !172, line: 622, column: 19)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !167, line: 90, baseType: !24)
!1155 = !DILocalVariable(name: "bytes", scope: !1153, file: !172, line: 624, type: !166)
!1156 = !DILocalVariable(name: "j", scope: !1157, file: !172, line: 649, type: !166)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !172, line: 648, column: 27)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !172, line: 646, column: 29)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !172, line: 641, column: 23)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !172, line: 633, column: 30)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !172, line: 628, column: 30)
!1162 = distinct !DILexicalBlock(scope: !1153, file: !172, line: 626, column: 25)
!1163 = !DILocalVariable(name: "ilim", scope: !1164, file: !172, line: 676, type: !166)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !172, line: 673, column: 15)
!1165 = distinct !DILexicalBlock(scope: !1133, file: !172, line: 672, column: 17)
!1166 = !DILocation(line: 248, column: 33, scope: !1098)
!1167 = !DILocation(line: 248, column: 48, scope: !1098)
!1168 = !DILocation(line: 249, column: 39, scope: !1098)
!1169 = !DILocation(line: 249, column: 51, scope: !1098)
!1170 = !DILocation(line: 250, column: 46, scope: !1098)
!1171 = !DILocation(line: 250, column: 65, scope: !1098)
!1172 = !DILocation(line: 251, column: 47, scope: !1098)
!1173 = !DILocation(line: 252, column: 39, scope: !1098)
!1174 = !DILocation(line: 253, column: 39, scope: !1098)
!1175 = !DILocation(line: 256, column: 10, scope: !1098)
!1176 = !DILocation(line: 257, column: 10, scope: !1098)
!1177 = !DILocation(line: 258, column: 15, scope: !1098)
!1178 = !DILocation(line: 259, column: 10, scope: !1098)
!1179 = !DILocation(line: 260, column: 8, scope: !1098)
!1180 = !DILocation(line: 261, column: 25, scope: !1098)
!1181 = !DILocation(line: 261, column: 36, scope: !1098)
!1182 = !DILocation(line: 262, column: 8, scope: !1098)
!1183 = !DILocation(line: 263, column: 8, scope: !1098)
!1184 = !DILocation(line: 264, column: 8, scope: !1098)
!1185 = !DILocation(line: 265, column: 8, scope: !1098)
!1186 = !DILocation(line: 265, column: 3, scope: !1098)
!1187 = !DILocation(line: 308, column: 3, scope: !1098)
!1188 = !DILocation(line: 315, column: 11, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 309, column: 5)
!1190 = !DILocation(line: 315, column: 12, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !172, line: 315, column: 11)
!1192 = !DILocation(line: 316, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !172, line: 316, column: 9)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !172, line: 316, column: 9)
!1195 = !DILocation(line: 316, column: 9, scope: !1194)
!1196 = !DILocation(line: 354, column: 26, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !172, line: 332, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !172, line: 331, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1189, file: !172, line: 330, column: 7)
!1200 = !DILocation(line: 355, column: 27, scope: !1197)
!1201 = !DILocation(line: 356, column: 11, scope: !1197)
!1202 = !DILocation(line: 357, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !172, line: 357, column: 13)
!1204 = !DILocation(line: 357, column: 13, scope: !1199)
!1205 = !DILocation(line: 358, column: 43, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !172, line: 358, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !172, line: 358, column: 11)
!1208 = !DILocation(line: 358, column: 11, scope: !1207)
!1209 = !DILocation(line: 359, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !172, line: 359, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !172, line: 359, column: 13)
!1212 = !DILocation(line: 359, column: 13, scope: !1211)
!1213 = !DILocation(line: 358, column: 70, scope: !1206)
!1214 = distinct !{!1214, !1208, !1215}
!1215 = !DILocation(line: 359, column: 13, scope: !1207)
!1216 = !DILocation(line: 362, column: 28, scope: !1199)
!1217 = !DILocation(line: 364, column: 7, scope: !1189)
!1218 = !DILocation(line: 367, column: 7, scope: !1189)
!1219 = !DILocation(line: 370, column: 7, scope: !1189)
!1220 = !DILocation(line: 373, column: 12, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1189, file: !172, line: 373, column: 11)
!1222 = !DILocation(line: 373, column: 11, scope: !1189)
!1223 = !DILocation(line: 378, column: 12, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1189, file: !172, line: 378, column: 11)
!1225 = !DILocation(line: 378, column: 11, scope: !1189)
!1226 = !DILocation(line: 379, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !172, line: 379, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !172, line: 379, column: 9)
!1229 = !DILocation(line: 379, column: 9, scope: !1228)
!1230 = !DILocation(line: 386, column: 7, scope: !1189)
!1231 = !DILocation(line: 389, column: 7, scope: !1189)
!1232 = !DILocation(line: 255, column: 10, scope: !1098)
!1233 = !DILocation(line: 392, column: 8, scope: !1127)
!1234 = !DILocation(line: 392, column: 27, scope: !1126)
!1235 = !DILocation(line: 392, column: 19, scope: !1126)
!1236 = !DILocation(line: 392, column: 60, scope: !1126)
!1237 = !DILocation(line: 392, column: 3, scope: !1127)
!1238 = !DILocation(line: 392, column: 41, scope: !1126)
!1239 = !DILocation(line: 392, column: 48, scope: !1126)
!1240 = !DILocation(line: 396, column: 12, scope: !1125)
!1241 = !DILocation(line: 397, column: 12, scope: !1125)
!1242 = !DILocation(line: 398, column: 12, scope: !1125)
!1243 = !DILocation(line: 401, column: 11, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 400, column: 11)
!1245 = !DILocation(line: 403, column: 17, scope: !1244)
!1246 = !DILocation(line: 404, column: 39, scope: !1244)
!1247 = !DILocation(line: 408, column: 32, scope: !1244)
!1248 = !DILocation(line: 404, column: 19, scope: !1244)
!1249 = !DILocation(line: 404, column: 15, scope: !1244)
!1250 = !DILocation(line: 409, column: 11, scope: !1244)
!1251 = !DILocation(line: 409, column: 26, scope: !1244)
!1252 = !DILocation(line: 409, column: 14, scope: !1244)
!1253 = !DILocation(line: 409, column: 63, scope: !1244)
!1254 = !DILocation(line: 400, column: 11, scope: !1125)
!1255 = !DILocation(line: 416, column: 11, scope: !1125)
!1256 = !DILocation(line: 394, column: 21, scope: !1125)
!1257 = !DILocation(line: 417, column: 7, scope: !1125)
!1258 = !DILocation(line: 420, column: 15, scope: !1134)
!1259 = !DILocation(line: 422, column: 15, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !172, line: 422, column: 15)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !172, line: 421, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 420, column: 15)
!1263 = !DILocation(line: 422, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 422, column: 15)
!1265 = !DILocation(line: 422, column: 15, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !172, line: 422, column: 15)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !172, line: 422, column: 15)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !172, line: 422, column: 15)
!1269 = !DILocation(line: 422, column: 15, scope: !1267)
!1270 = !DILocation(line: 422, column: 15, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !172, line: 422, column: 15)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !172, line: 422, column: 15)
!1273 = !DILocation(line: 422, column: 15, scope: !1272)
!1274 = !DILocation(line: 422, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !172, line: 422, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !172, line: 422, column: 15)
!1277 = !DILocation(line: 422, column: 15, scope: !1276)
!1278 = !DILocation(line: 422, column: 15, scope: !1268)
!1279 = !DILocation(line: 422, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !172, line: 422, column: 15)
!1281 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 422, column: 15)
!1282 = !DILocation(line: 422, column: 15, scope: !1281)
!1283 = !DILocation(line: 430, column: 19, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1261, file: !172, line: 429, column: 19)
!1285 = !DILocation(line: 430, column: 24, scope: !1284)
!1286 = !DILocation(line: 430, column: 28, scope: !1284)
!1287 = !DILocation(line: 430, column: 38, scope: !1284)
!1288 = !DILocation(line: 430, column: 48, scope: !1284)
!1289 = !DILocation(line: 430, column: 59, scope: !1284)
!1290 = !DILocation(line: 432, column: 19, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !172, line: 432, column: 19)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !172, line: 432, column: 19)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !172, line: 431, column: 17)
!1294 = !DILocation(line: 432, column: 19, scope: !1292)
!1295 = !DILocation(line: 433, column: 19, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !172, line: 433, column: 19)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !172, line: 433, column: 19)
!1298 = !DILocation(line: 433, column: 19, scope: !1297)
!1299 = !DILocation(line: 434, column: 17, scope: !1293)
!1300 = !DILocation(line: 441, column: 20, scope: !1262)
!1301 = !DILocation(line: 446, column: 11, scope: !1134)
!1302 = !DILocation(line: 449, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 447, column: 13)
!1304 = !DILocation(line: 455, column: 19, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1303, file: !172, line: 454, column: 19)
!1306 = !DILocation(line: 455, column: 24, scope: !1305)
!1307 = !DILocation(line: 455, column: 28, scope: !1305)
!1308 = !DILocation(line: 455, column: 38, scope: !1305)
!1309 = !DILocation(line: 455, column: 47, scope: !1305)
!1310 = !DILocation(line: 455, column: 41, scope: !1305)
!1311 = !DILocation(line: 455, column: 52, scope: !1305)
!1312 = !DILocation(line: 454, column: 19, scope: !1303)
!1313 = !DILocation(line: 456, column: 25, scope: !1305)
!1314 = !DILocation(line: 456, column: 17, scope: !1305)
!1315 = !DILocation(line: 463, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1305, file: !172, line: 457, column: 19)
!1317 = !DILocation(line: 467, column: 21, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !172, line: 467, column: 21)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !172, line: 467, column: 21)
!1320 = !DILocation(line: 467, column: 21, scope: !1319)
!1321 = !DILocation(line: 468, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !172, line: 468, column: 21)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !172, line: 468, column: 21)
!1324 = !DILocation(line: 468, column: 21, scope: !1323)
!1325 = !DILocation(line: 469, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !172, line: 469, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !172, line: 469, column: 21)
!1328 = !DILocation(line: 469, column: 21, scope: !1327)
!1329 = !DILocation(line: 470, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !172, line: 470, column: 21)
!1331 = distinct !DILexicalBlock(scope: !1316, file: !172, line: 470, column: 21)
!1332 = !DILocation(line: 470, column: 21, scope: !1331)
!1333 = !DILocation(line: 471, column: 21, scope: !1316)
!1334 = !DILocation(line: 395, column: 21, scope: !1125)
!1335 = !DILocation(line: 484, column: 31, scope: !1134)
!1336 = !DILocation(line: 485, column: 31, scope: !1134)
!1337 = !DILocation(line: 487, column: 31, scope: !1134)
!1338 = !DILocation(line: 488, column: 31, scope: !1134)
!1339 = !DILocation(line: 489, column: 31, scope: !1134)
!1340 = !DILocation(line: 492, column: 15, scope: !1134)
!1341 = !DILocation(line: 494, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !172, line: 493, column: 13)
!1343 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 492, column: 15)
!1344 = !DILocation(line: 501, column: 33, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 501, column: 15)
!1346 = !DILocation(line: 506, column: 15, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 505, column: 15)
!1348 = !DILocation(line: 510, column: 15, scope: !1134)
!1349 = !DILocation(line: 518, column: 26, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 518, column: 15)
!1351 = !DILocation(line: 518, column: 15, scope: !1134)
!1352 = !DILocation(line: 518, column: 40, scope: !1350)
!1353 = !DILocation(line: 518, column: 47, scope: !1350)
!1354 = !DILocation(line: 522, column: 17, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 522, column: 15)
!1356 = !DILocation(line: 518, column: 18, scope: !1350)
!1357 = !DILocation(line: 518, column: 65, scope: !1350)
!1358 = !DILocation(line: 522, column: 15, scope: !1134)
!1359 = !DILocation(line: 526, column: 11, scope: !1134)
!1360 = !DILocation(line: 541, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 540, column: 15)
!1362 = !DILocation(line: 548, column: 15, scope: !1134)
!1363 = !DILocation(line: 550, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !172, line: 549, column: 13)
!1365 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 548, column: 15)
!1366 = !DILocation(line: 553, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 553, column: 19)
!1368 = !DILocation(line: 553, column: 35, scope: !1367)
!1369 = !DILocation(line: 553, column: 30, scope: !1367)
!1370 = !DILocation(line: 562, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !172, line: 562, column: 15)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 562, column: 15)
!1373 = !DILocation(line: 562, column: 15, scope: !1372)
!1374 = !DILocation(line: 563, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !172, line: 563, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 563, column: 15)
!1377 = !DILocation(line: 563, column: 15, scope: !1376)
!1378 = !DILocation(line: 564, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !172, line: 564, column: 15)
!1380 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 564, column: 15)
!1381 = !DILocation(line: 564, column: 15, scope: !1380)
!1382 = !DILocation(line: 566, column: 13, scope: !1364)
!1383 = !DILocation(line: 606, column: 17, scope: !1133)
!1384 = !DILocation(line: 602, column: 20, scope: !1133)
!1385 = !DILocation(line: 609, column: 29, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1138, file: !172, line: 607, column: 15)
!1387 = !{!851, !851, i64 0}
!1388 = !DILocation(line: 609, column: 27, scope: !1386)
!1389 = !DILocation(line: 604, column: 18, scope: !1133)
!1390 = !DILocation(line: 610, column: 15, scope: !1386)
!1391 = !DILocation(line: 613, column: 17, scope: !1137)
!1392 = !DILocation(line: 614, column: 17, scope: !1137)
!1393 = !DILocation(line: 618, column: 29, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1137, file: !172, line: 618, column: 21)
!1395 = !DILocation(line: 618, column: 21, scope: !1137)
!1396 = !DILocation(line: 619, column: 29, scope: !1394)
!1397 = !DILocation(line: 619, column: 19, scope: !1394)
!1398 = !DILocation(line: 621, column: 17, scope: !1137)
!1399 = distinct !{!1399, !1398, !1400}
!1400 = !DILocation(line: 667, column: 44, scope: !1137)
!1401 = !DILocation(line: 623, column: 21, scope: !1153)
!1402 = !DILocation(line: 624, column: 56, scope: !1153)
!1403 = !DILocation(line: 624, column: 50, scope: !1153)
!1404 = !DILocation(line: 625, column: 53, scope: !1153)
!1405 = !DILocation(line: 613, column: 27, scope: !1137)
!1406 = !DILocation(line: 623, column: 29, scope: !1153)
!1407 = !DILocation(line: 624, column: 36, scope: !1153)
!1408 = !DILocation(line: 624, column: 28, scope: !1153)
!1409 = !DILocation(line: 626, column: 25, scope: !1153)
!1410 = !DILocation(line: 636, column: 38, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1160, file: !172, line: 634, column: 23)
!1412 = !DILocation(line: 636, column: 48, scope: !1411)
!1413 = !DILocation(line: 636, column: 51, scope: !1411)
!1414 = !DILocation(line: 636, column: 25, scope: !1411)
!1415 = !DILocation(line: 637, column: 28, scope: !1411)
!1416 = !DILocation(line: 636, column: 34, scope: !1411)
!1417 = distinct !{!1417, !1414, !1415}
!1418 = !DILocation(line: 650, column: 43, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !172, line: 650, column: 29)
!1420 = distinct !DILexicalBlock(scope: !1157, file: !172, line: 650, column: 29)
!1421 = !DILocation(line: 647, column: 29, scope: !1158)
!1422 = !DILocation(line: 649, column: 36, scope: !1157)
!1423 = !DILocation(line: 651, column: 49, scope: !1419)
!1424 = !DILocation(line: 651, column: 39, scope: !1419)
!1425 = !DILocation(line: 651, column: 31, scope: !1419)
!1426 = !DILocation(line: 650, column: 53, scope: !1419)
!1427 = !DILocation(line: 650, column: 29, scope: !1420)
!1428 = distinct !{!1428, !1427, !1429}
!1429 = !DILocation(line: 659, column: 33, scope: !1420)
!1430 = !DILocation(line: 666, column: 19, scope: !1137)
!1431 = !DILocation(line: 662, column: 41, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1159, file: !172, line: 662, column: 29)
!1433 = !DILocation(line: 662, column: 31, scope: !1432)
!1434 = !DILocation(line: 662, column: 29, scope: !1159)
!1435 = !DILocation(line: 664, column: 27, scope: !1159)
!1436 = !DILocation(line: 667, column: 26, scope: !1137)
!1437 = !DILocation(line: 667, column: 24, scope: !1137)
!1438 = !DILocation(line: 666, column: 19, scope: !1153)
!1439 = !DILocation(line: 668, column: 15, scope: !1138)
!1440 = !DILocation(line: 670, column: 40, scope: !1133)
!1441 = !DILocation(line: 672, column: 19, scope: !1165)
!1442 = !DILocation(line: 672, column: 45, scope: !1165)
!1443 = !DILocation(line: 672, column: 23, scope: !1165)
!1444 = !DILocation(line: 676, column: 33, scope: !1164)
!1445 = !DILocation(line: 676, column: 24, scope: !1164)
!1446 = !DILocation(line: 678, column: 17, scope: !1164)
!1447 = !DILocation(line: 680, column: 43, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !172, line: 680, column: 25)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !172, line: 679, column: 19)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !172, line: 678, column: 17)
!1451 = distinct !DILexicalBlock(scope: !1164, file: !172, line: 678, column: 17)
!1452 = !DILocation(line: 682, column: 25, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !172, line: 682, column: 25)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !172, line: 681, column: 23)
!1455 = !DILocation(line: 682, column: 25, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !172, line: 682, column: 25)
!1457 = !DILocation(line: 682, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !172, line: 682, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !172, line: 682, column: 25)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !172, line: 682, column: 25)
!1461 = !DILocation(line: 682, column: 25, scope: !1459)
!1462 = !DILocation(line: 682, column: 25, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !172, line: 682, column: 25)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !172, line: 682, column: 25)
!1465 = !DILocation(line: 682, column: 25, scope: !1464)
!1466 = !DILocation(line: 682, column: 25, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !172, line: 682, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1460, file: !172, line: 682, column: 25)
!1469 = !DILocation(line: 682, column: 25, scope: !1468)
!1470 = !DILocation(line: 682, column: 25, scope: !1460)
!1471 = !DILocation(line: 682, column: 25, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !172, line: 682, column: 25)
!1473 = distinct !DILexicalBlock(scope: !1453, file: !172, line: 682, column: 25)
!1474 = !DILocation(line: 682, column: 25, scope: !1473)
!1475 = !DILocation(line: 683, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !172, line: 683, column: 25)
!1477 = distinct !DILexicalBlock(scope: !1454, file: !172, line: 683, column: 25)
!1478 = !DILocation(line: 683, column: 25, scope: !1477)
!1479 = !DILocation(line: 684, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !172, line: 684, column: 25)
!1481 = distinct !DILexicalBlock(scope: !1454, file: !172, line: 684, column: 25)
!1482 = !DILocation(line: 684, column: 25, scope: !1481)
!1483 = !DILocation(line: 685, column: 38, scope: !1454)
!1484 = !DILocation(line: 685, column: 33, scope: !1454)
!1485 = !DILocation(line: 686, column: 23, scope: !1454)
!1486 = !DILocation(line: 687, column: 30, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1448, file: !172, line: 687, column: 30)
!1488 = !DILocation(line: 687, column: 30, scope: !1448)
!1489 = !DILocation(line: 689, column: 25, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !172, line: 689, column: 25)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !172, line: 689, column: 25)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !172, line: 688, column: 23)
!1493 = !DILocation(line: 689, column: 25, scope: !1491)
!1494 = !DILocation(line: 691, column: 23, scope: !1492)
!1495 = !DILocation(line: 692, column: 35, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1449, file: !172, line: 692, column: 25)
!1497 = !DILocation(line: 692, column: 30, scope: !1496)
!1498 = !DILocation(line: 692, column: 25, scope: !1449)
!1499 = !DILocation(line: 694, column: 21, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !172, line: 694, column: 21)
!1501 = distinct !DILexicalBlock(scope: !1449, file: !172, line: 694, column: 21)
!1502 = !DILocation(line: 694, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !172, line: 694, column: 21)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !172, line: 694, column: 21)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !172, line: 694, column: 21)
!1506 = !DILocation(line: 694, column: 21, scope: !1504)
!1507 = !DILocation(line: 694, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !172, line: 694, column: 21)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !172, line: 694, column: 21)
!1510 = !DILocation(line: 694, column: 21, scope: !1509)
!1511 = !DILocation(line: 694, column: 21, scope: !1505)
!1512 = !DILocation(line: 695, column: 21, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !172, line: 695, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1449, file: !172, line: 695, column: 21)
!1515 = !DILocation(line: 695, column: 21, scope: !1514)
!1516 = !DILocation(line: 696, column: 25, scope: !1449)
!1517 = !DILocation(line: 678, column: 17, scope: !1450)
!1518 = distinct !{!1518, !1519, !1520}
!1519 = !DILocation(line: 678, column: 17, scope: !1451)
!1520 = !DILocation(line: 697, column: 19, scope: !1451)
!1521 = !DILocation(line: 704, column: 34, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 704, column: 11)
!1523 = !DILocation(line: 706, column: 14, scope: !1522)
!1524 = !DILocation(line: 707, column: 14, scope: !1522)
!1525 = !DILocation(line: 707, column: 35, scope: !1522)
!1526 = !DILocation(line: 707, column: 17, scope: !1522)
!1527 = !DILocation(line: 707, column: 53, scope: !1522)
!1528 = !DILocation(line: 707, column: 47, scope: !1522)
!1529 = !DILocation(line: 707, column: 65, scope: !1522)
!1530 = !DILocation(line: 708, column: 15, scope: !1522)
!1531 = !DILocation(line: 708, column: 11, scope: !1522)
!1532 = !DILocation(line: 704, column: 11, scope: !1125)
!1533 = !DILocation(line: 712, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 712, column: 7)
!1535 = !DILocation(line: 712, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !172, line: 712, column: 7)
!1537 = !DILocation(line: 712, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !172, line: 712, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !172, line: 712, column: 7)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !172, line: 712, column: 7)
!1541 = !DILocation(line: 712, column: 7, scope: !1539)
!1542 = !DILocation(line: 712, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !172, line: 712, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !172, line: 712, column: 7)
!1545 = !DILocation(line: 712, column: 7, scope: !1544)
!1546 = !DILocation(line: 712, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !172, line: 712, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1540, file: !172, line: 712, column: 7)
!1549 = !DILocation(line: 712, column: 7, scope: !1548)
!1550 = !DILocation(line: 712, column: 7, scope: !1540)
!1551 = !DILocation(line: 712, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !172, line: 712, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1534, file: !172, line: 712, column: 7)
!1554 = !DILocation(line: 712, column: 7, scope: !1553)
!1555 = !DILocation(line: 715, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !172, line: 715, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 715, column: 7)
!1558 = !DILocation(line: 715, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !172, line: 715, column: 7)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !172, line: 715, column: 7)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !172, line: 715, column: 7)
!1562 = !DILocation(line: 715, column: 7, scope: !1560)
!1563 = !DILocation(line: 715, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !172, line: 715, column: 7)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !172, line: 715, column: 7)
!1566 = !DILocation(line: 715, column: 7, scope: !1565)
!1567 = !DILocation(line: 715, column: 7, scope: !1561)
!1568 = !DILocation(line: 716, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !172, line: 716, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 716, column: 7)
!1571 = !DILocation(line: 716, column: 7, scope: !1570)
!1572 = !DILocation(line: 718, column: 13, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1125, file: !172, line: 718, column: 11)
!1574 = !DILocation(line: 718, column: 11, scope: !1125)
!1575 = !DILocation(line: 720, column: 5, scope: !1126)
!1576 = !DILocation(line: 392, column: 75, scope: !1126)
!1577 = !DILocation(line: 392, column: 3, scope: !1126)
!1578 = distinct !{!1578, !1237, !1579}
!1579 = !DILocation(line: 720, column: 5, scope: !1127)
!1580 = !DILocation(line: 722, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 722, column: 7)
!1582 = !DILocation(line: 722, column: 16, scope: !1581)
!1583 = !DILocation(line: 730, column: 51, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 730, column: 7)
!1585 = !DILocation(line: 731, column: 10, scope: !1584)
!1586 = !DILocation(line: 733, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !172, line: 733, column: 11)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !172, line: 732, column: 5)
!1589 = !DILocation(line: 733, column: 11, scope: !1588)
!1590 = !DILocation(line: 734, column: 16, scope: !1587)
!1591 = !DILocation(line: 734, column: 9, scope: !1587)
!1592 = !DILocation(line: 738, column: 18, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !172, line: 738, column: 16)
!1594 = !DILocation(line: 738, column: 32, scope: !1593)
!1595 = !DILocation(line: 738, column: 29, scope: !1593)
!1596 = !DILocation(line: 747, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 747, column: 7)
!1598 = !DILocation(line: 747, column: 20, scope: !1597)
!1599 = !DILocation(line: 748, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !172, line: 748, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !172, line: 748, column: 5)
!1602 = !DILocation(line: 748, column: 5, scope: !1601)
!1603 = !DILocation(line: 749, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !172, line: 749, column: 7)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !172, line: 749, column: 7)
!1606 = !DILocation(line: 749, column: 7, scope: !1605)
!1607 = !DILocation(line: 748, column: 39, scope: !1600)
!1608 = distinct !{!1608, !1602, !1609}
!1609 = !DILocation(line: 749, column: 7, scope: !1601)
!1610 = !DILocation(line: 751, column: 11, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 751, column: 7)
!1612 = !DILocation(line: 751, column: 7, scope: !1098)
!1613 = !DILocation(line: 752, column: 5, scope: !1611)
!1614 = !DILocation(line: 752, column: 17, scope: !1611)
!1615 = !DILocation(line: 758, column: 21, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 758, column: 7)
!1617 = !DILocation(line: 758, column: 54, scope: !1616)
!1618 = !DILocation(line: 758, column: 51, scope: !1616)
!1619 = !DILocation(line: 762, column: 42, scope: !1098)
!1620 = !DILocation(line: 760, column: 10, scope: !1098)
!1621 = !DILocation(line: 760, column: 3, scope: !1098)
!1622 = !DILocation(line: 764, column: 1, scope: !1098)
!1623 = distinct !DISubprogram(name: "gettext_quote", scope: !172, file: !172, line: 199, type: !1624, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!34, !34, !130}
!1626 = !{!1627, !1628, !1629, !1630}
!1627 = !DILocalVariable(name: "msgid", arg: 1, scope: !1623, file: !172, line: 199, type: !34)
!1628 = !DILocalVariable(name: "s", arg: 2, scope: !1623, file: !172, line: 199, type: !130)
!1629 = !DILocalVariable(name: "translation", scope: !1623, file: !172, line: 201, type: !34)
!1630 = !DILocalVariable(name: "locale_code", scope: !1623, file: !172, line: 202, type: !34)
!1631 = !DILocation(line: 199, column: 28, scope: !1623)
!1632 = !DILocation(line: 199, column: 54, scope: !1623)
!1633 = !DILocation(line: 201, column: 29, scope: !1623)
!1634 = !DILocation(line: 201, column: 15, scope: !1623)
!1635 = !DILocation(line: 204, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1623, file: !172, line: 204, column: 7)
!1637 = !DILocation(line: 204, column: 7, scope: !1623)
!1638 = !DILocation(line: 225, column: 17, scope: !1623)
!1639 = !DILocation(line: 202, column: 15, scope: !1623)
!1640 = !DILocalVariable(name: "s2", arg: 2, scope: !1641, file: !1642, line: 160, type: !34)
!1641 = distinct !DISubprogram(name: "strcaseeq0", scope: !1642, file: !1642, line: 160, type: !1643, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1645)
!1642 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!1645 = !{!1646, !1640, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1646 = !DILocalVariable(name: "s1", arg: 1, scope: !1641, file: !1642, line: 160, type: !34)
!1647 = !DILocalVariable(name: "s20", arg: 3, scope: !1641, file: !1642, line: 160, type: !27)
!1648 = !DILocalVariable(name: "s21", arg: 4, scope: !1641, file: !1642, line: 160, type: !27)
!1649 = !DILocalVariable(name: "s22", arg: 5, scope: !1641, file: !1642, line: 160, type: !27)
!1650 = !DILocalVariable(name: "s23", arg: 6, scope: !1641, file: !1642, line: 160, type: !27)
!1651 = !DILocalVariable(name: "s24", arg: 7, scope: !1641, file: !1642, line: 160, type: !27)
!1652 = !DILocalVariable(name: "s25", arg: 8, scope: !1641, file: !1642, line: 160, type: !27)
!1653 = !DILocalVariable(name: "s26", arg: 9, scope: !1641, file: !1642, line: 160, type: !27)
!1654 = !DILocalVariable(name: "s27", arg: 10, scope: !1641, file: !1642, line: 160, type: !27)
!1655 = !DILocalVariable(name: "s28", arg: 11, scope: !1641, file: !1642, line: 160, type: !27)
!1656 = !DILocation(line: 160, column: 41, scope: !1641, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 226, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1623, file: !172, line: 226, column: 7)
!1659 = !DILocation(line: 160, column: 120, scope: !1641, inlinedAt: !1657)
!1660 = !DILocation(line: 160, column: 130, scope: !1641, inlinedAt: !1657)
!1661 = !DILocation(line: 162, column: 7, scope: !1662, inlinedAt: !1657)
!1662 = distinct !DILexicalBlock(scope: !1641, file: !1642, line: 162, column: 7)
!1663 = !DILocalVariable(name: "s2", arg: 2, scope: !1664, file: !1642, line: 146, type: !34)
!1664 = distinct !DISubprogram(name: "strcaseeq1", scope: !1642, file: !1642, line: 146, type: !1665, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27, !27}
!1667 = !{!1668, !1663, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1668 = !DILocalVariable(name: "s1", arg: 1, scope: !1664, file: !1642, line: 146, type: !34)
!1669 = !DILocalVariable(name: "s21", arg: 3, scope: !1664, file: !1642, line: 146, type: !27)
!1670 = !DILocalVariable(name: "s22", arg: 4, scope: !1664, file: !1642, line: 146, type: !27)
!1671 = !DILocalVariable(name: "s23", arg: 5, scope: !1664, file: !1642, line: 146, type: !27)
!1672 = !DILocalVariable(name: "s24", arg: 6, scope: !1664, file: !1642, line: 146, type: !27)
!1673 = !DILocalVariable(name: "s25", arg: 7, scope: !1664, file: !1642, line: 146, type: !27)
!1674 = !DILocalVariable(name: "s26", arg: 8, scope: !1664, file: !1642, line: 146, type: !27)
!1675 = !DILocalVariable(name: "s27", arg: 9, scope: !1664, file: !1642, line: 146, type: !27)
!1676 = !DILocalVariable(name: "s28", arg: 10, scope: !1664, file: !1642, line: 146, type: !27)
!1677 = !DILocation(line: 146, column: 41, scope: !1664, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 167, column: 16, scope: !1679, inlinedAt: !1657)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !1642, line: 164, column: 11)
!1680 = distinct !DILexicalBlock(scope: !1662, file: !1642, line: 163, column: 5)
!1681 = !DILocation(line: 146, column: 110, scope: !1664, inlinedAt: !1678)
!1682 = !DILocation(line: 146, column: 120, scope: !1664, inlinedAt: !1678)
!1683 = !DILocation(line: 148, column: 7, scope: !1684, inlinedAt: !1678)
!1684 = distinct !DILexicalBlock(scope: !1664, file: !1642, line: 148, column: 7)
!1685 = !DILocalVariable(name: "s2", arg: 2, scope: !1686, file: !1642, line: 132, type: !34)
!1686 = distinct !DISubprogram(name: "strcaseeq2", scope: !1642, file: !1642, line: 132, type: !1687, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27, !27}
!1689 = !{!1690, !1685, !1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1690 = !DILocalVariable(name: "s1", arg: 1, scope: !1686, file: !1642, line: 132, type: !34)
!1691 = !DILocalVariable(name: "s22", arg: 3, scope: !1686, file: !1642, line: 132, type: !27)
!1692 = !DILocalVariable(name: "s23", arg: 4, scope: !1686, file: !1642, line: 132, type: !27)
!1693 = !DILocalVariable(name: "s24", arg: 5, scope: !1686, file: !1642, line: 132, type: !27)
!1694 = !DILocalVariable(name: "s25", arg: 6, scope: !1686, file: !1642, line: 132, type: !27)
!1695 = !DILocalVariable(name: "s26", arg: 7, scope: !1686, file: !1642, line: 132, type: !27)
!1696 = !DILocalVariable(name: "s27", arg: 8, scope: !1686, file: !1642, line: 132, type: !27)
!1697 = !DILocalVariable(name: "s28", arg: 9, scope: !1686, file: !1642, line: 132, type: !27)
!1698 = !DILocation(line: 132, column: 41, scope: !1686, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 153, column: 16, scope: !1700, inlinedAt: !1678)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !1642, line: 150, column: 11)
!1701 = distinct !DILexicalBlock(scope: !1684, file: !1642, line: 149, column: 5)
!1702 = !DILocation(line: 132, column: 100, scope: !1686, inlinedAt: !1699)
!1703 = !DILocation(line: 132, column: 110, scope: !1686, inlinedAt: !1699)
!1704 = !DILocation(line: 134, column: 7, scope: !1705, inlinedAt: !1699)
!1705 = distinct !DILexicalBlock(scope: !1686, file: !1642, line: 134, column: 7)
!1706 = !DILocalVariable(name: "s2", arg: 2, scope: !1707, file: !1642, line: 118, type: !34)
!1707 = distinct !DISubprogram(name: "strcaseeq3", scope: !1642, file: !1642, line: 118, type: !1708, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!24, !34, !34, !27, !27, !27, !27, !27, !27}
!1710 = !{!1711, !1706, !1712, !1713, !1714, !1715, !1716, !1717}
!1711 = !DILocalVariable(name: "s1", arg: 1, scope: !1707, file: !1642, line: 118, type: !34)
!1712 = !DILocalVariable(name: "s23", arg: 3, scope: !1707, file: !1642, line: 118, type: !27)
!1713 = !DILocalVariable(name: "s24", arg: 4, scope: !1707, file: !1642, line: 118, type: !27)
!1714 = !DILocalVariable(name: "s25", arg: 5, scope: !1707, file: !1642, line: 118, type: !27)
!1715 = !DILocalVariable(name: "s26", arg: 6, scope: !1707, file: !1642, line: 118, type: !27)
!1716 = !DILocalVariable(name: "s27", arg: 7, scope: !1707, file: !1642, line: 118, type: !27)
!1717 = !DILocalVariable(name: "s28", arg: 8, scope: !1707, file: !1642, line: 118, type: !27)
!1718 = !DILocation(line: 118, column: 41, scope: !1707, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 139, column: 16, scope: !1720, inlinedAt: !1699)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1642, line: 136, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1705, file: !1642, line: 135, column: 5)
!1722 = !DILocation(line: 118, column: 90, scope: !1707, inlinedAt: !1719)
!1723 = !DILocation(line: 118, column: 100, scope: !1707, inlinedAt: !1719)
!1724 = !DILocation(line: 120, column: 7, scope: !1725, inlinedAt: !1719)
!1725 = distinct !DILexicalBlock(scope: !1707, file: !1642, line: 120, column: 7)
!1726 = !DILocation(line: 120, column: 7, scope: !1707, inlinedAt: !1719)
!1727 = !DILocalVariable(name: "s2", arg: 2, scope: !1728, file: !1642, line: 104, type: !34)
!1728 = distinct !DISubprogram(name: "strcaseeq4", scope: !1642, file: !1642, line: 104, type: !1729, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!24, !34, !34, !27, !27, !27, !27, !27}
!1731 = !{!1732, !1727, !1733, !1734, !1735, !1736, !1737}
!1732 = !DILocalVariable(name: "s1", arg: 1, scope: !1728, file: !1642, line: 104, type: !34)
!1733 = !DILocalVariable(name: "s24", arg: 3, scope: !1728, file: !1642, line: 104, type: !27)
!1734 = !DILocalVariable(name: "s25", arg: 4, scope: !1728, file: !1642, line: 104, type: !27)
!1735 = !DILocalVariable(name: "s26", arg: 5, scope: !1728, file: !1642, line: 104, type: !27)
!1736 = !DILocalVariable(name: "s27", arg: 6, scope: !1728, file: !1642, line: 104, type: !27)
!1737 = !DILocalVariable(name: "s28", arg: 7, scope: !1728, file: !1642, line: 104, type: !27)
!1738 = !DILocation(line: 104, column: 41, scope: !1728, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 125, column: 16, scope: !1740, inlinedAt: !1719)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1642, line: 122, column: 11)
!1741 = distinct !DILexicalBlock(scope: !1725, file: !1642, line: 121, column: 5)
!1742 = !DILocation(line: 104, column: 80, scope: !1728, inlinedAt: !1739)
!1743 = !DILocation(line: 104, column: 90, scope: !1728, inlinedAt: !1739)
!1744 = !DILocation(line: 106, column: 7, scope: !1745, inlinedAt: !1739)
!1745 = distinct !DILexicalBlock(scope: !1728, file: !1642, line: 106, column: 7)
!1746 = !DILocation(line: 106, column: 7, scope: !1728, inlinedAt: !1739)
!1747 = !DILocalVariable(name: "s2", arg: 2, scope: !1748, file: !1642, line: 90, type: !34)
!1748 = distinct !DISubprogram(name: "strcaseeq5", scope: !1642, file: !1642, line: 90, type: !1749, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!24, !34, !34, !27, !27, !27, !27}
!1751 = !{!1752, !1747, !1753, !1754, !1755, !1756}
!1752 = !DILocalVariable(name: "s1", arg: 1, scope: !1748, file: !1642, line: 90, type: !34)
!1753 = !DILocalVariable(name: "s25", arg: 3, scope: !1748, file: !1642, line: 90, type: !27)
!1754 = !DILocalVariable(name: "s26", arg: 4, scope: !1748, file: !1642, line: 90, type: !27)
!1755 = !DILocalVariable(name: "s27", arg: 5, scope: !1748, file: !1642, line: 90, type: !27)
!1756 = !DILocalVariable(name: "s28", arg: 6, scope: !1748, file: !1642, line: 90, type: !27)
!1757 = !DILocation(line: 90, column: 41, scope: !1748, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 111, column: 16, scope: !1759, inlinedAt: !1739)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1642, line: 108, column: 11)
!1760 = distinct !DILexicalBlock(scope: !1745, file: !1642, line: 107, column: 5)
!1761 = !DILocation(line: 90, column: 70, scope: !1748, inlinedAt: !1758)
!1762 = !DILocation(line: 90, column: 80, scope: !1748, inlinedAt: !1758)
!1763 = !DILocation(line: 92, column: 7, scope: !1764, inlinedAt: !1758)
!1764 = distinct !DILexicalBlock(scope: !1748, file: !1642, line: 92, column: 7)
!1765 = !DILocation(line: 92, column: 7, scope: !1748, inlinedAt: !1758)
!1766 = !DILocation(line: 227, column: 12, scope: !1658)
!1767 = !DILocation(line: 227, column: 21, scope: !1658)
!1768 = !DILocation(line: 227, column: 5, scope: !1658)
!1769 = !DILocation(line: 146, column: 41, scope: !1664, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 167, column: 16, scope: !1679, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 228, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1623, file: !172, line: 228, column: 7)
!1773 = !DILocation(line: 146, column: 110, scope: !1664, inlinedAt: !1770)
!1774 = !DILocation(line: 146, column: 120, scope: !1664, inlinedAt: !1770)
!1775 = !DILocation(line: 148, column: 7, scope: !1684, inlinedAt: !1770)
!1776 = !DILocation(line: 132, column: 41, scope: !1686, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 153, column: 16, scope: !1700, inlinedAt: !1770)
!1778 = !DILocation(line: 132, column: 100, scope: !1686, inlinedAt: !1777)
!1779 = !DILocation(line: 132, column: 110, scope: !1686, inlinedAt: !1777)
!1780 = !DILocation(line: 134, column: 7, scope: !1705, inlinedAt: !1777)
!1781 = !DILocation(line: 134, column: 7, scope: !1686, inlinedAt: !1777)
!1782 = !DILocation(line: 118, column: 41, scope: !1707, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 139, column: 16, scope: !1720, inlinedAt: !1777)
!1784 = !DILocation(line: 118, column: 90, scope: !1707, inlinedAt: !1783)
!1785 = !DILocation(line: 118, column: 100, scope: !1707, inlinedAt: !1783)
!1786 = !DILocation(line: 120, column: 7, scope: !1725, inlinedAt: !1783)
!1787 = !DILocation(line: 120, column: 7, scope: !1707, inlinedAt: !1783)
!1788 = !DILocation(line: 104, column: 41, scope: !1728, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 125, column: 16, scope: !1740, inlinedAt: !1783)
!1790 = !DILocation(line: 104, column: 80, scope: !1728, inlinedAt: !1789)
!1791 = !DILocation(line: 104, column: 90, scope: !1728, inlinedAt: !1789)
!1792 = !DILocation(line: 106, column: 7, scope: !1745, inlinedAt: !1789)
!1793 = !DILocation(line: 106, column: 7, scope: !1728, inlinedAt: !1789)
!1794 = !DILocation(line: 90, column: 41, scope: !1748, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 111, column: 16, scope: !1759, inlinedAt: !1789)
!1796 = !DILocation(line: 90, column: 70, scope: !1748, inlinedAt: !1795)
!1797 = !DILocation(line: 90, column: 80, scope: !1748, inlinedAt: !1795)
!1798 = !DILocation(line: 92, column: 7, scope: !1764, inlinedAt: !1795)
!1799 = !DILocation(line: 92, column: 7, scope: !1748, inlinedAt: !1795)
!1800 = !DILocalVariable(name: "s2", arg: 2, scope: !1801, file: !1642, line: 76, type: !34)
!1801 = distinct !DISubprogram(name: "strcaseeq6", scope: !1642, file: !1642, line: 76, type: !1802, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!24, !34, !34, !27, !27, !27}
!1804 = !{!1805, !1800, !1806, !1807, !1808}
!1805 = !DILocalVariable(name: "s1", arg: 1, scope: !1801, file: !1642, line: 76, type: !34)
!1806 = !DILocalVariable(name: "s26", arg: 3, scope: !1801, file: !1642, line: 76, type: !27)
!1807 = !DILocalVariable(name: "s27", arg: 4, scope: !1801, file: !1642, line: 76, type: !27)
!1808 = !DILocalVariable(name: "s28", arg: 5, scope: !1801, file: !1642, line: 76, type: !27)
!1809 = !DILocation(line: 76, column: 41, scope: !1801, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 97, column: 16, scope: !1811, inlinedAt: !1795)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1642, line: 94, column: 11)
!1812 = distinct !DILexicalBlock(scope: !1764, file: !1642, line: 93, column: 5)
!1813 = !DILocation(line: 76, column: 60, scope: !1801, inlinedAt: !1810)
!1814 = !DILocation(line: 76, column: 70, scope: !1801, inlinedAt: !1810)
!1815 = !DILocation(line: 78, column: 7, scope: !1816, inlinedAt: !1810)
!1816 = distinct !DILexicalBlock(scope: !1801, file: !1642, line: 78, column: 7)
!1817 = !DILocation(line: 78, column: 7, scope: !1801, inlinedAt: !1810)
!1818 = !DILocalVariable(name: "s2", arg: 2, scope: !1819, file: !1642, line: 62, type: !34)
!1819 = distinct !DISubprogram(name: "strcaseeq7", scope: !1642, file: !1642, line: 62, type: !1820, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!24, !34, !34, !27, !27}
!1822 = !{!1823, !1818, !1824, !1825}
!1823 = !DILocalVariable(name: "s1", arg: 1, scope: !1819, file: !1642, line: 62, type: !34)
!1824 = !DILocalVariable(name: "s27", arg: 3, scope: !1819, file: !1642, line: 62, type: !27)
!1825 = !DILocalVariable(name: "s28", arg: 4, scope: !1819, file: !1642, line: 62, type: !27)
!1826 = !DILocation(line: 62, column: 41, scope: !1819, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 83, column: 16, scope: !1828, inlinedAt: !1810)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !1642, line: 80, column: 11)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !1642, line: 79, column: 5)
!1830 = !DILocation(line: 62, column: 50, scope: !1819, inlinedAt: !1827)
!1831 = !DILocation(line: 62, column: 60, scope: !1819, inlinedAt: !1827)
!1832 = !DILocation(line: 64, column: 7, scope: !1833, inlinedAt: !1827)
!1833 = distinct !DILexicalBlock(scope: !1819, file: !1642, line: 64, column: 7)
!1834 = !DILocation(line: 228, column: 7, scope: !1623)
!1835 = !DILocation(line: 229, column: 12, scope: !1772)
!1836 = !DILocation(line: 229, column: 21, scope: !1772)
!1837 = !DILocation(line: 229, column: 5, scope: !1772)
!1838 = !DILocation(line: 231, column: 13, scope: !1623)
!1839 = !DILocation(line: 231, column: 11, scope: !1623)
!1840 = !DILocation(line: 231, column: 3, scope: !1623)
!1841 = !DILocation(line: 232, column: 1, scope: !1623)
!1842 = distinct !DISubprogram(name: "quotearg_alloc", scope: !172, file: !172, line: 791, type: !1843, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!26, !34, !166, !970}
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "arg", arg: 1, scope: !1842, file: !172, line: 791, type: !34)
!1847 = !DILocalVariable(name: "argsize", arg: 2, scope: !1842, file: !172, line: 791, type: !166)
!1848 = !DILocalVariable(name: "o", arg: 3, scope: !1842, file: !172, line: 792, type: !970)
!1849 = !DILocation(line: 791, column: 29, scope: !1842)
!1850 = !DILocation(line: 791, column: 41, scope: !1842)
!1851 = !DILocation(line: 792, column: 47, scope: !1842)
!1852 = !DILocalVariable(name: "arg", arg: 1, scope: !1853, file: !172, line: 804, type: !34)
!1853 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 804, type: !1854, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!26, !34, !166, !585, !970}
!1856 = !{!1852, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1857 = !DILocalVariable(name: "argsize", arg: 2, scope: !1853, file: !172, line: 804, type: !166)
!1858 = !DILocalVariable(name: "size", arg: 3, scope: !1853, file: !172, line: 804, type: !585)
!1859 = !DILocalVariable(name: "o", arg: 4, scope: !1853, file: !172, line: 805, type: !970)
!1860 = !DILocalVariable(name: "p", scope: !1853, file: !172, line: 807, type: !970)
!1861 = !DILocalVariable(name: "e", scope: !1853, file: !172, line: 808, type: !24)
!1862 = !DILocalVariable(name: "flags", scope: !1853, file: !172, line: 810, type: !24)
!1863 = !DILocalVariable(name: "bufsize", scope: !1853, file: !172, line: 811, type: !166)
!1864 = !DILocalVariable(name: "buf", scope: !1853, file: !172, line: 815, type: !26)
!1865 = !DILocation(line: 804, column: 33, scope: !1853, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 794, column: 10, scope: !1842)
!1867 = !DILocation(line: 804, column: 45, scope: !1853, inlinedAt: !1866)
!1868 = !DILocation(line: 804, column: 62, scope: !1853, inlinedAt: !1866)
!1869 = !DILocation(line: 805, column: 51, scope: !1853, inlinedAt: !1866)
!1870 = !DILocation(line: 807, column: 37, scope: !1853, inlinedAt: !1866)
!1871 = !DILocation(line: 807, column: 33, scope: !1853, inlinedAt: !1866)
!1872 = !DILocation(line: 808, column: 11, scope: !1853, inlinedAt: !1866)
!1873 = !DILocation(line: 808, column: 7, scope: !1853, inlinedAt: !1866)
!1874 = !DILocation(line: 810, column: 18, scope: !1853, inlinedAt: !1866)
!1875 = !DILocation(line: 810, column: 24, scope: !1853, inlinedAt: !1866)
!1876 = !DILocation(line: 810, column: 7, scope: !1853, inlinedAt: !1866)
!1877 = !DILocation(line: 811, column: 69, scope: !1853, inlinedAt: !1866)
!1878 = !DILocation(line: 812, column: 53, scope: !1853, inlinedAt: !1866)
!1879 = !DILocation(line: 813, column: 49, scope: !1853, inlinedAt: !1866)
!1880 = !DILocation(line: 814, column: 49, scope: !1853, inlinedAt: !1866)
!1881 = !DILocation(line: 811, column: 20, scope: !1853, inlinedAt: !1866)
!1882 = !DILocation(line: 814, column: 62, scope: !1853, inlinedAt: !1866)
!1883 = !DILocation(line: 811, column: 10, scope: !1853, inlinedAt: !1866)
!1884 = !DILocalVariable(name: "n", arg: 1, scope: !1885, file: !581, line: 220, type: !166)
!1885 = distinct !DISubprogram(name: "xcharalloc", scope: !581, file: !581, line: 220, type: !1886, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!26, !166}
!1888 = !{!1884}
!1889 = !DILocation(line: 220, column: 20, scope: !1885, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 815, column: 15, scope: !1853, inlinedAt: !1866)
!1891 = !DILocation(line: 222, column: 10, scope: !1885, inlinedAt: !1890)
!1892 = !DILocation(line: 815, column: 9, scope: !1853, inlinedAt: !1866)
!1893 = !DILocation(line: 816, column: 60, scope: !1853, inlinedAt: !1866)
!1894 = !DILocation(line: 818, column: 32, scope: !1853, inlinedAt: !1866)
!1895 = !DILocation(line: 818, column: 47, scope: !1853, inlinedAt: !1866)
!1896 = !DILocation(line: 816, column: 3, scope: !1853, inlinedAt: !1866)
!1897 = !DILocation(line: 819, column: 9, scope: !1853, inlinedAt: !1866)
!1898 = !DILocation(line: 794, column: 3, scope: !1842)
!1899 = !DILocation(line: 804, column: 33, scope: !1853)
!1900 = !DILocation(line: 804, column: 45, scope: !1853)
!1901 = !DILocation(line: 804, column: 62, scope: !1853)
!1902 = !DILocation(line: 805, column: 51, scope: !1853)
!1903 = !DILocation(line: 807, column: 37, scope: !1853)
!1904 = !DILocation(line: 807, column: 33, scope: !1853)
!1905 = !DILocation(line: 808, column: 11, scope: !1853)
!1906 = !DILocation(line: 808, column: 7, scope: !1853)
!1907 = !DILocation(line: 810, column: 18, scope: !1853)
!1908 = !DILocation(line: 810, column: 27, scope: !1853)
!1909 = !DILocation(line: 810, column: 24, scope: !1853)
!1910 = !DILocation(line: 810, column: 7, scope: !1853)
!1911 = !DILocation(line: 811, column: 69, scope: !1853)
!1912 = !DILocation(line: 812, column: 53, scope: !1853)
!1913 = !DILocation(line: 813, column: 49, scope: !1853)
!1914 = !DILocation(line: 814, column: 49, scope: !1853)
!1915 = !DILocation(line: 811, column: 20, scope: !1853)
!1916 = !DILocation(line: 814, column: 62, scope: !1853)
!1917 = !DILocation(line: 811, column: 10, scope: !1853)
!1918 = !DILocation(line: 220, column: 20, scope: !1885, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 815, column: 15, scope: !1853)
!1920 = !DILocation(line: 222, column: 10, scope: !1885, inlinedAt: !1919)
!1921 = !DILocation(line: 815, column: 9, scope: !1853)
!1922 = !DILocation(line: 816, column: 60, scope: !1853)
!1923 = !DILocation(line: 818, column: 32, scope: !1853)
!1924 = !DILocation(line: 818, column: 47, scope: !1853)
!1925 = !DILocation(line: 816, column: 3, scope: !1853)
!1926 = !DILocation(line: 819, column: 9, scope: !1853)
!1927 = !DILocation(line: 820, column: 7, scope: !1853)
!1928 = !DILocation(line: 821, column: 11, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 820, column: 7)
!1930 = !DILocation(line: 821, column: 5, scope: !1929)
!1931 = !DILocation(line: 822, column: 3, scope: !1853)
!1932 = distinct !DISubprogram(name: "quotearg_free", scope: !172, file: !172, line: 840, type: !641, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1933)
!1933 = !{!1934, !1935}
!1934 = !DILocalVariable(name: "sv", scope: !1932, file: !172, line: 842, type: !198)
!1935 = !DILocalVariable(name: "i", scope: !1932, file: !172, line: 843, type: !24)
!1936 = !DILocation(line: 842, column: 24, scope: !1932)
!1937 = !DILocation(line: 842, column: 19, scope: !1932)
!1938 = !DILocation(line: 843, column: 7, scope: !1932)
!1939 = !DILocation(line: 844, column: 19, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !172, line: 844, column: 3)
!1941 = distinct !DILexicalBlock(scope: !1932, file: !172, line: 844, column: 3)
!1942 = !DILocation(line: 844, column: 17, scope: !1940)
!1943 = !DILocation(line: 844, column: 3, scope: !1941)
!1944 = !DILocation(line: 845, column: 17, scope: !1940)
!1945 = !{!1946, !633, i64 8}
!1946 = !{!"slotvec", !728, i64 0, !633, i64 8}
!1947 = !DILocation(line: 845, column: 5, scope: !1940)
!1948 = !DILocation(line: 844, column: 28, scope: !1940)
!1949 = distinct !{!1949, !1943, !1950}
!1950 = !DILocation(line: 845, column: 20, scope: !1941)
!1951 = !DILocation(line: 846, column: 13, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1932, file: !172, line: 846, column: 7)
!1953 = !DILocation(line: 846, column: 17, scope: !1952)
!1954 = !DILocation(line: 846, column: 7, scope: !1932)
!1955 = !DILocation(line: 848, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !172, line: 847, column: 5)
!1957 = !DILocation(line: 849, column: 21, scope: !1956)
!1958 = !{!1946, !728, i64 0}
!1959 = !DILocation(line: 850, column: 20, scope: !1956)
!1960 = !DILocation(line: 851, column: 5, scope: !1956)
!1961 = !DILocation(line: 852, column: 10, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1932, file: !172, line: 852, column: 7)
!1963 = !DILocation(line: 852, column: 7, scope: !1932)
!1964 = !DILocation(line: 854, column: 13, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !172, line: 853, column: 5)
!1966 = !DILocation(line: 854, column: 7, scope: !1965)
!1967 = !DILocation(line: 855, column: 15, scope: !1965)
!1968 = !DILocation(line: 856, column: 5, scope: !1965)
!1969 = !DILocation(line: 857, column: 10, scope: !1932)
!1970 = !DILocation(line: 858, column: 1, scope: !1932)
!1971 = distinct !DISubprogram(name: "quotearg_n", scope: !172, file: !172, line: 922, type: !1972, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!26, !24, !34}
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "n", arg: 1, scope: !1971, file: !172, line: 922, type: !24)
!1976 = !DILocalVariable(name: "arg", arg: 2, scope: !1971, file: !172, line: 922, type: !34)
!1977 = !DILocation(line: 922, column: 17, scope: !1971)
!1978 = !DILocation(line: 922, column: 32, scope: !1971)
!1979 = !DILocation(line: 924, column: 10, scope: !1971)
!1980 = !DILocation(line: 924, column: 3, scope: !1971)
!1981 = distinct !DISubprogram(name: "quotearg_n_options", scope: !172, file: !172, line: 869, type: !1982, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!26, !24, !34, !166, !970}
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1994, !1996, !1997, !1998}
!1985 = !DILocalVariable(name: "n", arg: 1, scope: !1981, file: !172, line: 869, type: !24)
!1986 = !DILocalVariable(name: "arg", arg: 2, scope: !1981, file: !172, line: 869, type: !34)
!1987 = !DILocalVariable(name: "argsize", arg: 3, scope: !1981, file: !172, line: 869, type: !166)
!1988 = !DILocalVariable(name: "options", arg: 4, scope: !1981, file: !172, line: 870, type: !970)
!1989 = !DILocalVariable(name: "e", scope: !1981, file: !172, line: 872, type: !24)
!1990 = !DILocalVariable(name: "sv", scope: !1981, file: !172, line: 874, type: !198)
!1991 = !DILocalVariable(name: "preallocated", scope: !1992, file: !172, line: 881, type: !37)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !172, line: 880, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1981, file: !172, line: 879, column: 7)
!1994 = !DILocalVariable(name: "size", scope: !1995, file: !172, line: 894, type: !166)
!1995 = distinct !DILexicalBlock(scope: !1981, file: !172, line: 893, column: 3)
!1996 = !DILocalVariable(name: "val", scope: !1995, file: !172, line: 895, type: !26)
!1997 = !DILocalVariable(name: "flags", scope: !1995, file: !172, line: 897, type: !24)
!1998 = !DILocalVariable(name: "qsize", scope: !1995, file: !172, line: 898, type: !166)
!1999 = !DILocation(line: 869, column: 25, scope: !1981)
!2000 = !DILocation(line: 869, column: 40, scope: !1981)
!2001 = !DILocation(line: 869, column: 52, scope: !1981)
!2002 = !DILocation(line: 870, column: 51, scope: !1981)
!2003 = !DILocation(line: 872, column: 11, scope: !1981)
!2004 = !DILocation(line: 872, column: 7, scope: !1981)
!2005 = !DILocation(line: 874, column: 24, scope: !1981)
!2006 = !DILocation(line: 874, column: 19, scope: !1981)
!2007 = !DILocation(line: 876, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1981, file: !172, line: 876, column: 7)
!2009 = !DILocation(line: 876, column: 7, scope: !1981)
!2010 = !DILocation(line: 877, column: 5, scope: !2008)
!2011 = !DILocation(line: 879, column: 7, scope: !1993)
!2012 = !DILocation(line: 879, column: 14, scope: !1993)
!2013 = !DILocation(line: 879, column: 7, scope: !1981)
!2014 = !DILocation(line: 881, column: 31, scope: !1992)
!2015 = !DILocation(line: 883, column: 67, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1992, file: !172, line: 883, column: 11)
!2017 = !DILocation(line: 883, column: 11, scope: !1992)
!2018 = !DILocation(line: 884, column: 9, scope: !2016)
!2019 = !DILocation(line: 886, column: 32, scope: !1992)
!2020 = !DILocation(line: 886, column: 61, scope: !1992)
!2021 = !DILocation(line: 886, column: 58, scope: !1992)
!2022 = !DILocation(line: 886, column: 66, scope: !1992)
!2023 = !DILocation(line: 886, column: 22, scope: !1992)
!2024 = !DILocation(line: 886, column: 15, scope: !1992)
!2025 = !DILocation(line: 887, column: 11, scope: !1992)
!2026 = !DILocation(line: 888, column: 15, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1992, file: !172, line: 887, column: 11)
!2028 = !{i64 0, i64 8, !727, i64 8, i64 8, !632}
!2029 = !DILocation(line: 888, column: 9, scope: !2027)
!2030 = !DILocation(line: 889, column: 20, scope: !1992)
!2031 = !DILocation(line: 889, column: 18, scope: !1992)
!2032 = !DILocation(line: 889, column: 7, scope: !1992)
!2033 = !DILocation(line: 889, column: 38, scope: !1992)
!2034 = !DILocation(line: 889, column: 31, scope: !1992)
!2035 = !DILocation(line: 889, column: 48, scope: !1992)
!2036 = !DILocation(line: 890, column: 14, scope: !1992)
!2037 = !DILocation(line: 891, column: 5, scope: !1992)
!2038 = !DILocation(line: 894, column: 19, scope: !1995)
!2039 = !DILocation(line: 894, column: 25, scope: !1995)
!2040 = !DILocation(line: 894, column: 12, scope: !1995)
!2041 = !DILocation(line: 895, column: 23, scope: !1995)
!2042 = !DILocation(line: 895, column: 11, scope: !1995)
!2043 = !DILocation(line: 897, column: 26, scope: !1995)
!2044 = !DILocation(line: 897, column: 32, scope: !1995)
!2045 = !DILocation(line: 897, column: 9, scope: !1995)
!2046 = !DILocation(line: 899, column: 55, scope: !1995)
!2047 = !DILocation(line: 900, column: 46, scope: !1995)
!2048 = !DILocation(line: 901, column: 55, scope: !1995)
!2049 = !DILocation(line: 902, column: 55, scope: !1995)
!2050 = !DILocation(line: 898, column: 20, scope: !1995)
!2051 = !DILocation(line: 898, column: 12, scope: !1995)
!2052 = !DILocation(line: 904, column: 14, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1995, file: !172, line: 904, column: 9)
!2054 = !DILocation(line: 904, column: 9, scope: !1995)
!2055 = !DILocation(line: 906, column: 35, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !172, line: 905, column: 7)
!2057 = !DILocation(line: 906, column: 20, scope: !2056)
!2058 = !DILocation(line: 907, column: 17, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !172, line: 907, column: 13)
!2060 = !DILocation(line: 907, column: 13, scope: !2056)
!2061 = !DILocation(line: 908, column: 11, scope: !2059)
!2062 = !DILocation(line: 220, column: 20, scope: !1885, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 909, column: 27, scope: !2056)
!2064 = !DILocation(line: 222, column: 10, scope: !1885, inlinedAt: !2063)
!2065 = !DILocation(line: 909, column: 19, scope: !2056)
!2066 = !DILocation(line: 910, column: 69, scope: !2056)
!2067 = !DILocation(line: 912, column: 44, scope: !2056)
!2068 = !DILocation(line: 913, column: 44, scope: !2056)
!2069 = !DILocation(line: 910, column: 9, scope: !2056)
!2070 = !DILocation(line: 914, column: 7, scope: !2056)
!2071 = !DILocation(line: 916, column: 11, scope: !1995)
!2072 = !DILocation(line: 917, column: 5, scope: !1995)
!2073 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !172, file: !172, line: 928, type: !2074, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!26, !24, !34, !166}
!2076 = !{!2077, !2078, !2079}
!2077 = !DILocalVariable(name: "n", arg: 1, scope: !2073, file: !172, line: 928, type: !24)
!2078 = !DILocalVariable(name: "arg", arg: 2, scope: !2073, file: !172, line: 928, type: !34)
!2079 = !DILocalVariable(name: "argsize", arg: 3, scope: !2073, file: !172, line: 928, type: !166)
!2080 = !DILocation(line: 928, column: 21, scope: !2073)
!2081 = !DILocation(line: 928, column: 36, scope: !2073)
!2082 = !DILocation(line: 928, column: 48, scope: !2073)
!2083 = !DILocation(line: 930, column: 10, scope: !2073)
!2084 = !DILocation(line: 930, column: 3, scope: !2073)
!2085 = distinct !DISubprogram(name: "quotearg", scope: !172, file: !172, line: 934, type: !2086, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!26, !34}
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "arg", arg: 1, scope: !2085, file: !172, line: 934, type: !34)
!2090 = !DILocation(line: 934, column: 23, scope: !2085)
!2091 = !DILocation(line: 922, column: 17, scope: !1971, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 936, column: 10, scope: !2085)
!2093 = !DILocation(line: 922, column: 32, scope: !1971, inlinedAt: !2092)
!2094 = !DILocation(line: 924, column: 10, scope: !1971, inlinedAt: !2092)
!2095 = !DILocation(line: 936, column: 3, scope: !2085)
!2096 = distinct !DISubprogram(name: "quotearg_mem", scope: !172, file: !172, line: 940, type: !2097, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!26, !34, !166}
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "arg", arg: 1, scope: !2096, file: !172, line: 940, type: !34)
!2101 = !DILocalVariable(name: "argsize", arg: 2, scope: !2096, file: !172, line: 940, type: !166)
!2102 = !DILocation(line: 940, column: 27, scope: !2096)
!2103 = !DILocation(line: 940, column: 39, scope: !2096)
!2104 = !DILocation(line: 928, column: 21, scope: !2073, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 942, column: 10, scope: !2096)
!2106 = !DILocation(line: 928, column: 36, scope: !2073, inlinedAt: !2105)
!2107 = !DILocation(line: 928, column: 48, scope: !2073, inlinedAt: !2105)
!2108 = !DILocation(line: 930, column: 10, scope: !2073, inlinedAt: !2105)
!2109 = !DILocation(line: 942, column: 3, scope: !2096)
!2110 = distinct !DISubprogram(name: "quotearg_n_style", scope: !172, file: !172, line: 946, type: !2111, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!26, !24, !130, !34}
!2113 = !{!2114, !2115, !2116, !2117}
!2114 = !DILocalVariable(name: "n", arg: 1, scope: !2110, file: !172, line: 946, type: !24)
!2115 = !DILocalVariable(name: "s", arg: 2, scope: !2110, file: !172, line: 946, type: !130)
!2116 = !DILocalVariable(name: "arg", arg: 3, scope: !2110, file: !172, line: 946, type: !34)
!2117 = !DILocalVariable(name: "o", scope: !2110, file: !172, line: 948, type: !971)
!2118 = !DILocalVariable(name: "o", scope: !2119, file: !172, line: 187, type: !179)
!2119 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !172, file: !172, line: 185, type: !2120, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!179, !130}
!2122 = !{!2123, !2118}
!2123 = !DILocalVariable(name: "style", arg: 1, scope: !2119, file: !172, line: 185, type: !130)
!2124 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2125 = !DILocation(line: 187, column: 26, scope: !2119, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 948, column: 36, scope: !2110)
!2127 = !DILocation(line: 946, column: 23, scope: !2110)
!2128 = !DILocation(line: 946, column: 45, scope: !2110)
!2129 = !DILocation(line: 946, column: 60, scope: !2110)
!2130 = !DILocation(line: 948, column: 3, scope: !2110)
!2131 = !DILocation(line: 948, column: 32, scope: !2110)
!2132 = !DILocation(line: 185, column: 48, scope: !2119, inlinedAt: !2126)
!2133 = !DILocation(line: 187, column: 3, scope: !2119, inlinedAt: !2126)
!2134 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2135 = !DILocation(line: 188, column: 13, scope: !2136, inlinedAt: !2126)
!2136 = distinct !DILexicalBlock(scope: !2119, file: !172, line: 188, column: 7)
!2137 = !DILocation(line: 188, column: 7, scope: !2119, inlinedAt: !2126)
!2138 = !DILocation(line: 189, column: 5, scope: !2136, inlinedAt: !2126)
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"quoting_options_from_style: argument 0"}
!2141 = distinct !{!2141, !"quoting_options_from_style"}
!2142 = !DILocation(line: 191, column: 10, scope: !2119, inlinedAt: !2126)
!2143 = !DILocation(line: 192, column: 1, scope: !2119, inlinedAt: !2126)
!2144 = !DILocation(line: 949, column: 10, scope: !2110)
!2145 = !DILocation(line: 950, column: 1, scope: !2110)
!2146 = !DILocation(line: 949, column: 3, scope: !2110)
!2147 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !172, file: !172, line: 953, type: !2148, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!26, !24, !130, !34, !166}
!2150 = !{!2151, !2152, !2153, !2154, !2155}
!2151 = !DILocalVariable(name: "n", arg: 1, scope: !2147, file: !172, line: 953, type: !24)
!2152 = !DILocalVariable(name: "s", arg: 2, scope: !2147, file: !172, line: 953, type: !130)
!2153 = !DILocalVariable(name: "arg", arg: 3, scope: !2147, file: !172, line: 954, type: !34)
!2154 = !DILocalVariable(name: "argsize", arg: 4, scope: !2147, file: !172, line: 954, type: !166)
!2155 = !DILocalVariable(name: "o", scope: !2147, file: !172, line: 956, type: !971)
!2156 = !DILocation(line: 187, column: 26, scope: !2119, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 956, column: 36, scope: !2147)
!2158 = !DILocation(line: 953, column: 27, scope: !2147)
!2159 = !DILocation(line: 953, column: 49, scope: !2147)
!2160 = !DILocation(line: 954, column: 35, scope: !2147)
!2161 = !DILocation(line: 954, column: 47, scope: !2147)
!2162 = !DILocation(line: 956, column: 3, scope: !2147)
!2163 = !DILocation(line: 956, column: 32, scope: !2147)
!2164 = !DILocation(line: 185, column: 48, scope: !2119, inlinedAt: !2157)
!2165 = !DILocation(line: 187, column: 3, scope: !2119, inlinedAt: !2157)
!2166 = !DILocation(line: 188, column: 13, scope: !2136, inlinedAt: !2157)
!2167 = !DILocation(line: 188, column: 7, scope: !2119, inlinedAt: !2157)
!2168 = !DILocation(line: 189, column: 5, scope: !2136, inlinedAt: !2157)
!2169 = !{!2170}
!2170 = distinct !{!2170, !2171, !"quoting_options_from_style: argument 0"}
!2171 = distinct !{!2171, !"quoting_options_from_style"}
!2172 = !DILocation(line: 191, column: 10, scope: !2119, inlinedAt: !2157)
!2173 = !DILocation(line: 192, column: 1, scope: !2119, inlinedAt: !2157)
!2174 = !DILocation(line: 957, column: 10, scope: !2147)
!2175 = !DILocation(line: 958, column: 1, scope: !2147)
!2176 = !DILocation(line: 957, column: 3, scope: !2147)
!2177 = distinct !DISubprogram(name: "quotearg_style", scope: !172, file: !172, line: 961, type: !2178, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!26, !130, !34}
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "s", arg: 1, scope: !2177, file: !172, line: 961, type: !130)
!2182 = !DILocalVariable(name: "arg", arg: 2, scope: !2177, file: !172, line: 961, type: !34)
!2183 = !DILocation(line: 187, column: 26, scope: !2119, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 948, column: 36, scope: !2110, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 963, column: 10, scope: !2177)
!2186 = !DILocation(line: 961, column: 36, scope: !2177)
!2187 = !DILocation(line: 961, column: 51, scope: !2177)
!2188 = !DILocation(line: 946, column: 23, scope: !2110, inlinedAt: !2185)
!2189 = !DILocation(line: 946, column: 45, scope: !2110, inlinedAt: !2185)
!2190 = !DILocation(line: 946, column: 60, scope: !2110, inlinedAt: !2185)
!2191 = !DILocation(line: 948, column: 3, scope: !2110, inlinedAt: !2185)
!2192 = !DILocation(line: 948, column: 32, scope: !2110, inlinedAt: !2185)
!2193 = !DILocation(line: 185, column: 48, scope: !2119, inlinedAt: !2184)
!2194 = !DILocation(line: 187, column: 3, scope: !2119, inlinedAt: !2184)
!2195 = !DILocation(line: 188, column: 13, scope: !2136, inlinedAt: !2184)
!2196 = !DILocation(line: 188, column: 7, scope: !2119, inlinedAt: !2184)
!2197 = !DILocation(line: 189, column: 5, scope: !2136, inlinedAt: !2184)
!2198 = !{!2199}
!2199 = distinct !{!2199, !2200, !"quoting_options_from_style: argument 0"}
!2200 = distinct !{!2200, !"quoting_options_from_style"}
!2201 = !DILocation(line: 191, column: 10, scope: !2119, inlinedAt: !2184)
!2202 = !DILocation(line: 192, column: 1, scope: !2119, inlinedAt: !2184)
!2203 = !DILocation(line: 949, column: 10, scope: !2110, inlinedAt: !2185)
!2204 = !DILocation(line: 950, column: 1, scope: !2110, inlinedAt: !2185)
!2205 = !DILocation(line: 963, column: 3, scope: !2177)
!2206 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !172, file: !172, line: 967, type: !2207, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!26, !130, !34, !166}
!2209 = !{!2210, !2211, !2212}
!2210 = !DILocalVariable(name: "s", arg: 1, scope: !2206, file: !172, line: 967, type: !130)
!2211 = !DILocalVariable(name: "arg", arg: 2, scope: !2206, file: !172, line: 967, type: !34)
!2212 = !DILocalVariable(name: "argsize", arg: 3, scope: !2206, file: !172, line: 967, type: !166)
!2213 = !DILocation(line: 187, column: 26, scope: !2119, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 956, column: 36, scope: !2147, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 969, column: 10, scope: !2206)
!2216 = !DILocation(line: 967, column: 40, scope: !2206)
!2217 = !DILocation(line: 967, column: 55, scope: !2206)
!2218 = !DILocation(line: 967, column: 67, scope: !2206)
!2219 = !DILocation(line: 953, column: 27, scope: !2147, inlinedAt: !2215)
!2220 = !DILocation(line: 953, column: 49, scope: !2147, inlinedAt: !2215)
!2221 = !DILocation(line: 954, column: 35, scope: !2147, inlinedAt: !2215)
!2222 = !DILocation(line: 954, column: 47, scope: !2147, inlinedAt: !2215)
!2223 = !DILocation(line: 956, column: 3, scope: !2147, inlinedAt: !2215)
!2224 = !DILocation(line: 956, column: 32, scope: !2147, inlinedAt: !2215)
!2225 = !DILocation(line: 185, column: 48, scope: !2119, inlinedAt: !2214)
!2226 = !DILocation(line: 187, column: 3, scope: !2119, inlinedAt: !2214)
!2227 = !DILocation(line: 188, column: 13, scope: !2136, inlinedAt: !2214)
!2228 = !DILocation(line: 188, column: 7, scope: !2119, inlinedAt: !2214)
!2229 = !DILocation(line: 189, column: 5, scope: !2136, inlinedAt: !2214)
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"quoting_options_from_style: argument 0"}
!2232 = distinct !{!2232, !"quoting_options_from_style"}
!2233 = !DILocation(line: 191, column: 10, scope: !2119, inlinedAt: !2214)
!2234 = !DILocation(line: 192, column: 1, scope: !2119, inlinedAt: !2214)
!2235 = !DILocation(line: 957, column: 10, scope: !2147, inlinedAt: !2215)
!2236 = !DILocation(line: 958, column: 1, scope: !2147, inlinedAt: !2215)
!2237 = !DILocation(line: 969, column: 3, scope: !2206)
!2238 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !172, file: !172, line: 973, type: !2239, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!26, !34, !166, !27}
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DILocalVariable(name: "arg", arg: 1, scope: !2238, file: !172, line: 973, type: !34)
!2243 = !DILocalVariable(name: "argsize", arg: 2, scope: !2238, file: !172, line: 973, type: !166)
!2244 = !DILocalVariable(name: "ch", arg: 3, scope: !2238, file: !172, line: 973, type: !27)
!2245 = !DILocalVariable(name: "options", scope: !2238, file: !172, line: 975, type: !179)
!2246 = !DILocation(line: 973, column: 32, scope: !2238)
!2247 = !DILocation(line: 973, column: 44, scope: !2238)
!2248 = !DILocation(line: 973, column: 58, scope: !2238)
!2249 = !DILocation(line: 975, column: 3, scope: !2238)
!2250 = !DILocation(line: 976, column: 13, scope: !2238)
!2251 = !{i64 0, i64 4, !689, i64 4, i64 4, !680, i64 8, i64 32, !689, i64 40, i64 8, !632, i64 48, i64 8, !632}
!2252 = !DILocation(line: 975, column: 26, scope: !2238)
!2253 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 977, column: 3, scope: !2238)
!2255 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2254)
!2256 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2254)
!2257 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2254)
!2258 = !DILocation(line: 148, column: 62, scope: !992, inlinedAt: !2254)
!2259 = !DILocation(line: 148, column: 57, scope: !992, inlinedAt: !2254)
!2260 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2254)
!2261 = !DILocation(line: 149, column: 18, scope: !992, inlinedAt: !2254)
!2262 = !DILocation(line: 149, column: 15, scope: !992, inlinedAt: !2254)
!2263 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2254)
!2264 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2254)
!2265 = !DILocation(line: 150, column: 15, scope: !992, inlinedAt: !2254)
!2266 = !DILocation(line: 150, column: 25, scope: !992, inlinedAt: !2254)
!2267 = !DILocation(line: 150, column: 7, scope: !992, inlinedAt: !2254)
!2268 = !DILocation(line: 151, column: 18, scope: !992, inlinedAt: !2254)
!2269 = !DILocation(line: 151, column: 23, scope: !992, inlinedAt: !2254)
!2270 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2254)
!2271 = !DILocation(line: 978, column: 10, scope: !2238)
!2272 = !DILocation(line: 979, column: 1, scope: !2238)
!2273 = !DILocation(line: 978, column: 3, scope: !2238)
!2274 = distinct !DISubprogram(name: "quotearg_char", scope: !172, file: !172, line: 982, type: !2275, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!26, !34, !27}
!2277 = !{!2278, !2279}
!2278 = !DILocalVariable(name: "arg", arg: 1, scope: !2274, file: !172, line: 982, type: !34)
!2279 = !DILocalVariable(name: "ch", arg: 2, scope: !2274, file: !172, line: 982, type: !27)
!2280 = !DILocation(line: 982, column: 28, scope: !2274)
!2281 = !DILocation(line: 982, column: 38, scope: !2274)
!2282 = !DILocation(line: 973, column: 32, scope: !2238, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 984, column: 10, scope: !2274)
!2284 = !DILocation(line: 973, column: 44, scope: !2238, inlinedAt: !2283)
!2285 = !DILocation(line: 973, column: 58, scope: !2238, inlinedAt: !2283)
!2286 = !DILocation(line: 975, column: 3, scope: !2238, inlinedAt: !2283)
!2287 = !DILocation(line: 976, column: 13, scope: !2238, inlinedAt: !2283)
!2288 = !DILocation(line: 975, column: 26, scope: !2238, inlinedAt: !2283)
!2289 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 977, column: 3, scope: !2238, inlinedAt: !2283)
!2291 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2290)
!2292 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2290)
!2293 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2290)
!2294 = !DILocation(line: 148, column: 62, scope: !992, inlinedAt: !2290)
!2295 = !DILocation(line: 148, column: 57, scope: !992, inlinedAt: !2290)
!2296 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2290)
!2297 = !DILocation(line: 149, column: 18, scope: !992, inlinedAt: !2290)
!2298 = !DILocation(line: 149, column: 15, scope: !992, inlinedAt: !2290)
!2299 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2290)
!2300 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2290)
!2301 = !DILocation(line: 150, column: 15, scope: !992, inlinedAt: !2290)
!2302 = !DILocation(line: 150, column: 25, scope: !992, inlinedAt: !2290)
!2303 = !DILocation(line: 150, column: 7, scope: !992, inlinedAt: !2290)
!2304 = !DILocation(line: 151, column: 18, scope: !992, inlinedAt: !2290)
!2305 = !DILocation(line: 151, column: 23, scope: !992, inlinedAt: !2290)
!2306 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2290)
!2307 = !DILocation(line: 978, column: 10, scope: !2238, inlinedAt: !2283)
!2308 = !DILocation(line: 979, column: 1, scope: !2238, inlinedAt: !2283)
!2309 = !DILocation(line: 984, column: 3, scope: !2274)
!2310 = distinct !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 988, type: !2086, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2311)
!2311 = !{!2312}
!2312 = !DILocalVariable(name: "arg", arg: 1, scope: !2310, file: !172, line: 988, type: !34)
!2313 = !DILocation(line: 988, column: 29, scope: !2310)
!2314 = !DILocation(line: 982, column: 28, scope: !2274, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 990, column: 10, scope: !2310)
!2316 = !DILocation(line: 982, column: 38, scope: !2274, inlinedAt: !2315)
!2317 = !DILocation(line: 973, column: 32, scope: !2238, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 984, column: 10, scope: !2274, inlinedAt: !2315)
!2319 = !DILocation(line: 973, column: 44, scope: !2238, inlinedAt: !2318)
!2320 = !DILocation(line: 973, column: 58, scope: !2238, inlinedAt: !2318)
!2321 = !DILocation(line: 975, column: 3, scope: !2238, inlinedAt: !2318)
!2322 = !DILocation(line: 976, column: 13, scope: !2238, inlinedAt: !2318)
!2323 = !DILocation(line: 975, column: 26, scope: !2238, inlinedAt: !2318)
!2324 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 977, column: 3, scope: !2238, inlinedAt: !2318)
!2326 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2325)
!2327 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2325)
!2328 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2325)
!2329 = !DILocation(line: 148, column: 57, scope: !992, inlinedAt: !2325)
!2330 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2325)
!2331 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2325)
!2332 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2325)
!2333 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2325)
!2334 = !DILocation(line: 978, column: 10, scope: !2238, inlinedAt: !2318)
!2335 = !DILocation(line: 979, column: 1, scope: !2238, inlinedAt: !2318)
!2336 = !DILocation(line: 990, column: 3, scope: !2310)
!2337 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !172, file: !172, line: 994, type: !2097, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2338)
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2337, file: !172, line: 994, type: !34)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2337, file: !172, line: 994, type: !166)
!2341 = !DILocation(line: 994, column: 33, scope: !2337)
!2342 = !DILocation(line: 994, column: 45, scope: !2337)
!2343 = !DILocation(line: 973, column: 32, scope: !2238, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 996, column: 10, scope: !2337)
!2345 = !DILocation(line: 973, column: 44, scope: !2238, inlinedAt: !2344)
!2346 = !DILocation(line: 973, column: 58, scope: !2238, inlinedAt: !2344)
!2347 = !DILocation(line: 975, column: 3, scope: !2238, inlinedAt: !2344)
!2348 = !DILocation(line: 976, column: 13, scope: !2238, inlinedAt: !2344)
!2349 = !DILocation(line: 975, column: 26, scope: !2238, inlinedAt: !2344)
!2350 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 977, column: 3, scope: !2238, inlinedAt: !2344)
!2352 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2351)
!2353 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2351)
!2354 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2351)
!2355 = !DILocation(line: 148, column: 57, scope: !992, inlinedAt: !2351)
!2356 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2351)
!2357 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2351)
!2358 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2351)
!2359 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2351)
!2360 = !DILocation(line: 978, column: 10, scope: !2238, inlinedAt: !2344)
!2361 = !DILocation(line: 979, column: 1, scope: !2238, inlinedAt: !2344)
!2362 = !DILocation(line: 996, column: 3, scope: !2337)
!2363 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 1000, type: !2111, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2364)
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !172, line: 1000, type: !24)
!2366 = !DILocalVariable(name: "s", arg: 2, scope: !2363, file: !172, line: 1000, type: !130)
!2367 = !DILocalVariable(name: "arg", arg: 3, scope: !2363, file: !172, line: 1000, type: !34)
!2368 = !DILocalVariable(name: "options", scope: !2363, file: !172, line: 1002, type: !179)
!2369 = !DILocation(line: 187, column: 26, scope: !2119, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1003, column: 13, scope: !2363)
!2371 = !DILocation(line: 1000, column: 29, scope: !2363)
!2372 = !DILocation(line: 1000, column: 51, scope: !2363)
!2373 = !DILocation(line: 1000, column: 66, scope: !2363)
!2374 = !DILocation(line: 1002, column: 3, scope: !2363)
!2375 = !DILocation(line: 185, column: 48, scope: !2119, inlinedAt: !2370)
!2376 = !DILocation(line: 187, column: 3, scope: !2119, inlinedAt: !2370)
!2377 = !DILocation(line: 188, column: 13, scope: !2136, inlinedAt: !2370)
!2378 = !DILocation(line: 188, column: 7, scope: !2119, inlinedAt: !2370)
!2379 = !DILocation(line: 189, column: 5, scope: !2136, inlinedAt: !2370)
!2380 = !{!2381}
!2381 = distinct !{!2381, !2382, !"quoting_options_from_style: argument 0"}
!2382 = distinct !{!2382, !"quoting_options_from_style"}
!2383 = !DILocation(line: 191, column: 10, scope: !2119, inlinedAt: !2370)
!2384 = !DILocation(line: 192, column: 1, scope: !2119, inlinedAt: !2370)
!2385 = !DILocation(line: 1003, column: 13, scope: !2363)
!2386 = !DILocation(line: 1002, column: 26, scope: !2363)
!2387 = !DILocation(line: 144, column: 43, scope: !992, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1004, column: 3, scope: !2363)
!2389 = !DILocation(line: 144, column: 51, scope: !992, inlinedAt: !2388)
!2390 = !DILocation(line: 144, column: 58, scope: !992, inlinedAt: !2388)
!2391 = !DILocation(line: 146, column: 17, scope: !992, inlinedAt: !2388)
!2392 = !DILocation(line: 148, column: 57, scope: !992, inlinedAt: !2388)
!2393 = !DILocation(line: 147, column: 17, scope: !992, inlinedAt: !2388)
!2394 = !DILocation(line: 149, column: 7, scope: !992, inlinedAt: !2388)
!2395 = !DILocation(line: 150, column: 12, scope: !992, inlinedAt: !2388)
!2396 = !DILocation(line: 151, column: 6, scope: !992, inlinedAt: !2388)
!2397 = !DILocation(line: 1005, column: 10, scope: !2363)
!2398 = !DILocation(line: 1006, column: 1, scope: !2363)
!2399 = !DILocation(line: 1005, column: 3, scope: !2363)
!2400 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !172, file: !172, line: 1009, type: !2401, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!26, !24, !34, !34, !34}
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DILocalVariable(name: "n", arg: 1, scope: !2400, file: !172, line: 1009, type: !24)
!2405 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2400, file: !172, line: 1009, type: !34)
!2406 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2400, file: !172, line: 1010, type: !34)
!2407 = !DILocalVariable(name: "arg", arg: 4, scope: !2400, file: !172, line: 1010, type: !34)
!2408 = !DILocation(line: 1009, column: 24, scope: !2400)
!2409 = !DILocation(line: 1009, column: 39, scope: !2400)
!2410 = !DILocation(line: 1010, column: 32, scope: !2400)
!2411 = !DILocation(line: 1010, column: 57, scope: !2400)
!2412 = !DILocalVariable(name: "n", arg: 1, scope: !2413, file: !172, line: 1017, type: !24)
!2413 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 1017, type: !2414, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!26, !24, !34, !34, !34, !166}
!2416 = !{!2412, !2417, !2418, !2419, !2420, !2421}
!2417 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2413, file: !172, line: 1017, type: !34)
!2418 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2413, file: !172, line: 1018, type: !34)
!2419 = !DILocalVariable(name: "arg", arg: 4, scope: !2413, file: !172, line: 1019, type: !34)
!2420 = !DILocalVariable(name: "argsize", arg: 5, scope: !2413, file: !172, line: 1019, type: !166)
!2421 = !DILocalVariable(name: "o", scope: !2413, file: !172, line: 1021, type: !179)
!2422 = !DILocation(line: 1017, column: 28, scope: !2413, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1012, column: 10, scope: !2400)
!2424 = !DILocation(line: 1017, column: 43, scope: !2413, inlinedAt: !2423)
!2425 = !DILocation(line: 1018, column: 36, scope: !2413, inlinedAt: !2423)
!2426 = !DILocation(line: 1019, column: 36, scope: !2413, inlinedAt: !2423)
!2427 = !DILocation(line: 1019, column: 48, scope: !2413, inlinedAt: !2423)
!2428 = !DILocation(line: 1021, column: 3, scope: !2413, inlinedAt: !2423)
!2429 = !DILocation(line: 1021, column: 30, scope: !2413, inlinedAt: !2423)
!2430 = !DILocation(line: 1021, column: 26, scope: !2413, inlinedAt: !2423)
!2431 = !DILocation(line: 171, column: 45, scope: !1041, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1022, column: 3, scope: !2413, inlinedAt: !2423)
!2433 = !DILocation(line: 172, column: 33, scope: !1041, inlinedAt: !2432)
!2434 = !DILocation(line: 172, column: 57, scope: !1041, inlinedAt: !2432)
!2435 = !DILocation(line: 176, column: 6, scope: !1041, inlinedAt: !2432)
!2436 = !DILocation(line: 176, column: 12, scope: !1041, inlinedAt: !2432)
!2437 = !DILocation(line: 177, column: 8, scope: !1057, inlinedAt: !2432)
!2438 = !DILocation(line: 177, column: 23, scope: !1057, inlinedAt: !2432)
!2439 = !DILocation(line: 177, column: 19, scope: !1057, inlinedAt: !2432)
!2440 = !DILocation(line: 178, column: 5, scope: !1057, inlinedAt: !2432)
!2441 = !DILocation(line: 179, column: 6, scope: !1041, inlinedAt: !2432)
!2442 = !DILocation(line: 179, column: 17, scope: !1041, inlinedAt: !2432)
!2443 = !DILocation(line: 180, column: 6, scope: !1041, inlinedAt: !2432)
!2444 = !DILocation(line: 180, column: 18, scope: !1041, inlinedAt: !2432)
!2445 = !DILocation(line: 1023, column: 10, scope: !2413, inlinedAt: !2423)
!2446 = !DILocation(line: 1024, column: 1, scope: !2413, inlinedAt: !2423)
!2447 = !DILocation(line: 1012, column: 3, scope: !2400)
!2448 = !DILocation(line: 1017, column: 28, scope: !2413)
!2449 = !DILocation(line: 1017, column: 43, scope: !2413)
!2450 = !DILocation(line: 1018, column: 36, scope: !2413)
!2451 = !DILocation(line: 1019, column: 36, scope: !2413)
!2452 = !DILocation(line: 1019, column: 48, scope: !2413)
!2453 = !DILocation(line: 1021, column: 3, scope: !2413)
!2454 = !DILocation(line: 1021, column: 30, scope: !2413)
!2455 = !DILocation(line: 1021, column: 26, scope: !2413)
!2456 = !DILocation(line: 171, column: 45, scope: !1041, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1022, column: 3, scope: !2413)
!2458 = !DILocation(line: 172, column: 33, scope: !1041, inlinedAt: !2457)
!2459 = !DILocation(line: 172, column: 57, scope: !1041, inlinedAt: !2457)
!2460 = !DILocation(line: 176, column: 6, scope: !1041, inlinedAt: !2457)
!2461 = !DILocation(line: 176, column: 12, scope: !1041, inlinedAt: !2457)
!2462 = !DILocation(line: 177, column: 8, scope: !1057, inlinedAt: !2457)
!2463 = !DILocation(line: 177, column: 23, scope: !1057, inlinedAt: !2457)
!2464 = !DILocation(line: 177, column: 19, scope: !1057, inlinedAt: !2457)
!2465 = !DILocation(line: 178, column: 5, scope: !1057, inlinedAt: !2457)
!2466 = !DILocation(line: 179, column: 6, scope: !1041, inlinedAt: !2457)
!2467 = !DILocation(line: 179, column: 17, scope: !1041, inlinedAt: !2457)
!2468 = !DILocation(line: 180, column: 6, scope: !1041, inlinedAt: !2457)
!2469 = !DILocation(line: 180, column: 18, scope: !1041, inlinedAt: !2457)
!2470 = !DILocation(line: 1023, column: 10, scope: !2413)
!2471 = !DILocation(line: 1024, column: 1, scope: !2413)
!2472 = !DILocation(line: 1023, column: 3, scope: !2413)
!2473 = distinct !DISubprogram(name: "quotearg_custom", scope: !172, file: !172, line: 1027, type: !2474, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!26, !34, !34, !34}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2473, file: !172, line: 1027, type: !34)
!2478 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2473, file: !172, line: 1027, type: !34)
!2479 = !DILocalVariable(name: "arg", arg: 3, scope: !2473, file: !172, line: 1028, type: !34)
!2480 = !DILocation(line: 1027, column: 30, scope: !2473)
!2481 = !DILocation(line: 1027, column: 54, scope: !2473)
!2482 = !DILocation(line: 1028, column: 30, scope: !2473)
!2483 = !DILocation(line: 1009, column: 24, scope: !2400, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 1030, column: 10, scope: !2473)
!2485 = !DILocation(line: 1009, column: 39, scope: !2400, inlinedAt: !2484)
!2486 = !DILocation(line: 1010, column: 32, scope: !2400, inlinedAt: !2484)
!2487 = !DILocation(line: 1010, column: 57, scope: !2400, inlinedAt: !2484)
!2488 = !DILocation(line: 1017, column: 28, scope: !2413, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 1012, column: 10, scope: !2400, inlinedAt: !2484)
!2490 = !DILocation(line: 1017, column: 43, scope: !2413, inlinedAt: !2489)
!2491 = !DILocation(line: 1018, column: 36, scope: !2413, inlinedAt: !2489)
!2492 = !DILocation(line: 1019, column: 36, scope: !2413, inlinedAt: !2489)
!2493 = !DILocation(line: 1019, column: 48, scope: !2413, inlinedAt: !2489)
!2494 = !DILocation(line: 1021, column: 3, scope: !2413, inlinedAt: !2489)
!2495 = !DILocation(line: 1021, column: 30, scope: !2413, inlinedAt: !2489)
!2496 = !DILocation(line: 1021, column: 26, scope: !2413, inlinedAt: !2489)
!2497 = !DILocation(line: 171, column: 45, scope: !1041, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1022, column: 3, scope: !2413, inlinedAt: !2489)
!2499 = !DILocation(line: 172, column: 33, scope: !1041, inlinedAt: !2498)
!2500 = !DILocation(line: 172, column: 57, scope: !1041, inlinedAt: !2498)
!2501 = !DILocation(line: 176, column: 6, scope: !1041, inlinedAt: !2498)
!2502 = !DILocation(line: 176, column: 12, scope: !1041, inlinedAt: !2498)
!2503 = !DILocation(line: 177, column: 8, scope: !1057, inlinedAt: !2498)
!2504 = !DILocation(line: 177, column: 23, scope: !1057, inlinedAt: !2498)
!2505 = !DILocation(line: 177, column: 19, scope: !1057, inlinedAt: !2498)
!2506 = !DILocation(line: 178, column: 5, scope: !1057, inlinedAt: !2498)
!2507 = !DILocation(line: 179, column: 6, scope: !1041, inlinedAt: !2498)
!2508 = !DILocation(line: 179, column: 17, scope: !1041, inlinedAt: !2498)
!2509 = !DILocation(line: 180, column: 6, scope: !1041, inlinedAt: !2498)
!2510 = !DILocation(line: 180, column: 18, scope: !1041, inlinedAt: !2498)
!2511 = !DILocation(line: 1023, column: 10, scope: !2413, inlinedAt: !2489)
!2512 = !DILocation(line: 1024, column: 1, scope: !2413, inlinedAt: !2489)
!2513 = !DILocation(line: 1030, column: 3, scope: !2473)
!2514 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !172, file: !172, line: 1034, type: !2515, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!26, !34, !34, !34, !166}
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2514, file: !172, line: 1034, type: !34)
!2519 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2514, file: !172, line: 1034, type: !34)
!2520 = !DILocalVariable(name: "arg", arg: 3, scope: !2514, file: !172, line: 1035, type: !34)
!2521 = !DILocalVariable(name: "argsize", arg: 4, scope: !2514, file: !172, line: 1035, type: !166)
!2522 = !DILocation(line: 1034, column: 34, scope: !2514)
!2523 = !DILocation(line: 1034, column: 58, scope: !2514)
!2524 = !DILocation(line: 1035, column: 34, scope: !2514)
!2525 = !DILocation(line: 1035, column: 46, scope: !2514)
!2526 = !DILocation(line: 1017, column: 28, scope: !2413, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 1037, column: 10, scope: !2514)
!2528 = !DILocation(line: 1017, column: 43, scope: !2413, inlinedAt: !2527)
!2529 = !DILocation(line: 1018, column: 36, scope: !2413, inlinedAt: !2527)
!2530 = !DILocation(line: 1019, column: 36, scope: !2413, inlinedAt: !2527)
!2531 = !DILocation(line: 1019, column: 48, scope: !2413, inlinedAt: !2527)
!2532 = !DILocation(line: 1021, column: 3, scope: !2413, inlinedAt: !2527)
!2533 = !DILocation(line: 1021, column: 30, scope: !2413, inlinedAt: !2527)
!2534 = !DILocation(line: 1021, column: 26, scope: !2413, inlinedAt: !2527)
!2535 = !DILocation(line: 171, column: 45, scope: !1041, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 1022, column: 3, scope: !2413, inlinedAt: !2527)
!2537 = !DILocation(line: 172, column: 33, scope: !1041, inlinedAt: !2536)
!2538 = !DILocation(line: 172, column: 57, scope: !1041, inlinedAt: !2536)
!2539 = !DILocation(line: 176, column: 6, scope: !1041, inlinedAt: !2536)
!2540 = !DILocation(line: 176, column: 12, scope: !1041, inlinedAt: !2536)
!2541 = !DILocation(line: 177, column: 8, scope: !1057, inlinedAt: !2536)
!2542 = !DILocation(line: 177, column: 23, scope: !1057, inlinedAt: !2536)
!2543 = !DILocation(line: 177, column: 19, scope: !1057, inlinedAt: !2536)
!2544 = !DILocation(line: 178, column: 5, scope: !1057, inlinedAt: !2536)
!2545 = !DILocation(line: 179, column: 6, scope: !1041, inlinedAt: !2536)
!2546 = !DILocation(line: 179, column: 17, scope: !1041, inlinedAt: !2536)
!2547 = !DILocation(line: 180, column: 6, scope: !1041, inlinedAt: !2536)
!2548 = !DILocation(line: 180, column: 18, scope: !1041, inlinedAt: !2536)
!2549 = !DILocation(line: 1023, column: 10, scope: !2413, inlinedAt: !2527)
!2550 = !DILocation(line: 1024, column: 1, scope: !2413, inlinedAt: !2527)
!2551 = !DILocation(line: 1037, column: 3, scope: !2514)
!2552 = distinct !DISubprogram(name: "quote_n_mem", scope: !172, file: !172, line: 1052, type: !2553, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!34, !24, !34, !166}
!2555 = !{!2556, !2557, !2558}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2552, file: !172, line: 1052, type: !24)
!2557 = !DILocalVariable(name: "arg", arg: 2, scope: !2552, file: !172, line: 1052, type: !34)
!2558 = !DILocalVariable(name: "argsize", arg: 3, scope: !2552, file: !172, line: 1052, type: !166)
!2559 = !DILocation(line: 1052, column: 18, scope: !2552)
!2560 = !DILocation(line: 1052, column: 33, scope: !2552)
!2561 = !DILocation(line: 1052, column: 45, scope: !2552)
!2562 = !DILocation(line: 1054, column: 10, scope: !2552)
!2563 = !DILocation(line: 1054, column: 3, scope: !2552)
!2564 = distinct !DISubprogram(name: "quote_mem", scope: !172, file: !172, line: 1058, type: !2565, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!34, !34, !166}
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2564, file: !172, line: 1058, type: !34)
!2569 = !DILocalVariable(name: "argsize", arg: 2, scope: !2564, file: !172, line: 1058, type: !166)
!2570 = !DILocation(line: 1058, column: 24, scope: !2564)
!2571 = !DILocation(line: 1058, column: 36, scope: !2564)
!2572 = !DILocation(line: 1052, column: 18, scope: !2552, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1060, column: 10, scope: !2564)
!2574 = !DILocation(line: 1052, column: 33, scope: !2552, inlinedAt: !2573)
!2575 = !DILocation(line: 1052, column: 45, scope: !2552, inlinedAt: !2573)
!2576 = !DILocation(line: 1054, column: 10, scope: !2552, inlinedAt: !2573)
!2577 = !DILocation(line: 1060, column: 3, scope: !2564)
!2578 = distinct !DISubprogram(name: "quote_n", scope: !172, file: !172, line: 1064, type: !2579, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!34, !24, !34}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !172, line: 1064, type: !24)
!2583 = !DILocalVariable(name: "arg", arg: 2, scope: !2578, file: !172, line: 1064, type: !34)
!2584 = !DILocation(line: 1064, column: 14, scope: !2578)
!2585 = !DILocation(line: 1064, column: 29, scope: !2578)
!2586 = !DILocation(line: 1052, column: 18, scope: !2552, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1066, column: 10, scope: !2578)
!2588 = !DILocation(line: 1052, column: 33, scope: !2552, inlinedAt: !2587)
!2589 = !DILocation(line: 1052, column: 45, scope: !2552, inlinedAt: !2587)
!2590 = !DILocation(line: 1054, column: 10, scope: !2552, inlinedAt: !2587)
!2591 = !DILocation(line: 1066, column: 3, scope: !2578)
!2592 = distinct !DISubprogram(name: "quote", scope: !172, file: !172, line: 1070, type: !2593, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!34, !34}
!2595 = !{!2596}
!2596 = !DILocalVariable(name: "arg", arg: 1, scope: !2592, file: !172, line: 1070, type: !34)
!2597 = !DILocation(line: 1070, column: 20, scope: !2592)
!2598 = !DILocation(line: 1064, column: 14, scope: !2578, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1072, column: 10, scope: !2592)
!2600 = !DILocation(line: 1064, column: 29, scope: !2578, inlinedAt: !2599)
!2601 = !DILocation(line: 1052, column: 18, scope: !2552, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1066, column: 10, scope: !2578, inlinedAt: !2599)
!2603 = !DILocation(line: 1052, column: 33, scope: !2552, inlinedAt: !2602)
!2604 = !DILocation(line: 1052, column: 45, scope: !2552, inlinedAt: !2602)
!2605 = !DILocation(line: 1054, column: 10, scope: !2552, inlinedAt: !2602)
!2606 = !DILocation(line: 1072, column: 3, scope: !2592)
!2607 = distinct !DISubprogram(name: "version_etc_arn", scope: !573, file: !573, line: 62, type: !2608, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !2651)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2610, !34, !34, !34, !2650, !166}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2612, file: !795, line: 242, baseType: !24, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2612, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2612, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2612, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2612, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2612, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2612, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2612, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2612, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2612, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2612, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2612, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2612, file: !795, line: 260, baseType: !2627, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !2629)
!2629 = !{!2630, !2631, !2633}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2628, file: !795, line: 157, baseType: !2627, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2628, file: !795, line: 158, baseType: !2632, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2628, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2612, file: !795, line: 262, baseType: !2632, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2612, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2612, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2612, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2612, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2612, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2612, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2612, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2612, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2612, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2612, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2612, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2612, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2612, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2612, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2612, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657}
!2652 = !DILocalVariable(name: "stream", arg: 1, scope: !2607, file: !573, line: 62, type: !2610)
!2653 = !DILocalVariable(name: "command_name", arg: 2, scope: !2607, file: !573, line: 63, type: !34)
!2654 = !DILocalVariable(name: "package", arg: 3, scope: !2607, file: !573, line: 63, type: !34)
!2655 = !DILocalVariable(name: "version", arg: 4, scope: !2607, file: !573, line: 64, type: !34)
!2656 = !DILocalVariable(name: "authors", arg: 5, scope: !2607, file: !573, line: 65, type: !2650)
!2657 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2607, file: !573, line: 65, type: !166)
!2658 = !DILocation(line: 62, column: 24, scope: !2607)
!2659 = !DILocation(line: 63, column: 30, scope: !2607)
!2660 = !DILocation(line: 63, column: 56, scope: !2607)
!2661 = !DILocation(line: 64, column: 30, scope: !2607)
!2662 = !DILocation(line: 65, column: 39, scope: !2607)
!2663 = !DILocation(line: 65, column: 55, scope: !2607)
!2664 = !DILocation(line: 67, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2607, file: !573, line: 67, column: 7)
!2666 = !DILocation(line: 67, column: 7, scope: !2607)
!2667 = !DILocation(line: 68, column: 5, scope: !2665)
!2668 = !DILocation(line: 70, column: 5, scope: !2665)
!2669 = !DILocation(line: 84, column: 3, scope: !2607)
!2670 = !DILocation(line: 86, column: 3, scope: !2607)
!2671 = !DILocation(line: 95, column: 3, scope: !2607)
!2672 = !DILocation(line: 99, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2607, file: !573, line: 96, column: 5)
!2674 = !DILocation(line: 102, column: 7, scope: !2673)
!2675 = !DILocation(line: 103, column: 7, scope: !2673)
!2676 = !DILocation(line: 106, column: 7, scope: !2673)
!2677 = !DILocation(line: 107, column: 7, scope: !2673)
!2678 = !DILocation(line: 110, column: 7, scope: !2673)
!2679 = !DILocation(line: 112, column: 7, scope: !2673)
!2680 = !DILocation(line: 117, column: 7, scope: !2673)
!2681 = !DILocation(line: 119, column: 7, scope: !2673)
!2682 = !DILocation(line: 124, column: 7, scope: !2673)
!2683 = !DILocation(line: 126, column: 7, scope: !2673)
!2684 = !DILocation(line: 131, column: 7, scope: !2673)
!2685 = !DILocation(line: 134, column: 7, scope: !2673)
!2686 = !DILocation(line: 139, column: 7, scope: !2673)
!2687 = !DILocation(line: 142, column: 7, scope: !2673)
!2688 = !DILocation(line: 147, column: 7, scope: !2673)
!2689 = !DILocation(line: 151, column: 7, scope: !2673)
!2690 = !DILocation(line: 156, column: 7, scope: !2673)
!2691 = !DILocation(line: 160, column: 7, scope: !2673)
!2692 = !DILocation(line: 167, column: 7, scope: !2673)
!2693 = !DILocation(line: 171, column: 7, scope: !2673)
!2694 = !DILocation(line: 173, column: 1, scope: !2607)
!2695 = distinct !DISubprogram(name: "version_etc_ar", scope: !573, file: !573, line: 180, type: !2696, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !2610, !34, !34, !34, !2650}
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704}
!2699 = !DILocalVariable(name: "stream", arg: 1, scope: !2695, file: !573, line: 180, type: !2610)
!2700 = !DILocalVariable(name: "command_name", arg: 2, scope: !2695, file: !573, line: 181, type: !34)
!2701 = !DILocalVariable(name: "package", arg: 3, scope: !2695, file: !573, line: 181, type: !34)
!2702 = !DILocalVariable(name: "version", arg: 4, scope: !2695, file: !573, line: 182, type: !34)
!2703 = !DILocalVariable(name: "authors", arg: 5, scope: !2695, file: !573, line: 182, type: !2650)
!2704 = !DILocalVariable(name: "n_authors", scope: !2695, file: !573, line: 184, type: !166)
!2705 = !DILocation(line: 180, column: 23, scope: !2695)
!2706 = !DILocation(line: 181, column: 29, scope: !2695)
!2707 = !DILocation(line: 181, column: 55, scope: !2695)
!2708 = !DILocation(line: 182, column: 29, scope: !2695)
!2709 = !DILocation(line: 182, column: 59, scope: !2695)
!2710 = !DILocation(line: 184, column: 10, scope: !2695)
!2711 = !DILocation(line: 186, column: 8, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2695, file: !573, line: 186, column: 3)
!2713 = !DILocation(line: 186, column: 23, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !573, line: 186, column: 3)
!2715 = !DILocation(line: 186, column: 3, scope: !2712)
!2716 = !DILocation(line: 186, column: 52, scope: !2714)
!2717 = distinct !{!2717, !2715, !2718}
!2718 = !DILocation(line: 187, column: 5, scope: !2712)
!2719 = !DILocation(line: 188, column: 3, scope: !2695)
!2720 = !DILocation(line: 189, column: 1, scope: !2695)
!2721 = distinct !DISubprogram(name: "version_etc_va", scope: !573, file: !573, line: 196, type: !2722, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !2731)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !2610, !34, !34, !34, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !570, line: 189, size: 192, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2725, file: !570, line: 189, baseType: !63, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2725, file: !570, line: 189, baseType: !63, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2725, file: !570, line: 189, baseType: !64, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2725, file: !570, line: 189, baseType: !64, size: 64, offset: 128)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2732 = !DILocalVariable(name: "stream", arg: 1, scope: !2721, file: !573, line: 196, type: !2610)
!2733 = !DILocalVariable(name: "command_name", arg: 2, scope: !2721, file: !573, line: 197, type: !34)
!2734 = !DILocalVariable(name: "package", arg: 3, scope: !2721, file: !573, line: 197, type: !34)
!2735 = !DILocalVariable(name: "version", arg: 4, scope: !2721, file: !573, line: 198, type: !34)
!2736 = !DILocalVariable(name: "authors", arg: 5, scope: !2721, file: !573, line: 198, type: !2724)
!2737 = !DILocalVariable(name: "n_authors", scope: !2721, file: !573, line: 200, type: !166)
!2738 = !DILocalVariable(name: "authtab", scope: !2721, file: !573, line: 201, type: !2739)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !175)
!2740 = !DILocation(line: 196, column: 23, scope: !2721)
!2741 = !DILocation(line: 197, column: 29, scope: !2721)
!2742 = !DILocation(line: 197, column: 55, scope: !2721)
!2743 = !DILocation(line: 198, column: 29, scope: !2721)
!2744 = !DILocation(line: 198, column: 46, scope: !2721)
!2745 = !DILocation(line: 201, column: 3, scope: !2721)
!2746 = !DILocation(line: 201, column: 15, scope: !2721)
!2747 = !DILocation(line: 200, column: 10, scope: !2721)
!2748 = !DILocation(line: 205, column: 35, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !573, line: 203, column: 3)
!2750 = distinct !DILexicalBlock(scope: !2721, file: !573, line: 203, column: 3)
!2751 = !DILocation(line: 205, column: 14, scope: !2749)
!2752 = !DILocation(line: 205, column: 33, scope: !2749)
!2753 = !DILocation(line: 205, column: 67, scope: !2749)
!2754 = !DILocation(line: 203, column: 3, scope: !2750)
!2755 = !DILocation(line: 208, column: 3, scope: !2721)
!2756 = !DILocation(line: 210, column: 1, scope: !2721)
!2757 = distinct !DISubprogram(name: "version_etc", scope: !573, file: !573, line: 227, type: !2758, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2610, !34, !34, !34, null}
!2760 = !{!2761, !2762, !2763, !2764, !2765}
!2761 = !DILocalVariable(name: "stream", arg: 1, scope: !2757, file: !573, line: 227, type: !2610)
!2762 = !DILocalVariable(name: "command_name", arg: 2, scope: !2757, file: !573, line: 228, type: !34)
!2763 = !DILocalVariable(name: "package", arg: 3, scope: !2757, file: !573, line: 228, type: !34)
!2764 = !DILocalVariable(name: "version", arg: 4, scope: !2757, file: !573, line: 229, type: !34)
!2765 = !DILocalVariable(name: "authors", scope: !2757, file: !573, line: 231, type: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2767, line: 46, baseType: !2768)
!2767 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2769, line: 48, baseType: !2770)
!2769 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !570, line: 231, baseType: !2771)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 192, elements: !828)
!2772 = !DILocation(line: 227, column: 20, scope: !2757)
!2773 = !DILocation(line: 228, column: 26, scope: !2757)
!2774 = !DILocation(line: 228, column: 52, scope: !2757)
!2775 = !DILocation(line: 229, column: 26, scope: !2757)
!2776 = !DILocation(line: 231, column: 3, scope: !2757)
!2777 = !DILocation(line: 231, column: 11, scope: !2757)
!2778 = !DILocation(line: 233, column: 3, scope: !2757)
!2779 = !DILocation(line: 234, column: 3, scope: !2757)
!2780 = !DILocation(line: 235, column: 3, scope: !2757)
!2781 = !DILocation(line: 236, column: 1, scope: !2757)
!2782 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !573, file: !573, line: 239, type: !641, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !101)
!2783 = !DILocation(line: 245, column: 3, scope: !2782)
!2784 = !DILocation(line: 251, column: 3, scope: !2782)
!2785 = !DILocation(line: 256, column: 3, scope: !2782)
!2786 = !DILocation(line: 258, column: 1, scope: !2782)
!2787 = distinct !DISubprogram(name: "xnmalloc", scope: !581, file: !581, line: 105, type: !2788, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!64, !166, !166}
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "n", arg: 1, scope: !2787, file: !581, line: 105, type: !166)
!2792 = !DILocalVariable(name: "s", arg: 2, scope: !2787, file: !581, line: 105, type: !166)
!2793 = !DILocation(line: 105, column: 18, scope: !2787)
!2794 = !DILocation(line: 105, column: 28, scope: !2787)
!2795 = !DILocation(line: 107, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2787, file: !581, line: 107, column: 7)
!2797 = !DILocation(line: 107, column: 7, scope: !2787)
!2798 = !DILocation(line: 108, column: 5, scope: !2796)
!2799 = !DILocation(line: 109, column: 21, scope: !2787)
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !2802, line: 39, type: !166)
!2801 = distinct !DISubprogram(name: "xmalloc", scope: !2802, file: !2802, line: 39, type: !2803, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2805)
!2802 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!64, !166}
!2805 = !{!2800, !2806}
!2806 = !DILocalVariable(name: "p", scope: !2801, file: !2802, line: 41, type: !64)
!2807 = !DILocation(line: 39, column: 17, scope: !2801, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 109, column: 10, scope: !2787)
!2809 = !DILocation(line: 41, column: 13, scope: !2801, inlinedAt: !2808)
!2810 = !DILocation(line: 41, column: 9, scope: !2801, inlinedAt: !2808)
!2811 = !DILocation(line: 42, column: 8, scope: !2812, inlinedAt: !2808)
!2812 = distinct !DILexicalBlock(scope: !2801, file: !2802, line: 42, column: 7)
!2813 = !DILocation(line: 42, column: 15, scope: !2812, inlinedAt: !2808)
!2814 = !DILocation(line: 42, column: 10, scope: !2812, inlinedAt: !2808)
!2815 = !DILocation(line: 43, column: 5, scope: !2812, inlinedAt: !2808)
!2816 = !DILocation(line: 109, column: 3, scope: !2787)
!2817 = !DILocation(line: 39, column: 17, scope: !2801)
!2818 = !DILocation(line: 41, column: 13, scope: !2801)
!2819 = !DILocation(line: 41, column: 9, scope: !2801)
!2820 = !DILocation(line: 42, column: 8, scope: !2812)
!2821 = !DILocation(line: 42, column: 15, scope: !2812)
!2822 = !DILocation(line: 42, column: 10, scope: !2812)
!2823 = !DILocation(line: 43, column: 5, scope: !2812)
!2824 = !DILocation(line: 44, column: 3, scope: !2801)
!2825 = distinct !DISubprogram(name: "xnrealloc", scope: !581, file: !581, line: 118, type: !2826, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!64, !64, !166, !166}
!2828 = !{!2829, !2830, !2831}
!2829 = !DILocalVariable(name: "p", arg: 1, scope: !2825, file: !581, line: 118, type: !64)
!2830 = !DILocalVariable(name: "n", arg: 2, scope: !2825, file: !581, line: 118, type: !166)
!2831 = !DILocalVariable(name: "s", arg: 3, scope: !2825, file: !581, line: 118, type: !166)
!2832 = !DILocation(line: 118, column: 18, scope: !2825)
!2833 = !DILocation(line: 118, column: 28, scope: !2825)
!2834 = !DILocation(line: 118, column: 38, scope: !2825)
!2835 = !DILocation(line: 120, column: 7, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2825, file: !581, line: 120, column: 7)
!2837 = !DILocation(line: 120, column: 7, scope: !2825)
!2838 = !DILocation(line: 121, column: 5, scope: !2836)
!2839 = !DILocation(line: 122, column: 25, scope: !2825)
!2840 = !DILocalVariable(name: "p", arg: 1, scope: !2841, file: !2802, line: 51, type: !64)
!2841 = distinct !DISubprogram(name: "xrealloc", scope: !2802, file: !2802, line: 51, type: !2842, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!64, !64, !166}
!2844 = !{!2840, !2845}
!2845 = !DILocalVariable(name: "n", arg: 2, scope: !2841, file: !2802, line: 51, type: !166)
!2846 = !DILocation(line: 51, column: 17, scope: !2841, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 122, column: 10, scope: !2825)
!2848 = !DILocation(line: 51, column: 27, scope: !2841, inlinedAt: !2847)
!2849 = !DILocation(line: 53, column: 8, scope: !2850, inlinedAt: !2847)
!2850 = distinct !DILexicalBlock(scope: !2841, file: !2802, line: 53, column: 7)
!2851 = !DILocation(line: 53, column: 13, scope: !2850, inlinedAt: !2847)
!2852 = !DILocation(line: 53, column: 10, scope: !2850, inlinedAt: !2847)
!2853 = !DILocation(line: 57, column: 7, scope: !2854, inlinedAt: !2847)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !2802, line: 54, column: 5)
!2855 = !DILocation(line: 58, column: 7, scope: !2854, inlinedAt: !2847)
!2856 = !DILocation(line: 61, column: 7, scope: !2841, inlinedAt: !2847)
!2857 = !DILocation(line: 62, column: 8, scope: !2858, inlinedAt: !2847)
!2858 = distinct !DILexicalBlock(scope: !2841, file: !2802, line: 62, column: 7)
!2859 = !DILocation(line: 62, column: 13, scope: !2858, inlinedAt: !2847)
!2860 = !DILocation(line: 62, column: 10, scope: !2858, inlinedAt: !2847)
!2861 = !DILocation(line: 63, column: 5, scope: !2858, inlinedAt: !2847)
!2862 = !DILocation(line: 122, column: 3, scope: !2825)
!2863 = !DILocation(line: 51, column: 17, scope: !2841)
!2864 = !DILocation(line: 51, column: 27, scope: !2841)
!2865 = !DILocation(line: 53, column: 8, scope: !2850)
!2866 = !DILocation(line: 53, column: 13, scope: !2850)
!2867 = !DILocation(line: 53, column: 10, scope: !2850)
!2868 = !DILocation(line: 57, column: 7, scope: !2854)
!2869 = !DILocation(line: 58, column: 7, scope: !2854)
!2870 = !DILocation(line: 61, column: 7, scope: !2841)
!2871 = !DILocation(line: 62, column: 8, scope: !2858)
!2872 = !DILocation(line: 62, column: 13, scope: !2858)
!2873 = !DILocation(line: 62, column: 10, scope: !2858)
!2874 = !DILocation(line: 63, column: 5, scope: !2858)
!2875 = !DILocation(line: 65, column: 1, scope: !2841)
!2876 = !DILocation(line: 180, column: 19, scope: !582)
!2877 = !DILocation(line: 180, column: 30, scope: !582)
!2878 = !DILocation(line: 180, column: 41, scope: !582)
!2879 = !DILocation(line: 182, column: 14, scope: !582)
!2880 = !DILocation(line: 182, column: 10, scope: !582)
!2881 = !DILocation(line: 184, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !582, file: !581, line: 184, column: 7)
!2883 = !DILocation(line: 184, column: 7, scope: !582)
!2884 = !DILocation(line: 186, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !581, line: 186, column: 11)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !581, line: 185, column: 5)
!2887 = !DILocation(line: 186, column: 11, scope: !2886)
!2888 = !DILocation(line: 194, column: 30, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !581, line: 187, column: 9)
!2890 = !DILocation(line: 195, column: 16, scope: !2889)
!2891 = !DILocation(line: 195, column: 13, scope: !2889)
!2892 = !DILocation(line: 196, column: 9, scope: !2889)
!2893 = !DILocation(line: 204, column: 69, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !581, line: 204, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2882, file: !581, line: 199, column: 5)
!2896 = !DILocation(line: 205, column: 11, scope: !2894)
!2897 = !DILocation(line: 204, column: 11, scope: !2895)
!2898 = !DILocation(line: 206, column: 9, scope: !2894)
!2899 = !DILocation(line: 210, column: 7, scope: !582)
!2900 = !DILocation(line: 211, column: 25, scope: !582)
!2901 = !DILocation(line: 51, column: 17, scope: !2841, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 211, column: 10, scope: !582)
!2903 = !DILocation(line: 51, column: 27, scope: !2841, inlinedAt: !2902)
!2904 = !DILocation(line: 53, column: 10, scope: !2850, inlinedAt: !2902)
!2905 = !DILocation(line: 207, column: 14, scope: !2895)
!2906 = !DILocation(line: 207, column: 18, scope: !2895)
!2907 = !DILocation(line: 207, column: 9, scope: !2895)
!2908 = !DILocation(line: 53, column: 8, scope: !2850, inlinedAt: !2902)
!2909 = !DILocation(line: 57, column: 7, scope: !2854, inlinedAt: !2902)
!2910 = !DILocation(line: 58, column: 7, scope: !2854, inlinedAt: !2902)
!2911 = !DILocation(line: 61, column: 7, scope: !2841, inlinedAt: !2902)
!2912 = !DILocation(line: 62, column: 8, scope: !2858, inlinedAt: !2902)
!2913 = !DILocation(line: 62, column: 13, scope: !2858, inlinedAt: !2902)
!2914 = !DILocation(line: 62, column: 10, scope: !2858, inlinedAt: !2902)
!2915 = !DILocation(line: 63, column: 5, scope: !2858, inlinedAt: !2902)
!2916 = !DILocation(line: 211, column: 3, scope: !582)
!2917 = distinct !DISubprogram(name: "xcharalloc", scope: !581, file: !581, line: 220, type: !1886, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2918)
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2917, file: !581, line: 220, type: !166)
!2920 = !DILocation(line: 220, column: 20, scope: !2917)
!2921 = !DILocation(line: 39, column: 17, scope: !2801, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 222, column: 10, scope: !2917)
!2923 = !DILocation(line: 41, column: 13, scope: !2801, inlinedAt: !2922)
!2924 = !DILocation(line: 41, column: 9, scope: !2801, inlinedAt: !2922)
!2925 = !DILocation(line: 42, column: 8, scope: !2812, inlinedAt: !2922)
!2926 = !DILocation(line: 42, column: 15, scope: !2812, inlinedAt: !2922)
!2927 = !DILocation(line: 42, column: 10, scope: !2812, inlinedAt: !2922)
!2928 = !DILocation(line: 43, column: 5, scope: !2812, inlinedAt: !2922)
!2929 = !DILocation(line: 222, column: 3, scope: !2917)
!2930 = distinct !DISubprogram(name: "x2realloc", scope: !2802, file: !2802, line: 74, type: !2931, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!64, !64, !585}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "p", arg: 1, scope: !2930, file: !2802, line: 74, type: !64)
!2935 = !DILocalVariable(name: "pn", arg: 2, scope: !2930, file: !2802, line: 74, type: !585)
!2936 = !DILocation(line: 74, column: 18, scope: !2930)
!2937 = !DILocation(line: 74, column: 29, scope: !2930)
!2938 = !DILocation(line: 180, column: 19, scope: !582, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 76, column: 10, scope: !2930)
!2940 = !DILocation(line: 180, column: 30, scope: !582, inlinedAt: !2939)
!2941 = !DILocation(line: 180, column: 41, scope: !582, inlinedAt: !2939)
!2942 = !DILocation(line: 182, column: 14, scope: !582, inlinedAt: !2939)
!2943 = !DILocation(line: 182, column: 10, scope: !582, inlinedAt: !2939)
!2944 = !DILocation(line: 184, column: 9, scope: !2882, inlinedAt: !2939)
!2945 = !DILocation(line: 184, column: 7, scope: !582, inlinedAt: !2939)
!2946 = !DILocation(line: 186, column: 13, scope: !2885, inlinedAt: !2939)
!2947 = !DILocation(line: 186, column: 11, scope: !2886, inlinedAt: !2939)
!2948 = !DILocation(line: 210, column: 7, scope: !582, inlinedAt: !2939)
!2949 = !DILocation(line: 51, column: 17, scope: !2841, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 211, column: 10, scope: !582, inlinedAt: !2939)
!2951 = !DILocation(line: 51, column: 27, scope: !2841, inlinedAt: !2950)
!2952 = !DILocation(line: 53, column: 10, scope: !2850, inlinedAt: !2950)
!2953 = !DILocation(line: 205, column: 11, scope: !2894, inlinedAt: !2939)
!2954 = !DILocation(line: 204, column: 11, scope: !2895, inlinedAt: !2939)
!2955 = !DILocation(line: 206, column: 9, scope: !2894, inlinedAt: !2939)
!2956 = !DILocation(line: 207, column: 14, scope: !2895, inlinedAt: !2939)
!2957 = !DILocation(line: 207, column: 18, scope: !2895, inlinedAt: !2939)
!2958 = !DILocation(line: 207, column: 9, scope: !2895, inlinedAt: !2939)
!2959 = !DILocation(line: 53, column: 8, scope: !2850, inlinedAt: !2950)
!2960 = !DILocation(line: 57, column: 7, scope: !2854, inlinedAt: !2950)
!2961 = !DILocation(line: 58, column: 7, scope: !2854, inlinedAt: !2950)
!2962 = !DILocation(line: 61, column: 7, scope: !2841, inlinedAt: !2950)
!2963 = !DILocation(line: 62, column: 8, scope: !2858, inlinedAt: !2950)
!2964 = !DILocation(line: 62, column: 13, scope: !2858, inlinedAt: !2950)
!2965 = !DILocation(line: 62, column: 10, scope: !2858, inlinedAt: !2950)
!2966 = !DILocation(line: 63, column: 5, scope: !2858, inlinedAt: !2950)
!2967 = !DILocation(line: 76, column: 3, scope: !2930)
!2968 = distinct !DISubprogram(name: "xzalloc", scope: !2802, file: !2802, line: 84, type: !2803, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2969)
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "s", arg: 1, scope: !2968, file: !2802, line: 84, type: !166)
!2971 = !DILocation(line: 84, column: 17, scope: !2968)
!2972 = !DILocation(line: 39, column: 17, scope: !2801, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 86, column: 18, scope: !2968)
!2974 = !DILocation(line: 41, column: 13, scope: !2801, inlinedAt: !2973)
!2975 = !DILocation(line: 41, column: 9, scope: !2801, inlinedAt: !2973)
!2976 = !DILocation(line: 42, column: 8, scope: !2812, inlinedAt: !2973)
!2977 = !DILocation(line: 42, column: 15, scope: !2812, inlinedAt: !2973)
!2978 = !DILocation(line: 42, column: 10, scope: !2812, inlinedAt: !2973)
!2979 = !DILocation(line: 43, column: 5, scope: !2812, inlinedAt: !2973)
!2980 = !DILocation(line: 86, column: 10, scope: !2968)
!2981 = !DILocation(line: 86, column: 3, scope: !2968)
!2982 = distinct !DISubprogram(name: "xcalloc", scope: !2802, file: !2802, line: 93, type: !2788, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !2983)
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !2802, line: 93, type: !166)
!2985 = !DILocalVariable(name: "s", arg: 2, scope: !2982, file: !2802, line: 93, type: !166)
!2986 = !DILocalVariable(name: "p", scope: !2982, file: !2802, line: 95, type: !64)
!2987 = !DILocation(line: 93, column: 17, scope: !2982)
!2988 = !DILocation(line: 93, column: 27, scope: !2982)
!2989 = !DILocation(line: 100, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2982, file: !2802, line: 100, column: 7)
!2991 = !DILocation(line: 101, column: 7, scope: !2990)
!2992 = !DILocation(line: 101, column: 18, scope: !2990)
!2993 = !DILocation(line: 95, column: 9, scope: !2982)
!2994 = !DILocation(line: 101, column: 16, scope: !2990)
!2995 = !DILocation(line: 100, column: 7, scope: !2982)
!2996 = !DILocation(line: 102, column: 5, scope: !2990)
!2997 = !DILocation(line: 103, column: 3, scope: !2982)
!2998 = distinct !DISubprogram(name: "xmemdup", scope: !2802, file: !2802, line: 111, type: !2999, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3003)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!64, !3001, !166}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3003 = !{!3004, !3005}
!3004 = !DILocalVariable(name: "p", arg: 1, scope: !2998, file: !2802, line: 111, type: !3001)
!3005 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !2802, line: 111, type: !166)
!3006 = !DILocation(line: 111, column: 22, scope: !2998)
!3007 = !DILocation(line: 111, column: 32, scope: !2998)
!3008 = !DILocation(line: 39, column: 17, scope: !2801, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 113, column: 18, scope: !2998)
!3010 = !DILocation(line: 41, column: 13, scope: !2801, inlinedAt: !3009)
!3011 = !DILocation(line: 41, column: 9, scope: !2801, inlinedAt: !3009)
!3012 = !DILocation(line: 42, column: 8, scope: !2812, inlinedAt: !3009)
!3013 = !DILocation(line: 42, column: 15, scope: !2812, inlinedAt: !3009)
!3014 = !DILocation(line: 42, column: 10, scope: !2812, inlinedAt: !3009)
!3015 = !DILocation(line: 43, column: 5, scope: !2812, inlinedAt: !3009)
!3016 = !DILocation(line: 113, column: 10, scope: !2998)
!3017 = !DILocation(line: 113, column: 3, scope: !2998)
!3018 = distinct !DISubprogram(name: "xstrdup", scope: !2802, file: !2802, line: 119, type: !2086, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3019)
!3019 = !{!3020}
!3020 = !DILocalVariable(name: "string", arg: 1, scope: !3018, file: !2802, line: 119, type: !34)
!3021 = !DILocation(line: 119, column: 22, scope: !3018)
!3022 = !DILocation(line: 121, column: 27, scope: !3018)
!3023 = !DILocation(line: 121, column: 43, scope: !3018)
!3024 = !DILocation(line: 111, column: 22, scope: !2998, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 121, column: 10, scope: !3018)
!3026 = !DILocation(line: 111, column: 32, scope: !2998, inlinedAt: !3025)
!3027 = !DILocation(line: 39, column: 17, scope: !2801, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 113, column: 18, scope: !2998, inlinedAt: !3025)
!3029 = !DILocation(line: 41, column: 13, scope: !2801, inlinedAt: !3028)
!3030 = !DILocation(line: 41, column: 9, scope: !2801, inlinedAt: !3028)
!3031 = !DILocation(line: 42, column: 8, scope: !2812, inlinedAt: !3028)
!3032 = !DILocation(line: 42, column: 15, scope: !2812, inlinedAt: !3028)
!3033 = !DILocation(line: 42, column: 10, scope: !2812, inlinedAt: !3028)
!3034 = !DILocation(line: 43, column: 5, scope: !2812, inlinedAt: !3028)
!3035 = !DILocation(line: 113, column: 10, scope: !2998, inlinedAt: !3025)
!3036 = !DILocation(line: 121, column: 3, scope: !3018)
!3037 = distinct !DISubprogram(name: "xalloc_die", scope: !3038, file: !3038, line: 32, type: !641, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !594, variables: !101)
!3038 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3039 = !DILocation(line: 34, column: 10, scope: !3037)
!3040 = !DILocation(line: 34, column: 33, scope: !3037)
!3041 = !DILocation(line: 34, column: 3, scope: !3037)
!3042 = !DILocation(line: 40, column: 3, scope: !3037)
!3043 = distinct !DISubprogram(name: "xstrtol", scope: !3044, file: !3044, line: 88, type: !3045, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3049)
!3044 = !DIFile(filename: "lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!3047, !34, !25, !24, !3048, !34}
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !13, line: 39, baseType: !12)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3062, !3063}
!3050 = !DILocalVariable(name: "s", arg: 1, scope: !3043, file: !3044, line: 88, type: !34)
!3051 = !DILocalVariable(name: "ptr", arg: 2, scope: !3043, file: !3044, line: 88, type: !25)
!3052 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3043, file: !3044, line: 88, type: !24)
!3053 = !DILocalVariable(name: "val", arg: 4, scope: !3043, file: !3044, line: 89, type: !3048)
!3054 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3043, file: !3044, line: 89, type: !34)
!3055 = !DILocalVariable(name: "t_ptr", scope: !3043, file: !3044, line: 91, type: !26)
!3056 = !DILocalVariable(name: "p", scope: !3043, file: !3044, line: 92, type: !25)
!3057 = !DILocalVariable(name: "tmp", scope: !3043, file: !3044, line: 93, type: !51)
!3058 = !DILocalVariable(name: "err", scope: !3043, file: !3044, line: 94, type: !3047)
!3059 = !DILocalVariable(name: "base", scope: !3060, file: !3044, line: 141, type: !24)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !3044, line: 140, column: 5)
!3061 = distinct !DILexicalBlock(scope: !3043, file: !3044, line: 139, column: 7)
!3062 = !DILocalVariable(name: "suffixes", scope: !3060, file: !3044, line: 142, type: !24)
!3063 = !DILocalVariable(name: "overflow", scope: !3060, file: !3044, line: 143, type: !3047)
!3064 = !DILocation(line: 88, column: 24, scope: !3043)
!3065 = !DILocation(line: 88, column: 34, scope: !3043)
!3066 = !DILocation(line: 88, column: 43, scope: !3043)
!3067 = !DILocation(line: 89, column: 24, scope: !3043)
!3068 = !DILocation(line: 89, column: 41, scope: !3043)
!3069 = !DILocation(line: 91, column: 3, scope: !3043)
!3070 = !DILocation(line: 94, column: 16, scope: !3043)
!3071 = !DILocation(line: 96, column: 3, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3044, line: 96, column: 3)
!3073 = distinct !DILexicalBlock(scope: !3043, file: !3044, line: 96, column: 3)
!3074 = !DILocation(line: 98, column: 8, scope: !3043)
!3075 = !DILocation(line: 92, column: 10, scope: !3043)
!3076 = !DILocation(line: 100, column: 3, scope: !3043)
!3077 = !DILocation(line: 100, column: 9, scope: !3043)
!3078 = !DILocation(line: 112, column: 9, scope: !3043)
!3079 = !DILocation(line: 93, column: 14, scope: !3043)
!3080 = !DILocation(line: 114, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3043, file: !3044, line: 114, column: 7)
!3082 = !DILocation(line: 114, column: 10, scope: !3081)
!3083 = !DILocation(line: 114, column: 7, scope: !3043)
!3084 = !DILocation(line: 118, column: 11, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3044, line: 118, column: 11)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !3044, line: 115, column: 5)
!3087 = !DILocation(line: 118, column: 26, scope: !3085)
!3088 = !DILocation(line: 118, column: 29, scope: !3085)
!3089 = !DILocation(line: 118, column: 33, scope: !3085)
!3090 = !DILocation(line: 118, column: 36, scope: !3085)
!3091 = !DILocation(line: 118, column: 11, scope: !3086)
!3092 = !DILocation(line: 123, column: 12, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3081, file: !3044, line: 123, column: 12)
!3094 = !DILocation(line: 123, column: 12, scope: !3081)
!3095 = !DILocation(line: 128, column: 5, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !3044, line: 124, column: 5)
!3097 = !DILocation(line: 133, column: 8, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3043, file: !3044, line: 133, column: 7)
!3099 = !DILocation(line: 133, column: 7, scope: !3043)
!3100 = !DILocation(line: 135, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !3044, line: 134, column: 5)
!3102 = !DILocation(line: 136, column: 7, scope: !3101)
!3103 = !DILocation(line: 139, column: 7, scope: !3061)
!3104 = !DILocation(line: 139, column: 11, scope: !3061)
!3105 = !DILocation(line: 139, column: 7, scope: !3043)
!3106 = !DILocation(line: 141, column: 11, scope: !3060)
!3107 = !DILocation(line: 142, column: 11, scope: !3060)
!3108 = !DILocation(line: 145, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3060, file: !3044, line: 145, column: 11)
!3110 = !DILocation(line: 145, column: 11, scope: !3060)
!3111 = !DILocation(line: 147, column: 16, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3044, line: 146, column: 9)
!3113 = !DILocation(line: 148, column: 22, scope: !3112)
!3114 = !DILocation(line: 148, column: 11, scope: !3112)
!3115 = !DILocation(line: 151, column: 7, scope: !3060)
!3116 = !DILocation(line: 163, column: 15, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !3044, line: 163, column: 15)
!3118 = distinct !DILexicalBlock(scope: !3060, file: !3044, line: 152, column: 9)
!3119 = !DILocation(line: 163, column: 15, scope: !3118)
!3120 = !DILocation(line: 164, column: 21, scope: !3117)
!3121 = !DILocation(line: 164, column: 13, scope: !3117)
!3122 = !DILocation(line: 167, column: 21, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3044, line: 167, column: 21)
!3124 = distinct !DILexicalBlock(scope: !3117, file: !3044, line: 165, column: 15)
!3125 = !DILocation(line: 167, column: 29, scope: !3123)
!3126 = !DILocation(line: 167, column: 21, scope: !3124)
!3127 = !DILocation(line: 175, column: 17, scope: !3124)
!3128 = !DILocation(line: 179, column: 7, scope: !3060)
!3129 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3130, file: !3044, line: 60, type: !24)
!3130 = distinct !DISubprogram(name: "bkm_scale", scope: !3044, file: !3044, line: 60, type: !3131, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!3047, !3048, !24}
!3133 = !{!3134, !3129}
!3134 = !DILocalVariable(name: "x", arg: 1, scope: !3130, file: !3044, line: 60, type: !3048)
!3135 = !DILocation(line: 60, column: 31, scope: !3130, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 182, column: 22, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3060, file: !3044, line: 180, column: 9)
!3138 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3136)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !3044, line: 62, column: 7)
!3140 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3136)
!3141 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3136)
!3142 = distinct !DILexicalBlock(scope: !3130, file: !3044, line: 67, column: 7)
!3143 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3136)
!3144 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3136)
!3145 = !DILocation(line: 60, column: 31, scope: !3130, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 189, column: 22, scope: !3137)
!3147 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3146)
!3148 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3146)
!3149 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3146)
!3150 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3146)
!3151 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3146)
!3152 = !DILocalVariable(name: "power", arg: 3, scope: !3153, file: !3044, line: 77, type: !24)
!3153 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3044, file: !3044, line: 77, type: !3154, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3047, !3048, !24, !24}
!3156 = !{!3157, !3158, !3152, !3159}
!3157 = !DILocalVariable(name: "x", arg: 1, scope: !3153, file: !3044, line: 77, type: !3048)
!3158 = !DILocalVariable(name: "base", arg: 2, scope: !3153, file: !3044, line: 77, type: !24)
!3159 = !DILocalVariable(name: "err", scope: !3153, file: !3044, line: 79, type: !3047)
!3160 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 197, column: 22, scope: !3137)
!3162 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3161)
!3163 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3161)
!3165 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3164)
!3166 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3164)
!3167 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3164)
!3168 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3164)
!3169 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3164)
!3170 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 202, column: 22, scope: !3137)
!3172 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3171)
!3173 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3171)
!3175 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3174)
!3176 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3174)
!3177 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3174)
!3178 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3174)
!3179 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3174)
!3180 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 207, column: 22, scope: !3137)
!3182 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3181)
!3183 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3181)
!3185 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3184)
!3186 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3184)
!3187 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3184)
!3188 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3184)
!3189 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3184)
!3190 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 212, column: 22, scope: !3137)
!3192 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3191)
!3193 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3191)
!3195 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3194)
!3196 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3194)
!3197 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3194)
!3198 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3194)
!3199 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3194)
!3200 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 216, column: 22, scope: !3137)
!3202 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3201)
!3203 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3201)
!3205 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3204)
!3206 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3204)
!3207 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3204)
!3208 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3204)
!3209 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3204)
!3210 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 221, column: 22, scope: !3137)
!3212 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3211)
!3213 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3211)
!3215 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3214)
!3216 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3214)
!3217 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3214)
!3218 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3214)
!3219 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3214)
!3220 = !DILocation(line: 60, column: 31, scope: !3130, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 225, column: 22, scope: !3137)
!3222 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3221)
!3223 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3221)
!3224 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3221)
!3225 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3221)
!3226 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3221)
!3227 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 229, column: 22, scope: !3137)
!3229 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3228)
!3230 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3228)
!3232 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3231)
!3233 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3231)
!3234 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3231)
!3235 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3231)
!3236 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3231)
!3237 = !DILocation(line: 77, column: 50, scope: !3153, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 233, column: 22, scope: !3137)
!3239 = !DILocation(line: 79, column: 16, scope: !3153, inlinedAt: !3238)
!3240 = !DILocation(line: 62, column: 38, scope: !3139, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 81, column: 12, scope: !3153, inlinedAt: !3238)
!3242 = !DILocation(line: 62, column: 7, scope: !3130, inlinedAt: !3241)
!3243 = !DILocation(line: 67, column: 24, scope: !3142, inlinedAt: !3241)
!3244 = !DILocation(line: 67, column: 39, scope: !3142, inlinedAt: !3241)
!3245 = !DILocation(line: 72, column: 6, scope: !3130, inlinedAt: !3241)
!3246 = !DILocation(line: 67, column: 7, scope: !3130, inlinedAt: !3241)
!3247 = !DILocation(line: 237, column: 16, scope: !3137)
!3248 = !DILocation(line: 238, column: 22, scope: !3137)
!3249 = !DILocation(line: 238, column: 11, scope: !3137)
!3250 = !DILocation(line: 143, column: 20, scope: !3060)
!3251 = !DILocation(line: 241, column: 11, scope: !3060)
!3252 = !DILocation(line: 242, column: 10, scope: !3060)
!3253 = !DILocation(line: 243, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3060, file: !3044, line: 243, column: 11)
!3255 = !DILocation(line: 244, column: 13, scope: !3254)
!3256 = !DILocation(line: 243, column: 11, scope: !3060)
!3257 = !DILocation(line: 247, column: 8, scope: !3043)
!3258 = !DILocation(line: 248, column: 3, scope: !3043)
!3259 = !DILocation(line: 249, column: 1, scope: !3043)
!3260 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3161)
!3261 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3171)
!3262 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3191)
!3263 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3201)
!3264 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3211)
!3265 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3228)
!3266 = !DILocation(line: 81, column: 9, scope: !3153, inlinedAt: !3238)
!3267 = distinct !DISubprogram(name: "rpl_calloc", scope: !3268, file: !3268, line: 42, type: !2788, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3269)
!3268 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !3268, line: 42, type: !166)
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !3268, line: 42, type: !166)
!3272 = !DILocalVariable(name: "result", scope: !3267, file: !3268, line: 44, type: !64)
!3273 = !DILocalVariable(name: "bytes", scope: !3274, file: !3268, line: 56, type: !166)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3268, line: 53, column: 5)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !3268, line: 47, column: 7)
!3276 = !DILocation(line: 42, column: 20, scope: !3267)
!3277 = !DILocation(line: 42, column: 30, scope: !3267)
!3278 = !DILocation(line: 47, column: 9, scope: !3275)
!3279 = !DILocation(line: 47, column: 19, scope: !3275)
!3280 = !DILocation(line: 47, column: 14, scope: !3275)
!3281 = !DILocation(line: 56, column: 24, scope: !3274)
!3282 = !DILocation(line: 56, column: 14, scope: !3274)
!3283 = !DILocation(line: 57, column: 17, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3274, file: !3268, line: 57, column: 11)
!3285 = !DILocation(line: 57, column: 21, scope: !3284)
!3286 = !DILocation(line: 57, column: 11, scope: !3274)
!3287 = !DILocation(line: 59, column: 11, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3284, file: !3268, line: 58, column: 9)
!3289 = !DILocation(line: 59, column: 17, scope: !3288)
!3290 = !DILocation(line: 65, column: 12, scope: !3267)
!3291 = !DILocation(line: 44, column: 9, scope: !3267)
!3292 = !DILocation(line: 72, column: 3, scope: !3267)
!3293 = !DILocation(line: 73, column: 1, scope: !3267)
!3294 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3295, file: !3295, line: 334, type: !3296, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3310)
!3295 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!166, !3298, !34, !166, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1140, line: 6, baseType: !3301)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1142, line: 21, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 13, size: 64, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3302, file: !1142, line: 15, baseType: !24, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3302, file: !1142, line: 20, baseType: !3306, size: 32, offset: 32)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3302, file: !1142, line: 16, size: 32, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3306, file: !1142, line: 18, baseType: !63, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3306, file: !1142, line: 19, baseType: !1151, size: 32)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3311 = !DILocalVariable(name: "pwc", arg: 1, scope: !3294, file: !3295, line: 334, type: !3298)
!3312 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !3295, line: 334, type: !34)
!3313 = !DILocalVariable(name: "n", arg: 3, scope: !3294, file: !3295, line: 334, type: !166)
!3314 = !DILocalVariable(name: "ps", arg: 4, scope: !3294, file: !3295, line: 334, type: !3299)
!3315 = !DILocalVariable(name: "ret", scope: !3294, file: !3295, line: 336, type: !166)
!3316 = !DILocalVariable(name: "wc", scope: !3294, file: !3295, line: 337, type: !1154)
!3317 = !DILocalVariable(name: "uc", scope: !3318, file: !3295, line: 398, type: !565)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3295, line: 397, column: 5)
!3319 = distinct !DILexicalBlock(scope: !3294, file: !3295, line: 396, column: 7)
!3320 = !DILocation(line: 334, column: 23, scope: !3294)
!3321 = !DILocation(line: 334, column: 40, scope: !3294)
!3322 = !DILocation(line: 334, column: 50, scope: !3294)
!3323 = !DILocation(line: 334, column: 64, scope: !3294)
!3324 = !DILocation(line: 337, column: 3, scope: !3294)
!3325 = !DILocation(line: 353, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3294, file: !3295, line: 353, column: 7)
!3327 = !DILocation(line: 353, column: 7, scope: !3294)
!3328 = !DILocation(line: 388, column: 9, scope: !3294)
!3329 = !DILocation(line: 336, column: 10, scope: !3294)
!3330 = !DILocation(line: 396, column: 19, scope: !3319)
!3331 = !DILocation(line: 396, column: 31, scope: !3319)
!3332 = !DILocation(line: 396, column: 26, scope: !3319)
!3333 = !DILocation(line: 396, column: 41, scope: !3319)
!3334 = !DILocation(line: 396, column: 7, scope: !3294)
!3335 = !DILocation(line: 398, column: 26, scope: !3318)
!3336 = !DILocation(line: 398, column: 21, scope: !3318)
!3337 = !DILocation(line: 399, column: 14, scope: !3318)
!3338 = !DILocation(line: 399, column: 12, scope: !3318)
!3339 = !DILocation(line: 405, column: 1, scope: !3294)
!3340 = distinct !DISubprogram(name: "close_stream", scope: !3341, file: !3341, line: 56, type: !3342, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !3384)
!3341 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!24, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3346, file: !795, line: 242, baseType: !24, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3346, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3346, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3346, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3346, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3346, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3346, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3346, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3346, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3346, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3346, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3346, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3346, file: !795, line: 260, baseType: !3361, size: 64, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !3363)
!3363 = !{!3364, !3365, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3362, file: !795, line: 157, baseType: !3361, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3362, file: !795, line: 158, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3362, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3346, file: !795, line: 262, baseType: !3366, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3346, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3346, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3346, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3346, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3346, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3346, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3346, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3346, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3346, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3346, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3346, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3346, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3346, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3346, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3346, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!3384 = !{!3385, !3386, !3388, !3389}
!3385 = !DILocalVariable(name: "stream", arg: 1, scope: !3340, file: !3341, line: 56, type: !3344)
!3386 = !DILocalVariable(name: "some_pending", scope: !3340, file: !3341, line: 58, type: !3387)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3388 = !DILocalVariable(name: "prev_fail", scope: !3340, file: !3341, line: 59, type: !3387)
!3389 = !DILocalVariable(name: "fclose_fail", scope: !3340, file: !3341, line: 60, type: !3387)
!3390 = !DILocation(line: 56, column: 21, scope: !3340)
!3391 = !DILocation(line: 58, column: 30, scope: !3340)
!3392 = !DILocalVariable(name: "__stream", arg: 1, scope: !3393, file: !788, line: 132, type: !3344)
!3393 = distinct !DISubprogram(name: "ferror_unlocked", scope: !788, file: !788, line: 132, type: !3342, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !3394)
!3394 = !{!3392}
!3395 = !DILocation(line: 132, column: 1, scope: !3393, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 59, column: 27, scope: !3340)
!3397 = !DILocation(line: 134, column: 10, scope: !3393, inlinedAt: !3396)
!3398 = !DILocation(line: 59, column: 43, scope: !3340)
!3399 = !DILocation(line: 60, column: 29, scope: !3340)
!3400 = !DILocation(line: 60, column: 45, scope: !3340)
!3401 = !DILocation(line: 70, column: 17, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 70, column: 7)
!3403 = !DILocation(line: 58, column: 50, scope: !3340)
!3404 = !DILocation(line: 70, column: 33, scope: !3402)
!3405 = !DILocation(line: 70, column: 53, scope: !3402)
!3406 = !DILocation(line: 70, column: 59, scope: !3402)
!3407 = !DILocation(line: 70, column: 7, scope: !3340)
!3408 = !DILocation(line: 72, column: 11, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3402, file: !3341, line: 71, column: 5)
!3410 = !DILocation(line: 73, column: 9, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3409, file: !3341, line: 72, column: 11)
!3412 = !DILocation(line: 73, column: 15, scope: !3411)
!3413 = !DILocation(line: 78, column: 1, scope: !3340)
!3414 = distinct !DISubprogram(name: "hard_locale", scope: !3415, file: !3415, line: 38, type: !773, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3416)
!3415 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3416 = !{!3417, !3418, !3419}
!3417 = !DILocalVariable(name: "category", arg: 1, scope: !3414, file: !3415, line: 38, type: !24)
!3418 = !DILocalVariable(name: "hard", scope: !3414, file: !3415, line: 40, type: !37)
!3419 = !DILocalVariable(name: "p", scope: !3414, file: !3415, line: 41, type: !34)
!3420 = !DILocation(line: 38, column: 18, scope: !3414)
!3421 = !DILocation(line: 40, column: 8, scope: !3414)
!3422 = !DILocation(line: 41, column: 19, scope: !3414)
!3423 = !DILocation(line: 41, column: 15, scope: !3414)
!3424 = !DILocation(line: 43, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3414, file: !3415, line: 43, column: 7)
!3426 = !DILocation(line: 43, column: 7, scope: !3414)
!3427 = !DILocation(line: 47, column: 15, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3415, line: 47, column: 15)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3415, line: 46, column: 9)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !3415, line: 45, column: 11)
!3431 = distinct !DILexicalBlock(scope: !3425, file: !3415, line: 44, column: 5)
!3432 = !DILocation(line: 47, column: 31, scope: !3428)
!3433 = !DILocation(line: 47, column: 36, scope: !3428)
!3434 = !DILocation(line: 47, column: 39, scope: !3428)
!3435 = !DILocation(line: 47, column: 59, scope: !3428)
!3436 = !DILocation(line: 47, column: 15, scope: !3429)
!3437 = !DILocation(line: 48, column: 13, scope: !3428)
!3438 = !DILocation(line: 71, column: 3, scope: !3414)
!3439 = distinct !DISubprogram(name: "locale_charset", scope: !567, file: !567, line: 393, type: !3440, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!34}
!3442 = !{!3443, !3444}
!3443 = !DILocalVariable(name: "codeset", scope: !3439, file: !567, line: 395, type: !34)
!3444 = !DILocalVariable(name: "aliases", scope: !3439, file: !567, line: 396, type: !34)
!3445 = !DILocalVariable(name: "buf1", scope: !3446, file: !567, line: 196, type: !3513)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !567, line: 194, column: 21)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !567, line: 193, column: 19)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !567, line: 193, column: 19)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !567, line: 188, column: 17)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !567, line: 181, column: 19)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !567, line: 177, column: 13)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !567, line: 173, column: 15)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !567, line: 161, column: 9)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !567, line: 157, column: 11)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !567, line: 130, column: 5)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !567, line: 129, column: 7)
!3457 = distinct !DISubprogram(name: "get_charset_aliases", scope: !567, file: !567, line: 124, type: !3440, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3465, !3466, !3467, !3468, !3509, !3510, !3511, !3445, !3512, !3516, !3517, !3518}
!3459 = !DILocalVariable(name: "cp", scope: !3457, file: !567, line: 126, type: !34)
!3460 = !DILocalVariable(name: "dir", scope: !3455, file: !567, line: 132, type: !34)
!3461 = !DILocalVariable(name: "base", scope: !3455, file: !567, line: 133, type: !34)
!3462 = !DILocalVariable(name: "file_name", scope: !3455, file: !567, line: 134, type: !26)
!3463 = !DILocalVariable(name: "dir_len", scope: !3464, file: !567, line: 144, type: !166)
!3464 = distinct !DILexicalBlock(scope: !3455, file: !567, line: 143, column: 7)
!3465 = !DILocalVariable(name: "base_len", scope: !3464, file: !567, line: 145, type: !166)
!3466 = !DILocalVariable(name: "add_slash", scope: !3464, file: !567, line: 146, type: !24)
!3467 = !DILocalVariable(name: "fd", scope: !3453, file: !567, line: 162, type: !24)
!3468 = !DILocalVariable(name: "fp", scope: !3451, file: !567, line: 178, type: !3469)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3471, file: !795, line: 242, baseType: !24, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3471, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3471, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3471, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3471, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3471, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3471, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3471, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3471, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3471, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3471, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3471, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3471, file: !795, line: 260, baseType: !3486, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !3488)
!3488 = !{!3489, !3490, !3492}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3487, file: !795, line: 157, baseType: !3486, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3487, file: !795, line: 158, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3487, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3471, file: !795, line: 262, baseType: !3491, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3471, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3471, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3471, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3471, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3471, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3471, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3471, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3471, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3471, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3471, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3471, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3471, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3471, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3471, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3471, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!3509 = !DILocalVariable(name: "res_ptr", scope: !3449, file: !567, line: 190, type: !26)
!3510 = !DILocalVariable(name: "res_size", scope: !3449, file: !567, line: 191, type: !166)
!3511 = !DILocalVariable(name: "c", scope: !3446, file: !567, line: 195, type: !24)
!3512 = !DILocalVariable(name: "buf2", scope: !3446, file: !567, line: 197, type: !3513)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !3514)
!3514 = !{!3515}
!3515 = !DISubrange(count: 51)
!3516 = !DILocalVariable(name: "l1", scope: !3446, file: !567, line: 198, type: !166)
!3517 = !DILocalVariable(name: "l2", scope: !3446, file: !567, line: 198, type: !166)
!3518 = !DILocalVariable(name: "old_res_ptr", scope: !3446, file: !567, line: 199, type: !26)
!3519 = !DILocation(line: 196, column: 28, scope: !3446, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 589, column: 18, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3439, file: !567, line: 589, column: 3)
!3522 = !DILocation(line: 197, column: 28, scope: !3446, inlinedAt: !3520)
!3523 = !DILocation(line: 403, column: 13, scope: !3439)
!3524 = !DILocation(line: 395, column: 15, scope: !3439)
!3525 = !DILocation(line: 584, column: 15, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3439, file: !567, line: 584, column: 7)
!3527 = !DILocation(line: 584, column: 7, scope: !3439)
!3528 = !DILocation(line: 128, column: 8, scope: !3457, inlinedAt: !3520)
!3529 = !DILocation(line: 126, column: 15, scope: !3457, inlinedAt: !3520)
!3530 = !DILocation(line: 129, column: 10, scope: !3456, inlinedAt: !3520)
!3531 = !DILocation(line: 129, column: 7, scope: !3457, inlinedAt: !3520)
!3532 = !DILocation(line: 138, column: 13, scope: !3455, inlinedAt: !3520)
!3533 = !DILocation(line: 132, column: 19, scope: !3455, inlinedAt: !3520)
!3534 = !DILocation(line: 139, column: 15, scope: !3535, inlinedAt: !3520)
!3535 = distinct !DILexicalBlock(scope: !3455, file: !567, line: 139, column: 11)
!3536 = !DILocation(line: 139, column: 23, scope: !3535, inlinedAt: !3520)
!3537 = !DILocation(line: 139, column: 26, scope: !3535, inlinedAt: !3520)
!3538 = !DILocation(line: 139, column: 33, scope: !3535, inlinedAt: !3520)
!3539 = !DILocation(line: 139, column: 11, scope: !3455, inlinedAt: !3520)
!3540 = !DILocation(line: 140, column: 9, scope: !3535, inlinedAt: !3520)
!3541 = !DILocation(line: 144, column: 26, scope: !3464, inlinedAt: !3520)
!3542 = !DILocation(line: 144, column: 16, scope: !3464, inlinedAt: !3520)
!3543 = !DILocation(line: 145, column: 16, scope: !3464, inlinedAt: !3520)
!3544 = !DILocation(line: 146, column: 34, scope: !3464, inlinedAt: !3520)
!3545 = !DILocation(line: 146, column: 38, scope: !3464, inlinedAt: !3520)
!3546 = !DILocation(line: 146, column: 42, scope: !3464, inlinedAt: !3520)
!3547 = !DILocation(line: 147, column: 48, scope: !3464, inlinedAt: !3520)
!3548 = !DILocation(line: 147, column: 46, scope: !3464, inlinedAt: !3520)
!3549 = !DILocation(line: 147, column: 69, scope: !3464, inlinedAt: !3520)
!3550 = !DILocation(line: 147, column: 30, scope: !3464, inlinedAt: !3520)
!3551 = !DILocation(line: 134, column: 13, scope: !3455, inlinedAt: !3520)
!3552 = !DILocation(line: 148, column: 13, scope: !3464, inlinedAt: !3520)
!3553 = !DILocation(line: 150, column: 13, scope: !3554, inlinedAt: !3520)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !567, line: 149, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3464, file: !567, line: 148, column: 13)
!3556 = !DILocation(line: 151, column: 17, scope: !3554, inlinedAt: !3520)
!3557 = !DILocation(line: 152, column: 34, scope: !3558, inlinedAt: !3520)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !567, line: 151, column: 17)
!3559 = !DILocation(line: 153, column: 41, scope: !3554, inlinedAt: !3520)
!3560 = !DILocation(line: 153, column: 13, scope: !3554, inlinedAt: !3520)
!3561 = !DILocation(line: 157, column: 11, scope: !3455, inlinedAt: !3520)
!3562 = !DILocation(line: 171, column: 16, scope: !3453, inlinedAt: !3520)
!3563 = !DILocation(line: 162, column: 15, scope: !3453, inlinedAt: !3520)
!3564 = !DILocation(line: 173, column: 18, scope: !3452, inlinedAt: !3520)
!3565 = !DILocation(line: 173, column: 15, scope: !3453, inlinedAt: !3520)
!3566 = !DILocation(line: 180, column: 20, scope: !3451, inlinedAt: !3520)
!3567 = !DILocation(line: 178, column: 21, scope: !3451, inlinedAt: !3520)
!3568 = !DILocation(line: 181, column: 22, scope: !3450, inlinedAt: !3520)
!3569 = !DILocation(line: 181, column: 19, scope: !3451, inlinedAt: !3520)
!3570 = !DILocation(line: 184, column: 19, scope: !3571, inlinedAt: !3520)
!3571 = distinct !DILexicalBlock(scope: !3450, file: !567, line: 182, column: 17)
!3572 = !DILocation(line: 186, column: 17, scope: !3571, inlinedAt: !3520)
!3573 = !DILocation(line: 190, column: 25, scope: !3449, inlinedAt: !3520)
!3574 = !DILocation(line: 191, column: 26, scope: !3449, inlinedAt: !3520)
!3575 = !DILocation(line: 193, column: 19, scope: !3449, inlinedAt: !3520)
!3576 = !DILocation(line: 196, column: 23, scope: !3446, inlinedAt: !3520)
!3577 = !DILocation(line: 197, column: 23, scope: !3446, inlinedAt: !3520)
!3578 = !DILocalVariable(name: "__fp", arg: 1, scope: !3579, file: !788, line: 63, type: !3469)
!3579 = distinct !DISubprogram(name: "getc_unlocked", scope: !788, file: !788, line: 63, type: !3580, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!24, !3469}
!3582 = !{!3578}
!3583 = !DILocation(line: 63, column: 22, scope: !3579, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 201, column: 27, scope: !3446, inlinedAt: !3520)
!3585 = !DILocation(line: 65, column: 10, scope: !3579, inlinedAt: !3584)
!3586 = !{!850, !633, i64 8}
!3587 = !{!850, !633, i64 16}
!3588 = !{!"branch_weights", i32 2000, i32 1}
!3589 = !DILocation(line: 195, column: 27, scope: !3446, inlinedAt: !3520)
!3590 = !DILocation(line: 202, column: 27, scope: !3446, inlinedAt: !3520)
!3591 = distinct !{!3591, !3592, !3595}
!3592 = !DILocation(line: 209, column: 27, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !567, line: 207, column: 25)
!3594 = distinct !DILexicalBlock(scope: !3446, file: !567, line: 206, column: 27)
!3595 = !DILocation(line: 211, column: 58, scope: !3593)
!3596 = !DILocation(line: 65, column: 10, scope: !3579, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 210, column: 33, scope: !3593, inlinedAt: !3520)
!3598 = !DILocation(line: 63, column: 22, scope: !3579, inlinedAt: !3597)
!3599 = !DILocation(line: 210, column: 29, scope: !3593, inlinedAt: !3520)
!3600 = distinct !{!3600, !3601, !3602}
!3601 = !DILocation(line: 193, column: 19, scope: !3448)
!3602 = !DILocation(line: 241, column: 21, scope: !3448)
!3603 = !DILocation(line: 216, column: 23, scope: !3446, inlinedAt: !3520)
!3604 = !DILocation(line: 217, column: 27, scope: !3605, inlinedAt: !3520)
!3605 = distinct !DILexicalBlock(scope: !3446, file: !567, line: 217, column: 27)
!3606 = !DILocation(line: 217, column: 64, scope: !3605, inlinedAt: !3520)
!3607 = !DILocation(line: 217, column: 27, scope: !3446, inlinedAt: !3520)
!3608 = !DILocation(line: 219, column: 28, scope: !3446, inlinedAt: !3520)
!3609 = !DILocation(line: 198, column: 30, scope: !3446, inlinedAt: !3520)
!3610 = !DILocation(line: 220, column: 28, scope: !3446, inlinedAt: !3520)
!3611 = !DILocation(line: 198, column: 34, scope: !3446, inlinedAt: !3520)
!3612 = !DILocation(line: 199, column: 29, scope: !3446, inlinedAt: !3520)
!3613 = !DILocation(line: 222, column: 36, scope: !3614, inlinedAt: !3520)
!3614 = distinct !DILexicalBlock(scope: !3446, file: !567, line: 222, column: 27)
!3615 = !DILocation(line: 222, column: 27, scope: !3446, inlinedAt: !3520)
!3616 = !DILocation(line: 225, column: 63, scope: !3617, inlinedAt: !3520)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !567, line: 223, column: 25)
!3618 = !DILocation(line: 225, column: 46, scope: !3617, inlinedAt: !3520)
!3619 = !DILocation(line: 226, column: 25, scope: !3617, inlinedAt: !3520)
!3620 = !DILocation(line: 229, column: 36, scope: !3621, inlinedAt: !3520)
!3621 = distinct !DILexicalBlock(scope: !3614, file: !567, line: 228, column: 25)
!3622 = !DILocation(line: 230, column: 73, scope: !3621, inlinedAt: !3520)
!3623 = !DILocation(line: 230, column: 46, scope: !3621, inlinedAt: !3520)
!3624 = !DILocation(line: 232, column: 35, scope: !3625, inlinedAt: !3520)
!3625 = distinct !DILexicalBlock(scope: !3446, file: !567, line: 232, column: 27)
!3626 = !DILocation(line: 232, column: 27, scope: !3446, inlinedAt: !3520)
!3627 = !DILocation(line: 236, column: 27, scope: !3628, inlinedAt: !3520)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !567, line: 233, column: 25)
!3629 = !DILocation(line: 237, column: 27, scope: !3628, inlinedAt: !3520)
!3630 = !DILocation(line: 241, column: 21, scope: !3447, inlinedAt: !3520)
!3631 = !DILocation(line: 239, column: 39, scope: !3446, inlinedAt: !3520)
!3632 = !DILocation(line: 239, column: 50, scope: !3446, inlinedAt: !3520)
!3633 = !DILocation(line: 239, column: 61, scope: !3446, inlinedAt: !3520)
!3634 = !DILocalVariable(name: "__dest", arg: 1, scope: !3635, file: !3636, line: 88, type: !3639)
!3635 = distinct !DISubprogram(name: "strcpy", scope: !3636, file: !3636, line: 88, type: !3637, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !3641)
!3636 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!26, !3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!3640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!3641 = !{!3634, !3642}
!3642 = !DILocalVariable(name: "__src", arg: 2, scope: !3635, file: !3636, line: 88, type: !3640)
!3643 = !DILocation(line: 88, column: 1, scope: !3635, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 239, column: 23, scope: !3446, inlinedAt: !3520)
!3645 = !DILocation(line: 90, column: 49, scope: !3635, inlinedAt: !3644)
!3646 = !DILocation(line: 90, column: 10, scope: !3635, inlinedAt: !3644)
!3647 = !DILocation(line: 88, column: 1, scope: !3635, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 240, column: 23, scope: !3446, inlinedAt: !3520)
!3649 = !DILocation(line: 90, column: 49, scope: !3635, inlinedAt: !3648)
!3650 = !DILocation(line: 90, column: 10, scope: !3635, inlinedAt: !3648)
!3651 = !DILocation(line: 193, column: 19, scope: !3447, inlinedAt: !3520)
!3652 = !DILocation(line: 242, column: 19, scope: !3449, inlinedAt: !3520)
!3653 = !DILocation(line: 243, column: 32, scope: !3654, inlinedAt: !3520)
!3654 = distinct !DILexicalBlock(scope: !3449, file: !567, line: 243, column: 23)
!3655 = !DILocation(line: 243, column: 23, scope: !3449, inlinedAt: !3520)
!3656 = !DILocation(line: 247, column: 33, scope: !3657, inlinedAt: !3520)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !567, line: 246, column: 21)
!3658 = !DILocation(line: 247, column: 45, scope: !3657, inlinedAt: !3520)
!3659 = !DILocation(line: 253, column: 11, scope: !3453, inlinedAt: !3520)
!3660 = !DILocation(line: 377, column: 23, scope: !3455, inlinedAt: !3520)
!3661 = !DILocation(line: 378, column: 5, scope: !3455, inlinedAt: !3520)
!3662 = !DILocation(line: 396, column: 15, scope: !3439)
!3663 = !DILocation(line: 590, column: 8, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3521, file: !567, line: 589, column: 3)
!3665 = !DILocation(line: 590, column: 17, scope: !3664)
!3666 = !DILocation(line: 589, column: 3, scope: !3521)
!3667 = !DILocation(line: 592, column: 9, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !567, line: 592, column: 9)
!3669 = !DILocation(line: 592, column: 35, scope: !3668)
!3670 = !DILocation(line: 593, column: 9, scope: !3668)
!3671 = !DILocation(line: 593, column: 24, scope: !3668)
!3672 = !DILocation(line: 593, column: 31, scope: !3668)
!3673 = !DILocation(line: 593, column: 34, scope: !3668)
!3674 = !DILocation(line: 593, column: 45, scope: !3668)
!3675 = !DILocation(line: 592, column: 9, scope: !3664)
!3676 = !DILocation(line: 595, column: 29, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3668, file: !567, line: 594, column: 7)
!3678 = !DILocation(line: 595, column: 27, scope: !3677)
!3679 = !DILocation(line: 595, column: 46, scope: !3677)
!3680 = !DILocation(line: 596, column: 9, scope: !3677)
!3681 = !DILocation(line: 591, column: 19, scope: !3664)
!3682 = !DILocation(line: 591, column: 36, scope: !3664)
!3683 = !DILocation(line: 591, column: 16, scope: !3664)
!3684 = !DILocation(line: 591, column: 52, scope: !3664)
!3685 = !DILocation(line: 591, column: 69, scope: !3664)
!3686 = !DILocation(line: 591, column: 49, scope: !3664)
!3687 = distinct !{!3687, !3666, !3688}
!3688 = !DILocation(line: 597, column: 7, scope: !3521)
!3689 = !DILocation(line: 602, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3439, file: !567, line: 602, column: 7)
!3691 = !DILocation(line: 602, column: 18, scope: !3690)
!3692 = !DILocation(line: 602, column: 7, scope: !3439)
!3693 = !DILocation(line: 612, column: 3, scope: !3439)
!3694 = distinct !DISubprogram(name: "rpl_fclose", scope: !3695, file: !3695, line: 56, type: !3696, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3738)
!3695 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!24, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3700, file: !795, line: 242, baseType: !24, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3700, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3700, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3700, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3700, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3700, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3700, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3700, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3700, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3700, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3700, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3700, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3700, file: !795, line: 260, baseType: !3715, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !3717)
!3717 = !{!3718, !3719, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3716, file: !795, line: 157, baseType: !3715, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3716, file: !795, line: 158, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3716, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3700, file: !795, line: 262, baseType: !3720, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3700, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3700, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3700, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3700, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3700, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3700, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3700, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3700, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3700, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3700, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3700, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3700, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3700, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3700, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3700, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DILocalVariable(name: "fp", arg: 1, scope: !3694, file: !3695, line: 56, type: !3698)
!3740 = !DILocalVariable(name: "saved_errno", scope: !3694, file: !3695, line: 58, type: !24)
!3741 = !DILocalVariable(name: "fd", scope: !3694, file: !3695, line: 59, type: !24)
!3742 = !DILocalVariable(name: "result", scope: !3694, file: !3695, line: 60, type: !24)
!3743 = !DILocation(line: 56, column: 19, scope: !3694)
!3744 = !DILocation(line: 58, column: 7, scope: !3694)
!3745 = !DILocation(line: 60, column: 7, scope: !3694)
!3746 = !DILocation(line: 63, column: 8, scope: !3694)
!3747 = !DILocation(line: 59, column: 7, scope: !3694)
!3748 = !DILocation(line: 64, column: 10, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3694, file: !3695, line: 64, column: 7)
!3750 = !DILocation(line: 64, column: 7, scope: !3694)
!3751 = !DILocation(line: 65, column: 12, scope: !3749)
!3752 = !DILocation(line: 65, column: 5, scope: !3749)
!3753 = !DILocation(line: 70, column: 9, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3694, file: !3695, line: 70, column: 7)
!3755 = !DILocation(line: 70, column: 23, scope: !3754)
!3756 = !DILocation(line: 70, column: 33, scope: !3754)
!3757 = !DILocation(line: 70, column: 26, scope: !3754)
!3758 = !DILocation(line: 70, column: 59, scope: !3754)
!3759 = !DILocation(line: 71, column: 7, scope: !3754)
!3760 = !DILocation(line: 71, column: 10, scope: !3754)
!3761 = !DILocation(line: 70, column: 7, scope: !3694)
!3762 = !DILocation(line: 98, column: 12, scope: !3694)
!3763 = !DILocation(line: 103, column: 7, scope: !3694)
!3764 = !DILocation(line: 72, column: 19, scope: !3754)
!3765 = !DILocation(line: 103, column: 19, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3694, file: !3695, line: 103, column: 7)
!3767 = !DILocation(line: 105, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3766, file: !3695, line: 104, column: 5)
!3769 = !DILocation(line: 107, column: 5, scope: !3768)
!3770 = !DILocation(line: 110, column: 1, scope: !3694)
!3771 = distinct !DISubprogram(name: "rpl_fflush", scope: !3772, file: !3772, line: 127, type: !3773, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3815)
!3772 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!24, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !795, line: 242, baseType: !24, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !795, line: 260, baseType: !3792, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !3794)
!3794 = !{!3795, !3796, !3798}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3793, file: !795, line: 157, baseType: !3792, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3793, file: !795, line: 158, baseType: !3797, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3793, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !795, line: 262, baseType: !3797, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3777, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3777, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3777, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3777, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !3772, line: 127, type: !3775)
!3817 = !DILocation(line: 127, column: 19, scope: !3771)
!3818 = !DILocation(line: 148, column: 14, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 148, column: 7)
!3820 = !DILocation(line: 148, column: 22, scope: !3819)
!3821 = !DILocation(line: 148, column: 27, scope: !3819)
!3822 = !DILocation(line: 148, column: 7, scope: !3771)
!3823 = !DILocation(line: 149, column: 12, scope: !3819)
!3824 = !DILocation(line: 149, column: 5, scope: !3819)
!3825 = !DILocalVariable(name: "fp", arg: 1, scope: !3826, file: !3772, line: 40, type: !3775)
!3826 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3772, file: !3772, line: 40, type: !3827, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3775}
!3829 = !{!3825}
!3830 = !DILocation(line: 40, column: 48, scope: !3826, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 153, column: 3, scope: !3771)
!3832 = !DILocation(line: 42, column: 11, scope: !3833, inlinedAt: !3831)
!3833 = distinct !DILexicalBlock(scope: !3826, file: !3772, line: 42, column: 7)
!3834 = !DILocation(line: 42, column: 18, scope: !3833, inlinedAt: !3831)
!3835 = !DILocation(line: 42, column: 7, scope: !3826, inlinedAt: !3831)
!3836 = !DILocation(line: 44, column: 5, scope: !3833, inlinedAt: !3831)
!3837 = !DILocation(line: 155, column: 10, scope: !3771)
!3838 = !DILocation(line: 155, column: 3, scope: !3771)
!3839 = !DILocation(line: 229, column: 1, scope: !3771)
!3840 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3841, file: !3841, line: 28, type: !3842, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3885)
!3841 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!24, !3844, !3884, !24}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !793, line: 7, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !795, line: 241, size: 1728, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3846, file: !795, line: 242, baseType: !24, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3846, file: !795, line: 247, baseType: !26, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3846, file: !795, line: 248, baseType: !26, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3846, file: !795, line: 249, baseType: !26, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3846, file: !795, line: 250, baseType: !26, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3846, file: !795, line: 251, baseType: !26, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3846, file: !795, line: 252, baseType: !26, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3846, file: !795, line: 253, baseType: !26, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3846, file: !795, line: 254, baseType: !26, size: 64, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3846, file: !795, line: 256, baseType: !26, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3846, file: !795, line: 257, baseType: !26, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3846, file: !795, line: 258, baseType: !26, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3846, file: !795, line: 260, baseType: !3861, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !795, line: 156, size: 192, elements: !3863)
!3863 = !{!3864, !3865, !3867}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3862, file: !795, line: 157, baseType: !3861, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3862, file: !795, line: 158, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3862, file: !795, line: 162, baseType: !24, size: 32, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3846, file: !795, line: 262, baseType: !3866, size: 64, offset: 832)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3846, file: !795, line: 264, baseType: !24, size: 32, offset: 896)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3846, file: !795, line: 268, baseType: !24, size: 32, offset: 928)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3846, file: !795, line: 270, baseType: !821, size: 64, offset: 960)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3846, file: !795, line: 274, baseType: !165, size: 16, offset: 1024)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3846, file: !795, line: 275, baseType: !825, size: 8, offset: 1040)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3846, file: !795, line: 276, baseType: !827, size: 8, offset: 1048)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3846, file: !795, line: 280, baseType: !831, size: 64, offset: 1088)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3846, file: !795, line: 289, baseType: !834, size: 64, offset: 1152)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3846, file: !795, line: 297, baseType: !64, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3846, file: !795, line: 298, baseType: !64, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3846, file: !795, line: 299, baseType: !64, size: 64, offset: 1344)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3846, file: !795, line: 300, baseType: !64, size: 64, offset: 1408)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3846, file: !795, line: 302, baseType: !166, size: 64, offset: 1472)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3846, file: !795, line: 303, baseType: !24, size: 32, offset: 1536)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3846, file: !795, line: 305, baseType: !842, size: 160, offset: 1568)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2767, line: 57, baseType: !821)
!3885 = !{!3886, !3887, !3888, !3889}
!3886 = !DILocalVariable(name: "fp", arg: 1, scope: !3840, file: !3841, line: 28, type: !3844)
!3887 = !DILocalVariable(name: "offset", arg: 2, scope: !3840, file: !3841, line: 28, type: !3884)
!3888 = !DILocalVariable(name: "whence", arg: 3, scope: !3840, file: !3841, line: 28, type: !24)
!3889 = !DILocalVariable(name: "pos", scope: !3890, file: !3841, line: 116, type: !3884)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3841, line: 112, column: 5)
!3891 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 51, column: 7)
!3892 = !DILocation(line: 28, column: 15, scope: !3840)
!3893 = !DILocation(line: 28, column: 25, scope: !3840)
!3894 = !DILocation(line: 28, column: 37, scope: !3840)
!3895 = !DILocation(line: 51, column: 11, scope: !3891)
!3896 = !DILocation(line: 51, column: 31, scope: !3891)
!3897 = !DILocation(line: 51, column: 24, scope: !3891)
!3898 = !DILocation(line: 52, column: 7, scope: !3891)
!3899 = !DILocation(line: 52, column: 14, scope: !3891)
!3900 = !{!850, !633, i64 40}
!3901 = !DILocation(line: 52, column: 35, scope: !3891)
!3902 = !{!850, !633, i64 32}
!3903 = !DILocation(line: 52, column: 28, scope: !3891)
!3904 = !DILocation(line: 53, column: 7, scope: !3891)
!3905 = !DILocation(line: 53, column: 14, scope: !3891)
!3906 = !{!850, !633, i64 72}
!3907 = !DILocation(line: 53, column: 28, scope: !3891)
!3908 = !DILocation(line: 51, column: 7, scope: !3840)
!3909 = !DILocation(line: 116, column: 26, scope: !3890)
!3910 = !DILocation(line: 116, column: 19, scope: !3890)
!3911 = !DILocation(line: 116, column: 13, scope: !3890)
!3912 = !DILocation(line: 117, column: 15, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3890, file: !3841, line: 117, column: 11)
!3914 = !DILocation(line: 117, column: 11, scope: !3890)
!3915 = !DILocation(line: 127, column: 11, scope: !3890)
!3916 = !DILocation(line: 127, column: 18, scope: !3890)
!3917 = !DILocation(line: 128, column: 11, scope: !3890)
!3918 = !DILocation(line: 128, column: 19, scope: !3890)
!3919 = !{!850, !728, i64 144}
!3920 = !DILocation(line: 159, column: 7, scope: !3890)
!3921 = !DILocation(line: 161, column: 10, scope: !3840)
!3922 = !DILocation(line: 161, column: 3, scope: !3840)
!3923 = !DILocation(line: 162, column: 1, scope: !3840)
