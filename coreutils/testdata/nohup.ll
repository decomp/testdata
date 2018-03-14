; ModuleID = 'coreutils-8.27/src/nohup.bc'
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
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"failed to set the copy of stderr to close on exec\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"ignoring input and redirecting stderr to stdout\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"redirecting stderr to stdout\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.48, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.83 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.100 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.101 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !149
@.str.128 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !186
@.str.3.133 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.134 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.135 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.136 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.137 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !635 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !637, metadata !638), !dbg !639
  %2 = icmp eq i32 %0, 0, !dbg !640
  br i1 %2, label %8, label %3, !dbg !642

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !645
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !643
  %6 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !645
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !643
  br label %41, !dbg !643

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !649
  %10 = load i8*, i8** @program_name, align 8, !dbg !649, !tbaa !645
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !649
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !651
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !645
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !651
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !652
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !645
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !652
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !653
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !645
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !653
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !654
  %22 = load i8*, i8** @program_name, align 8, !dbg !654, !tbaa !645
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* %22) #11, !dbg !654
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !655
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !655
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !562, metadata !638) #11, !dbg !656
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !562, metadata !638) #11, !dbg !656
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !658
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !658
  %28 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !570, metadata !638) #11, !dbg !660
  %29 = icmp eq i8* %28, null, !dbg !661
  br i1 %29, label %36, label %30, !dbg !663

; <label>:30:                                     ; preds = %8
  %31 = tail call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #14, !dbg !664
  %32 = icmp eq i32 %31, 0, !dbg !664
  br i1 %32, label %36, label %33, !dbg !665

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !666
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !666
  br label %36, !dbg !668

; <label>:36:                                     ; preds = %8, %30, %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !669
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !669
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !670
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !670
  br label %41

; <label>:41:                                     ; preds = %36, %3
  tail call void @exit(i32 %0) #15, !dbg !671
  unreachable, !dbg !671
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !672 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !677, metadata !638), !dbg !707
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !678, metadata !638), !dbg !708
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !679, metadata !638), !dbg !709
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !680, metadata !638), !dbg !710
  %3 = load i8*, i8** %1, align 8, !dbg !711, !tbaa !645
  tail call void @set_program_name(i8* %3) #11, !dbg !712
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !713
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !714
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !715
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !716
  %8 = icmp eq i8* %7, null, !dbg !716
  %9 = select i1 %8, i32 125, i32 127, !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !685, metadata !638), !dbg !717
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !718, metadata !638), !dbg !721
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !723, !tbaa !725
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !727
  %11 = load i8*, i8** @Version, align 8, !dbg !728, !tbaa !645
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %11, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !729
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* null, i32* null) #11, !dbg !730
  %13 = icmp eq i32 %12, -1, !dbg !732
  br i1 %13, label %15, label %14, !dbg !733

; <label>:14:                                     ; preds = %2
  tail call void @usage(i32 %9) #16, !dbg !734
  unreachable, !dbg !734

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @optind, align 4, !dbg !735, !tbaa !725
  %17 = icmp slt i32 %16, %0, !dbg !737
  br i1 %17, label %20, label %18, !dbg !738

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !739
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #11, !dbg !741
  tail call void @usage(i32 %9) #16, !dbg !742
  unreachable, !dbg !742

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @isatty(i32 0) #11, !dbg !743
  %22 = icmp ne i32 %21, 0, !dbg !743
  %23 = tail call i32 @isatty(i32 1) #11, !dbg !744
  %24 = icmp ne i32 %23, 0, !dbg !744
  br i1 %24, label %29, label %25, !dbg !745

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #17, !dbg !746
  %27 = load i32, i32* %26, align 4, !dbg !746, !tbaa !725
  %28 = icmp eq i32 %27, 9, !dbg !747
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  %31 = tail call i32 @isatty(i32 2) #11, !dbg !748
  %32 = icmp ne i32 %31, 0, !dbg !748
  br i1 %22, label %33, label %45, !dbg !749

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @fd_reopen(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 0) #11, !dbg !750
  %35 = icmp slt i32 %34, 0, !dbg !754
  br i1 %35, label %36, label %40, !dbg !755

; <label>:36:                                     ; preds = %33
  %37 = tail call i32* @__errno_location() #17, !dbg !756
  %38 = load i32, i32* %37, align 4, !dbg !756, !tbaa !725
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %38, i8* %39) #11, !dbg !758
  br label %40, !dbg !758

; <label>:40:                                     ; preds = %36, %33
  %41 = or i32 %31, %23, !dbg !759
  %42 = icmp eq i32 %41, 0, !dbg !759
  br i1 %42, label %43, label %45, !dbg !759

; <label>:43:                                     ; preds = %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !761
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #11, !dbg !762
  br label %45, !dbg !762

; <label>:45:                                     ; preds = %40, %43, %29
  br i1 %24, label %48, label %46, !dbg !763

; <label>:46:                                     ; preds = %45
  %47 = and i1 %30, %32, !dbg !764
  br i1 %47, label %51, label %91, !dbg !764

; <label>:48:                                     ; preds = %45
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !686, metadata !638), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 1089, i64 0, metadata !690, metadata !638), !dbg !766
  tail call void @llvm.dbg.value(metadata i32 384, i64 0, metadata !691, metadata !638), !dbg !767
  %49 = tail call i32 @umask(i32 -385) #11, !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !696, metadata !638), !dbg !769
  %50 = tail call i32 @fd_reopen(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #11, !dbg !770
  br label %54, !dbg !771

; <label>:51:                                     ; preds = %46
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !686, metadata !638), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 1089, i64 0, metadata !690, metadata !638), !dbg !766
  tail call void @llvm.dbg.value(metadata i32 384, i64 0, metadata !691, metadata !638), !dbg !767
  %52 = tail call i32 @umask(i32 -385) #11, !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !696, metadata !638), !dbg !769
  %53 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #11, !dbg !772
  br label %54, !dbg !771

; <label>:54:                                     ; preds = %51, %48
  %55 = phi i32 [ %49, %48 ], [ %52, %51 ]
  %56 = phi i32 [ %50, %48 ], [ %53, %51 ], !dbg !771
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !679, metadata !638), !dbg !709
  %57 = icmp slt i32 %56, 0, !dbg !773
  br i1 %57, label %58, label %83, !dbg !774

; <label>:58:                                     ; preds = %54
  %59 = tail call i32* @__errno_location() #17, !dbg !775
  %60 = load i32, i32* %59, align 4, !dbg !775, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !697, metadata !638), !dbg !776
  %61 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !777
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !700, metadata !638), !dbg !778
  %62 = icmp eq i8* %61, null, !dbg !779
  br i1 %62, label %74, label %63, !dbg !781

; <label>:63:                                     ; preds = %58
  %64 = tail call i8* @file_name_concat(i8* nonnull %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** null) #11, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !686, metadata !638), !dbg !765
  br i1 %24, label %65, label %67, !dbg !784

; <label>:65:                                     ; preds = %63
  %66 = tail call i32 @fd_reopen(i32 1, i8* %64, i32 1089, i32 384) #11, !dbg !785
  br label %69, !dbg !784

; <label>:67:                                     ; preds = %63
  %68 = tail call i32 (i8*, i32, ...) @open(i8* %64, i32 1089, i32 384) #11, !dbg !786
  br label %69, !dbg !784

; <label>:69:                                     ; preds = %65, %67
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !679, metadata !638), !dbg !709
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !686, metadata !638), !dbg !765
  %71 = icmp slt i32 %70, 0, !dbg !787
  br i1 %71, label %72, label %83, !dbg !788

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %59, align 4, !dbg !789, !tbaa !725
  br label %74, !dbg !788

; <label>:74:                                     ; preds = %72, %58
  %75 = phi i32 [ %73, %72 ], [ %60, %58 ], !dbg !789
  %76 = phi i8* [ %64, %72 ], [ null, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !701, metadata !638), !dbg !790
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !791
  %78 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !792
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %60, i8* %77, i8* %78) #11, !dbg !793
  %79 = icmp eq i8* %76, null, !dbg !794
  br i1 %79, label %141, label %80, !dbg !796

; <label>:80:                                     ; preds = %74
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !797
  %82 = tail call i8* @quotearg_style(i32 4, i8* nonnull %76) #11, !dbg !798
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %81, i8* %82) #11, !dbg !799
  br label %141, !dbg !799

; <label>:83:                                     ; preds = %54, %69
  %84 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %54 ], [ %64, %69 ]
  %85 = phi i8* [ null, %54 ], [ %64, %69 ]
  %86 = phi i32 [ %56, %54 ], [ %70, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !679, metadata !638), !dbg !709
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !686, metadata !638), !dbg !765
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !689, metadata !638), !dbg !800
  %87 = tail call i32 @umask(i32 %55) #11, !dbg !801
  %88 = select i1 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), !dbg !802
  %89 = tail call i8* @dcgettext(i8* null, i8* %88, i32 5) #11, !dbg !802
  %90 = tail call i8* @quotearg_style(i32 4, i8* %84) #11, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %89, i8* %90) #11, !dbg !804
  tail call void @free(i8* %85) #11, !dbg !805
  br label %91

; <label>:91:                                     ; preds = %46, %83
  %92 = phi i32 [ 1, %46 ], [ %86, %83 ]
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !679, metadata !638), !dbg !709
  br i1 %32, label %93, label %117, !dbg !806

; <label>:93:                                     ; preds = %91
  %94 = tail call i32 @dup_safer(i32 2) #11, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !680, metadata !638), !dbg !710
  %95 = icmp sgt i32 %94, -1, !dbg !810
  br i1 %95, label %96, label %103, !dbg !812

; <label>:96:                                     ; preds = %93
  %97 = tail call i32 @set_cloexec_flag(i32 %94, i1 zeroext true) #11, !dbg !813
  %98 = icmp eq i32 %97, 0, !dbg !814
  br i1 %98, label %103, label %99, !dbg !815

; <label>:99:                                     ; preds = %96
  %100 = tail call i32* @__errno_location() #17, !dbg !816
  %101 = load i32, i32* %100, align 4, !dbg !816, !tbaa !725
  %102 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !817
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %101, i8* %102) #11, !dbg !818
  br label %103, !dbg !818

; <label>:103:                                    ; preds = %96, %99, %93
  br i1 %24, label %107, label %104, !dbg !819

; <label>:104:                                    ; preds = %103
  %105 = select i1 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), !dbg !820
  %106 = tail call i8* @dcgettext(i8* null, i8* %105, i32 5) #11, !dbg !820
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106) #11, !dbg !822
  br label %107, !dbg !822

; <label>:107:                                    ; preds = %104, %103
  %108 = tail call i32 @dup2(i32 %92, i32 2) #11, !dbg !823
  %109 = icmp slt i32 %108, 0, !dbg !825
  br i1 %109, label %110, label %114, !dbg !826

; <label>:110:                                    ; preds = %107
  %111 = tail call i32* @__errno_location() #17, !dbg !827
  %112 = load i32, i32* %111, align 4, !dbg !827, !tbaa !725
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !828
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %112, i8* %113) #11, !dbg !829
  br label %114, !dbg !829

; <label>:114:                                    ; preds = %110, %107
  br i1 %30, label %115, label %117, !dbg !830

; <label>:115:                                    ; preds = %114
  %116 = tail call i32 @close(i32 %92) #11, !dbg !831
  br label %117, !dbg !831

; <label>:117:                                    ; preds = %114, %115, %91
  %118 = phi i32 [ %94, %115 ], [ %94, %114 ], [ 2, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !680, metadata !638), !dbg !710
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %119, i64 0, metadata !835, metadata !638), !dbg !893
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %119, i64 0, i32 0, !dbg !895
  %121 = load i32, i32* %120, align 8, !dbg !895, !tbaa !896
  %122 = and i32 %121, 32, !dbg !895
  %123 = icmp eq i32 %122, 0, !dbg !833
  br i1 %123, label %124, label %141, !dbg !900

; <label>:124:                                    ; preds = %117
  %125 = tail call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #11, !dbg !901
  %126 = load i32, i32* @optind, align 4, !dbg !902, !tbaa !725
  %127 = sext i32 %126 to i64, !dbg !903
  %128 = getelementptr inbounds i8*, i8** %1, i64 %127, !dbg !903
  tail call void @llvm.dbg.value(metadata i8** %128, i64 0, metadata !704, metadata !638), !dbg !904
  %129 = load i8*, i8** %128, align 8, !dbg !905, !tbaa !645
  %130 = tail call i32 @execvp(i8* %129, i8** %128) #11, !dbg !906
  %131 = tail call i32* @__errno_location() #17, !dbg !907
  %132 = load i32, i32* %131, align 4, !dbg !907, !tbaa !725
  %133 = icmp eq i32 %132, 2, !dbg !908
  %134 = select i1 %133, i32 127, i32 126, !dbg !907
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !705, metadata !638), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !706, metadata !638), !dbg !910
  %135 = tail call i32 @dup2(i32 %118, i32 2) #11, !dbg !911
  %136 = icmp eq i32 %135, 2, !dbg !913
  br i1 %136, label %137, label %141, !dbg !914

; <label>:137:                                    ; preds = %124
  %138 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !915
  %139 = load i8*, i8** %128, align 8, !dbg !916, !tbaa !645
  %140 = tail call i8* @quotearg_style(i32 4, i8* %139) #11, !dbg !916
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %132, i8* %138, i8* %140) #11, !dbg !917
  br label %141, !dbg !917

; <label>:141:                                    ; preds = %80, %74, %124, %137, %117
  %142 = phi i32 [ %9, %117 ], [ %134, %137 ], [ %134, %124 ], [ %9, %74 ], [ %9, %80 ]
  ret i32 %142, !dbg !918
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 !dbg !919 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !924, metadata !638), !dbg !930
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !925, metadata !638), !dbg !931
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #11, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !926, metadata !638), !dbg !933
  %4 = icmp sgt i32 %3, -1, !dbg !934
  br i1 %4, label %5, label %14, !dbg !935

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1, !dbg !936
  %7 = and i32 %3, -2, !dbg !937
  %8 = select i1 %1, i32 %6, i32 %7, !dbg !938
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !927, metadata !638), !dbg !939
  %9 = icmp eq i32 %3, %8, !dbg !940
  br i1 %9, label %14, label %10, !dbg !942

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #11, !dbg !943
  %12 = icmp eq i32 %11, -1, !dbg !944
  %13 = sext i1 %12 to i32, !dbg !945
  ret i32 %13, !dbg !945

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15, !dbg !946
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 !dbg !947 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !951, metadata !638), !dbg !952
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #11, !dbg !953
  ret i32 %2, !dbg !954
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !955 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !957, metadata !638), !dbg !958
  store i8* %0, i8** @file_name, align 8, !dbg !959, !tbaa !645
  ret void, !dbg !960
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !961 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !965, metadata !638), !dbg !966
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !967, !tbaa !968
  ret void, !dbg !970
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !971 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !978, !tbaa !645
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !979
  %3 = icmp eq i32 %2, 0, !dbg !980
  br i1 %3, label %21, label %4, !dbg !981

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !982, !tbaa !968, !range !983
  %6 = icmp eq i8 %5, 0, !dbg !982
  %7 = tail call i32* @__errno_location() #17, !dbg !984
  br i1 %6, label %11, label %8, !dbg !986

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !987, !tbaa !725
  %10 = icmp eq i32 %9, 32, !dbg !988
  br i1 %10, label %21, label %11, !dbg !989

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !990
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !975, metadata !638), !dbg !991
  %13 = load i8*, i8** @file_name, align 8, !dbg !992, !tbaa !645
  %14 = icmp eq i8* %13, null, !dbg !992
  %15 = load i32, i32* %7, align 4, !tbaa !725
  br i1 %14, label %18, label %16, !dbg !993

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !994
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !995
  br label %19, !dbg !995

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #11, !dbg !996
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !997, !tbaa !725
  tail call void @_exit(i32 %20) #15, !dbg !998
  unreachable, !dbg !998

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !999, !tbaa !645
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1001
  %24 = icmp eq i32 %23, 0, !dbg !1002
  br i1 %24, label %27, label %25, !dbg !1003

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1004, !tbaa !725
  tail call void @_exit(i32 %26) #15, !dbg !1005
  unreachable, !dbg !1005

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1006
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #6 !dbg !1007 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1012, metadata !638), !dbg !1021
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1013, metadata !638), !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1014, metadata !638), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1015, metadata !638), !dbg !1024
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #11, !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1016, metadata !638), !dbg !1026
  %6 = icmp eq i32 %5, %0, !dbg !1027
  %7 = icmp slt i32 %5, 0, !dbg !1028
  %8 = or i1 %6, %7, !dbg !1029
  br i1 %8, label %14, label %9, !dbg !1029

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #11, !dbg !1030
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1017, metadata !638), !dbg !1031
  %11 = tail call i32* @__errno_location() #17, !dbg !1032
  %12 = load i32, i32* %11, align 4, !dbg !1032, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1020, metadata !638), !dbg !1033
  %13 = tail call i32 @close(i32 %5) #11, !dbg !1034
  store i32 %12, i32* %11, align 4, !dbg !1035, !tbaa !725
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15, !dbg !1036
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1037 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1042, metadata !638), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1043, metadata !638), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1044, metadata !638), !dbg !1048
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #11, !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1045, metadata !638), !dbg !1050
  %5 = icmp eq i8* %4, null, !dbg !1051
  br i1 %5, label %6, label %7, !dbg !1053

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1054
  unreachable, !dbg !1054

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1055
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1056 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1059, metadata !638), !dbg !1070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1060, metadata !638), !dbg !1071
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1061, metadata !638), !dbg !1072
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1073
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1062, metadata !638), !dbg !1074
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1063, metadata !638), !dbg !1076
  %6 = ptrtoint i8* %4 to i64, !dbg !1077
  %7 = ptrtoint i8* %0 to i64, !dbg !1077
  %8 = sub i64 %6, %7, !dbg !1077
  %9 = add i64 %8, %5, !dbg !1078
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1064, metadata !638), !dbg !1079
  %10 = icmp eq i64 %5, 0, !dbg !1080
  br i1 %10, label %17, label %11, !dbg !1081

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1082
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1082
  %14 = load i8, i8* %13, align 1, !dbg !1082, !tbaa !1083
  %15 = icmp ne i8 %14, 47, !dbg !1082
  %16 = zext i1 %15 to i64
  br label %17

; <label>:17:                                     ; preds = %3, %11
  %18 = phi i64 [ 0, %3 ], [ %16, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1065, metadata !638), !dbg !1084
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1085, metadata !638), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1085, metadata !638), !dbg !1090
  br label %19, !dbg !1092

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i8* [ %1, %17 ], [ %23, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1085, metadata !638), !dbg !1090
  %21 = load i8, i8* %20, align 1, !dbg !1094, !tbaa !1083
  %22 = icmp eq i8 %21, 47, !dbg !1094
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1096
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1085, metadata !638), !dbg !1090
  br i1 %22, label %19, label %24, !dbg !1097, !llvm.loop !1098

; <label>:24:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1066, metadata !638), !dbg !1101
  %25 = tail call i64 @strlen(i8* %20) #14, !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1067, metadata !638), !dbg !1103
  %26 = add i64 %9, 1, !dbg !1104
  %27 = add i64 %26, %18, !dbg !1105
  %28 = add i64 %27, %25, !dbg !1106
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1068, metadata !638), !dbg !1108
  %30 = icmp eq i8* %29, null, !dbg !1109
  br i1 %30, label %44, label %31, !dbg !1111

; <label>:31:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1112, metadata !638) #11, !dbg !1124
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1122, metadata !638) #11, !dbg !1124
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1123, metadata !638) #11, !dbg !1124
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false, i1 true) #11, !dbg !1126
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #11, !dbg !1127
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1069, metadata !638), !dbg !1128
  store i8 47, i8* %33, align 1, !dbg !1129, !tbaa !1083
  %34 = getelementptr inbounds i8, i8* %33, i64 %18, !dbg !1130
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1069, metadata !638), !dbg !1128
  %35 = icmp eq i8** %2, null, !dbg !1131
  br i1 %35, label %41, label %36, !dbg !1133

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1134, !tbaa !1083
  %38 = icmp eq i8 %37, 47, !dbg !1134
  %39 = sext i1 %38 to i64, !dbg !1135
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1135
  store i8* %40, i8** %2, align 8, !dbg !1136, !tbaa !645
  br label %41, !dbg !1137

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1112, metadata !638) #11, !dbg !1138
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1122, metadata !638) #11, !dbg !1138
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1123, metadata !638) #11, !dbg !1138
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false, i1 true) #11, !dbg !1140
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %20, i64 %25, i64 %42) #11, !dbg !1141
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1069, metadata !638), !dbg !1128
  store i8 0, i8* %43, align 1, !dbg !1142, !tbaa !1083
  br label %44, !dbg !1143

; <label>:44:                                     ; preds = %24, %41
  %45 = phi i8* [ %29, %41 ], [ null, %24 ]
  ret i8* %45, !dbg !1144
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1145 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1149, metadata !638), !dbg !1173
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1150, metadata !638), !dbg !1174
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1151, metadata !638), !dbg !1175
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1152, metadata !638), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1153, metadata !638), !dbg !1177
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1154, metadata !638), !dbg !1178
  %8 = load i32, i32* @opterr, align 4, !dbg !1179, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1156, metadata !638), !dbg !1180
  store i32 0, i32* @opterr, align 4, !dbg !1181, !tbaa !725
  %9 = icmp eq i32 %0, 2, !dbg !1182
  br i1 %9, label %10, label %17, !dbg !1183

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1155, metadata !638), !dbg !1185
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1186

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1187
  br label %17, !dbg !1188

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1189
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !1189
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1157, metadata !638), !dbg !1190
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1191
  call void @llvm.va_start(i8* nonnull %14), !dbg !1191
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1192, !tbaa !645
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1193
  call void @exit(i32 0) #15, !dbg !1194
  unreachable, !dbg !1194

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1195, !tbaa !725
  store i32 0, i32* @optind, align 4, !dbg !1196, !tbaa !725
  ret void, !dbg !1197
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #10

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1198 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1200, metadata !638), !dbg !1203
  %2 = icmp eq i8* %0, null, !dbg !1204
  br i1 %2, label %3, label %6, !dbg !1206

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1207, !tbaa !645
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1209
  tail call void @abort() #15, !dbg !1210
  unreachable, !dbg !1210

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1201, metadata !638), !dbg !1212
  %8 = icmp eq i8* %7, null, !dbg !1213
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1214
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1202, metadata !638), !dbg !1216
  %11 = ptrtoint i8* %10 to i64, !dbg !1217
  %12 = ptrtoint i8* %0 to i64, !dbg !1217
  %13 = sub i64 %11, %12, !dbg !1217
  %14 = icmp sgt i64 %13, 6, !dbg !1219
  br i1 %14, label %15, label %24, !dbg !1220

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1221
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #14, !dbg !1222
  %18 = icmp eq i32 %17, 0, !dbg !1223
  br i1 %18, label %19, label %24, !dbg !1224

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1200, metadata !638), !dbg !1203
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #14, !dbg !1225
  %21 = icmp eq i32 %20, 0, !dbg !1228
  br i1 %21, label %22, label %24, !dbg !1229

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1230
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1200, metadata !638), !dbg !1203
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1232, !tbaa !645
  br label %24, !dbg !1233

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1200, metadata !638), !dbg !1203
  store i8* %25, i8** @program_name, align 8, !dbg !1234, !tbaa !645
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1235, !tbaa !645
  ret void, !dbg !1236
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1237 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1242, metadata !638), !dbg !1245
  %2 = tail call i32* @__errno_location() #17, !dbg !1246
  %3 = load i32, i32* %2, align 4, !dbg !1246, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1243, metadata !638), !dbg !1247
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1248
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1248
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1248
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1249
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1249
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1244, metadata !638), !dbg !1250
  store i32 %3, i32* %2, align 4, !dbg !1251, !tbaa !725
  ret %struct.quoting_options* %8, !dbg !1252
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1259, metadata !638), !dbg !1260
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1261
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1261
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1262
  %5 = load i32, i32* %4, align 8, !dbg !1262, !tbaa !1263
  ret i32 %5, !dbg !1265
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1266 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1270, metadata !638), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1271, metadata !638), !dbg !1273
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1274
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1274
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1275
  store i32 %1, i32* %5, align 8, !dbg !1276, !tbaa !1263
  ret void, !dbg !1277
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1278 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1282, metadata !638), !dbg !1290
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1283, metadata !638), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1284, metadata !638), !dbg !1292
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1285, metadata !638), !dbg !1293
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1294
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1294
  %6 = lshr i8 %1, 5, !dbg !1295
  %7 = zext i8 %6 to i64, !dbg !1295
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1296
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1286, metadata !638), !dbg !1297
  %9 = and i8 %1, 31, !dbg !1298
  %10 = zext i8 %9 to i32, !dbg !1299
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1288, metadata !638), !dbg !1300
  %11 = load i32, i32* %8, align 4, !dbg !1301, !tbaa !725
  %12 = lshr i32 %11, %10, !dbg !1302
  %13 = and i32 %12, 1, !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1289, metadata !638), !dbg !1304
  %14 = and i32 %2, 1, !dbg !1305
  %15 = xor i32 %13, %14, !dbg !1306
  %16 = shl i32 %15, %10, !dbg !1307
  %17 = xor i32 %16, %11, !dbg !1308
  store i32 %17, i32* %8, align 4, !dbg !1308, !tbaa !725
  ret i32 %13, !dbg !1309
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1310 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1314, metadata !638), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1315, metadata !638), !dbg !1318
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1319
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1314, metadata !638), !dbg !1317
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1314, metadata !638), !dbg !1317
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1322
  %6 = load i32, i32* %5, align 4, !dbg !1322, !tbaa !1323
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1316, metadata !638), !dbg !1324
  store i32 %1, i32* %5, align 4, !dbg !1325, !tbaa !1323
  ret i32 %6, !dbg !1326
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1331, metadata !638), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1332, metadata !638), !dbg !1335
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1333, metadata !638), !dbg !1336
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1337
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1331, metadata !638), !dbg !1334
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1339
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1331, metadata !638), !dbg !1334
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1340
  store i32 10, i32* %6, align 8, !dbg !1341, !tbaa !1263
  %7 = icmp ne i8* %1, null, !dbg !1342
  %8 = icmp ne i8* %2, null, !dbg !1344
  %9 = and i1 %7, %8, !dbg !1345
  br i1 %9, label %11, label %10, !dbg !1345

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1346
  unreachable, !dbg !1346

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1347
  store i8* %1, i8** %12, align 8, !dbg !1348, !tbaa !1349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1350
  store i8* %2, i8** %13, align 8, !dbg !1351, !tbaa !1352
  ret void, !dbg !1353
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1354 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1358, metadata !638), !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1359, metadata !638), !dbg !1367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1360, metadata !638), !dbg !1368
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1361, metadata !638), !dbg !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1362, metadata !638), !dbg !1370
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1371
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1363, metadata !638), !dbg !1372
  %8 = tail call i32* @__errno_location() #17, !dbg !1373
  %9 = load i32, i32* %8, align 4, !dbg !1373, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1364, metadata !638), !dbg !1374
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1375
  %11 = load i32, i32* %10, align 8, !dbg !1375, !tbaa !1263
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1376
  %13 = load i32, i32* %12, align 4, !dbg !1376, !tbaa !1323
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1377
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1378
  %16 = load i8*, i8** %15, align 8, !dbg !1378, !tbaa !1349
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1379
  %18 = load i8*, i8** %17, align 8, !dbg !1379, !tbaa !1352
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1380
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1365, metadata !638), !dbg !1381
  store i32 %9, i32* %8, align 4, !dbg !1382, !tbaa !725
  ret i64 %19, !dbg !1383
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1384 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1390, metadata !638), !dbg !1454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1391, metadata !638), !dbg !1455
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1392, metadata !638), !dbg !1456
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1393, metadata !638), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1394, metadata !638), !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1395, metadata !638), !dbg !1459
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1396, metadata !638), !dbg !1460
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1397, metadata !638), !dbg !1461
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1398, metadata !638), !dbg !1462
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1400, metadata !638), !dbg !1463
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1401, metadata !638), !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1402, metadata !638), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1403, metadata !638), !dbg !1466
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1404, metadata !638), !dbg !1467
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1468
  %14 = icmp eq i64 %13, 1, !dbg !1469
  %15 = lshr i32 %5, 1, !dbg !1470
  %16 = trunc i32 %15 to i8, !dbg !1470
  %17 = and i8 %16, 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1406, metadata !638), !dbg !1470
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1407, metadata !638), !dbg !1471
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1408, metadata !638), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1409, metadata !638), !dbg !1473
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1474

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1409, metadata !638), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1404, metadata !638), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1403, metadata !638), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1398, metadata !638), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1397, metadata !638), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1394, metadata !638), !dbg !1458
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
  ], !dbg !1475

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1394, metadata !638), !dbg !1458
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1394, metadata !638), !dbg !1458
  br label %94, !dbg !1476

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1394, metadata !638), !dbg !1458
  %43 = and i8 %36, 1, !dbg !1478
  %44 = icmp eq i8 %43, 0, !dbg !1478
  br i1 %44, label %45, label %94, !dbg !1476

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1480
  br i1 %46, label %94, label %47, !dbg !1483

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1480, !tbaa !1083
  br label %94, !dbg !1480

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1397, metadata !638), !dbg !1461
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1398, metadata !638), !dbg !1462
  br label %51, !dbg !1489

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1398, metadata !638), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1397, metadata !638), !dbg !1461
  %54 = and i8 %36, 1, !dbg !1490
  %55 = icmp eq i8 %54, 0, !dbg !1490
  br i1 %55, label %56, label %72, !dbg !1492

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1400, metadata !638), !dbg !1463
  %57 = load i8, i8* %52, align 1, !dbg !1493, !tbaa !1083
  %58 = icmp eq i8 %57, 0, !dbg !1496
  br i1 %58, label %72, label %59, !dbg !1496

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1497

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1402, metadata !638), !dbg !1465
  %64 = icmp ult i64 %63, %40, !dbg !1497
  br i1 %64, label %65, label %67, !dbg !1500

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1497
  store i8 %61, i8* %66, align 1, !dbg !1497, !tbaa !1083
  br label %67, !dbg !1497

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1400, metadata !638), !dbg !1463
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1400, metadata !638), !dbg !1463
  %70 = load i8, i8* %69, align 1, !dbg !1493, !tbaa !1083
  %71 = icmp eq i8 %70, 0, !dbg !1496
  br i1 %71, label %72, label %60, !dbg !1496, !llvm.loop !1502

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1404, metadata !638), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1402, metadata !638), !dbg !1465
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1403, metadata !638), !dbg !1466
  br label %94, !dbg !1505

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1404, metadata !638), !dbg !1467
  br label %76, !dbg !1506

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1404, metadata !638), !dbg !1467
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1406, metadata !638), !dbg !1470
  br label %78, !dbg !1507

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1404, metadata !638), !dbg !1467
  %81 = and i8 %80, 1, !dbg !1508
  %82 = icmp eq i8 %81, 0, !dbg !1508
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1404, metadata !638), !dbg !1467
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1510
  br label %84, !dbg !1510

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1404, metadata !638), !dbg !1467
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1394, metadata !638), !dbg !1458
  %87 = and i8 %86, 1, !dbg !1511
  %88 = icmp eq i8 %87, 0, !dbg !1511
  br i1 %88, label %89, label %94, !dbg !1513

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1514
  br i1 %90, label %94, label %91, !dbg !1517

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1514, !tbaa !1083
  br label %94, !dbg !1514

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1406, metadata !638), !dbg !1470
  br label %94, !dbg !1518

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1519
  unreachable, !dbg !1519

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1406, metadata !638), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1404, metadata !638), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1403, metadata !638), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1398, metadata !638), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1397, metadata !638), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1394, metadata !638), !dbg !1458
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1399, metadata !638), !dbg !1520
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
  br label %122, !dbg !1521

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1409, metadata !638), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1399, metadata !638), !dbg !1520
  %131 = icmp eq i64 %126, -1, !dbg !1522
  br i1 %131, label %134, label %132, !dbg !1523

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1524
  br i1 %133, label %590, label %138, !dbg !1525

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1526
  %136 = load i8, i8* %135, align 1, !dbg !1526, !tbaa !1083
  %137 = icmp eq i8 %136, 0, !dbg !1527
  br i1 %137, label %590, label %138, !dbg !1525

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !638), !dbg !1528
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1417, metadata !638), !dbg !1530
  br i1 %108, label %139, label %154, !dbg !1531

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1533
  %141 = and i1 %109, %131, !dbg !1534
  br i1 %141, label %142, label %144, !dbg !1534

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1393, metadata !638), !dbg !1457
  br label %144, !dbg !1536

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1393, metadata !638), !dbg !1457
  %146 = icmp ugt i64 %140, %145, !dbg !1537
  br i1 %146, label %154, label %147, !dbg !1538

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1539
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1540
  %150 = icmp ne i32 %149, 0, !dbg !1541
  %151 = or i1 %150, %111, !dbg !1542
  %152 = xor i1 %150, true, !dbg !1542
  %153 = zext i1 %152 to i8, !dbg !1542
  br i1 %151, label %154, label %635, !dbg !1542

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1415, metadata !638), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1393, metadata !638), !dbg !1457
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1543
  %158 = load i8, i8* %157, align 1, !dbg !1543, !tbaa !1083
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1410, metadata !638), !dbg !1544
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
  ], !dbg !1545

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1546

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1547

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1416, metadata !638), !dbg !1529
  %162 = and i8 %127, 1, !dbg !1551
  %163 = icmp eq i8 %162, 0, !dbg !1551
  %164 = and i1 %113, %163, !dbg !1551
  br i1 %164, label %165, label %181, !dbg !1551

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1553
  br i1 %166, label %167, label %169, !dbg !1557

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1553
  store i8 39, i8* %168, align 1, !dbg !1553, !tbaa !1083
  br label %169, !dbg !1553

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1400, metadata !638), !dbg !1463
  %171 = icmp ult i64 %170, %130, !dbg !1558
  br i1 %171, label %172, label %174, !dbg !1561

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1558
  store i8 36, i8* %173, align 1, !dbg !1558, !tbaa !1083
  br label %174, !dbg !1558

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1400, metadata !638), !dbg !1463
  %176 = icmp ult i64 %175, %130, !dbg !1562
  br i1 %176, label %177, label %179, !dbg !1565

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1562
  store i8 39, i8* %178, align 1, !dbg !1562, !tbaa !1083
  br label %179, !dbg !1562

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %181, !dbg !1566

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1400, metadata !638), !dbg !1463
  %184 = icmp ult i64 %182, %130, !dbg !1567
  br i1 %184, label %185, label %187, !dbg !1570

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1567
  store i8 92, i8* %186, align 1, !dbg !1567, !tbaa !1083
  br label %187, !dbg !1567

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1400, metadata !638), !dbg !1463
  br i1 %105, label %189, label %470, !dbg !1571

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1573
  %191 = icmp ult i64 %190, %155, !dbg !1574
  br i1 %191, label %192, label %470, !dbg !1575

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1576
  %194 = load i8, i8* %193, align 1, !dbg !1576, !tbaa !1083
  %195 = add i8 %194, -48, !dbg !1577
  %196 = icmp ult i8 %195, 10, !dbg !1577
  br i1 %196, label %197, label %470, !dbg !1577

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1578
  br i1 %198, label %199, label %201, !dbg !1582

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1578
  store i8 48, i8* %200, align 1, !dbg !1578, !tbaa !1083
  br label %201, !dbg !1578

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1400, metadata !638), !dbg !1463
  %203 = icmp ult i64 %202, %130, !dbg !1583
  br i1 %203, label %204, label %206, !dbg !1586

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1583
  store i8 48, i8* %205, align 1, !dbg !1583, !tbaa !1083
  br label %206, !dbg !1583

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1400, metadata !638), !dbg !1463
  br label %470, !dbg !1587

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1588

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1589

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1590

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1592

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1594
  %214 = icmp ult i64 %213, %155, !dbg !1595
  br i1 %214, label %215, label %470, !dbg !1596

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1597
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1598
  %218 = load i8, i8* %217, align 1, !dbg !1598, !tbaa !1083
  %219 = icmp eq i8 %218, 63, !dbg !1599
  br i1 %219, label %220, label %470, !dbg !1600

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1601
  %222 = load i8, i8* %221, align 1, !dbg !1601, !tbaa !1083
  %223 = sext i8 %222 to i32, !dbg !1601
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
  ], !dbg !1602

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1603

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1399, metadata !638), !dbg !1520
  %226 = icmp ult i64 %124, %130, !dbg !1605
  br i1 %226, label %227, label %229, !dbg !1608

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1605
  store i8 63, i8* %228, align 1, !dbg !1605, !tbaa !1083
  br label %229, !dbg !1605

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1400, metadata !638), !dbg !1463
  %231 = icmp ult i64 %230, %130, !dbg !1609
  br i1 %231, label %232, label %234, !dbg !1612

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1609
  store i8 34, i8* %233, align 1, !dbg !1609, !tbaa !1083
  br label %234, !dbg !1609

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1400, metadata !638), !dbg !1463
  %236 = icmp ult i64 %235, %130, !dbg !1613
  br i1 %236, label %237, label %239, !dbg !1616

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1613
  store i8 34, i8* %238, align 1, !dbg !1613, !tbaa !1083
  br label %239, !dbg !1613

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1400, metadata !638), !dbg !1463
  %241 = icmp ult i64 %240, %130, !dbg !1617
  br i1 %241, label %242, label %244, !dbg !1620

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1617
  store i8 63, i8* %243, align 1, !dbg !1617, !tbaa !1083
  br label %244, !dbg !1617

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1400, metadata !638), !dbg !1463
  br label %470, !dbg !1621

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1414, metadata !638), !dbg !1622
  br label %256, !dbg !1623

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1414, metadata !638), !dbg !1622
  br label %256, !dbg !1624

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1414, metadata !638), !dbg !1622
  br label %254, !dbg !1625

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1414, metadata !638), !dbg !1622
  br label %254, !dbg !1626

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1414, metadata !638), !dbg !1622
  br label %256, !dbg !1627

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1414, metadata !638), !dbg !1622
  br i1 %113, label %252, label %253, !dbg !1628

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1629

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1632

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1414, metadata !638), !dbg !1622
  br i1 %117, label %256, label %635, !dbg !1634

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1414, metadata !638), !dbg !1622
  br i1 %104, label %497, label %470, !dbg !1636

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1637
  br i1 %259, label %260, label %265, !dbg !1639

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1640, !tbaa !1083
  %262 = icmp ne i8 %261, 0, !dbg !1641
  %263 = icmp ne i64 %123, 0, !dbg !1642
  %264 = or i1 %263, %262, !dbg !1644
  br i1 %264, label %470, label %271, !dbg !1644

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1645
  %267 = icmp ne i64 %123, 0, !dbg !1642
  %268 = or i1 %267, %266, !dbg !1639
  br i1 %268, label %470, label %271, !dbg !1639

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1642
  br i1 %270, label %271, label %470, !dbg !1646

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1417, metadata !638), !dbg !1530
  br label %272, !dbg !1647

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1417, metadata !638), !dbg !1530
  br i1 %117, label %470, label %635, !dbg !1648

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1417, metadata !638), !dbg !1530
  br i1 %113, label %275, label %470, !dbg !1650

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1651

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1654
  %278 = icmp ne i64 %125, 0, !dbg !1656
  %279 = or i1 %278, %277, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1391, metadata !638), !dbg !1455
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1657
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1401, metadata !638), !dbg !1464
  %282 = icmp ult i64 %124, %281, !dbg !1658
  br i1 %282, label %283, label %285, !dbg !1661

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1658
  store i8 39, i8* %284, align 1, !dbg !1658, !tbaa !1083
  br label %285, !dbg !1658

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1400, metadata !638), !dbg !1463
  %287 = icmp ult i64 %286, %281, !dbg !1662
  br i1 %287, label %288, label %290, !dbg !1665

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1662
  store i8 92, i8* %289, align 1, !dbg !1662, !tbaa !1083
  br label %290, !dbg !1662

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1400, metadata !638), !dbg !1463
  %292 = icmp ult i64 %291, %281, !dbg !1666
  br i1 %292, label %293, label %295, !dbg !1669

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1666
  store i8 39, i8* %294, align 1, !dbg !1666, !tbaa !1083
  br label %295, !dbg !1666

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %470, !dbg !1670

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1671

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1418, metadata !638), !dbg !1672
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1673
  %300 = load i16*, i16** %299, align 8, !dbg !1673, !tbaa !645
  %301 = zext i8 %158 to i64, !dbg !1673
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1673
  %303 = load i16, i16* %302, align 2, !dbg !1673, !tbaa !1675
  %304 = lshr i16 %303, 14, !dbg !1676
  %305 = trunc i16 %304 to i8, !dbg !1676
  %306 = and i8 %305, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1421, metadata !638), !dbg !1677
  br label %362, !dbg !1678

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1679
  store i64 0, i64* %10, align 8, !dbg !1680
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1421, metadata !638), !dbg !1677
  %308 = icmp eq i64 %155, -1, !dbg !1681
  br i1 %308, label %309, label %311, !dbg !1683

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1393, metadata !638), !dbg !1457
  br label %311, !dbg !1685

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1393, metadata !638), !dbg !1457
  br label %313, !dbg !1686, !llvm.loop !1687

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1689
  %316 = add i64 %314, %123, !dbg !1690
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1691
  %318 = sub i64 %312, %316, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1422, metadata !638), !dbg !1693
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1440, metadata !638), !dbg !1694
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1443, metadata !638), !dbg !1696
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1697

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1418, metadata !638), !dbg !1672
  %321 = icmp ugt i64 %312, %316, !dbg !1698
  br i1 %321, label %322, label %347, !dbg !1700

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1701

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1418, metadata !638), !dbg !1672
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1701
  %327 = load i8, i8* %326, align 1, !dbg !1701, !tbaa !1083
  %328 = icmp eq i8 %327, 0, !dbg !1700
  br i1 %328, label %347, label %329, !dbg !1702

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1418, metadata !638), !dbg !1672
  %331 = add i64 %330, %123, !dbg !1704
  %332 = icmp ult i64 %331, %312, !dbg !1698
  br i1 %332, label %323, label %347, !dbg !1700, !llvm.loop !1705

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1706
  %335 = and i1 %115, %334, !dbg !1709
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1444, metadata !638), !dbg !1710
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1444, metadata !638), !dbg !1710
  br i1 %335, label %336, label %350, !dbg !1709

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1711

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1444, metadata !638), !dbg !1710
  %339 = add i64 %338, %316, !dbg !1711
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1712
  %341 = load i8, i8* %340, align 1, !dbg !1712, !tbaa !1083
  %342 = sext i8 %341 to i32, !dbg !1712
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1713

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1444, metadata !638), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1444, metadata !638), !dbg !1710
  %345 = icmp ult i64 %344, %319, !dbg !1706
  br i1 %345, label %337, label %350, !dbg !1715, !llvm.loop !1716

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1718

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1718
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1719, !tbaa !725
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1440, metadata !638), !dbg !1694
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1721
  %353 = icmp eq i32 %352, 0, !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1421, metadata !638), !dbg !1677
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1722
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1421, metadata !638), !dbg !1677
  %355 = add i64 %319, %314, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1422, metadata !638), !dbg !1693
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1724
  %357 = icmp eq i32 %356, 0, !dbg !1725
  br i1 %357, label %313, label %358, !dbg !1726, !llvm.loop !1687

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1727
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1727
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1421, metadata !638), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1418, metadata !638), !dbg !1672
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1393, metadata !638), !dbg !1457
  %366 = and i8 %365, 1, !dbg !1728
  %367 = icmp ne i8 %366, 0, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1417, metadata !638), !dbg !1530
  %368 = icmp ult i64 %364, 2, !dbg !1729
  %369 = or i1 %367, %112, !dbg !1730
  %370 = and i1 %368, %369, !dbg !1731
  br i1 %370, label %470, label %371, !dbg !1731

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1451, metadata !638), !dbg !1733
  br label %373, !dbg !1734

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1415, metadata !638), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1399, metadata !638), !dbg !1520
  br i1 %369, label %426, label %380, !dbg !1735

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1740

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1416, metadata !638), !dbg !1529
  %382 = and i8 %376, 1, !dbg !1743
  %383 = icmp eq i8 %382, 0, !dbg !1743
  %384 = and i1 %113, %383, !dbg !1743
  br i1 %384, label %385, label %401, !dbg !1743

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1745
  br i1 %386, label %387, label %389, !dbg !1749

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1745
  store i8 39, i8* %388, align 1, !dbg !1745, !tbaa !1083
  br label %389, !dbg !1745

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1400, metadata !638), !dbg !1463
  %391 = icmp ult i64 %390, %130, !dbg !1750
  br i1 %391, label %392, label %394, !dbg !1753

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1750
  store i8 36, i8* %393, align 1, !dbg !1750, !tbaa !1083
  br label %394, !dbg !1750

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1400, metadata !638), !dbg !1463
  %396 = icmp ult i64 %395, %130, !dbg !1754
  br i1 %396, label %397, label %399, !dbg !1757

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1754
  store i8 39, i8* %398, align 1, !dbg !1754, !tbaa !1083
  br label %399, !dbg !1754

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %401, !dbg !1758

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1400, metadata !638), !dbg !1463
  %404 = icmp ult i64 %402, %130, !dbg !1759
  br i1 %404, label %405, label %407, !dbg !1762

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1759
  store i8 92, i8* %406, align 1, !dbg !1759, !tbaa !1083
  br label %407, !dbg !1759

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1400, metadata !638), !dbg !1463
  %409 = icmp ult i64 %408, %130, !dbg !1763
  br i1 %409, label %410, label %414, !dbg !1766

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1763
  %412 = or i8 %411, 48, !dbg !1763
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1763
  store i8 %412, i8* %413, align 1, !dbg !1763, !tbaa !1083
  br label %414, !dbg !1763

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1400, metadata !638), !dbg !1463
  %416 = icmp ult i64 %415, %130, !dbg !1767
  br i1 %416, label %417, label %422, !dbg !1770

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1767
  %419 = and i8 %418, 7, !dbg !1767
  %420 = or i8 %419, 48, !dbg !1767
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1767
  store i8 %420, i8* %421, align 1, !dbg !1767, !tbaa !1083
  br label %422, !dbg !1767

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1400, metadata !638), !dbg !1463
  %424 = and i8 %377, 7, !dbg !1771
  %425 = or i8 %424, 48, !dbg !1772
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1410, metadata !638), !dbg !1544
  br label %435, !dbg !1773

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1774
  %428 = icmp eq i8 %427, 0, !dbg !1774
  br i1 %428, label %435, label %429, !dbg !1776

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1777
  br i1 %430, label %431, label %433, !dbg !1781

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1777
  store i8 92, i8* %432, align 1, !dbg !1777, !tbaa !1083
  br label %433, !dbg !1777

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !638), !dbg !1528
  br label %435, !dbg !1782

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1415, metadata !638), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1400, metadata !638), !dbg !1463
  %441 = add i64 %374, 1, !dbg !1783
  %442 = icmp ugt i64 %372, %441, !dbg !1785
  br i1 %442, label %443, label %535, !dbg !1786

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1787
  %445 = icmp ne i8 %444, 0, !dbg !1787
  %446 = and i8 %440, 1, !dbg !1787
  %447 = icmp eq i8 %446, 0, !dbg !1787
  %448 = and i1 %445, %447, !dbg !1787
  br i1 %448, label %449, label %460, !dbg !1787

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1790
  br i1 %450, label %451, label %453, !dbg !1794

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1790
  store i8 39, i8* %452, align 1, !dbg !1790, !tbaa !1083
  br label %453, !dbg !1790

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1400, metadata !638), !dbg !1463
  %455 = icmp ult i64 %454, %130, !dbg !1795
  br i1 %455, label %456, label %458, !dbg !1798

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1795
  store i8 39, i8* %457, align 1, !dbg !1795, !tbaa !1083
  br label %458, !dbg !1795

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %460, !dbg !1799

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1400, metadata !638), !dbg !1463
  %463 = icmp ult i64 %461, %130, !dbg !1800
  br i1 %463, label %464, label %466, !dbg !1803

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1800
  store i8 %438, i8* %465, align 1, !dbg !1800, !tbaa !1083
  br label %466, !dbg !1800

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1399, metadata !638), !dbg !1520
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1804
  %469 = load i8, i8* %468, align 1, !dbg !1804, !tbaa !1083
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1410, metadata !638), !dbg !1544
  br label %373, !dbg !1805, !llvm.loop !1806

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1417, metadata !638), !dbg !1530
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1415, metadata !638), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1399, metadata !638), !dbg !1520
  br i1 %106, label %482, label %481, !dbg !1809

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1811

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1812

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1813
  %485 = zext i8 %484 to i64, !dbg !1813
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1814
  %487 = load i32, i32* %486, align 4, !dbg !1814, !tbaa !725
  %488 = and i8 %477, 31, !dbg !1815
  %489 = zext i8 %488 to i32, !dbg !1816
  %490 = shl i32 1, %489, !dbg !1817
  %491 = and i32 %487, %490, !dbg !1817
  %492 = icmp eq i32 %491, 0, !dbg !1817
  %493 = icmp eq i8 %156, 0, !dbg !1818
  %494 = and i1 %493, %492, !dbg !1819
  br i1 %494, label %535, label %497, !dbg !1819

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1818
  br i1 %496, label %535, label %497, !dbg !1820

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1417, metadata !638), !dbg !1530
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1399, metadata !638), !dbg !1520
  br i1 %111, label %507, label %635, !dbg !1821

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1416, metadata !638), !dbg !1529
  %508 = and i8 %502, 1, !dbg !1823
  %509 = icmp eq i8 %508, 0, !dbg !1823
  %510 = and i1 %113, %509, !dbg !1823
  br i1 %510, label %511, label %527, !dbg !1823

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1825
  br i1 %512, label %513, label %515, !dbg !1829

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1825
  store i8 39, i8* %514, align 1, !dbg !1825, !tbaa !1083
  br label %515, !dbg !1825

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1400, metadata !638), !dbg !1463
  %517 = icmp ult i64 %516, %506, !dbg !1830
  br i1 %517, label %518, label %520, !dbg !1833

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1830
  store i8 36, i8* %519, align 1, !dbg !1830, !tbaa !1083
  br label %520, !dbg !1830

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1400, metadata !638), !dbg !1463
  %522 = icmp ult i64 %521, %506, !dbg !1834
  br i1 %522, label %523, label %525, !dbg !1837

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1834
  store i8 39, i8* %524, align 1, !dbg !1834, !tbaa !1083
  br label %525, !dbg !1834

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %527, !dbg !1838

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1400, metadata !638), !dbg !1463
  %530 = icmp ult i64 %528, %506, !dbg !1839
  br i1 %530, label %531, label %533, !dbg !1842

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1839
  store i8 92, i8* %532, align 1, !dbg !1839, !tbaa !1083
  br label %533, !dbg !1839

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1417, metadata !638), !dbg !1530
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1399, metadata !638), !dbg !1520
  br label %562, !dbg !1843

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1417, metadata !638), !dbg !1530
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1416, metadata !638), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1410, metadata !638), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1399, metadata !638), !dbg !1520
  %546 = and i8 %540, 1, !dbg !1843
  %547 = icmp ne i8 %546, 0, !dbg !1843
  %548 = and i8 %543, 1, !dbg !1843
  %549 = icmp eq i8 %548, 0, !dbg !1843
  %550 = and i1 %547, %549, !dbg !1843
  br i1 %550, label %551, label %562, !dbg !1843

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1846
  br i1 %552, label %553, label %555, !dbg !1850

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1846
  store i8 39, i8* %554, align 1, !dbg !1846, !tbaa !1083
  br label %555, !dbg !1846

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1400, metadata !638), !dbg !1463
  %557 = icmp ult i64 %556, %545, !dbg !1851
  br i1 %557, label %558, label %560, !dbg !1854

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1851
  store i8 39, i8* %559, align 1, !dbg !1851, !tbaa !1083
  br label %560, !dbg !1851

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1407, metadata !638), !dbg !1471
  br label %562, !dbg !1855

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1400, metadata !638), !dbg !1463
  %572 = icmp ult i64 %570, %563, !dbg !1856
  br i1 %572, label %573, label %575, !dbg !1859

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1856
  store i8 %565, i8* %574, align 1, !dbg !1856, !tbaa !1083
  br label %575, !dbg !1856

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1400, metadata !638), !dbg !1463
  %577 = and i8 %564, 1, !dbg !1860
  %578 = icmp eq i8 %577, 0, !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1409, metadata !638), !dbg !1473
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1862
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1409, metadata !638), !dbg !1473
  br label %580, !dbg !1863

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1409, metadata !638), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1408, metadata !638), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1407, metadata !638), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1393, metadata !638), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1401, metadata !638), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1399, metadata !638), !dbg !1520
  %589 = add i64 %581, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1399, metadata !638), !dbg !1520
  br label %122, !dbg !1865, !llvm.loop !1866

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1868
  %593 = and i1 %113, %592, !dbg !1870
  %594 = xor i1 %593, true, !dbg !1870
  %595 = or i1 %111, %594, !dbg !1870
  br i1 %595, label %596, label %635, !dbg !1870

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1871
  %598 = xor i1 %597, true, !dbg !1871
  %599 = and i8 %128, 1, !dbg !1873
  %600 = icmp eq i8 %599, 0, !dbg !1873
  %601 = or i1 %600, %598, !dbg !1871
  br i1 %601, label %611, label %602, !dbg !1871

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1874
  %604 = icmp eq i8 %603, 0, !dbg !1874
  br i1 %604, label %607, label %605, !dbg !1877

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1878
  br label %645, !dbg !1879

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1880
  %609 = icmp ne i64 %125, 0, !dbg !1882
  %610 = and i1 %609, %608, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1400, metadata !638), !dbg !1463
  br i1 %610, label %27, label %611, !dbg !1883

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1884
  %613 = and i1 %612, %111, !dbg !1886
  br i1 %613, label %614, label %630, !dbg !1886

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1400, metadata !638), !dbg !1463
  %615 = load i8, i8* %99, align 1, !dbg !1887, !tbaa !1083
  %616 = icmp eq i8 %615, 0, !dbg !1890
  br i1 %616, label %630, label %617, !dbg !1890

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1891

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1400, metadata !638), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1402, metadata !638), !dbg !1465
  %622 = icmp ult i64 %621, %130, !dbg !1891
  br i1 %622, label %623, label %625, !dbg !1894

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1891
  store i8 %619, i8* %624, align 1, !dbg !1891, !tbaa !1083
  br label %625, !dbg !1891

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1400, metadata !638), !dbg !1463
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1402, metadata !638), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1400, metadata !638), !dbg !1463
  %628 = load i8, i8* %627, align 1, !dbg !1887, !tbaa !1083
  %629 = icmp eq i8 %628, 0, !dbg !1890
  br i1 %629, label %630, label %618, !dbg !1890, !llvm.loop !1896

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1400, metadata !638), !dbg !1463
  %632 = icmp ult i64 %631, %130, !dbg !1898
  br i1 %632, label %633, label %645, !dbg !1900

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1901
  store i8 0, i8* %634, align 1, !dbg !1902, !tbaa !1083
  br label %645, !dbg !1901

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1391, metadata !638), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1393, metadata !638), !dbg !1457
  %639 = icmp ne i32 %636, 2, !dbg !1903
  %640 = icmp eq i8 %103, 0, !dbg !1905
  %641 = or i1 %639, %640, !dbg !1906
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1394, metadata !638), !dbg !1458
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1394, metadata !638), !dbg !1458
  %643 = and i32 %5, -3, !dbg !1907
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1908
  br label %645, !dbg !1909

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1910
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1911 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1915, metadata !638), !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1916, metadata !638), !dbg !1920
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1921
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1917, metadata !638), !dbg !1922
  %4 = icmp eq i8* %3, %0, !dbg !1923
  br i1 %4, label %5, label %75, !dbg !1925

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1926
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1918, metadata !638), !dbg !1927
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1928, metadata !638), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1942, metadata !638), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1943, metadata !638), !dbg !1948
  %7 = load i8, i8* %6, align 1, !dbg !1949, !tbaa !1083
  %8 = sext i8 %7 to i32, !dbg !1949
  %9 = and i32 %8, -33, !dbg !1949
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1949

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1951, metadata !638), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1963, metadata !638), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !638), !dbg !1970
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1971
  %12 = load i8, i8* %11, align 1, !dbg !1971, !tbaa !1083
  %13 = sext i8 %12 to i32, !dbg !1971
  %14 = and i32 %13, -33, !dbg !1971
  %15 = icmp eq i32 %14, 84, !dbg !1971
  br i1 %15, label %16, label %72, !dbg !1971

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1973, metadata !638), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1984, metadata !638), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !638), !dbg !1991
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1992
  %18 = load i8, i8* %17, align 1, !dbg !1992, !tbaa !1083
  %19 = sext i8 %18 to i32, !dbg !1992
  %20 = and i32 %19, -33, !dbg !1992
  %21 = icmp eq i32 %20, 70, !dbg !1992
  br i1 %21, label %22, label %72, !dbg !1992

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1994, metadata !638), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2004, metadata !638), !dbg !2010
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2005, metadata !638), !dbg !2011
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2012
  %24 = load i8, i8* %23, align 1, !dbg !2012, !tbaa !1083
  %25 = icmp eq i8 %24, 45, !dbg !2012
  br i1 %25, label %26, label %72, !dbg !2014

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2015, metadata !638), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2024, metadata !638), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !638), !dbg !2031
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2032
  %28 = load i8, i8* %27, align 1, !dbg !2032, !tbaa !1083
  %29 = icmp eq i8 %28, 56, !dbg !2032
  br i1 %29, label %30, label %72, !dbg !2034

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2035, metadata !638), !dbg !2045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2043, metadata !638), !dbg !2049
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !638), !dbg !2050
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2051
  %32 = load i8, i8* %31, align 1, !dbg !2051, !tbaa !1083
  %33 = icmp eq i8 %32, 0, !dbg !2051
  br i1 %33, label %34, label %72, !dbg !2053

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2054, !tbaa !1083
  %36 = icmp eq i8 %35, 96, !dbg !2055
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2054
  br label %75, !dbg !2056

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1951, metadata !638), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1963, metadata !638), !dbg !2061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !638), !dbg !2062
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2063
  %40 = load i8, i8* %39, align 1, !dbg !2063, !tbaa !1083
  %41 = sext i8 %40 to i32, !dbg !2063
  %42 = and i32 %41, -33, !dbg !2063
  %43 = icmp eq i32 %42, 66, !dbg !2063
  br i1 %43, label %44, label %72, !dbg !2063

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1973, metadata !638), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1984, metadata !638), !dbg !2066
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !638), !dbg !2067
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2068
  %46 = load i8, i8* %45, align 1, !dbg !2068, !tbaa !1083
  %47 = icmp eq i8 %46, 49, !dbg !2068
  br i1 %47, label %48, label %72, !dbg !2069

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1994, metadata !638), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2004, metadata !638), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2005, metadata !638), !dbg !2073
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2074
  %50 = load i8, i8* %49, align 1, !dbg !2074, !tbaa !1083
  %51 = icmp eq i8 %50, 56, !dbg !2074
  br i1 %51, label %52, label %72, !dbg !2075

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2015, metadata !638), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2024, metadata !638), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !638), !dbg !2079
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2080
  %54 = load i8, i8* %53, align 1, !dbg !2080, !tbaa !1083
  %55 = icmp eq i8 %54, 48, !dbg !2080
  br i1 %55, label %56, label %72, !dbg !2081

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2035, metadata !638), !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2043, metadata !638), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !638), !dbg !2085
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2086
  %58 = load i8, i8* %57, align 1, !dbg !2086, !tbaa !1083
  %59 = icmp eq i8 %58, 51, !dbg !2086
  br i1 %59, label %60, label %72, !dbg !2087

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2088, metadata !638), !dbg !2097
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2095, metadata !638), !dbg !2101
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2096, metadata !638), !dbg !2102
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2103
  %62 = load i8, i8* %61, align 1, !dbg !2103, !tbaa !1083
  %63 = icmp eq i8 %62, 48, !dbg !2103
  br i1 %63, label %64, label %72, !dbg !2105

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2106, metadata !638), !dbg !2114
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !638), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2113, metadata !638), !dbg !2119
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2120
  %66 = load i8, i8* %65, align 1, !dbg !2120, !tbaa !1083
  %67 = icmp eq i8 %66, 0, !dbg !2120
  br i1 %67, label %68, label %72, !dbg !2122

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2123, !tbaa !1083
  %70 = icmp eq i8 %69, 96, !dbg !2124
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2123
  br label %75, !dbg !2125

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2126
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2127
  br label %75, !dbg !2128

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2129
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2130 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2134, metadata !638), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2135, metadata !638), !dbg !2138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2136, metadata !638), !dbg !2139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2140, metadata !638) #11, !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2145, metadata !638) #11, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2146, metadata !638) #11, !dbg !2156
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2147, metadata !638) #11, !dbg !2157
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2158
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2148, metadata !638) #11, !dbg !2159
  %6 = tail call i32* @__errno_location() #17, !dbg !2160
  %7 = load i32, i32* %6, align 4, !dbg !2160, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2149, metadata !638) #11, !dbg !2161
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2162
  %9 = load i32, i32* %8, align 4, !dbg !2162, !tbaa !1323
  %10 = or i32 %9, 1, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2150, metadata !638) #11, !dbg !2164
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2165
  %12 = load i32, i32* %11, align 8, !dbg !2165, !tbaa !1263
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2166
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2167
  %15 = load i8*, i8** %14, align 8, !dbg !2167, !tbaa !1349
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2168
  %17 = load i8*, i8** %16, align 8, !dbg !2168, !tbaa !1352
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2169
  %19 = add i64 %18, 1, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2151, metadata !638) #11, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2172, metadata !638) #11, !dbg !2177
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2179
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2152, metadata !638) #11, !dbg !2180
  %21 = load i32, i32* %11, align 8, !dbg !2181, !tbaa !1263
  %22 = load i8*, i8** %14, align 8, !dbg !2182, !tbaa !1349
  %23 = load i8*, i8** %16, align 8, !dbg !2183, !tbaa !1352
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2184
  store i32 %7, i32* %6, align 4, !dbg !2185, !tbaa !725
  ret i8* %20, !dbg !2186
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2141 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2140, metadata !638), !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2145, metadata !638), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2146, metadata !638), !dbg !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2147, metadata !638), !dbg !2190
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2191
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2148, metadata !638), !dbg !2192
  %7 = tail call i32* @__errno_location() #17, !dbg !2193
  %8 = load i32, i32* %7, align 4, !dbg !2193, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2149, metadata !638), !dbg !2194
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2195
  %10 = load i32, i32* %9, align 4, !dbg !2195, !tbaa !1323
  %11 = icmp ne i64* %2, null, !dbg !2196
  %12 = xor i1 %11, true, !dbg !2196
  %13 = zext i1 %12 to i32, !dbg !2196
  %14 = or i32 %10, %13, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2150, metadata !638), !dbg !2198
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2199
  %16 = load i32, i32* %15, align 8, !dbg !2199, !tbaa !1263
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2200
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2201
  %19 = load i8*, i8** %18, align 8, !dbg !2201, !tbaa !1349
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2202
  %21 = load i8*, i8** %20, align 8, !dbg !2202, !tbaa !1352
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2203
  %23 = add i64 %22, 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2151, metadata !638), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2172, metadata !638) #11, !dbg !2206
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2208
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2152, metadata !638), !dbg !2209
  %25 = load i32, i32* %15, align 8, !dbg !2210, !tbaa !1263
  %26 = load i8*, i8** %18, align 8, !dbg !2211, !tbaa !1349
  %27 = load i8*, i8** %20, align 8, !dbg !2212, !tbaa !1352
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2213
  store i32 %8, i32* %7, align 4, !dbg !2214, !tbaa !725
  br i1 %11, label %29, label %30, !dbg !2215

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2216, !tbaa !2218
  br label %30, !dbg !2219

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2220
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2221 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2225, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2223, metadata !638), !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2224, metadata !638), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2224, metadata !638), !dbg !2227
  %2 = load i32, i32* @nslots, align 4, !dbg !2228, !tbaa !725
  %3 = icmp sgt i32 %2, 1, !dbg !2231
  br i1 %3, label %4, label %13, !dbg !2232

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2233

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2224, metadata !638), !dbg !2227
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2233
  %8 = load i8*, i8** %7, align 8, !dbg !2233, !tbaa !2234
  tail call void @free(i8* %8) #11, !dbg !2236
  %9 = add nuw i64 %6, 1, !dbg !2237
  %10 = load i32, i32* @nslots, align 4, !dbg !2228, !tbaa !725
  %11 = sext i32 %10 to i64, !dbg !2231
  %12 = icmp slt i64 %9, %11, !dbg !2231
  br i1 %12, label %5, label %13, !dbg !2232, !llvm.loop !2238

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2240
  %15 = load i8*, i8** %14, align 8, !dbg !2240, !tbaa !2234
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2242
  br i1 %16, label %18, label %17, !dbg !2243

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2244
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2246, !tbaa !2247
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2248, !tbaa !2234
  br label %18, !dbg !2249

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2250
  br i1 %19, label %22, label %20, !dbg !2252

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2253
  tail call void @free(i8* %21) #11, !dbg !2255
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2256, !tbaa !645
  br label %22, !dbg !2257

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2258, !tbaa !725
  ret void, !dbg !2259
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2260 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2264, metadata !638), !dbg !2266
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2265, metadata !638), !dbg !2267
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2268
  ret i8* %3, !dbg !2269
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2270 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2274, metadata !638), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2275, metadata !638), !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2276, metadata !638), !dbg !2290
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2277, metadata !638), !dbg !2291
  %5 = tail call i32* @__errno_location() #17, !dbg !2292
  %6 = load i32, i32* %5, align 4, !dbg !2292, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2278, metadata !638), !dbg !2293
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2294, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2279, metadata !638), !dbg !2295
  %8 = icmp slt i32 %0, 0, !dbg !2296
  br i1 %8, label %9, label %10, !dbg !2298

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2299
  unreachable, !dbg !2299

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2300, !tbaa !725
  %12 = icmp sgt i32 %11, %0, !dbg !2301
  br i1 %12, label %34, label %13, !dbg !2302

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2303
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2304
  br i1 %15, label %16, label %17, !dbg !2306

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2307
  unreachable, !dbg !2307

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2308
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2308
  %20 = add nsw i32 %0, 1, !dbg !2309
  %21 = sext i32 %20 to i64, !dbg !2310
  %22 = shl nsw i64 %21, 4, !dbg !2311
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2312
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2279, metadata !638), !dbg !2295
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2313, !tbaa !645
  br i1 %14, label %25, label %26, !dbg !2314

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2315, !tbaa.struct !2317
  br label %26, !dbg !2318

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2319, !tbaa !725
  %28 = sext i32 %27 to i64, !dbg !2320
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2320
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2321
  %31 = sub nsw i32 %20, %27, !dbg !2322
  %32 = sext i32 %31 to i64, !dbg !2323
  %33 = shl nsw i64 %32, 4, !dbg !2324
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2321
  store i32 %20, i32* @nslots, align 4, !dbg !2325, !tbaa !725
  br label %34, !dbg !2326

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2279, metadata !638), !dbg !2295
  %36 = sext i32 %0 to i64, !dbg !2327
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2328
  %38 = load i64, i64* %37, align 8, !dbg !2328, !tbaa !2247
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2283, metadata !638), !dbg !2329
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2330
  %40 = load i8*, i8** %39, align 8, !dbg !2330, !tbaa !2234
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2285, metadata !638), !dbg !2331
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2332
  %42 = load i32, i32* %41, align 4, !dbg !2332, !tbaa !1323
  %43 = or i32 %42, 1, !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2286, metadata !638), !dbg !2334
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2335
  %45 = load i32, i32* %44, align 8, !dbg !2335, !tbaa !1263
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2336
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2337
  %48 = load i8*, i8** %47, align 8, !dbg !2337, !tbaa !1349
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2338
  %50 = load i8*, i8** %49, align 8, !dbg !2338, !tbaa !1352
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2287, metadata !638), !dbg !2340
  %52 = icmp ugt i64 %38, %51, !dbg !2341
  br i1 %52, label %63, label %53, !dbg !2343

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2283, metadata !638), !dbg !2329
  store i64 %54, i64* %37, align 8, !dbg !2346, !tbaa !2247
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2347
  br i1 %55, label %57, label %56, !dbg !2349

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2350
  br label %57, !dbg !2350

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2172, metadata !638) #11, !dbg !2351
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2285, metadata !638), !dbg !2331
  store i8* %58, i8** %39, align 8, !dbg !2354, !tbaa !2234
  %59 = load i32, i32* %44, align 8, !dbg !2355, !tbaa !1263
  %60 = load i8*, i8** %47, align 8, !dbg !2356, !tbaa !1349
  %61 = load i8*, i8** %49, align 8, !dbg !2357, !tbaa !1352
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2358
  br label %63, !dbg !2359

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2285, metadata !638), !dbg !2331
  store i32 %6, i32* %5, align 4, !dbg !2360, !tbaa !725
  ret i8* %64, !dbg !2361
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2362 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2366, metadata !638), !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2367, metadata !638), !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2368, metadata !638), !dbg !2371
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2372
  ret i8* %4, !dbg !2373
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2374 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2378, metadata !638), !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2264, metadata !638) #11, !dbg !2380
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2265, metadata !638) #11, !dbg !2382
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2383
  ret i8* %2, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2385 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2389, metadata !638), !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2390, metadata !638), !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2366, metadata !638) #11, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2367, metadata !638) #11, !dbg !2395
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2368, metadata !638) #11, !dbg !2396
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2397
  ret i8* %3, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2399 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2407, metadata !2413), !dbg !2414
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2403, metadata !638), !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !638), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2405, metadata !638), !dbg !2418
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2419
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2406, metadata !638), !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !638) #11, !dbg !2421
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2422
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2407, metadata !638) #11, !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2414
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2414
  %8 = icmp eq i32 %1, 10, !dbg !2424
  br i1 %8, label %9, label %10, !dbg !2426

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2427, !noalias !2428
  unreachable, !dbg !2427

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2407, metadata !2423) #11, !dbg !2414
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2431
  store i32 %1, i32* %11, align 8, !dbg !2431, !alias.scope !2428
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2431
  %13 = bitcast i32* %12 to i8*, !dbg !2431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2406, metadata !638), !dbg !2420
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2434
  ret i8* %14, !dbg !2435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2436 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2407, metadata !2413), !dbg !2445
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2440, metadata !638), !dbg !2447
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2441, metadata !638), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2442, metadata !638), !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2443, metadata !638), !dbg !2450
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2444, metadata !638), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !638) #11, !dbg !2453
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2454
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2407, metadata !638) #11, !dbg !2445
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2445
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2445
  %9 = icmp eq i32 %1, 10, !dbg !2455
  br i1 %9, label %10, label %11, !dbg !2456

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2457, !noalias !2458
  unreachable, !dbg !2457

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2407, metadata !2423) #11, !dbg !2445
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2461
  store i32 %1, i32* %12, align 8, !dbg !2461, !alias.scope !2458
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2461
  %14 = bitcast i32* %13 to i8*, !dbg !2461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2461
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2444, metadata !638), !dbg !2452
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2464
  ret i8* %15, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2466 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2407, metadata !2413), !dbg !2472
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2470, metadata !638), !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2471, metadata !638), !dbg !2476
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2403, metadata !638) #11, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !638) #11, !dbg !2478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2405, metadata !638) #11, !dbg !2479
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2480
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2406, metadata !638) #11, !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !638) #11, !dbg !2482
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2483
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2483
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2407, metadata !638) #11, !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2472
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2472
  %7 = icmp eq i32 %0, 10, !dbg !2484
  br i1 %7, label %8, label %9, !dbg !2485

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2486, !noalias !2487
  unreachable, !dbg !2486

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2472
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2490
  store i32 %0, i32* %10, align 8, !dbg !2490, !alias.scope !2487
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2490
  %12 = bitcast i32* %11 to i8*, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2490
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2406, metadata !638) #11, !dbg !2481
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2492
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2493
  ret i8* %13, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2495 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2407, metadata !2413), !dbg !2502
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2499, metadata !638), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2500, metadata !638), !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2501, metadata !638), !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2440, metadata !638) #11, !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2441, metadata !638) #11, !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2442, metadata !638) #11, !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2443, metadata !638) #11, !dbg !2511
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2512
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2444, metadata !638) #11, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2412, metadata !638) #11, !dbg !2514
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2515
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2407, metadata !638) #11, !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2502
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2502
  %8 = icmp eq i32 %0, 10, !dbg !2516
  br i1 %8, label %9, label %10, !dbg !2517

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2518, !noalias !2519
  unreachable, !dbg !2518

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2502
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2522
  store i32 %0, i32* %11, align 8, !dbg !2522, !alias.scope !2519
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2522
  %13 = bitcast i32* %12 to i8*, !dbg !2522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2444, metadata !638) #11, !dbg !2513
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2525
  ret i8* %14, !dbg !2526
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2527 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2531, metadata !638), !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2532, metadata !638), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2533, metadata !638), !dbg !2537
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2539, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2534, metadata !638), !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1282, metadata !638), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1283, metadata !638), !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1284, metadata !638), !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1285, metadata !638), !dbg !2546
  %6 = lshr i8 %2, 5, !dbg !2547
  %7 = zext i8 %6 to i64, !dbg !2547
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1286, metadata !638), !dbg !2549
  %9 = and i8 %2, 31, !dbg !2550
  %10 = zext i8 %9 to i32, !dbg !2551
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1288, metadata !638), !dbg !2552
  %11 = load i32, i32* %8, align 4, !dbg !2553, !tbaa !725
  %12 = lshr i32 %11, %10, !dbg !2554
  %13 = and i32 %12, 1, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1289, metadata !638), !dbg !2556
  %14 = xor i32 %13, 1, !dbg !2557
  %15 = shl i32 %14, %10, !dbg !2558
  %16 = xor i32 %15, %11, !dbg !2559
  store i32 %16, i32* %8, align 4, !dbg !2559, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2534, metadata !638), !dbg !2541
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2561
  ret i8* %17, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2563 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2567, metadata !638), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2568, metadata !638), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2531, metadata !638) #11, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2532, metadata !638) #11, !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2533, metadata !638) #11, !dbg !2574
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2576, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2534, metadata !638) #11, !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1282, metadata !638) #11, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1283, metadata !638) #11, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1284, metadata !638) #11, !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1285, metadata !638) #11, !dbg !2582
  %5 = lshr i8 %1, 5, !dbg !2583
  %6 = zext i8 %5 to i64, !dbg !2583
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1286, metadata !638) #11, !dbg !2585
  %8 = and i8 %1, 31, !dbg !2586
  %9 = zext i8 %8 to i32, !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1288, metadata !638) #11, !dbg !2588
  %10 = load i32, i32* %7, align 4, !dbg !2589, !tbaa !725
  %11 = lshr i32 %10, %9, !dbg !2590
  %12 = and i32 %11, 1, !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1289, metadata !638) #11, !dbg !2592
  %13 = xor i32 %12, 1, !dbg !2593
  %14 = shl i32 %13, %9, !dbg !2594
  %15 = xor i32 %14, %10, !dbg !2595
  store i32 %15, i32* %7, align 4, !dbg !2595, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2534, metadata !638) #11, !dbg !2577
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2597
  ret i8* %16, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2599 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2601, metadata !638), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2567, metadata !638) #11, !dbg !2603
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2568, metadata !638) #11, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2531, metadata !638) #11, !dbg !2606
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2532, metadata !638) #11, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2533, metadata !638) #11, !dbg !2609
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2610
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2611, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2534, metadata !638) #11, !dbg !2612
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1282, metadata !638) #11, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1283, metadata !638) #11, !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1284, metadata !638) #11, !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1285, metadata !638) #11, !dbg !2617
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2618
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1286, metadata !638) #11, !dbg !2619
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1288, metadata !638) #11, !dbg !2620
  %5 = load i32, i32* %4, align 4, !dbg !2621, !tbaa !725
  %6 = or i32 %5, 67108864, !dbg !2622
  store i32 %6, i32* %4, align 4, !dbg !2622, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2534, metadata !638) #11, !dbg !2612
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2624
  ret i8* %7, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2626 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2628, metadata !638), !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2629, metadata !638), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2531, metadata !638) #11, !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2532, metadata !638) #11, !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2533, metadata !638) #11, !dbg !2635
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2637, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2534, metadata !638) #11, !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1282, metadata !638) #11, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1283, metadata !638) #11, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1284, metadata !638) #11, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1285, metadata !638) #11, !dbg !2643
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2644
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1286, metadata !638) #11, !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1288, metadata !638) #11, !dbg !2646
  %6 = load i32, i32* %5, align 4, !dbg !2647, !tbaa !725
  %7 = or i32 %6, 67108864, !dbg !2648
  store i32 %7, i32* %5, align 4, !dbg !2648, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2534, metadata !638) #11, !dbg !2638
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2650
  ret i8* %8, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2652 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2407, metadata !2413), !dbg !2658
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2654, metadata !638), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2655, metadata !638), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2656, metadata !638), !dbg !2662
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2412, metadata !638) #11, !dbg !2664
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2665
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2665
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2407, metadata !638) #11, !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2407, metadata !2423) #11, !dbg !2658
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2658
  %9 = icmp eq i32 %1, 10, !dbg !2666
  br i1 %9, label %10, label %11, !dbg !2667

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2668, !noalias !2669
  unreachable, !dbg !2668

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2407, metadata !2423) #11, !dbg !2658
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2673
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2674
  store i32 %1, i32* %13, align 8, !dbg !2674
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2674
  %15 = bitcast i32* %14 to i8*, !dbg !2674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2657, metadata !638), !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1282, metadata !638), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1283, metadata !638), !dbg !2678
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1284, metadata !638), !dbg !2679
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1285, metadata !638), !dbg !2680
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2681
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1286, metadata !638), !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1288, metadata !638), !dbg !2683
  %17 = load i32, i32* %16, align 4, !dbg !2684, !tbaa !725
  %18 = or i32 %17, 67108864, !dbg !2685
  store i32 %18, i32* %16, align 4, !dbg !2685, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2657, metadata !638), !dbg !2675
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2686
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2687
  ret i8* %19, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2689 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2693, metadata !638), !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2694, metadata !638), !dbg !2698
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2695, metadata !638), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2696, metadata !638), !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2701, metadata !638) #11, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2706, metadata !638) #11, !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2707, metadata !638) #11, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2708, metadata !638) #11, !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2709, metadata !638) #11, !dbg !2716
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2718, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !638) #11, !dbg !2719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1331, metadata !638) #11, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1332, metadata !638) #11, !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1333, metadata !638) #11, !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1331, metadata !638) #11, !dbg !2720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1331, metadata !638) #11, !dbg !2720
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2724
  store i32 10, i32* %7, align 8, !dbg !2725, !tbaa !1263
  %8 = icmp ne i8* %1, null, !dbg !2726
  %9 = icmp ne i8* %2, null, !dbg !2727
  %10 = and i1 %8, %9, !dbg !2728
  br i1 %10, label %12, label %11, !dbg !2728

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2729
  unreachable, !dbg !2729

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2730
  store i8* %1, i8** %13, align 8, !dbg !2731, !tbaa !1349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2732
  store i8* %2, i8** %14, align 8, !dbg !2733, !tbaa !1352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !638) #11, !dbg !2719
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2735
  ret i8* %15, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2702 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2701, metadata !638), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2706, metadata !638), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2707, metadata !638), !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2708, metadata !638), !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2709, metadata !638), !dbg !2741
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2743, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2710, metadata !638), !dbg !2744
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1331, metadata !638) #11, !dbg !2745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1332, metadata !638) #11, !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1333, metadata !638) #11, !dbg !2748
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1331, metadata !638) #11, !dbg !2745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1331, metadata !638) #11, !dbg !2745
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2749
  store i32 10, i32* %8, align 8, !dbg !2750, !tbaa !1263
  %9 = icmp ne i8* %1, null, !dbg !2751
  %10 = icmp ne i8* %2, null, !dbg !2752
  %11 = and i1 %9, %10, !dbg !2753
  br i1 %11, label %13, label %12, !dbg !2753

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2754
  unreachable, !dbg !2754

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2755
  store i8* %1, i8** %14, align 8, !dbg !2756, !tbaa !1349
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2757
  store i8* %2, i8** %15, align 8, !dbg !2758, !tbaa !1352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2710, metadata !638), !dbg !2744
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2759
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2760
  ret i8* %16, !dbg !2761
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2762 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2766, metadata !638), !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2767, metadata !638), !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2768, metadata !638), !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2693, metadata !638) #11, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !638) #11, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2695, metadata !638) #11, !dbg !2775
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2696, metadata !638) #11, !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2701, metadata !638) #11, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !638) #11, !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2707, metadata !638) #11, !dbg !2780
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2708, metadata !638) #11, !dbg !2781
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2709, metadata !638) #11, !dbg !2782
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2783
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2784, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2710, metadata !638) #11, !dbg !2785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1331, metadata !638) #11, !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1332, metadata !638) #11, !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1333, metadata !638) #11, !dbg !2789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1331, metadata !638) #11, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1331, metadata !638) #11, !dbg !2786
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2790
  store i32 10, i32* %6, align 8, !dbg !2791, !tbaa !1263
  %7 = icmp ne i8* %0, null, !dbg !2792
  %8 = icmp ne i8* %1, null, !dbg !2793
  %9 = and i1 %7, %8, !dbg !2794
  br i1 %9, label %11, label %10, !dbg !2794

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2795
  unreachable, !dbg !2795

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2796
  store i8* %0, i8** %12, align 8, !dbg !2797, !tbaa !1349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2798
  store i8* %1, i8** %13, align 8, !dbg !2799, !tbaa !1352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2710, metadata !638) #11, !dbg !2785
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2801
  ret i8* %14, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2803 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2807, metadata !638), !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2808, metadata !638), !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2809, metadata !638), !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2810, metadata !638), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2701, metadata !638) #11, !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !638) #11, !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2707, metadata !638) #11, !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2708, metadata !638) #11, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2709, metadata !638) #11, !dbg !2820
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2821
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2822, !tbaa.struct !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !638) #11, !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1331, metadata !638) #11, !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1332, metadata !638) #11, !dbg !2826
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1333, metadata !638) #11, !dbg !2827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1331, metadata !638) #11, !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1331, metadata !638) #11, !dbg !2824
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2828
  store i32 10, i32* %7, align 8, !dbg !2829, !tbaa !1263
  %8 = icmp ne i8* %0, null, !dbg !2830
  %9 = icmp ne i8* %1, null, !dbg !2831
  %10 = and i1 %8, %9, !dbg !2832
  br i1 %10, label %12, label %11, !dbg !2832

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2833
  unreachable, !dbg !2833

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2834
  store i8* %0, i8** %13, align 8, !dbg !2835, !tbaa !1349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2836
  store i8* %1, i8** %14, align 8, !dbg !2837, !tbaa !1352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !638) #11, !dbg !2823
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2839
  ret i8* %15, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !638), !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2846, metadata !638), !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2847, metadata !638), !dbg !2850
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2851
  ret i8* %4, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2853 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2857, metadata !638), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2858, metadata !638), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !638) #11, !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2846, metadata !638) #11, !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2847, metadata !638) #11, !dbg !2864
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2865
  ret i8* %3, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2867 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2871, metadata !638), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2872, metadata !638), !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !638) #11, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2846, metadata !638) #11, !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2847, metadata !638) #11, !dbg !2878
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2879
  ret i8* %3, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2883, metadata !638), !dbg !2884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2871, metadata !638) #11, !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2872, metadata !638) #11, !dbg !2887
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !638) #11, !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2846, metadata !638) #11, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2847, metadata !638) #11, !dbg !2891
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2892
  ret i8* %2, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !2894 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2897, metadata !638), !dbg !2898
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !2899
  ret i32 %2, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2901 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2946, metadata !638), !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2947, metadata !638), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2948, metadata !638), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2949, metadata !638), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2950, metadata !638), !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2951, metadata !638), !dbg !2957
  %7 = icmp eq i8* %1, null, !dbg !2958
  br i1 %7, label %10, label %8, !dbg !2960

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2961
  br label %12, !dbg !2961

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2962
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #11, !dbg !2963
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2963
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.83, i64 0, i64 0), i32 5) #11, !dbg !2964
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2964
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
  ], !dbg !2965

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2966
  unreachable, !dbg !2966

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #11, !dbg !2968
  %20 = load i8*, i8** %4, align 8, !dbg !2968, !tbaa !645
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2968
  br label %146, !dbg !2969

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.85, i64 0, i64 0), i32 5) #11, !dbg !2970
  %24 = load i8*, i8** %4, align 8, !dbg !2970, !tbaa !645
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2970
  %26 = load i8*, i8** %25, align 8, !dbg !2970, !tbaa !645
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2970
  br label %146, !dbg !2971

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #11, !dbg !2972
  %30 = load i8*, i8** %4, align 8, !dbg !2972, !tbaa !645
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2972
  %32 = load i8*, i8** %31, align 8, !dbg !2972, !tbaa !645
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2972
  %34 = load i8*, i8** %33, align 8, !dbg !2972, !tbaa !645
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2972
  br label %146, !dbg !2973

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #11, !dbg !2974
  %38 = load i8*, i8** %4, align 8, !dbg !2974, !tbaa !645
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2974
  %40 = load i8*, i8** %39, align 8, !dbg !2974, !tbaa !645
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2974
  %42 = load i8*, i8** %41, align 8, !dbg !2974, !tbaa !645
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2974
  %44 = load i8*, i8** %43, align 8, !dbg !2974, !tbaa !645
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2974
  br label %146, !dbg !2975

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #11, !dbg !2976
  %48 = load i8*, i8** %4, align 8, !dbg !2976, !tbaa !645
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2976
  %50 = load i8*, i8** %49, align 8, !dbg !2976, !tbaa !645
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2976
  %52 = load i8*, i8** %51, align 8, !dbg !2976, !tbaa !645
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2976
  %54 = load i8*, i8** %53, align 8, !dbg !2976, !tbaa !645
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2976
  %56 = load i8*, i8** %55, align 8, !dbg !2976, !tbaa !645
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2976
  br label %146, !dbg !2977

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #11, !dbg !2978
  %60 = load i8*, i8** %4, align 8, !dbg !2978, !tbaa !645
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2978
  %62 = load i8*, i8** %61, align 8, !dbg !2978, !tbaa !645
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2978
  %64 = load i8*, i8** %63, align 8, !dbg !2978, !tbaa !645
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2978
  %66 = load i8*, i8** %65, align 8, !dbg !2978, !tbaa !645
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2978
  %68 = load i8*, i8** %67, align 8, !dbg !2978, !tbaa !645
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2978
  %70 = load i8*, i8** %69, align 8, !dbg !2978, !tbaa !645
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2978
  br label %146, !dbg !2979

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #11, !dbg !2980
  %74 = load i8*, i8** %4, align 8, !dbg !2980, !tbaa !645
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2980
  %76 = load i8*, i8** %75, align 8, !dbg !2980, !tbaa !645
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2980
  %78 = load i8*, i8** %77, align 8, !dbg !2980, !tbaa !645
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2980
  %80 = load i8*, i8** %79, align 8, !dbg !2980, !tbaa !645
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2980
  %82 = load i8*, i8** %81, align 8, !dbg !2980, !tbaa !645
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2980
  %84 = load i8*, i8** %83, align 8, !dbg !2980, !tbaa !645
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2980
  %86 = load i8*, i8** %85, align 8, !dbg !2980, !tbaa !645
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2980
  br label %146, !dbg !2981

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #11, !dbg !2982
  %90 = load i8*, i8** %4, align 8, !dbg !2982, !tbaa !645
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2982
  %92 = load i8*, i8** %91, align 8, !dbg !2982, !tbaa !645
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2982
  %94 = load i8*, i8** %93, align 8, !dbg !2982, !tbaa !645
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2982
  %96 = load i8*, i8** %95, align 8, !dbg !2982, !tbaa !645
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2982
  %98 = load i8*, i8** %97, align 8, !dbg !2982, !tbaa !645
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2982
  %100 = load i8*, i8** %99, align 8, !dbg !2982, !tbaa !645
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2982
  %102 = load i8*, i8** %101, align 8, !dbg !2982, !tbaa !645
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2982
  %104 = load i8*, i8** %103, align 8, !dbg !2982, !tbaa !645
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2982
  br label %146, !dbg !2983

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #11, !dbg !2984
  %108 = load i8*, i8** %4, align 8, !dbg !2984, !tbaa !645
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2984
  %110 = load i8*, i8** %109, align 8, !dbg !2984, !tbaa !645
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2984
  %112 = load i8*, i8** %111, align 8, !dbg !2984, !tbaa !645
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2984
  %114 = load i8*, i8** %113, align 8, !dbg !2984, !tbaa !645
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2984
  %116 = load i8*, i8** %115, align 8, !dbg !2984, !tbaa !645
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2984
  %118 = load i8*, i8** %117, align 8, !dbg !2984, !tbaa !645
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2984
  %120 = load i8*, i8** %119, align 8, !dbg !2984, !tbaa !645
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2984
  %122 = load i8*, i8** %121, align 8, !dbg !2984, !tbaa !645
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2984
  %124 = load i8*, i8** %123, align 8, !dbg !2984, !tbaa !645
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2984
  br label %146, !dbg !2985

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #11, !dbg !2986
  %128 = load i8*, i8** %4, align 8, !dbg !2986, !tbaa !645
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2986
  %130 = load i8*, i8** %129, align 8, !dbg !2986, !tbaa !645
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2986
  %132 = load i8*, i8** %131, align 8, !dbg !2986, !tbaa !645
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2986
  %134 = load i8*, i8** %133, align 8, !dbg !2986, !tbaa !645
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2986
  %136 = load i8*, i8** %135, align 8, !dbg !2986, !tbaa !645
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2986
  %138 = load i8*, i8** %137, align 8, !dbg !2986, !tbaa !645
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2986
  %140 = load i8*, i8** %139, align 8, !dbg !2986, !tbaa !645
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2986
  %142 = load i8*, i8** %141, align 8, !dbg !2986, !tbaa !645
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2986
  %144 = load i8*, i8** %143, align 8, !dbg !2986, !tbaa !645
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2986
  br label %146, !dbg !2987

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2988
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2993, metadata !638), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2994, metadata !638), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2995, metadata !638), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2996, metadata !638), !dbg !3002
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2997, metadata !638), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2998, metadata !638), !dbg !3004
  br label %6, !dbg !3005

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2998, metadata !638), !dbg !3004
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3007
  %9 = load i8*, i8** %8, align 8, !dbg !3007, !tbaa !645
  %10 = icmp eq i8* %9, null, !dbg !3009
  %11 = add i64 %7, 1, !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2998, metadata !638), !dbg !3004
  br i1 %10, label %12, label %6, !dbg !3009, !llvm.loop !3011

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3013
  ret void, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3015 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3026, metadata !638), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3027, metadata !638), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3028, metadata !638), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3029, metadata !638), !dbg !3037
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3030, metadata !638), !dbg !3038
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3039
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3039
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3032, metadata !638), !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %11 = load i32, i32* %8, align 8, !dbg !3042
  %12 = icmp ult i32 %11, 41, !dbg !3042
  br i1 %12, label %13, label %18, !dbg !3042

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3042
  %15 = sext i32 %11 to i64, !dbg !3042
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3042
  %17 = add i32 %11, 8, !dbg !3042
  store i32 %17, i32* %8, align 8, !dbg !3042
  br label %21, !dbg !3042

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3042
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3042
  store i8* %20, i8** %10, align 8, !dbg !3042
  br label %21, !dbg !3042

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3042
  %25 = load i8*, i8** %24, align 8, !dbg !3042
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3045
  store i8* %25, i8** %26, align 16, !dbg !3046, !tbaa !645
  %27 = icmp eq i8* %25, null, !dbg !3047
  br i1 %27, label %30, label %28, !dbg !3048

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %29 = icmp ult i32 %22, 41, !dbg !3042
  br i1 %29, label %35, label %32, !dbg !3042

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3049
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3050
  ret void, !dbg !3050

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3042
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3042
  store i8* %34, i8** %10, align 8, !dbg !3042
  br label %40, !dbg !3042

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3042
  %37 = sext i32 %22 to i64, !dbg !3042
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3042
  %39 = add i32 %22, 8, !dbg !3042
  store i32 %39, i32* %8, align 8, !dbg !3042
  br label %40, !dbg !3042

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3042
  %44 = load i8*, i8** %43, align 8, !dbg !3042
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3045
  store i8* %44, i8** %45, align 8, !dbg !3046, !tbaa !645
  %46 = icmp eq i8* %44, null, !dbg !3047
  br i1 %46, label %30, label %47, !dbg !3048

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %48 = icmp ult i32 %41, 41, !dbg !3042
  br i1 %48, label %52, label %49, !dbg !3042

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3042
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3042
  store i8* %51, i8** %10, align 8, !dbg !3042
  br label %57, !dbg !3042

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3042
  %54 = sext i32 %41 to i64, !dbg !3042
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3042
  %56 = add i32 %41, 8, !dbg !3042
  store i32 %56, i32* %8, align 8, !dbg !3042
  br label %57, !dbg !3042

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3042
  %61 = load i8*, i8** %60, align 8, !dbg !3042
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3045
  store i8* %61, i8** %62, align 16, !dbg !3046, !tbaa !645
  %63 = icmp eq i8* %61, null, !dbg !3047
  br i1 %63, label %30, label %64, !dbg !3048

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %65 = icmp ult i32 %58, 41, !dbg !3042
  br i1 %65, label %69, label %66, !dbg !3042

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3042
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3042
  store i8* %68, i8** %10, align 8, !dbg !3042
  br label %74, !dbg !3042

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3042
  %71 = sext i32 %58 to i64, !dbg !3042
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3042
  %73 = add i32 %58, 8, !dbg !3042
  store i32 %73, i32* %8, align 8, !dbg !3042
  br label %74, !dbg !3042

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3042
  %78 = load i8*, i8** %77, align 8, !dbg !3042
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3045
  store i8* %78, i8** %79, align 8, !dbg !3046, !tbaa !645
  %80 = icmp eq i8* %78, null, !dbg !3047
  br i1 %80, label %30, label %81, !dbg !3048

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %82 = icmp ult i32 %75, 41, !dbg !3042
  br i1 %82, label %86, label %83, !dbg !3042

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3042
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3042
  store i8* %85, i8** %10, align 8, !dbg !3042
  br label %91, !dbg !3042

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3042
  %88 = sext i32 %75 to i64, !dbg !3042
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3042
  %90 = add i32 %75, 8, !dbg !3042
  store i32 %90, i32* %8, align 8, !dbg !3042
  br label %91, !dbg !3042

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3042
  %95 = load i8*, i8** %94, align 8, !dbg !3042
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3045
  store i8* %95, i8** %96, align 16, !dbg !3046, !tbaa !645
  %97 = icmp eq i8* %95, null, !dbg !3047
  br i1 %97, label %30, label %98, !dbg !3048

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %99 = icmp ult i32 %92, 41, !dbg !3042
  br i1 %99, label %103, label %100, !dbg !3042

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3042
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3042
  store i8* %102, i8** %10, align 8, !dbg !3042
  br label %108, !dbg !3042

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3042
  %105 = sext i32 %92 to i64, !dbg !3042
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3042
  %107 = add i32 %92, 8, !dbg !3042
  store i32 %107, i32* %8, align 8, !dbg !3042
  br label %108, !dbg !3042

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3042
  %111 = load i8*, i8** %110, align 8, !dbg !3042
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3045
  store i8* %111, i8** %112, align 8, !dbg !3046, !tbaa !645
  %113 = icmp eq i8* %111, null, !dbg !3047
  br i1 %113, label %30, label %114, !dbg !3048

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %115 = load i8*, i8** %10, align 8, !dbg !3042
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3042
  store i8* %116, i8** %10, align 8, !dbg !3042
  %117 = bitcast i8* %115 to i8**, !dbg !3042
  %118 = load i8*, i8** %117, align 8, !dbg !3042
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3045
  store i8* %118, i8** %119, align 16, !dbg !3046, !tbaa !645
  %120 = icmp eq i8* %118, null, !dbg !3047
  br i1 %120, label %30, label %121, !dbg !3048

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %122 = load i8*, i8** %10, align 8, !dbg !3042
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3042
  store i8* %123, i8** %10, align 8, !dbg !3042
  %124 = bitcast i8* %122 to i8**, !dbg !3042
  %125 = load i8*, i8** %124, align 8, !dbg !3042
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3045
  store i8* %125, i8** %126, align 8, !dbg !3046, !tbaa !645
  %127 = icmp eq i8* %125, null, !dbg !3047
  br i1 %127, label %30, label %128, !dbg !3048

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %129 = load i8*, i8** %10, align 8, !dbg !3042
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3042
  store i8* %130, i8** %10, align 8, !dbg !3042
  %131 = bitcast i8* %129 to i8**, !dbg !3042
  %132 = load i8*, i8** %131, align 8, !dbg !3042
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3045
  store i8* %132, i8** %133, align 16, !dbg !3046, !tbaa !645
  %134 = icmp eq i8* %132, null, !dbg !3047
  br i1 %134, label %30, label %135, !dbg !3048

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3031, metadata !638), !dbg !3041
  %136 = load i8*, i8** %10, align 8, !dbg !3042
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3042
  store i8* %137, i8** %10, align 8, !dbg !3042
  %138 = bitcast i8* %136 to i8**, !dbg !3042
  %139 = load i8*, i8** %138, align 8, !dbg !3042
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3045
  store i8* %139, i8** %140, align 8, !dbg !3046, !tbaa !645
  %141 = icmp eq i8* %139, null, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3031, metadata !638), !dbg !3041
  %142 = select i1 %141, i64 9, i64 10, !dbg !3048
  br label %30, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3051 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3055, metadata !638), !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3056, metadata !638), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3057, metadata !638), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3058, metadata !638), !dbg !3067
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3068
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3059, metadata !638), !dbg !3069
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3070
  call void @llvm.va_start(i8* nonnull %6), !dbg !3070
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3071
  call void @llvm.va_end(i8* nonnull %6), !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3073
  ret void, !dbg !3073
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3074 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #11, !dbg !3075
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.97, i64 0, i64 0)) #11, !dbg !3075
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #11, !dbg !3076
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.100, i64 0, i64 0)) #11, !dbg !3076
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.101, i64 0, i64 0), i32 5) #11, !dbg !3077
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3077, !tbaa !645
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3077
  ret void, !dbg !3078
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3079 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3083, metadata !638), !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3084, metadata !638), !dbg !3086
  %3 = udiv i64 9223372036854775807, %1, !dbg !3087
  %4 = icmp ult i64 %3, %0, !dbg !3087
  br i1 %4, label %5, label %6, !dbg !3089

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3090
  unreachable, !dbg !3090

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3092, metadata !638) #11, !dbg !3099
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3098, metadata !638) #11, !dbg !3102
  %9 = icmp eq i8* %8, null, !dbg !3103
  %10 = icmp ne i64 %7, 0, !dbg !3105
  %11 = and i1 %10, %9, !dbg !3106
  br i1 %11, label %12, label %13, !dbg !3106

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3107
  unreachable, !dbg !3107

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3093 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3092, metadata !638), !dbg !3109
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3098, metadata !638), !dbg !3111
  %3 = icmp eq i8* %2, null, !dbg !3112
  %4 = icmp ne i64 %0, 0, !dbg !3113
  %5 = and i1 %4, %3, !dbg !3114
  br i1 %5, label %6, label %7, !dbg !3114

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3115
  unreachable, !dbg !3115

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3116
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3117 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3121, metadata !638), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3122, metadata !638), !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3123, metadata !638), !dbg !3126
  %4 = udiv i64 9223372036854775807, %2, !dbg !3127
  %5 = icmp ult i64 %4, %1, !dbg !3127
  br i1 %5, label %6, label %7, !dbg !3129

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3130
  unreachable, !dbg !3130

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638) #11, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3137, metadata !638) #11, !dbg !3140
  %9 = icmp eq i64 %8, 0, !dbg !3141
  %10 = icmp ne i8* %0, null, !dbg !3143
  %11 = and i1 %10, %9, !dbg !3144
  br i1 %11, label %12, label %13, !dbg !3144

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3145
  br label %19, !dbg !3147

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3132, metadata !638) #11, !dbg !3138
  %15 = icmp eq i8* %14, null, !dbg !3149
  %16 = icmp ne i64 %8, 0, !dbg !3151
  %17 = and i1 %16, %15, !dbg !3152
  br i1 %17, label %18, label %19, !dbg !3152

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3153
  unreachable, !dbg !3153

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3154
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3137, metadata !638), !dbg !3156
  %3 = icmp eq i64 %1, 0, !dbg !3157
  %4 = icmp ne i8* %0, null, !dbg !3158
  %5 = and i1 %4, %3, !dbg !3159
  br i1 %5, label %6, label %7, !dbg !3159

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3160
  br label %13, !dbg !3161

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3132, metadata !638), !dbg !3155
  %9 = icmp eq i8* %8, null, !dbg !3163
  %10 = icmp ne i64 %1, 0, !dbg !3164
  %11 = and i1 %10, %9, !dbg !3165
  br i1 %11, label %12, label %13, !dbg !3165

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3166
  unreachable, !dbg !3166

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3167
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !597 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !602, metadata !638), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !603, metadata !638), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !604, metadata !638), !dbg !3170
  %4 = load i64, i64* %1, align 8, !dbg !3171, !tbaa !2218
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !605, metadata !638), !dbg !3172
  %5 = icmp eq i8* %0, null, !dbg !3173
  br i1 %5, label %6, label %13, !dbg !3175

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3176
  br i1 %7, label %8, label %17, !dbg !3179

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !605, metadata !638), !dbg !3172
  %10 = icmp ugt i64 %2, 128, !dbg !3182
  %11 = zext i1 %10 to i64, !dbg !3182
  %12 = add nuw nsw i64 %9, %11, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !605, metadata !638), !dbg !3172
  br label %17, !dbg !3184

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3185
  %15 = icmp ugt i64 %14, %4, !dbg !3188
  br i1 %15, label %20, label %16, !dbg !3189

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !605, metadata !638), !dbg !3172
  store i64 %18, i64* %1, align 8, !dbg !3191, !tbaa !2218
  %19 = mul i64 %18, %2, !dbg !3192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3137, metadata !638) #11, !dbg !3195
  br label %27, !dbg !3196

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3197
  %22 = add i64 %4, 1, !dbg !3198
  %23 = add i64 %22, %21, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !605, metadata !638), !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !605, metadata !638), !dbg !3172
  store i64 %23, i64* %1, align 8, !dbg !3191, !tbaa !2218
  %24 = mul i64 %23, %2, !dbg !3192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3137, metadata !638) #11, !dbg !3195
  %25 = icmp eq i64 %24, 0, !dbg !3200
  br i1 %25, label %26, label %27, !dbg !3196

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3201
  br label %34, !dbg !3202

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3132, metadata !638) #11, !dbg !3193
  %30 = icmp eq i8* %29, null, !dbg !3204
  %31 = icmp ne i64 %28, 0, !dbg !3205
  %32 = and i1 %31, %30, !dbg !3206
  br i1 %32, label %33, label %34, !dbg !3206

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3207
  unreachable, !dbg !3207

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3208
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3209 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3211, metadata !638), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3092, metadata !638) #11, !dbg !3213
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3098, metadata !638) #11, !dbg !3216
  %3 = icmp eq i8* %2, null, !dbg !3217
  %4 = icmp ne i64 %0, 0, !dbg !3218
  %5 = and i1 %4, %3, !dbg !3219
  br i1 %5, label %6, label %7, !dbg !3219

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3220
  unreachable, !dbg !3220

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3221
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3222 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3226, metadata !638), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3227, metadata !638), !dbg !3229
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !602, metadata !638) #11, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !603, metadata !638) #11, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !604, metadata !638) #11, !dbg !3233
  %3 = load i64, i64* %1, align 8, !dbg !3234, !tbaa !2218
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  %4 = icmp eq i8* %0, null, !dbg !3236
  br i1 %4, label %5, label %8, !dbg !3237

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  store i64 %7, i64* %1, align 8, !dbg !3240, !tbaa !2218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638) #11, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3137, metadata !638) #11, !dbg !3243
  br label %17, !dbg !3244

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3245
  br i1 %9, label %11, label %10, !dbg !3246

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3247
  unreachable, !dbg !3247

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3248
  %13 = add i64 %3, 1, !dbg !3249
  %14 = add i64 %13, %12, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !605, metadata !638) #11, !dbg !3235
  store i64 %14, i64* %1, align 8, !dbg !3240, !tbaa !2218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3132, metadata !638) #11, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3137, metadata !638) #11, !dbg !3243
  %15 = icmp eq i64 %14, 0, !dbg !3251
  br i1 %15, label %16, label %17, !dbg !3244

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3252
  br label %24, !dbg !3253

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3132, metadata !638) #11, !dbg !3241
  %20 = icmp eq i8* %19, null, !dbg !3255
  %21 = icmp ne i64 %18, 0, !dbg !3256
  %22 = and i1 %21, %20, !dbg !3257
  br i1 %22, label %23, label %24, !dbg !3257

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3258
  unreachable, !dbg !3258

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3260 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3262, metadata !638), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3092, metadata !638) #11, !dbg !3264
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3098, metadata !638) #11, !dbg !3267
  %3 = icmp eq i8* %2, null, !dbg !3268
  %4 = icmp ne i64 %0, 0, !dbg !3269
  %5 = and i1 %4, %3, !dbg !3270
  br i1 %5, label %6, label %7, !dbg !3270

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3271
  unreachable, !dbg !3271

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3272
  ret i8* %2, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3274 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3276, metadata !638), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3277, metadata !638), !dbg !3280
  %3 = udiv i64 9223372036854775807, %1, !dbg !3281
  %4 = icmp ult i64 %3, %0, !dbg !3281
  br i1 %4, label %8, label %5, !dbg !3283

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3284
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3278, metadata !638), !dbg !3285
  %7 = icmp eq i8* %6, null, !dbg !3286
  br i1 %7, label %8, label %9, !dbg !3287

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3288
  unreachable, !dbg !3288

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3289
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3290 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3294, metadata !638), !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3295, metadata !638), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3092, metadata !638) #11, !dbg !3298
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3098, metadata !638) #11, !dbg !3301
  %4 = icmp eq i8* %3, null, !dbg !3302
  %5 = icmp ne i64 %1, 0, !dbg !3303
  %6 = and i1 %5, %4, !dbg !3304
  br i1 %6, label %7, label %8, !dbg !3304

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3305
  unreachable, !dbg !3305

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3306
  ret i8* %3, !dbg !3307
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3308 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3310, metadata !638), !dbg !3311
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3312
  %3 = add i64 %2, 1, !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3294, metadata !638) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3295, metadata !638) #11, !dbg !3316
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3092, metadata !638) #11, !dbg !3317
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3098, metadata !638) #11, !dbg !3320
  %5 = icmp eq i8* %4, null, !dbg !3321
  %6 = icmp ne i64 %3, 0, !dbg !3322
  %7 = and i1 %6, %5, !dbg !3323
  br i1 %7, label %8, label %9, !dbg !3323

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3324
  unreachable, !dbg !3324

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3325
  ret i8* %4, !dbg !3326
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3327 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3329, !tbaa !725
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.112, i64 0, i64 0), i32 5) #11, !dbg !3330
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* %2) #11, !dbg !3331
  tail call void @abort() #15, !dbg !3332
  unreachable, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3333 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3336, metadata !638), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3337, metadata !638), !dbg !3343
  %3 = icmp eq i64 %0, 0, !dbg !3344
  %4 = icmp eq i64 %1, 0, !dbg !3345
  %5 = or i1 %3, %4, !dbg !3346
  br i1 %5, label %12, label %6, !dbg !3346

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3339, metadata !638), !dbg !3348
  %8 = udiv i64 %7, %1, !dbg !3349
  %9 = icmp eq i64 %8, %0, !dbg !3351
  br i1 %9, label %12, label %10, !dbg !3352

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3353
  store i32 12, i32* %11, align 4, !dbg !3355, !tbaa !725
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3336, metadata !638), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3337, metadata !638), !dbg !3343
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3338, metadata !638), !dbg !3357
  br label %16, !dbg !3358

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3359
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !151 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !159, metadata !638), !dbg !3360
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !160, metadata !638), !dbg !3361
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !3362
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !161, metadata !638), !dbg !3363
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !174, metadata !638), !dbg !3364
  call void @llvm.va_start(i8* nonnull %4), !dbg !3365
  %5 = icmp eq i32 %1, 1030, !dbg !3366
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3366

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3367

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3367
  %12 = load i8*, i8** %11, align 16, !dbg !3367
  %13 = sext i32 %7 to i64, !dbg !3367
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3367
  %15 = add i32 %7, 8, !dbg !3367
  store i32 %15, i32* %6, align 16, !dbg !3367
  br label %20, !dbg !3367

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3367
  %18 = load i8*, i8** %17, align 8, !dbg !3367
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3367
  store i8* %19, i8** %17, align 8, !dbg !3367
  br label %20, !dbg !3367

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3367
  %23 = load i32, i32* %22, align 4, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !175, metadata !638), !dbg !3368
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3369, !tbaa !725
  %25 = icmp sgt i32 %24, -1, !dbg !3371
  br i1 %25, label %26, label %39, !dbg !3372

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !174, metadata !638), !dbg !3364
  %28 = icmp sgt i32 %27, -1, !dbg !3375
  br i1 %28, label %36, label %29, !dbg !3377

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3378
  %31 = load i32, i32* %30, align 4, !dbg !3378, !tbaa !725
  %32 = icmp eq i32 %31, 22, !dbg !3379
  br i1 %32, label %33, label %36, !dbg !3380

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !174, metadata !638), !dbg !3364
  %35 = icmp slt i32 %34, 0, !dbg !3383
  br i1 %35, label %75, label %36, !dbg !3385

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !174, metadata !638), !dbg !3364
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !725
  br label %42, !dbg !3386

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !174, metadata !638), !dbg !3364
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3388
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3388
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !174, metadata !638), !dbg !3364
  %45 = icmp sgt i32 %44, -1, !dbg !3389
  %46 = icmp eq i32 %43, -1, !dbg !3390
  %47 = and i1 %45, %46, !dbg !3391
  br i1 %47, label %48, label %75, !dbg !3391

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !3392
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !178, metadata !638), !dbg !3393
  %50 = icmp slt i32 %49, 0, !dbg !3394
  br i1 %50, label %55, label %51, !dbg !3395

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !3396
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !3397
  %54 = icmp eq i32 %53, -1, !dbg !3398
  br i1 %54, label %55, label %75, !dbg !3399

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !3400
  %57 = load i32, i32* %56, align 4, !dbg !3400, !tbaa !725
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !181, metadata !638), !dbg !3401
  %58 = call i32 @close(i32 %44) #11, !dbg !3402
  store i32 %57, i32* %56, align 4, !dbg !3403, !tbaa !725
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !174, metadata !638), !dbg !3364
  br label %75, !dbg !3404

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !3405

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3405
  %62 = load i8*, i8** %61, align 16, !dbg !3405
  %63 = sext i32 %7 to i64, !dbg !3405
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !3405
  %65 = add i32 %7, 8, !dbg !3405
  store i32 %65, i32* %6, align 16, !dbg !3405
  br label %70, !dbg !3405

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3405
  %68 = load i8*, i8** %67, align 8, !dbg !3405
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !3405
  store i8* %69, i8** %67, align 8, !dbg !3405
  br label %70, !dbg !3405

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !3405
  %73 = load i8*, i8** %72, align 8, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !184, metadata !638), !dbg !3406
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !3407
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !174, metadata !638), !dbg !3364
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !174, metadata !638), !dbg !3364
  call void @llvm.va_end(i8* nonnull %4), !dbg !3408
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !3409
  ret i32 %76, !dbg !3410
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3411 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3428, metadata !638), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3429, metadata !638), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3430, metadata !638), !dbg !3439
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3431, metadata !638), !dbg !3440
  %6 = bitcast i32* %5 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3441
  %7 = icmp eq i32* %0, null, !dbg !3442
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3428, metadata !638), !dbg !3437
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3444
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3428, metadata !638), !dbg !3437
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3432, metadata !638), !dbg !3446
  %10 = icmp ugt i64 %9, -3, !dbg !3447
  %11 = icmp ne i64 %2, 0, !dbg !3448
  %12 = and i1 %11, %10, !dbg !3449
  br i1 %12, label %13, label %18, !dbg !3449

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3450
  br i1 %14, label %18, label %15, !dbg !3451

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3452, !tbaa !1083
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3434, metadata !638), !dbg !3453
  %17 = zext i8 %16 to i32, !dbg !3454
  store i32 %17, i32* %8, align 4, !dbg !3455, !tbaa !725
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3456
  ret i64 %19, !dbg !3456
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3457 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3502, metadata !638), !dbg !3507
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3508
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3509, metadata !638), !dbg !3512
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3514
  %4 = load i32, i32* %3, align 8, !dbg !3514, !tbaa !896
  %5 = and i32 %4, 32, !dbg !3514
  %6 = icmp eq i32 %5, 0, !dbg !3515
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3516
  %8 = icmp ne i32 %7, 0, !dbg !3517
  br i1 %6, label %9, label %19, !dbg !3518

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3520
  %11 = xor i1 %8, true, !dbg !3521
  %12 = or i1 %10, %11, !dbg !3521
  %13 = sext i1 %8 to i32, !dbg !3521
  br i1 %12, label %22, label %14, !dbg !3521

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3522
  %16 = load i32, i32* %15, align 4, !dbg !3522, !tbaa !725
  %17 = icmp ne i32 %16, 9, !dbg !3523
  %18 = sext i1 %17 to i32, !dbg !3524
  br label %22, !dbg !3524

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3525

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3527
  store i32 0, i32* %21, align 4, !dbg !3529, !tbaa !725
  br label %22, !dbg !3527

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3530
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #12 !dbg !3531 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3534, metadata !638), !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3535, metadata !638), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3537, metadata !638), !dbg !3540
  br label %2, !dbg !3541

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3535, metadata !638), !dbg !3539
  %4 = load i8, i8* %3, align 1, !dbg !3542, !tbaa !1083
  %5 = icmp eq i8 %4, 47, !dbg !3542
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3543
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3535, metadata !638), !dbg !3539
  br i1 %5, label %2, label %7, !dbg !3541, !llvm.loop !3544

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3545

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !3547
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !3537, metadata !638), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3536, metadata !638), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3535, metadata !638), !dbg !3539
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !3545

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !3550
  %15 = icmp eq i8 %14, 0, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3535, metadata !638), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3537, metadata !638), !dbg !3540
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !3554
  %17 = select i1 %15, i8 %12, i8 0, !dbg !3554
  br label %18, !dbg !3554

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !3537, metadata !638), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3535, metadata !638), !dbg !3539
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !3536, metadata !638), !dbg !3549
  %22 = load i8, i8* %21, align 1, !dbg !3547, !tbaa !1083
  br label %8, !dbg !3556, !llvm.loop !3557

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !3559
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #12 !dbg !3560 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3564, metadata !638), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3566, metadata !638), !dbg !3568
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3565, metadata !638), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3565, metadata !638), !dbg !3571
  %3 = icmp ugt i64 %2, 1, !dbg !3572
  br i1 %3, label %4, label %13, !dbg !3574

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !3575

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3565, metadata !638), !dbg !3571
  %6 = icmp ugt i64 %9, 1, !dbg !3572
  br i1 %6, label %7, label %13, !dbg !3574, !llvm.loop !3576

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3565, metadata !638), !dbg !3571
  %9 = add i64 %8, -1, !dbg !3575
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3575
  %11 = load i8, i8* %10, align 1, !dbg !3575, !tbaa !1083
  %12 = icmp eq i8 %11, 47, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3565, metadata !638), !dbg !3571
  br i1 %12, label %5, label %13, !dbg !3577

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !3579
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3580 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3585, metadata !638), !dbg !3588
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3586, metadata !638), !dbg !3589
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3587, metadata !638), !dbg !3591
  %3 = icmp eq i8* %2, null, !dbg !3592
  br i1 %3, label %11, label %4, !dbg !3594

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i64 0, i64 0)) #14, !dbg !3595
  %6 = icmp eq i32 %5, 0, !dbg !3600
  br i1 %6, label %10, label %7, !dbg !3601

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0)) #14, !dbg !3602
  %9 = icmp eq i32 %8, 0, !dbg !3603
  br i1 %9, label %10, label %11, !dbg !3604

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3586, metadata !638), !dbg !3589
  br label %11, !dbg !3605

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3606
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3607 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3613, metadata !638), !dbg !3687
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3680, metadata !638), !dbg !3690
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3611, metadata !638), !dbg !3692
  %4 = icmp eq i8* %3, null, !dbg !3693
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %3, !dbg !3695
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3611, metadata !638), !dbg !3692
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3696, !tbaa !645
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3627, metadata !638) #11, !dbg !3697
  %7 = icmp eq i8* %6, null, !dbg !3698
  br i1 %7, label %8, label %123, !dbg !3699

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.133, i64 0, i64 0)) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3628, metadata !638) #11, !dbg !3701
  %10 = icmp eq i8* %9, null, !dbg !3702
  br i1 %10, label %14, label %11, !dbg !3704

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3705, !tbaa !1083
  %13 = icmp eq i8 %12, 0, !dbg !3706
  br i1 %13, label %14, label %15, !dbg !3707

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3708

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.134, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3628, metadata !638) #11, !dbg !3701
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3709
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3631, metadata !638) #11, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3633, metadata !638) #11, !dbg !3711
  %18 = icmp eq i64 %17, 0, !dbg !3712
  br i1 %18, label %24, label %19, !dbg !3713

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3714
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3714
  %22 = load i8, i8* %21, align 1, !dbg !3714, !tbaa !1083
  %23 = icmp ne i8 %22, 47, !dbg !3714
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3715
  %27 = add i64 %17, 14, !dbg !3716
  %28 = add i64 %27, %26, !dbg !3717
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3630, metadata !638) #11, !dbg !3719
  %30 = icmp eq i8* %29, null, !dbg !3720
  br i1 %30, label %121, label %31, !dbg !3720

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3721
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3724

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3725, !tbaa !1083
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3727
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.135, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3728
  br label %37, !dbg !3729

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3727
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.135, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3728
  br label %37, !dbg !3729

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3730
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3635, metadata !638) #11, !dbg !3731
  %39 = icmp slt i32 %38, 0, !dbg !3732
  br i1 %39, label %119, label %40, !dbg !3733

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.136, i64 0, i64 0)) #11, !dbg !3734
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3636, metadata !638) #11, !dbg !3735
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3736
  br i1 %42, label %43, label %45, !dbg !3737

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3738
  br label %119, !dbg !3740

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3743

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3744

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3744
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3745
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3746, metadata !638) #11, !dbg !3751
  %54 = load i8*, i8** %48, align 8, !dbg !3753, !tbaa !3754
  %55 = load i8*, i8** %49, align 8, !dbg !3753, !tbaa !3755
  %56 = icmp ult i8* %54, %55, !dbg !3753
  br i1 %56, label %59, label %57, !dbg !3753, !prof !3756

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3753
  br label %63, !dbg !3753

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3753
  store i8* %60, i8** %48, align 8, !dbg !3753, !tbaa !3754
  %61 = load i8, i8* %54, align 1, !dbg !3753, !tbaa !1083
  %62 = zext i8 %61 to i32, !dbg !3753
  br label %63, !dbg !3753

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3753
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3679, metadata !638) #11, !dbg !3757
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3758, !llvm.loop !3759

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3764

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3746, metadata !638) #11, !dbg !3766
  %67 = load i8*, i8** %48, align 8, !dbg !3764, !tbaa !3754
  %68 = load i8*, i8** %49, align 8, !dbg !3764, !tbaa !3755
  %69 = icmp ult i8* %67, %68, !dbg !3764
  br i1 %69, label %72, label %70, !dbg !3764, !prof !3756

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3764
  br label %76, !dbg !3764

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3764
  store i8* %73, i8** %48, align 8, !dbg !3764, !tbaa !3754
  %74 = load i8, i8* %67, align 1, !dbg !3764, !tbaa !1083
  %75 = zext i8 %74 to i32, !dbg !3764
  br label %76, !dbg !3764

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3764
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3679, metadata !638) #11, !dbg !3757
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3767, !llvm.loop !3768

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3771
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.137, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3772
  %81 = icmp slt i32 %80, 2, !dbg !3774
  br i1 %81, label %112, label %82, !dbg !3775

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3684, metadata !638) #11, !dbg !3777
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3685, metadata !638) #11, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3686, metadata !638) #11, !dbg !3780
  %85 = icmp eq i64 %51, 0, !dbg !3781
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3783

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  %90 = add i64 %87, 2, !dbg !3784
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  br label %96, !dbg !3787

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  %94 = add i64 %93, 1, !dbg !3790
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  %99 = icmp eq i8* %98, null, !dbg !3792
  br i1 %99, label %100, label %102, !dbg !3794

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  call void @free(i8* %52) #11, !dbg !3795
  br label %112, !dbg !3797

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3798
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3798
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3799
  %104 = xor i64 %84, -1, !dbg !3800
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3800
  %106 = xor i64 %83, -1, !dbg !3801
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3802, metadata !638) #11, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3809, metadata !638) #11, !dbg !3810
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3812
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3802, metadata !638) #11, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3809, metadata !638) #11, !dbg !3814
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3816
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3677, metadata !638) #11, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3678, metadata !638) #11, !dbg !3742
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3798
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3798
  br label %50, !dbg !3818, !llvm.loop !3768

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3798
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3798
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3819
  %116 = icmp eq i64 %113, 0, !dbg !3820
  br i1 %116, label %119, label %117, !dbg !3822

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3823
  store i8 0, i8* %118, align 1, !dbg !3825, !tbaa !1083
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3627, metadata !638) #11, !dbg !3697
  call void @free(i8* %29) #11, !dbg !3826
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3627, metadata !638) #11, !dbg !3697
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3827, !tbaa !645
  br label %123, !dbg !3828

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3627, metadata !638) #11, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3612, metadata !638), !dbg !3829
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3612, metadata !638), !dbg !3829
  %125 = load i8, i8* %124, align 1, !dbg !3830, !tbaa !1083
  %126 = icmp eq i8 %125, 0, !dbg !3832
  br i1 %126, label %152, label %127, !dbg !3833

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3834

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3612, metadata !638), !dbg !3829
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3834
  %132 = icmp eq i32 %131, 0, !dbg !3836
  br i1 %132, label %139, label %133, !dbg !3837

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3838
  br i1 %134, label %135, label %143, !dbg !3839

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3840
  %137 = load i8, i8* %136, align 1, !dbg !3840, !tbaa !1083
  %138 = icmp eq i8 %137, 0, !dbg !3841
  br i1 %138, label %139, label %143, !dbg !3842

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3843
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3845
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3611, metadata !638), !dbg !3692
  br label %152, !dbg !3847

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3848
  %145 = add i64 %144, 1, !dbg !3849
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3612, metadata !638), !dbg !3829
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3851
  %148 = add i64 %147, 1, !dbg !3852
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3612, metadata !638), !dbg !3829
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3612, metadata !638), !dbg !3829
  %150 = load i8, i8* %149, align 1, !dbg !3830, !tbaa !1083
  %151 = icmp eq i8 %150, 0, !dbg !3832
  br i1 %151, label %152, label %128, !dbg !3833, !llvm.loop !3854

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3611, metadata !638), !dbg !3692
  %154 = load i8, i8* %153, align 1, !dbg !3856, !tbaa !1083
  %155 = icmp eq i8 %154, 0, !dbg !3858
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %153, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3611, metadata !638), !dbg !3692
  ret i8* %156, !dbg !3860
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3906, metadata !638), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3907, metadata !638), !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3909, metadata !638), !dbg !3912
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3908, metadata !638), !dbg !3914
  %3 = icmp slt i32 %2, 0, !dbg !3915
  br i1 %3, label %4, label %6, !dbg !3917

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3918
  br label %24, !dbg !3919

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3920
  %8 = icmp eq i32 %7, 0, !dbg !3920
  br i1 %8, label %13, label %9, !dbg !3922

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3923
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3924
  %12 = icmp eq i64 %11, -1, !dbg !3925
  br i1 %12, label %16, label %13, !dbg !3926

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3927
  %15 = icmp eq i32 %14, 0, !dbg !3927
  br i1 %15, label %16, label %18, !dbg !3928

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !638), !dbg !3911
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3909, metadata !638), !dbg !3912
  br label %24, !dbg !3930

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3931
  %20 = load i32, i32* %19, align 4, !dbg !3931, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !638), !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !638), !dbg !3911
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3909, metadata !638), !dbg !3912
  %22 = icmp eq i32 %20, 0, !dbg !3932
  br i1 %22, label %24, label %23, !dbg !3930

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3934, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3909, metadata !638), !dbg !3912
  br label %24, !dbg !3936

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3937
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3938 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3983, metadata !638), !dbg !3984
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3985
  br i1 %2, label %6, label %3, !dbg !3987

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3988
  %5 = icmp eq i32 %4, 0, !dbg !3988
  br i1 %5, label %6, label %8, !dbg !3989

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3990
  br label %17, !dbg !3991

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3992, metadata !638) #11, !dbg !3997
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3999
  %10 = load i32, i32* %9, align 8, !dbg !3999, !tbaa !896
  %11 = and i32 %10, 256, !dbg !4001
  %12 = icmp eq i32 %11, 0, !dbg !4001
  br i1 %12, label %15, label %13, !dbg !4002

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4003
  br label %15, !dbg !4003

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4004
  br label %17, !dbg !4005

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4006
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4007 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4053, metadata !638), !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4054, metadata !638), !dbg !4060
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4055, metadata !638), !dbg !4061
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4062
  %5 = load i8*, i8** %4, align 8, !dbg !4062, !tbaa !3755
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4063
  %7 = load i8*, i8** %6, align 8, !dbg !4063, !tbaa !3754
  %8 = icmp eq i8* %5, %7, !dbg !4064
  br i1 %8, label %9, label %28, !dbg !4065

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4066
  %11 = load i8*, i8** %10, align 8, !dbg !4066, !tbaa !4067
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4068
  %13 = load i8*, i8** %12, align 8, !dbg !4068, !tbaa !4069
  %14 = icmp eq i8* %11, %13, !dbg !4070
  br i1 %14, label %15, label %28, !dbg !4071

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4072
  %17 = load i8*, i8** %16, align 8, !dbg !4072, !tbaa !4073
  %18 = icmp eq i8* %17, null, !dbg !4074
  br i1 %18, label %19, label %28, !dbg !4075

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4076
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4056, metadata !638), !dbg !4078
  %22 = icmp eq i64 %21, -1, !dbg !4079
  br i1 %22, label %30, label %23, !dbg !4081

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4082
  %25 = load i32, i32* %24, align 8, !dbg !4083, !tbaa !896
  %26 = and i32 %25, -17, !dbg !4083
  store i32 %26, i32* %24, align 8, !dbg !4083, !tbaa !896
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4084
  store i64 %21, i64* %27, align 8, !dbg !4085, !tbaa !4086
  br label %30, !dbg !4087

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4088
  br label %30, !dbg !4089

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4090
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!535, !2, !574, !11, !20, !576, !578, !581, !28, !46, !55, !583, !585, !142, !592, !609, !611, !155, !613, !616, !618, !621, !188, !623, !625, !627}
!llvm.ident = !{!629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629, !629}
!llvm.module.flags = !{!630, !631, !632, !633, !634}

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
!150 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !151, file: !152, line: 335, type: !25, isLocal: true, isDefinition: true)
!151 = distinct !DISubprogram(name: "rpl_fcntl", scope: !152, file: !152, line: 272, type: !153, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !155, variables: !158)
!152 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !DISubroutineType(types: !154)
!154 = !{!25, !25, !25, null}
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !157)
!156 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !{!149}
!158 = !{!159, !160, !161, !174, !175, !178, !181, !184}
!159 = !DILocalVariable(name: "fd", arg: 1, scope: !151, file: !152, line: 272, type: !25)
!160 = !DILocalVariable(name: "action", arg: 2, scope: !151, file: !152, line: 272, type: !25)
!161 = !DILocalVariable(name: "arg", scope: !151, file: !152, line: 274, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !163, line: 30, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !156, line: 274, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 192, elements: !172)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !156, line: 274, size: 192, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !166, file: !156, line: 274, baseType: !113, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !166, file: !156, line: 274, baseType: !113, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !166, file: !156, line: 274, baseType: !49, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !166, file: !156, line: 274, baseType: !49, size: 64, offset: 128)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DILocalVariable(name: "result", scope: !151, file: !152, line: 275, type: !25)
!175 = !DILocalVariable(name: "target", scope: !176, file: !152, line: 322, type: !25)
!176 = distinct !DILexicalBlock(scope: !177, file: !152, line: 321, column: 7)
!177 = distinct !DILexicalBlock(scope: !151, file: !152, line: 278, column: 5)
!178 = !DILocalVariable(name: "flags", scope: !179, file: !152, line: 359, type: !25)
!179 = distinct !DILexicalBlock(scope: !180, file: !152, line: 358, column: 11)
!180 = distinct !DILexicalBlock(scope: !176, file: !152, line: 357, column: 13)
!181 = !DILocalVariable(name: "saved_errno", scope: !182, file: !152, line: 362, type: !25)
!182 = distinct !DILexicalBlock(scope: !183, file: !152, line: 361, column: 15)
!183 = distinct !DILexicalBlock(scope: !179, file: !152, line: 360, column: 17)
!184 = !DILocalVariable(name: "p", scope: !185, file: !152, line: 404, type: !49)
!185 = distinct !DILexicalBlock(scope: !177, file: !152, line: 402, column: 7)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !188, file: !533, line: 120, type: !534, isLocal: true, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !529, globals: !532)
!189 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 41, size: 32, elements: !193)
!192 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!194 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!195 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!196 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!197 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!198 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!199 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!200 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!201 = !DIEnumerator(name: "DAY_1", value: 131079)
!202 = !DIEnumerator(name: "DAY_2", value: 131080)
!203 = !DIEnumerator(name: "DAY_3", value: 131081)
!204 = !DIEnumerator(name: "DAY_4", value: 131082)
!205 = !DIEnumerator(name: "DAY_5", value: 131083)
!206 = !DIEnumerator(name: "DAY_6", value: 131084)
!207 = !DIEnumerator(name: "DAY_7", value: 131085)
!208 = !DIEnumerator(name: "ABMON_1", value: 131086)
!209 = !DIEnumerator(name: "ABMON_2", value: 131087)
!210 = !DIEnumerator(name: "ABMON_3", value: 131088)
!211 = !DIEnumerator(name: "ABMON_4", value: 131089)
!212 = !DIEnumerator(name: "ABMON_5", value: 131090)
!213 = !DIEnumerator(name: "ABMON_6", value: 131091)
!214 = !DIEnumerator(name: "ABMON_7", value: 131092)
!215 = !DIEnumerator(name: "ABMON_8", value: 131093)
!216 = !DIEnumerator(name: "ABMON_9", value: 131094)
!217 = !DIEnumerator(name: "ABMON_10", value: 131095)
!218 = !DIEnumerator(name: "ABMON_11", value: 131096)
!219 = !DIEnumerator(name: "ABMON_12", value: 131097)
!220 = !DIEnumerator(name: "MON_1", value: 131098)
!221 = !DIEnumerator(name: "MON_2", value: 131099)
!222 = !DIEnumerator(name: "MON_3", value: 131100)
!223 = !DIEnumerator(name: "MON_4", value: 131101)
!224 = !DIEnumerator(name: "MON_5", value: 131102)
!225 = !DIEnumerator(name: "MON_6", value: 131103)
!226 = !DIEnumerator(name: "MON_7", value: 131104)
!227 = !DIEnumerator(name: "MON_8", value: 131105)
!228 = !DIEnumerator(name: "MON_9", value: 131106)
!229 = !DIEnumerator(name: "MON_10", value: 131107)
!230 = !DIEnumerator(name: "MON_11", value: 131108)
!231 = !DIEnumerator(name: "MON_12", value: 131109)
!232 = !DIEnumerator(name: "AM_STR", value: 131110)
!233 = !DIEnumerator(name: "PM_STR", value: 131111)
!234 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!235 = !DIEnumerator(name: "D_FMT", value: 131113)
!236 = !DIEnumerator(name: "T_FMT", value: 131114)
!237 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!238 = !DIEnumerator(name: "ERA", value: 131116)
!239 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!240 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!241 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!242 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!243 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!244 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!245 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!246 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!247 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!248 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!249 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!250 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!251 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!252 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!253 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!254 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!255 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!256 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!257 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!258 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!259 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!260 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!261 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!262 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!263 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!264 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!265 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!266 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!267 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!268 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!269 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!270 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!271 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!272 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!273 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!274 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!275 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!276 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!277 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!278 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!279 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!280 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!281 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!282 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!283 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!284 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!285 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!286 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!287 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!288 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!289 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!290 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!291 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!292 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!293 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!294 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!298 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!299 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!300 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!301 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!302 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!303 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!304 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!305 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!306 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!307 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!308 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!309 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!310 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!311 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!312 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!313 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!314 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!315 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!316 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!317 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!318 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!319 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!320 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!321 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!322 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!323 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!324 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!325 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!326 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!337 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!338 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!339 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!340 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!341 = !DIEnumerator(name: "CODESET", value: 14)
!342 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!343 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!345 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!397 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!398 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!413 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!414 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!415 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!416 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!417 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!418 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!419 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!420 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!421 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!422 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!423 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!424 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!425 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!426 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!427 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!428 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!429 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!430 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!431 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!432 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!433 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!434 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!435 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!452 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!453 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!456 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!457 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!458 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!459 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!460 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!461 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!462 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!463 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!464 = !DIEnumerator(name: "THOUSEP", value: 65537)
!465 = !DIEnumerator(name: "__GROUPING", value: 65538)
!466 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!467 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!468 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!469 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!470 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!471 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!472 = !DIEnumerator(name: "__YESSTR", value: 327682)
!473 = !DIEnumerator(name: "__NOSTR", value: 327683)
!474 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!475 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!476 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!477 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!478 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!479 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!486 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!487 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!488 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!496 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!497 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!498 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!500 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!501 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!503 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!507 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!508 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!509 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!510 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!527 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!528 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!529 = !{!49, !50, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!532 = !{!186}
!533 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !537, retainedTypes: !548, globals: !554)
!536 = !DIFile(filename: "src/nohup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !{!538, !541, !58}
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !536, line: 39, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127)
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !542, line: 87, size: 32, elements: !543)
!542 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !{!544, !545, !546, !547}
!544 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!545 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!546 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!547 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!548 = !{!6, !49, !549}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !550, line: 68, baseType: !551)
!550 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !25}
!554 = !{!555}
!555 = !DIGlobalVariableExpression(var: !556)
!556 = distinct !DIGlobalVariable(name: "infomap", scope: !557, file: !542, line: 632, type: !571, isLocal: true, isDefinition: true)
!557 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !542, file: !542, line: 630, type: !558, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !6}
!560 = !{!561, !562, !563, !570}
!561 = !DILocalVariable(name: "program", arg: 1, scope: !557, file: !542, line: 630, type: !6)
!562 = !DILocalVariable(name: "node", scope: !557, file: !542, line: 642, type: !6)
!563 = !DILocalVariable(name: "map_prog", scope: !557, file: !542, line: 643, type: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !557, file: !542, line: 632, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !566, file: !542, line: 632, baseType: !6, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !566, file: !542, line: 632, baseType: !6, size: 64, offset: 64)
!570 = !DILocalVariable(name: "lc_messages", scope: !557, file: !542, line: 655, type: !6)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 896, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 7)
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!575 = !DIFile(filename: "./lib/cloexec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!577 = !DIFile(filename: "./lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580)
!579 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = !{!49}
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580)
!582 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!584 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !587, retainedTypes: !580)
!586 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!588}
!588 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !589, line: 41, size: 32, elements: !590)
!589 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!591}
!591 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !594, retainedTypes: !608)
!593 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !{!595}
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !597, file: !596, line: 192, size: 32, elements: !606)
!596 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DISubprogram(name: "x2nrealloc", scope: !596, file: !596, line: 180, type: !598, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !601)
!598 = !DISubroutineType(types: !599)
!599 = !{!49, !49, !600, !94}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!601 = !{!602, !603, !604, !605}
!602 = !DILocalVariable(name: "p", arg: 1, scope: !597, file: !596, line: 180, type: !49)
!603 = !DILocalVariable(name: "pn", arg: 2, scope: !597, file: !596, line: 180, type: !600)
!604 = !DILocalVariable(name: "s", arg: 3, scope: !597, file: !596, line: 180, type: !94)
!605 = !DILocalVariable(name: "n", scope: !597, file: !596, line: 182, type: !94)
!606 = !{!607}
!607 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!608 = !{!94, !50, !49}
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!610 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580)
!612 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !615)
!614 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = !{!94}
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!617 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !620)
!619 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = !{!50}
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!622 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!624 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580)
!626 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580)
!628 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!630 = !{i32 2, !"Dwarf Version", i32 4}
!631 = !{i32 2, !"Debug Info Version", i32 3}
!632 = !{i32 1, !"wchar_size", i32 4}
!633 = !{i32 7, !"PIC Level", i32 2}
!634 = !{i32 7, !"PIE Level", i32 2}
!635 = distinct !DISubprogram(name: "usage", scope: !536, file: !536, line: 46, type: !552, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !535, variables: !636)
!636 = !{!637}
!637 = !DILocalVariable(name: "status", arg: 1, scope: !635, file: !536, line: 46, type: !25)
!638 = !DIExpression()
!639 = !DILocation(line: 46, column: 12, scope: !635)
!640 = !DILocation(line: 48, column: 14, scope: !641)
!641 = distinct !DILexicalBlock(scope: !635, file: !536, line: 48, column: 7)
!642 = !DILocation(line: 48, column: 7, scope: !635)
!643 = !DILocation(line: 49, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !536, line: 49, column: 5)
!645 = !{!646, !646, i64 0}
!646 = !{!"any pointer", !647, i64 0}
!647 = !{!"omnipotent char", !648, i64 0}
!648 = !{!"Simple C/C++ TBAA"}
!649 = !DILocation(line: 52, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !536, line: 51, column: 5)
!651 = !DILocation(line: 58, column: 7, scope: !650)
!652 = !DILocation(line: 62, column: 7, scope: !650)
!653 = !DILocation(line: 63, column: 7, scope: !650)
!654 = !DILocation(line: 64, column: 7, scope: !650)
!655 = !DILocation(line: 71, column: 7, scope: !650)
!656 = !DILocation(line: 642, column: 15, scope: !557, inlinedAt: !657)
!657 = distinct !DILocation(line: 72, column: 7, scope: !650)
!658 = !DILocation(line: 651, column: 3, scope: !557, inlinedAt: !657)
!659 = !DILocation(line: 655, column: 29, scope: !557, inlinedAt: !657)
!660 = !DILocation(line: 655, column: 15, scope: !557, inlinedAt: !657)
!661 = !DILocation(line: 656, column: 7, scope: !662, inlinedAt: !657)
!662 = distinct !DILexicalBlock(scope: !557, file: !542, line: 656, column: 7)
!663 = !DILocation(line: 656, column: 19, scope: !662, inlinedAt: !657)
!664 = !DILocation(line: 656, column: 22, scope: !662, inlinedAt: !657)
!665 = !DILocation(line: 656, column: 7, scope: !557, inlinedAt: !657)
!666 = !DILocation(line: 662, column: 7, scope: !667, inlinedAt: !657)
!667 = distinct !DILexicalBlock(scope: !662, file: !542, line: 657, column: 5)
!668 = !DILocation(line: 664, column: 5, scope: !667, inlinedAt: !657)
!669 = !DILocation(line: 665, column: 3, scope: !557, inlinedAt: !657)
!670 = !DILocation(line: 667, column: 3, scope: !557, inlinedAt: !657)
!671 = !DILocation(line: 74, column: 3, scope: !635)
!672 = distinct !DISubprogram(name: "main", scope: !536, file: !536, line: 78, type: !673, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !676)
!673 = !DISubroutineType(types: !674)
!674 = !{!25, !25, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !689, !690, !691, !696, !697, !700, !701, !704, !705, !706}
!677 = !DILocalVariable(name: "argc", arg: 1, scope: !672, file: !536, line: 78, type: !25)
!678 = !DILocalVariable(name: "argv", arg: 2, scope: !672, file: !536, line: 78, type: !675)
!679 = !DILocalVariable(name: "out_fd", scope: !672, file: !536, line: 80, type: !25)
!680 = !DILocalVariable(name: "saved_stderr_fd", scope: !672, file: !536, line: 81, type: !25)
!681 = !DILocalVariable(name: "ignoring_input", scope: !672, file: !536, line: 82, type: !17)
!682 = !DILocalVariable(name: "redirecting_stdout", scope: !672, file: !536, line: 83, type: !17)
!683 = !DILocalVariable(name: "stdout_is_closed", scope: !672, file: !536, line: 84, type: !17)
!684 = !DILocalVariable(name: "redirecting_stderr", scope: !672, file: !536, line: 85, type: !17)
!685 = !DILocalVariable(name: "exit_internal_failure", scope: !672, file: !536, line: 86, type: !25)
!686 = !DILocalVariable(name: "in_home", scope: !687, file: !536, line: 137, type: !50)
!687 = distinct !DILexicalBlock(scope: !688, file: !536, line: 136, column: 5)
!688 = distinct !DILexicalBlock(scope: !672, file: !536, line: 135, column: 7)
!689 = !DILocalVariable(name: "file", scope: !687, file: !536, line: 138, type: !6)
!690 = !DILocalVariable(name: "flags", scope: !687, file: !536, line: 139, type: !25)
!691 = !DILocalVariable(name: "mode", scope: !687, file: !536, line: 140, type: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !693, line: 70, baseType: !694)
!693 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !695, line: 138, baseType: !113)
!695 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = !DILocalVariable(name: "umask_value", scope: !687, file: !536, line: 141, type: !692)
!697 = !DILocalVariable(name: "saved_errno", scope: !698, file: !536, line: 148, type: !25)
!698 = distinct !DILexicalBlock(scope: !699, file: !536, line: 147, column: 9)
!699 = distinct !DILexicalBlock(scope: !687, file: !536, line: 146, column: 11)
!700 = !DILocalVariable(name: "home", scope: !698, file: !536, line: 149, type: !6)
!701 = !DILocalVariable(name: "saved_errno2", scope: !702, file: !536, line: 159, type: !25)
!702 = distinct !DILexicalBlock(scope: !703, file: !536, line: 158, column: 13)
!703 = distinct !DILexicalBlock(scope: !698, file: !536, line: 157, column: 15)
!704 = !DILocalVariable(name: "cmd", scope: !672, file: !536, line: 217, type: !675)
!705 = !DILocalVariable(name: "exit_status", scope: !672, file: !536, line: 219, type: !25)
!706 = !DILocalVariable(name: "saved_errno", scope: !672, file: !536, line: 220, type: !25)
!707 = !DILocation(line: 78, column: 11, scope: !672)
!708 = !DILocation(line: 78, column: 24, scope: !672)
!709 = !DILocation(line: 80, column: 7, scope: !672)
!710 = !DILocation(line: 81, column: 7, scope: !672)
!711 = !DILocation(line: 89, column: 21, scope: !672)
!712 = !DILocation(line: 89, column: 3, scope: !672)
!713 = !DILocation(line: 90, column: 3, scope: !672)
!714 = !DILocation(line: 91, column: 3, scope: !672)
!715 = !DILocation(line: 92, column: 3, scope: !672)
!716 = !DILocation(line: 98, column: 28, scope: !672)
!717 = !DILocation(line: 86, column: 7, scope: !672)
!718 = !DILocalVariable(name: "status", arg: 1, scope: !719, file: !542, line: 99, type: !25)
!719 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !542, file: !542, line: 99, type: !552, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !720)
!720 = !{!718}
!721 = !DILocation(line: 99, column: 30, scope: !719, inlinedAt: !722)
!722 = distinct !DILocation(line: 100, column: 3, scope: !672)
!723 = !DILocation(line: 102, column: 18, scope: !724, inlinedAt: !722)
!724 = distinct !DILexicalBlock(scope: !719, file: !542, line: 101, column: 7)
!725 = !{!726, !726, i64 0}
!726 = !{!"int", !647, i64 0}
!727 = !DILocation(line: 101, column: 3, scope: !672)
!728 = !DILocation(line: 103, column: 63, scope: !672)
!729 = !DILocation(line: 103, column: 3, scope: !672)
!730 = !DILocation(line: 105, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !672, file: !536, line: 105, column: 7)
!732 = !DILocation(line: 105, column: 49, scope: !731)
!733 = !DILocation(line: 105, column: 7, scope: !672)
!734 = !DILocation(line: 106, column: 5, scope: !731)
!735 = !DILocation(line: 108, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !672, file: !536, line: 108, column: 7)
!737 = !DILocation(line: 108, column: 12, scope: !736)
!738 = !DILocation(line: 108, column: 7, scope: !672)
!739 = !DILocation(line: 110, column: 20, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !536, line: 109, column: 5)
!741 = !DILocation(line: 110, column: 7, scope: !740)
!742 = !DILocation(line: 111, column: 7, scope: !740)
!743 = !DILocation(line: 114, column: 20, scope: !672)
!744 = !DILocation(line: 115, column: 24, scope: !672)
!745 = !DILocation(line: 116, column: 43, scope: !672)
!746 = !DILocation(line: 116, column: 46, scope: !672)
!747 = !DILocation(line: 116, column: 52, scope: !672)
!748 = !DILocation(line: 117, column: 24, scope: !672)
!749 = !DILocation(line: 122, column: 7, scope: !672)
!750 = !DILocation(line: 124, column: 11, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !536, line: 124, column: 11)
!752 = distinct !DILexicalBlock(scope: !753, file: !536, line: 123, column: 5)
!753 = distinct !DILexicalBlock(scope: !672, file: !536, line: 122, column: 7)
!754 = !DILocation(line: 124, column: 62, scope: !751)
!755 = !DILocation(line: 124, column: 11, scope: !752)
!756 = !DILocation(line: 125, column: 39, scope: !751)
!757 = !DILocation(line: 126, column: 16, scope: !751)
!758 = !DILocation(line: 125, column: 9, scope: !751)
!759 = !DILocation(line: 127, column: 31, scope: !760)
!760 = distinct !DILexicalBlock(scope: !752, file: !536, line: 127, column: 11)
!761 = !DILocation(line: 128, column: 22, scope: !760)
!762 = !DILocation(line: 128, column: 9, scope: !760)
!763 = !DILocation(line: 135, column: 26, scope: !688)
!764 = !DILocation(line: 135, column: 49, scope: !688)
!765 = !DILocation(line: 137, column: 13, scope: !687)
!766 = !DILocation(line: 139, column: 11, scope: !687)
!767 = !DILocation(line: 140, column: 14, scope: !687)
!768 = !DILocation(line: 141, column: 28, scope: !687)
!769 = !DILocation(line: 141, column: 14, scope: !687)
!770 = !DILocation(line: 143, column: 19, scope: !687)
!771 = !DILocation(line: 142, column: 17, scope: !687)
!772 = !DILocation(line: 144, column: 19, scope: !687)
!773 = !DILocation(line: 146, column: 18, scope: !699)
!774 = !DILocation(line: 146, column: 11, scope: !687)
!775 = !DILocation(line: 148, column: 29, scope: !698)
!776 = !DILocation(line: 148, column: 15, scope: !698)
!777 = !DILocation(line: 149, column: 30, scope: !698)
!778 = !DILocation(line: 149, column: 23, scope: !698)
!779 = !DILocation(line: 150, column: 15, scope: !780)
!780 = distinct !DILexicalBlock(scope: !698, file: !536, line: 150, column: 15)
!781 = !DILocation(line: 150, column: 15, scope: !698)
!782 = !DILocation(line: 152, column: 25, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !536, line: 151, column: 13)
!784 = !DILocation(line: 153, column: 25, scope: !783)
!785 = !DILocation(line: 154, column: 27, scope: !783)
!786 = !DILocation(line: 155, column: 27, scope: !783)
!787 = !DILocation(line: 157, column: 22, scope: !703)
!788 = !DILocation(line: 157, column: 15, scope: !698)
!789 = !DILocation(line: 159, column: 34, scope: !702)
!790 = !DILocation(line: 159, column: 19, scope: !702)
!791 = !DILocation(line: 160, column: 38, scope: !702)
!792 = !DILocation(line: 160, column: 62, scope: !702)
!793 = !DILocation(line: 160, column: 15, scope: !702)
!794 = !DILocation(line: 161, column: 19, scope: !795)
!795 = distinct !DILexicalBlock(scope: !702, file: !536, line: 161, column: 19)
!796 = !DILocation(line: 161, column: 19, scope: !702)
!797 = !DILocation(line: 162, column: 41, scope: !795)
!798 = !DILocation(line: 163, column: 24, scope: !795)
!799 = !DILocation(line: 162, column: 17, scope: !795)
!800 = !DILocation(line: 138, column: 19, scope: !687)
!801 = !DILocation(line: 169, column: 7, scope: !687)
!802 = !DILocation(line: 171, column: 14, scope: !687)
!803 = !DILocation(line: 174, column: 14, scope: !687)
!804 = !DILocation(line: 170, column: 7, scope: !687)
!805 = !DILocation(line: 175, column: 7, scope: !687)
!806 = !DILocation(line: 179, column: 7, scope: !672)
!807 = !DILocation(line: 185, column: 25, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !536, line: 180, column: 5)
!809 = distinct !DILexicalBlock(scope: !672, file: !536, line: 179, column: 7)
!810 = !DILocation(line: 187, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !536, line: 187, column: 11)
!812 = !DILocation(line: 188, column: 11, scope: !811)
!813 = !DILocation(line: 188, column: 14, scope: !811)
!814 = !DILocation(line: 188, column: 55, scope: !811)
!815 = !DILocation(line: 187, column: 11, scope: !808)
!816 = !DILocation(line: 189, column: 39, scope: !811)
!817 = !DILocation(line: 190, column: 16, scope: !811)
!818 = !DILocation(line: 189, column: 9, scope: !811)
!819 = !DILocation(line: 192, column: 11, scope: !808)
!820 = !DILocation(line: 194, column: 16, scope: !821)
!821 = distinct !DILexicalBlock(scope: !808, file: !536, line: 192, column: 11)
!822 = !DILocation(line: 193, column: 9, scope: !821)
!823 = !DILocation(line: 198, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !808, file: !536, line: 198, column: 11)
!825 = !DILocation(line: 198, column: 40, scope: !824)
!826 = !DILocation(line: 198, column: 11, scope: !808)
!827 = !DILocation(line: 199, column: 39, scope: !824)
!828 = !DILocation(line: 200, column: 16, scope: !824)
!829 = !DILocation(line: 199, column: 9, scope: !824)
!830 = !DILocation(line: 202, column: 11, scope: !808)
!831 = !DILocation(line: 203, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !808, file: !536, line: 202, column: 11)
!833 = !DILocation(line: 212, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !672, file: !536, line: 212, column: 7)
!835 = !DILocalVariable(name: "__stream", arg: 1, scope: !836, file: !837, line: 132, type: !840)
!836 = distinct !DISubprogram(name: "ferror_unlocked", scope: !837, file: !837, line: 132, type: !838, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !892)
!837 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!838 = !DISubroutineType(types: !839)
!839 = !{!25, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !843)
!842 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !845)
!844 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !866, !867, !868, !869, !872, !873, !875, !877, !880, !882, !883, !884, !885, !886, !887, !888}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !843, file: !844, line: 242, baseType: !25, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !843, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !843, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !843, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !843, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !843, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !843, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !843, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !843, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !843, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !843, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !843, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !843, file: !844, line: 260, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !861)
!861 = !{!862, !863, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !860, file: !844, line: 157, baseType: !859, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !860, file: !844, line: 158, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !860, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !843, file: !844, line: 262, baseType: !864, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !843, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !843, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !843, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !695, line: 140, baseType: !871)
!871 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !843, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !843, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!874 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !843, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !172)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !843, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !844, line: 150, baseType: null)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !843, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !695, line: 141, baseType: !871)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !843, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !843, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !843, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !843, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !843, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !843, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !843, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 20)
!892 = !{!835}
!893 = !DILocation(line: 132, column: 1, scope: !836, inlinedAt: !894)
!894 = distinct !DILocation(line: 212, column: 7, scope: !834)
!895 = !DILocation(line: 134, column: 10, scope: !836, inlinedAt: !894)
!896 = !{!897, !726, i64 0}
!897 = !{!"_IO_FILE", !726, i64 0, !646, i64 8, !646, i64 16, !646, i64 24, !646, i64 32, !646, i64 40, !646, i64 48, !646, i64 56, !646, i64 64, !646, i64 72, !646, i64 80, !646, i64 88, !646, i64 96, !646, i64 104, !726, i64 112, !726, i64 116, !898, i64 120, !899, i64 128, !647, i64 130, !647, i64 131, !646, i64 136, !898, i64 144, !646, i64 152, !646, i64 160, !646, i64 168, !646, i64 176, !898, i64 184, !726, i64 192, !647, i64 196}
!898 = !{!"long", !647, i64 0}
!899 = !{!"short", !647, i64 0}
!900 = !DILocation(line: 212, column: 7, scope: !672)
!901 = !DILocation(line: 215, column: 3, scope: !672)
!902 = !DILocation(line: 217, column: 23, scope: !672)
!903 = !DILocation(line: 217, column: 21, scope: !672)
!904 = !DILocation(line: 217, column: 10, scope: !672)
!905 = !DILocation(line: 218, column: 11, scope: !672)
!906 = !DILocation(line: 218, column: 3, scope: !672)
!907 = !DILocation(line: 219, column: 21, scope: !672)
!908 = !DILocation(line: 219, column: 27, scope: !672)
!909 = !DILocation(line: 219, column: 7, scope: !672)
!910 = !DILocation(line: 220, column: 7, scope: !672)
!911 = !DILocation(line: 228, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !672, file: !536, line: 228, column: 7)
!913 = !DILocation(line: 228, column: 45, scope: !912)
!914 = !DILocation(line: 228, column: 7, scope: !672)
!915 = !DILocation(line: 229, column: 28, scope: !912)
!916 = !DILocation(line: 229, column: 59, scope: !912)
!917 = !DILocation(line: 229, column: 5, scope: !912)
!918 = !DILocation(line: 232, column: 1, scope: !672)
!919 = distinct !DISubprogram(name: "set_cloexec_flag", scope: !920, file: !920, line: 39, type: !921, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !923)
!920 = !DIFile(filename: "lib/cloexec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!921 = !DISubroutineType(types: !922)
!922 = !{!25, !25, !17}
!923 = !{!924, !925, !926, !927}
!924 = !DILocalVariable(name: "desc", arg: 1, scope: !919, file: !920, line: 39, type: !25)
!925 = !DILocalVariable(name: "value", arg: 2, scope: !919, file: !920, line: 39, type: !17)
!926 = !DILocalVariable(name: "flags", scope: !919, file: !920, line: 43, type: !25)
!927 = !DILocalVariable(name: "newflags", scope: !928, file: !920, line: 47, type: !25)
!928 = distinct !DILexicalBlock(scope: !929, file: !920, line: 46, column: 5)
!929 = distinct !DILexicalBlock(scope: !919, file: !920, line: 45, column: 7)
!930 = !DILocation(line: 39, column: 23, scope: !919)
!931 = !DILocation(line: 39, column: 34, scope: !919)
!932 = !DILocation(line: 43, column: 15, scope: !919)
!933 = !DILocation(line: 43, column: 7, scope: !919)
!934 = !DILocation(line: 45, column: 9, scope: !929)
!935 = !DILocation(line: 45, column: 7, scope: !919)
!936 = !DILocation(line: 47, column: 37, scope: !928)
!937 = !DILocation(line: 47, column: 58, scope: !928)
!938 = !DILocation(line: 47, column: 23, scope: !928)
!939 = !DILocation(line: 47, column: 11, scope: !928)
!940 = !DILocation(line: 49, column: 17, scope: !941)
!941 = distinct !DILexicalBlock(scope: !928, file: !920, line: 49, column: 11)
!942 = !DILocation(line: 50, column: 11, scope: !941)
!943 = !DILocation(line: 50, column: 14, scope: !941)
!944 = !DILocation(line: 50, column: 46, scope: !941)
!945 = !DILocation(line: 49, column: 11, scope: !928)
!946 = !DILocation(line: 72, column: 1, scope: !919)
!947 = distinct !DISubprogram(name: "dup_cloexec", scope: !920, file: !920, line: 80, type: !948, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!25, !25}
!950 = !{!951}
!951 = !DILocalVariable(name: "fd", arg: 1, scope: !947, file: !920, line: 80, type: !25)
!952 = !DILocation(line: 80, column: 18, scope: !947)
!953 = !DILocation(line: 82, column: 10, scope: !947)
!954 = !DILocation(line: 82, column: 3, scope: !947)
!955 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !558, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !956)
!956 = !{!957}
!957 = !DILocalVariable(name: "file", arg: 1, scope: !955, file: !16, line: 41, type: !6)
!958 = !DILocation(line: 41, column: 41, scope: !955)
!959 = !DILocation(line: 43, column: 13, scope: !955)
!960 = !DILocation(line: 44, column: 1, scope: !955)
!961 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !962, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !17}
!964 = !{!965}
!965 = !DILocalVariable(name: "ignore", arg: 1, scope: !961, file: !16, line: 78, type: !17)
!966 = !DILocation(line: 78, column: 37, scope: !961)
!967 = !DILocation(line: 80, column: 16, scope: !961)
!968 = !{!969, !969, i64 0}
!969 = !{!"_Bool", !647, i64 0}
!970 = !DILocation(line: 81, column: 1, scope: !961)
!971 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !972, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{null}
!974 = !{!975}
!975 = !DILocalVariable(name: "write_error", scope: !976, file: !16, line: 112, type: !6)
!976 = distinct !DILexicalBlock(scope: !977, file: !16, line: 111, column: 5)
!977 = distinct !DILexicalBlock(scope: !971, file: !16, line: 109, column: 7)
!978 = !DILocation(line: 109, column: 21, scope: !977)
!979 = !DILocation(line: 109, column: 7, scope: !977)
!980 = !DILocation(line: 109, column: 29, scope: !977)
!981 = !DILocation(line: 110, column: 7, scope: !977)
!982 = !DILocation(line: 110, column: 12, scope: !977)
!983 = !{i8 0, i8 2}
!984 = !DILocation(line: 114, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !976, file: !16, line: 113, column: 11)
!986 = !DILocation(line: 110, column: 25, scope: !977)
!987 = !DILocation(line: 110, column: 28, scope: !977)
!988 = !DILocation(line: 110, column: 34, scope: !977)
!989 = !DILocation(line: 109, column: 7, scope: !971)
!990 = !DILocation(line: 112, column: 33, scope: !976)
!991 = !DILocation(line: 112, column: 19, scope: !976)
!992 = !DILocation(line: 113, column: 11, scope: !985)
!993 = !DILocation(line: 113, column: 11, scope: !976)
!994 = !DILocation(line: 114, column: 36, scope: !985)
!995 = !DILocation(line: 114, column: 9, scope: !985)
!996 = !DILocation(line: 117, column: 9, scope: !985)
!997 = !DILocation(line: 119, column: 14, scope: !976)
!998 = !DILocation(line: 119, column: 7, scope: !976)
!999 = !DILocation(line: 122, column: 22, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !971, file: !16, line: 122, column: 8)
!1001 = !DILocation(line: 122, column: 8, scope: !1000)
!1002 = !DILocation(line: 122, column: 30, scope: !1000)
!1003 = !DILocation(line: 122, column: 8, scope: !971)
!1004 = !DILocation(line: 123, column: 13, scope: !1000)
!1005 = !DILocation(line: 123, column: 6, scope: !1000)
!1006 = !DILocation(line: 124, column: 1, scope: !971)
!1007 = distinct !DISubprogram(name: "fd_reopen", scope: !1008, file: !1008, line: 32, type: !1009, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !1011)
!1008 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!25, !25, !6, !25, !692}
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1020}
!1012 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1007, file: !1008, line: 32, type: !25)
!1013 = !DILocalVariable(name: "file", arg: 2, scope: !1007, file: !1008, line: 32, type: !6)
!1014 = !DILocalVariable(name: "flags", arg: 3, scope: !1007, file: !1008, line: 32, type: !25)
!1015 = !DILocalVariable(name: "mode", arg: 4, scope: !1007, file: !1008, line: 32, type: !692)
!1016 = !DILocalVariable(name: "fd", scope: !1007, file: !1008, line: 34, type: !25)
!1017 = !DILocalVariable(name: "fd2", scope: !1018, file: !1008, line: 40, type: !25)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1008, line: 39, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1007, file: !1008, line: 36, column: 7)
!1020 = !DILocalVariable(name: "saved_errno", scope: !1018, file: !1008, line: 41, type: !25)
!1021 = !DILocation(line: 32, column: 16, scope: !1007)
!1022 = !DILocation(line: 32, column: 40, scope: !1007)
!1023 = !DILocation(line: 32, column: 50, scope: !1007)
!1024 = !DILocation(line: 32, column: 64, scope: !1007)
!1025 = !DILocation(line: 34, column: 12, scope: !1007)
!1026 = !DILocation(line: 34, column: 7, scope: !1007)
!1027 = !DILocation(line: 36, column: 10, scope: !1019)
!1028 = !DILocation(line: 36, column: 30, scope: !1019)
!1029 = !DILocation(line: 36, column: 24, scope: !1019)
!1030 = !DILocation(line: 40, column: 17, scope: !1018)
!1031 = !DILocation(line: 40, column: 11, scope: !1018)
!1032 = !DILocation(line: 41, column: 25, scope: !1018)
!1033 = !DILocation(line: 41, column: 11, scope: !1018)
!1034 = !DILocation(line: 42, column: 7, scope: !1018)
!1035 = !DILocation(line: 43, column: 13, scope: !1018)
!1036 = !DILocation(line: 46, column: 1, scope: !1007)
!1037 = distinct !DISubprogram(name: "file_name_concat", scope: !1038, file: !1038, line: 35, type: !1039, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !1041)
!1038 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!50, !6, !6, !675}
!1041 = !{!1042, !1043, !1044, !1045}
!1042 = !DILocalVariable(name: "dir", arg: 1, scope: !1037, file: !1038, line: 35, type: !6)
!1043 = !DILocalVariable(name: "abase", arg: 2, scope: !1037, file: !1038, line: 35, type: !6)
!1044 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1037, file: !1038, line: 35, type: !675)
!1045 = !DILocalVariable(name: "p", scope: !1037, file: !1038, line: 37, type: !50)
!1046 = !DILocation(line: 35, column: 31, scope: !1037)
!1047 = !DILocation(line: 35, column: 48, scope: !1037)
!1048 = !DILocation(line: 35, column: 62, scope: !1037)
!1049 = !DILocation(line: 37, column: 13, scope: !1037)
!1050 = !DILocation(line: 37, column: 9, scope: !1037)
!1051 = !DILocation(line: 38, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1037, file: !1038, line: 38, column: 7)
!1053 = !DILocation(line: 38, column: 7, scope: !1037)
!1054 = !DILocation(line: 39, column: 5, scope: !1052)
!1055 = !DILocation(line: 40, column: 3, scope: !1037)
!1056 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1057, file: !1057, line: 61, type: !1039, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !1058)
!1057 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1059 = !DILocalVariable(name: "dir", arg: 1, scope: !1056, file: !1057, line: 61, type: !6)
!1060 = !DILocalVariable(name: "abase", arg: 2, scope: !1056, file: !1057, line: 61, type: !6)
!1061 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1056, file: !1057, line: 61, type: !675)
!1062 = !DILocalVariable(name: "dirbase", scope: !1056, file: !1057, line: 63, type: !6)
!1063 = !DILocalVariable(name: "dirbaselen", scope: !1056, file: !1057, line: 64, type: !94)
!1064 = !DILocalVariable(name: "dirlen", scope: !1056, file: !1057, line: 65, type: !94)
!1065 = !DILocalVariable(name: "needs_separator", scope: !1056, file: !1057, line: 66, type: !94)
!1066 = !DILocalVariable(name: "base", scope: !1056, file: !1057, line: 68, type: !6)
!1067 = !DILocalVariable(name: "baselen", scope: !1056, file: !1057, line: 69, type: !94)
!1068 = !DILocalVariable(name: "p_concat", scope: !1056, file: !1057, line: 71, type: !50)
!1069 = !DILocalVariable(name: "p", scope: !1056, file: !1057, line: 72, type: !50)
!1070 = !DILocation(line: 61, column: 32, scope: !1056)
!1071 = !DILocation(line: 61, column: 49, scope: !1056)
!1072 = !DILocation(line: 61, column: 63, scope: !1056)
!1073 = !DILocation(line: 63, column: 25, scope: !1056)
!1074 = !DILocation(line: 63, column: 15, scope: !1056)
!1075 = !DILocation(line: 64, column: 23, scope: !1056)
!1076 = !DILocation(line: 64, column: 10, scope: !1056)
!1077 = !DILocation(line: 65, column: 27, scope: !1056)
!1078 = !DILocation(line: 65, column: 33, scope: !1056)
!1079 = !DILocation(line: 65, column: 10, scope: !1056)
!1080 = !DILocation(line: 66, column: 29, scope: !1056)
!1081 = !DILocation(line: 66, column: 40, scope: !1056)
!1082 = !DILocation(line: 66, column: 45, scope: !1056)
!1083 = !{!647, !647, i64 0}
!1084 = !DILocation(line: 66, column: 10, scope: !1056)
!1085 = !DILocalVariable(name: "f", arg: 1, scope: !1086, file: !1057, line: 38, type: !6)
!1086 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1057, file: !1057, line: 38, type: !1087, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!6, !6}
!1089 = !{!1085}
!1090 = !DILocation(line: 38, column: 38, scope: !1086, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 68, column: 22, scope: !1056)
!1092 = !DILocation(line: 40, column: 8, scope: !1093, inlinedAt: !1091)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !1057, line: 40, column: 3)
!1094 = !DILocation(line: 40, column: 41, scope: !1095, inlinedAt: !1091)
!1095 = distinct !DILexicalBlock(scope: !1093, file: !1057, line: 40, column: 3)
!1096 = !DILocation(line: 40, column: 56, scope: !1095, inlinedAt: !1091)
!1097 = !DILocation(line: 40, column: 3, scope: !1093, inlinedAt: !1091)
!1098 = distinct !{!1098, !1099, !1100}
!1099 = !DILocation(line: 40, column: 3, scope: !1093)
!1100 = !DILocation(line: 41, column: 5, scope: !1093)
!1101 = !DILocation(line: 68, column: 15, scope: !1056)
!1102 = !DILocation(line: 69, column: 20, scope: !1056)
!1103 = !DILocation(line: 69, column: 10, scope: !1056)
!1104 = !DILocation(line: 71, column: 35, scope: !1056)
!1105 = !DILocation(line: 71, column: 53, scope: !1056)
!1106 = !DILocation(line: 71, column: 63, scope: !1056)
!1107 = !DILocation(line: 71, column: 20, scope: !1056)
!1108 = !DILocation(line: 71, column: 9, scope: !1056)
!1109 = !DILocation(line: 74, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1056, file: !1057, line: 74, column: 7)
!1111 = !DILocation(line: 74, column: 7, scope: !1056)
!1112 = !DILocalVariable(name: "__dest", arg: 1, scope: !1113, file: !1114, line: 45, type: !1117)
!1113 = distinct !DISubprogram(name: "mempcpy", scope: !1114, file: !1114, line: 45, type: !1115, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !1121)
!1114 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!49, !1117, !1118, !94}
!1117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!1118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1121 = !{!1112, !1122, !1123}
!1122 = !DILocalVariable(name: "__src", arg: 2, scope: !1113, file: !1114, line: 45, type: !1118)
!1123 = !DILocalVariable(name: "__len", arg: 3, scope: !1113, file: !1114, line: 45, type: !94)
!1124 = !DILocation(line: 45, column: 1, scope: !1113, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 77, column: 7, scope: !1056)
!1126 = !DILocation(line: 48, column: 57, scope: !1113, inlinedAt: !1125)
!1127 = !DILocation(line: 48, column: 10, scope: !1113, inlinedAt: !1125)
!1128 = !DILocation(line: 72, column: 9, scope: !1056)
!1129 = !DILocation(line: 78, column: 6, scope: !1056)
!1130 = !DILocation(line: 79, column: 5, scope: !1056)
!1131 = !DILocation(line: 81, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1056, file: !1057, line: 81, column: 7)
!1133 = !DILocation(line: 81, column: 7, scope: !1056)
!1134 = !DILocation(line: 82, column: 27, scope: !1132)
!1135 = !DILocation(line: 82, column: 25, scope: !1132)
!1136 = !DILocation(line: 82, column: 21, scope: !1132)
!1137 = !DILocation(line: 82, column: 5, scope: !1132)
!1138 = !DILocation(line: 45, column: 1, scope: !1113, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 84, column: 7, scope: !1056)
!1140 = !DILocation(line: 48, column: 57, scope: !1113, inlinedAt: !1139)
!1141 = !DILocation(line: 48, column: 10, scope: !1113, inlinedAt: !1139)
!1142 = !DILocation(line: 85, column: 6, scope: !1056)
!1143 = !DILocation(line: 87, column: 3, scope: !1056)
!1144 = !DILocation(line: 88, column: 1, scope: !1056)
!1145 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !1146, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !25, !675, !6, !6, !6, !551, null}
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1149 = !DILocalVariable(name: "argc", arg: 1, scope: !1145, file: !31, line: 44, type: !25)
!1150 = !DILocalVariable(name: "argv", arg: 2, scope: !1145, file: !31, line: 45, type: !675)
!1151 = !DILocalVariable(name: "command_name", arg: 3, scope: !1145, file: !31, line: 46, type: !6)
!1152 = !DILocalVariable(name: "package", arg: 4, scope: !1145, file: !31, line: 47, type: !6)
!1153 = !DILocalVariable(name: "version", arg: 5, scope: !1145, file: !31, line: 48, type: !6)
!1154 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1145, file: !31, line: 49, type: !551)
!1155 = !DILocalVariable(name: "c", scope: !1145, file: !31, line: 52, type: !25)
!1156 = !DILocalVariable(name: "saved_opterr", scope: !1145, file: !31, line: 53, type: !25)
!1157 = !DILocalVariable(name: "authors", scope: !1158, file: !31, line: 71, type: !1162)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !31, line: 70, column: 11)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !31, line: 64, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !31, line: 62, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1145, file: !31, line: 60, column: 7)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1163, line: 46, baseType: !1164)
!1163 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !163, line: 48, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !1166)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 192, elements: !172)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1167, file: !29, line: 71, baseType: !113, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1167, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1167, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1167, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!1173 = !DILocation(line: 44, column: 25, scope: !1145)
!1174 = !DILocation(line: 45, column: 28, scope: !1145)
!1175 = !DILocation(line: 46, column: 33, scope: !1145)
!1176 = !DILocation(line: 47, column: 33, scope: !1145)
!1177 = !DILocation(line: 48, column: 33, scope: !1145)
!1178 = !DILocation(line: 49, column: 28, scope: !1145)
!1179 = !DILocation(line: 55, column: 18, scope: !1145)
!1180 = !DILocation(line: 53, column: 7, scope: !1145)
!1181 = !DILocation(line: 58, column: 10, scope: !1145)
!1182 = !DILocation(line: 60, column: 12, scope: !1161)
!1183 = !DILocation(line: 61, column: 7, scope: !1161)
!1184 = !DILocation(line: 61, column: 15, scope: !1161)
!1185 = !DILocation(line: 52, column: 7, scope: !1145)
!1186 = !DILocation(line: 60, column: 7, scope: !1145)
!1187 = !DILocation(line: 66, column: 11, scope: !1159)
!1188 = !DILocation(line: 67, column: 11, scope: !1159)
!1189 = !DILocation(line: 71, column: 13, scope: !1158)
!1190 = !DILocation(line: 71, column: 21, scope: !1158)
!1191 = !DILocation(line: 72, column: 13, scope: !1158)
!1192 = !DILocation(line: 73, column: 29, scope: !1158)
!1193 = !DILocation(line: 73, column: 13, scope: !1158)
!1194 = !DILocation(line: 74, column: 13, scope: !1158)
!1195 = !DILocation(line: 84, column: 10, scope: !1145)
!1196 = !DILocation(line: 88, column: 10, scope: !1145)
!1197 = !DILocation(line: 89, column: 1, scope: !1145)
!1198 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !558, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "argv0", arg: 1, scope: !1198, file: !52, line: 39, type: !6)
!1201 = !DILocalVariable(name: "slash", scope: !1198, file: !52, line: 46, type: !6)
!1202 = !DILocalVariable(name: "base", scope: !1198, file: !52, line: 47, type: !6)
!1203 = !DILocation(line: 39, column: 31, scope: !1198)
!1204 = !DILocation(line: 51, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !52, line: 51, column: 7)
!1206 = !DILocation(line: 51, column: 7, scope: !1198)
!1207 = !DILocation(line: 55, column: 14, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !52, line: 52, column: 5)
!1209 = !DILocation(line: 54, column: 7, scope: !1208)
!1210 = !DILocation(line: 56, column: 7, scope: !1208)
!1211 = !DILocation(line: 59, column: 11, scope: !1198)
!1212 = !DILocation(line: 46, column: 15, scope: !1198)
!1213 = !DILocation(line: 60, column: 17, scope: !1198)
!1214 = !DILocation(line: 60, column: 33, scope: !1198)
!1215 = !DILocation(line: 60, column: 11, scope: !1198)
!1216 = !DILocation(line: 47, column: 15, scope: !1198)
!1217 = !DILocation(line: 61, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1198, file: !52, line: 61, column: 7)
!1219 = !DILocation(line: 61, column: 20, scope: !1218)
!1220 = !DILocation(line: 61, column: 25, scope: !1218)
!1221 = !DILocation(line: 61, column: 42, scope: !1218)
!1222 = !DILocation(line: 61, column: 28, scope: !1218)
!1223 = !DILocation(line: 61, column: 61, scope: !1218)
!1224 = !DILocation(line: 61, column: 7, scope: !1198)
!1225 = !DILocation(line: 64, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 64, column: 11)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !52, line: 62, column: 5)
!1228 = !DILocation(line: 64, column: 36, scope: !1226)
!1229 = !DILocation(line: 64, column: 11, scope: !1227)
!1230 = !DILocation(line: 66, column: 24, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !52, line: 65, column: 9)
!1232 = !DILocation(line: 70, column: 41, scope: !1231)
!1233 = !DILocation(line: 72, column: 9, scope: !1231)
!1234 = !DILocation(line: 84, column: 16, scope: !1198)
!1235 = !DILocation(line: 90, column: 27, scope: !1198)
!1236 = !DILocation(line: 92, column: 1, scope: !1198)
!1237 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !1238, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1241)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1240, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "o", arg: 1, scope: !1237, file: !100, line: 114, type: !1240)
!1243 = !DILocalVariable(name: "e", scope: !1237, file: !100, line: 116, type: !25)
!1244 = !DILocalVariable(name: "p", scope: !1237, file: !100, line: 117, type: !1240)
!1245 = !DILocation(line: 114, column: 48, scope: !1237)
!1246 = !DILocation(line: 116, column: 11, scope: !1237)
!1247 = !DILocation(line: 116, column: 7, scope: !1237)
!1248 = !DILocation(line: 117, column: 40, scope: !1237)
!1249 = !DILocation(line: 117, column: 31, scope: !1237)
!1250 = !DILocation(line: 117, column: 27, scope: !1237)
!1251 = !DILocation(line: 119, column: 9, scope: !1237)
!1252 = !DILocation(line: 120, column: 3, scope: !1237)
!1253 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !1254, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1258)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!58, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1258 = !{!1259}
!1259 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !100, line: 125, type: !1256)
!1260 = !DILocation(line: 125, column: 50, scope: !1253)
!1261 = !DILocation(line: 127, column: 11, scope: !1253)
!1262 = !DILocation(line: 127, column: 46, scope: !1253)
!1263 = !{!1264, !647, i64 0}
!1264 = !{!"quoting_options", !647, i64 0, !726, i64 4, !647, i64 8, !646, i64 40, !646, i64 48}
!1265 = !DILocation(line: 127, column: 3, scope: !1253)
!1266 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !1267, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1240, !58}
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "o", arg: 1, scope: !1266, file: !100, line: 133, type: !1240)
!1271 = !DILocalVariable(name: "s", arg: 2, scope: !1266, file: !100, line: 133, type: !58)
!1272 = !DILocation(line: 133, column: 44, scope: !1266)
!1273 = !DILocation(line: 133, column: 66, scope: !1266)
!1274 = !DILocation(line: 135, column: 4, scope: !1266)
!1275 = !DILocation(line: 135, column: 39, scope: !1266)
!1276 = !DILocation(line: 135, column: 45, scope: !1266)
!1277 = !DILocation(line: 136, column: 1, scope: !1266)
!1278 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !1279, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!25, !1240, !8, !25}
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1288, !1289}
!1282 = !DILocalVariable(name: "o", arg: 1, scope: !1278, file: !100, line: 144, type: !1240)
!1283 = !DILocalVariable(name: "c", arg: 2, scope: !1278, file: !100, line: 144, type: !8)
!1284 = !DILocalVariable(name: "i", arg: 3, scope: !1278, file: !100, line: 144, type: !25)
!1285 = !DILocalVariable(name: "uc", scope: !1278, file: !100, line: 146, type: !531)
!1286 = !DILocalVariable(name: "p", scope: !1278, file: !100, line: 147, type: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1288 = !DILocalVariable(name: "shift", scope: !1278, file: !100, line: 149, type: !25)
!1289 = !DILocalVariable(name: "r", scope: !1278, file: !100, line: 150, type: !25)
!1290 = !DILocation(line: 144, column: 43, scope: !1278)
!1291 = !DILocation(line: 144, column: 51, scope: !1278)
!1292 = !DILocation(line: 144, column: 58, scope: !1278)
!1293 = !DILocation(line: 146, column: 17, scope: !1278)
!1294 = !DILocation(line: 148, column: 6, scope: !1278)
!1295 = !DILocation(line: 148, column: 62, scope: !1278)
!1296 = !DILocation(line: 148, column: 57, scope: !1278)
!1297 = !DILocation(line: 147, column: 17, scope: !1278)
!1298 = !DILocation(line: 149, column: 18, scope: !1278)
!1299 = !DILocation(line: 149, column: 15, scope: !1278)
!1300 = !DILocation(line: 149, column: 7, scope: !1278)
!1301 = !DILocation(line: 150, column: 12, scope: !1278)
!1302 = !DILocation(line: 150, column: 15, scope: !1278)
!1303 = !DILocation(line: 150, column: 25, scope: !1278)
!1304 = !DILocation(line: 150, column: 7, scope: !1278)
!1305 = !DILocation(line: 151, column: 13, scope: !1278)
!1306 = !DILocation(line: 151, column: 18, scope: !1278)
!1307 = !DILocation(line: 151, column: 23, scope: !1278)
!1308 = !DILocation(line: 151, column: 6, scope: !1278)
!1309 = !DILocation(line: 152, column: 3, scope: !1278)
!1310 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1311, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!25, !1240, !25}
!1313 = !{!1314, !1315, !1316}
!1314 = !DILocalVariable(name: "o", arg: 1, scope: !1310, file: !100, line: 160, type: !1240)
!1315 = !DILocalVariable(name: "i", arg: 2, scope: !1310, file: !100, line: 160, type: !25)
!1316 = !DILocalVariable(name: "r", scope: !1310, file: !100, line: 162, type: !25)
!1317 = !DILocation(line: 160, column: 44, scope: !1310)
!1318 = !DILocation(line: 160, column: 51, scope: !1310)
!1319 = !DILocation(line: 163, column: 8, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !100, line: 163, column: 7)
!1321 = !DILocation(line: 163, column: 7, scope: !1310)
!1322 = !DILocation(line: 165, column: 10, scope: !1310)
!1323 = !{!1264, !726, i64 4}
!1324 = !DILocation(line: 162, column: 7, scope: !1310)
!1325 = !DILocation(line: 166, column: 12, scope: !1310)
!1326 = !DILocation(line: 167, column: 3, scope: !1310)
!1327 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1328, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1240, !6, !6}
!1330 = !{!1331, !1332, !1333}
!1331 = !DILocalVariable(name: "o", arg: 1, scope: !1327, file: !100, line: 171, type: !1240)
!1332 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1327, file: !100, line: 172, type: !6)
!1333 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1327, file: !100, line: 172, type: !6)
!1334 = !DILocation(line: 171, column: 45, scope: !1327)
!1335 = !DILocation(line: 172, column: 33, scope: !1327)
!1336 = !DILocation(line: 172, column: 57, scope: !1327)
!1337 = !DILocation(line: 174, column: 8, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1327, file: !100, line: 174, column: 7)
!1339 = !DILocation(line: 174, column: 7, scope: !1327)
!1340 = !DILocation(line: 176, column: 6, scope: !1327)
!1341 = !DILocation(line: 176, column: 12, scope: !1327)
!1342 = !DILocation(line: 177, column: 8, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1327, file: !100, line: 177, column: 7)
!1344 = !DILocation(line: 177, column: 23, scope: !1343)
!1345 = !DILocation(line: 177, column: 19, scope: !1343)
!1346 = !DILocation(line: 178, column: 5, scope: !1343)
!1347 = !DILocation(line: 179, column: 6, scope: !1327)
!1348 = !DILocation(line: 179, column: 17, scope: !1327)
!1349 = !{!1264, !646, i64 40}
!1350 = !DILocation(line: 180, column: 6, scope: !1327)
!1351 = !DILocation(line: 180, column: 18, scope: !1327)
!1352 = !{!1264, !646, i64 48}
!1353 = !DILocation(line: 181, column: 1, scope: !1327)
!1354 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1355, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!94, !50, !94, !6, !94, !1256}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1358 = !DILocalVariable(name: "buffer", arg: 1, scope: !1354, file: !100, line: 776, type: !50)
!1359 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1354, file: !100, line: 776, type: !94)
!1360 = !DILocalVariable(name: "arg", arg: 3, scope: !1354, file: !100, line: 777, type: !6)
!1361 = !DILocalVariable(name: "argsize", arg: 4, scope: !1354, file: !100, line: 777, type: !94)
!1362 = !DILocalVariable(name: "o", arg: 5, scope: !1354, file: !100, line: 778, type: !1256)
!1363 = !DILocalVariable(name: "p", scope: !1354, file: !100, line: 780, type: !1256)
!1364 = !DILocalVariable(name: "e", scope: !1354, file: !100, line: 781, type: !25)
!1365 = !DILocalVariable(name: "r", scope: !1354, file: !100, line: 782, type: !94)
!1366 = !DILocation(line: 776, column: 24, scope: !1354)
!1367 = !DILocation(line: 776, column: 39, scope: !1354)
!1368 = !DILocation(line: 777, column: 30, scope: !1354)
!1369 = !DILocation(line: 777, column: 42, scope: !1354)
!1370 = !DILocation(line: 778, column: 48, scope: !1354)
!1371 = !DILocation(line: 780, column: 37, scope: !1354)
!1372 = !DILocation(line: 780, column: 33, scope: !1354)
!1373 = !DILocation(line: 781, column: 11, scope: !1354)
!1374 = !DILocation(line: 781, column: 7, scope: !1354)
!1375 = !DILocation(line: 783, column: 43, scope: !1354)
!1376 = !DILocation(line: 783, column: 53, scope: !1354)
!1377 = !DILocation(line: 783, column: 60, scope: !1354)
!1378 = !DILocation(line: 784, column: 43, scope: !1354)
!1379 = !DILocation(line: 784, column: 58, scope: !1354)
!1380 = !DILocation(line: 782, column: 14, scope: !1354)
!1381 = !DILocation(line: 782, column: 10, scope: !1354)
!1382 = !DILocation(line: 785, column: 9, scope: !1354)
!1383 = !DILocation(line: 786, column: 3, scope: !1354)
!1384 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1385, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1389)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!94, !50, !94, !6, !94, !58, !25, !1387, !6, !6}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1414, !1415, !1416, !1417, !1418, !1421, !1422, !1440, !1443, !1444, !1451}
!1390 = !DILocalVariable(name: "buffer", arg: 1, scope: !1384, file: !100, line: 248, type: !50)
!1391 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1384, file: !100, line: 248, type: !94)
!1392 = !DILocalVariable(name: "arg", arg: 3, scope: !1384, file: !100, line: 249, type: !6)
!1393 = !DILocalVariable(name: "argsize", arg: 4, scope: !1384, file: !100, line: 249, type: !94)
!1394 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1384, file: !100, line: 250, type: !58)
!1395 = !DILocalVariable(name: "flags", arg: 6, scope: !1384, file: !100, line: 250, type: !25)
!1396 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1384, file: !100, line: 251, type: !1387)
!1397 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1384, file: !100, line: 252, type: !6)
!1398 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1384, file: !100, line: 253, type: !6)
!1399 = !DILocalVariable(name: "i", scope: !1384, file: !100, line: 255, type: !94)
!1400 = !DILocalVariable(name: "len", scope: !1384, file: !100, line: 256, type: !94)
!1401 = !DILocalVariable(name: "orig_buffersize", scope: !1384, file: !100, line: 257, type: !94)
!1402 = !DILocalVariable(name: "quote_string", scope: !1384, file: !100, line: 258, type: !6)
!1403 = !DILocalVariable(name: "quote_string_len", scope: !1384, file: !100, line: 259, type: !94)
!1404 = !DILocalVariable(name: "backslash_escapes", scope: !1384, file: !100, line: 260, type: !17)
!1405 = !DILocalVariable(name: "unibyte_locale", scope: !1384, file: !100, line: 261, type: !17)
!1406 = !DILocalVariable(name: "elide_outer_quotes", scope: !1384, file: !100, line: 262, type: !17)
!1407 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1384, file: !100, line: 263, type: !17)
!1408 = !DILocalVariable(name: "encountered_single_quote", scope: !1384, file: !100, line: 264, type: !17)
!1409 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1384, file: !100, line: 265, type: !17)
!1410 = !DILocalVariable(name: "c", scope: !1411, file: !100, line: 394, type: !531)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !100, line: 393, column: 5)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 392, column: 3)
!1413 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 392, column: 3)
!1414 = !DILocalVariable(name: "esc", scope: !1411, file: !100, line: 395, type: !531)
!1415 = !DILocalVariable(name: "is_right_quote", scope: !1411, file: !100, line: 396, type: !17)
!1416 = !DILocalVariable(name: "escaping", scope: !1411, file: !100, line: 397, type: !17)
!1417 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1411, file: !100, line: 398, type: !17)
!1418 = !DILocalVariable(name: "m", scope: !1419, file: !100, line: 602, type: !94)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 600, column: 11)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 418, column: 9)
!1421 = !DILocalVariable(name: "printable", scope: !1419, file: !100, line: 604, type: !17)
!1422 = !DILocalVariable(name: "mbstate", scope: !1423, file: !100, line: 613, type: !1425)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !100, line: 612, column: 15)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !100, line: 606, column: 17)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1426, line: 6, baseType: !1427)
!1426 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1428, line: 21, baseType: !1429)
!1428 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1428, line: 13, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1429, file: !1428, line: 15, baseType: !25, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1429, file: !1428, line: 20, baseType: !1433, size: 32, offset: 32)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !1428, line: 16, size: 32, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1433, file: !1428, line: 18, baseType: !113, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1433, file: !1428, line: 19, baseType: !1437, size: 32)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 4)
!1440 = !DILocalVariable(name: "w", scope: !1441, file: !100, line: 623, type: !1442)
!1441 = distinct !DILexicalBlock(scope: !1423, file: !100, line: 622, column: 19)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1443 = !DILocalVariable(name: "bytes", scope: !1441, file: !100, line: 624, type: !94)
!1444 = !DILocalVariable(name: "j", scope: !1445, file: !100, line: 649, type: !94)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !100, line: 648, column: 27)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 646, column: 29)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !100, line: 641, column: 23)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !100, line: 633, column: 30)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !100, line: 628, column: 30)
!1450 = distinct !DILexicalBlock(scope: !1441, file: !100, line: 626, column: 25)
!1451 = !DILocalVariable(name: "ilim", scope: !1452, file: !100, line: 676, type: !94)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !100, line: 673, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1419, file: !100, line: 672, column: 17)
!1454 = !DILocation(line: 248, column: 33, scope: !1384)
!1455 = !DILocation(line: 248, column: 48, scope: !1384)
!1456 = !DILocation(line: 249, column: 39, scope: !1384)
!1457 = !DILocation(line: 249, column: 51, scope: !1384)
!1458 = !DILocation(line: 250, column: 46, scope: !1384)
!1459 = !DILocation(line: 250, column: 65, scope: !1384)
!1460 = !DILocation(line: 251, column: 47, scope: !1384)
!1461 = !DILocation(line: 252, column: 39, scope: !1384)
!1462 = !DILocation(line: 253, column: 39, scope: !1384)
!1463 = !DILocation(line: 256, column: 10, scope: !1384)
!1464 = !DILocation(line: 257, column: 10, scope: !1384)
!1465 = !DILocation(line: 258, column: 15, scope: !1384)
!1466 = !DILocation(line: 259, column: 10, scope: !1384)
!1467 = !DILocation(line: 260, column: 8, scope: !1384)
!1468 = !DILocation(line: 261, column: 25, scope: !1384)
!1469 = !DILocation(line: 261, column: 36, scope: !1384)
!1470 = !DILocation(line: 262, column: 8, scope: !1384)
!1471 = !DILocation(line: 263, column: 8, scope: !1384)
!1472 = !DILocation(line: 264, column: 8, scope: !1384)
!1473 = !DILocation(line: 265, column: 8, scope: !1384)
!1474 = !DILocation(line: 265, column: 3, scope: !1384)
!1475 = !DILocation(line: 308, column: 3, scope: !1384)
!1476 = !DILocation(line: 315, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 309, column: 5)
!1478 = !DILocation(line: 315, column: 12, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !100, line: 315, column: 11)
!1480 = !DILocation(line: 316, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !100, line: 316, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 316, column: 9)
!1483 = !DILocation(line: 316, column: 9, scope: !1482)
!1484 = !DILocation(line: 354, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !100, line: 332, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 331, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1477, file: !100, line: 330, column: 7)
!1488 = !DILocation(line: 355, column: 27, scope: !1485)
!1489 = !DILocation(line: 356, column: 11, scope: !1485)
!1490 = !DILocation(line: 357, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 357, column: 13)
!1492 = !DILocation(line: 357, column: 13, scope: !1487)
!1493 = !DILocation(line: 358, column: 43, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 358, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !100, line: 358, column: 11)
!1496 = !DILocation(line: 358, column: 11, scope: !1495)
!1497 = !DILocation(line: 359, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !100, line: 359, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 359, column: 13)
!1500 = !DILocation(line: 359, column: 13, scope: !1499)
!1501 = !DILocation(line: 358, column: 70, scope: !1494)
!1502 = distinct !{!1502, !1496, !1503}
!1503 = !DILocation(line: 359, column: 13, scope: !1495)
!1504 = !DILocation(line: 362, column: 28, scope: !1487)
!1505 = !DILocation(line: 364, column: 7, scope: !1477)
!1506 = !DILocation(line: 367, column: 7, scope: !1477)
!1507 = !DILocation(line: 370, column: 7, scope: !1477)
!1508 = !DILocation(line: 373, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1477, file: !100, line: 373, column: 11)
!1510 = !DILocation(line: 373, column: 11, scope: !1477)
!1511 = !DILocation(line: 378, column: 12, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1477, file: !100, line: 378, column: 11)
!1513 = !DILocation(line: 378, column: 11, scope: !1477)
!1514 = !DILocation(line: 379, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !100, line: 379, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !100, line: 379, column: 9)
!1517 = !DILocation(line: 379, column: 9, scope: !1516)
!1518 = !DILocation(line: 386, column: 7, scope: !1477)
!1519 = !DILocation(line: 389, column: 7, scope: !1477)
!1520 = !DILocation(line: 255, column: 10, scope: !1384)
!1521 = !DILocation(line: 392, column: 8, scope: !1413)
!1522 = !DILocation(line: 392, column: 27, scope: !1412)
!1523 = !DILocation(line: 392, column: 19, scope: !1412)
!1524 = !DILocation(line: 392, column: 60, scope: !1412)
!1525 = !DILocation(line: 392, column: 3, scope: !1413)
!1526 = !DILocation(line: 392, column: 41, scope: !1412)
!1527 = !DILocation(line: 392, column: 48, scope: !1412)
!1528 = !DILocation(line: 396, column: 12, scope: !1411)
!1529 = !DILocation(line: 397, column: 12, scope: !1411)
!1530 = !DILocation(line: 398, column: 12, scope: !1411)
!1531 = !DILocation(line: 401, column: 11, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 400, column: 11)
!1533 = !DILocation(line: 403, column: 17, scope: !1532)
!1534 = !DILocation(line: 404, column: 39, scope: !1532)
!1535 = !DILocation(line: 408, column: 32, scope: !1532)
!1536 = !DILocation(line: 404, column: 19, scope: !1532)
!1537 = !DILocation(line: 404, column: 15, scope: !1532)
!1538 = !DILocation(line: 409, column: 11, scope: !1532)
!1539 = !DILocation(line: 409, column: 26, scope: !1532)
!1540 = !DILocation(line: 409, column: 14, scope: !1532)
!1541 = !DILocation(line: 409, column: 63, scope: !1532)
!1542 = !DILocation(line: 400, column: 11, scope: !1411)
!1543 = !DILocation(line: 416, column: 11, scope: !1411)
!1544 = !DILocation(line: 394, column: 21, scope: !1411)
!1545 = !DILocation(line: 417, column: 7, scope: !1411)
!1546 = !DILocation(line: 420, column: 15, scope: !1420)
!1547 = !DILocation(line: 422, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !100, line: 422, column: 15)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !100, line: 421, column: 13)
!1550 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 420, column: 15)
!1551 = !DILocation(line: 422, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !100, line: 422, column: 15)
!1553 = !DILocation(line: 422, column: 15, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !100, line: 422, column: 15)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !100, line: 422, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !100, line: 422, column: 15)
!1557 = !DILocation(line: 422, column: 15, scope: !1555)
!1558 = !DILocation(line: 422, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !100, line: 422, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !100, line: 422, column: 15)
!1561 = !DILocation(line: 422, column: 15, scope: !1560)
!1562 = !DILocation(line: 422, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !100, line: 422, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !100, line: 422, column: 15)
!1565 = !DILocation(line: 422, column: 15, scope: !1564)
!1566 = !DILocation(line: 422, column: 15, scope: !1556)
!1567 = !DILocation(line: 422, column: 15, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 422, column: 15)
!1569 = distinct !DILexicalBlock(scope: !1548, file: !100, line: 422, column: 15)
!1570 = !DILocation(line: 422, column: 15, scope: !1569)
!1571 = !DILocation(line: 430, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1549, file: !100, line: 429, column: 19)
!1573 = !DILocation(line: 430, column: 24, scope: !1572)
!1574 = !DILocation(line: 430, column: 28, scope: !1572)
!1575 = !DILocation(line: 430, column: 38, scope: !1572)
!1576 = !DILocation(line: 430, column: 48, scope: !1572)
!1577 = !DILocation(line: 430, column: 59, scope: !1572)
!1578 = !DILocation(line: 432, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 432, column: 19)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 432, column: 19)
!1581 = distinct !DILexicalBlock(scope: !1572, file: !100, line: 431, column: 17)
!1582 = !DILocation(line: 432, column: 19, scope: !1580)
!1583 = !DILocation(line: 433, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !100, line: 433, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 433, column: 19)
!1586 = !DILocation(line: 433, column: 19, scope: !1585)
!1587 = !DILocation(line: 434, column: 17, scope: !1581)
!1588 = !DILocation(line: 441, column: 20, scope: !1550)
!1589 = !DILocation(line: 446, column: 11, scope: !1420)
!1590 = !DILocation(line: 449, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 447, column: 13)
!1592 = !DILocation(line: 455, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !100, line: 454, column: 19)
!1594 = !DILocation(line: 455, column: 24, scope: !1593)
!1595 = !DILocation(line: 455, column: 28, scope: !1593)
!1596 = !DILocation(line: 455, column: 38, scope: !1593)
!1597 = !DILocation(line: 455, column: 47, scope: !1593)
!1598 = !DILocation(line: 455, column: 41, scope: !1593)
!1599 = !DILocation(line: 455, column: 52, scope: !1593)
!1600 = !DILocation(line: 454, column: 19, scope: !1591)
!1601 = !DILocation(line: 456, column: 25, scope: !1593)
!1602 = !DILocation(line: 456, column: 17, scope: !1593)
!1603 = !DILocation(line: 463, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !100, line: 457, column: 19)
!1605 = !DILocation(line: 467, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !100, line: 467, column: 21)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !100, line: 467, column: 21)
!1608 = !DILocation(line: 467, column: 21, scope: !1607)
!1609 = !DILocation(line: 468, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !100, line: 468, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !100, line: 468, column: 21)
!1612 = !DILocation(line: 468, column: 21, scope: !1611)
!1613 = !DILocation(line: 469, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !100, line: 469, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !100, line: 469, column: 21)
!1616 = !DILocation(line: 469, column: 21, scope: !1615)
!1617 = !DILocation(line: 470, column: 21, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !100, line: 470, column: 21)
!1619 = distinct !DILexicalBlock(scope: !1604, file: !100, line: 470, column: 21)
!1620 = !DILocation(line: 470, column: 21, scope: !1619)
!1621 = !DILocation(line: 471, column: 21, scope: !1604)
!1622 = !DILocation(line: 395, column: 21, scope: !1411)
!1623 = !DILocation(line: 484, column: 31, scope: !1420)
!1624 = !DILocation(line: 485, column: 31, scope: !1420)
!1625 = !DILocation(line: 487, column: 31, scope: !1420)
!1626 = !DILocation(line: 488, column: 31, scope: !1420)
!1627 = !DILocation(line: 489, column: 31, scope: !1420)
!1628 = !DILocation(line: 492, column: 15, scope: !1420)
!1629 = !DILocation(line: 494, column: 19, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !100, line: 493, column: 13)
!1631 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 492, column: 15)
!1632 = !DILocation(line: 501, column: 33, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 501, column: 15)
!1634 = !DILocation(line: 506, column: 15, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 505, column: 15)
!1636 = !DILocation(line: 510, column: 15, scope: !1420)
!1637 = !DILocation(line: 518, column: 26, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 518, column: 15)
!1639 = !DILocation(line: 518, column: 15, scope: !1420)
!1640 = !DILocation(line: 518, column: 40, scope: !1638)
!1641 = !DILocation(line: 518, column: 47, scope: !1638)
!1642 = !DILocation(line: 522, column: 17, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 522, column: 15)
!1644 = !DILocation(line: 518, column: 18, scope: !1638)
!1645 = !DILocation(line: 518, column: 65, scope: !1638)
!1646 = !DILocation(line: 522, column: 15, scope: !1420)
!1647 = !DILocation(line: 526, column: 11, scope: !1420)
!1648 = !DILocation(line: 541, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 540, column: 15)
!1650 = !DILocation(line: 548, column: 15, scope: !1420)
!1651 = !DILocation(line: 550, column: 19, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !100, line: 549, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 548, column: 15)
!1654 = !DILocation(line: 553, column: 19, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 553, column: 19)
!1656 = !DILocation(line: 553, column: 35, scope: !1655)
!1657 = !DILocation(line: 553, column: 30, scope: !1655)
!1658 = !DILocation(line: 562, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 562, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 562, column: 15)
!1661 = !DILocation(line: 562, column: 15, scope: !1660)
!1662 = !DILocation(line: 563, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !100, line: 563, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 563, column: 15)
!1665 = !DILocation(line: 563, column: 15, scope: !1664)
!1666 = !DILocation(line: 564, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !100, line: 564, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1652, file: !100, line: 564, column: 15)
!1669 = !DILocation(line: 564, column: 15, scope: !1668)
!1670 = !DILocation(line: 566, column: 13, scope: !1652)
!1671 = !DILocation(line: 606, column: 17, scope: !1419)
!1672 = !DILocation(line: 602, column: 20, scope: !1419)
!1673 = !DILocation(line: 609, column: 29, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1424, file: !100, line: 607, column: 15)
!1675 = !{!899, !899, i64 0}
!1676 = !DILocation(line: 609, column: 27, scope: !1674)
!1677 = !DILocation(line: 604, column: 18, scope: !1419)
!1678 = !DILocation(line: 610, column: 15, scope: !1674)
!1679 = !DILocation(line: 613, column: 17, scope: !1423)
!1680 = !DILocation(line: 614, column: 17, scope: !1423)
!1681 = !DILocation(line: 618, column: 29, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1423, file: !100, line: 618, column: 21)
!1683 = !DILocation(line: 618, column: 21, scope: !1423)
!1684 = !DILocation(line: 619, column: 29, scope: !1682)
!1685 = !DILocation(line: 619, column: 19, scope: !1682)
!1686 = !DILocation(line: 621, column: 17, scope: !1423)
!1687 = distinct !{!1687, !1686, !1688}
!1688 = !DILocation(line: 667, column: 44, scope: !1423)
!1689 = !DILocation(line: 623, column: 21, scope: !1441)
!1690 = !DILocation(line: 624, column: 56, scope: !1441)
!1691 = !DILocation(line: 624, column: 50, scope: !1441)
!1692 = !DILocation(line: 625, column: 53, scope: !1441)
!1693 = !DILocation(line: 613, column: 27, scope: !1423)
!1694 = !DILocation(line: 623, column: 29, scope: !1441)
!1695 = !DILocation(line: 624, column: 36, scope: !1441)
!1696 = !DILocation(line: 624, column: 28, scope: !1441)
!1697 = !DILocation(line: 626, column: 25, scope: !1441)
!1698 = !DILocation(line: 636, column: 38, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1448, file: !100, line: 634, column: 23)
!1700 = !DILocation(line: 636, column: 48, scope: !1699)
!1701 = !DILocation(line: 636, column: 51, scope: !1699)
!1702 = !DILocation(line: 636, column: 25, scope: !1699)
!1703 = !DILocation(line: 637, column: 28, scope: !1699)
!1704 = !DILocation(line: 636, column: 34, scope: !1699)
!1705 = distinct !{!1705, !1702, !1703}
!1706 = !DILocation(line: 650, column: 43, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !100, line: 650, column: 29)
!1708 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 650, column: 29)
!1709 = !DILocation(line: 647, column: 29, scope: !1446)
!1710 = !DILocation(line: 649, column: 36, scope: !1445)
!1711 = !DILocation(line: 651, column: 49, scope: !1707)
!1712 = !DILocation(line: 651, column: 39, scope: !1707)
!1713 = !DILocation(line: 651, column: 31, scope: !1707)
!1714 = !DILocation(line: 650, column: 53, scope: !1707)
!1715 = !DILocation(line: 650, column: 29, scope: !1708)
!1716 = distinct !{!1716, !1715, !1717}
!1717 = !DILocation(line: 659, column: 33, scope: !1708)
!1718 = !DILocation(line: 666, column: 19, scope: !1423)
!1719 = !DILocation(line: 662, column: 41, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 662, column: 29)
!1721 = !DILocation(line: 662, column: 31, scope: !1720)
!1722 = !DILocation(line: 662, column: 29, scope: !1447)
!1723 = !DILocation(line: 664, column: 27, scope: !1447)
!1724 = !DILocation(line: 667, column: 26, scope: !1423)
!1725 = !DILocation(line: 667, column: 24, scope: !1423)
!1726 = !DILocation(line: 666, column: 19, scope: !1441)
!1727 = !DILocation(line: 668, column: 15, scope: !1424)
!1728 = !DILocation(line: 670, column: 40, scope: !1419)
!1729 = !DILocation(line: 672, column: 19, scope: !1453)
!1730 = !DILocation(line: 672, column: 45, scope: !1453)
!1731 = !DILocation(line: 672, column: 23, scope: !1453)
!1732 = !DILocation(line: 676, column: 33, scope: !1452)
!1733 = !DILocation(line: 676, column: 24, scope: !1452)
!1734 = !DILocation(line: 678, column: 17, scope: !1452)
!1735 = !DILocation(line: 680, column: 43, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 680, column: 25)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !100, line: 679, column: 19)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !100, line: 678, column: 17)
!1739 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 678, column: 17)
!1740 = !DILocation(line: 682, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !100, line: 682, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !100, line: 681, column: 23)
!1743 = !DILocation(line: 682, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !100, line: 682, column: 25)
!1745 = !DILocation(line: 682, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !100, line: 682, column: 25)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !100, line: 682, column: 25)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !100, line: 682, column: 25)
!1749 = !DILocation(line: 682, column: 25, scope: !1747)
!1750 = !DILocation(line: 682, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !100, line: 682, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !100, line: 682, column: 25)
!1753 = !DILocation(line: 682, column: 25, scope: !1752)
!1754 = !DILocation(line: 682, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !100, line: 682, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1748, file: !100, line: 682, column: 25)
!1757 = !DILocation(line: 682, column: 25, scope: !1756)
!1758 = !DILocation(line: 682, column: 25, scope: !1748)
!1759 = !DILocation(line: 682, column: 25, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 682, column: 25)
!1761 = distinct !DILexicalBlock(scope: !1741, file: !100, line: 682, column: 25)
!1762 = !DILocation(line: 682, column: 25, scope: !1761)
!1763 = !DILocation(line: 683, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !100, line: 683, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1742, file: !100, line: 683, column: 25)
!1766 = !DILocation(line: 683, column: 25, scope: !1765)
!1767 = !DILocation(line: 684, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !100, line: 684, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1742, file: !100, line: 684, column: 25)
!1770 = !DILocation(line: 684, column: 25, scope: !1769)
!1771 = !DILocation(line: 685, column: 38, scope: !1742)
!1772 = !DILocation(line: 685, column: 33, scope: !1742)
!1773 = !DILocation(line: 686, column: 23, scope: !1742)
!1774 = !DILocation(line: 687, column: 30, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1736, file: !100, line: 687, column: 30)
!1776 = !DILocation(line: 687, column: 30, scope: !1736)
!1777 = !DILocation(line: 689, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !100, line: 689, column: 25)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !100, line: 689, column: 25)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !100, line: 688, column: 23)
!1781 = !DILocation(line: 689, column: 25, scope: !1779)
!1782 = !DILocation(line: 691, column: 23, scope: !1780)
!1783 = !DILocation(line: 692, column: 35, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 692, column: 25)
!1785 = !DILocation(line: 692, column: 30, scope: !1784)
!1786 = !DILocation(line: 692, column: 25, scope: !1737)
!1787 = !DILocation(line: 694, column: 21, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !100, line: 694, column: 21)
!1789 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 694, column: 21)
!1790 = !DILocation(line: 694, column: 21, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !100, line: 694, column: 21)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !100, line: 694, column: 21)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !100, line: 694, column: 21)
!1794 = !DILocation(line: 694, column: 21, scope: !1792)
!1795 = !DILocation(line: 694, column: 21, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !100, line: 694, column: 21)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !100, line: 694, column: 21)
!1798 = !DILocation(line: 694, column: 21, scope: !1797)
!1799 = !DILocation(line: 694, column: 21, scope: !1793)
!1800 = !DILocation(line: 695, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !100, line: 695, column: 21)
!1802 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 695, column: 21)
!1803 = !DILocation(line: 695, column: 21, scope: !1802)
!1804 = !DILocation(line: 696, column: 25, scope: !1737)
!1805 = !DILocation(line: 678, column: 17, scope: !1738)
!1806 = distinct !{!1806, !1807, !1808}
!1807 = !DILocation(line: 678, column: 17, scope: !1739)
!1808 = !DILocation(line: 697, column: 19, scope: !1739)
!1809 = !DILocation(line: 704, column: 34, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 704, column: 11)
!1811 = !DILocation(line: 706, column: 14, scope: !1810)
!1812 = !DILocation(line: 707, column: 14, scope: !1810)
!1813 = !DILocation(line: 707, column: 35, scope: !1810)
!1814 = !DILocation(line: 707, column: 17, scope: !1810)
!1815 = !DILocation(line: 707, column: 53, scope: !1810)
!1816 = !DILocation(line: 707, column: 47, scope: !1810)
!1817 = !DILocation(line: 707, column: 65, scope: !1810)
!1818 = !DILocation(line: 708, column: 15, scope: !1810)
!1819 = !DILocation(line: 708, column: 11, scope: !1810)
!1820 = !DILocation(line: 704, column: 11, scope: !1411)
!1821 = !DILocation(line: 712, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 712, column: 7)
!1823 = !DILocation(line: 712, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !100, line: 712, column: 7)
!1825 = !DILocation(line: 712, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !100, line: 712, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !100, line: 712, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !100, line: 712, column: 7)
!1829 = !DILocation(line: 712, column: 7, scope: !1827)
!1830 = !DILocation(line: 712, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !100, line: 712, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !100, line: 712, column: 7)
!1833 = !DILocation(line: 712, column: 7, scope: !1832)
!1834 = !DILocation(line: 712, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !100, line: 712, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1828, file: !100, line: 712, column: 7)
!1837 = !DILocation(line: 712, column: 7, scope: !1836)
!1838 = !DILocation(line: 712, column: 7, scope: !1828)
!1839 = !DILocation(line: 712, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !100, line: 712, column: 7)
!1841 = distinct !DILexicalBlock(scope: !1822, file: !100, line: 712, column: 7)
!1842 = !DILocation(line: 712, column: 7, scope: !1841)
!1843 = !DILocation(line: 715, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !100, line: 715, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 715, column: 7)
!1846 = !DILocation(line: 715, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !100, line: 715, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 715, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !100, line: 715, column: 7)
!1850 = !DILocation(line: 715, column: 7, scope: !1848)
!1851 = !DILocation(line: 715, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !100, line: 715, column: 7)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 715, column: 7)
!1854 = !DILocation(line: 715, column: 7, scope: !1853)
!1855 = !DILocation(line: 715, column: 7, scope: !1849)
!1856 = !DILocation(line: 716, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !100, line: 716, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 716, column: 7)
!1859 = !DILocation(line: 716, column: 7, scope: !1858)
!1860 = !DILocation(line: 718, column: 13, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 718, column: 11)
!1862 = !DILocation(line: 718, column: 11, scope: !1411)
!1863 = !DILocation(line: 720, column: 5, scope: !1412)
!1864 = !DILocation(line: 392, column: 75, scope: !1412)
!1865 = !DILocation(line: 392, column: 3, scope: !1412)
!1866 = distinct !{!1866, !1525, !1867}
!1867 = !DILocation(line: 720, column: 5, scope: !1413)
!1868 = !DILocation(line: 722, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 722, column: 7)
!1870 = !DILocation(line: 722, column: 16, scope: !1869)
!1871 = !DILocation(line: 730, column: 51, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 730, column: 7)
!1873 = !DILocation(line: 731, column: 10, scope: !1872)
!1874 = !DILocation(line: 733, column: 11, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !100, line: 733, column: 11)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !100, line: 732, column: 5)
!1877 = !DILocation(line: 733, column: 11, scope: !1876)
!1878 = !DILocation(line: 734, column: 16, scope: !1875)
!1879 = !DILocation(line: 734, column: 9, scope: !1875)
!1880 = !DILocation(line: 738, column: 18, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !100, line: 738, column: 16)
!1882 = !DILocation(line: 738, column: 32, scope: !1881)
!1883 = !DILocation(line: 738, column: 29, scope: !1881)
!1884 = !DILocation(line: 747, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 747, column: 7)
!1886 = !DILocation(line: 747, column: 20, scope: !1885)
!1887 = !DILocation(line: 748, column: 12, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !100, line: 748, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !100, line: 748, column: 5)
!1890 = !DILocation(line: 748, column: 5, scope: !1889)
!1891 = !DILocation(line: 749, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !100, line: 749, column: 7)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !100, line: 749, column: 7)
!1894 = !DILocation(line: 749, column: 7, scope: !1893)
!1895 = !DILocation(line: 748, column: 39, scope: !1888)
!1896 = distinct !{!1896, !1890, !1897}
!1897 = !DILocation(line: 749, column: 7, scope: !1889)
!1898 = !DILocation(line: 751, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 751, column: 7)
!1900 = !DILocation(line: 751, column: 7, scope: !1384)
!1901 = !DILocation(line: 752, column: 5, scope: !1899)
!1902 = !DILocation(line: 752, column: 17, scope: !1899)
!1903 = !DILocation(line: 758, column: 21, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 758, column: 7)
!1905 = !DILocation(line: 758, column: 54, scope: !1904)
!1906 = !DILocation(line: 758, column: 51, scope: !1904)
!1907 = !DILocation(line: 762, column: 42, scope: !1384)
!1908 = !DILocation(line: 760, column: 10, scope: !1384)
!1909 = !DILocation(line: 760, column: 3, scope: !1384)
!1910 = !DILocation(line: 764, column: 1, scope: !1384)
!1911 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1912, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!6, !6, !58}
!1914 = !{!1915, !1916, !1917, !1918}
!1915 = !DILocalVariable(name: "msgid", arg: 1, scope: !1911, file: !100, line: 199, type: !6)
!1916 = !DILocalVariable(name: "s", arg: 2, scope: !1911, file: !100, line: 199, type: !58)
!1917 = !DILocalVariable(name: "translation", scope: !1911, file: !100, line: 201, type: !6)
!1918 = !DILocalVariable(name: "locale_code", scope: !1911, file: !100, line: 202, type: !6)
!1919 = !DILocation(line: 199, column: 28, scope: !1911)
!1920 = !DILocation(line: 199, column: 54, scope: !1911)
!1921 = !DILocation(line: 201, column: 29, scope: !1911)
!1922 = !DILocation(line: 201, column: 15, scope: !1911)
!1923 = !DILocation(line: 204, column: 19, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1911, file: !100, line: 204, column: 7)
!1925 = !DILocation(line: 204, column: 7, scope: !1911)
!1926 = !DILocation(line: 225, column: 17, scope: !1911)
!1927 = !DILocation(line: 202, column: 15, scope: !1911)
!1928 = !DILocalVariable(name: "s2", arg: 2, scope: !1929, file: !1930, line: 160, type: !6)
!1929 = distinct !DISubprogram(name: "strcaseeq0", scope: !1930, file: !1930, line: 160, type: !1931, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1933)
!1930 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1933 = !{!1934, !1928, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!1934 = !DILocalVariable(name: "s1", arg: 1, scope: !1929, file: !1930, line: 160, type: !6)
!1935 = !DILocalVariable(name: "s20", arg: 3, scope: !1929, file: !1930, line: 160, type: !8)
!1936 = !DILocalVariable(name: "s21", arg: 4, scope: !1929, file: !1930, line: 160, type: !8)
!1937 = !DILocalVariable(name: "s22", arg: 5, scope: !1929, file: !1930, line: 160, type: !8)
!1938 = !DILocalVariable(name: "s23", arg: 6, scope: !1929, file: !1930, line: 160, type: !8)
!1939 = !DILocalVariable(name: "s24", arg: 7, scope: !1929, file: !1930, line: 160, type: !8)
!1940 = !DILocalVariable(name: "s25", arg: 8, scope: !1929, file: !1930, line: 160, type: !8)
!1941 = !DILocalVariable(name: "s26", arg: 9, scope: !1929, file: !1930, line: 160, type: !8)
!1942 = !DILocalVariable(name: "s27", arg: 10, scope: !1929, file: !1930, line: 160, type: !8)
!1943 = !DILocalVariable(name: "s28", arg: 11, scope: !1929, file: !1930, line: 160, type: !8)
!1944 = !DILocation(line: 160, column: 41, scope: !1929, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 226, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1911, file: !100, line: 226, column: 7)
!1947 = !DILocation(line: 160, column: 120, scope: !1929, inlinedAt: !1945)
!1948 = !DILocation(line: 160, column: 130, scope: !1929, inlinedAt: !1945)
!1949 = !DILocation(line: 162, column: 7, scope: !1950, inlinedAt: !1945)
!1950 = distinct !DILexicalBlock(scope: !1929, file: !1930, line: 162, column: 7)
!1951 = !DILocalVariable(name: "s2", arg: 2, scope: !1952, file: !1930, line: 146, type: !6)
!1952 = distinct !DISubprogram(name: "strcaseeq1", scope: !1930, file: !1930, line: 146, type: !1953, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1955 = !{!1956, !1951, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1956 = !DILocalVariable(name: "s1", arg: 1, scope: !1952, file: !1930, line: 146, type: !6)
!1957 = !DILocalVariable(name: "s21", arg: 3, scope: !1952, file: !1930, line: 146, type: !8)
!1958 = !DILocalVariable(name: "s22", arg: 4, scope: !1952, file: !1930, line: 146, type: !8)
!1959 = !DILocalVariable(name: "s23", arg: 5, scope: !1952, file: !1930, line: 146, type: !8)
!1960 = !DILocalVariable(name: "s24", arg: 6, scope: !1952, file: !1930, line: 146, type: !8)
!1961 = !DILocalVariable(name: "s25", arg: 7, scope: !1952, file: !1930, line: 146, type: !8)
!1962 = !DILocalVariable(name: "s26", arg: 8, scope: !1952, file: !1930, line: 146, type: !8)
!1963 = !DILocalVariable(name: "s27", arg: 9, scope: !1952, file: !1930, line: 146, type: !8)
!1964 = !DILocalVariable(name: "s28", arg: 10, scope: !1952, file: !1930, line: 146, type: !8)
!1965 = !DILocation(line: 146, column: 41, scope: !1952, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 167, column: 16, scope: !1967, inlinedAt: !1945)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1930, line: 164, column: 11)
!1968 = distinct !DILexicalBlock(scope: !1950, file: !1930, line: 163, column: 5)
!1969 = !DILocation(line: 146, column: 110, scope: !1952, inlinedAt: !1966)
!1970 = !DILocation(line: 146, column: 120, scope: !1952, inlinedAt: !1966)
!1971 = !DILocation(line: 148, column: 7, scope: !1972, inlinedAt: !1966)
!1972 = distinct !DILexicalBlock(scope: !1952, file: !1930, line: 148, column: 7)
!1973 = !DILocalVariable(name: "s2", arg: 2, scope: !1974, file: !1930, line: 132, type: !6)
!1974 = distinct !DISubprogram(name: "strcaseeq2", scope: !1930, file: !1930, line: 132, type: !1975, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1977 = !{!1978, !1973, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1978 = !DILocalVariable(name: "s1", arg: 1, scope: !1974, file: !1930, line: 132, type: !6)
!1979 = !DILocalVariable(name: "s22", arg: 3, scope: !1974, file: !1930, line: 132, type: !8)
!1980 = !DILocalVariable(name: "s23", arg: 4, scope: !1974, file: !1930, line: 132, type: !8)
!1981 = !DILocalVariable(name: "s24", arg: 5, scope: !1974, file: !1930, line: 132, type: !8)
!1982 = !DILocalVariable(name: "s25", arg: 6, scope: !1974, file: !1930, line: 132, type: !8)
!1983 = !DILocalVariable(name: "s26", arg: 7, scope: !1974, file: !1930, line: 132, type: !8)
!1984 = !DILocalVariable(name: "s27", arg: 8, scope: !1974, file: !1930, line: 132, type: !8)
!1985 = !DILocalVariable(name: "s28", arg: 9, scope: !1974, file: !1930, line: 132, type: !8)
!1986 = !DILocation(line: 132, column: 41, scope: !1974, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 153, column: 16, scope: !1988, inlinedAt: !1966)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1930, line: 150, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1972, file: !1930, line: 149, column: 5)
!1990 = !DILocation(line: 132, column: 100, scope: !1974, inlinedAt: !1987)
!1991 = !DILocation(line: 132, column: 110, scope: !1974, inlinedAt: !1987)
!1992 = !DILocation(line: 134, column: 7, scope: !1993, inlinedAt: !1987)
!1993 = distinct !DILexicalBlock(scope: !1974, file: !1930, line: 134, column: 7)
!1994 = !DILocalVariable(name: "s2", arg: 2, scope: !1995, file: !1930, line: 118, type: !6)
!1995 = distinct !DISubprogram(name: "strcaseeq3", scope: !1930, file: !1930, line: 118, type: !1996, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1998 = !{!1999, !1994, !2000, !2001, !2002, !2003, !2004, !2005}
!1999 = !DILocalVariable(name: "s1", arg: 1, scope: !1995, file: !1930, line: 118, type: !6)
!2000 = !DILocalVariable(name: "s23", arg: 3, scope: !1995, file: !1930, line: 118, type: !8)
!2001 = !DILocalVariable(name: "s24", arg: 4, scope: !1995, file: !1930, line: 118, type: !8)
!2002 = !DILocalVariable(name: "s25", arg: 5, scope: !1995, file: !1930, line: 118, type: !8)
!2003 = !DILocalVariable(name: "s26", arg: 6, scope: !1995, file: !1930, line: 118, type: !8)
!2004 = !DILocalVariable(name: "s27", arg: 7, scope: !1995, file: !1930, line: 118, type: !8)
!2005 = !DILocalVariable(name: "s28", arg: 8, scope: !1995, file: !1930, line: 118, type: !8)
!2006 = !DILocation(line: 118, column: 41, scope: !1995, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 139, column: 16, scope: !2008, inlinedAt: !1987)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1930, line: 136, column: 11)
!2009 = distinct !DILexicalBlock(scope: !1993, file: !1930, line: 135, column: 5)
!2010 = !DILocation(line: 118, column: 90, scope: !1995, inlinedAt: !2007)
!2011 = !DILocation(line: 118, column: 100, scope: !1995, inlinedAt: !2007)
!2012 = !DILocation(line: 120, column: 7, scope: !2013, inlinedAt: !2007)
!2013 = distinct !DILexicalBlock(scope: !1995, file: !1930, line: 120, column: 7)
!2014 = !DILocation(line: 120, column: 7, scope: !1995, inlinedAt: !2007)
!2015 = !DILocalVariable(name: "s2", arg: 2, scope: !2016, file: !1930, line: 104, type: !6)
!2016 = distinct !DISubprogram(name: "strcaseeq4", scope: !1930, file: !1930, line: 104, type: !2017, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!2019 = !{!2020, !2015, !2021, !2022, !2023, !2024, !2025}
!2020 = !DILocalVariable(name: "s1", arg: 1, scope: !2016, file: !1930, line: 104, type: !6)
!2021 = !DILocalVariable(name: "s24", arg: 3, scope: !2016, file: !1930, line: 104, type: !8)
!2022 = !DILocalVariable(name: "s25", arg: 4, scope: !2016, file: !1930, line: 104, type: !8)
!2023 = !DILocalVariable(name: "s26", arg: 5, scope: !2016, file: !1930, line: 104, type: !8)
!2024 = !DILocalVariable(name: "s27", arg: 6, scope: !2016, file: !1930, line: 104, type: !8)
!2025 = !DILocalVariable(name: "s28", arg: 7, scope: !2016, file: !1930, line: 104, type: !8)
!2026 = !DILocation(line: 104, column: 41, scope: !2016, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 125, column: 16, scope: !2028, inlinedAt: !2007)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1930, line: 122, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2013, file: !1930, line: 121, column: 5)
!2030 = !DILocation(line: 104, column: 80, scope: !2016, inlinedAt: !2027)
!2031 = !DILocation(line: 104, column: 90, scope: !2016, inlinedAt: !2027)
!2032 = !DILocation(line: 106, column: 7, scope: !2033, inlinedAt: !2027)
!2033 = distinct !DILexicalBlock(scope: !2016, file: !1930, line: 106, column: 7)
!2034 = !DILocation(line: 106, column: 7, scope: !2016, inlinedAt: !2027)
!2035 = !DILocalVariable(name: "s2", arg: 2, scope: !2036, file: !1930, line: 90, type: !6)
!2036 = distinct !DISubprogram(name: "strcaseeq5", scope: !1930, file: !1930, line: 90, type: !2037, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!25, !6, !6, !8, !8, !8, !8}
!2039 = !{!2040, !2035, !2041, !2042, !2043, !2044}
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2036, file: !1930, line: 90, type: !6)
!2041 = !DILocalVariable(name: "s25", arg: 3, scope: !2036, file: !1930, line: 90, type: !8)
!2042 = !DILocalVariable(name: "s26", arg: 4, scope: !2036, file: !1930, line: 90, type: !8)
!2043 = !DILocalVariable(name: "s27", arg: 5, scope: !2036, file: !1930, line: 90, type: !8)
!2044 = !DILocalVariable(name: "s28", arg: 6, scope: !2036, file: !1930, line: 90, type: !8)
!2045 = !DILocation(line: 90, column: 41, scope: !2036, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 111, column: 16, scope: !2047, inlinedAt: !2027)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !1930, line: 108, column: 11)
!2048 = distinct !DILexicalBlock(scope: !2033, file: !1930, line: 107, column: 5)
!2049 = !DILocation(line: 90, column: 70, scope: !2036, inlinedAt: !2046)
!2050 = !DILocation(line: 90, column: 80, scope: !2036, inlinedAt: !2046)
!2051 = !DILocation(line: 92, column: 7, scope: !2052, inlinedAt: !2046)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !1930, line: 92, column: 7)
!2053 = !DILocation(line: 92, column: 7, scope: !2036, inlinedAt: !2046)
!2054 = !DILocation(line: 227, column: 12, scope: !1946)
!2055 = !DILocation(line: 227, column: 21, scope: !1946)
!2056 = !DILocation(line: 227, column: 5, scope: !1946)
!2057 = !DILocation(line: 146, column: 41, scope: !1952, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 167, column: 16, scope: !1967, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 228, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1911, file: !100, line: 228, column: 7)
!2061 = !DILocation(line: 146, column: 110, scope: !1952, inlinedAt: !2058)
!2062 = !DILocation(line: 146, column: 120, scope: !1952, inlinedAt: !2058)
!2063 = !DILocation(line: 148, column: 7, scope: !1972, inlinedAt: !2058)
!2064 = !DILocation(line: 132, column: 41, scope: !1974, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 153, column: 16, scope: !1988, inlinedAt: !2058)
!2066 = !DILocation(line: 132, column: 100, scope: !1974, inlinedAt: !2065)
!2067 = !DILocation(line: 132, column: 110, scope: !1974, inlinedAt: !2065)
!2068 = !DILocation(line: 134, column: 7, scope: !1993, inlinedAt: !2065)
!2069 = !DILocation(line: 134, column: 7, scope: !1974, inlinedAt: !2065)
!2070 = !DILocation(line: 118, column: 41, scope: !1995, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 139, column: 16, scope: !2008, inlinedAt: !2065)
!2072 = !DILocation(line: 118, column: 90, scope: !1995, inlinedAt: !2071)
!2073 = !DILocation(line: 118, column: 100, scope: !1995, inlinedAt: !2071)
!2074 = !DILocation(line: 120, column: 7, scope: !2013, inlinedAt: !2071)
!2075 = !DILocation(line: 120, column: 7, scope: !1995, inlinedAt: !2071)
!2076 = !DILocation(line: 104, column: 41, scope: !2016, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 125, column: 16, scope: !2028, inlinedAt: !2071)
!2078 = !DILocation(line: 104, column: 80, scope: !2016, inlinedAt: !2077)
!2079 = !DILocation(line: 104, column: 90, scope: !2016, inlinedAt: !2077)
!2080 = !DILocation(line: 106, column: 7, scope: !2033, inlinedAt: !2077)
!2081 = !DILocation(line: 106, column: 7, scope: !2016, inlinedAt: !2077)
!2082 = !DILocation(line: 90, column: 41, scope: !2036, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 111, column: 16, scope: !2047, inlinedAt: !2077)
!2084 = !DILocation(line: 90, column: 70, scope: !2036, inlinedAt: !2083)
!2085 = !DILocation(line: 90, column: 80, scope: !2036, inlinedAt: !2083)
!2086 = !DILocation(line: 92, column: 7, scope: !2052, inlinedAt: !2083)
!2087 = !DILocation(line: 92, column: 7, scope: !2036, inlinedAt: !2083)
!2088 = !DILocalVariable(name: "s2", arg: 2, scope: !2089, file: !1930, line: 76, type: !6)
!2089 = distinct !DISubprogram(name: "strcaseeq6", scope: !1930, file: !1930, line: 76, type: !2090, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!25, !6, !6, !8, !8, !8}
!2092 = !{!2093, !2088, !2094, !2095, !2096}
!2093 = !DILocalVariable(name: "s1", arg: 1, scope: !2089, file: !1930, line: 76, type: !6)
!2094 = !DILocalVariable(name: "s26", arg: 3, scope: !2089, file: !1930, line: 76, type: !8)
!2095 = !DILocalVariable(name: "s27", arg: 4, scope: !2089, file: !1930, line: 76, type: !8)
!2096 = !DILocalVariable(name: "s28", arg: 5, scope: !2089, file: !1930, line: 76, type: !8)
!2097 = !DILocation(line: 76, column: 41, scope: !2089, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 97, column: 16, scope: !2099, inlinedAt: !2083)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1930, line: 94, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2052, file: !1930, line: 93, column: 5)
!2101 = !DILocation(line: 76, column: 60, scope: !2089, inlinedAt: !2098)
!2102 = !DILocation(line: 76, column: 70, scope: !2089, inlinedAt: !2098)
!2103 = !DILocation(line: 78, column: 7, scope: !2104, inlinedAt: !2098)
!2104 = distinct !DILexicalBlock(scope: !2089, file: !1930, line: 78, column: 7)
!2105 = !DILocation(line: 78, column: 7, scope: !2089, inlinedAt: !2098)
!2106 = !DILocalVariable(name: "s2", arg: 2, scope: !2107, file: !1930, line: 62, type: !6)
!2107 = distinct !DISubprogram(name: "strcaseeq7", scope: !1930, file: !1930, line: 62, type: !2108, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!25, !6, !6, !8, !8}
!2110 = !{!2111, !2106, !2112, !2113}
!2111 = !DILocalVariable(name: "s1", arg: 1, scope: !2107, file: !1930, line: 62, type: !6)
!2112 = !DILocalVariable(name: "s27", arg: 3, scope: !2107, file: !1930, line: 62, type: !8)
!2113 = !DILocalVariable(name: "s28", arg: 4, scope: !2107, file: !1930, line: 62, type: !8)
!2114 = !DILocation(line: 62, column: 41, scope: !2107, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 83, column: 16, scope: !2116, inlinedAt: !2098)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !1930, line: 80, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2104, file: !1930, line: 79, column: 5)
!2118 = !DILocation(line: 62, column: 50, scope: !2107, inlinedAt: !2115)
!2119 = !DILocation(line: 62, column: 60, scope: !2107, inlinedAt: !2115)
!2120 = !DILocation(line: 64, column: 7, scope: !2121, inlinedAt: !2115)
!2121 = distinct !DILexicalBlock(scope: !2107, file: !1930, line: 64, column: 7)
!2122 = !DILocation(line: 228, column: 7, scope: !1911)
!2123 = !DILocation(line: 229, column: 12, scope: !2060)
!2124 = !DILocation(line: 229, column: 21, scope: !2060)
!2125 = !DILocation(line: 229, column: 5, scope: !2060)
!2126 = !DILocation(line: 231, column: 13, scope: !1911)
!2127 = !DILocation(line: 231, column: 11, scope: !1911)
!2128 = !DILocation(line: 231, column: 3, scope: !1911)
!2129 = !DILocation(line: 232, column: 1, scope: !1911)
!2130 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2131, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!50, !6, !94, !1256}
!2133 = !{!2134, !2135, !2136}
!2134 = !DILocalVariable(name: "arg", arg: 1, scope: !2130, file: !100, line: 791, type: !6)
!2135 = !DILocalVariable(name: "argsize", arg: 2, scope: !2130, file: !100, line: 791, type: !94)
!2136 = !DILocalVariable(name: "o", arg: 3, scope: !2130, file: !100, line: 792, type: !1256)
!2137 = !DILocation(line: 791, column: 29, scope: !2130)
!2138 = !DILocation(line: 791, column: 41, scope: !2130)
!2139 = !DILocation(line: 792, column: 47, scope: !2130)
!2140 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !100, line: 804, type: !6)
!2141 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2142, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!50, !6, !94, !600, !1256}
!2144 = !{!2140, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2145 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !100, line: 804, type: !94)
!2146 = !DILocalVariable(name: "size", arg: 3, scope: !2141, file: !100, line: 804, type: !600)
!2147 = !DILocalVariable(name: "o", arg: 4, scope: !2141, file: !100, line: 805, type: !1256)
!2148 = !DILocalVariable(name: "p", scope: !2141, file: !100, line: 807, type: !1256)
!2149 = !DILocalVariable(name: "e", scope: !2141, file: !100, line: 808, type: !25)
!2150 = !DILocalVariable(name: "flags", scope: !2141, file: !100, line: 810, type: !25)
!2151 = !DILocalVariable(name: "bufsize", scope: !2141, file: !100, line: 811, type: !94)
!2152 = !DILocalVariable(name: "buf", scope: !2141, file: !100, line: 815, type: !50)
!2153 = !DILocation(line: 804, column: 33, scope: !2141, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 794, column: 10, scope: !2130)
!2155 = !DILocation(line: 804, column: 45, scope: !2141, inlinedAt: !2154)
!2156 = !DILocation(line: 804, column: 62, scope: !2141, inlinedAt: !2154)
!2157 = !DILocation(line: 805, column: 51, scope: !2141, inlinedAt: !2154)
!2158 = !DILocation(line: 807, column: 37, scope: !2141, inlinedAt: !2154)
!2159 = !DILocation(line: 807, column: 33, scope: !2141, inlinedAt: !2154)
!2160 = !DILocation(line: 808, column: 11, scope: !2141, inlinedAt: !2154)
!2161 = !DILocation(line: 808, column: 7, scope: !2141, inlinedAt: !2154)
!2162 = !DILocation(line: 810, column: 18, scope: !2141, inlinedAt: !2154)
!2163 = !DILocation(line: 810, column: 24, scope: !2141, inlinedAt: !2154)
!2164 = !DILocation(line: 810, column: 7, scope: !2141, inlinedAt: !2154)
!2165 = !DILocation(line: 811, column: 69, scope: !2141, inlinedAt: !2154)
!2166 = !DILocation(line: 812, column: 53, scope: !2141, inlinedAt: !2154)
!2167 = !DILocation(line: 813, column: 49, scope: !2141, inlinedAt: !2154)
!2168 = !DILocation(line: 814, column: 49, scope: !2141, inlinedAt: !2154)
!2169 = !DILocation(line: 811, column: 20, scope: !2141, inlinedAt: !2154)
!2170 = !DILocation(line: 814, column: 62, scope: !2141, inlinedAt: !2154)
!2171 = !DILocation(line: 811, column: 10, scope: !2141, inlinedAt: !2154)
!2172 = !DILocalVariable(name: "n", arg: 1, scope: !2173, file: !596, line: 220, type: !94)
!2173 = distinct !DISubprogram(name: "xcharalloc", scope: !596, file: !596, line: 220, type: !2174, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!50, !94}
!2176 = !{!2172}
!2177 = !DILocation(line: 220, column: 20, scope: !2173, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 815, column: 15, scope: !2141, inlinedAt: !2154)
!2179 = !DILocation(line: 222, column: 10, scope: !2173, inlinedAt: !2178)
!2180 = !DILocation(line: 815, column: 9, scope: !2141, inlinedAt: !2154)
!2181 = !DILocation(line: 816, column: 60, scope: !2141, inlinedAt: !2154)
!2182 = !DILocation(line: 818, column: 32, scope: !2141, inlinedAt: !2154)
!2183 = !DILocation(line: 818, column: 47, scope: !2141, inlinedAt: !2154)
!2184 = !DILocation(line: 816, column: 3, scope: !2141, inlinedAt: !2154)
!2185 = !DILocation(line: 819, column: 9, scope: !2141, inlinedAt: !2154)
!2186 = !DILocation(line: 794, column: 3, scope: !2130)
!2187 = !DILocation(line: 804, column: 33, scope: !2141)
!2188 = !DILocation(line: 804, column: 45, scope: !2141)
!2189 = !DILocation(line: 804, column: 62, scope: !2141)
!2190 = !DILocation(line: 805, column: 51, scope: !2141)
!2191 = !DILocation(line: 807, column: 37, scope: !2141)
!2192 = !DILocation(line: 807, column: 33, scope: !2141)
!2193 = !DILocation(line: 808, column: 11, scope: !2141)
!2194 = !DILocation(line: 808, column: 7, scope: !2141)
!2195 = !DILocation(line: 810, column: 18, scope: !2141)
!2196 = !DILocation(line: 810, column: 27, scope: !2141)
!2197 = !DILocation(line: 810, column: 24, scope: !2141)
!2198 = !DILocation(line: 810, column: 7, scope: !2141)
!2199 = !DILocation(line: 811, column: 69, scope: !2141)
!2200 = !DILocation(line: 812, column: 53, scope: !2141)
!2201 = !DILocation(line: 813, column: 49, scope: !2141)
!2202 = !DILocation(line: 814, column: 49, scope: !2141)
!2203 = !DILocation(line: 811, column: 20, scope: !2141)
!2204 = !DILocation(line: 814, column: 62, scope: !2141)
!2205 = !DILocation(line: 811, column: 10, scope: !2141)
!2206 = !DILocation(line: 220, column: 20, scope: !2173, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 815, column: 15, scope: !2141)
!2208 = !DILocation(line: 222, column: 10, scope: !2173, inlinedAt: !2207)
!2209 = !DILocation(line: 815, column: 9, scope: !2141)
!2210 = !DILocation(line: 816, column: 60, scope: !2141)
!2211 = !DILocation(line: 818, column: 32, scope: !2141)
!2212 = !DILocation(line: 818, column: 47, scope: !2141)
!2213 = !DILocation(line: 816, column: 3, scope: !2141)
!2214 = !DILocation(line: 819, column: 9, scope: !2141)
!2215 = !DILocation(line: 820, column: 7, scope: !2141)
!2216 = !DILocation(line: 821, column: 11, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2141, file: !100, line: 820, column: 7)
!2218 = !{!898, !898, i64 0}
!2219 = !DILocation(line: 821, column: 5, scope: !2217)
!2220 = !DILocation(line: 822, column: 3, scope: !2141)
!2221 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !972, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "sv", scope: !2221, file: !100, line: 842, type: !127)
!2224 = !DILocalVariable(name: "i", scope: !2221, file: !100, line: 843, type: !25)
!2225 = !DILocation(line: 842, column: 24, scope: !2221)
!2226 = !DILocation(line: 842, column: 19, scope: !2221)
!2227 = !DILocation(line: 843, column: 7, scope: !2221)
!2228 = !DILocation(line: 844, column: 19, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !100, line: 844, column: 3)
!2230 = distinct !DILexicalBlock(scope: !2221, file: !100, line: 844, column: 3)
!2231 = !DILocation(line: 844, column: 17, scope: !2229)
!2232 = !DILocation(line: 844, column: 3, scope: !2230)
!2233 = !DILocation(line: 845, column: 17, scope: !2229)
!2234 = !{!2235, !646, i64 8}
!2235 = !{!"slotvec", !898, i64 0, !646, i64 8}
!2236 = !DILocation(line: 845, column: 5, scope: !2229)
!2237 = !DILocation(line: 844, column: 28, scope: !2229)
!2238 = distinct !{!2238, !2232, !2239}
!2239 = !DILocation(line: 845, column: 20, scope: !2230)
!2240 = !DILocation(line: 846, column: 13, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2221, file: !100, line: 846, column: 7)
!2242 = !DILocation(line: 846, column: 17, scope: !2241)
!2243 = !DILocation(line: 846, column: 7, scope: !2221)
!2244 = !DILocation(line: 848, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !100, line: 847, column: 5)
!2246 = !DILocation(line: 849, column: 21, scope: !2245)
!2247 = !{!2235, !898, i64 0}
!2248 = !DILocation(line: 850, column: 20, scope: !2245)
!2249 = !DILocation(line: 851, column: 5, scope: !2245)
!2250 = !DILocation(line: 852, column: 10, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2221, file: !100, line: 852, column: 7)
!2252 = !DILocation(line: 852, column: 7, scope: !2221)
!2253 = !DILocation(line: 854, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !100, line: 853, column: 5)
!2255 = !DILocation(line: 854, column: 7, scope: !2254)
!2256 = !DILocation(line: 855, column: 15, scope: !2254)
!2257 = !DILocation(line: 856, column: 5, scope: !2254)
!2258 = !DILocation(line: 857, column: 10, scope: !2221)
!2259 = !DILocation(line: 858, column: 1, scope: !2221)
!2260 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2261, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!50, !25, !6}
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "n", arg: 1, scope: !2260, file: !100, line: 922, type: !25)
!2265 = !DILocalVariable(name: "arg", arg: 2, scope: !2260, file: !100, line: 922, type: !6)
!2266 = !DILocation(line: 922, column: 17, scope: !2260)
!2267 = !DILocation(line: 922, column: 32, scope: !2260)
!2268 = !DILocation(line: 924, column: 10, scope: !2260)
!2269 = !DILocation(line: 924, column: 3, scope: !2260)
!2270 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2271, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!50, !25, !6, !94, !1256}
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2283, !2285, !2286, !2287}
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !100, line: 869, type: !25)
!2275 = !DILocalVariable(name: "arg", arg: 2, scope: !2270, file: !100, line: 869, type: !6)
!2276 = !DILocalVariable(name: "argsize", arg: 3, scope: !2270, file: !100, line: 869, type: !94)
!2277 = !DILocalVariable(name: "options", arg: 4, scope: !2270, file: !100, line: 870, type: !1256)
!2278 = !DILocalVariable(name: "e", scope: !2270, file: !100, line: 872, type: !25)
!2279 = !DILocalVariable(name: "sv", scope: !2270, file: !100, line: 874, type: !127)
!2280 = !DILocalVariable(name: "preallocated", scope: !2281, file: !100, line: 881, type: !17)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !100, line: 880, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2270, file: !100, line: 879, column: 7)
!2283 = !DILocalVariable(name: "size", scope: !2284, file: !100, line: 894, type: !94)
!2284 = distinct !DILexicalBlock(scope: !2270, file: !100, line: 893, column: 3)
!2285 = !DILocalVariable(name: "val", scope: !2284, file: !100, line: 895, type: !50)
!2286 = !DILocalVariable(name: "flags", scope: !2284, file: !100, line: 897, type: !25)
!2287 = !DILocalVariable(name: "qsize", scope: !2284, file: !100, line: 898, type: !94)
!2288 = !DILocation(line: 869, column: 25, scope: !2270)
!2289 = !DILocation(line: 869, column: 40, scope: !2270)
!2290 = !DILocation(line: 869, column: 52, scope: !2270)
!2291 = !DILocation(line: 870, column: 51, scope: !2270)
!2292 = !DILocation(line: 872, column: 11, scope: !2270)
!2293 = !DILocation(line: 872, column: 7, scope: !2270)
!2294 = !DILocation(line: 874, column: 24, scope: !2270)
!2295 = !DILocation(line: 874, column: 19, scope: !2270)
!2296 = !DILocation(line: 876, column: 9, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2270, file: !100, line: 876, column: 7)
!2298 = !DILocation(line: 876, column: 7, scope: !2270)
!2299 = !DILocation(line: 877, column: 5, scope: !2297)
!2300 = !DILocation(line: 879, column: 7, scope: !2282)
!2301 = !DILocation(line: 879, column: 14, scope: !2282)
!2302 = !DILocation(line: 879, column: 7, scope: !2270)
!2303 = !DILocation(line: 881, column: 31, scope: !2281)
!2304 = !DILocation(line: 883, column: 67, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2281, file: !100, line: 883, column: 11)
!2306 = !DILocation(line: 883, column: 11, scope: !2281)
!2307 = !DILocation(line: 884, column: 9, scope: !2305)
!2308 = !DILocation(line: 886, column: 32, scope: !2281)
!2309 = !DILocation(line: 886, column: 61, scope: !2281)
!2310 = !DILocation(line: 886, column: 58, scope: !2281)
!2311 = !DILocation(line: 886, column: 66, scope: !2281)
!2312 = !DILocation(line: 886, column: 22, scope: !2281)
!2313 = !DILocation(line: 886, column: 15, scope: !2281)
!2314 = !DILocation(line: 887, column: 11, scope: !2281)
!2315 = !DILocation(line: 888, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2281, file: !100, line: 887, column: 11)
!2317 = !{i64 0, i64 8, !2218, i64 8, i64 8, !645}
!2318 = !DILocation(line: 888, column: 9, scope: !2316)
!2319 = !DILocation(line: 889, column: 20, scope: !2281)
!2320 = !DILocation(line: 889, column: 18, scope: !2281)
!2321 = !DILocation(line: 889, column: 7, scope: !2281)
!2322 = !DILocation(line: 889, column: 38, scope: !2281)
!2323 = !DILocation(line: 889, column: 31, scope: !2281)
!2324 = !DILocation(line: 889, column: 48, scope: !2281)
!2325 = !DILocation(line: 890, column: 14, scope: !2281)
!2326 = !DILocation(line: 891, column: 5, scope: !2281)
!2327 = !DILocation(line: 894, column: 19, scope: !2284)
!2328 = !DILocation(line: 894, column: 25, scope: !2284)
!2329 = !DILocation(line: 894, column: 12, scope: !2284)
!2330 = !DILocation(line: 895, column: 23, scope: !2284)
!2331 = !DILocation(line: 895, column: 11, scope: !2284)
!2332 = !DILocation(line: 897, column: 26, scope: !2284)
!2333 = !DILocation(line: 897, column: 32, scope: !2284)
!2334 = !DILocation(line: 897, column: 9, scope: !2284)
!2335 = !DILocation(line: 899, column: 55, scope: !2284)
!2336 = !DILocation(line: 900, column: 46, scope: !2284)
!2337 = !DILocation(line: 901, column: 55, scope: !2284)
!2338 = !DILocation(line: 902, column: 55, scope: !2284)
!2339 = !DILocation(line: 898, column: 20, scope: !2284)
!2340 = !DILocation(line: 898, column: 12, scope: !2284)
!2341 = !DILocation(line: 904, column: 14, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2284, file: !100, line: 904, column: 9)
!2343 = !DILocation(line: 904, column: 9, scope: !2284)
!2344 = !DILocation(line: 906, column: 35, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !100, line: 905, column: 7)
!2346 = !DILocation(line: 906, column: 20, scope: !2345)
!2347 = !DILocation(line: 907, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !100, line: 907, column: 13)
!2349 = !DILocation(line: 907, column: 13, scope: !2345)
!2350 = !DILocation(line: 908, column: 11, scope: !2348)
!2351 = !DILocation(line: 220, column: 20, scope: !2173, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 909, column: 27, scope: !2345)
!2353 = !DILocation(line: 222, column: 10, scope: !2173, inlinedAt: !2352)
!2354 = !DILocation(line: 909, column: 19, scope: !2345)
!2355 = !DILocation(line: 910, column: 69, scope: !2345)
!2356 = !DILocation(line: 912, column: 44, scope: !2345)
!2357 = !DILocation(line: 913, column: 44, scope: !2345)
!2358 = !DILocation(line: 910, column: 9, scope: !2345)
!2359 = !DILocation(line: 914, column: 7, scope: !2345)
!2360 = !DILocation(line: 916, column: 11, scope: !2284)
!2361 = !DILocation(line: 917, column: 5, scope: !2284)
!2362 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2363, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!50, !25, !6, !94}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "n", arg: 1, scope: !2362, file: !100, line: 928, type: !25)
!2367 = !DILocalVariable(name: "arg", arg: 2, scope: !2362, file: !100, line: 928, type: !6)
!2368 = !DILocalVariable(name: "argsize", arg: 3, scope: !2362, file: !100, line: 928, type: !94)
!2369 = !DILocation(line: 928, column: 21, scope: !2362)
!2370 = !DILocation(line: 928, column: 36, scope: !2362)
!2371 = !DILocation(line: 928, column: 48, scope: !2362)
!2372 = !DILocation(line: 930, column: 10, scope: !2362)
!2373 = !DILocation(line: 930, column: 3, scope: !2362)
!2374 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2375, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!50, !6}
!2377 = !{!2378}
!2378 = !DILocalVariable(name: "arg", arg: 1, scope: !2374, file: !100, line: 934, type: !6)
!2379 = !DILocation(line: 934, column: 23, scope: !2374)
!2380 = !DILocation(line: 922, column: 17, scope: !2260, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 936, column: 10, scope: !2374)
!2382 = !DILocation(line: 922, column: 32, scope: !2260, inlinedAt: !2381)
!2383 = !DILocation(line: 924, column: 10, scope: !2260, inlinedAt: !2381)
!2384 = !DILocation(line: 936, column: 3, scope: !2374)
!2385 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2386, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!50, !6, !94}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !100, line: 940, type: !6)
!2390 = !DILocalVariable(name: "argsize", arg: 2, scope: !2385, file: !100, line: 940, type: !94)
!2391 = !DILocation(line: 940, column: 27, scope: !2385)
!2392 = !DILocation(line: 940, column: 39, scope: !2385)
!2393 = !DILocation(line: 928, column: 21, scope: !2362, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 942, column: 10, scope: !2385)
!2395 = !DILocation(line: 928, column: 36, scope: !2362, inlinedAt: !2394)
!2396 = !DILocation(line: 928, column: 48, scope: !2362, inlinedAt: !2394)
!2397 = !DILocation(line: 930, column: 10, scope: !2362, inlinedAt: !2394)
!2398 = !DILocation(line: 942, column: 3, scope: !2385)
!2399 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2400, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!50, !25, !58, !6}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !100, line: 946, type: !25)
!2404 = !DILocalVariable(name: "s", arg: 2, scope: !2399, file: !100, line: 946, type: !58)
!2405 = !DILocalVariable(name: "arg", arg: 3, scope: !2399, file: !100, line: 946, type: !6)
!2406 = !DILocalVariable(name: "o", scope: !2399, file: !100, line: 948, type: !1257)
!2407 = !DILocalVariable(name: "o", scope: !2408, file: !100, line: 187, type: !107)
!2408 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2409, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!107, !58}
!2411 = !{!2412, !2407}
!2412 = !DILocalVariable(name: "style", arg: 1, scope: !2408, file: !100, line: 185, type: !58)
!2413 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2414 = !DILocation(line: 187, column: 26, scope: !2408, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 948, column: 36, scope: !2399)
!2416 = !DILocation(line: 946, column: 23, scope: !2399)
!2417 = !DILocation(line: 946, column: 45, scope: !2399)
!2418 = !DILocation(line: 946, column: 60, scope: !2399)
!2419 = !DILocation(line: 948, column: 3, scope: !2399)
!2420 = !DILocation(line: 948, column: 32, scope: !2399)
!2421 = !DILocation(line: 185, column: 48, scope: !2408, inlinedAt: !2415)
!2422 = !DILocation(line: 187, column: 3, scope: !2408, inlinedAt: !2415)
!2423 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2424 = !DILocation(line: 188, column: 13, scope: !2425, inlinedAt: !2415)
!2425 = distinct !DILexicalBlock(scope: !2408, file: !100, line: 188, column: 7)
!2426 = !DILocation(line: 188, column: 7, scope: !2408, inlinedAt: !2415)
!2427 = !DILocation(line: 189, column: 5, scope: !2425, inlinedAt: !2415)
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"quoting_options_from_style: argument 0"}
!2430 = distinct !{!2430, !"quoting_options_from_style"}
!2431 = !DILocation(line: 191, column: 10, scope: !2408, inlinedAt: !2415)
!2432 = !DILocation(line: 192, column: 1, scope: !2408, inlinedAt: !2415)
!2433 = !DILocation(line: 949, column: 10, scope: !2399)
!2434 = !DILocation(line: 950, column: 1, scope: !2399)
!2435 = !DILocation(line: 949, column: 3, scope: !2399)
!2436 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2437, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!50, !25, !58, !6, !94}
!2439 = !{!2440, !2441, !2442, !2443, !2444}
!2440 = !DILocalVariable(name: "n", arg: 1, scope: !2436, file: !100, line: 953, type: !25)
!2441 = !DILocalVariable(name: "s", arg: 2, scope: !2436, file: !100, line: 953, type: !58)
!2442 = !DILocalVariable(name: "arg", arg: 3, scope: !2436, file: !100, line: 954, type: !6)
!2443 = !DILocalVariable(name: "argsize", arg: 4, scope: !2436, file: !100, line: 954, type: !94)
!2444 = !DILocalVariable(name: "o", scope: !2436, file: !100, line: 956, type: !1257)
!2445 = !DILocation(line: 187, column: 26, scope: !2408, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 956, column: 36, scope: !2436)
!2447 = !DILocation(line: 953, column: 27, scope: !2436)
!2448 = !DILocation(line: 953, column: 49, scope: !2436)
!2449 = !DILocation(line: 954, column: 35, scope: !2436)
!2450 = !DILocation(line: 954, column: 47, scope: !2436)
!2451 = !DILocation(line: 956, column: 3, scope: !2436)
!2452 = !DILocation(line: 956, column: 32, scope: !2436)
!2453 = !DILocation(line: 185, column: 48, scope: !2408, inlinedAt: !2446)
!2454 = !DILocation(line: 187, column: 3, scope: !2408, inlinedAt: !2446)
!2455 = !DILocation(line: 188, column: 13, scope: !2425, inlinedAt: !2446)
!2456 = !DILocation(line: 188, column: 7, scope: !2408, inlinedAt: !2446)
!2457 = !DILocation(line: 189, column: 5, scope: !2425, inlinedAt: !2446)
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"quoting_options_from_style: argument 0"}
!2460 = distinct !{!2460, !"quoting_options_from_style"}
!2461 = !DILocation(line: 191, column: 10, scope: !2408, inlinedAt: !2446)
!2462 = !DILocation(line: 192, column: 1, scope: !2408, inlinedAt: !2446)
!2463 = !DILocation(line: 957, column: 10, scope: !2436)
!2464 = !DILocation(line: 958, column: 1, scope: !2436)
!2465 = !DILocation(line: 957, column: 3, scope: !2436)
!2466 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2467, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!50, !58, !6}
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "s", arg: 1, scope: !2466, file: !100, line: 961, type: !58)
!2471 = !DILocalVariable(name: "arg", arg: 2, scope: !2466, file: !100, line: 961, type: !6)
!2472 = !DILocation(line: 187, column: 26, scope: !2408, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 948, column: 36, scope: !2399, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 963, column: 10, scope: !2466)
!2475 = !DILocation(line: 961, column: 36, scope: !2466)
!2476 = !DILocation(line: 961, column: 51, scope: !2466)
!2477 = !DILocation(line: 946, column: 23, scope: !2399, inlinedAt: !2474)
!2478 = !DILocation(line: 946, column: 45, scope: !2399, inlinedAt: !2474)
!2479 = !DILocation(line: 946, column: 60, scope: !2399, inlinedAt: !2474)
!2480 = !DILocation(line: 948, column: 3, scope: !2399, inlinedAt: !2474)
!2481 = !DILocation(line: 948, column: 32, scope: !2399, inlinedAt: !2474)
!2482 = !DILocation(line: 185, column: 48, scope: !2408, inlinedAt: !2473)
!2483 = !DILocation(line: 187, column: 3, scope: !2408, inlinedAt: !2473)
!2484 = !DILocation(line: 188, column: 13, scope: !2425, inlinedAt: !2473)
!2485 = !DILocation(line: 188, column: 7, scope: !2408, inlinedAt: !2473)
!2486 = !DILocation(line: 189, column: 5, scope: !2425, inlinedAt: !2473)
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"quoting_options_from_style: argument 0"}
!2489 = distinct !{!2489, !"quoting_options_from_style"}
!2490 = !DILocation(line: 191, column: 10, scope: !2408, inlinedAt: !2473)
!2491 = !DILocation(line: 192, column: 1, scope: !2408, inlinedAt: !2473)
!2492 = !DILocation(line: 949, column: 10, scope: !2399, inlinedAt: !2474)
!2493 = !DILocation(line: 950, column: 1, scope: !2399, inlinedAt: !2474)
!2494 = !DILocation(line: 963, column: 3, scope: !2466)
!2495 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2496, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!50, !58, !6, !94}
!2498 = !{!2499, !2500, !2501}
!2499 = !DILocalVariable(name: "s", arg: 1, scope: !2495, file: !100, line: 967, type: !58)
!2500 = !DILocalVariable(name: "arg", arg: 2, scope: !2495, file: !100, line: 967, type: !6)
!2501 = !DILocalVariable(name: "argsize", arg: 3, scope: !2495, file: !100, line: 967, type: !94)
!2502 = !DILocation(line: 187, column: 26, scope: !2408, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 956, column: 36, scope: !2436, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 969, column: 10, scope: !2495)
!2505 = !DILocation(line: 967, column: 40, scope: !2495)
!2506 = !DILocation(line: 967, column: 55, scope: !2495)
!2507 = !DILocation(line: 967, column: 67, scope: !2495)
!2508 = !DILocation(line: 953, column: 27, scope: !2436, inlinedAt: !2504)
!2509 = !DILocation(line: 953, column: 49, scope: !2436, inlinedAt: !2504)
!2510 = !DILocation(line: 954, column: 35, scope: !2436, inlinedAt: !2504)
!2511 = !DILocation(line: 954, column: 47, scope: !2436, inlinedAt: !2504)
!2512 = !DILocation(line: 956, column: 3, scope: !2436, inlinedAt: !2504)
!2513 = !DILocation(line: 956, column: 32, scope: !2436, inlinedAt: !2504)
!2514 = !DILocation(line: 185, column: 48, scope: !2408, inlinedAt: !2503)
!2515 = !DILocation(line: 187, column: 3, scope: !2408, inlinedAt: !2503)
!2516 = !DILocation(line: 188, column: 13, scope: !2425, inlinedAt: !2503)
!2517 = !DILocation(line: 188, column: 7, scope: !2408, inlinedAt: !2503)
!2518 = !DILocation(line: 189, column: 5, scope: !2425, inlinedAt: !2503)
!2519 = !{!2520}
!2520 = distinct !{!2520, !2521, !"quoting_options_from_style: argument 0"}
!2521 = distinct !{!2521, !"quoting_options_from_style"}
!2522 = !DILocation(line: 191, column: 10, scope: !2408, inlinedAt: !2503)
!2523 = !DILocation(line: 192, column: 1, scope: !2408, inlinedAt: !2503)
!2524 = !DILocation(line: 957, column: 10, scope: !2436, inlinedAt: !2504)
!2525 = !DILocation(line: 958, column: 1, scope: !2436, inlinedAt: !2504)
!2526 = !DILocation(line: 969, column: 3, scope: !2495)
!2527 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2528, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!50, !6, !94, !8}
!2530 = !{!2531, !2532, !2533, !2534}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2527, file: !100, line: 973, type: !6)
!2532 = !DILocalVariable(name: "argsize", arg: 2, scope: !2527, file: !100, line: 973, type: !94)
!2533 = !DILocalVariable(name: "ch", arg: 3, scope: !2527, file: !100, line: 973, type: !8)
!2534 = !DILocalVariable(name: "options", scope: !2527, file: !100, line: 975, type: !107)
!2535 = !DILocation(line: 973, column: 32, scope: !2527)
!2536 = !DILocation(line: 973, column: 44, scope: !2527)
!2537 = !DILocation(line: 973, column: 58, scope: !2527)
!2538 = !DILocation(line: 975, column: 3, scope: !2527)
!2539 = !DILocation(line: 976, column: 13, scope: !2527)
!2540 = !{i64 0, i64 4, !1083, i64 4, i64 4, !725, i64 8, i64 32, !1083, i64 40, i64 8, !645, i64 48, i64 8, !645}
!2541 = !DILocation(line: 975, column: 26, scope: !2527)
!2542 = !DILocation(line: 144, column: 43, scope: !1278, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 977, column: 3, scope: !2527)
!2544 = !DILocation(line: 144, column: 51, scope: !1278, inlinedAt: !2543)
!2545 = !DILocation(line: 144, column: 58, scope: !1278, inlinedAt: !2543)
!2546 = !DILocation(line: 146, column: 17, scope: !1278, inlinedAt: !2543)
!2547 = !DILocation(line: 148, column: 62, scope: !1278, inlinedAt: !2543)
!2548 = !DILocation(line: 148, column: 57, scope: !1278, inlinedAt: !2543)
!2549 = !DILocation(line: 147, column: 17, scope: !1278, inlinedAt: !2543)
!2550 = !DILocation(line: 149, column: 18, scope: !1278, inlinedAt: !2543)
!2551 = !DILocation(line: 149, column: 15, scope: !1278, inlinedAt: !2543)
!2552 = !DILocation(line: 149, column: 7, scope: !1278, inlinedAt: !2543)
!2553 = !DILocation(line: 150, column: 12, scope: !1278, inlinedAt: !2543)
!2554 = !DILocation(line: 150, column: 15, scope: !1278, inlinedAt: !2543)
!2555 = !DILocation(line: 150, column: 25, scope: !1278, inlinedAt: !2543)
!2556 = !DILocation(line: 150, column: 7, scope: !1278, inlinedAt: !2543)
!2557 = !DILocation(line: 151, column: 18, scope: !1278, inlinedAt: !2543)
!2558 = !DILocation(line: 151, column: 23, scope: !1278, inlinedAt: !2543)
!2559 = !DILocation(line: 151, column: 6, scope: !1278, inlinedAt: !2543)
!2560 = !DILocation(line: 978, column: 10, scope: !2527)
!2561 = !DILocation(line: 979, column: 1, scope: !2527)
!2562 = !DILocation(line: 978, column: 3, scope: !2527)
!2563 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2564, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!50, !6, !8}
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !100, line: 982, type: !6)
!2568 = !DILocalVariable(name: "ch", arg: 2, scope: !2563, file: !100, line: 982, type: !8)
!2569 = !DILocation(line: 982, column: 28, scope: !2563)
!2570 = !DILocation(line: 982, column: 38, scope: !2563)
!2571 = !DILocation(line: 973, column: 32, scope: !2527, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 984, column: 10, scope: !2563)
!2573 = !DILocation(line: 973, column: 44, scope: !2527, inlinedAt: !2572)
!2574 = !DILocation(line: 973, column: 58, scope: !2527, inlinedAt: !2572)
!2575 = !DILocation(line: 975, column: 3, scope: !2527, inlinedAt: !2572)
!2576 = !DILocation(line: 976, column: 13, scope: !2527, inlinedAt: !2572)
!2577 = !DILocation(line: 975, column: 26, scope: !2527, inlinedAt: !2572)
!2578 = !DILocation(line: 144, column: 43, scope: !1278, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 977, column: 3, scope: !2527, inlinedAt: !2572)
!2580 = !DILocation(line: 144, column: 51, scope: !1278, inlinedAt: !2579)
!2581 = !DILocation(line: 144, column: 58, scope: !1278, inlinedAt: !2579)
!2582 = !DILocation(line: 146, column: 17, scope: !1278, inlinedAt: !2579)
!2583 = !DILocation(line: 148, column: 62, scope: !1278, inlinedAt: !2579)
!2584 = !DILocation(line: 148, column: 57, scope: !1278, inlinedAt: !2579)
!2585 = !DILocation(line: 147, column: 17, scope: !1278, inlinedAt: !2579)
!2586 = !DILocation(line: 149, column: 18, scope: !1278, inlinedAt: !2579)
!2587 = !DILocation(line: 149, column: 15, scope: !1278, inlinedAt: !2579)
!2588 = !DILocation(line: 149, column: 7, scope: !1278, inlinedAt: !2579)
!2589 = !DILocation(line: 150, column: 12, scope: !1278, inlinedAt: !2579)
!2590 = !DILocation(line: 150, column: 15, scope: !1278, inlinedAt: !2579)
!2591 = !DILocation(line: 150, column: 25, scope: !1278, inlinedAt: !2579)
!2592 = !DILocation(line: 150, column: 7, scope: !1278, inlinedAt: !2579)
!2593 = !DILocation(line: 151, column: 18, scope: !1278, inlinedAt: !2579)
!2594 = !DILocation(line: 151, column: 23, scope: !1278, inlinedAt: !2579)
!2595 = !DILocation(line: 151, column: 6, scope: !1278, inlinedAt: !2579)
!2596 = !DILocation(line: 978, column: 10, scope: !2527, inlinedAt: !2572)
!2597 = !DILocation(line: 979, column: 1, scope: !2527, inlinedAt: !2572)
!2598 = !DILocation(line: 984, column: 3, scope: !2563)
!2599 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2375, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2600)
!2600 = !{!2601}
!2601 = !DILocalVariable(name: "arg", arg: 1, scope: !2599, file: !100, line: 988, type: !6)
!2602 = !DILocation(line: 988, column: 29, scope: !2599)
!2603 = !DILocation(line: 982, column: 28, scope: !2563, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 990, column: 10, scope: !2599)
!2605 = !DILocation(line: 982, column: 38, scope: !2563, inlinedAt: !2604)
!2606 = !DILocation(line: 973, column: 32, scope: !2527, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 984, column: 10, scope: !2563, inlinedAt: !2604)
!2608 = !DILocation(line: 973, column: 44, scope: !2527, inlinedAt: !2607)
!2609 = !DILocation(line: 973, column: 58, scope: !2527, inlinedAt: !2607)
!2610 = !DILocation(line: 975, column: 3, scope: !2527, inlinedAt: !2607)
!2611 = !DILocation(line: 976, column: 13, scope: !2527, inlinedAt: !2607)
!2612 = !DILocation(line: 975, column: 26, scope: !2527, inlinedAt: !2607)
!2613 = !DILocation(line: 144, column: 43, scope: !1278, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 977, column: 3, scope: !2527, inlinedAt: !2607)
!2615 = !DILocation(line: 144, column: 51, scope: !1278, inlinedAt: !2614)
!2616 = !DILocation(line: 144, column: 58, scope: !1278, inlinedAt: !2614)
!2617 = !DILocation(line: 146, column: 17, scope: !1278, inlinedAt: !2614)
!2618 = !DILocation(line: 148, column: 57, scope: !1278, inlinedAt: !2614)
!2619 = !DILocation(line: 147, column: 17, scope: !1278, inlinedAt: !2614)
!2620 = !DILocation(line: 149, column: 7, scope: !1278, inlinedAt: !2614)
!2621 = !DILocation(line: 150, column: 12, scope: !1278, inlinedAt: !2614)
!2622 = !DILocation(line: 151, column: 6, scope: !1278, inlinedAt: !2614)
!2623 = !DILocation(line: 978, column: 10, scope: !2527, inlinedAt: !2607)
!2624 = !DILocation(line: 979, column: 1, scope: !2527, inlinedAt: !2607)
!2625 = !DILocation(line: 990, column: 3, scope: !2599)
!2626 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2386, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2627)
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !100, line: 994, type: !6)
!2629 = !DILocalVariable(name: "argsize", arg: 2, scope: !2626, file: !100, line: 994, type: !94)
!2630 = !DILocation(line: 994, column: 33, scope: !2626)
!2631 = !DILocation(line: 994, column: 45, scope: !2626)
!2632 = !DILocation(line: 973, column: 32, scope: !2527, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 996, column: 10, scope: !2626)
!2634 = !DILocation(line: 973, column: 44, scope: !2527, inlinedAt: !2633)
!2635 = !DILocation(line: 973, column: 58, scope: !2527, inlinedAt: !2633)
!2636 = !DILocation(line: 975, column: 3, scope: !2527, inlinedAt: !2633)
!2637 = !DILocation(line: 976, column: 13, scope: !2527, inlinedAt: !2633)
!2638 = !DILocation(line: 975, column: 26, scope: !2527, inlinedAt: !2633)
!2639 = !DILocation(line: 144, column: 43, scope: !1278, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 977, column: 3, scope: !2527, inlinedAt: !2633)
!2641 = !DILocation(line: 144, column: 51, scope: !1278, inlinedAt: !2640)
!2642 = !DILocation(line: 144, column: 58, scope: !1278, inlinedAt: !2640)
!2643 = !DILocation(line: 146, column: 17, scope: !1278, inlinedAt: !2640)
!2644 = !DILocation(line: 148, column: 57, scope: !1278, inlinedAt: !2640)
!2645 = !DILocation(line: 147, column: 17, scope: !1278, inlinedAt: !2640)
!2646 = !DILocation(line: 149, column: 7, scope: !1278, inlinedAt: !2640)
!2647 = !DILocation(line: 150, column: 12, scope: !1278, inlinedAt: !2640)
!2648 = !DILocation(line: 151, column: 6, scope: !1278, inlinedAt: !2640)
!2649 = !DILocation(line: 978, column: 10, scope: !2527, inlinedAt: !2633)
!2650 = !DILocation(line: 979, column: 1, scope: !2527, inlinedAt: !2633)
!2651 = !DILocation(line: 996, column: 3, scope: !2626)
!2652 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2400, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2653)
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !100, line: 1000, type: !25)
!2655 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !100, line: 1000, type: !58)
!2656 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !100, line: 1000, type: !6)
!2657 = !DILocalVariable(name: "options", scope: !2652, file: !100, line: 1002, type: !107)
!2658 = !DILocation(line: 187, column: 26, scope: !2408, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1003, column: 13, scope: !2652)
!2660 = !DILocation(line: 1000, column: 29, scope: !2652)
!2661 = !DILocation(line: 1000, column: 51, scope: !2652)
!2662 = !DILocation(line: 1000, column: 66, scope: !2652)
!2663 = !DILocation(line: 1002, column: 3, scope: !2652)
!2664 = !DILocation(line: 185, column: 48, scope: !2408, inlinedAt: !2659)
!2665 = !DILocation(line: 187, column: 3, scope: !2408, inlinedAt: !2659)
!2666 = !DILocation(line: 188, column: 13, scope: !2425, inlinedAt: !2659)
!2667 = !DILocation(line: 188, column: 7, scope: !2408, inlinedAt: !2659)
!2668 = !DILocation(line: 189, column: 5, scope: !2425, inlinedAt: !2659)
!2669 = !{!2670}
!2670 = distinct !{!2670, !2671, !"quoting_options_from_style: argument 0"}
!2671 = distinct !{!2671, !"quoting_options_from_style"}
!2672 = !DILocation(line: 191, column: 10, scope: !2408, inlinedAt: !2659)
!2673 = !DILocation(line: 192, column: 1, scope: !2408, inlinedAt: !2659)
!2674 = !DILocation(line: 1003, column: 13, scope: !2652)
!2675 = !DILocation(line: 1002, column: 26, scope: !2652)
!2676 = !DILocation(line: 144, column: 43, scope: !1278, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1004, column: 3, scope: !2652)
!2678 = !DILocation(line: 144, column: 51, scope: !1278, inlinedAt: !2677)
!2679 = !DILocation(line: 144, column: 58, scope: !1278, inlinedAt: !2677)
!2680 = !DILocation(line: 146, column: 17, scope: !1278, inlinedAt: !2677)
!2681 = !DILocation(line: 148, column: 57, scope: !1278, inlinedAt: !2677)
!2682 = !DILocation(line: 147, column: 17, scope: !1278, inlinedAt: !2677)
!2683 = !DILocation(line: 149, column: 7, scope: !1278, inlinedAt: !2677)
!2684 = !DILocation(line: 150, column: 12, scope: !1278, inlinedAt: !2677)
!2685 = !DILocation(line: 151, column: 6, scope: !1278, inlinedAt: !2677)
!2686 = !DILocation(line: 1005, column: 10, scope: !2652)
!2687 = !DILocation(line: 1006, column: 1, scope: !2652)
!2688 = !DILocation(line: 1005, column: 3, scope: !2652)
!2689 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2690, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!50, !25, !6, !6, !6}
!2692 = !{!2693, !2694, !2695, !2696}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !100, line: 1009, type: !25)
!2694 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2689, file: !100, line: 1009, type: !6)
!2695 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2689, file: !100, line: 1010, type: !6)
!2696 = !DILocalVariable(name: "arg", arg: 4, scope: !2689, file: !100, line: 1010, type: !6)
!2697 = !DILocation(line: 1009, column: 24, scope: !2689)
!2698 = !DILocation(line: 1009, column: 39, scope: !2689)
!2699 = !DILocation(line: 1010, column: 32, scope: !2689)
!2700 = !DILocation(line: 1010, column: 57, scope: !2689)
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !100, line: 1017, type: !25)
!2702 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2703, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!50, !25, !6, !6, !6, !94}
!2705 = !{!2701, !2706, !2707, !2708, !2709, !2710}
!2706 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2702, file: !100, line: 1017, type: !6)
!2707 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2702, file: !100, line: 1018, type: !6)
!2708 = !DILocalVariable(name: "arg", arg: 4, scope: !2702, file: !100, line: 1019, type: !6)
!2709 = !DILocalVariable(name: "argsize", arg: 5, scope: !2702, file: !100, line: 1019, type: !94)
!2710 = !DILocalVariable(name: "o", scope: !2702, file: !100, line: 1021, type: !107)
!2711 = !DILocation(line: 1017, column: 28, scope: !2702, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1012, column: 10, scope: !2689)
!2713 = !DILocation(line: 1017, column: 43, scope: !2702, inlinedAt: !2712)
!2714 = !DILocation(line: 1018, column: 36, scope: !2702, inlinedAt: !2712)
!2715 = !DILocation(line: 1019, column: 36, scope: !2702, inlinedAt: !2712)
!2716 = !DILocation(line: 1019, column: 48, scope: !2702, inlinedAt: !2712)
!2717 = !DILocation(line: 1021, column: 3, scope: !2702, inlinedAt: !2712)
!2718 = !DILocation(line: 1021, column: 30, scope: !2702, inlinedAt: !2712)
!2719 = !DILocation(line: 1021, column: 26, scope: !2702, inlinedAt: !2712)
!2720 = !DILocation(line: 171, column: 45, scope: !1327, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1022, column: 3, scope: !2702, inlinedAt: !2712)
!2722 = !DILocation(line: 172, column: 33, scope: !1327, inlinedAt: !2721)
!2723 = !DILocation(line: 172, column: 57, scope: !1327, inlinedAt: !2721)
!2724 = !DILocation(line: 176, column: 6, scope: !1327, inlinedAt: !2721)
!2725 = !DILocation(line: 176, column: 12, scope: !1327, inlinedAt: !2721)
!2726 = !DILocation(line: 177, column: 8, scope: !1343, inlinedAt: !2721)
!2727 = !DILocation(line: 177, column: 23, scope: !1343, inlinedAt: !2721)
!2728 = !DILocation(line: 177, column: 19, scope: !1343, inlinedAt: !2721)
!2729 = !DILocation(line: 178, column: 5, scope: !1343, inlinedAt: !2721)
!2730 = !DILocation(line: 179, column: 6, scope: !1327, inlinedAt: !2721)
!2731 = !DILocation(line: 179, column: 17, scope: !1327, inlinedAt: !2721)
!2732 = !DILocation(line: 180, column: 6, scope: !1327, inlinedAt: !2721)
!2733 = !DILocation(line: 180, column: 18, scope: !1327, inlinedAt: !2721)
!2734 = !DILocation(line: 1023, column: 10, scope: !2702, inlinedAt: !2712)
!2735 = !DILocation(line: 1024, column: 1, scope: !2702, inlinedAt: !2712)
!2736 = !DILocation(line: 1012, column: 3, scope: !2689)
!2737 = !DILocation(line: 1017, column: 28, scope: !2702)
!2738 = !DILocation(line: 1017, column: 43, scope: !2702)
!2739 = !DILocation(line: 1018, column: 36, scope: !2702)
!2740 = !DILocation(line: 1019, column: 36, scope: !2702)
!2741 = !DILocation(line: 1019, column: 48, scope: !2702)
!2742 = !DILocation(line: 1021, column: 3, scope: !2702)
!2743 = !DILocation(line: 1021, column: 30, scope: !2702)
!2744 = !DILocation(line: 1021, column: 26, scope: !2702)
!2745 = !DILocation(line: 171, column: 45, scope: !1327, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1022, column: 3, scope: !2702)
!2747 = !DILocation(line: 172, column: 33, scope: !1327, inlinedAt: !2746)
!2748 = !DILocation(line: 172, column: 57, scope: !1327, inlinedAt: !2746)
!2749 = !DILocation(line: 176, column: 6, scope: !1327, inlinedAt: !2746)
!2750 = !DILocation(line: 176, column: 12, scope: !1327, inlinedAt: !2746)
!2751 = !DILocation(line: 177, column: 8, scope: !1343, inlinedAt: !2746)
!2752 = !DILocation(line: 177, column: 23, scope: !1343, inlinedAt: !2746)
!2753 = !DILocation(line: 177, column: 19, scope: !1343, inlinedAt: !2746)
!2754 = !DILocation(line: 178, column: 5, scope: !1343, inlinedAt: !2746)
!2755 = !DILocation(line: 179, column: 6, scope: !1327, inlinedAt: !2746)
!2756 = !DILocation(line: 179, column: 17, scope: !1327, inlinedAt: !2746)
!2757 = !DILocation(line: 180, column: 6, scope: !1327, inlinedAt: !2746)
!2758 = !DILocation(line: 180, column: 18, scope: !1327, inlinedAt: !2746)
!2759 = !DILocation(line: 1023, column: 10, scope: !2702)
!2760 = !DILocation(line: 1024, column: 1, scope: !2702)
!2761 = !DILocation(line: 1023, column: 3, scope: !2702)
!2762 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2763, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!50, !6, !6, !6}
!2765 = !{!2766, !2767, !2768}
!2766 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2762, file: !100, line: 1027, type: !6)
!2767 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2762, file: !100, line: 1027, type: !6)
!2768 = !DILocalVariable(name: "arg", arg: 3, scope: !2762, file: !100, line: 1028, type: !6)
!2769 = !DILocation(line: 1027, column: 30, scope: !2762)
!2770 = !DILocation(line: 1027, column: 54, scope: !2762)
!2771 = !DILocation(line: 1028, column: 30, scope: !2762)
!2772 = !DILocation(line: 1009, column: 24, scope: !2689, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1030, column: 10, scope: !2762)
!2774 = !DILocation(line: 1009, column: 39, scope: !2689, inlinedAt: !2773)
!2775 = !DILocation(line: 1010, column: 32, scope: !2689, inlinedAt: !2773)
!2776 = !DILocation(line: 1010, column: 57, scope: !2689, inlinedAt: !2773)
!2777 = !DILocation(line: 1017, column: 28, scope: !2702, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1012, column: 10, scope: !2689, inlinedAt: !2773)
!2779 = !DILocation(line: 1017, column: 43, scope: !2702, inlinedAt: !2778)
!2780 = !DILocation(line: 1018, column: 36, scope: !2702, inlinedAt: !2778)
!2781 = !DILocation(line: 1019, column: 36, scope: !2702, inlinedAt: !2778)
!2782 = !DILocation(line: 1019, column: 48, scope: !2702, inlinedAt: !2778)
!2783 = !DILocation(line: 1021, column: 3, scope: !2702, inlinedAt: !2778)
!2784 = !DILocation(line: 1021, column: 30, scope: !2702, inlinedAt: !2778)
!2785 = !DILocation(line: 1021, column: 26, scope: !2702, inlinedAt: !2778)
!2786 = !DILocation(line: 171, column: 45, scope: !1327, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1022, column: 3, scope: !2702, inlinedAt: !2778)
!2788 = !DILocation(line: 172, column: 33, scope: !1327, inlinedAt: !2787)
!2789 = !DILocation(line: 172, column: 57, scope: !1327, inlinedAt: !2787)
!2790 = !DILocation(line: 176, column: 6, scope: !1327, inlinedAt: !2787)
!2791 = !DILocation(line: 176, column: 12, scope: !1327, inlinedAt: !2787)
!2792 = !DILocation(line: 177, column: 8, scope: !1343, inlinedAt: !2787)
!2793 = !DILocation(line: 177, column: 23, scope: !1343, inlinedAt: !2787)
!2794 = !DILocation(line: 177, column: 19, scope: !1343, inlinedAt: !2787)
!2795 = !DILocation(line: 178, column: 5, scope: !1343, inlinedAt: !2787)
!2796 = !DILocation(line: 179, column: 6, scope: !1327, inlinedAt: !2787)
!2797 = !DILocation(line: 179, column: 17, scope: !1327, inlinedAt: !2787)
!2798 = !DILocation(line: 180, column: 6, scope: !1327, inlinedAt: !2787)
!2799 = !DILocation(line: 180, column: 18, scope: !1327, inlinedAt: !2787)
!2800 = !DILocation(line: 1023, column: 10, scope: !2702, inlinedAt: !2778)
!2801 = !DILocation(line: 1024, column: 1, scope: !2702, inlinedAt: !2778)
!2802 = !DILocation(line: 1030, column: 3, scope: !2762)
!2803 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2804, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!50, !6, !6, !6, !94}
!2806 = !{!2807, !2808, !2809, !2810}
!2807 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2803, file: !100, line: 1034, type: !6)
!2808 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2803, file: !100, line: 1034, type: !6)
!2809 = !DILocalVariable(name: "arg", arg: 3, scope: !2803, file: !100, line: 1035, type: !6)
!2810 = !DILocalVariable(name: "argsize", arg: 4, scope: !2803, file: !100, line: 1035, type: !94)
!2811 = !DILocation(line: 1034, column: 34, scope: !2803)
!2812 = !DILocation(line: 1034, column: 58, scope: !2803)
!2813 = !DILocation(line: 1035, column: 34, scope: !2803)
!2814 = !DILocation(line: 1035, column: 46, scope: !2803)
!2815 = !DILocation(line: 1017, column: 28, scope: !2702, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1037, column: 10, scope: !2803)
!2817 = !DILocation(line: 1017, column: 43, scope: !2702, inlinedAt: !2816)
!2818 = !DILocation(line: 1018, column: 36, scope: !2702, inlinedAt: !2816)
!2819 = !DILocation(line: 1019, column: 36, scope: !2702, inlinedAt: !2816)
!2820 = !DILocation(line: 1019, column: 48, scope: !2702, inlinedAt: !2816)
!2821 = !DILocation(line: 1021, column: 3, scope: !2702, inlinedAt: !2816)
!2822 = !DILocation(line: 1021, column: 30, scope: !2702, inlinedAt: !2816)
!2823 = !DILocation(line: 1021, column: 26, scope: !2702, inlinedAt: !2816)
!2824 = !DILocation(line: 171, column: 45, scope: !1327, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1022, column: 3, scope: !2702, inlinedAt: !2816)
!2826 = !DILocation(line: 172, column: 33, scope: !1327, inlinedAt: !2825)
!2827 = !DILocation(line: 172, column: 57, scope: !1327, inlinedAt: !2825)
!2828 = !DILocation(line: 176, column: 6, scope: !1327, inlinedAt: !2825)
!2829 = !DILocation(line: 176, column: 12, scope: !1327, inlinedAt: !2825)
!2830 = !DILocation(line: 177, column: 8, scope: !1343, inlinedAt: !2825)
!2831 = !DILocation(line: 177, column: 23, scope: !1343, inlinedAt: !2825)
!2832 = !DILocation(line: 177, column: 19, scope: !1343, inlinedAt: !2825)
!2833 = !DILocation(line: 178, column: 5, scope: !1343, inlinedAt: !2825)
!2834 = !DILocation(line: 179, column: 6, scope: !1327, inlinedAt: !2825)
!2835 = !DILocation(line: 179, column: 17, scope: !1327, inlinedAt: !2825)
!2836 = !DILocation(line: 180, column: 6, scope: !1327, inlinedAt: !2825)
!2837 = !DILocation(line: 180, column: 18, scope: !1327, inlinedAt: !2825)
!2838 = !DILocation(line: 1023, column: 10, scope: !2702, inlinedAt: !2816)
!2839 = !DILocation(line: 1024, column: 1, scope: !2702, inlinedAt: !2816)
!2840 = !DILocation(line: 1037, column: 3, scope: !2803)
!2841 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2842, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!6, !25, !6, !94}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !100, line: 1052, type: !25)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !100, line: 1052, type: !6)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2841, file: !100, line: 1052, type: !94)
!2848 = !DILocation(line: 1052, column: 18, scope: !2841)
!2849 = !DILocation(line: 1052, column: 33, scope: !2841)
!2850 = !DILocation(line: 1052, column: 45, scope: !2841)
!2851 = !DILocation(line: 1054, column: 10, scope: !2841)
!2852 = !DILocation(line: 1054, column: 3, scope: !2841)
!2853 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2854, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!6, !6, !94}
!2856 = !{!2857, !2858}
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2853, file: !100, line: 1058, type: !6)
!2858 = !DILocalVariable(name: "argsize", arg: 2, scope: !2853, file: !100, line: 1058, type: !94)
!2859 = !DILocation(line: 1058, column: 24, scope: !2853)
!2860 = !DILocation(line: 1058, column: 36, scope: !2853)
!2861 = !DILocation(line: 1052, column: 18, scope: !2841, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 1060, column: 10, scope: !2853)
!2863 = !DILocation(line: 1052, column: 33, scope: !2841, inlinedAt: !2862)
!2864 = !DILocation(line: 1052, column: 45, scope: !2841, inlinedAt: !2862)
!2865 = !DILocation(line: 1054, column: 10, scope: !2841, inlinedAt: !2862)
!2866 = !DILocation(line: 1060, column: 3, scope: !2853)
!2867 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2868, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!6, !25, !6}
!2870 = !{!2871, !2872}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !100, line: 1064, type: !25)
!2872 = !DILocalVariable(name: "arg", arg: 2, scope: !2867, file: !100, line: 1064, type: !6)
!2873 = !DILocation(line: 1064, column: 14, scope: !2867)
!2874 = !DILocation(line: 1064, column: 29, scope: !2867)
!2875 = !DILocation(line: 1052, column: 18, scope: !2841, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1066, column: 10, scope: !2867)
!2877 = !DILocation(line: 1052, column: 33, scope: !2841, inlinedAt: !2876)
!2878 = !DILocation(line: 1052, column: 45, scope: !2841, inlinedAt: !2876)
!2879 = !DILocation(line: 1054, column: 10, scope: !2841, inlinedAt: !2876)
!2880 = !DILocation(line: 1066, column: 3, scope: !2867)
!2881 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !1087, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2882)
!2882 = !{!2883}
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2881, file: !100, line: 1070, type: !6)
!2884 = !DILocation(line: 1070, column: 20, scope: !2881)
!2885 = !DILocation(line: 1064, column: 14, scope: !2867, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1072, column: 10, scope: !2881)
!2887 = !DILocation(line: 1064, column: 29, scope: !2867, inlinedAt: !2886)
!2888 = !DILocation(line: 1052, column: 18, scope: !2841, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1066, column: 10, scope: !2867, inlinedAt: !2886)
!2890 = !DILocation(line: 1052, column: 33, scope: !2841, inlinedAt: !2889)
!2891 = !DILocation(line: 1052, column: 45, scope: !2841, inlinedAt: !2889)
!2892 = !DILocation(line: 1054, column: 10, scope: !2841, inlinedAt: !2889)
!2893 = !DILocation(line: 1072, column: 3, scope: !2881)
!2894 = distinct !DISubprogram(name: "dup_safer", scope: !2895, file: !2895, line: 31, type: !948, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !2896)
!2895 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "fd", arg: 1, scope: !2894, file: !2895, line: 31, type: !25)
!2898 = !DILocation(line: 31, column: 16, scope: !2894)
!2899 = !DILocation(line: 33, column: 10, scope: !2894)
!2900 = !DILocation(line: 33, column: 3, scope: !2894)
!2901 = distinct !DISubprogram(name: "version_etc_arn", scope: !589, file: !589, line: 62, type: !2902, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !2945)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !2904, !6, !6, !6, !2944, !94}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2906, file: !844, line: 242, baseType: !25, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2906, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2906, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2906, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2906, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2906, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2906, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2906, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2906, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2906, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2906, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2906, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2906, file: !844, line: 260, baseType: !2921, size: 64, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !2923)
!2923 = !{!2924, !2925, !2927}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2922, file: !844, line: 157, baseType: !2921, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2922, file: !844, line: 158, baseType: !2926, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2922, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2906, file: !844, line: 262, baseType: !2926, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2906, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2906, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2906, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2906, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2906, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2906, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2906, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2906, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2906, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2906, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2906, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2906, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2906, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2906, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2906, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951}
!2946 = !DILocalVariable(name: "stream", arg: 1, scope: !2901, file: !589, line: 62, type: !2904)
!2947 = !DILocalVariable(name: "command_name", arg: 2, scope: !2901, file: !589, line: 63, type: !6)
!2948 = !DILocalVariable(name: "package", arg: 3, scope: !2901, file: !589, line: 63, type: !6)
!2949 = !DILocalVariable(name: "version", arg: 4, scope: !2901, file: !589, line: 64, type: !6)
!2950 = !DILocalVariable(name: "authors", arg: 5, scope: !2901, file: !589, line: 65, type: !2944)
!2951 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2901, file: !589, line: 65, type: !94)
!2952 = !DILocation(line: 62, column: 24, scope: !2901)
!2953 = !DILocation(line: 63, column: 30, scope: !2901)
!2954 = !DILocation(line: 63, column: 56, scope: !2901)
!2955 = !DILocation(line: 64, column: 30, scope: !2901)
!2956 = !DILocation(line: 65, column: 39, scope: !2901)
!2957 = !DILocation(line: 65, column: 55, scope: !2901)
!2958 = !DILocation(line: 67, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2901, file: !589, line: 67, column: 7)
!2960 = !DILocation(line: 67, column: 7, scope: !2901)
!2961 = !DILocation(line: 68, column: 5, scope: !2959)
!2962 = !DILocation(line: 70, column: 5, scope: !2959)
!2963 = !DILocation(line: 84, column: 3, scope: !2901)
!2964 = !DILocation(line: 86, column: 3, scope: !2901)
!2965 = !DILocation(line: 95, column: 3, scope: !2901)
!2966 = !DILocation(line: 99, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2901, file: !589, line: 96, column: 5)
!2968 = !DILocation(line: 102, column: 7, scope: !2967)
!2969 = !DILocation(line: 103, column: 7, scope: !2967)
!2970 = !DILocation(line: 106, column: 7, scope: !2967)
!2971 = !DILocation(line: 107, column: 7, scope: !2967)
!2972 = !DILocation(line: 110, column: 7, scope: !2967)
!2973 = !DILocation(line: 112, column: 7, scope: !2967)
!2974 = !DILocation(line: 117, column: 7, scope: !2967)
!2975 = !DILocation(line: 119, column: 7, scope: !2967)
!2976 = !DILocation(line: 124, column: 7, scope: !2967)
!2977 = !DILocation(line: 126, column: 7, scope: !2967)
!2978 = !DILocation(line: 131, column: 7, scope: !2967)
!2979 = !DILocation(line: 134, column: 7, scope: !2967)
!2980 = !DILocation(line: 139, column: 7, scope: !2967)
!2981 = !DILocation(line: 142, column: 7, scope: !2967)
!2982 = !DILocation(line: 147, column: 7, scope: !2967)
!2983 = !DILocation(line: 151, column: 7, scope: !2967)
!2984 = !DILocation(line: 156, column: 7, scope: !2967)
!2985 = !DILocation(line: 160, column: 7, scope: !2967)
!2986 = !DILocation(line: 167, column: 7, scope: !2967)
!2987 = !DILocation(line: 171, column: 7, scope: !2967)
!2988 = !DILocation(line: 173, column: 1, scope: !2901)
!2989 = distinct !DISubprogram(name: "version_etc_ar", scope: !589, file: !589, line: 180, type: !2990, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2904, !6, !6, !6, !2944}
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DILocalVariable(name: "stream", arg: 1, scope: !2989, file: !589, line: 180, type: !2904)
!2994 = !DILocalVariable(name: "command_name", arg: 2, scope: !2989, file: !589, line: 181, type: !6)
!2995 = !DILocalVariable(name: "package", arg: 3, scope: !2989, file: !589, line: 181, type: !6)
!2996 = !DILocalVariable(name: "version", arg: 4, scope: !2989, file: !589, line: 182, type: !6)
!2997 = !DILocalVariable(name: "authors", arg: 5, scope: !2989, file: !589, line: 182, type: !2944)
!2998 = !DILocalVariable(name: "n_authors", scope: !2989, file: !589, line: 184, type: !94)
!2999 = !DILocation(line: 180, column: 23, scope: !2989)
!3000 = !DILocation(line: 181, column: 29, scope: !2989)
!3001 = !DILocation(line: 181, column: 55, scope: !2989)
!3002 = !DILocation(line: 182, column: 29, scope: !2989)
!3003 = !DILocation(line: 182, column: 59, scope: !2989)
!3004 = !DILocation(line: 184, column: 10, scope: !2989)
!3005 = !DILocation(line: 186, column: 8, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2989, file: !589, line: 186, column: 3)
!3007 = !DILocation(line: 186, column: 23, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3006, file: !589, line: 186, column: 3)
!3009 = !DILocation(line: 186, column: 3, scope: !3006)
!3010 = !DILocation(line: 186, column: 52, scope: !3008)
!3011 = distinct !{!3011, !3009, !3012}
!3012 = !DILocation(line: 187, column: 5, scope: !3006)
!3013 = !DILocation(line: 188, column: 3, scope: !2989)
!3014 = !DILocation(line: 189, column: 1, scope: !2989)
!3015 = distinct !DISubprogram(name: "version_etc_va", scope: !589, file: !589, line: 196, type: !3016, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3025)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2904, !6, !6, !6, !3018}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !586, line: 189, size: 192, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3019, file: !586, line: 189, baseType: !113, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3019, file: !586, line: 189, baseType: !113, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3019, file: !586, line: 189, baseType: !49, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3019, file: !586, line: 189, baseType: !49, size: 64, offset: 128)
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032}
!3026 = !DILocalVariable(name: "stream", arg: 1, scope: !3015, file: !589, line: 196, type: !2904)
!3027 = !DILocalVariable(name: "command_name", arg: 2, scope: !3015, file: !589, line: 197, type: !6)
!3028 = !DILocalVariable(name: "package", arg: 3, scope: !3015, file: !589, line: 197, type: !6)
!3029 = !DILocalVariable(name: "version", arg: 4, scope: !3015, file: !589, line: 198, type: !6)
!3030 = !DILocalVariable(name: "authors", arg: 5, scope: !3015, file: !589, line: 198, type: !3018)
!3031 = !DILocalVariable(name: "n_authors", scope: !3015, file: !589, line: 200, type: !94)
!3032 = !DILocalVariable(name: "authtab", scope: !3015, file: !589, line: 201, type: !3033)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!3034 = !DILocation(line: 196, column: 23, scope: !3015)
!3035 = !DILocation(line: 197, column: 29, scope: !3015)
!3036 = !DILocation(line: 197, column: 55, scope: !3015)
!3037 = !DILocation(line: 198, column: 29, scope: !3015)
!3038 = !DILocation(line: 198, column: 46, scope: !3015)
!3039 = !DILocation(line: 201, column: 3, scope: !3015)
!3040 = !DILocation(line: 201, column: 15, scope: !3015)
!3041 = !DILocation(line: 200, column: 10, scope: !3015)
!3042 = !DILocation(line: 205, column: 35, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !589, line: 203, column: 3)
!3044 = distinct !DILexicalBlock(scope: !3015, file: !589, line: 203, column: 3)
!3045 = !DILocation(line: 205, column: 14, scope: !3043)
!3046 = !DILocation(line: 205, column: 33, scope: !3043)
!3047 = !DILocation(line: 205, column: 67, scope: !3043)
!3048 = !DILocation(line: 203, column: 3, scope: !3044)
!3049 = !DILocation(line: 208, column: 3, scope: !3015)
!3050 = !DILocation(line: 210, column: 1, scope: !3015)
!3051 = distinct !DISubprogram(name: "version_etc", scope: !589, file: !589, line: 227, type: !3052, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2904, !6, !6, !6, null}
!3054 = !{!3055, !3056, !3057, !3058, !3059}
!3055 = !DILocalVariable(name: "stream", arg: 1, scope: !3051, file: !589, line: 227, type: !2904)
!3056 = !DILocalVariable(name: "command_name", arg: 2, scope: !3051, file: !589, line: 228, type: !6)
!3057 = !DILocalVariable(name: "package", arg: 3, scope: !3051, file: !589, line: 228, type: !6)
!3058 = !DILocalVariable(name: "version", arg: 4, scope: !3051, file: !589, line: 229, type: !6)
!3059 = !DILocalVariable(name: "authors", scope: !3051, file: !589, line: 231, type: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1163, line: 46, baseType: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !163, line: 48, baseType: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, line: 231, baseType: !3063)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3019, size: 192, elements: !172)
!3064 = !DILocation(line: 227, column: 20, scope: !3051)
!3065 = !DILocation(line: 228, column: 26, scope: !3051)
!3066 = !DILocation(line: 228, column: 52, scope: !3051)
!3067 = !DILocation(line: 229, column: 26, scope: !3051)
!3068 = !DILocation(line: 231, column: 3, scope: !3051)
!3069 = !DILocation(line: 231, column: 11, scope: !3051)
!3070 = !DILocation(line: 233, column: 3, scope: !3051)
!3071 = !DILocation(line: 234, column: 3, scope: !3051)
!3072 = !DILocation(line: 235, column: 3, scope: !3051)
!3073 = !DILocation(line: 236, column: 1, scope: !3051)
!3074 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !589, file: !589, line: 239, type: !972, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !4)
!3075 = !DILocation(line: 245, column: 3, scope: !3074)
!3076 = !DILocation(line: 251, column: 3, scope: !3074)
!3077 = !DILocation(line: 256, column: 3, scope: !3074)
!3078 = !DILocation(line: 258, column: 1, scope: !3074)
!3079 = distinct !DISubprogram(name: "xnmalloc", scope: !596, file: !596, line: 105, type: !3080, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!49, !94, !94}
!3082 = !{!3083, !3084}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3079, file: !596, line: 105, type: !94)
!3084 = !DILocalVariable(name: "s", arg: 2, scope: !3079, file: !596, line: 105, type: !94)
!3085 = !DILocation(line: 105, column: 18, scope: !3079)
!3086 = !DILocation(line: 105, column: 28, scope: !3079)
!3087 = !DILocation(line: 107, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3079, file: !596, line: 107, column: 7)
!3089 = !DILocation(line: 107, column: 7, scope: !3079)
!3090 = !DILocation(line: 108, column: 5, scope: !3088)
!3091 = !DILocation(line: 109, column: 21, scope: !3079)
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !3094, line: 39, type: !94)
!3093 = distinct !DISubprogram(name: "xmalloc", scope: !3094, file: !3094, line: 39, type: !3095, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3097)
!3094 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!49, !94}
!3097 = !{!3092, !3098}
!3098 = !DILocalVariable(name: "p", scope: !3093, file: !3094, line: 41, type: !49)
!3099 = !DILocation(line: 39, column: 17, scope: !3093, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 109, column: 10, scope: !3079)
!3101 = !DILocation(line: 41, column: 13, scope: !3093, inlinedAt: !3100)
!3102 = !DILocation(line: 41, column: 9, scope: !3093, inlinedAt: !3100)
!3103 = !DILocation(line: 42, column: 8, scope: !3104, inlinedAt: !3100)
!3104 = distinct !DILexicalBlock(scope: !3093, file: !3094, line: 42, column: 7)
!3105 = !DILocation(line: 42, column: 15, scope: !3104, inlinedAt: !3100)
!3106 = !DILocation(line: 42, column: 10, scope: !3104, inlinedAt: !3100)
!3107 = !DILocation(line: 43, column: 5, scope: !3104, inlinedAt: !3100)
!3108 = !DILocation(line: 109, column: 3, scope: !3079)
!3109 = !DILocation(line: 39, column: 17, scope: !3093)
!3110 = !DILocation(line: 41, column: 13, scope: !3093)
!3111 = !DILocation(line: 41, column: 9, scope: !3093)
!3112 = !DILocation(line: 42, column: 8, scope: !3104)
!3113 = !DILocation(line: 42, column: 15, scope: !3104)
!3114 = !DILocation(line: 42, column: 10, scope: !3104)
!3115 = !DILocation(line: 43, column: 5, scope: !3104)
!3116 = !DILocation(line: 44, column: 3, scope: !3093)
!3117 = distinct !DISubprogram(name: "xnrealloc", scope: !596, file: !596, line: 118, type: !3118, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!49, !49, !94, !94}
!3120 = !{!3121, !3122, !3123}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3117, file: !596, line: 118, type: !49)
!3122 = !DILocalVariable(name: "n", arg: 2, scope: !3117, file: !596, line: 118, type: !94)
!3123 = !DILocalVariable(name: "s", arg: 3, scope: !3117, file: !596, line: 118, type: !94)
!3124 = !DILocation(line: 118, column: 18, scope: !3117)
!3125 = !DILocation(line: 118, column: 28, scope: !3117)
!3126 = !DILocation(line: 118, column: 38, scope: !3117)
!3127 = !DILocation(line: 120, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3117, file: !596, line: 120, column: 7)
!3129 = !DILocation(line: 120, column: 7, scope: !3117)
!3130 = !DILocation(line: 121, column: 5, scope: !3128)
!3131 = !DILocation(line: 122, column: 25, scope: !3117)
!3132 = !DILocalVariable(name: "p", arg: 1, scope: !3133, file: !3094, line: 51, type: !49)
!3133 = distinct !DISubprogram(name: "xrealloc", scope: !3094, file: !3094, line: 51, type: !3134, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!49, !49, !94}
!3136 = !{!3132, !3137}
!3137 = !DILocalVariable(name: "n", arg: 2, scope: !3133, file: !3094, line: 51, type: !94)
!3138 = !DILocation(line: 51, column: 17, scope: !3133, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 122, column: 10, scope: !3117)
!3140 = !DILocation(line: 51, column: 27, scope: !3133, inlinedAt: !3139)
!3141 = !DILocation(line: 53, column: 8, scope: !3142, inlinedAt: !3139)
!3142 = distinct !DILexicalBlock(scope: !3133, file: !3094, line: 53, column: 7)
!3143 = !DILocation(line: 53, column: 13, scope: !3142, inlinedAt: !3139)
!3144 = !DILocation(line: 53, column: 10, scope: !3142, inlinedAt: !3139)
!3145 = !DILocation(line: 57, column: 7, scope: !3146, inlinedAt: !3139)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !3094, line: 54, column: 5)
!3147 = !DILocation(line: 58, column: 7, scope: !3146, inlinedAt: !3139)
!3148 = !DILocation(line: 61, column: 7, scope: !3133, inlinedAt: !3139)
!3149 = !DILocation(line: 62, column: 8, scope: !3150, inlinedAt: !3139)
!3150 = distinct !DILexicalBlock(scope: !3133, file: !3094, line: 62, column: 7)
!3151 = !DILocation(line: 62, column: 13, scope: !3150, inlinedAt: !3139)
!3152 = !DILocation(line: 62, column: 10, scope: !3150, inlinedAt: !3139)
!3153 = !DILocation(line: 63, column: 5, scope: !3150, inlinedAt: !3139)
!3154 = !DILocation(line: 122, column: 3, scope: !3117)
!3155 = !DILocation(line: 51, column: 17, scope: !3133)
!3156 = !DILocation(line: 51, column: 27, scope: !3133)
!3157 = !DILocation(line: 53, column: 8, scope: !3142)
!3158 = !DILocation(line: 53, column: 13, scope: !3142)
!3159 = !DILocation(line: 53, column: 10, scope: !3142)
!3160 = !DILocation(line: 57, column: 7, scope: !3146)
!3161 = !DILocation(line: 58, column: 7, scope: !3146)
!3162 = !DILocation(line: 61, column: 7, scope: !3133)
!3163 = !DILocation(line: 62, column: 8, scope: !3150)
!3164 = !DILocation(line: 62, column: 13, scope: !3150)
!3165 = !DILocation(line: 62, column: 10, scope: !3150)
!3166 = !DILocation(line: 63, column: 5, scope: !3150)
!3167 = !DILocation(line: 65, column: 1, scope: !3133)
!3168 = !DILocation(line: 180, column: 19, scope: !597)
!3169 = !DILocation(line: 180, column: 30, scope: !597)
!3170 = !DILocation(line: 180, column: 41, scope: !597)
!3171 = !DILocation(line: 182, column: 14, scope: !597)
!3172 = !DILocation(line: 182, column: 10, scope: !597)
!3173 = !DILocation(line: 184, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !597, file: !596, line: 184, column: 7)
!3175 = !DILocation(line: 184, column: 7, scope: !597)
!3176 = !DILocation(line: 186, column: 13, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !596, line: 186, column: 11)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !596, line: 185, column: 5)
!3179 = !DILocation(line: 186, column: 11, scope: !3178)
!3180 = !DILocation(line: 194, column: 30, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !596, line: 187, column: 9)
!3182 = !DILocation(line: 195, column: 16, scope: !3181)
!3183 = !DILocation(line: 195, column: 13, scope: !3181)
!3184 = !DILocation(line: 196, column: 9, scope: !3181)
!3185 = !DILocation(line: 204, column: 69, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !596, line: 204, column: 11)
!3187 = distinct !DILexicalBlock(scope: !3174, file: !596, line: 199, column: 5)
!3188 = !DILocation(line: 205, column: 11, scope: !3186)
!3189 = !DILocation(line: 204, column: 11, scope: !3187)
!3190 = !DILocation(line: 206, column: 9, scope: !3186)
!3191 = !DILocation(line: 210, column: 7, scope: !597)
!3192 = !DILocation(line: 211, column: 25, scope: !597)
!3193 = !DILocation(line: 51, column: 17, scope: !3133, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 211, column: 10, scope: !597)
!3195 = !DILocation(line: 51, column: 27, scope: !3133, inlinedAt: !3194)
!3196 = !DILocation(line: 53, column: 10, scope: !3142, inlinedAt: !3194)
!3197 = !DILocation(line: 207, column: 14, scope: !3187)
!3198 = !DILocation(line: 207, column: 18, scope: !3187)
!3199 = !DILocation(line: 207, column: 9, scope: !3187)
!3200 = !DILocation(line: 53, column: 8, scope: !3142, inlinedAt: !3194)
!3201 = !DILocation(line: 57, column: 7, scope: !3146, inlinedAt: !3194)
!3202 = !DILocation(line: 58, column: 7, scope: !3146, inlinedAt: !3194)
!3203 = !DILocation(line: 61, column: 7, scope: !3133, inlinedAt: !3194)
!3204 = !DILocation(line: 62, column: 8, scope: !3150, inlinedAt: !3194)
!3205 = !DILocation(line: 62, column: 13, scope: !3150, inlinedAt: !3194)
!3206 = !DILocation(line: 62, column: 10, scope: !3150, inlinedAt: !3194)
!3207 = !DILocation(line: 63, column: 5, scope: !3150, inlinedAt: !3194)
!3208 = !DILocation(line: 211, column: 3, scope: !597)
!3209 = distinct !DISubprogram(name: "xcharalloc", scope: !596, file: !596, line: 220, type: !2174, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3210)
!3210 = !{!3211}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3209, file: !596, line: 220, type: !94)
!3212 = !DILocation(line: 220, column: 20, scope: !3209)
!3213 = !DILocation(line: 39, column: 17, scope: !3093, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 222, column: 10, scope: !3209)
!3215 = !DILocation(line: 41, column: 13, scope: !3093, inlinedAt: !3214)
!3216 = !DILocation(line: 41, column: 9, scope: !3093, inlinedAt: !3214)
!3217 = !DILocation(line: 42, column: 8, scope: !3104, inlinedAt: !3214)
!3218 = !DILocation(line: 42, column: 15, scope: !3104, inlinedAt: !3214)
!3219 = !DILocation(line: 42, column: 10, scope: !3104, inlinedAt: !3214)
!3220 = !DILocation(line: 43, column: 5, scope: !3104, inlinedAt: !3214)
!3221 = !DILocation(line: 222, column: 3, scope: !3209)
!3222 = distinct !DISubprogram(name: "x2realloc", scope: !3094, file: !3094, line: 74, type: !3223, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!49, !49, !600}
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "p", arg: 1, scope: !3222, file: !3094, line: 74, type: !49)
!3227 = !DILocalVariable(name: "pn", arg: 2, scope: !3222, file: !3094, line: 74, type: !600)
!3228 = !DILocation(line: 74, column: 18, scope: !3222)
!3229 = !DILocation(line: 74, column: 29, scope: !3222)
!3230 = !DILocation(line: 180, column: 19, scope: !597, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 76, column: 10, scope: !3222)
!3232 = !DILocation(line: 180, column: 30, scope: !597, inlinedAt: !3231)
!3233 = !DILocation(line: 180, column: 41, scope: !597, inlinedAt: !3231)
!3234 = !DILocation(line: 182, column: 14, scope: !597, inlinedAt: !3231)
!3235 = !DILocation(line: 182, column: 10, scope: !597, inlinedAt: !3231)
!3236 = !DILocation(line: 184, column: 9, scope: !3174, inlinedAt: !3231)
!3237 = !DILocation(line: 184, column: 7, scope: !597, inlinedAt: !3231)
!3238 = !DILocation(line: 186, column: 13, scope: !3177, inlinedAt: !3231)
!3239 = !DILocation(line: 186, column: 11, scope: !3178, inlinedAt: !3231)
!3240 = !DILocation(line: 210, column: 7, scope: !597, inlinedAt: !3231)
!3241 = !DILocation(line: 51, column: 17, scope: !3133, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 211, column: 10, scope: !597, inlinedAt: !3231)
!3243 = !DILocation(line: 51, column: 27, scope: !3133, inlinedAt: !3242)
!3244 = !DILocation(line: 53, column: 10, scope: !3142, inlinedAt: !3242)
!3245 = !DILocation(line: 205, column: 11, scope: !3186, inlinedAt: !3231)
!3246 = !DILocation(line: 204, column: 11, scope: !3187, inlinedAt: !3231)
!3247 = !DILocation(line: 206, column: 9, scope: !3186, inlinedAt: !3231)
!3248 = !DILocation(line: 207, column: 14, scope: !3187, inlinedAt: !3231)
!3249 = !DILocation(line: 207, column: 18, scope: !3187, inlinedAt: !3231)
!3250 = !DILocation(line: 207, column: 9, scope: !3187, inlinedAt: !3231)
!3251 = !DILocation(line: 53, column: 8, scope: !3142, inlinedAt: !3242)
!3252 = !DILocation(line: 57, column: 7, scope: !3146, inlinedAt: !3242)
!3253 = !DILocation(line: 58, column: 7, scope: !3146, inlinedAt: !3242)
!3254 = !DILocation(line: 61, column: 7, scope: !3133, inlinedAt: !3242)
!3255 = !DILocation(line: 62, column: 8, scope: !3150, inlinedAt: !3242)
!3256 = !DILocation(line: 62, column: 13, scope: !3150, inlinedAt: !3242)
!3257 = !DILocation(line: 62, column: 10, scope: !3150, inlinedAt: !3242)
!3258 = !DILocation(line: 63, column: 5, scope: !3150, inlinedAt: !3242)
!3259 = !DILocation(line: 76, column: 3, scope: !3222)
!3260 = distinct !DISubprogram(name: "xzalloc", scope: !3094, file: !3094, line: 84, type: !3095, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3261)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "s", arg: 1, scope: !3260, file: !3094, line: 84, type: !94)
!3263 = !DILocation(line: 84, column: 17, scope: !3260)
!3264 = !DILocation(line: 39, column: 17, scope: !3093, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 86, column: 18, scope: !3260)
!3266 = !DILocation(line: 41, column: 13, scope: !3093, inlinedAt: !3265)
!3267 = !DILocation(line: 41, column: 9, scope: !3093, inlinedAt: !3265)
!3268 = !DILocation(line: 42, column: 8, scope: !3104, inlinedAt: !3265)
!3269 = !DILocation(line: 42, column: 15, scope: !3104, inlinedAt: !3265)
!3270 = !DILocation(line: 42, column: 10, scope: !3104, inlinedAt: !3265)
!3271 = !DILocation(line: 43, column: 5, scope: !3104, inlinedAt: !3265)
!3272 = !DILocation(line: 86, column: 10, scope: !3260)
!3273 = !DILocation(line: 86, column: 3, scope: !3260)
!3274 = distinct !DISubprogram(name: "xcalloc", scope: !3094, file: !3094, line: 93, type: !3080, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3275)
!3275 = !{!3276, !3277, !3278}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !3094, line: 93, type: !94)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !3094, line: 93, type: !94)
!3278 = !DILocalVariable(name: "p", scope: !3274, file: !3094, line: 95, type: !49)
!3279 = !DILocation(line: 93, column: 17, scope: !3274)
!3280 = !DILocation(line: 93, column: 27, scope: !3274)
!3281 = !DILocation(line: 100, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !3094, line: 100, column: 7)
!3283 = !DILocation(line: 101, column: 7, scope: !3282)
!3284 = !DILocation(line: 101, column: 18, scope: !3282)
!3285 = !DILocation(line: 95, column: 9, scope: !3274)
!3286 = !DILocation(line: 101, column: 16, scope: !3282)
!3287 = !DILocation(line: 100, column: 7, scope: !3274)
!3288 = !DILocation(line: 102, column: 5, scope: !3282)
!3289 = !DILocation(line: 103, column: 3, scope: !3274)
!3290 = distinct !DISubprogram(name: "xmemdup", scope: !3094, file: !3094, line: 111, type: !3291, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!49, !1119, !94}
!3293 = !{!3294, !3295}
!3294 = !DILocalVariable(name: "p", arg: 1, scope: !3290, file: !3094, line: 111, type: !1119)
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !3094, line: 111, type: !94)
!3296 = !DILocation(line: 111, column: 22, scope: !3290)
!3297 = !DILocation(line: 111, column: 32, scope: !3290)
!3298 = !DILocation(line: 39, column: 17, scope: !3093, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 113, column: 18, scope: !3290)
!3300 = !DILocation(line: 41, column: 13, scope: !3093, inlinedAt: !3299)
!3301 = !DILocation(line: 41, column: 9, scope: !3093, inlinedAt: !3299)
!3302 = !DILocation(line: 42, column: 8, scope: !3104, inlinedAt: !3299)
!3303 = !DILocation(line: 42, column: 15, scope: !3104, inlinedAt: !3299)
!3304 = !DILocation(line: 42, column: 10, scope: !3104, inlinedAt: !3299)
!3305 = !DILocation(line: 43, column: 5, scope: !3104, inlinedAt: !3299)
!3306 = !DILocation(line: 113, column: 10, scope: !3290)
!3307 = !DILocation(line: 113, column: 3, scope: !3290)
!3308 = distinct !DISubprogram(name: "xstrdup", scope: !3094, file: !3094, line: 119, type: !2375, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3309)
!3309 = !{!3310}
!3310 = !DILocalVariable(name: "string", arg: 1, scope: !3308, file: !3094, line: 119, type: !6)
!3311 = !DILocation(line: 119, column: 22, scope: !3308)
!3312 = !DILocation(line: 121, column: 27, scope: !3308)
!3313 = !DILocation(line: 121, column: 43, scope: !3308)
!3314 = !DILocation(line: 111, column: 22, scope: !3290, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 121, column: 10, scope: !3308)
!3316 = !DILocation(line: 111, column: 32, scope: !3290, inlinedAt: !3315)
!3317 = !DILocation(line: 39, column: 17, scope: !3093, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 113, column: 18, scope: !3290, inlinedAt: !3315)
!3319 = !DILocation(line: 41, column: 13, scope: !3093, inlinedAt: !3318)
!3320 = !DILocation(line: 41, column: 9, scope: !3093, inlinedAt: !3318)
!3321 = !DILocation(line: 42, column: 8, scope: !3104, inlinedAt: !3318)
!3322 = !DILocation(line: 42, column: 15, scope: !3104, inlinedAt: !3318)
!3323 = !DILocation(line: 42, column: 10, scope: !3104, inlinedAt: !3318)
!3324 = !DILocation(line: 43, column: 5, scope: !3104, inlinedAt: !3318)
!3325 = !DILocation(line: 113, column: 10, scope: !3290, inlinedAt: !3315)
!3326 = !DILocation(line: 121, column: 3, scope: !3308)
!3327 = distinct !DISubprogram(name: "xalloc_die", scope: !3328, file: !3328, line: 32, type: !972, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !609, variables: !4)
!3328 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3329 = !DILocation(line: 34, column: 10, scope: !3327)
!3330 = !DILocation(line: 34, column: 33, scope: !3327)
!3331 = !DILocation(line: 34, column: 3, scope: !3327)
!3332 = !DILocation(line: 40, column: 3, scope: !3327)
!3333 = distinct !DISubprogram(name: "rpl_calloc", scope: !3334, file: !3334, line: 42, type: !3080, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !3335)
!3334 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3335 = !{!3336, !3337, !3338, !3339}
!3336 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !3334, line: 42, type: !94)
!3337 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !3334, line: 42, type: !94)
!3338 = !DILocalVariable(name: "result", scope: !3333, file: !3334, line: 44, type: !49)
!3339 = !DILocalVariable(name: "bytes", scope: !3340, file: !3334, line: 56, type: !94)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3334, line: 53, column: 5)
!3341 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 47, column: 7)
!3342 = !DILocation(line: 42, column: 20, scope: !3333)
!3343 = !DILocation(line: 42, column: 30, scope: !3333)
!3344 = !DILocation(line: 47, column: 9, scope: !3341)
!3345 = !DILocation(line: 47, column: 19, scope: !3341)
!3346 = !DILocation(line: 47, column: 14, scope: !3341)
!3347 = !DILocation(line: 56, column: 24, scope: !3340)
!3348 = !DILocation(line: 56, column: 14, scope: !3340)
!3349 = !DILocation(line: 57, column: 17, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3340, file: !3334, line: 57, column: 11)
!3351 = !DILocation(line: 57, column: 21, scope: !3350)
!3352 = !DILocation(line: 57, column: 11, scope: !3340)
!3353 = !DILocation(line: 59, column: 11, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3334, line: 58, column: 9)
!3355 = !DILocation(line: 59, column: 17, scope: !3354)
!3356 = !DILocation(line: 65, column: 12, scope: !3333)
!3357 = !DILocation(line: 44, column: 9, scope: !3333)
!3358 = !DILocation(line: 72, column: 3, scope: !3333)
!3359 = !DILocation(line: 73, column: 1, scope: !3333)
!3360 = !DILocation(line: 272, column: 16, scope: !151)
!3361 = !DILocation(line: 272, column: 24, scope: !151)
!3362 = !DILocation(line: 274, column: 3, scope: !151)
!3363 = !DILocation(line: 274, column: 11, scope: !151)
!3364 = !DILocation(line: 275, column: 7, scope: !151)
!3365 = !DILocation(line: 276, column: 3, scope: !151)
!3366 = !DILocation(line: 277, column: 3, scope: !151)
!3367 = !DILocation(line: 322, column: 22, scope: !176)
!3368 = !DILocation(line: 322, column: 13, scope: !176)
!3369 = !DILocation(line: 336, column: 18, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !176, file: !152, line: 336, column: 13)
!3371 = !DILocation(line: 336, column: 15, scope: !3370)
!3372 = !DILocation(line: 336, column: 13, scope: !176)
!3373 = !DILocation(line: 338, column: 22, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !152, line: 337, column: 11)
!3375 = !DILocation(line: 339, column: 19, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3374, file: !152, line: 339, column: 17)
!3377 = !DILocation(line: 339, column: 29, scope: !3376)
!3378 = !DILocation(line: 339, column: 32, scope: !3376)
!3379 = !DILocation(line: 339, column: 38, scope: !3376)
!3380 = !DILocation(line: 339, column: 17, scope: !3374)
!3381 = !DILocation(line: 349, column: 26, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3376, file: !152, line: 348, column: 15)
!3383 = !DILocation(line: 350, column: 28, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3382, file: !152, line: 350, column: 21)
!3385 = !DILocation(line: 350, column: 21, scope: !3382)
!3386 = !DILocation(line: 354, column: 11, scope: !3374)
!3387 = !DILocation(line: 356, column: 20, scope: !3370)
!3388 = !DILocation(line: 357, column: 28, scope: !180)
!3389 = !DILocation(line: 357, column: 15, scope: !180)
!3390 = !DILocation(line: 357, column: 47, scope: !180)
!3391 = !DILocation(line: 357, column: 25, scope: !180)
!3392 = !DILocation(line: 359, column: 25, scope: !179)
!3393 = !DILocation(line: 359, column: 17, scope: !179)
!3394 = !DILocation(line: 360, column: 23, scope: !183)
!3395 = !DILocation(line: 360, column: 27, scope: !183)
!3396 = !DILocation(line: 360, column: 60, scope: !183)
!3397 = !DILocation(line: 360, column: 30, scope: !183)
!3398 = !DILocation(line: 360, column: 74, scope: !183)
!3399 = !DILocation(line: 360, column: 17, scope: !179)
!3400 = !DILocation(line: 362, column: 35, scope: !182)
!3401 = !DILocation(line: 362, column: 21, scope: !182)
!3402 = !DILocation(line: 363, column: 17, scope: !182)
!3403 = !DILocation(line: 364, column: 23, scope: !182)
!3404 = !DILocation(line: 366, column: 15, scope: !182)
!3405 = !DILocation(line: 404, column: 19, scope: !185)
!3406 = !DILocation(line: 404, column: 15, scope: !185)
!3407 = !DILocation(line: 405, column: 18, scope: !185)
!3408 = !DILocation(line: 412, column: 3, scope: !151)
!3409 = !DILocation(line: 414, column: 1, scope: !151)
!3410 = !DILocation(line: 413, column: 3, scope: !151)
!3411 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3412, file: !3412, line: 334, type: !3413, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !3427)
!3412 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!94, !3415, !6, !94, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1426, line: 6, baseType: !3418)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1428, line: 21, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1428, line: 13, size: 64, elements: !3420)
!3420 = !{!3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3419, file: !1428, line: 15, baseType: !25, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3419, file: !1428, line: 20, baseType: !3423, size: 32, offset: 32)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !1428, line: 16, size: 32, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3423, file: !1428, line: 18, baseType: !113, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3423, file: !1428, line: 19, baseType: !1437, size: 32)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3428 = !DILocalVariable(name: "pwc", arg: 1, scope: !3411, file: !3412, line: 334, type: !3415)
!3429 = !DILocalVariable(name: "s", arg: 2, scope: !3411, file: !3412, line: 334, type: !6)
!3430 = !DILocalVariable(name: "n", arg: 3, scope: !3411, file: !3412, line: 334, type: !94)
!3431 = !DILocalVariable(name: "ps", arg: 4, scope: !3411, file: !3412, line: 334, type: !3416)
!3432 = !DILocalVariable(name: "ret", scope: !3411, file: !3412, line: 336, type: !94)
!3433 = !DILocalVariable(name: "wc", scope: !3411, file: !3412, line: 337, type: !1442)
!3434 = !DILocalVariable(name: "uc", scope: !3435, file: !3412, line: 398, type: !531)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !3412, line: 397, column: 5)
!3436 = distinct !DILexicalBlock(scope: !3411, file: !3412, line: 396, column: 7)
!3437 = !DILocation(line: 334, column: 23, scope: !3411)
!3438 = !DILocation(line: 334, column: 40, scope: !3411)
!3439 = !DILocation(line: 334, column: 50, scope: !3411)
!3440 = !DILocation(line: 334, column: 64, scope: !3411)
!3441 = !DILocation(line: 337, column: 3, scope: !3411)
!3442 = !DILocation(line: 353, column: 9, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3411, file: !3412, line: 353, column: 7)
!3444 = !DILocation(line: 353, column: 7, scope: !3411)
!3445 = !DILocation(line: 388, column: 9, scope: !3411)
!3446 = !DILocation(line: 336, column: 10, scope: !3411)
!3447 = !DILocation(line: 396, column: 19, scope: !3436)
!3448 = !DILocation(line: 396, column: 31, scope: !3436)
!3449 = !DILocation(line: 396, column: 26, scope: !3436)
!3450 = !DILocation(line: 396, column: 41, scope: !3436)
!3451 = !DILocation(line: 396, column: 7, scope: !3411)
!3452 = !DILocation(line: 398, column: 26, scope: !3435)
!3453 = !DILocation(line: 398, column: 21, scope: !3435)
!3454 = !DILocation(line: 399, column: 14, scope: !3435)
!3455 = !DILocation(line: 399, column: 12, scope: !3435)
!3456 = !DILocation(line: 405, column: 1, scope: !3411)
!3457 = distinct !DISubprogram(name: "close_stream", scope: !3458, file: !3458, line: 56, type: !3459, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !3501)
!3458 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!25, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !844, line: 242, baseType: !25, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !844, line: 260, baseType: !3478, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !3480)
!3480 = !{!3481, !3482, !3484}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3479, file: !844, line: 157, baseType: !3478, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3479, file: !844, line: 158, baseType: !3483, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3479, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !844, line: 262, baseType: !3483, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3463, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3463, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3463, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3463, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!3501 = !{!3502, !3503, !3505, !3506}
!3502 = !DILocalVariable(name: "stream", arg: 1, scope: !3457, file: !3458, line: 56, type: !3461)
!3503 = !DILocalVariable(name: "some_pending", scope: !3457, file: !3458, line: 58, type: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3505 = !DILocalVariable(name: "prev_fail", scope: !3457, file: !3458, line: 59, type: !3504)
!3506 = !DILocalVariable(name: "fclose_fail", scope: !3457, file: !3458, line: 60, type: !3504)
!3507 = !DILocation(line: 56, column: 21, scope: !3457)
!3508 = !DILocation(line: 58, column: 30, scope: !3457)
!3509 = !DILocalVariable(name: "__stream", arg: 1, scope: !3510, file: !837, line: 132, type: !3461)
!3510 = distinct !DISubprogram(name: "ferror_unlocked", scope: !837, file: !837, line: 132, type: !3459, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !3511)
!3511 = !{!3509}
!3512 = !DILocation(line: 132, column: 1, scope: !3510, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 59, column: 27, scope: !3457)
!3514 = !DILocation(line: 134, column: 10, scope: !3510, inlinedAt: !3513)
!3515 = !DILocation(line: 59, column: 43, scope: !3457)
!3516 = !DILocation(line: 60, column: 29, scope: !3457)
!3517 = !DILocation(line: 60, column: 45, scope: !3457)
!3518 = !DILocation(line: 70, column: 17, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3457, file: !3458, line: 70, column: 7)
!3520 = !DILocation(line: 58, column: 50, scope: !3457)
!3521 = !DILocation(line: 70, column: 33, scope: !3519)
!3522 = !DILocation(line: 70, column: 53, scope: !3519)
!3523 = !DILocation(line: 70, column: 59, scope: !3519)
!3524 = !DILocation(line: 70, column: 7, scope: !3457)
!3525 = !DILocation(line: 72, column: 11, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !3458, line: 71, column: 5)
!3527 = !DILocation(line: 73, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3526, file: !3458, line: 72, column: 11)
!3529 = !DILocation(line: 73, column: 15, scope: !3528)
!3530 = !DILocation(line: 78, column: 1, scope: !3457)
!3531 = distinct !DISubprogram(name: "last_component", scope: !3532, file: !3532, line: 30, type: !2375, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !3533)
!3532 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3533 = !{!3534, !3535, !3536, !3537}
!3534 = !DILocalVariable(name: "name", arg: 1, scope: !3531, file: !3532, line: 30, type: !6)
!3535 = !DILocalVariable(name: "base", scope: !3531, file: !3532, line: 32, type: !6)
!3536 = !DILocalVariable(name: "p", scope: !3531, file: !3532, line: 33, type: !6)
!3537 = !DILocalVariable(name: "saw_slash", scope: !3531, file: !3532, line: 34, type: !17)
!3538 = !DILocation(line: 30, column: 29, scope: !3531)
!3539 = !DILocation(line: 32, column: 15, scope: !3531)
!3540 = !DILocation(line: 34, column: 8, scope: !3531)
!3541 = !DILocation(line: 36, column: 3, scope: !3531)
!3542 = !DILocation(line: 36, column: 10, scope: !3531)
!3543 = !DILocation(line: 37, column: 9, scope: !3531)
!3544 = distinct !{!3544, !3541, !3543}
!3545 = !DILocation(line: 39, column: 3, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3531, file: !3532, line: 39, column: 3)
!3547 = !DILocation(line: 39, column: 18, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !3532, line: 39, column: 3)
!3549 = !DILocation(line: 33, column: 15, scope: !3531)
!3550 = !DILocation(line: 43, column: 16, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3532, line: 43, column: 16)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3532, line: 41, column: 11)
!3553 = distinct !DILexicalBlock(scope: !3548, file: !3532, line: 40, column: 5)
!3554 = !DILocation(line: 43, column: 16, scope: !3552)
!3555 = !DILocation(line: 39, column: 23, scope: !3548)
!3556 = !DILocation(line: 39, column: 3, scope: !3548)
!3557 = distinct !{!3557, !3545, !3558}
!3558 = !DILocation(line: 48, column: 5, scope: !3546)
!3559 = !DILocation(line: 50, column: 3, scope: !3531)
!3560 = distinct !DISubprogram(name: "base_len", scope: !3532, file: !3532, line: 58, type: !3561, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!94, !6}
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "name", arg: 1, scope: !3560, file: !3532, line: 58, type: !6)
!3565 = !DILocalVariable(name: "len", scope: !3560, file: !3532, line: 60, type: !94)
!3566 = !DILocalVariable(name: "prefix_len", scope: !3560, file: !3532, line: 61, type: !94)
!3567 = !DILocation(line: 58, column: 23, scope: !3560)
!3568 = !DILocation(line: 61, column: 10, scope: !3560)
!3569 = !DILocation(line: 63, column: 14, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3560, file: !3532, line: 63, column: 3)
!3571 = !DILocation(line: 60, column: 10, scope: !3560)
!3572 = !DILocation(line: 63, column: 32, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !3532, line: 63, column: 3)
!3574 = !DILocation(line: 63, column: 38, scope: !3573)
!3575 = !DILocation(line: 63, column: 41, scope: !3573)
!3576 = distinct !{!3576, !3577, !3578}
!3577 = !DILocation(line: 63, column: 3, scope: !3570)
!3578 = !DILocation(line: 64, column: 5, scope: !3570)
!3579 = !DILocation(line: 74, column: 3, scope: !3560)
!3580 = distinct !DISubprogram(name: "hard_locale", scope: !3581, file: !3581, line: 38, type: !3582, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !3584)
!3581 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!17, !25}
!3584 = !{!3585, !3586, !3587}
!3585 = !DILocalVariable(name: "category", arg: 1, scope: !3580, file: !3581, line: 38, type: !25)
!3586 = !DILocalVariable(name: "hard", scope: !3580, file: !3581, line: 40, type: !17)
!3587 = !DILocalVariable(name: "p", scope: !3580, file: !3581, line: 41, type: !6)
!3588 = !DILocation(line: 38, column: 18, scope: !3580)
!3589 = !DILocation(line: 40, column: 8, scope: !3580)
!3590 = !DILocation(line: 41, column: 19, scope: !3580)
!3591 = !DILocation(line: 41, column: 15, scope: !3580)
!3592 = !DILocation(line: 43, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3580, file: !3581, line: 43, column: 7)
!3594 = !DILocation(line: 43, column: 7, scope: !3580)
!3595 = !DILocation(line: 47, column: 15, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !3581, line: 47, column: 15)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3581, line: 46, column: 9)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3581, line: 45, column: 11)
!3599 = distinct !DILexicalBlock(scope: !3593, file: !3581, line: 44, column: 5)
!3600 = !DILocation(line: 47, column: 31, scope: !3596)
!3601 = !DILocation(line: 47, column: 36, scope: !3596)
!3602 = !DILocation(line: 47, column: 39, scope: !3596)
!3603 = !DILocation(line: 47, column: 59, scope: !3596)
!3604 = !DILocation(line: 47, column: 15, scope: !3597)
!3605 = !DILocation(line: 48, column: 13, scope: !3596)
!3606 = !DILocation(line: 71, column: 3, scope: !3580)
!3607 = distinct !DISubprogram(name: "locale_charset", scope: !533, file: !533, line: 393, type: !3608, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!6}
!3610 = !{!3611, !3612}
!3611 = !DILocalVariable(name: "codeset", scope: !3607, file: !533, line: 395, type: !6)
!3612 = !DILocalVariable(name: "aliases", scope: !3607, file: !533, line: 396, type: !6)
!3613 = !DILocalVariable(name: "buf1", scope: !3614, file: !533, line: 196, type: !3681)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !533, line: 194, column: 21)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !533, line: 193, column: 19)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !533, line: 193, column: 19)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !533, line: 188, column: 17)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !533, line: 181, column: 19)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !533, line: 177, column: 13)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !533, line: 173, column: 15)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !533, line: 161, column: 9)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !533, line: 157, column: 11)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !533, line: 130, column: 5)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !533, line: 129, column: 7)
!3625 = distinct !DISubprogram(name: "get_charset_aliases", scope: !533, file: !533, line: 124, type: !3608, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3633, !3634, !3635, !3636, !3677, !3678, !3679, !3613, !3680, !3684, !3685, !3686}
!3627 = !DILocalVariable(name: "cp", scope: !3625, file: !533, line: 126, type: !6)
!3628 = !DILocalVariable(name: "dir", scope: !3623, file: !533, line: 132, type: !6)
!3629 = !DILocalVariable(name: "base", scope: !3623, file: !533, line: 133, type: !6)
!3630 = !DILocalVariable(name: "file_name", scope: !3623, file: !533, line: 134, type: !50)
!3631 = !DILocalVariable(name: "dir_len", scope: !3632, file: !533, line: 144, type: !94)
!3632 = distinct !DILexicalBlock(scope: !3623, file: !533, line: 143, column: 7)
!3633 = !DILocalVariable(name: "base_len", scope: !3632, file: !533, line: 145, type: !94)
!3634 = !DILocalVariable(name: "add_slash", scope: !3632, file: !533, line: 146, type: !25)
!3635 = !DILocalVariable(name: "fd", scope: !3621, file: !533, line: 162, type: !25)
!3636 = !DILocalVariable(name: "fp", scope: !3619, file: !533, line: 178, type: !3637)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3639, file: !844, line: 242, baseType: !25, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3639, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3639, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3639, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3639, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3639, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3639, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3639, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3639, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3639, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3639, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3639, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3639, file: !844, line: 260, baseType: !3654, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !3656)
!3656 = !{!3657, !3658, !3660}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3655, file: !844, line: 157, baseType: !3654, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3655, file: !844, line: 158, baseType: !3659, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3655, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3639, file: !844, line: 262, baseType: !3659, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3639, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3639, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3639, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3639, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3639, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3639, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3639, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3639, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3639, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3639, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3639, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3639, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3639, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3639, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3639, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!3677 = !DILocalVariable(name: "res_ptr", scope: !3617, file: !533, line: 190, type: !50)
!3678 = !DILocalVariable(name: "res_size", scope: !3617, file: !533, line: 191, type: !94)
!3679 = !DILocalVariable(name: "c", scope: !3614, file: !533, line: 195, type: !25)
!3680 = !DILocalVariable(name: "buf2", scope: !3614, file: !533, line: 197, type: !3681)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3682)
!3682 = !{!3683}
!3683 = !DISubrange(count: 51)
!3684 = !DILocalVariable(name: "l1", scope: !3614, file: !533, line: 198, type: !94)
!3685 = !DILocalVariable(name: "l2", scope: !3614, file: !533, line: 198, type: !94)
!3686 = !DILocalVariable(name: "old_res_ptr", scope: !3614, file: !533, line: 199, type: !50)
!3687 = !DILocation(line: 196, column: 28, scope: !3614, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 589, column: 18, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3607, file: !533, line: 589, column: 3)
!3690 = !DILocation(line: 197, column: 28, scope: !3614, inlinedAt: !3688)
!3691 = !DILocation(line: 403, column: 13, scope: !3607)
!3692 = !DILocation(line: 395, column: 15, scope: !3607)
!3693 = !DILocation(line: 584, column: 15, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3607, file: !533, line: 584, column: 7)
!3695 = !DILocation(line: 584, column: 7, scope: !3607)
!3696 = !DILocation(line: 128, column: 8, scope: !3625, inlinedAt: !3688)
!3697 = !DILocation(line: 126, column: 15, scope: !3625, inlinedAt: !3688)
!3698 = !DILocation(line: 129, column: 10, scope: !3624, inlinedAt: !3688)
!3699 = !DILocation(line: 129, column: 7, scope: !3625, inlinedAt: !3688)
!3700 = !DILocation(line: 138, column: 13, scope: !3623, inlinedAt: !3688)
!3701 = !DILocation(line: 132, column: 19, scope: !3623, inlinedAt: !3688)
!3702 = !DILocation(line: 139, column: 15, scope: !3703, inlinedAt: !3688)
!3703 = distinct !DILexicalBlock(scope: !3623, file: !533, line: 139, column: 11)
!3704 = !DILocation(line: 139, column: 23, scope: !3703, inlinedAt: !3688)
!3705 = !DILocation(line: 139, column: 26, scope: !3703, inlinedAt: !3688)
!3706 = !DILocation(line: 139, column: 33, scope: !3703, inlinedAt: !3688)
!3707 = !DILocation(line: 139, column: 11, scope: !3623, inlinedAt: !3688)
!3708 = !DILocation(line: 140, column: 9, scope: !3703, inlinedAt: !3688)
!3709 = !DILocation(line: 144, column: 26, scope: !3632, inlinedAt: !3688)
!3710 = !DILocation(line: 144, column: 16, scope: !3632, inlinedAt: !3688)
!3711 = !DILocation(line: 145, column: 16, scope: !3632, inlinedAt: !3688)
!3712 = !DILocation(line: 146, column: 34, scope: !3632, inlinedAt: !3688)
!3713 = !DILocation(line: 146, column: 38, scope: !3632, inlinedAt: !3688)
!3714 = !DILocation(line: 146, column: 42, scope: !3632, inlinedAt: !3688)
!3715 = !DILocation(line: 147, column: 48, scope: !3632, inlinedAt: !3688)
!3716 = !DILocation(line: 147, column: 46, scope: !3632, inlinedAt: !3688)
!3717 = !DILocation(line: 147, column: 69, scope: !3632, inlinedAt: !3688)
!3718 = !DILocation(line: 147, column: 30, scope: !3632, inlinedAt: !3688)
!3719 = !DILocation(line: 134, column: 13, scope: !3623, inlinedAt: !3688)
!3720 = !DILocation(line: 148, column: 13, scope: !3632, inlinedAt: !3688)
!3721 = !DILocation(line: 150, column: 13, scope: !3722, inlinedAt: !3688)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !533, line: 149, column: 11)
!3723 = distinct !DILexicalBlock(scope: !3632, file: !533, line: 148, column: 13)
!3724 = !DILocation(line: 151, column: 17, scope: !3722, inlinedAt: !3688)
!3725 = !DILocation(line: 152, column: 34, scope: !3726, inlinedAt: !3688)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !533, line: 151, column: 17)
!3727 = !DILocation(line: 153, column: 41, scope: !3722, inlinedAt: !3688)
!3728 = !DILocation(line: 153, column: 13, scope: !3722, inlinedAt: !3688)
!3729 = !DILocation(line: 157, column: 11, scope: !3623, inlinedAt: !3688)
!3730 = !DILocation(line: 171, column: 16, scope: !3621, inlinedAt: !3688)
!3731 = !DILocation(line: 162, column: 15, scope: !3621, inlinedAt: !3688)
!3732 = !DILocation(line: 173, column: 18, scope: !3620, inlinedAt: !3688)
!3733 = !DILocation(line: 173, column: 15, scope: !3621, inlinedAt: !3688)
!3734 = !DILocation(line: 180, column: 20, scope: !3619, inlinedAt: !3688)
!3735 = !DILocation(line: 178, column: 21, scope: !3619, inlinedAt: !3688)
!3736 = !DILocation(line: 181, column: 22, scope: !3618, inlinedAt: !3688)
!3737 = !DILocation(line: 181, column: 19, scope: !3619, inlinedAt: !3688)
!3738 = !DILocation(line: 184, column: 19, scope: !3739, inlinedAt: !3688)
!3739 = distinct !DILexicalBlock(scope: !3618, file: !533, line: 182, column: 17)
!3740 = !DILocation(line: 186, column: 17, scope: !3739, inlinedAt: !3688)
!3741 = !DILocation(line: 190, column: 25, scope: !3617, inlinedAt: !3688)
!3742 = !DILocation(line: 191, column: 26, scope: !3617, inlinedAt: !3688)
!3743 = !DILocation(line: 193, column: 19, scope: !3617, inlinedAt: !3688)
!3744 = !DILocation(line: 196, column: 23, scope: !3614, inlinedAt: !3688)
!3745 = !DILocation(line: 197, column: 23, scope: !3614, inlinedAt: !3688)
!3746 = !DILocalVariable(name: "__fp", arg: 1, scope: !3747, file: !837, line: 63, type: !3637)
!3747 = distinct !DISubprogram(name: "getc_unlocked", scope: !837, file: !837, line: 63, type: !3748, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!25, !3637}
!3750 = !{!3746}
!3751 = !DILocation(line: 63, column: 22, scope: !3747, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 201, column: 27, scope: !3614, inlinedAt: !3688)
!3753 = !DILocation(line: 65, column: 10, scope: !3747, inlinedAt: !3752)
!3754 = !{!897, !646, i64 8}
!3755 = !{!897, !646, i64 16}
!3756 = !{!"branch_weights", i32 2000, i32 1}
!3757 = !DILocation(line: 195, column: 27, scope: !3614, inlinedAt: !3688)
!3758 = !DILocation(line: 202, column: 27, scope: !3614, inlinedAt: !3688)
!3759 = distinct !{!3759, !3760, !3763}
!3760 = !DILocation(line: 209, column: 27, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !533, line: 207, column: 25)
!3762 = distinct !DILexicalBlock(scope: !3614, file: !533, line: 206, column: 27)
!3763 = !DILocation(line: 211, column: 58, scope: !3761)
!3764 = !DILocation(line: 65, column: 10, scope: !3747, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 210, column: 33, scope: !3761, inlinedAt: !3688)
!3766 = !DILocation(line: 63, column: 22, scope: !3747, inlinedAt: !3765)
!3767 = !DILocation(line: 210, column: 29, scope: !3761, inlinedAt: !3688)
!3768 = distinct !{!3768, !3769, !3770}
!3769 = !DILocation(line: 193, column: 19, scope: !3616)
!3770 = !DILocation(line: 241, column: 21, scope: !3616)
!3771 = !DILocation(line: 216, column: 23, scope: !3614, inlinedAt: !3688)
!3772 = !DILocation(line: 217, column: 27, scope: !3773, inlinedAt: !3688)
!3773 = distinct !DILexicalBlock(scope: !3614, file: !533, line: 217, column: 27)
!3774 = !DILocation(line: 217, column: 64, scope: !3773, inlinedAt: !3688)
!3775 = !DILocation(line: 217, column: 27, scope: !3614, inlinedAt: !3688)
!3776 = !DILocation(line: 219, column: 28, scope: !3614, inlinedAt: !3688)
!3777 = !DILocation(line: 198, column: 30, scope: !3614, inlinedAt: !3688)
!3778 = !DILocation(line: 220, column: 28, scope: !3614, inlinedAt: !3688)
!3779 = !DILocation(line: 198, column: 34, scope: !3614, inlinedAt: !3688)
!3780 = !DILocation(line: 199, column: 29, scope: !3614, inlinedAt: !3688)
!3781 = !DILocation(line: 222, column: 36, scope: !3782, inlinedAt: !3688)
!3782 = distinct !DILexicalBlock(scope: !3614, file: !533, line: 222, column: 27)
!3783 = !DILocation(line: 222, column: 27, scope: !3614, inlinedAt: !3688)
!3784 = !DILocation(line: 225, column: 63, scope: !3785, inlinedAt: !3688)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !533, line: 223, column: 25)
!3786 = !DILocation(line: 225, column: 46, scope: !3785, inlinedAt: !3688)
!3787 = !DILocation(line: 226, column: 25, scope: !3785, inlinedAt: !3688)
!3788 = !DILocation(line: 229, column: 36, scope: !3789, inlinedAt: !3688)
!3789 = distinct !DILexicalBlock(scope: !3782, file: !533, line: 228, column: 25)
!3790 = !DILocation(line: 230, column: 73, scope: !3789, inlinedAt: !3688)
!3791 = !DILocation(line: 230, column: 46, scope: !3789, inlinedAt: !3688)
!3792 = !DILocation(line: 232, column: 35, scope: !3793, inlinedAt: !3688)
!3793 = distinct !DILexicalBlock(scope: !3614, file: !533, line: 232, column: 27)
!3794 = !DILocation(line: 232, column: 27, scope: !3614, inlinedAt: !3688)
!3795 = !DILocation(line: 236, column: 27, scope: !3796, inlinedAt: !3688)
!3796 = distinct !DILexicalBlock(scope: !3793, file: !533, line: 233, column: 25)
!3797 = !DILocation(line: 237, column: 27, scope: !3796, inlinedAt: !3688)
!3798 = !DILocation(line: 241, column: 21, scope: !3615, inlinedAt: !3688)
!3799 = !DILocation(line: 239, column: 39, scope: !3614, inlinedAt: !3688)
!3800 = !DILocation(line: 239, column: 50, scope: !3614, inlinedAt: !3688)
!3801 = !DILocation(line: 239, column: 61, scope: !3614, inlinedAt: !3688)
!3802 = !DILocalVariable(name: "__dest", arg: 1, scope: !3803, file: !1114, line: 88, type: !3806)
!3803 = distinct !DISubprogram(name: "strcpy", scope: !1114, file: !1114, line: 88, type: !3804, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !3808)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!50, !3806, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3807 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3808 = !{!3802, !3809}
!3809 = !DILocalVariable(name: "__src", arg: 2, scope: !3803, file: !1114, line: 88, type: !3807)
!3810 = !DILocation(line: 88, column: 1, scope: !3803, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 239, column: 23, scope: !3614, inlinedAt: !3688)
!3812 = !DILocation(line: 90, column: 49, scope: !3803, inlinedAt: !3811)
!3813 = !DILocation(line: 90, column: 10, scope: !3803, inlinedAt: !3811)
!3814 = !DILocation(line: 88, column: 1, scope: !3803, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 240, column: 23, scope: !3614, inlinedAt: !3688)
!3816 = !DILocation(line: 90, column: 49, scope: !3803, inlinedAt: !3815)
!3817 = !DILocation(line: 90, column: 10, scope: !3803, inlinedAt: !3815)
!3818 = !DILocation(line: 193, column: 19, scope: !3615, inlinedAt: !3688)
!3819 = !DILocation(line: 242, column: 19, scope: !3617, inlinedAt: !3688)
!3820 = !DILocation(line: 243, column: 32, scope: !3821, inlinedAt: !3688)
!3821 = distinct !DILexicalBlock(scope: !3617, file: !533, line: 243, column: 23)
!3822 = !DILocation(line: 243, column: 23, scope: !3617, inlinedAt: !3688)
!3823 = !DILocation(line: 247, column: 33, scope: !3824, inlinedAt: !3688)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !533, line: 246, column: 21)
!3825 = !DILocation(line: 247, column: 45, scope: !3824, inlinedAt: !3688)
!3826 = !DILocation(line: 253, column: 11, scope: !3621, inlinedAt: !3688)
!3827 = !DILocation(line: 377, column: 23, scope: !3623, inlinedAt: !3688)
!3828 = !DILocation(line: 378, column: 5, scope: !3623, inlinedAt: !3688)
!3829 = !DILocation(line: 396, column: 15, scope: !3607)
!3830 = !DILocation(line: 590, column: 8, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3689, file: !533, line: 589, column: 3)
!3832 = !DILocation(line: 590, column: 17, scope: !3831)
!3833 = !DILocation(line: 589, column: 3, scope: !3689)
!3834 = !DILocation(line: 592, column: 9, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !533, line: 592, column: 9)
!3836 = !DILocation(line: 592, column: 35, scope: !3835)
!3837 = !DILocation(line: 593, column: 9, scope: !3835)
!3838 = !DILocation(line: 593, column: 24, scope: !3835)
!3839 = !DILocation(line: 593, column: 31, scope: !3835)
!3840 = !DILocation(line: 593, column: 34, scope: !3835)
!3841 = !DILocation(line: 593, column: 45, scope: !3835)
!3842 = !DILocation(line: 592, column: 9, scope: !3831)
!3843 = !DILocation(line: 595, column: 29, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !533, line: 594, column: 7)
!3845 = !DILocation(line: 595, column: 27, scope: !3844)
!3846 = !DILocation(line: 595, column: 46, scope: !3844)
!3847 = !DILocation(line: 596, column: 9, scope: !3844)
!3848 = !DILocation(line: 591, column: 19, scope: !3831)
!3849 = !DILocation(line: 591, column: 36, scope: !3831)
!3850 = !DILocation(line: 591, column: 16, scope: !3831)
!3851 = !DILocation(line: 591, column: 52, scope: !3831)
!3852 = !DILocation(line: 591, column: 69, scope: !3831)
!3853 = !DILocation(line: 591, column: 49, scope: !3831)
!3854 = distinct !{!3854, !3833, !3855}
!3855 = !DILocation(line: 597, column: 7, scope: !3689)
!3856 = !DILocation(line: 602, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3607, file: !533, line: 602, column: 7)
!3858 = !DILocation(line: 602, column: 18, scope: !3857)
!3859 = !DILocation(line: 602, column: 7, scope: !3607)
!3860 = !DILocation(line: 612, column: 3, scope: !3607)
!3861 = distinct !DISubprogram(name: "rpl_fclose", scope: !3862, file: !3862, line: 56, type: !3863, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !623, variables: !3905)
!3862 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!25, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3867, file: !844, line: 242, baseType: !25, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3867, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3867, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3867, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3867, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3867, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3867, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3867, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3867, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3867, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3867, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3867, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3867, file: !844, line: 260, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3883, file: !844, line: 157, baseType: !3882, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3883, file: !844, line: 158, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3883, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3867, file: !844, line: 262, baseType: !3887, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3867, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3867, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3867, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3867, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3867, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3867, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3867, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3867, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3867, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3867, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3867, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3867, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3867, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3867, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3867, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DILocalVariable(name: "fp", arg: 1, scope: !3861, file: !3862, line: 56, type: !3865)
!3907 = !DILocalVariable(name: "saved_errno", scope: !3861, file: !3862, line: 58, type: !25)
!3908 = !DILocalVariable(name: "fd", scope: !3861, file: !3862, line: 59, type: !25)
!3909 = !DILocalVariable(name: "result", scope: !3861, file: !3862, line: 60, type: !25)
!3910 = !DILocation(line: 56, column: 19, scope: !3861)
!3911 = !DILocation(line: 58, column: 7, scope: !3861)
!3912 = !DILocation(line: 60, column: 7, scope: !3861)
!3913 = !DILocation(line: 63, column: 8, scope: !3861)
!3914 = !DILocation(line: 59, column: 7, scope: !3861)
!3915 = !DILocation(line: 64, column: 10, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 64, column: 7)
!3917 = !DILocation(line: 64, column: 7, scope: !3861)
!3918 = !DILocation(line: 65, column: 12, scope: !3916)
!3919 = !DILocation(line: 65, column: 5, scope: !3916)
!3920 = !DILocation(line: 70, column: 9, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 70, column: 7)
!3922 = !DILocation(line: 70, column: 23, scope: !3921)
!3923 = !DILocation(line: 70, column: 33, scope: !3921)
!3924 = !DILocation(line: 70, column: 26, scope: !3921)
!3925 = !DILocation(line: 70, column: 59, scope: !3921)
!3926 = !DILocation(line: 71, column: 7, scope: !3921)
!3927 = !DILocation(line: 71, column: 10, scope: !3921)
!3928 = !DILocation(line: 70, column: 7, scope: !3861)
!3929 = !DILocation(line: 98, column: 12, scope: !3861)
!3930 = !DILocation(line: 103, column: 7, scope: !3861)
!3931 = !DILocation(line: 72, column: 19, scope: !3921)
!3932 = !DILocation(line: 103, column: 19, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 103, column: 7)
!3934 = !DILocation(line: 105, column: 13, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3933, file: !3862, line: 104, column: 5)
!3936 = !DILocation(line: 107, column: 5, scope: !3935)
!3937 = !DILocation(line: 110, column: 1, scope: !3861)
!3938 = distinct !DISubprogram(name: "rpl_fflush", scope: !3939, file: !3939, line: 127, type: !3940, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !625, variables: !3982)
!3939 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!25, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3944, file: !844, line: 242, baseType: !25, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3944, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3944, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3944, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3944, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3944, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3944, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3944, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3944, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3944, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3944, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3944, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3944, file: !844, line: 260, baseType: !3959, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !3961)
!3961 = !{!3962, !3963, !3965}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3960, file: !844, line: 157, baseType: !3959, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3960, file: !844, line: 158, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3960, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3944, file: !844, line: 262, baseType: !3964, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3944, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3944, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3944, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3944, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3944, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3944, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3944, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3944, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3944, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3944, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3944, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3944, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3944, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3944, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3944, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "stream", arg: 1, scope: !3938, file: !3939, line: 127, type: !3942)
!3984 = !DILocation(line: 127, column: 19, scope: !3938)
!3985 = !DILocation(line: 148, column: 14, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 148, column: 7)
!3987 = !DILocation(line: 148, column: 22, scope: !3986)
!3988 = !DILocation(line: 148, column: 27, scope: !3986)
!3989 = !DILocation(line: 148, column: 7, scope: !3938)
!3990 = !DILocation(line: 149, column: 12, scope: !3986)
!3991 = !DILocation(line: 149, column: 5, scope: !3986)
!3992 = !DILocalVariable(name: "fp", arg: 1, scope: !3993, file: !3939, line: 40, type: !3942)
!3993 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3939, file: !3939, line: 40, type: !3994, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !625, variables: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3942}
!3996 = !{!3992}
!3997 = !DILocation(line: 40, column: 48, scope: !3993, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 153, column: 3, scope: !3938)
!3999 = !DILocation(line: 42, column: 11, scope: !4000, inlinedAt: !3998)
!4000 = distinct !DILexicalBlock(scope: !3993, file: !3939, line: 42, column: 7)
!4001 = !DILocation(line: 42, column: 18, scope: !4000, inlinedAt: !3998)
!4002 = !DILocation(line: 42, column: 7, scope: !3993, inlinedAt: !3998)
!4003 = !DILocation(line: 44, column: 5, scope: !4000, inlinedAt: !3998)
!4004 = !DILocation(line: 155, column: 10, scope: !3938)
!4005 = !DILocation(line: 155, column: 3, scope: !3938)
!4006 = !DILocation(line: 229, column: 1, scope: !3938)
!4007 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4008, file: !4008, line: 28, type: !4009, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !4052)
!4008 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!25, !4011, !4051, !25}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !842, line: 7, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !844, line: 241, size: 1728, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4013, file: !844, line: 242, baseType: !25, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4013, file: !844, line: 247, baseType: !50, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4013, file: !844, line: 248, baseType: !50, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4013, file: !844, line: 249, baseType: !50, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4013, file: !844, line: 250, baseType: !50, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4013, file: !844, line: 251, baseType: !50, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4013, file: !844, line: 252, baseType: !50, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4013, file: !844, line: 253, baseType: !50, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4013, file: !844, line: 254, baseType: !50, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4013, file: !844, line: 256, baseType: !50, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4013, file: !844, line: 257, baseType: !50, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4013, file: !844, line: 258, baseType: !50, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4013, file: !844, line: 260, baseType: !4028, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !844, line: 156, size: 192, elements: !4030)
!4030 = !{!4031, !4032, !4034}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4029, file: !844, line: 157, baseType: !4028, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4029, file: !844, line: 158, baseType: !4033, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4029, file: !844, line: 162, baseType: !25, size: 32, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4013, file: !844, line: 262, baseType: !4033, size: 64, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4013, file: !844, line: 264, baseType: !25, size: 32, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4013, file: !844, line: 268, baseType: !25, size: 32, offset: 928)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4013, file: !844, line: 270, baseType: !870, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4013, file: !844, line: 274, baseType: !93, size: 16, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4013, file: !844, line: 275, baseType: !874, size: 8, offset: 1040)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4013, file: !844, line: 276, baseType: !876, size: 8, offset: 1048)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4013, file: !844, line: 280, baseType: !878, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4013, file: !844, line: 289, baseType: !881, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4013, file: !844, line: 297, baseType: !49, size: 64, offset: 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4013, file: !844, line: 298, baseType: !49, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4013, file: !844, line: 299, baseType: !49, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4013, file: !844, line: 300, baseType: !49, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4013, file: !844, line: 302, baseType: !94, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4013, file: !844, line: 303, baseType: !25, size: 32, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4013, file: !844, line: 305, baseType: !889, size: 160, offset: 1568)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1163, line: 57, baseType: !870)
!4052 = !{!4053, !4054, !4055, !4056}
!4053 = !DILocalVariable(name: "fp", arg: 1, scope: !4007, file: !4008, line: 28, type: !4011)
!4054 = !DILocalVariable(name: "offset", arg: 2, scope: !4007, file: !4008, line: 28, type: !4051)
!4055 = !DILocalVariable(name: "whence", arg: 3, scope: !4007, file: !4008, line: 28, type: !25)
!4056 = !DILocalVariable(name: "pos", scope: !4057, file: !4008, line: 116, type: !4051)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !4008, line: 112, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 51, column: 7)
!4059 = !DILocation(line: 28, column: 15, scope: !4007)
!4060 = !DILocation(line: 28, column: 25, scope: !4007)
!4061 = !DILocation(line: 28, column: 37, scope: !4007)
!4062 = !DILocation(line: 51, column: 11, scope: !4058)
!4063 = !DILocation(line: 51, column: 31, scope: !4058)
!4064 = !DILocation(line: 51, column: 24, scope: !4058)
!4065 = !DILocation(line: 52, column: 7, scope: !4058)
!4066 = !DILocation(line: 52, column: 14, scope: !4058)
!4067 = !{!897, !646, i64 40}
!4068 = !DILocation(line: 52, column: 35, scope: !4058)
!4069 = !{!897, !646, i64 32}
!4070 = !DILocation(line: 52, column: 28, scope: !4058)
!4071 = !DILocation(line: 53, column: 7, scope: !4058)
!4072 = !DILocation(line: 53, column: 14, scope: !4058)
!4073 = !{!897, !646, i64 72}
!4074 = !DILocation(line: 53, column: 28, scope: !4058)
!4075 = !DILocation(line: 51, column: 7, scope: !4007)
!4076 = !DILocation(line: 116, column: 26, scope: !4057)
!4077 = !DILocation(line: 116, column: 19, scope: !4057)
!4078 = !DILocation(line: 116, column: 13, scope: !4057)
!4079 = !DILocation(line: 117, column: 15, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4057, file: !4008, line: 117, column: 11)
!4081 = !DILocation(line: 117, column: 11, scope: !4057)
!4082 = !DILocation(line: 127, column: 11, scope: !4057)
!4083 = !DILocation(line: 127, column: 18, scope: !4057)
!4084 = !DILocation(line: 128, column: 11, scope: !4057)
!4085 = !DILocation(line: 128, column: 19, scope: !4057)
!4086 = !{!897, !898, i64 144}
!4087 = !DILocation(line: 159, column: 7, scope: !4057)
!4088 = !DILocation(line: 161, column: 10, scope: !4007)
!4089 = !DILocation(line: 161, column: 3, scope: !4007)
!4090 = !DILocation(line: 162, column: 1, scope: !4007)
