; ModuleID = 'coreutils-8.27/src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.32, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.56 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.81 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.82 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.93 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.112 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.113 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.114 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.116 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !588 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !592, metadata !593), !dbg !594
  %2 = icmp eq i32 %0, 0, !dbg !595
  br i1 %2, label %8, label %3, !dbg !597

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !598, !tbaa !600
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !598
  %6 = load i8*, i8** @program_name, align 8, !dbg !598, !tbaa !600
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !598
  br label %35, !dbg !598

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !604
  %10 = load i8*, i8** @program_name, align 8, !dbg !604, !tbaa !600
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !604
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !606
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !606
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !607
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !600
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #11, !dbg !607
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !608
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !600
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #11, !dbg !608
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !517, metadata !593) #11, !dbg !609
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !517, metadata !593) #11, !dbg !609
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !611
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !611
  %22 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !612
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !525, metadata !593) #11, !dbg !613
  %23 = icmp eq i8* %22, null, !dbg !614
  br i1 %23, label %30, label %24, !dbg !616

; <label>:24:                                     ; preds = %8
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !617
  %26 = icmp eq i32 %25, 0, !dbg !617
  br i1 %26, label %30, label %27, !dbg !618

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !619
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !619
  br label %30, !dbg !621

; <label>:30:                                     ; preds = %8, %24, %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !622
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !622
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !623
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !623
  br label %35

; <label>:35:                                     ; preds = %30, %3
  tail call void @exit(i32 %0) #15, !dbg !624
  unreachable, !dbg !624
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !625 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !629, metadata !593), !dbg !631
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !630, metadata !593), !dbg !632
  %3 = load i8*, i8** %1, align 8, !dbg !633, !tbaa !600
  tail call void @set_program_name(i8* %3) #11, !dbg !634
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !635
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !636
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !637
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !638
  %8 = load i8*, i8** @Version, align 8, !dbg !639, !tbaa !600
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !640
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option* null, i32* null) #11, !dbg !641
  %10 = icmp eq i32 %9, -1, !dbg !643
  br i1 %10, label %12, label %11, !dbg !644

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !645
  unreachable, !dbg !645

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !646, !tbaa !647
  %14 = sub nsw i32 %0, %13, !dbg !649
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
  ], !dbg !650

; <label>:15:                                     ; preds = %12
  tail call fastcc void @users(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1), !dbg !651
  br label %28, !dbg !653

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %13 to i64, !dbg !654
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !654
  %19 = load i8*, i8** %18, align 8, !dbg !654, !tbaa !600
  tail call fastcc void @users(i8* %19, i32 0), !dbg !655
  br label %28, !dbg !656

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !657
  %22 = load i32, i32* @optind, align 4, !dbg !658, !tbaa !647
  %23 = add nsw i32 %22, 1, !dbg !659
  %24 = sext i32 %23 to i64, !dbg !660
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !660
  %26 = load i8*, i8** %25, align 8, !dbg !660, !tbaa !600
  %27 = tail call i8* @quote(i8* %26) #11, !dbg !661
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #11, !dbg !662
  tail call void @usage(i32 1) #16, !dbg !663
  unreachable, !dbg !663

; <label>:28:                                     ; preds = %16, %15
  ret i32 0, !dbg !664
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @users(i8*, i32) unnamed_addr #6 !dbg !665 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !669, metadata !593), !dbg !711
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !670, metadata !593), !dbg !712
  %5 = bitcast i64* %3 to i8*, !dbg !713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !713
  %6 = bitcast %struct.utmpx** %4 to i8*, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11, !dbg !714
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !671, metadata !593), !dbg !715
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %4, i64 0, metadata !672, metadata !593), !dbg !716
  %7 = call i32 @read_utmp(i8* %0, i64* nonnull %3, %struct.utmpx** nonnull %4, i32 %1) #11, !dbg !717
  %8 = icmp eq i32 %7, 0, !dbg !719
  br i1 %8, label %13, label %9, !dbg !720

; <label>:9:                                      ; preds = %2
  %10 = tail call i32* @__errno_location() #17, !dbg !721
  %11 = load i32, i32* %10, align 4, !dbg !721, !tbaa !647
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !721
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %12) #11, !dbg !721
  unreachable, !dbg !721

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !722, !tbaa !723
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !671, metadata !593), !dbg !715
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !672, metadata !593), !dbg !716
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !725, metadata !593) #11, !dbg !744
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !732, metadata !593) #11, !dbg !746
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !747, metadata !593) #11, !dbg !753
  call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !752, metadata !593) #11, !dbg !755
  %15 = icmp ugt i64 %14, 1152921504606846975, !dbg !756
  br i1 %15, label %16, label %17, !dbg !758

; <label>:16:                                     ; preds = %13
  call void @xalloc_die() #15, !dbg !759
  unreachable, !dbg !759

; <label>:17:                                     ; preds = %13
  %18 = load %struct.utmpx*, %struct.utmpx** %4, align 8, !dbg !760, !tbaa !600
  %19 = shl i64 %14, 3, !dbg !761
  %20 = call noalias i8* @xmalloc(i64 %19) #11, !dbg !762
  %21 = bitcast i8* %20 to i8**, !dbg !763
  call void @llvm.dbg.value(metadata i8** %21, i64 0, metadata !733, metadata !593) #11, !dbg !764
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !735, metadata !593) #11, !dbg !765
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !725, metadata !593) #11, !dbg !744
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !732, metadata !593) #11, !dbg !746
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !735, metadata !593) #11, !dbg !765
  %22 = icmp eq i64 %14, 0, !dbg !766
  br i1 %22, label %24, label %23, !dbg !766

; <label>:23:                                     ; preds = %17
  br label %25, !dbg !767

; <label>:24:                                     ; preds = %17
  call void @qsort(i8* %20, i64 0, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !768
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !734, metadata !593) #11, !dbg !769
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !734, metadata !593) #11, !dbg !769
  br label %78, !dbg !770

; <label>:25:                                     ; preds = %23, %41
  %26 = phi i64 [ %29, %41 ], [ %14, %23 ]
  %27 = phi %struct.utmpx* [ %43, %41 ], [ %18, %23 ]
  %28 = phi i64 [ %42, %41 ], [ 0, %23 ]
  %29 = add i64 %26, -1, !dbg !767
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !735, metadata !593) #11, !dbg !765
  call void @llvm.dbg.value(metadata %struct.utmpx* %27, i64 0, metadata !732, metadata !593) #11, !dbg !746
  %30 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 0, i32 4, i64 0, !dbg !771
  %31 = load i8, i8* %30, align 4, !dbg !771, !tbaa !772
  %32 = icmp eq i8 %31, 0, !dbg !771
  br i1 %32, label %41, label %33, !dbg !771

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 0, i32 0, !dbg !771
  %35 = load i16, i16* %34, align 4, !dbg !771, !tbaa !773
  %36 = icmp eq i16 %35, 7, !dbg !771
  br i1 %36, label %37, label %41, !dbg !778

; <label>:37:                                     ; preds = %33
  %38 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %27) #11, !dbg !779
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !736, metadata !593) #11, !dbg !780
  %39 = getelementptr inbounds i8*, i8** %21, i64 %28, !dbg !781
  store i8* %38, i8** %39, align 8, !dbg !782, !tbaa !600
  %40 = add i64 %28, 1, !dbg !783
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !735, metadata !593) #11, !dbg !765
  br label %41, !dbg !784

; <label>:41:                                     ; preds = %37, %33, %25
  %42 = phi i64 [ %40, %37 ], [ %28, %33 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !735, metadata !593) #11, !dbg !765
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 1, !dbg !785
  call void @llvm.dbg.value(metadata %struct.utmpx* %43, i64 0, metadata !732, metadata !593) #11, !dbg !746
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !725, metadata !593) #11, !dbg !744
  call void @llvm.dbg.value(metadata %struct.utmpx* %43, i64 0, metadata !732, metadata !593) #11, !dbg !746
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !735, metadata !593) #11, !dbg !765
  %44 = icmp eq i64 %29, 0, !dbg !766
  br i1 %44, label %45, label %25, !dbg !766, !llvm.loop !786

; <label>:45:                                     ; preds = %41
  call void @qsort(i8* %20, i64 %42, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !768
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !734, metadata !593) #11, !dbg !769
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !734, metadata !593) #11, !dbg !769
  %46 = icmp eq i64 %42, 0, !dbg !789
  br i1 %46, label %78, label %47, !dbg !770

; <label>:47:                                     ; preds = %45
  %48 = add i64 %42, -1
  br label %49, !dbg !770

; <label>:49:                                     ; preds = %68, %47
  %50 = phi i64 [ 0, %47 ], [ %69, %68 ]
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !734, metadata !593) #11, !dbg !769
  %51 = icmp ult i64 %50, %48, !dbg !790
  %52 = getelementptr inbounds i8*, i8** %21, i64 %50, !dbg !791
  %53 = load i8*, i8** %52, align 8, !dbg !791, !tbaa !600
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !600
  %55 = call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #11, !dbg !791
  %56 = select i1 %51, i32 32, i32 10, !dbg !792
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !793, metadata !593) #11, !dbg !799
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !600
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 5, !dbg !801
  %59 = load i8*, i8** %58, align 8, !dbg !801, !tbaa !802
  %60 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 6, !dbg !801
  %61 = load i8*, i8** %60, align 8, !dbg !801, !tbaa !804
  %62 = icmp ult i8* %59, %61, !dbg !801
  br i1 %62, label %65, label %63, !dbg !801, !prof !805

; <label>:63:                                     ; preds = %49
  %64 = call i32 @__overflow(%struct._IO_FILE* %57, i32 %56) #11, !dbg !801
  br label %68, !dbg !801

; <label>:65:                                     ; preds = %49
  %66 = trunc i32 %56 to i8, !dbg !801
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !801
  store i8* %67, i8** %58, align 8, !dbg !801, !tbaa !802
  store i8 %66, i8* %59, align 1, !dbg !801, !tbaa !772
  br label %68, !dbg !801

; <label>:68:                                     ; preds = %65, %63
  %69 = add nuw i64 %50, 1, !dbg !806
  call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !734, metadata !593) #11, !dbg !769
  call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !734, metadata !593) #11, !dbg !769
  %70 = icmp eq i64 %69, %42, !dbg !789
  br i1 %70, label %71, label %49, !dbg !770, !llvm.loop !807

; <label>:71:                                     ; preds = %68
  br label %72, !dbg !810

; <label>:72:                                     ; preds = %71, %72
  %73 = phi i64 [ %76, %72 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !734, metadata !593) #11, !dbg !769
  %74 = getelementptr inbounds i8*, i8** %21, i64 %73, !dbg !810
  %75 = load i8*, i8** %74, align 8, !dbg !810, !tbaa !600
  call void @free(i8* %75) #11, !dbg !813
  %76 = add nuw i64 %73, 1, !dbg !814
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !734, metadata !593) #11, !dbg !769
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !734, metadata !593) #11, !dbg !769
  %77 = icmp eq i64 %76, %42, !dbg !815
  br i1 %77, label %78, label %72, !dbg !816, !llvm.loop !817

; <label>:78:                                     ; preds = %72, %24, %45
  call void @free(i8* %20) #11, !dbg !820
  %79 = bitcast %struct.utmpx** %4 to i8**, !dbg !821
  %80 = load i8*, i8** %79, align 8, !dbg !821, !tbaa !600
  call void @llvm.dbg.value(metadata %struct.utmpx** %4, i64 0, metadata !672, metadata !822), !dbg !716
  call void @free(i8* %80) #11, !dbg !823
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !824
  ret void, !dbg !824
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @userid_compare(i8* nocapture readonly, i8* nocapture readonly) #9 !dbg !825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !831, metadata !593), !dbg !835
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !832, metadata !593), !dbg !836
  %3 = bitcast i8* %0 to i8**, !dbg !837
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !833, metadata !593), !dbg !838
  %4 = bitcast i8* %1 to i8**, !dbg !839
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !834, metadata !593), !dbg !840
  %5 = load i8*, i8** %3, align 8, !dbg !841, !tbaa !600
  %6 = load i8*, i8** %4, align 8, !dbg !842, !tbaa !600
  %7 = tail call i32 @strcmp(i8* %5, i8* %6) #14, !dbg !843
  ret i32 %7, !dbg !844
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !845 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !847, metadata !593), !dbg !848
  store i8* %0, i8** @file_name, align 8, !dbg !849, !tbaa !600
  ret void, !dbg !850
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !851 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !855, metadata !593), !dbg !856
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !857, !tbaa !858
  ret void, !dbg !860
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !861 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868, !tbaa !600
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !869
  %3 = icmp eq i32 %2, 0, !dbg !870
  br i1 %3, label %21, label %4, !dbg !871

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !872, !tbaa !858, !range !873
  %6 = icmp eq i8 %5, 0, !dbg !872
  %7 = tail call i32* @__errno_location() #17, !dbg !874
  br i1 %6, label %11, label %8, !dbg !876

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !877, !tbaa !647
  %10 = icmp eq i32 %9, 32, !dbg !878
  br i1 %10, label %21, label %11, !dbg !879

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !865, metadata !593), !dbg !881
  %13 = load i8*, i8** @file_name, align 8, !dbg !882, !tbaa !600
  %14 = icmp eq i8* %13, null, !dbg !882
  %15 = load i32, i32* %7, align 4, !tbaa !647
  br i1 %14, label %18, label %16, !dbg !883

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !884
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !885
  br label %19, !dbg !885

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #11, !dbg !886
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !887, !tbaa !647
  tail call void @_exit(i32 %20) #15, !dbg !888
  unreachable, !dbg !888

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !889, !tbaa !600
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !891
  %24 = icmp eq i32 %23, 0, !dbg !892
  br i1 %24, label %27, label %25, !dbg !893

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !894, !tbaa !647
  tail call void @_exit(i32 %26) #15, !dbg !895
  unreachable, !dbg !895

; <label>:27:                                     ; preds = %21
  ret void, !dbg !896
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !897 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !902, metadata !593), !dbg !929
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !903, metadata !593), !dbg !930
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !904, metadata !593), !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !905, metadata !593), !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !906, metadata !593), !dbg !933
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !907, metadata !593), !dbg !934
  %8 = load i32, i32* @opterr, align 4, !dbg !935, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !909, metadata !593), !dbg !936
  store i32 0, i32* @opterr, align 4, !dbg !937, !tbaa !647
  %9 = icmp eq i32 %0, 2, !dbg !938
  br i1 %9, label %10, label %17, !dbg !939

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !940
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !908, metadata !593), !dbg !941
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !942

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !943
  br label %17, !dbg !944

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !945
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !945
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !910, metadata !593), !dbg !946
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !947
  call void @llvm.va_start(i8* nonnull %14), !dbg !947
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !948, !tbaa !600
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !949
  call void @exit(i32 0) #15, !dbg !950
  unreachable, !dbg !950

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !951, !tbaa !647
  store i32 0, i32* @optind, align 4, !dbg !952, !tbaa !647
  ret void, !dbg !953
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !954 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !956, metadata !593), !dbg !959
  %2 = icmp eq i8* %0, null, !dbg !960
  br i1 %2, label %3, label %6, !dbg !962

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !963, !tbaa !600
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !965
  tail call void @abort() #15, !dbg !966
  unreachable, !dbg !966

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !957, metadata !593), !dbg !968
  %8 = icmp eq i8* %7, null, !dbg !969
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !970
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !971
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !958, metadata !593), !dbg !972
  %11 = ptrtoint i8* %10 to i64, !dbg !973
  %12 = ptrtoint i8* %0 to i64, !dbg !973
  %13 = sub i64 %11, %12, !dbg !973
  %14 = icmp sgt i64 %13, 6, !dbg !975
  br i1 %14, label %15, label %24, !dbg !976

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !977
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #14, !dbg !978
  %18 = icmp eq i32 %17, 0, !dbg !979
  br i1 %18, label %19, label %24, !dbg !980

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !956, metadata !593), !dbg !959
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #14, !dbg !981
  %21 = icmp eq i32 %20, 0, !dbg !984
  br i1 %21, label %22, label %24, !dbg !985

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !956, metadata !593), !dbg !959
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !988, !tbaa !600
  br label %24, !dbg !989

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !956, metadata !593), !dbg !959
  store i8* %25, i8** @program_name, align 8, !dbg !990, !tbaa !600
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !991, !tbaa !600
  ret void, !dbg !992
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !993 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !998, metadata !593), !dbg !1001
  %2 = tail call i32* @__errno_location() #17, !dbg !1002
  %3 = load i32, i32* %2, align 4, !dbg !1002, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !999, metadata !593), !dbg !1003
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1004
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1004
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1004
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1005
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1000, metadata !593), !dbg !1006
  store i32 %3, i32* %2, align 4, !dbg !1007, !tbaa !647
  ret %struct.quoting_options* %8, !dbg !1008
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1009 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1015, metadata !593), !dbg !1016
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1017
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1017
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1018
  %5 = load i32, i32* %4, align 8, !dbg !1018, !tbaa !1019
  ret i32 %5, !dbg !1021
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1022 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1026, metadata !593), !dbg !1028
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1027, metadata !593), !dbg !1029
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1030
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1030
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1031
  store i32 %1, i32* %5, align 8, !dbg !1032, !tbaa !1019
  ret void, !dbg !1033
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1034 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1038, metadata !593), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1039, metadata !593), !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1040, metadata !593), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1041, metadata !593), !dbg !1049
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1050
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1050
  %6 = lshr i8 %1, 5, !dbg !1051
  %7 = zext i8 %6 to i64, !dbg !1051
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1042, metadata !593), !dbg !1053
  %9 = and i8 %1, 31, !dbg !1054
  %10 = zext i8 %9 to i32, !dbg !1055
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1044, metadata !593), !dbg !1056
  %11 = load i32, i32* %8, align 4, !dbg !1057, !tbaa !647
  %12 = lshr i32 %11, %10, !dbg !1058
  %13 = and i32 %12, 1, !dbg !1059
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1045, metadata !593), !dbg !1060
  %14 = and i32 %2, 1, !dbg !1061
  %15 = xor i32 %13, %14, !dbg !1062
  %16 = shl i32 %15, %10, !dbg !1063
  %17 = xor i32 %16, %11, !dbg !1064
  store i32 %17, i32* %8, align 4, !dbg !1064, !tbaa !647
  ret i32 %13, !dbg !1065
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1070, metadata !593), !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1071, metadata !593), !dbg !1074
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1075
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1070, metadata !593), !dbg !1073
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1070, metadata !593), !dbg !1073
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1078
  %6 = load i32, i32* %5, align 4, !dbg !1078, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1072, metadata !593), !dbg !1080
  store i32 %1, i32* %5, align 4, !dbg !1081, !tbaa !1079
  ret i32 %6, !dbg !1082
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1083 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1087, metadata !593), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1088, metadata !593), !dbg !1091
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1089, metadata !593), !dbg !1092
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1087, metadata !593), !dbg !1090
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !593), !dbg !1090
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1096
  store i32 10, i32* %6, align 8, !dbg !1097, !tbaa !1019
  %7 = icmp ne i8* %1, null, !dbg !1098
  %8 = icmp ne i8* %2, null, !dbg !1100
  %9 = and i1 %7, %8, !dbg !1101
  br i1 %9, label %11, label %10, !dbg !1101

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1102
  unreachable, !dbg !1102

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1103
  store i8* %1, i8** %12, align 8, !dbg !1104, !tbaa !1105
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1106
  store i8* %2, i8** %13, align 8, !dbg !1107, !tbaa !1108
  ret void, !dbg !1109
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1110 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1114, metadata !593), !dbg !1122
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1115, metadata !593), !dbg !1123
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1116, metadata !593), !dbg !1124
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1117, metadata !593), !dbg !1125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1118, metadata !593), !dbg !1126
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1127
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1119, metadata !593), !dbg !1128
  %8 = tail call i32* @__errno_location() #17, !dbg !1129
  %9 = load i32, i32* %8, align 4, !dbg !1129, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1120, metadata !593), !dbg !1130
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1131
  %11 = load i32, i32* %10, align 8, !dbg !1131, !tbaa !1019
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1132
  %13 = load i32, i32* %12, align 4, !dbg !1132, !tbaa !1079
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1133
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1134
  %16 = load i8*, i8** %15, align 8, !dbg !1134, !tbaa !1105
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1135
  %18 = load i8*, i8** %17, align 8, !dbg !1135, !tbaa !1108
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1136
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1121, metadata !593), !dbg !1137
  store i32 %9, i32* %8, align 4, !dbg !1138, !tbaa !647
  ret i64 %19, !dbg !1139
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1140 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1146, metadata !593), !dbg !1207
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1147, metadata !593), !dbg !1208
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1148, metadata !593), !dbg !1209
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1149, metadata !593), !dbg !1210
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1150, metadata !593), !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1151, metadata !593), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1152, metadata !593), !dbg !1213
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1153, metadata !593), !dbg !1214
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1154, metadata !593), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1156, metadata !593), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1157, metadata !593), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1158, metadata !593), !dbg !1218
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1159, metadata !593), !dbg !1219
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1160, metadata !593), !dbg !1220
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1221
  %14 = icmp eq i64 %13, 1, !dbg !1222
  %15 = lshr i32 %5, 1, !dbg !1223
  %16 = trunc i32 %15 to i8, !dbg !1223
  %17 = and i8 %16, 1, !dbg !1223
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1162, metadata !593), !dbg !1223
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1163, metadata !593), !dbg !1224
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1164, metadata !593), !dbg !1225
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1165, metadata !593), !dbg !1226
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1227

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1165, metadata !593), !dbg !1226
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1160, metadata !593), !dbg !1220
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1159, metadata !593), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1154, metadata !593), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1153, metadata !593), !dbg !1214
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1150, metadata !593), !dbg !1211
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
  ], !dbg !1228

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1150, metadata !593), !dbg !1211
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1150, metadata !593), !dbg !1211
  br label %94, !dbg !1229

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1150, metadata !593), !dbg !1211
  %43 = and i8 %36, 1, !dbg !1231
  %44 = icmp eq i8 %43, 0, !dbg !1231
  br i1 %44, label %45, label %94, !dbg !1229

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1233
  br i1 %46, label %94, label %47, !dbg !1236

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1233, !tbaa !772
  br label %94, !dbg !1233

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1153, metadata !593), !dbg !1214
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1154, metadata !593), !dbg !1215
  br label %51, !dbg !1242

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1154, metadata !593), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1153, metadata !593), !dbg !1214
  %54 = and i8 %36, 1, !dbg !1243
  %55 = icmp eq i8 %54, 0, !dbg !1243
  br i1 %55, label %56, label %72, !dbg !1245

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1156, metadata !593), !dbg !1216
  %57 = load i8, i8* %52, align 1, !dbg !1246, !tbaa !772
  %58 = icmp eq i8 %57, 0, !dbg !1249
  br i1 %58, label %72, label %59, !dbg !1249

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1250

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1158, metadata !593), !dbg !1218
  %64 = icmp ult i64 %63, %40, !dbg !1250
  br i1 %64, label %65, label %67, !dbg !1253

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1250
  store i8 %61, i8* %66, align 1, !dbg !1250, !tbaa !772
  br label %67, !dbg !1250

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1156, metadata !593), !dbg !1216
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1156, metadata !593), !dbg !1216
  %70 = load i8, i8* %69, align 1, !dbg !1246, !tbaa !772
  %71 = icmp eq i8 %70, 0, !dbg !1249
  br i1 %71, label %72, label %60, !dbg !1249, !llvm.loop !1255

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1160, metadata !593), !dbg !1220
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1158, metadata !593), !dbg !1218
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1159, metadata !593), !dbg !1219
  br label %94, !dbg !1258

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1160, metadata !593), !dbg !1220
  br label %76, !dbg !1259

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1160, metadata !593), !dbg !1220
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1162, metadata !593), !dbg !1223
  br label %78, !dbg !1260

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1160, metadata !593), !dbg !1220
  %81 = and i8 %80, 1, !dbg !1261
  %82 = icmp eq i8 %81, 0, !dbg !1261
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1160, metadata !593), !dbg !1220
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1263
  br label %84, !dbg !1263

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1160, metadata !593), !dbg !1220
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1150, metadata !593), !dbg !1211
  %87 = and i8 %86, 1, !dbg !1264
  %88 = icmp eq i8 %87, 0, !dbg !1264
  br i1 %88, label %89, label %94, !dbg !1266

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1267
  br i1 %90, label %94, label %91, !dbg !1270

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1267, !tbaa !772
  br label %94, !dbg !1267

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1162, metadata !593), !dbg !1223
  br label %94, !dbg !1271

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1272
  unreachable, !dbg !1272

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1162, metadata !593), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1160, metadata !593), !dbg !1220
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1159, metadata !593), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1154, metadata !593), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1153, metadata !593), !dbg !1214
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1150, metadata !593), !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1155, metadata !593), !dbg !1273
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
  br label %122, !dbg !1274

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1165, metadata !593), !dbg !1226
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1155, metadata !593), !dbg !1273
  %131 = icmp eq i64 %126, -1, !dbg !1275
  br i1 %131, label %134, label %132, !dbg !1276

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1277
  br i1 %133, label %590, label %138, !dbg !1278

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1279
  %136 = load i8, i8* %135, align 1, !dbg !1279, !tbaa !772
  %137 = icmp eq i8 %136, 0, !dbg !1280
  br i1 %137, label %590, label %138, !dbg !1278

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1171, metadata !593), !dbg !1281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1173, metadata !593), !dbg !1283
  br i1 %108, label %139, label %154, !dbg !1284

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1286
  %141 = and i1 %109, %131, !dbg !1287
  br i1 %141, label %142, label %144, !dbg !1287

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1149, metadata !593), !dbg !1210
  br label %144, !dbg !1289

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1149, metadata !593), !dbg !1210
  %146 = icmp ugt i64 %140, %145, !dbg !1290
  br i1 %146, label %154, label %147, !dbg !1291

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1292
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1293
  %150 = icmp ne i32 %149, 0, !dbg !1294
  %151 = or i1 %150, %111, !dbg !1295
  %152 = xor i1 %150, true, !dbg !1295
  %153 = zext i1 %152 to i8, !dbg !1295
  br i1 %151, label %154, label %635, !dbg !1295

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1171, metadata !593), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1149, metadata !593), !dbg !1210
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1296
  %158 = load i8, i8* %157, align 1, !dbg !1296, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1166, metadata !593), !dbg !1297
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
  ], !dbg !1298

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1299

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1300

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1172, metadata !593), !dbg !1282
  %162 = and i8 %127, 1, !dbg !1304
  %163 = icmp eq i8 %162, 0, !dbg !1304
  %164 = and i1 %113, %163, !dbg !1304
  br i1 %164, label %165, label %181, !dbg !1304

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1306
  br i1 %166, label %167, label %169, !dbg !1310

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1306
  store i8 39, i8* %168, align 1, !dbg !1306, !tbaa !772
  br label %169, !dbg !1306

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1156, metadata !593), !dbg !1216
  %171 = icmp ult i64 %170, %130, !dbg !1311
  br i1 %171, label %172, label %174, !dbg !1314

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1311
  store i8 36, i8* %173, align 1, !dbg !1311, !tbaa !772
  br label %174, !dbg !1311

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1156, metadata !593), !dbg !1216
  %176 = icmp ult i64 %175, %130, !dbg !1315
  br i1 %176, label %177, label %179, !dbg !1318

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1315
  store i8 39, i8* %178, align 1, !dbg !1315, !tbaa !772
  br label %179, !dbg !1315

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %181, !dbg !1319

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1156, metadata !593), !dbg !1216
  %184 = icmp ult i64 %182, %130, !dbg !1320
  br i1 %184, label %185, label %187, !dbg !1323

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1320
  store i8 92, i8* %186, align 1, !dbg !1320, !tbaa !772
  br label %187, !dbg !1320

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1156, metadata !593), !dbg !1216
  br i1 %105, label %189, label %470, !dbg !1324

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1326
  %191 = icmp ult i64 %190, %155, !dbg !1327
  br i1 %191, label %192, label %470, !dbg !1328

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1329
  %194 = load i8, i8* %193, align 1, !dbg !1329, !tbaa !772
  %195 = add i8 %194, -48, !dbg !1330
  %196 = icmp ult i8 %195, 10, !dbg !1330
  br i1 %196, label %197, label %470, !dbg !1330

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1331
  br i1 %198, label %199, label %201, !dbg !1335

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1331
  store i8 48, i8* %200, align 1, !dbg !1331, !tbaa !772
  br label %201, !dbg !1331

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1156, metadata !593), !dbg !1216
  %203 = icmp ult i64 %202, %130, !dbg !1336
  br i1 %203, label %204, label %206, !dbg !1339

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1336
  store i8 48, i8* %205, align 1, !dbg !1336, !tbaa !772
  br label %206, !dbg !1336

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1156, metadata !593), !dbg !1216
  br label %470, !dbg !1340

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1341

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1342

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1343

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1345

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1347
  %214 = icmp ult i64 %213, %155, !dbg !1348
  br i1 %214, label %215, label %470, !dbg !1349

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1350
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1351
  %218 = load i8, i8* %217, align 1, !dbg !1351, !tbaa !772
  %219 = icmp eq i8 %218, 63, !dbg !1352
  br i1 %219, label %220, label %470, !dbg !1353

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1354
  %222 = load i8, i8* %221, align 1, !dbg !1354, !tbaa !772
  %223 = sext i8 %222 to i32, !dbg !1354
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
  ], !dbg !1355

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1356

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1155, metadata !593), !dbg !1273
  %226 = icmp ult i64 %124, %130, !dbg !1358
  br i1 %226, label %227, label %229, !dbg !1361

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1358
  store i8 63, i8* %228, align 1, !dbg !1358, !tbaa !772
  br label %229, !dbg !1358

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1156, metadata !593), !dbg !1216
  %231 = icmp ult i64 %230, %130, !dbg !1362
  br i1 %231, label %232, label %234, !dbg !1365

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1362
  store i8 34, i8* %233, align 1, !dbg !1362, !tbaa !772
  br label %234, !dbg !1362

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1156, metadata !593), !dbg !1216
  %236 = icmp ult i64 %235, %130, !dbg !1366
  br i1 %236, label %237, label %239, !dbg !1369

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1366
  store i8 34, i8* %238, align 1, !dbg !1366, !tbaa !772
  br label %239, !dbg !1366

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1156, metadata !593), !dbg !1216
  %241 = icmp ult i64 %240, %130, !dbg !1370
  br i1 %241, label %242, label %244, !dbg !1373

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1370
  store i8 63, i8* %243, align 1, !dbg !1370, !tbaa !772
  br label %244, !dbg !1370

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1156, metadata !593), !dbg !1216
  br label %470, !dbg !1374

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1170, metadata !593), !dbg !1375
  br label %256, !dbg !1376

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1170, metadata !593), !dbg !1375
  br label %256, !dbg !1377

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1170, metadata !593), !dbg !1375
  br label %254, !dbg !1378

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1170, metadata !593), !dbg !1375
  br label %254, !dbg !1379

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1170, metadata !593), !dbg !1375
  br label %256, !dbg !1380

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1170, metadata !593), !dbg !1375
  br i1 %113, label %252, label %253, !dbg !1381

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1382

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1385

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1170, metadata !593), !dbg !1375
  br i1 %117, label %256, label %635, !dbg !1387

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1170, metadata !593), !dbg !1375
  br i1 %104, label %497, label %470, !dbg !1389

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1390
  br i1 %259, label %260, label %265, !dbg !1392

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1393, !tbaa !772
  %262 = icmp ne i8 %261, 0, !dbg !1394
  %263 = icmp ne i64 %123, 0, !dbg !1395
  %264 = or i1 %263, %262, !dbg !1397
  br i1 %264, label %470, label %271, !dbg !1397

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1398
  %267 = icmp ne i64 %123, 0, !dbg !1395
  %268 = or i1 %267, %266, !dbg !1392
  br i1 %268, label %470, label %271, !dbg !1392

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1395
  br i1 %270, label %271, label %470, !dbg !1399

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1173, metadata !593), !dbg !1283
  br label %272, !dbg !1400

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1173, metadata !593), !dbg !1283
  br i1 %117, label %470, label %635, !dbg !1401

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1173, metadata !593), !dbg !1283
  br i1 %113, label %275, label %470, !dbg !1403

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1404

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1407
  %278 = icmp ne i64 %125, 0, !dbg !1409
  %279 = or i1 %278, %277, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1147, metadata !593), !dbg !1208
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1410
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1157, metadata !593), !dbg !1217
  %282 = icmp ult i64 %124, %281, !dbg !1411
  br i1 %282, label %283, label %285, !dbg !1414

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1411
  store i8 39, i8* %284, align 1, !dbg !1411, !tbaa !772
  br label %285, !dbg !1411

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1156, metadata !593), !dbg !1216
  %287 = icmp ult i64 %286, %281, !dbg !1415
  br i1 %287, label %288, label %290, !dbg !1418

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1415
  store i8 92, i8* %289, align 1, !dbg !1415, !tbaa !772
  br label %290, !dbg !1415

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1156, metadata !593), !dbg !1216
  %292 = icmp ult i64 %291, %281, !dbg !1419
  br i1 %292, label %293, label %295, !dbg !1422

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1419
  store i8 39, i8* %294, align 1, !dbg !1419, !tbaa !772
  br label %295, !dbg !1419

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %470, !dbg !1423

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1424

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1174, metadata !593), !dbg !1425
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1426
  %300 = load i16*, i16** %299, align 8, !dbg !1426, !tbaa !600
  %301 = zext i8 %158 to i64, !dbg !1426
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1426
  %303 = load i16, i16* %302, align 2, !dbg !1426, !tbaa !1428
  %304 = lshr i16 %303, 14, !dbg !1429
  %305 = trunc i16 %304 to i8, !dbg !1429
  %306 = and i8 %305, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1177, metadata !593), !dbg !1430
  br label %362, !dbg !1431

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1432
  store i64 0, i64* %10, align 8, !dbg !1433
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1177, metadata !593), !dbg !1430
  %308 = icmp eq i64 %155, -1, !dbg !1434
  br i1 %308, label %309, label %311, !dbg !1436

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1149, metadata !593), !dbg !1210
  br label %311, !dbg !1438

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1149, metadata !593), !dbg !1210
  br label %313, !dbg !1439, !llvm.loop !1440

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1442
  %316 = add i64 %314, %123, !dbg !1443
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1444
  %318 = sub i64 %312, %316, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1178, metadata !593), !dbg !1446
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1193, metadata !593), !dbg !1447
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1196, metadata !593), !dbg !1449
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1450

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1174, metadata !593), !dbg !1425
  %321 = icmp ugt i64 %312, %316, !dbg !1451
  br i1 %321, label %322, label %347, !dbg !1453

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1454

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1174, metadata !593), !dbg !1425
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1454
  %327 = load i8, i8* %326, align 1, !dbg !1454, !tbaa !772
  %328 = icmp eq i8 %327, 0, !dbg !1453
  br i1 %328, label %347, label %329, !dbg !1455

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1174, metadata !593), !dbg !1425
  %331 = add i64 %330, %123, !dbg !1457
  %332 = icmp ult i64 %331, %312, !dbg !1451
  br i1 %332, label %323, label %347, !dbg !1453, !llvm.loop !1458

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1459
  %335 = and i1 %115, %334, !dbg !1462
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1197, metadata !593), !dbg !1463
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1197, metadata !593), !dbg !1463
  br i1 %335, label %336, label %350, !dbg !1462

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1464

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1197, metadata !593), !dbg !1463
  %339 = add i64 %338, %316, !dbg !1464
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1465
  %341 = load i8, i8* %340, align 1, !dbg !1465, !tbaa !772
  %342 = sext i8 %341 to i32, !dbg !1465
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1466

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1197, metadata !593), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1197, metadata !593), !dbg !1463
  %345 = icmp ult i64 %344, %319, !dbg !1459
  br i1 %345, label %337, label %350, !dbg !1468, !llvm.loop !1469

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1471

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1471
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1472, !tbaa !647
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1193, metadata !593), !dbg !1447
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1474
  %353 = icmp eq i32 %352, 0, !dbg !1474
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1177, metadata !593), !dbg !1430
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1475
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1177, metadata !593), !dbg !1430
  %355 = add i64 %319, %314, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1178, metadata !593), !dbg !1446
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1477
  %357 = icmp eq i32 %356, 0, !dbg !1478
  br i1 %357, label %313, label %358, !dbg !1479, !llvm.loop !1440

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1480
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1471
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1480
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1177, metadata !593), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1174, metadata !593), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1149, metadata !593), !dbg !1210
  %366 = and i8 %365, 1, !dbg !1481
  %367 = icmp ne i8 %366, 0, !dbg !1481
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1173, metadata !593), !dbg !1283
  %368 = icmp ult i64 %364, 2, !dbg !1482
  %369 = or i1 %367, %112, !dbg !1483
  %370 = and i1 %368, %369, !dbg !1484
  br i1 %370, label %470, label %371, !dbg !1484

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1204, metadata !593), !dbg !1486
  br label %373, !dbg !1487

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1171, metadata !593), !dbg !1281
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1155, metadata !593), !dbg !1273
  br i1 %369, label %426, label %380, !dbg !1488

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1493

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1172, metadata !593), !dbg !1282
  %382 = and i8 %376, 1, !dbg !1496
  %383 = icmp eq i8 %382, 0, !dbg !1496
  %384 = and i1 %113, %383, !dbg !1496
  br i1 %384, label %385, label %401, !dbg !1496

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1498
  br i1 %386, label %387, label %389, !dbg !1502

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1498
  store i8 39, i8* %388, align 1, !dbg !1498, !tbaa !772
  br label %389, !dbg !1498

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1156, metadata !593), !dbg !1216
  %391 = icmp ult i64 %390, %130, !dbg !1503
  br i1 %391, label %392, label %394, !dbg !1506

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1503
  store i8 36, i8* %393, align 1, !dbg !1503, !tbaa !772
  br label %394, !dbg !1503

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1156, metadata !593), !dbg !1216
  %396 = icmp ult i64 %395, %130, !dbg !1507
  br i1 %396, label %397, label %399, !dbg !1510

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1507
  store i8 39, i8* %398, align 1, !dbg !1507, !tbaa !772
  br label %399, !dbg !1507

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %401, !dbg !1511

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1156, metadata !593), !dbg !1216
  %404 = icmp ult i64 %402, %130, !dbg !1512
  br i1 %404, label %405, label %407, !dbg !1515

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1512
  store i8 92, i8* %406, align 1, !dbg !1512, !tbaa !772
  br label %407, !dbg !1512

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1156, metadata !593), !dbg !1216
  %409 = icmp ult i64 %408, %130, !dbg !1516
  br i1 %409, label %410, label %414, !dbg !1519

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1516
  %412 = or i8 %411, 48, !dbg !1516
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1516
  store i8 %412, i8* %413, align 1, !dbg !1516, !tbaa !772
  br label %414, !dbg !1516

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1156, metadata !593), !dbg !1216
  %416 = icmp ult i64 %415, %130, !dbg !1520
  br i1 %416, label %417, label %422, !dbg !1523

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1520
  %419 = and i8 %418, 7, !dbg !1520
  %420 = or i8 %419, 48, !dbg !1520
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1520
  store i8 %420, i8* %421, align 1, !dbg !1520, !tbaa !772
  br label %422, !dbg !1520

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1156, metadata !593), !dbg !1216
  %424 = and i8 %377, 7, !dbg !1524
  %425 = or i8 %424, 48, !dbg !1525
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1166, metadata !593), !dbg !1297
  br label %435, !dbg !1526

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1527
  %428 = icmp eq i8 %427, 0, !dbg !1527
  br i1 %428, label %435, label %429, !dbg !1529

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1530
  br i1 %430, label %431, label %433, !dbg !1534

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1530
  store i8 92, i8* %432, align 1, !dbg !1530, !tbaa !772
  br label %433, !dbg !1530

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1171, metadata !593), !dbg !1281
  br label %435, !dbg !1535

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1171, metadata !593), !dbg !1281
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1156, metadata !593), !dbg !1216
  %441 = add i64 %374, 1, !dbg !1536
  %442 = icmp ugt i64 %372, %441, !dbg !1538
  br i1 %442, label %443, label %535, !dbg !1539

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1540
  %445 = icmp ne i8 %444, 0, !dbg !1540
  %446 = and i8 %440, 1, !dbg !1540
  %447 = icmp eq i8 %446, 0, !dbg !1540
  %448 = and i1 %445, %447, !dbg !1540
  br i1 %448, label %449, label %460, !dbg !1540

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1543
  br i1 %450, label %451, label %453, !dbg !1547

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1543
  store i8 39, i8* %452, align 1, !dbg !1543, !tbaa !772
  br label %453, !dbg !1543

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1156, metadata !593), !dbg !1216
  %455 = icmp ult i64 %454, %130, !dbg !1548
  br i1 %455, label %456, label %458, !dbg !1551

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1548
  store i8 39, i8* %457, align 1, !dbg !1548, !tbaa !772
  br label %458, !dbg !1548

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %460, !dbg !1552

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1156, metadata !593), !dbg !1216
  %463 = icmp ult i64 %461, %130, !dbg !1553
  br i1 %463, label %464, label %466, !dbg !1556

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1553
  store i8 %438, i8* %465, align 1, !dbg !1553, !tbaa !772
  br label %466, !dbg !1553

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1155, metadata !593), !dbg !1273
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1557
  %469 = load i8, i8* %468, align 1, !dbg !1557, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1166, metadata !593), !dbg !1297
  br label %373, !dbg !1558, !llvm.loop !1559

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1173, metadata !593), !dbg !1283
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1171, metadata !593), !dbg !1281
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1155, metadata !593), !dbg !1273
  br i1 %106, label %482, label %481, !dbg !1562

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1564

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1565

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1566
  %485 = zext i8 %484 to i64, !dbg !1566
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1567
  %487 = load i32, i32* %486, align 4, !dbg !1567, !tbaa !647
  %488 = and i8 %477, 31, !dbg !1568
  %489 = zext i8 %488 to i32, !dbg !1569
  %490 = shl i32 1, %489, !dbg !1570
  %491 = and i32 %487, %490, !dbg !1570
  %492 = icmp eq i32 %491, 0, !dbg !1570
  %493 = icmp eq i8 %156, 0, !dbg !1571
  %494 = and i1 %493, %492, !dbg !1572
  br i1 %494, label %535, label %497, !dbg !1572

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1571
  br i1 %496, label %535, label %497, !dbg !1573

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1173, metadata !593), !dbg !1283
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1155, metadata !593), !dbg !1273
  br i1 %111, label %507, label %635, !dbg !1574

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1172, metadata !593), !dbg !1282
  %508 = and i8 %502, 1, !dbg !1576
  %509 = icmp eq i8 %508, 0, !dbg !1576
  %510 = and i1 %113, %509, !dbg !1576
  br i1 %510, label %511, label %527, !dbg !1576

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1578
  br i1 %512, label %513, label %515, !dbg !1582

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1578
  store i8 39, i8* %514, align 1, !dbg !1578, !tbaa !772
  br label %515, !dbg !1578

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1156, metadata !593), !dbg !1216
  %517 = icmp ult i64 %516, %506, !dbg !1583
  br i1 %517, label %518, label %520, !dbg !1586

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1583
  store i8 36, i8* %519, align 1, !dbg !1583, !tbaa !772
  br label %520, !dbg !1583

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1156, metadata !593), !dbg !1216
  %522 = icmp ult i64 %521, %506, !dbg !1587
  br i1 %522, label %523, label %525, !dbg !1590

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1587
  store i8 39, i8* %524, align 1, !dbg !1587, !tbaa !772
  br label %525, !dbg !1587

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %527, !dbg !1591

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1156, metadata !593), !dbg !1216
  %530 = icmp ult i64 %528, %506, !dbg !1592
  br i1 %530, label %531, label %533, !dbg !1595

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1592
  store i8 92, i8* %532, align 1, !dbg !1592, !tbaa !772
  br label %533, !dbg !1592

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1173, metadata !593), !dbg !1283
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1155, metadata !593), !dbg !1273
  br label %562, !dbg !1596

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1173, metadata !593), !dbg !1283
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1172, metadata !593), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1166, metadata !593), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1155, metadata !593), !dbg !1273
  %546 = and i8 %540, 1, !dbg !1596
  %547 = icmp ne i8 %546, 0, !dbg !1596
  %548 = and i8 %543, 1, !dbg !1596
  %549 = icmp eq i8 %548, 0, !dbg !1596
  %550 = and i1 %547, %549, !dbg !1596
  br i1 %550, label %551, label %562, !dbg !1596

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1599
  br i1 %552, label %553, label %555, !dbg !1603

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1599
  store i8 39, i8* %554, align 1, !dbg !1599, !tbaa !772
  br label %555, !dbg !1599

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1156, metadata !593), !dbg !1216
  %557 = icmp ult i64 %556, %545, !dbg !1604
  br i1 %557, label %558, label %560, !dbg !1607

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1604
  store i8 39, i8* %559, align 1, !dbg !1604, !tbaa !772
  br label %560, !dbg !1604

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1163, metadata !593), !dbg !1224
  br label %562, !dbg !1608

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1156, metadata !593), !dbg !1216
  %572 = icmp ult i64 %570, %563, !dbg !1609
  br i1 %572, label %573, label %575, !dbg !1612

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1609
  store i8 %565, i8* %574, align 1, !dbg !1609, !tbaa !772
  br label %575, !dbg !1609

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1156, metadata !593), !dbg !1216
  %577 = and i8 %564, 1, !dbg !1613
  %578 = icmp eq i8 %577, 0, !dbg !1613
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1165, metadata !593), !dbg !1226
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1615
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1165, metadata !593), !dbg !1226
  br label %580, !dbg !1616

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1165, metadata !593), !dbg !1226
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1164, metadata !593), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1163, metadata !593), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1149, metadata !593), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1157, metadata !593), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1155, metadata !593), !dbg !1273
  %589 = add i64 %581, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1155, metadata !593), !dbg !1273
  br label %122, !dbg !1618, !llvm.loop !1619

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1621
  %593 = and i1 %113, %592, !dbg !1623
  %594 = xor i1 %593, true, !dbg !1623
  %595 = or i1 %111, %594, !dbg !1623
  br i1 %595, label %596, label %635, !dbg !1623

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1624
  %598 = xor i1 %597, true, !dbg !1624
  %599 = and i8 %128, 1, !dbg !1626
  %600 = icmp eq i8 %599, 0, !dbg !1626
  %601 = or i1 %600, %598, !dbg !1624
  br i1 %601, label %611, label %602, !dbg !1624

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1627
  %604 = icmp eq i8 %603, 0, !dbg !1627
  br i1 %604, label %607, label %605, !dbg !1630

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1631
  br label %645, !dbg !1632

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1633
  %609 = icmp ne i64 %125, 0, !dbg !1635
  %610 = and i1 %609, %608, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1156, metadata !593), !dbg !1216
  br i1 %610, label %27, label %611, !dbg !1636

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1637
  %613 = and i1 %612, %111, !dbg !1639
  br i1 %613, label %614, label %630, !dbg !1639

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1156, metadata !593), !dbg !1216
  %615 = load i8, i8* %99, align 1, !dbg !1640, !tbaa !772
  %616 = icmp eq i8 %615, 0, !dbg !1643
  br i1 %616, label %630, label %617, !dbg !1643

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1644

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1156, metadata !593), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1158, metadata !593), !dbg !1218
  %622 = icmp ult i64 %621, %130, !dbg !1644
  br i1 %622, label %623, label %625, !dbg !1647

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1644
  store i8 %619, i8* %624, align 1, !dbg !1644, !tbaa !772
  br label %625, !dbg !1644

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1156, metadata !593), !dbg !1216
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1158, metadata !593), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1156, metadata !593), !dbg !1216
  %628 = load i8, i8* %627, align 1, !dbg !1640, !tbaa !772
  %629 = icmp eq i8 %628, 0, !dbg !1643
  br i1 %629, label %630, label %618, !dbg !1643, !llvm.loop !1649

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1156, metadata !593), !dbg !1216
  %632 = icmp ult i64 %631, %130, !dbg !1651
  br i1 %632, label %633, label %645, !dbg !1653

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1654
  store i8 0, i8* %634, align 1, !dbg !1655, !tbaa !772
  br label %645, !dbg !1654

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1147, metadata !593), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1149, metadata !593), !dbg !1210
  %639 = icmp ne i32 %636, 2, !dbg !1656
  %640 = icmp eq i8 %103, 0, !dbg !1658
  %641 = or i1 %639, %640, !dbg !1659
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1150, metadata !593), !dbg !1211
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1150, metadata !593), !dbg !1211
  %643 = and i32 %5, -3, !dbg !1660
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1661
  br label %645, !dbg !1662

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1663
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1668, metadata !593), !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1669, metadata !593), !dbg !1673
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1674
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1670, metadata !593), !dbg !1675
  %4 = icmp eq i8* %3, %0, !dbg !1676
  br i1 %4, label %5, label %75, !dbg !1678

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1679
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1671, metadata !593), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1681, metadata !593), !dbg !1697
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1695, metadata !593), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1696, metadata !593), !dbg !1701
  %7 = load i8, i8* %6, align 1, !dbg !1702, !tbaa !772
  %8 = sext i8 %7 to i32, !dbg !1702
  %9 = and i32 %8, -33, !dbg !1702
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1702

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1704, metadata !593), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1716, metadata !593), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1717, metadata !593), !dbg !1723
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1724
  %12 = load i8, i8* %11, align 1, !dbg !1724, !tbaa !772
  %13 = sext i8 %12 to i32, !dbg !1724
  %14 = and i32 %13, -33, !dbg !1724
  %15 = icmp eq i32 %14, 84, !dbg !1724
  br i1 %15, label %16, label %72, !dbg !1724

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1726, metadata !593), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1737, metadata !593), !dbg !1743
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1738, metadata !593), !dbg !1744
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1745
  %18 = load i8, i8* %17, align 1, !dbg !1745, !tbaa !772
  %19 = sext i8 %18 to i32, !dbg !1745
  %20 = and i32 %19, -33, !dbg !1745
  %21 = icmp eq i32 %20, 70, !dbg !1745
  br i1 %21, label %22, label %72, !dbg !1745

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1747, metadata !593), !dbg !1759
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !593), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1758, metadata !593), !dbg !1764
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1765
  %24 = load i8, i8* %23, align 1, !dbg !1765, !tbaa !772
  %25 = icmp eq i8 %24, 45, !dbg !1765
  br i1 %25, label %26, label %72, !dbg !1767

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1768, metadata !593), !dbg !1779
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !593), !dbg !1783
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1778, metadata !593), !dbg !1784
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1785
  %28 = load i8, i8* %27, align 1, !dbg !1785, !tbaa !772
  %29 = icmp eq i8 %28, 56, !dbg !1785
  br i1 %29, label %30, label %72, !dbg !1787

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1788, metadata !593), !dbg !1798
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !593), !dbg !1802
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !593), !dbg !1803
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1804
  %32 = load i8, i8* %31, align 1, !dbg !1804, !tbaa !772
  %33 = icmp eq i8 %32, 0, !dbg !1804
  br i1 %33, label %34, label %72, !dbg !1806

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1807, !tbaa !772
  %36 = icmp eq i8 %35, 96, !dbg !1808
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !1807
  br label %75, !dbg !1809

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1704, metadata !593), !dbg !1810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1716, metadata !593), !dbg !1814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1717, metadata !593), !dbg !1815
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1816
  %40 = load i8, i8* %39, align 1, !dbg !1816, !tbaa !772
  %41 = sext i8 %40 to i32, !dbg !1816
  %42 = and i32 %41, -33, !dbg !1816
  %43 = icmp eq i32 %42, 66, !dbg !1816
  br i1 %43, label %44, label %72, !dbg !1816

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1726, metadata !593), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1737, metadata !593), !dbg !1819
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1738, metadata !593), !dbg !1820
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1821
  %46 = load i8, i8* %45, align 1, !dbg !1821, !tbaa !772
  %47 = icmp eq i8 %46, 49, !dbg !1821
  br i1 %47, label %48, label %72, !dbg !1822

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1747, metadata !593), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !593), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1758, metadata !593), !dbg !1826
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1827
  %50 = load i8, i8* %49, align 1, !dbg !1827, !tbaa !772
  %51 = icmp eq i8 %50, 56, !dbg !1827
  br i1 %51, label %52, label %72, !dbg !1828

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1768, metadata !593), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !593), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1778, metadata !593), !dbg !1832
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1833
  %54 = load i8, i8* %53, align 1, !dbg !1833, !tbaa !772
  %55 = icmp eq i8 %54, 48, !dbg !1833
  br i1 %55, label %56, label %72, !dbg !1834

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1788, metadata !593), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !593), !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !593), !dbg !1838
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1839
  %58 = load i8, i8* %57, align 1, !dbg !1839, !tbaa !772
  %59 = icmp eq i8 %58, 51, !dbg !1839
  br i1 %59, label %60, label %72, !dbg !1840

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1841, metadata !593), !dbg !1850
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1848, metadata !593), !dbg !1854
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !593), !dbg !1855
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1856
  %62 = load i8, i8* %61, align 1, !dbg !1856, !tbaa !772
  %63 = icmp eq i8 %62, 48, !dbg !1856
  br i1 %63, label %64, label %72, !dbg !1858

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1859, metadata !593), !dbg !1867
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1865, metadata !593), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1866, metadata !593), !dbg !1872
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1873
  %66 = load i8, i8* %65, align 1, !dbg !1873, !tbaa !772
  %67 = icmp eq i8 %66, 0, !dbg !1873
  br i1 %67, label %68, label %72, !dbg !1875

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1876, !tbaa !772
  %70 = icmp eq i8 %69, 96, !dbg !1877
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.56, i64 0, i64 0), !dbg !1876
  br label %75, !dbg !1878

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1879
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !1880
  br label %75, !dbg !1881

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1882
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1883 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1887, metadata !593), !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1888, metadata !593), !dbg !1891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1889, metadata !593), !dbg !1892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1893, metadata !593) #11, !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1898, metadata !593) #11, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1899, metadata !593) #11, !dbg !1909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1900, metadata !593) #11, !dbg !1910
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1911
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1901, metadata !593) #11, !dbg !1912
  %6 = tail call i32* @__errno_location() #17, !dbg !1913
  %7 = load i32, i32* %6, align 4, !dbg !1913, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1902, metadata !593) #11, !dbg !1914
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1915
  %9 = load i32, i32* %8, align 4, !dbg !1915, !tbaa !1079
  %10 = or i32 %9, 1, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1903, metadata !593) #11, !dbg !1917
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1918
  %12 = load i32, i32* %11, align 8, !dbg !1918, !tbaa !1019
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1919
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1920
  %15 = load i8*, i8** %14, align 8, !dbg !1920, !tbaa !1105
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1921
  %17 = load i8*, i8** %16, align 8, !dbg !1921, !tbaa !1108
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !1922
  %19 = add i64 %18, 1, !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1904, metadata !593) #11, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1925, metadata !593) #11, !dbg !1930
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !1932
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1905, metadata !593) #11, !dbg !1933
  %21 = load i32, i32* %11, align 8, !dbg !1934, !tbaa !1019
  %22 = load i8*, i8** %14, align 8, !dbg !1935, !tbaa !1105
  %23 = load i8*, i8** %16, align 8, !dbg !1936, !tbaa !1108
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !1937
  store i32 %7, i32* %6, align 4, !dbg !1938, !tbaa !647
  ret i8* %20, !dbg !1939
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1894 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1893, metadata !593), !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1898, metadata !593), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1899, metadata !593), !dbg !1942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1900, metadata !593), !dbg !1943
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1944
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1901, metadata !593), !dbg !1945
  %7 = tail call i32* @__errno_location() #17, !dbg !1946
  %8 = load i32, i32* %7, align 4, !dbg !1946, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1902, metadata !593), !dbg !1947
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1948
  %10 = load i32, i32* %9, align 4, !dbg !1948, !tbaa !1079
  %11 = icmp ne i64* %2, null, !dbg !1949
  %12 = xor i1 %11, true, !dbg !1949
  %13 = zext i1 %12 to i32, !dbg !1949
  %14 = or i32 %10, %13, !dbg !1950
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1903, metadata !593), !dbg !1951
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1952
  %16 = load i32, i32* %15, align 8, !dbg !1952, !tbaa !1019
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1953
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1954
  %19 = load i8*, i8** %18, align 8, !dbg !1954, !tbaa !1105
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1955
  %21 = load i8*, i8** %20, align 8, !dbg !1955, !tbaa !1108
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1956
  %23 = add i64 %22, 1, !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1904, metadata !593), !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1925, metadata !593) #11, !dbg !1959
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !1961
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1905, metadata !593), !dbg !1962
  %25 = load i32, i32* %15, align 8, !dbg !1963, !tbaa !1019
  %26 = load i8*, i8** %18, align 8, !dbg !1964, !tbaa !1105
  %27 = load i8*, i8** %20, align 8, !dbg !1965, !tbaa !1108
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1966
  store i32 %8, i32* %7, align 4, !dbg !1967, !tbaa !647
  br i1 %11, label %29, label %30, !dbg !1968

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1969, !tbaa !723
  br label %30, !dbg !1971

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1972
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1973 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1977, !tbaa !600
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1975, metadata !593), !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1976, metadata !593), !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1976, metadata !593), !dbg !1979
  %2 = load i32, i32* @nslots, align 4, !dbg !1980, !tbaa !647
  %3 = icmp sgt i32 %2, 1, !dbg !1983
  br i1 %3, label %4, label %13, !dbg !1984

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1985

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1976, metadata !593), !dbg !1979
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1985
  %8 = load i8*, i8** %7, align 8, !dbg !1985, !tbaa !1986
  tail call void @free(i8* %8) #11, !dbg !1988
  %9 = add nuw i64 %6, 1, !dbg !1989
  %10 = load i32, i32* @nslots, align 4, !dbg !1980, !tbaa !647
  %11 = sext i32 %10 to i64, !dbg !1983
  %12 = icmp slt i64 %9, %11, !dbg !1983
  br i1 %12, label %5, label %13, !dbg !1984, !llvm.loop !1990

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1992
  %15 = load i8*, i8** %14, align 8, !dbg !1992, !tbaa !1986
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1994
  br i1 %16, label %18, label %17, !dbg !1995

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !1996
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1998, !tbaa !1999
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2000, !tbaa !1986
  br label %18, !dbg !2001

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2002
  br i1 %19, label %22, label %20, !dbg !2004

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2005
  tail call void @free(i8* %21) #11, !dbg !2007
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2008, !tbaa !600
  br label %22, !dbg !2009

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2010, !tbaa !647
  ret void, !dbg !2011
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2012 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2016, metadata !593), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2017, metadata !593), !dbg !2019
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2020
  ret i8* %3, !dbg !2021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2022 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2026, metadata !593), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2027, metadata !593), !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2028, metadata !593), !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2029, metadata !593), !dbg !2043
  %5 = tail call i32* @__errno_location() #17, !dbg !2044
  %6 = load i32, i32* %5, align 4, !dbg !2044, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2030, metadata !593), !dbg !2045
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2046, !tbaa !600
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2031, metadata !593), !dbg !2047
  %8 = icmp slt i32 %0, 0, !dbg !2048
  br i1 %8, label %9, label %10, !dbg !2050

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2051
  unreachable, !dbg !2051

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2052, !tbaa !647
  %12 = icmp sgt i32 %11, %0, !dbg !2053
  br i1 %12, label %34, label %13, !dbg !2054

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2055
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2056
  br i1 %15, label %16, label %17, !dbg !2058

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2059
  unreachable, !dbg !2059

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2060
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2060
  %20 = add nsw i32 %0, 1, !dbg !2061
  %21 = sext i32 %20 to i64, !dbg !2062
  %22 = shl nsw i64 %21, 4, !dbg !2063
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2064
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2064
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2031, metadata !593), !dbg !2047
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2065, !tbaa !600
  br i1 %14, label %25, label %26, !dbg !2066

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2067, !tbaa.struct !2069
  br label %26, !dbg !2070

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2071, !tbaa !647
  %28 = sext i32 %27 to i64, !dbg !2072
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2072
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2073
  %31 = sub nsw i32 %20, %27, !dbg !2074
  %32 = sext i32 %31 to i64, !dbg !2075
  %33 = shl nsw i64 %32, 4, !dbg !2076
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2073
  store i32 %20, i32* @nslots, align 4, !dbg !2077, !tbaa !647
  br label %34, !dbg !2078

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2031, metadata !593), !dbg !2047
  %36 = sext i32 %0 to i64, !dbg !2079
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2080
  %38 = load i64, i64* %37, align 8, !dbg !2080, !tbaa !1999
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2035, metadata !593), !dbg !2081
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2082
  %40 = load i8*, i8** %39, align 8, !dbg !2082, !tbaa !1986
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2037, metadata !593), !dbg !2083
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2084
  %42 = load i32, i32* %41, align 4, !dbg !2084, !tbaa !1079
  %43 = or i32 %42, 1, !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2038, metadata !593), !dbg !2086
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2087
  %45 = load i32, i32* %44, align 8, !dbg !2087, !tbaa !1019
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2088
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2089
  %48 = load i8*, i8** %47, align 8, !dbg !2089, !tbaa !1105
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2090
  %50 = load i8*, i8** %49, align 8, !dbg !2090, !tbaa !1108
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2039, metadata !593), !dbg !2092
  %52 = icmp ugt i64 %38, %51, !dbg !2093
  br i1 %52, label %63, label %53, !dbg !2095

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2035, metadata !593), !dbg !2081
  store i64 %54, i64* %37, align 8, !dbg !2098, !tbaa !1999
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2099
  br i1 %55, label %57, label %56, !dbg !2101

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2102
  br label %57, !dbg !2102

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1925, metadata !593) #11, !dbg !2103
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2105
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2037, metadata !593), !dbg !2083
  store i8* %58, i8** %39, align 8, !dbg !2106, !tbaa !1986
  %59 = load i32, i32* %44, align 8, !dbg !2107, !tbaa !1019
  %60 = load i8*, i8** %47, align 8, !dbg !2108, !tbaa !1105
  %61 = load i8*, i8** %49, align 8, !dbg !2109, !tbaa !1108
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2110
  br label %63, !dbg !2111

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2037, metadata !593), !dbg !2083
  store i32 %6, i32* %5, align 4, !dbg !2112, !tbaa !647
  ret i8* %64, !dbg !2113
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2114 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2118, metadata !593), !dbg !2121
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2119, metadata !593), !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2120, metadata !593), !dbg !2123
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2124
  ret i8* %4, !dbg !2125
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2126 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2130, metadata !593), !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2016, metadata !593) #11, !dbg !2132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2017, metadata !593) #11, !dbg !2134
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2135
  ret i8* %2, !dbg !2136
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2137 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2141, metadata !593), !dbg !2143
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2142, metadata !593), !dbg !2144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2118, metadata !593) #11, !dbg !2145
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2119, metadata !593) #11, !dbg !2147
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2120, metadata !593) #11, !dbg !2148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2149
  ret i8* %3, !dbg !2150
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2151 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2159, metadata !2165), !dbg !2166
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2155, metadata !593), !dbg !2168
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2156, metadata !593), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2157, metadata !593), !dbg !2170
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2171
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2158, metadata !593), !dbg !2172
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2164, metadata !593) #11, !dbg !2173
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2174
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2174
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2159, metadata !593) #11, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2166
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2166
  %8 = icmp eq i32 %1, 10, !dbg !2176
  br i1 %8, label %9, label %10, !dbg !2178

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2179, !noalias !2180
  unreachable, !dbg !2179

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2159, metadata !2175) #11, !dbg !2166
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2183
  store i32 %1, i32* %11, align 8, !dbg !2183, !alias.scope !2180
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2183
  %13 = bitcast i32* %12 to i8*, !dbg !2183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2183
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2158, metadata !593), !dbg !2172
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2186
  ret i8* %14, !dbg !2187
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2188 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2159, metadata !2165), !dbg !2197
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2192, metadata !593), !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2193, metadata !593), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2194, metadata !593), !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2195, metadata !593), !dbg !2202
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2196, metadata !593), !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2164, metadata !593) #11, !dbg !2205
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2206
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2159, metadata !593) #11, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2197
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2197
  %9 = icmp eq i32 %1, 10, !dbg !2207
  br i1 %9, label %10, label %11, !dbg !2208

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2209, !noalias !2210
  unreachable, !dbg !2209

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2159, metadata !2175) #11, !dbg !2197
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2213
  store i32 %1, i32* %12, align 8, !dbg !2213, !alias.scope !2210
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2213
  %14 = bitcast i32* %13 to i8*, !dbg !2213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2196, metadata !593), !dbg !2204
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2216
  ret i8* %15, !dbg !2217
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2218 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2159, metadata !2165), !dbg !2224
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2222, metadata !593), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2223, metadata !593), !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2155, metadata !593) #11, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2156, metadata !593) #11, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2157, metadata !593) #11, !dbg !2231
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2158, metadata !593) #11, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2164, metadata !593) #11, !dbg !2234
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2235
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2235
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2159, metadata !593) #11, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2224
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2224
  %7 = icmp eq i32 %0, 10, !dbg !2236
  br i1 %7, label %8, label %9, !dbg !2237

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2238, !noalias !2239
  unreachable, !dbg !2238

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2224
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2242
  store i32 %0, i32* %10, align 8, !dbg !2242, !alias.scope !2239
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2242
  %12 = bitcast i32* %11 to i8*, !dbg !2242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2243
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2158, metadata !593) #11, !dbg !2233
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2245
  ret i8* %13, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2247 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2159, metadata !2165), !dbg !2254
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2251, metadata !593), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2252, metadata !593), !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2253, metadata !593), !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2192, metadata !593) #11, !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2193, metadata !593) #11, !dbg !2261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2194, metadata !593) #11, !dbg !2262
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2195, metadata !593) #11, !dbg !2263
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2264
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2196, metadata !593) #11, !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2164, metadata !593) #11, !dbg !2266
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2267
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2267
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2159, metadata !593) #11, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2254
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2254
  %8 = icmp eq i32 %0, 10, !dbg !2268
  br i1 %8, label %9, label %10, !dbg !2269

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2270, !noalias !2271
  unreachable, !dbg !2270

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2254
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2274
  store i32 %0, i32* %11, align 8, !dbg !2274, !alias.scope !2271
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2274
  %13 = bitcast i32* %12 to i8*, !dbg !2274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2275
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2196, metadata !593) #11, !dbg !2265
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2277
  ret i8* %14, !dbg !2278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2279 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !593), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2284, metadata !593), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2285, metadata !593), !dbg !2289
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2291, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2286, metadata !593), !dbg !2293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1038, metadata !593), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1039, metadata !593), !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1040, metadata !593), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1041, metadata !593), !dbg !2298
  %6 = lshr i8 %2, 5, !dbg !2299
  %7 = zext i8 %6 to i64, !dbg !2299
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2300
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1042, metadata !593), !dbg !2301
  %9 = and i8 %2, 31, !dbg !2302
  %10 = zext i8 %9 to i32, !dbg !2303
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1044, metadata !593), !dbg !2304
  %11 = load i32, i32* %8, align 4, !dbg !2305, !tbaa !647
  %12 = lshr i32 %11, %10, !dbg !2306
  %13 = and i32 %12, 1, !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1045, metadata !593), !dbg !2308
  %14 = xor i32 %13, 1, !dbg !2309
  %15 = shl i32 %14, %10, !dbg !2310
  %16 = xor i32 %15, %11, !dbg !2311
  store i32 %16, i32* %8, align 4, !dbg !2311, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2286, metadata !593), !dbg !2293
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2313
  ret i8* %17, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2315 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !593), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2320, metadata !593), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !593) #11, !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2284, metadata !593) #11, !dbg !2325
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2285, metadata !593) #11, !dbg !2326
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2328, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2286, metadata !593) #11, !dbg !2329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1038, metadata !593) #11, !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1039, metadata !593) #11, !dbg !2332
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1040, metadata !593) #11, !dbg !2333
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1041, metadata !593) #11, !dbg !2334
  %5 = lshr i8 %1, 5, !dbg !2335
  %6 = zext i8 %5 to i64, !dbg !2335
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1042, metadata !593) #11, !dbg !2337
  %8 = and i8 %1, 31, !dbg !2338
  %9 = zext i8 %8 to i32, !dbg !2339
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1044, metadata !593) #11, !dbg !2340
  %10 = load i32, i32* %7, align 4, !dbg !2341, !tbaa !647
  %11 = lshr i32 %10, %9, !dbg !2342
  %12 = and i32 %11, 1, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1045, metadata !593) #11, !dbg !2344
  %13 = xor i32 %12, 1, !dbg !2345
  %14 = shl i32 %13, %9, !dbg !2346
  %15 = xor i32 %14, %10, !dbg !2347
  store i32 %15, i32* %7, align 4, !dbg !2347, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2286, metadata !593) #11, !dbg !2329
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2349
  ret i8* %16, !dbg !2350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2351 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2353, metadata !593), !dbg !2354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !593) #11, !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2320, metadata !593) #11, !dbg !2357
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !593) #11, !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2284, metadata !593) #11, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2285, metadata !593) #11, !dbg !2361
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2363, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2286, metadata !593) #11, !dbg !2364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1038, metadata !593) #11, !dbg !2365
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1039, metadata !593) #11, !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1040, metadata !593) #11, !dbg !2368
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1041, metadata !593) #11, !dbg !2369
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2370
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1042, metadata !593) #11, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1044, metadata !593) #11, !dbg !2372
  %5 = load i32, i32* %4, align 4, !dbg !2373, !tbaa !647
  %6 = or i32 %5, 67108864, !dbg !2374
  store i32 %6, i32* %4, align 4, !dbg !2374, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2286, metadata !593) #11, !dbg !2364
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2376
  ret i8* %7, !dbg !2377
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2378 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2380, metadata !593), !dbg !2382
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2381, metadata !593), !dbg !2383
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !593) #11, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2284, metadata !593) #11, !dbg !2386
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2285, metadata !593) #11, !dbg !2387
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2389, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2286, metadata !593) #11, !dbg !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1038, metadata !593) #11, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1039, metadata !593) #11, !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1040, metadata !593) #11, !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1041, metadata !593) #11, !dbg !2395
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1042, metadata !593) #11, !dbg !2397
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1044, metadata !593) #11, !dbg !2398
  %6 = load i32, i32* %5, align 4, !dbg !2399, !tbaa !647
  %7 = or i32 %6, 67108864, !dbg !2400
  store i32 %7, i32* %5, align 4, !dbg !2400, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2286, metadata !593) #11, !dbg !2390
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2402
  ret i8* %8, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2404 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2159, metadata !2165), !dbg !2410
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2406, metadata !593), !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2407, metadata !593), !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2408, metadata !593), !dbg !2414
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2415
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2164, metadata !593) #11, !dbg !2416
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2417
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2417
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2159, metadata !593) #11, !dbg !2410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2159, metadata !2175) #11, !dbg !2410
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2410
  %9 = icmp eq i32 %1, 10, !dbg !2418
  br i1 %9, label %10, label %11, !dbg !2419

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2420, !noalias !2421
  unreachable, !dbg !2420

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2159, metadata !2175) #11, !dbg !2410
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2424
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2425
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2426
  store i32 %1, i32* %13, align 8, !dbg !2426
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2426
  %15 = bitcast i32* %14 to i8*, !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2409, metadata !593), !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1038, metadata !593), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1039, metadata !593), !dbg !2430
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1040, metadata !593), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1041, metadata !593), !dbg !2432
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2433
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1042, metadata !593), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1044, metadata !593), !dbg !2435
  %17 = load i32, i32* %16, align 4, !dbg !2436, !tbaa !647
  %18 = or i32 %17, 67108864, !dbg !2437
  store i32 %18, i32* %16, align 4, !dbg !2437, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2409, metadata !593), !dbg !2427
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2439
  ret i8* %19, !dbg !2440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2441 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2445, metadata !593), !dbg !2449
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2446, metadata !593), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2447, metadata !593), !dbg !2451
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2448, metadata !593), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2453, metadata !593) #11, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2458, metadata !593) #11, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2459, metadata !593) #11, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2460, metadata !593) #11, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !593) #11, !dbg !2468
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2470, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2462, metadata !593) #11, !dbg !2471
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !593) #11, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1088, metadata !593) #11, !dbg !2474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1089, metadata !593) #11, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1087, metadata !593) #11, !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !593) #11, !dbg !2472
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2476
  store i32 10, i32* %7, align 8, !dbg !2477, !tbaa !1019
  %8 = icmp ne i8* %1, null, !dbg !2478
  %9 = icmp ne i8* %2, null, !dbg !2479
  %10 = and i1 %8, %9, !dbg !2480
  br i1 %10, label %12, label %11, !dbg !2480

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2481
  unreachable, !dbg !2481

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2482
  store i8* %1, i8** %13, align 8, !dbg !2483, !tbaa !1105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2484
  store i8* %2, i8** %14, align 8, !dbg !2485, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2462, metadata !593) #11, !dbg !2471
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2486
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2487
  ret i8* %15, !dbg !2488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2454 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2453, metadata !593), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2458, metadata !593), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2459, metadata !593), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2460, metadata !593), !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2461, metadata !593), !dbg !2493
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2495, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2462, metadata !593), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1087, metadata !593) #11, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1088, metadata !593) #11, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1089, metadata !593) #11, !dbg !2500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1087, metadata !593) #11, !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1087, metadata !593) #11, !dbg !2497
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2501
  store i32 10, i32* %8, align 8, !dbg !2502, !tbaa !1019
  %9 = icmp ne i8* %1, null, !dbg !2503
  %10 = icmp ne i8* %2, null, !dbg !2504
  %11 = and i1 %9, %10, !dbg !2505
  br i1 %11, label %13, label %12, !dbg !2505

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2506
  unreachable, !dbg !2506

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2507
  store i8* %1, i8** %14, align 8, !dbg !2508, !tbaa !1105
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2509
  store i8* %2, i8** %15, align 8, !dbg !2510, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2462, metadata !593), !dbg !2496
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2512
  ret i8* %16, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2514 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2518, metadata !593), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2519, metadata !593), !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2520, metadata !593), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2445, metadata !593) #11, !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !593) #11, !dbg !2526
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2447, metadata !593) #11, !dbg !2527
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2448, metadata !593) #11, !dbg !2528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2453, metadata !593) #11, !dbg !2529
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2458, metadata !593) #11, !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2459, metadata !593) #11, !dbg !2532
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2460, metadata !593) #11, !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !593) #11, !dbg !2534
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2536, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2462, metadata !593) #11, !dbg !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1087, metadata !593) #11, !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1088, metadata !593) #11, !dbg !2540
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1089, metadata !593) #11, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1087, metadata !593) #11, !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1087, metadata !593) #11, !dbg !2538
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2542
  store i32 10, i32* %6, align 8, !dbg !2543, !tbaa !1019
  %7 = icmp ne i8* %0, null, !dbg !2544
  %8 = icmp ne i8* %1, null, !dbg !2545
  %9 = and i1 %7, %8, !dbg !2546
  br i1 %9, label %11, label %10, !dbg !2546

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2547
  unreachable, !dbg !2547

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2548
  store i8* %0, i8** %12, align 8, !dbg !2549, !tbaa !1105
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2550
  store i8* %1, i8** %13, align 8, !dbg !2551, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2462, metadata !593) #11, !dbg !2537
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2553
  ret i8* %14, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2555 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2559, metadata !593), !dbg !2563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2560, metadata !593), !dbg !2564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2561, metadata !593), !dbg !2565
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2562, metadata !593), !dbg !2566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2453, metadata !593) #11, !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2458, metadata !593) #11, !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2459, metadata !593) #11, !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2460, metadata !593) #11, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2461, metadata !593) #11, !dbg !2572
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2574, !tbaa.struct !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2462, metadata !593) #11, !dbg !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !593) #11, !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1088, metadata !593) #11, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1089, metadata !593) #11, !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1087, metadata !593) #11, !dbg !2576
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !593) #11, !dbg !2576
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2580
  store i32 10, i32* %7, align 8, !dbg !2581, !tbaa !1019
  %8 = icmp ne i8* %0, null, !dbg !2582
  %9 = icmp ne i8* %1, null, !dbg !2583
  %10 = and i1 %8, %9, !dbg !2584
  br i1 %10, label %12, label %11, !dbg !2584

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2585
  unreachable, !dbg !2585

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2586
  store i8* %0, i8** %13, align 8, !dbg !2587, !tbaa !1105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2588
  store i8* %1, i8** %14, align 8, !dbg !2589, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2462, metadata !593) #11, !dbg !2575
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2591
  ret i8* %15, !dbg !2592
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2593 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2597, metadata !593), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2598, metadata !593), !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2599, metadata !593), !dbg !2602
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2603
  ret i8* %4, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2605 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2609, metadata !593), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2610, metadata !593), !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2597, metadata !593) #11, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2598, metadata !593) #11, !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2599, metadata !593) #11, !dbg !2616
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2617
  ret i8* %3, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2623, metadata !593), !dbg !2625
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2624, metadata !593), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2597, metadata !593) #11, !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2598, metadata !593) #11, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2599, metadata !593) #11, !dbg !2630
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2631
  ret i8* %3, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2633 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2637, metadata !593), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !593) #11, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2624, metadata !593) #11, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2597, metadata !593) #11, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2598, metadata !593) #11, !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2599, metadata !593) #11, !dbg !2645
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2646
  ret i8* %2, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2648 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2702, metadata !593), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !593), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !593), !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2705, metadata !593), !dbg !2711
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2706, metadata !593), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2707, metadata !593), !dbg !2713
  %7 = icmp eq i8* %1, null, !dbg !2714
  br i1 %7, label %10, label %8, !dbg !2716

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2717
  br label %12, !dbg !2717

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2718
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #11, !dbg !2719
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2719
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #11, !dbg !2720
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2720
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
  ], !dbg !2721

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2722
  unreachable, !dbg !2722

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #11, !dbg !2724
  %20 = load i8*, i8** %4, align 8, !dbg !2724, !tbaa !600
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2724
  br label %146, !dbg !2725

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #11, !dbg !2726
  %24 = load i8*, i8** %4, align 8, !dbg !2726, !tbaa !600
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2726
  %26 = load i8*, i8** %25, align 8, !dbg !2726, !tbaa !600
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2726
  br label %146, !dbg !2727

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #11, !dbg !2728
  %30 = load i8*, i8** %4, align 8, !dbg !2728, !tbaa !600
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2728
  %32 = load i8*, i8** %31, align 8, !dbg !2728, !tbaa !600
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2728
  %34 = load i8*, i8** %33, align 8, !dbg !2728, !tbaa !600
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2728
  br label %146, !dbg !2729

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #11, !dbg !2730
  %38 = load i8*, i8** %4, align 8, !dbg !2730, !tbaa !600
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2730
  %40 = load i8*, i8** %39, align 8, !dbg !2730, !tbaa !600
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2730
  %42 = load i8*, i8** %41, align 8, !dbg !2730, !tbaa !600
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2730
  %44 = load i8*, i8** %43, align 8, !dbg !2730, !tbaa !600
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2730
  br label %146, !dbg !2731

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #11, !dbg !2732
  %48 = load i8*, i8** %4, align 8, !dbg !2732, !tbaa !600
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2732
  %50 = load i8*, i8** %49, align 8, !dbg !2732, !tbaa !600
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2732
  %52 = load i8*, i8** %51, align 8, !dbg !2732, !tbaa !600
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2732
  %54 = load i8*, i8** %53, align 8, !dbg !2732, !tbaa !600
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2732
  %56 = load i8*, i8** %55, align 8, !dbg !2732, !tbaa !600
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2732
  br label %146, !dbg !2733

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #11, !dbg !2734
  %60 = load i8*, i8** %4, align 8, !dbg !2734, !tbaa !600
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2734
  %62 = load i8*, i8** %61, align 8, !dbg !2734, !tbaa !600
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2734
  %64 = load i8*, i8** %63, align 8, !dbg !2734, !tbaa !600
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2734
  %66 = load i8*, i8** %65, align 8, !dbg !2734, !tbaa !600
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2734
  %68 = load i8*, i8** %67, align 8, !dbg !2734, !tbaa !600
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2734
  %70 = load i8*, i8** %69, align 8, !dbg !2734, !tbaa !600
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2734
  br label %146, !dbg !2735

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #11, !dbg !2736
  %74 = load i8*, i8** %4, align 8, !dbg !2736, !tbaa !600
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2736
  %76 = load i8*, i8** %75, align 8, !dbg !2736, !tbaa !600
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2736
  %78 = load i8*, i8** %77, align 8, !dbg !2736, !tbaa !600
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2736
  %80 = load i8*, i8** %79, align 8, !dbg !2736, !tbaa !600
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2736
  %82 = load i8*, i8** %81, align 8, !dbg !2736, !tbaa !600
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2736
  %84 = load i8*, i8** %83, align 8, !dbg !2736, !tbaa !600
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2736
  %86 = load i8*, i8** %85, align 8, !dbg !2736, !tbaa !600
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2736
  br label %146, !dbg !2737

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #11, !dbg !2738
  %90 = load i8*, i8** %4, align 8, !dbg !2738, !tbaa !600
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2738
  %92 = load i8*, i8** %91, align 8, !dbg !2738, !tbaa !600
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2738
  %94 = load i8*, i8** %93, align 8, !dbg !2738, !tbaa !600
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2738
  %96 = load i8*, i8** %95, align 8, !dbg !2738, !tbaa !600
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2738
  %98 = load i8*, i8** %97, align 8, !dbg !2738, !tbaa !600
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2738
  %100 = load i8*, i8** %99, align 8, !dbg !2738, !tbaa !600
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2738
  %102 = load i8*, i8** %101, align 8, !dbg !2738, !tbaa !600
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2738
  %104 = load i8*, i8** %103, align 8, !dbg !2738, !tbaa !600
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2738
  br label %146, !dbg !2739

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #11, !dbg !2740
  %108 = load i8*, i8** %4, align 8, !dbg !2740, !tbaa !600
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2740
  %110 = load i8*, i8** %109, align 8, !dbg !2740, !tbaa !600
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2740
  %112 = load i8*, i8** %111, align 8, !dbg !2740, !tbaa !600
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2740
  %114 = load i8*, i8** %113, align 8, !dbg !2740, !tbaa !600
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2740
  %116 = load i8*, i8** %115, align 8, !dbg !2740, !tbaa !600
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2740
  %118 = load i8*, i8** %117, align 8, !dbg !2740, !tbaa !600
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2740
  %120 = load i8*, i8** %119, align 8, !dbg !2740, !tbaa !600
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2740
  %122 = load i8*, i8** %121, align 8, !dbg !2740, !tbaa !600
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2740
  %124 = load i8*, i8** %123, align 8, !dbg !2740, !tbaa !600
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2740
  br label %146, !dbg !2741

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #11, !dbg !2742
  %128 = load i8*, i8** %4, align 8, !dbg !2742, !tbaa !600
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2742
  %130 = load i8*, i8** %129, align 8, !dbg !2742, !tbaa !600
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2742
  %132 = load i8*, i8** %131, align 8, !dbg !2742, !tbaa !600
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2742
  %134 = load i8*, i8** %133, align 8, !dbg !2742, !tbaa !600
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2742
  %136 = load i8*, i8** %135, align 8, !dbg !2742, !tbaa !600
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2742
  %138 = load i8*, i8** %137, align 8, !dbg !2742, !tbaa !600
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2742
  %140 = load i8*, i8** %139, align 8, !dbg !2742, !tbaa !600
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2742
  %142 = load i8*, i8** %141, align 8, !dbg !2742, !tbaa !600
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2742
  %144 = load i8*, i8** %143, align 8, !dbg !2742, !tbaa !600
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2742
  br label %146, !dbg !2743

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2744
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2745 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2749, metadata !593), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2750, metadata !593), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2751, metadata !593), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2752, metadata !593), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2753, metadata !593), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2754, metadata !593), !dbg !2760
  br label %6, !dbg !2761

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2754, metadata !593), !dbg !2760
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2763
  %9 = load i8*, i8** %8, align 8, !dbg !2763, !tbaa !600
  %10 = icmp eq i8* %9, null, !dbg !2765
  %11 = add i64 %7, 1, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2754, metadata !593), !dbg !2760
  br i1 %10, label %12, label %6, !dbg !2765, !llvm.loop !2767

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2769
  ret void, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2771 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2782, metadata !593), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2783, metadata !593), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2784, metadata !593), !dbg !2792
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2785, metadata !593), !dbg !2793
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2786, metadata !593), !dbg !2794
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2795
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2788, metadata !593), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %11 = load i32, i32* %8, align 8, !dbg !2798
  %12 = icmp ult i32 %11, 41, !dbg !2798
  br i1 %12, label %13, label %18, !dbg !2798

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2798
  %15 = sext i32 %11 to i64, !dbg !2798
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2798
  %17 = add i32 %11, 8, !dbg !2798
  store i32 %17, i32* %8, align 8, !dbg !2798
  br label %21, !dbg !2798

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2798
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2798
  store i8* %20, i8** %10, align 8, !dbg !2798
  br label %21, !dbg !2798

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2798
  %25 = load i8*, i8** %24, align 8, !dbg !2798
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2801
  store i8* %25, i8** %26, align 16, !dbg !2802, !tbaa !600
  %27 = icmp eq i8* %25, null, !dbg !2803
  br i1 %27, label %30, label %28, !dbg !2804

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %29 = icmp ult i32 %22, 41, !dbg !2798
  br i1 %29, label %35, label %32, !dbg !2798

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2806
  ret void, !dbg !2806

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2798
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2798
  store i8* %34, i8** %10, align 8, !dbg !2798
  br label %40, !dbg !2798

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2798
  %37 = sext i32 %22 to i64, !dbg !2798
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2798
  %39 = add i32 %22, 8, !dbg !2798
  store i32 %39, i32* %8, align 8, !dbg !2798
  br label %40, !dbg !2798

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2798
  %44 = load i8*, i8** %43, align 8, !dbg !2798
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2801
  store i8* %44, i8** %45, align 8, !dbg !2802, !tbaa !600
  %46 = icmp eq i8* %44, null, !dbg !2803
  br i1 %46, label %30, label %47, !dbg !2804

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %48 = icmp ult i32 %41, 41, !dbg !2798
  br i1 %48, label %52, label %49, !dbg !2798

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2798
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2798
  store i8* %51, i8** %10, align 8, !dbg !2798
  br label %57, !dbg !2798

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2798
  %54 = sext i32 %41 to i64, !dbg !2798
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2798
  %56 = add i32 %41, 8, !dbg !2798
  store i32 %56, i32* %8, align 8, !dbg !2798
  br label %57, !dbg !2798

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2798
  %61 = load i8*, i8** %60, align 8, !dbg !2798
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2801
  store i8* %61, i8** %62, align 16, !dbg !2802, !tbaa !600
  %63 = icmp eq i8* %61, null, !dbg !2803
  br i1 %63, label %30, label %64, !dbg !2804

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %65 = icmp ult i32 %58, 41, !dbg !2798
  br i1 %65, label %69, label %66, !dbg !2798

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2798
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2798
  store i8* %68, i8** %10, align 8, !dbg !2798
  br label %74, !dbg !2798

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2798
  %71 = sext i32 %58 to i64, !dbg !2798
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2798
  %73 = add i32 %58, 8, !dbg !2798
  store i32 %73, i32* %8, align 8, !dbg !2798
  br label %74, !dbg !2798

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2798
  %78 = load i8*, i8** %77, align 8, !dbg !2798
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2801
  store i8* %78, i8** %79, align 8, !dbg !2802, !tbaa !600
  %80 = icmp eq i8* %78, null, !dbg !2803
  br i1 %80, label %30, label %81, !dbg !2804

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %82 = icmp ult i32 %75, 41, !dbg !2798
  br i1 %82, label %86, label %83, !dbg !2798

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2798
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2798
  store i8* %85, i8** %10, align 8, !dbg !2798
  br label %91, !dbg !2798

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2798
  %88 = sext i32 %75 to i64, !dbg !2798
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2798
  %90 = add i32 %75, 8, !dbg !2798
  store i32 %90, i32* %8, align 8, !dbg !2798
  br label %91, !dbg !2798

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2798
  %95 = load i8*, i8** %94, align 8, !dbg !2798
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2801
  store i8* %95, i8** %96, align 16, !dbg !2802, !tbaa !600
  %97 = icmp eq i8* %95, null, !dbg !2803
  br i1 %97, label %30, label %98, !dbg !2804

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %99 = icmp ult i32 %92, 41, !dbg !2798
  br i1 %99, label %103, label %100, !dbg !2798

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2798
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2798
  store i8* %102, i8** %10, align 8, !dbg !2798
  br label %108, !dbg !2798

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2798
  %105 = sext i32 %92 to i64, !dbg !2798
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2798
  %107 = add i32 %92, 8, !dbg !2798
  store i32 %107, i32* %8, align 8, !dbg !2798
  br label %108, !dbg !2798

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2798
  %111 = load i8*, i8** %110, align 8, !dbg !2798
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2801
  store i8* %111, i8** %112, align 8, !dbg !2802, !tbaa !600
  %113 = icmp eq i8* %111, null, !dbg !2803
  br i1 %113, label %30, label %114, !dbg !2804

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %115 = load i8*, i8** %10, align 8, !dbg !2798
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2798
  store i8* %116, i8** %10, align 8, !dbg !2798
  %117 = bitcast i8* %115 to i8**, !dbg !2798
  %118 = load i8*, i8** %117, align 8, !dbg !2798
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2801
  store i8* %118, i8** %119, align 16, !dbg !2802, !tbaa !600
  %120 = icmp eq i8* %118, null, !dbg !2803
  br i1 %120, label %30, label %121, !dbg !2804

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %122 = load i8*, i8** %10, align 8, !dbg !2798
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2798
  store i8* %123, i8** %10, align 8, !dbg !2798
  %124 = bitcast i8* %122 to i8**, !dbg !2798
  %125 = load i8*, i8** %124, align 8, !dbg !2798
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2801
  store i8* %125, i8** %126, align 8, !dbg !2802, !tbaa !600
  %127 = icmp eq i8* %125, null, !dbg !2803
  br i1 %127, label %30, label %128, !dbg !2804

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %129 = load i8*, i8** %10, align 8, !dbg !2798
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2798
  store i8* %130, i8** %10, align 8, !dbg !2798
  %131 = bitcast i8* %129 to i8**, !dbg !2798
  %132 = load i8*, i8** %131, align 8, !dbg !2798
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2801
  store i8* %132, i8** %133, align 16, !dbg !2802, !tbaa !600
  %134 = icmp eq i8* %132, null, !dbg !2803
  br i1 %134, label %30, label %135, !dbg !2804

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2787, metadata !593), !dbg !2797
  %136 = load i8*, i8** %10, align 8, !dbg !2798
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2798
  store i8* %137, i8** %10, align 8, !dbg !2798
  %138 = bitcast i8* %136 to i8**, !dbg !2798
  %139 = load i8*, i8** %138, align 8, !dbg !2798
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2801
  store i8* %139, i8** %140, align 8, !dbg !2802, !tbaa !600
  %141 = icmp eq i8* %139, null, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2787, metadata !593), !dbg !2797
  %142 = select i1 %141, i64 9, i64 10, !dbg !2804
  br label %30, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2807 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2811, metadata !593), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2812, metadata !593), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2813, metadata !593), !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2814, metadata !593), !dbg !2823
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2824
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2815, metadata !593), !dbg !2825
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2826
  call void @llvm.va_start(i8* nonnull %6), !dbg !2826
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2827
  call void @llvm.va_end(i8* nonnull %6), !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2829
  ret void, !dbg !2829
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2830 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #11, !dbg !2831
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #11, !dbg !2831
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2832
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.82, i64 0, i64 0)) #11, !dbg !2832
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !2833
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2833, !tbaa !600
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !2833
  ret void, !dbg !2834
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2835 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2837, metadata !593), !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2838, metadata !593), !dbg !2840
  %3 = udiv i64 9223372036854775807, %1, !dbg !2841
  %4 = icmp ult i64 %3, %0, !dbg !2841
  br i1 %4, label %5, label %6, !dbg !2843

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2844
  unreachable, !dbg !2844

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2846, metadata !593) #11, !dbg !2853
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2852, metadata !593) #11, !dbg !2856
  %9 = icmp eq i8* %8, null, !dbg !2857
  %10 = icmp ne i64 %7, 0, !dbg !2859
  %11 = and i1 %10, %9, !dbg !2860
  br i1 %11, label %12, label %13, !dbg !2860

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2861
  unreachable, !dbg !2861

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2862
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2846, metadata !593), !dbg !2863
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2852, metadata !593), !dbg !2865
  %3 = icmp eq i8* %2, null, !dbg !2866
  %4 = icmp ne i64 %0, 0, !dbg !2867
  %5 = and i1 %4, %3, !dbg !2868
  br i1 %5, label %6, label %7, !dbg !2868

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2869
  unreachable, !dbg !2869

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2870
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2875, metadata !593), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2876, metadata !593), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2877, metadata !593), !dbg !2880
  %4 = udiv i64 9223372036854775807, %2, !dbg !2881
  %5 = icmp ult i64 %4, %1, !dbg !2881
  br i1 %5, label %6, label %7, !dbg !2883

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2884
  unreachable, !dbg !2884

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593) #11, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2891, metadata !593) #11, !dbg !2894
  %9 = icmp eq i64 %8, 0, !dbg !2895
  %10 = icmp ne i8* %0, null, !dbg !2897
  %11 = and i1 %10, %9, !dbg !2898
  br i1 %11, label %12, label %13, !dbg !2898

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !2899
  br label %19, !dbg !2901

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2886, metadata !593) #11, !dbg !2892
  %15 = icmp eq i8* %14, null, !dbg !2903
  %16 = icmp ne i64 %8, 0, !dbg !2905
  %17 = and i1 %16, %15, !dbg !2906
  br i1 %17, label %18, label %19, !dbg !2906

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2907
  unreachable, !dbg !2907

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2908
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2887 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593), !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2891, metadata !593), !dbg !2910
  %3 = icmp eq i64 %1, 0, !dbg !2911
  %4 = icmp ne i8* %0, null, !dbg !2912
  %5 = and i1 %4, %3, !dbg !2913
  br i1 %5, label %6, label %7, !dbg !2913

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !2914
  br label %13, !dbg !2915

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2886, metadata !593), !dbg !2909
  %9 = icmp eq i8* %8, null, !dbg !2917
  %10 = icmp ne i64 %1, 0, !dbg !2918
  %11 = and i1 %10, %9, !dbg !2919
  br i1 %11, label %12, label %13, !dbg !2919

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2920
  unreachable, !dbg !2920

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2921
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !542 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !547, metadata !593), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !548, metadata !593), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !549, metadata !593), !dbg !2924
  %4 = load i64, i64* %1, align 8, !dbg !2925, !tbaa !723
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !550, metadata !593), !dbg !2926
  %5 = icmp eq i8* %0, null, !dbg !2927
  br i1 %5, label %6, label %13, !dbg !2929

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2930
  br i1 %7, label %8, label %17, !dbg !2933

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !550, metadata !593), !dbg !2926
  %10 = icmp ugt i64 %2, 128, !dbg !2936
  %11 = zext i1 %10 to i64, !dbg !2936
  %12 = add nuw nsw i64 %9, %11, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !550, metadata !593), !dbg !2926
  br label %17, !dbg !2938

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2939
  %15 = icmp ugt i64 %14, %4, !dbg !2942
  br i1 %15, label %20, label %16, !dbg !2943

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2944
  unreachable, !dbg !2944

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !550, metadata !593), !dbg !2926
  store i64 %18, i64* %1, align 8, !dbg !2945, !tbaa !723
  %19 = mul i64 %18, %2, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593) #11, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2891, metadata !593) #11, !dbg !2949
  br label %27, !dbg !2950

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2951
  %22 = add i64 %4, 1, !dbg !2952
  %23 = add i64 %22, %21, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !550, metadata !593), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !550, metadata !593), !dbg !2926
  store i64 %23, i64* %1, align 8, !dbg !2945, !tbaa !723
  %24 = mul i64 %23, %2, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593) #11, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2891, metadata !593) #11, !dbg !2949
  %25 = icmp eq i64 %24, 0, !dbg !2954
  br i1 %25, label %26, label %27, !dbg !2950

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !2955
  br label %34, !dbg !2956

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2886, metadata !593) #11, !dbg !2947
  %30 = icmp eq i8* %29, null, !dbg !2958
  %31 = icmp ne i64 %28, 0, !dbg !2959
  %32 = and i1 %31, %30, !dbg !2960
  br i1 %32, label %33, label %34, !dbg !2960

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2961
  unreachable, !dbg !2961

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2962
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2965, metadata !593), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2846, metadata !593) #11, !dbg !2967
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2852, metadata !593) #11, !dbg !2970
  %3 = icmp eq i8* %2, null, !dbg !2971
  %4 = icmp ne i64 %0, 0, !dbg !2972
  %5 = and i1 %4, %3, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2973

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2974
  unreachable, !dbg !2974

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2980, metadata !593), !dbg !2982
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2981, metadata !593), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !547, metadata !593) #11, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !548, metadata !593) #11, !dbg !2986
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !549, metadata !593) #11, !dbg !2987
  %3 = load i64, i64* %1, align 8, !dbg !2988, !tbaa !723
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  %4 = icmp eq i8* %0, null, !dbg !2990
  br i1 %4, label %5, label %8, !dbg !2991

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  store i64 %7, i64* %1, align 8, !dbg !2994, !tbaa !723
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593) #11, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2891, metadata !593) #11, !dbg !2997
  br label %17, !dbg !2998

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2999
  br i1 %9, label %11, label %10, !dbg !3000

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3001
  unreachable, !dbg !3001

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3002
  %13 = add i64 %3, 1, !dbg !3003
  %14 = add i64 %13, %12, !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !550, metadata !593) #11, !dbg !2989
  store i64 %14, i64* %1, align 8, !dbg !2994, !tbaa !723
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !593) #11, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2891, metadata !593) #11, !dbg !2997
  %15 = icmp eq i64 %14, 0, !dbg !3005
  br i1 %15, label %16, label %17, !dbg !2998

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3006
  br label %24, !dbg !3007

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2886, metadata !593) #11, !dbg !2995
  %20 = icmp eq i8* %19, null, !dbg !3009
  %21 = icmp ne i64 %18, 0, !dbg !3010
  %22 = and i1 %21, %20, !dbg !3011
  br i1 %22, label %23, label %24, !dbg !3011

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3012
  unreachable, !dbg !3012

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3014 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3016, metadata !593), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2846, metadata !593) #11, !dbg !3018
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3020
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2852, metadata !593) #11, !dbg !3021
  %3 = icmp eq i8* %2, null, !dbg !3022
  %4 = icmp ne i64 %0, 0, !dbg !3023
  %5 = and i1 %4, %3, !dbg !3024
  br i1 %5, label %6, label %7, !dbg !3024

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3025
  unreachable, !dbg !3025

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3026
  ret i8* %2, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3028 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3030, metadata !593), !dbg !3033
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3031, metadata !593), !dbg !3034
  %3 = udiv i64 9223372036854775807, %1, !dbg !3035
  %4 = icmp ult i64 %3, %0, !dbg !3035
  br i1 %4, label %8, label %5, !dbg !3037

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3032, metadata !593), !dbg !3039
  %7 = icmp eq i8* %6, null, !dbg !3040
  br i1 %7, label %8, label %9, !dbg !3041

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3042
  unreachable, !dbg !3042

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3043
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3044 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3048, metadata !593), !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3049, metadata !593), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2846, metadata !593) #11, !dbg !3052
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2852, metadata !593) #11, !dbg !3055
  %4 = icmp eq i8* %3, null, !dbg !3056
  %5 = icmp ne i64 %1, 0, !dbg !3057
  %6 = and i1 %5, %4, !dbg !3058
  br i1 %6, label %7, label %8, !dbg !3058

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3059
  unreachable, !dbg !3059

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3060
  ret i8* %3, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3062 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !593), !dbg !3065
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3066
  %3 = add i64 %2, 1, !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3048, metadata !593) #11, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3049, metadata !593) #11, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2846, metadata !593) #11, !dbg !3071
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2852, metadata !593) #11, !dbg !3074
  %5 = icmp eq i8* %4, null, !dbg !3075
  %6 = icmp ne i64 %3, 0, !dbg !3076
  %7 = and i1 %6, %5, !dbg !3077
  br i1 %7, label %8, label %9, !dbg !3077

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3078
  unreachable, !dbg !3078

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3079
  ret i8* %4, !dbg !3080
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3081 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3083, !tbaa !647
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.93, i64 0, i64 0), i32 5) #11, !dbg !3084
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i8* %2) #11, !dbg !3085
  tail call void @abort() #15, !dbg !3086
  unreachable, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3090, metadata !593), !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3091, metadata !593), !dbg !3097
  %3 = icmp eq i64 %0, 0, !dbg !3098
  %4 = icmp eq i64 %1, 0, !dbg !3099
  %5 = or i1 %3, %4, !dbg !3100
  br i1 %5, label %12, label %6, !dbg !3100

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3093, metadata !593), !dbg !3102
  %8 = udiv i64 %7, %1, !dbg !3103
  %9 = icmp eq i64 %8, %0, !dbg !3105
  br i1 %9, label %12, label %10, !dbg !3106

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3107
  store i32 12, i32* %11, align 4, !dbg !3109, !tbaa !647
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3090, metadata !593), !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3091, metadata !593), !dbg !3097
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3092, metadata !593), !dbg !3111
  br label %16, !dbg !3112

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3113
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3114 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3131, metadata !593), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3132, metadata !593), !dbg !3141
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3133, metadata !593), !dbg !3142
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3134, metadata !593), !dbg !3143
  %6 = bitcast i32* %5 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3144
  %7 = icmp eq i32* %0, null, !dbg !3145
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3131, metadata !593), !dbg !3140
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3147
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3131, metadata !593), !dbg !3140
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3135, metadata !593), !dbg !3149
  %10 = icmp ugt i64 %9, -3, !dbg !3150
  %11 = icmp ne i64 %2, 0, !dbg !3151
  %12 = and i1 %11, %10, !dbg !3152
  br i1 %12, label %13, label %18, !dbg !3152

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3153
  br i1 %14, label %18, label %15, !dbg !3154

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3155, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3137, metadata !593), !dbg !3156
  %17 = zext i8 %16 to i32, !dbg !3157
  store i32 %17, i32* %8, align 4, !dbg !3158, !tbaa !647
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3159
  ret i64 %19, !dbg !3159
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !3160 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !3189, metadata !593), !dbg !3192
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3191, metadata !593), !dbg !3194
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3196, metadata !593) #11, !dbg !3206
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3204, metadata !593) #11, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !3205, metadata !593) #11, !dbg !3206
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !3208
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !3209
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3210
  store i8 0, i8* %6, align 1, !dbg !3211, !tbaa !772
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3190, metadata !593), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3190, metadata !593), !dbg !3214
  %8 = icmp sgt i64 %7, 0, !dbg !3215
  br i1 %8, label %9, label %18, !dbg !3217

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !3218
  br label %11, !dbg !3217

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %10, %9 ], [ %13, %16 ]
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !3190, metadata !593), !dbg !3214
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !3219
  %14 = load i8, i8* %13, align 1, !dbg !3219, !tbaa !772
  %15 = icmp eq i8 %14, 32, !dbg !3220
  br i1 %15, label %16, label %18, !dbg !3221

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3190, metadata !593), !dbg !3214
  store i8 0, i8* %13, align 1, !dbg !3222, !tbaa !772
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3190, metadata !593), !dbg !3214
  %17 = icmp ult i8* %2, %13, !dbg !3215
  br i1 %17, label %11, label %18, !dbg !3217, !llvm.loop !3223

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !3225
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3232, metadata !593), !dbg !3240
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3233, metadata !593), !dbg !3241
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !3234, metadata !593), !dbg !3242
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3235, metadata !593), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3236, metadata !593), !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3237, metadata !593), !dbg !3245
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !3238, metadata !593), !dbg !3246
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !3247
  tail call void @setutxent() #11, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3236, metadata !593), !dbg !3244
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !3238, metadata !593), !dbg !3246
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !3249
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !3239, metadata !593), !dbg !3250
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !3251
  br i1 %7, label %77, label %8, !dbg !3252

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !3252

; <label>:13:                                     ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %70 ]
  %17 = phi i8* [ null, %8 ], [ %72, %70 ]
  %18 = phi i64 [ 0, %8 ], [ %71, %70 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %14, i64 0, metadata !3253, metadata !593) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3258, metadata !593) #11, !dbg !3263
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !3238, metadata !593), !dbg !3246
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !3236, metadata !593), !dbg !3244
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !3264
  %20 = load i8, i8* %19, align 4, !dbg !3264, !tbaa !772
  %21 = icmp eq i8 %20, 0, !dbg !3264
  br i1 %21, label %26, label %22, !dbg !3264

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !3264
  %24 = load i16, i16* %23, align 4, !dbg !3264, !tbaa !773
  %25 = icmp eq i16 %24, 7, !dbg !3264
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ]
  %28 = or i1 %10, %27, !dbg !3265
  br i1 %28, label %29, label %70, !dbg !3265

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !3267
  %31 = or i1 %12, %30, !dbg !3267
  br i1 %31, label %43, label %32, !dbg !3267

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !3269
  %34 = load i32, i32* %33, align 4, !dbg !3269, !tbaa !3270
  %35 = icmp sgt i32 %34, 0, !dbg !3271
  br i1 %35, label %36, label %43, !dbg !3272

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !3273
  %38 = icmp slt i32 %37, 0, !dbg !3274
  br i1 %38, label %39, label %43, !dbg !3275

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !3276
  %41 = load i32, i32* %40, align 4, !dbg !3276, !tbaa !647
  %42 = icmp eq i32 %41, 3, !dbg !3277
  br i1 %42, label %70, label %43, !dbg !3278

; <label>:43:                                     ; preds = %39, %36, %32, %29
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !3237, metadata !593), !dbg !3245
  %44 = icmp eq i64 %15, %18, !dbg !3279
  br i1 %44, label %45, label %62, !dbg !3282

; <label>:45:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !567, metadata !593) #11, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !569, metadata !593) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !570, metadata !593) #11, !dbg !3286
  %46 = icmp eq i8* %17, null, !dbg !3287
  br i1 %46, label %47, label %50, !dbg !3289

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !570, metadata !593) #11, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !570, metadata !593) #11, !dbg !3286
  %49 = select i1 %48, i64 1, i64 %15, !dbg !3293
  br label %57, !dbg !3293

; <label>:50:                                     ; preds = %45
  %51 = icmp ult i64 %15, 16012798675095096, !dbg !3294
  br i1 %51, label %53, label %52, !dbg !3297

; <label>:52:                                     ; preds = %50
  tail call void @xalloc_die() #15, !dbg !3298
  unreachable, !dbg !3298

; <label>:53:                                     ; preds = %50
  %54 = lshr i64 %15, 1, !dbg !3299
  %55 = add i64 %15, 1, !dbg !3300
  %56 = add i64 %55, %54, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !570, metadata !593) #11, !dbg !3286
  br label %57

; <label>:57:                                     ; preds = %47, %53
  %58 = phi i64 [ %56, %53 ], [ %49, %47 ]
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !570, metadata !593) #11, !dbg !3286
  %59 = mul i64 %58, 384, !dbg !3302
  %60 = tail call i8* @xrealloc(i8* %17, i64 %59) #11, !dbg !3303
  %61 = bitcast i8* %60 to %struct.utmpx*, !dbg !3304
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %61, i64 0, metadata !3238, metadata !593), !dbg !3246
  br label %62, !dbg !3305

; <label>:62:                                     ; preds = %57, %43
  %63 = phi i64 [ %58, %57 ], [ %18, %43 ]
  %64 = phi i8* [ %60, %57 ], [ %17, %43 ]
  %65 = phi %struct.utmpx* [ %61, %57 ], [ %16, %43 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %65, i64 0, metadata !3238, metadata !593), !dbg !3246
  %66 = add i64 %15, 1, !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !3236, metadata !593), !dbg !3244
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !3307
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !3308
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !3308
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 384, i32 4, i1 false), !dbg !3308, !tbaa.struct !3309
  br label %70, !dbg !3310

; <label>:70:                                     ; preds = %39, %26, %62
  %71 = phi i64 [ %63, %62 ], [ %18, %26 ], [ %18, %39 ]
  %72 = phi i8* [ %64, %62 ], [ %17, %26 ], [ %17, %39 ]
  %73 = phi %struct.utmpx* [ %65, %62 ], [ %16, %26 ], [ %16, %39 ]
  %74 = phi i64 [ %66, %62 ], [ %15, %26 ], [ %15, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3236, metadata !593), !dbg !3244
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !3238, metadata !593), !dbg !3246
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3236, metadata !593), !dbg !3244
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !3238, metadata !593), !dbg !3246
  %75 = tail call %struct.utmpx* @getutxent() #11, !dbg !3249
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !3239, metadata !593), !dbg !3250
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !3251
  br i1 %76, label %77, label %13, !dbg !3252, !llvm.loop !3311

; <label>:77:                                     ; preds = %70, %4
  %78 = phi i8* [ null, %4 ], [ %72, %70 ]
  %79 = phi i64 [ 0, %4 ], [ %74, %70 ]
  tail call void @endutxent() #11, !dbg !3313
  store i64 %79, i64* %1, align 8, !dbg !3314, !tbaa !723
  %80 = bitcast %struct.utmpx** %2 to i8**, !dbg !3315
  store i8* %78, i8** %80, align 8, !dbg !3315, !tbaa !600
  ret i32 0, !dbg !3316
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3317 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3362, metadata !593), !dbg !3367
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3368
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3369, metadata !593), !dbg !3372
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3374
  %4 = load i32, i32* %3, align 8, !dbg !3374, !tbaa !3375
  %5 = and i32 %4, 32, !dbg !3374
  %6 = icmp eq i32 %5, 0, !dbg !3376
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3377
  %8 = icmp ne i32 %7, 0, !dbg !3378
  br i1 %6, label %9, label %19, !dbg !3379

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3381
  %11 = xor i1 %8, true, !dbg !3382
  %12 = or i1 %10, %11, !dbg !3382
  %13 = sext i1 %8 to i32, !dbg !3382
  br i1 %12, label %22, label %14, !dbg !3382

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3383
  %16 = load i32, i32* %15, align 4, !dbg !3383, !tbaa !647
  %17 = icmp ne i32 %16, 9, !dbg !3384
  %18 = sext i1 %17 to i32, !dbg !3385
  br label %22, !dbg !3385

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3386

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3388
  store i32 0, i32* %21, align 4, !dbg !3390, !tbaa !647
  br label %22, !dbg !3388

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3391
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3392 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3397, metadata !593), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3398, metadata !593), !dbg !3401
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !593), !dbg !3403
  %3 = icmp eq i8* %2, null, !dbg !3404
  br i1 %3, label %11, label %4, !dbg !3406

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #14, !dbg !3407
  %6 = icmp eq i32 %5, 0, !dbg !3412
  br i1 %6, label %10, label %7, !dbg !3413

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #14, !dbg !3414
  %9 = icmp eq i32 %8, 0, !dbg !3415
  br i1 %9, label %10, label %11, !dbg !3416

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3398, metadata !593), !dbg !3401
  br label %11, !dbg !3417

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3419 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3425, metadata !593), !dbg !3499
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3492, metadata !593), !dbg !3502
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3423, metadata !593), !dbg !3504
  %4 = icmp eq i8* %3, null, !dbg !3505
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %3, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3423, metadata !593), !dbg !3504
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3508, !tbaa !600
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3439, metadata !593) #11, !dbg !3509
  %7 = icmp eq i8* %6, null, !dbg !3510
  br i1 %7, label %8, label %123, !dbg !3511

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.112, i64 0, i64 0)) #11, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3440, metadata !593) #11, !dbg !3513
  %10 = icmp eq i8* %9, null, !dbg !3514
  br i1 %10, label %14, label %11, !dbg !3516

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3517, !tbaa !772
  %13 = icmp eq i8 %12, 0, !dbg !3518
  br i1 %13, label %14, label %15, !dbg !3519

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3520

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.113, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3440, metadata !593) #11, !dbg !3513
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3443, metadata !593) #11, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3445, metadata !593) #11, !dbg !3523
  %18 = icmp eq i64 %17, 0, !dbg !3524
  br i1 %18, label %24, label %19, !dbg !3525

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3526
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3526
  %22 = load i8, i8* %21, align 1, !dbg !3526, !tbaa !772
  %23 = icmp ne i8 %22, 47, !dbg !3526
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3527
  %27 = add i64 %17, 14, !dbg !3528
  %28 = add i64 %27, %26, !dbg !3529
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3442, metadata !593) #11, !dbg !3531
  %30 = icmp eq i8* %29, null, !dbg !3532
  br i1 %30, label %121, label %31, !dbg !3532

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3533
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3536

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3537, !tbaa !772
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3539
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3540
  br label %37, !dbg !3541

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3539
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3540
  br label %37, !dbg !3541

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3447, metadata !593) #11, !dbg !3543
  %39 = icmp slt i32 %38, 0, !dbg !3544
  br i1 %39, label %119, label %40, !dbg !3545

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i64 0, i64 0)) #11, !dbg !3546
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3448, metadata !593) #11, !dbg !3547
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3548
  br i1 %42, label %43, label %45, !dbg !3549

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3550
  br label %119, !dbg !3552

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3555

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3556

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3556
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3557
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3558, metadata !593) #11, !dbg !3563
  %54 = load i8*, i8** %48, align 8, !dbg !3565, !tbaa !3566
  %55 = load i8*, i8** %49, align 8, !dbg !3565, !tbaa !3567
  %56 = icmp ult i8* %54, %55, !dbg !3565
  br i1 %56, label %59, label %57, !dbg !3565, !prof !805

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3565
  br label %63, !dbg !3565

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3565
  store i8* %60, i8** %48, align 8, !dbg !3565, !tbaa !3566
  %61 = load i8, i8* %54, align 1, !dbg !3565, !tbaa !772
  %62 = zext i8 %61 to i32, !dbg !3565
  br label %63, !dbg !3565

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3565
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3491, metadata !593) #11, !dbg !3568
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3569, !llvm.loop !3570

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3575

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3558, metadata !593) #11, !dbg !3577
  %67 = load i8*, i8** %48, align 8, !dbg !3575, !tbaa !3566
  %68 = load i8*, i8** %49, align 8, !dbg !3575, !tbaa !3567
  %69 = icmp ult i8* %67, %68, !dbg !3575
  br i1 %69, label %72, label %70, !dbg !3575, !prof !805

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3575
  br label %76, !dbg !3575

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3575
  store i8* %73, i8** %48, align 8, !dbg !3575, !tbaa !3566
  %74 = load i8, i8* %67, align 1, !dbg !3575, !tbaa !772
  %75 = zext i8 %74 to i32, !dbg !3575
  br label %76, !dbg !3575

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3575
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3491, metadata !593) #11, !dbg !3568
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3578, !llvm.loop !3579

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3582
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.116, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3583
  %81 = icmp slt i32 %80, 2, !dbg !3585
  br i1 %81, label %112, label %82, !dbg !3586

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3496, metadata !593) #11, !dbg !3588
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3497, metadata !593) #11, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3498, metadata !593) #11, !dbg !3591
  %85 = icmp eq i64 %51, 0, !dbg !3592
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3594

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  %90 = add i64 %87, 2, !dbg !3595
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  br label %96, !dbg !3598

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  %94 = add i64 %93, 1, !dbg !3601
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  %99 = icmp eq i8* %98, null, !dbg !3603
  br i1 %99, label %100, label %102, !dbg !3605

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  call void @free(i8* %52) #11, !dbg !3606
  br label %112, !dbg !3608

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3609
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3610
  %104 = xor i64 %84, -1, !dbg !3611
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3611
  %106 = xor i64 %83, -1, !dbg !3612
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3613, metadata !593) #11, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3618, metadata !593) #11, !dbg !3619
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3621
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3613, metadata !593) #11, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3618, metadata !593) #11, !dbg !3623
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3625
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3489, metadata !593) #11, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3490, metadata !593) #11, !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3609
  br label %50, !dbg !3627, !llvm.loop !3579

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3609
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3628
  %116 = icmp eq i64 %113, 0, !dbg !3629
  br i1 %116, label %119, label %117, !dbg !3631

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3632
  store i8 0, i8* %118, align 1, !dbg !3634, !tbaa !772
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3439, metadata !593) #11, !dbg !3509
  call void @free(i8* %29) #11, !dbg !3635
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3439, metadata !593) #11, !dbg !3509
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3636, !tbaa !600
  br label %123, !dbg !3637

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3439, metadata !593) #11, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3424, metadata !593), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3424, metadata !593), !dbg !3638
  %125 = load i8, i8* %124, align 1, !dbg !3639, !tbaa !772
  %126 = icmp eq i8 %125, 0, !dbg !3641
  br i1 %126, label %152, label %127, !dbg !3642

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3643

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3424, metadata !593), !dbg !3638
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3643
  %132 = icmp eq i32 %131, 0, !dbg !3645
  br i1 %132, label %139, label %133, !dbg !3646

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3647
  br i1 %134, label %135, label %143, !dbg !3648

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3649
  %137 = load i8, i8* %136, align 1, !dbg !3649, !tbaa !772
  %138 = icmp eq i8 %137, 0, !dbg !3650
  br i1 %138, label %139, label %143, !dbg !3651

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3652
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3654
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3423, metadata !593), !dbg !3504
  br label %152, !dbg !3656

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3657
  %145 = add i64 %144, 1, !dbg !3658
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3424, metadata !593), !dbg !3638
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3660
  %148 = add i64 %147, 1, !dbg !3661
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3662
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3424, metadata !593), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3424, metadata !593), !dbg !3638
  %150 = load i8, i8* %149, align 1, !dbg !3639, !tbaa !772
  %151 = icmp eq i8 %150, 0, !dbg !3641
  br i1 %151, label %152, label %128, !dbg !3642, !llvm.loop !3663

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3423, metadata !593), !dbg !3504
  %154 = load i8, i8* %153, align 1, !dbg !3665, !tbaa !772
  %155 = icmp eq i8 %154, 0, !dbg !3667
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %153, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3423, metadata !593), !dbg !3504
  ret i8* %156, !dbg !3669
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

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3670 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3715, metadata !593), !dbg !3719
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3716, metadata !593), !dbg !3720
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3718, metadata !593), !dbg !3721
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3722
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3717, metadata !593), !dbg !3723
  %3 = icmp slt i32 %2, 0, !dbg !3724
  br i1 %3, label %4, label %6, !dbg !3726

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3727
  br label %24, !dbg !3728

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3729
  %8 = icmp eq i32 %7, 0, !dbg !3729
  br i1 %8, label %13, label %9, !dbg !3731

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3732
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3733
  %12 = icmp eq i64 %11, -1, !dbg !3734
  br i1 %12, label %16, label %13, !dbg !3735

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3736
  %15 = icmp eq i32 %14, 0, !dbg !3736
  br i1 %15, label %16, label %18, !dbg !3737

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3716, metadata !593), !dbg !3720
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3718, metadata !593), !dbg !3721
  br label %24, !dbg !3739

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3740
  %20 = load i32, i32* %19, align 4, !dbg !3740, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3716, metadata !593), !dbg !3720
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3716, metadata !593), !dbg !3720
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3718, metadata !593), !dbg !3721
  %22 = icmp eq i32 %20, 0, !dbg !3741
  br i1 %22, label %24, label %23, !dbg !3739

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3743, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3718, metadata !593), !dbg !3721
  br label %24, !dbg !3745

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3746
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3792, metadata !593), !dbg !3793
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3794
  br i1 %2, label %6, label %3, !dbg !3796

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3797
  %5 = icmp eq i32 %4, 0, !dbg !3797
  br i1 %5, label %6, label %8, !dbg !3798

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3799
  br label %17, !dbg !3800

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3801, metadata !593) #11, !dbg !3806
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3808
  %10 = load i32, i32* %9, align 8, !dbg !3808, !tbaa !3375
  %11 = and i32 %10, 256, !dbg !3810
  %12 = icmp eq i32 %11, 0, !dbg !3810
  br i1 %12, label %15, label %13, !dbg !3811

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3812
  br label %15, !dbg !3812

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3813
  br label %17, !dbg !3814

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3815
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3862, metadata !593), !dbg !3868
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3863, metadata !593), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3864, metadata !593), !dbg !3870
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3871
  %5 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !3567
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3872
  %7 = load i8*, i8** %6, align 8, !dbg !3872, !tbaa !3566
  %8 = icmp eq i8* %5, %7, !dbg !3873
  br i1 %8, label %9, label %28, !dbg !3874

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3875
  %11 = load i8*, i8** %10, align 8, !dbg !3875, !tbaa !802
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3876
  %13 = load i8*, i8** %12, align 8, !dbg !3876, !tbaa !3877
  %14 = icmp eq i8* %11, %13, !dbg !3878
  br i1 %14, label %15, label %28, !dbg !3879

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3880
  %17 = load i8*, i8** %16, align 8, !dbg !3880, !tbaa !3881
  %18 = icmp eq i8* %17, null, !dbg !3882
  br i1 %18, label %19, label %28, !dbg !3883

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3884
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3865, metadata !593), !dbg !3886
  %22 = icmp eq i64 %21, -1, !dbg !3887
  br i1 %22, label %30, label %23, !dbg !3889

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3890
  %25 = load i32, i32* %24, align 8, !dbg !3891, !tbaa !3375
  %26 = and i32 %25, -17, !dbg !3891
  store i32 %26, i32* %24, align 8, !dbg !3891, !tbaa !3375
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3892
  store i64 %21, i64* %27, align 8, !dbg !3893, !tbaa !3894
  br label %30, !dbg !3895

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3896
  br label %30, !dbg !3897

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3898
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !529, !142, !537, !554, !556, !558, !561, !572, !574, !151, !576, !578, !580}
!llvm.ident = !{!582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582}
!llvm.module.flags = !{!583, !584, !585, !586, !587}

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
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !500, retainedTypes: !506, globals: !508)
!499 = !DIFile(filename: "src/users.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!501, !58}
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !502, line: 208, size: 32, elements: !503)
!502 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!503 = !{!504, !505}
!504 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!505 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!506 = !{!6, !49, !94, !507, !494}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!508 = !{!509}
!509 = !DIGlobalVariableExpression(var: !510)
!510 = distinct !DIGlobalVariable(name: "infomap", scope: !511, file: !512, line: 632, type: !526, isLocal: true, isDefinition: true)
!511 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !512, file: !512, line: 630, type: !513, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !515)
!512 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!513 = !DISubroutineType(types: !514)
!514 = !{null, !6}
!515 = !{!516, !517, !518, !525}
!516 = !DILocalVariable(name: "program", arg: 1, scope: !511, file: !512, line: 630, type: !6)
!517 = !DILocalVariable(name: "node", scope: !511, file: !512, line: 642, type: !6)
!518 = !DILocalVariable(name: "map_prog", scope: !511, file: !512, line: 643, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !511, file: !512, line: 632, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !521, file: !512, line: 632, baseType: !6, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !512, line: 632, baseType: !6, size: 64, offset: 64)
!525 = !DILocalVariable(name: "lc_messages", scope: !511, file: !512, line: 655, type: !6)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 896, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 7)
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !531, retainedTypes: !536)
!530 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = !{!532}
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !533, line: 41, size: 32, elements: !534)
!533 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !{!535}
!535 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!536 = !{!49}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !539, retainedTypes: !553)
!538 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!540}
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !542, file: !541, line: 192, size: 32, elements: !551)
!541 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = distinct !DISubprogram(name: "x2nrealloc", scope: !541, file: !541, line: 180, type: !543, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !546)
!543 = !DISubroutineType(types: !544)
!544 = !{!49, !49, !545, !94}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!546 = !{!547, !548, !549, !550}
!547 = !DILocalVariable(name: "p", arg: 1, scope: !542, file: !541, line: 180, type: !49)
!548 = !DILocalVariable(name: "pn", arg: 2, scope: !542, file: !541, line: 180, type: !545)
!549 = !DILocalVariable(name: "s", arg: 3, scope: !542, file: !541, line: 180, type: !94)
!550 = !DILocalVariable(name: "n", scope: !542, file: !541, line: 182, type: !94)
!551 = !{!552}
!552 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!553 = !{!94, !50, !49}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!555 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536)
!557 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !560)
!559 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!94}
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !563, retainedTypes: !571)
!562 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = !{!501, !564}
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !565, file: !541, line: 192, size: 32, elements: !551)
!565 = distinct !DISubprogram(name: "x2nrealloc", scope: !541, file: !541, line: 180, type: !543, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !566)
!566 = !{!567, !568, !569, !570}
!567 = !DILocalVariable(name: "p", arg: 1, scope: !565, file: !541, line: 180, type: !49)
!568 = !DILocalVariable(name: "pn", arg: 2, scope: !565, file: !541, line: 180, type: !545)
!569 = !DILocalVariable(name: "s", arg: 3, scope: !565, file: !541, line: 180, type: !94)
!570 = !DILocalVariable(name: "n", scope: !565, file: !541, line: 182, type: !94)
!571 = !{!50, !49}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!573 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!575 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!577 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536)
!579 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536)
!581 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!583 = !{i32 2, !"Dwarf Version", i32 4}
!584 = !{i32 2, !"Debug Info Version", i32 3}
!585 = !{i32 1, !"wchar_size", i32 4}
!586 = !{i32 7, !"PIC Level", i32 2}
!587 = !{i32 7, !"PIE Level", i32 2}
!588 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 100, type: !589, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !25}
!591 = !{!592}
!592 = !DILocalVariable(name: "status", arg: 1, scope: !588, file: !499, line: 100, type: !25)
!593 = !DIExpression()
!594 = !DILocation(line: 100, column: 12, scope: !588)
!595 = !DILocation(line: 102, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !588, file: !499, line: 102, column: 7)
!597 = !DILocation(line: 102, column: 7, scope: !588)
!598 = !DILocation(line: 103, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !499, line: 103, column: 5)
!600 = !{!601, !601, i64 0}
!601 = !{!"any pointer", !602, i64 0}
!602 = !{!"omnipotent char", !603, i64 0}
!603 = !{!"Simple C/C++ TBAA"}
!604 = !DILocation(line: 106, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !596, file: !499, line: 105, column: 5)
!606 = !DILocation(line: 107, column: 7, scope: !605)
!607 = !DILocation(line: 113, column: 7, scope: !605)
!608 = !DILocation(line: 114, column: 7, scope: !605)
!609 = !DILocation(line: 642, column: 15, scope: !511, inlinedAt: !610)
!610 = distinct !DILocation(line: 115, column: 7, scope: !605)
!611 = !DILocation(line: 651, column: 3, scope: !511, inlinedAt: !610)
!612 = !DILocation(line: 655, column: 29, scope: !511, inlinedAt: !610)
!613 = !DILocation(line: 655, column: 15, scope: !511, inlinedAt: !610)
!614 = !DILocation(line: 656, column: 7, scope: !615, inlinedAt: !610)
!615 = distinct !DILexicalBlock(scope: !511, file: !512, line: 656, column: 7)
!616 = !DILocation(line: 656, column: 19, scope: !615, inlinedAt: !610)
!617 = !DILocation(line: 656, column: 22, scope: !615, inlinedAt: !610)
!618 = !DILocation(line: 656, column: 7, scope: !511, inlinedAt: !610)
!619 = !DILocation(line: 662, column: 7, scope: !620, inlinedAt: !610)
!620 = distinct !DILexicalBlock(scope: !615, file: !512, line: 657, column: 5)
!621 = !DILocation(line: 664, column: 5, scope: !620, inlinedAt: !610)
!622 = !DILocation(line: 665, column: 3, scope: !511, inlinedAt: !610)
!623 = !DILocation(line: 667, column: 3, scope: !511, inlinedAt: !610)
!624 = !DILocation(line: 117, column: 3, scope: !588)
!625 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 121, type: !626, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!25, !25, !507}
!628 = !{!629, !630}
!629 = !DILocalVariable(name: "argc", arg: 1, scope: !625, file: !499, line: 121, type: !25)
!630 = !DILocalVariable(name: "argv", arg: 2, scope: !625, file: !499, line: 121, type: !507)
!631 = !DILocation(line: 121, column: 11, scope: !625)
!632 = !DILocation(line: 121, column: 24, scope: !625)
!633 = !DILocation(line: 124, column: 21, scope: !625)
!634 = !DILocation(line: 124, column: 3, scope: !625)
!635 = !DILocation(line: 125, column: 3, scope: !625)
!636 = !DILocation(line: 126, column: 3, scope: !625)
!637 = !DILocation(line: 127, column: 3, scope: !625)
!638 = !DILocation(line: 129, column: 3, scope: !625)
!639 = !DILocation(line: 131, column: 63, scope: !625)
!640 = !DILocation(line: 131, column: 3, scope: !625)
!641 = !DILocation(line: 133, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !625, file: !499, line: 133, column: 7)
!643 = !DILocation(line: 133, column: 48, scope: !642)
!644 = !DILocation(line: 133, column: 7, scope: !625)
!645 = !DILocation(line: 134, column: 5, scope: !642)
!646 = !DILocation(line: 136, column: 18, scope: !625)
!647 = !{!648, !648, i64 0}
!648 = !{!"int", !602, i64 0}
!649 = !DILocation(line: 136, column: 16, scope: !625)
!650 = !DILocation(line: 136, column: 3, scope: !625)
!651 = !DILocation(line: 139, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !625, file: !499, line: 137, column: 5)
!653 = !DILocation(line: 140, column: 7, scope: !652)
!654 = !DILocation(line: 143, column: 14, scope: !652)
!655 = !DILocation(line: 143, column: 7, scope: !652)
!656 = !DILocation(line: 144, column: 7, scope: !652)
!657 = !DILocation(line: 147, column: 20, scope: !652)
!658 = !DILocation(line: 147, column: 55, scope: !652)
!659 = !DILocation(line: 147, column: 62, scope: !652)
!660 = !DILocation(line: 147, column: 50, scope: !652)
!661 = !DILocation(line: 147, column: 43, scope: !652)
!662 = !DILocation(line: 147, column: 7, scope: !652)
!663 = !DILocation(line: 148, column: 7, scope: !652)
!664 = !DILocation(line: 151, column: 3, scope: !625)
!665 = distinct !DISubprogram(name: "users", scope: !499, file: !499, line: 86, type: !666, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !6, !25}
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "filename", arg: 1, scope: !665, file: !499, line: 86, type: !6)
!670 = !DILocalVariable(name: "options", arg: 2, scope: !665, file: !499, line: 86, type: !25)
!671 = !DILocalVariable(name: "n_users", scope: !665, file: !499, line: 88, type: !94)
!672 = !DILocalVariable(name: "utmp_buf", scope: !665, file: !499, line: 89, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !502, line: 146, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !676, line: 55, size: 3072, elements: !677)
!676 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = !{!678, !680, !683, !687, !691, !692, !693, !698, !700, !705, !707}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !675, file: !676, line: 57, baseType: !679, size: 16)
!679 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !675, file: !676, line: 58, baseType: !681, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !682, line: 142, baseType: !25)
!682 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !675, file: !676, line: 59, baseType: !684, size: 256, offset: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !675, file: !676, line: 60, baseType: !688, size: 32, offset: 320)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 4)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !675, file: !676, line: 61, baseType: !684, size: 256, offset: 352)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !675, file: !676, line: 62, baseType: !122, size: 2048, offset: 608)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !675, file: !676, line: 63, baseType: !694, size: 32, offset: 2656)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !676, line: 42, size: 32, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !694, file: !676, line: 45, baseType: !679, size: 16)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !694, file: !676, line: 46, baseType: !679, size: 16, offset: 16)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !675, file: !676, line: 70, baseType: !699, size: 32, offset: 2688)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !682, line: 40, baseType: !25)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !675, file: !676, line: 75, baseType: !701, size: 64, offset: 2720)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !676, line: 71, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !701, file: !676, line: 73, baseType: !699, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !701, file: !676, line: 74, baseType: !699, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !675, file: !676, line: 80, baseType: !706, size: 128, offset: 2784)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 128, elements: !689)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !675, file: !676, line: 81, baseType: !708, size: 160, offset: 2912)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 20)
!711 = !DILocation(line: 86, column: 20, scope: !665)
!712 = !DILocation(line: 86, column: 34, scope: !665)
!713 = !DILocation(line: 88, column: 3, scope: !665)
!714 = !DILocation(line: 89, column: 3, scope: !665)
!715 = !DILocation(line: 88, column: 10, scope: !665)
!716 = !DILocation(line: 89, column: 16, scope: !665)
!717 = !DILocation(line: 91, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !665, file: !499, line: 91, column: 7)
!719 = !DILocation(line: 91, column: 58, scope: !718)
!720 = !DILocation(line: 91, column: 7, scope: !665)
!721 = !DILocation(line: 92, column: 5, scope: !718)
!722 = !DILocation(line: 94, column: 23, scope: !665)
!723 = !{!724, !724, i64 0}
!724 = !{!"long", !602, i64 0}
!725 = !DILocalVariable(name: "n", arg: 1, scope: !726, file: !499, line: 48, type: !94)
!726 = distinct !DISubprogram(name: "list_entries_users", scope: !499, file: !499, line: 48, type: !727, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !731)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !94, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!731 = !{!725, !732, !733, !734, !735, !736, !740}
!732 = !DILocalVariable(name: "this", arg: 2, scope: !726, file: !499, line: 48, type: !729)
!733 = !DILocalVariable(name: "u", scope: !726, file: !499, line: 50, type: !507)
!734 = !DILocalVariable(name: "i", scope: !726, file: !499, line: 51, type: !94)
!735 = !DILocalVariable(name: "n_entries", scope: !726, file: !499, line: 52, type: !94)
!736 = !DILocalVariable(name: "trimmed_name", scope: !737, file: !499, line: 58, type: !50)
!737 = distinct !DILexicalBlock(scope: !738, file: !499, line: 57, column: 9)
!738 = distinct !DILexicalBlock(scope: !739, file: !499, line: 56, column: 11)
!739 = distinct !DILexicalBlock(scope: !726, file: !499, line: 55, column: 5)
!740 = !DILocalVariable(name: "c", scope: !741, file: !499, line: 72, type: !8)
!741 = distinct !DILexicalBlock(scope: !742, file: !499, line: 71, column: 5)
!742 = distinct !DILexicalBlock(scope: !743, file: !499, line: 70, column: 3)
!743 = distinct !DILexicalBlock(scope: !726, file: !499, line: 70, column: 3)
!744 = !DILocation(line: 48, column: 28, scope: !726, inlinedAt: !745)
!745 = distinct !DILocation(line: 94, column: 3, scope: !665)
!746 = !DILocation(line: 48, column: 50, scope: !726, inlinedAt: !745)
!747 = !DILocalVariable(name: "n", arg: 1, scope: !748, file: !541, line: 105, type: !94)
!748 = distinct !DISubprogram(name: "xnmalloc", scope: !541, file: !541, line: 105, type: !749, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!49, !94, !94}
!751 = !{!747, !752}
!752 = !DILocalVariable(name: "s", arg: 2, scope: !748, file: !541, line: 105, type: !94)
!753 = !DILocation(line: 105, column: 18, scope: !748, inlinedAt: !754)
!754 = distinct !DILocation(line: 50, column: 14, scope: !726, inlinedAt: !745)
!755 = !DILocation(line: 105, column: 28, scope: !748, inlinedAt: !754)
!756 = !DILocation(line: 107, column: 7, scope: !757, inlinedAt: !754)
!757 = distinct !DILexicalBlock(scope: !748, file: !541, line: 107, column: 7)
!758 = !DILocation(line: 107, column: 7, scope: !748, inlinedAt: !754)
!759 = !DILocation(line: 108, column: 5, scope: !757, inlinedAt: !754)
!760 = !DILocation(line: 94, column: 32, scope: !665)
!761 = !DILocation(line: 109, column: 21, scope: !748, inlinedAt: !754)
!762 = !DILocation(line: 109, column: 10, scope: !748, inlinedAt: !754)
!763 = !DILocation(line: 50, column: 14, scope: !726, inlinedAt: !745)
!764 = !DILocation(line: 50, column: 10, scope: !726, inlinedAt: !745)
!765 = !DILocation(line: 52, column: 10, scope: !726, inlinedAt: !745)
!766 = !DILocation(line: 54, column: 3, scope: !726, inlinedAt: !745)
!767 = !DILocation(line: 54, column: 11, scope: !726, inlinedAt: !745)
!768 = !DILocation(line: 68, column: 3, scope: !726, inlinedAt: !745)
!769 = !DILocation(line: 51, column: 10, scope: !726, inlinedAt: !745)
!770 = !DILocation(line: 70, column: 3, scope: !743, inlinedAt: !745)
!771 = !DILocation(line: 56, column: 11, scope: !738, inlinedAt: !745)
!772 = !{!602, !602, i64 0}
!773 = !{!774, !775, i64 0}
!774 = !{!"utmpx", !775, i64 0, !648, i64 4, !602, i64 8, !602, i64 40, !602, i64 44, !602, i64 76, !776, i64 332, !648, i64 336, !777, i64 340, !602, i64 348, !602, i64 364}
!775 = !{!"short", !602, i64 0}
!776 = !{!"__exit_status", !775, i64 0, !775, i64 2}
!777 = !{!"", !648, i64 0, !648, i64 4}
!778 = !DILocation(line: 56, column: 11, scope: !739, inlinedAt: !745)
!779 = !DILocation(line: 60, column: 26, scope: !737, inlinedAt: !745)
!780 = !DILocation(line: 58, column: 17, scope: !737, inlinedAt: !745)
!781 = !DILocation(line: 62, column: 11, scope: !737, inlinedAt: !745)
!782 = !DILocation(line: 62, column: 24, scope: !737, inlinedAt: !745)
!783 = !DILocation(line: 63, column: 11, scope: !737, inlinedAt: !745)
!784 = !DILocation(line: 64, column: 9, scope: !737, inlinedAt: !745)
!785 = !DILocation(line: 65, column: 11, scope: !739, inlinedAt: !745)
!786 = distinct !{!786, !787, !788}
!787 = !DILocation(line: 54, column: 3, scope: !726)
!788 = !DILocation(line: 66, column: 5, scope: !726)
!789 = !DILocation(line: 70, column: 17, scope: !742, inlinedAt: !745)
!790 = !DILocation(line: 72, column: 19, scope: !741, inlinedAt: !745)
!791 = !DILocation(line: 73, column: 7, scope: !741, inlinedAt: !745)
!792 = !DILocation(line: 74, column: 7, scope: !741, inlinedAt: !745)
!793 = !DILocalVariable(name: "__c", arg: 1, scope: !794, file: !795, line: 105, type: !25)
!794 = distinct !DISubprogram(name: "putchar_unlocked", scope: !795, file: !795, line: 105, type: !796, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !798)
!795 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!796 = !DISubroutineType(types: !797)
!797 = !{!25, !25}
!798 = !{!793}
!799 = !DILocation(line: 105, column: 23, scope: !794, inlinedAt: !800)
!800 = distinct !DILocation(line: 74, column: 7, scope: !741, inlinedAt: !745)
!801 = !DILocation(line: 107, column: 10, scope: !794, inlinedAt: !800)
!802 = !{!803, !601, i64 40}
!803 = !{!"_IO_FILE", !648, i64 0, !601, i64 8, !601, i64 16, !601, i64 24, !601, i64 32, !601, i64 40, !601, i64 48, !601, i64 56, !601, i64 64, !601, i64 72, !601, i64 80, !601, i64 88, !601, i64 96, !601, i64 104, !648, i64 112, !648, i64 116, !724, i64 120, !775, i64 128, !602, i64 130, !602, i64 131, !601, i64 136, !724, i64 144, !601, i64 152, !601, i64 160, !601, i64 168, !601, i64 176, !724, i64 184, !648, i64 192, !602, i64 196}
!804 = !{!803, !601, i64 48}
!805 = !{!"branch_weights", i32 2000, i32 1}
!806 = !DILocation(line: 70, column: 31, scope: !742, inlinedAt: !745)
!807 = distinct !{!807, !808, !809}
!808 = !DILocation(line: 70, column: 3, scope: !743)
!809 = !DILocation(line: 75, column: 5, scope: !743)
!810 = !DILocation(line: 78, column: 11, scope: !811, inlinedAt: !745)
!811 = distinct !DILexicalBlock(scope: !812, file: !499, line: 77, column: 3)
!812 = distinct !DILexicalBlock(scope: !726, file: !499, line: 77, column: 3)
!813 = !DILocation(line: 78, column: 5, scope: !811, inlinedAt: !745)
!814 = !DILocation(line: 77, column: 31, scope: !811, inlinedAt: !745)
!815 = !DILocation(line: 77, column: 17, scope: !811, inlinedAt: !745)
!816 = !DILocation(line: 77, column: 3, scope: !812, inlinedAt: !745)
!817 = distinct !{!817, !818, !819}
!818 = !DILocation(line: 77, column: 3, scope: !812)
!819 = !DILocation(line: 78, column: 15, scope: !812)
!820 = !DILocation(line: 79, column: 3, scope: !726, inlinedAt: !745)
!821 = !DILocation(line: 96, column: 9, scope: !665)
!822 = !DIExpression(DW_OP_deref)
!823 = !DILocation(line: 96, column: 3, scope: !665)
!824 = !DILocation(line: 97, column: 1, scope: !665)
!825 = distinct !DISubprogram(name: "userid_compare", scope: !499, file: !499, line: 40, type: !826, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !830)
!826 = !DISubroutineType(types: !827)
!827 = !{!25, !828, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!830 = !{!831, !832, !833, !834}
!831 = !DILocalVariable(name: "v_a", arg: 1, scope: !825, file: !499, line: 40, type: !828)
!832 = !DILocalVariable(name: "v_b", arg: 2, scope: !825, file: !499, line: 40, type: !828)
!833 = !DILocalVariable(name: "a", scope: !825, file: !499, line: 42, type: !507)
!834 = !DILocalVariable(name: "b", scope: !825, file: !499, line: 43, type: !507)
!835 = !DILocation(line: 40, column: 29, scope: !825)
!836 = !DILocation(line: 40, column: 46, scope: !825)
!837 = !DILocation(line: 42, column: 14, scope: !825)
!838 = !DILocation(line: 42, column: 10, scope: !825)
!839 = !DILocation(line: 43, column: 14, scope: !825)
!840 = !DILocation(line: 43, column: 10, scope: !825)
!841 = !DILocation(line: 44, column: 18, scope: !825)
!842 = !DILocation(line: 44, column: 22, scope: !825)
!843 = !DILocation(line: 44, column: 10, scope: !825)
!844 = !DILocation(line: 44, column: 3, scope: !825)
!845 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !513, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !846)
!846 = !{!847}
!847 = !DILocalVariable(name: "file", arg: 1, scope: !845, file: !16, line: 41, type: !6)
!848 = !DILocation(line: 41, column: 41, scope: !845)
!849 = !DILocation(line: 43, column: 13, scope: !845)
!850 = !DILocation(line: 44, column: 1, scope: !845)
!851 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !852, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !17}
!854 = !{!855}
!855 = !DILocalVariable(name: "ignore", arg: 1, scope: !851, file: !16, line: 78, type: !17)
!856 = !DILocation(line: 78, column: 37, scope: !851)
!857 = !DILocation(line: 80, column: 16, scope: !851)
!858 = !{!859, !859, i64 0}
!859 = !{!"_Bool", !602, i64 0}
!860 = !DILocation(line: 81, column: 1, scope: !851)
!861 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !862, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null}
!864 = !{!865}
!865 = !DILocalVariable(name: "write_error", scope: !866, file: !16, line: 112, type: !6)
!866 = distinct !DILexicalBlock(scope: !867, file: !16, line: 111, column: 5)
!867 = distinct !DILexicalBlock(scope: !861, file: !16, line: 109, column: 7)
!868 = !DILocation(line: 109, column: 21, scope: !867)
!869 = !DILocation(line: 109, column: 7, scope: !867)
!870 = !DILocation(line: 109, column: 29, scope: !867)
!871 = !DILocation(line: 110, column: 7, scope: !867)
!872 = !DILocation(line: 110, column: 12, scope: !867)
!873 = !{i8 0, i8 2}
!874 = !DILocation(line: 114, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !866, file: !16, line: 113, column: 11)
!876 = !DILocation(line: 110, column: 25, scope: !867)
!877 = !DILocation(line: 110, column: 28, scope: !867)
!878 = !DILocation(line: 110, column: 34, scope: !867)
!879 = !DILocation(line: 109, column: 7, scope: !861)
!880 = !DILocation(line: 112, column: 33, scope: !866)
!881 = !DILocation(line: 112, column: 19, scope: !866)
!882 = !DILocation(line: 113, column: 11, scope: !875)
!883 = !DILocation(line: 113, column: 11, scope: !866)
!884 = !DILocation(line: 114, column: 36, scope: !875)
!885 = !DILocation(line: 114, column: 9, scope: !875)
!886 = !DILocation(line: 117, column: 9, scope: !875)
!887 = !DILocation(line: 119, column: 14, scope: !866)
!888 = !DILocation(line: 119, column: 7, scope: !866)
!889 = !DILocation(line: 122, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !861, file: !16, line: 122, column: 8)
!891 = !DILocation(line: 122, column: 8, scope: !890)
!892 = !DILocation(line: 122, column: 30, scope: !890)
!893 = !DILocation(line: 122, column: 8, scope: !861)
!894 = !DILocation(line: 123, column: 13, scope: !890)
!895 = !DILocation(line: 123, column: 6, scope: !890)
!896 = !DILocation(line: 124, column: 1, scope: !861)
!897 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !898, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !901)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !25, !507, !6, !6, !6, !900, null}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910}
!902 = !DILocalVariable(name: "argc", arg: 1, scope: !897, file: !31, line: 44, type: !25)
!903 = !DILocalVariable(name: "argv", arg: 2, scope: !897, file: !31, line: 45, type: !507)
!904 = !DILocalVariable(name: "command_name", arg: 3, scope: !897, file: !31, line: 46, type: !6)
!905 = !DILocalVariable(name: "package", arg: 4, scope: !897, file: !31, line: 47, type: !6)
!906 = !DILocalVariable(name: "version", arg: 5, scope: !897, file: !31, line: 48, type: !6)
!907 = !DILocalVariable(name: "usage_func", arg: 6, scope: !897, file: !31, line: 49, type: !900)
!908 = !DILocalVariable(name: "c", scope: !897, file: !31, line: 52, type: !25)
!909 = !DILocalVariable(name: "saved_opterr", scope: !897, file: !31, line: 53, type: !25)
!910 = !DILocalVariable(name: "authors", scope: !911, file: !31, line: 71, type: !915)
!911 = distinct !DILexicalBlock(scope: !912, file: !31, line: 70, column: 11)
!912 = distinct !DILexicalBlock(scope: !913, file: !31, line: 64, column: 9)
!913 = distinct !DILexicalBlock(scope: !914, file: !31, line: 62, column: 5)
!914 = distinct !DILexicalBlock(scope: !897, file: !31, line: 60, column: 7)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !916, line: 46, baseType: !917)
!916 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !918, line: 48, baseType: !919)
!918 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !920)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 192, elements: !927)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !922)
!922 = !{!923, !924, !925, !926}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !921, file: !29, line: 71, baseType: !113, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !921, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !921, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !921, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!927 = !{!928}
!928 = !DISubrange(count: 1)
!929 = !DILocation(line: 44, column: 25, scope: !897)
!930 = !DILocation(line: 45, column: 28, scope: !897)
!931 = !DILocation(line: 46, column: 33, scope: !897)
!932 = !DILocation(line: 47, column: 33, scope: !897)
!933 = !DILocation(line: 48, column: 33, scope: !897)
!934 = !DILocation(line: 49, column: 28, scope: !897)
!935 = !DILocation(line: 55, column: 18, scope: !897)
!936 = !DILocation(line: 53, column: 7, scope: !897)
!937 = !DILocation(line: 58, column: 10, scope: !897)
!938 = !DILocation(line: 60, column: 12, scope: !914)
!939 = !DILocation(line: 61, column: 7, scope: !914)
!940 = !DILocation(line: 61, column: 15, scope: !914)
!941 = !DILocation(line: 52, column: 7, scope: !897)
!942 = !DILocation(line: 60, column: 7, scope: !897)
!943 = !DILocation(line: 66, column: 11, scope: !912)
!944 = !DILocation(line: 67, column: 11, scope: !912)
!945 = !DILocation(line: 71, column: 13, scope: !911)
!946 = !DILocation(line: 71, column: 21, scope: !911)
!947 = !DILocation(line: 72, column: 13, scope: !911)
!948 = !DILocation(line: 73, column: 29, scope: !911)
!949 = !DILocation(line: 73, column: 13, scope: !911)
!950 = !DILocation(line: 74, column: 13, scope: !911)
!951 = !DILocation(line: 84, column: 10, scope: !897)
!952 = !DILocation(line: 88, column: 10, scope: !897)
!953 = !DILocation(line: 89, column: 1, scope: !897)
!954 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !513, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !955)
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "argv0", arg: 1, scope: !954, file: !52, line: 39, type: !6)
!957 = !DILocalVariable(name: "slash", scope: !954, file: !52, line: 46, type: !6)
!958 = !DILocalVariable(name: "base", scope: !954, file: !52, line: 47, type: !6)
!959 = !DILocation(line: 39, column: 31, scope: !954)
!960 = !DILocation(line: 51, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !954, file: !52, line: 51, column: 7)
!962 = !DILocation(line: 51, column: 7, scope: !954)
!963 = !DILocation(line: 55, column: 14, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !52, line: 52, column: 5)
!965 = !DILocation(line: 54, column: 7, scope: !964)
!966 = !DILocation(line: 56, column: 7, scope: !964)
!967 = !DILocation(line: 59, column: 11, scope: !954)
!968 = !DILocation(line: 46, column: 15, scope: !954)
!969 = !DILocation(line: 60, column: 17, scope: !954)
!970 = !DILocation(line: 60, column: 33, scope: !954)
!971 = !DILocation(line: 60, column: 11, scope: !954)
!972 = !DILocation(line: 47, column: 15, scope: !954)
!973 = !DILocation(line: 61, column: 12, scope: !974)
!974 = distinct !DILexicalBlock(scope: !954, file: !52, line: 61, column: 7)
!975 = !DILocation(line: 61, column: 20, scope: !974)
!976 = !DILocation(line: 61, column: 25, scope: !974)
!977 = !DILocation(line: 61, column: 42, scope: !974)
!978 = !DILocation(line: 61, column: 28, scope: !974)
!979 = !DILocation(line: 61, column: 61, scope: !974)
!980 = !DILocation(line: 61, column: 7, scope: !954)
!981 = !DILocation(line: 64, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !52, line: 64, column: 11)
!983 = distinct !DILexicalBlock(scope: !974, file: !52, line: 62, column: 5)
!984 = !DILocation(line: 64, column: 36, scope: !982)
!985 = !DILocation(line: 64, column: 11, scope: !983)
!986 = !DILocation(line: 66, column: 24, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !52, line: 65, column: 9)
!988 = !DILocation(line: 70, column: 41, scope: !987)
!989 = !DILocation(line: 72, column: 9, scope: !987)
!990 = !DILocation(line: 84, column: 16, scope: !954)
!991 = !DILocation(line: 90, column: 27, scope: !954)
!992 = !DILocation(line: 92, column: 1, scope: !954)
!993 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !994, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !997)
!994 = !DISubroutineType(types: !995)
!995 = !{!996, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!997 = !{!998, !999, !1000}
!998 = !DILocalVariable(name: "o", arg: 1, scope: !993, file: !100, line: 114, type: !996)
!999 = !DILocalVariable(name: "e", scope: !993, file: !100, line: 116, type: !25)
!1000 = !DILocalVariable(name: "p", scope: !993, file: !100, line: 117, type: !996)
!1001 = !DILocation(line: 114, column: 48, scope: !993)
!1002 = !DILocation(line: 116, column: 11, scope: !993)
!1003 = !DILocation(line: 116, column: 7, scope: !993)
!1004 = !DILocation(line: 117, column: 40, scope: !993)
!1005 = !DILocation(line: 117, column: 31, scope: !993)
!1006 = !DILocation(line: 117, column: 27, scope: !993)
!1007 = !DILocation(line: 119, column: 9, scope: !993)
!1008 = !DILocation(line: 120, column: 3, scope: !993)
!1009 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !1010, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1014)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!58, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "o", arg: 1, scope: !1009, file: !100, line: 125, type: !1012)
!1016 = !DILocation(line: 125, column: 50, scope: !1009)
!1017 = !DILocation(line: 127, column: 11, scope: !1009)
!1018 = !DILocation(line: 127, column: 46, scope: !1009)
!1019 = !{!1020, !602, i64 0}
!1020 = !{!"quoting_options", !602, i64 0, !648, i64 4, !602, i64 8, !601, i64 40, !601, i64 48}
!1021 = !DILocation(line: 127, column: 3, scope: !1009)
!1022 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !1023, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !996, !58}
!1025 = !{!1026, !1027}
!1026 = !DILocalVariable(name: "o", arg: 1, scope: !1022, file: !100, line: 133, type: !996)
!1027 = !DILocalVariable(name: "s", arg: 2, scope: !1022, file: !100, line: 133, type: !58)
!1028 = !DILocation(line: 133, column: 44, scope: !1022)
!1029 = !DILocation(line: 133, column: 66, scope: !1022)
!1030 = !DILocation(line: 135, column: 4, scope: !1022)
!1031 = !DILocation(line: 135, column: 39, scope: !1022)
!1032 = !DILocation(line: 135, column: 45, scope: !1022)
!1033 = !DILocation(line: 136, column: 1, scope: !1022)
!1034 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !1035, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!25, !996, !8, !25}
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1044, !1045}
!1038 = !DILocalVariable(name: "o", arg: 1, scope: !1034, file: !100, line: 144, type: !996)
!1039 = !DILocalVariable(name: "c", arg: 2, scope: !1034, file: !100, line: 144, type: !8)
!1040 = !DILocalVariable(name: "i", arg: 3, scope: !1034, file: !100, line: 144, type: !25)
!1041 = !DILocalVariable(name: "uc", scope: !1034, file: !100, line: 146, type: !494)
!1042 = !DILocalVariable(name: "p", scope: !1034, file: !100, line: 147, type: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1044 = !DILocalVariable(name: "shift", scope: !1034, file: !100, line: 149, type: !25)
!1045 = !DILocalVariable(name: "r", scope: !1034, file: !100, line: 150, type: !25)
!1046 = !DILocation(line: 144, column: 43, scope: !1034)
!1047 = !DILocation(line: 144, column: 51, scope: !1034)
!1048 = !DILocation(line: 144, column: 58, scope: !1034)
!1049 = !DILocation(line: 146, column: 17, scope: !1034)
!1050 = !DILocation(line: 148, column: 6, scope: !1034)
!1051 = !DILocation(line: 148, column: 62, scope: !1034)
!1052 = !DILocation(line: 148, column: 57, scope: !1034)
!1053 = !DILocation(line: 147, column: 17, scope: !1034)
!1054 = !DILocation(line: 149, column: 18, scope: !1034)
!1055 = !DILocation(line: 149, column: 15, scope: !1034)
!1056 = !DILocation(line: 149, column: 7, scope: !1034)
!1057 = !DILocation(line: 150, column: 12, scope: !1034)
!1058 = !DILocation(line: 150, column: 15, scope: !1034)
!1059 = !DILocation(line: 150, column: 25, scope: !1034)
!1060 = !DILocation(line: 150, column: 7, scope: !1034)
!1061 = !DILocation(line: 151, column: 13, scope: !1034)
!1062 = !DILocation(line: 151, column: 18, scope: !1034)
!1063 = !DILocation(line: 151, column: 23, scope: !1034)
!1064 = !DILocation(line: 151, column: 6, scope: !1034)
!1065 = !DILocation(line: 152, column: 3, scope: !1034)
!1066 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1067, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!25, !996, !25}
!1069 = !{!1070, !1071, !1072}
!1070 = !DILocalVariable(name: "o", arg: 1, scope: !1066, file: !100, line: 160, type: !996)
!1071 = !DILocalVariable(name: "i", arg: 2, scope: !1066, file: !100, line: 160, type: !25)
!1072 = !DILocalVariable(name: "r", scope: !1066, file: !100, line: 162, type: !25)
!1073 = !DILocation(line: 160, column: 44, scope: !1066)
!1074 = !DILocation(line: 160, column: 51, scope: !1066)
!1075 = !DILocation(line: 163, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !100, line: 163, column: 7)
!1077 = !DILocation(line: 163, column: 7, scope: !1066)
!1078 = !DILocation(line: 165, column: 10, scope: !1066)
!1079 = !{!1020, !648, i64 4}
!1080 = !DILocation(line: 162, column: 7, scope: !1066)
!1081 = !DILocation(line: 166, column: 12, scope: !1066)
!1082 = !DILocation(line: 167, column: 3, scope: !1066)
!1083 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1084, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !996, !6, !6}
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "o", arg: 1, scope: !1083, file: !100, line: 171, type: !996)
!1088 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1083, file: !100, line: 172, type: !6)
!1089 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1083, file: !100, line: 172, type: !6)
!1090 = !DILocation(line: 171, column: 45, scope: !1083)
!1091 = !DILocation(line: 172, column: 33, scope: !1083)
!1092 = !DILocation(line: 172, column: 57, scope: !1083)
!1093 = !DILocation(line: 174, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 174, column: 7)
!1095 = !DILocation(line: 174, column: 7, scope: !1083)
!1096 = !DILocation(line: 176, column: 6, scope: !1083)
!1097 = !DILocation(line: 176, column: 12, scope: !1083)
!1098 = !DILocation(line: 177, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 177, column: 7)
!1100 = !DILocation(line: 177, column: 23, scope: !1099)
!1101 = !DILocation(line: 177, column: 19, scope: !1099)
!1102 = !DILocation(line: 178, column: 5, scope: !1099)
!1103 = !DILocation(line: 179, column: 6, scope: !1083)
!1104 = !DILocation(line: 179, column: 17, scope: !1083)
!1105 = !{!1020, !601, i64 40}
!1106 = !DILocation(line: 180, column: 6, scope: !1083)
!1107 = !DILocation(line: 180, column: 18, scope: !1083)
!1108 = !{!1020, !601, i64 48}
!1109 = !DILocation(line: 181, column: 1, scope: !1083)
!1110 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1111, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!94, !50, !94, !6, !94, !1012}
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1114 = !DILocalVariable(name: "buffer", arg: 1, scope: !1110, file: !100, line: 776, type: !50)
!1115 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1110, file: !100, line: 776, type: !94)
!1116 = !DILocalVariable(name: "arg", arg: 3, scope: !1110, file: !100, line: 777, type: !6)
!1117 = !DILocalVariable(name: "argsize", arg: 4, scope: !1110, file: !100, line: 777, type: !94)
!1118 = !DILocalVariable(name: "o", arg: 5, scope: !1110, file: !100, line: 778, type: !1012)
!1119 = !DILocalVariable(name: "p", scope: !1110, file: !100, line: 780, type: !1012)
!1120 = !DILocalVariable(name: "e", scope: !1110, file: !100, line: 781, type: !25)
!1121 = !DILocalVariable(name: "r", scope: !1110, file: !100, line: 782, type: !94)
!1122 = !DILocation(line: 776, column: 24, scope: !1110)
!1123 = !DILocation(line: 776, column: 39, scope: !1110)
!1124 = !DILocation(line: 777, column: 30, scope: !1110)
!1125 = !DILocation(line: 777, column: 42, scope: !1110)
!1126 = !DILocation(line: 778, column: 48, scope: !1110)
!1127 = !DILocation(line: 780, column: 37, scope: !1110)
!1128 = !DILocation(line: 780, column: 33, scope: !1110)
!1129 = !DILocation(line: 781, column: 11, scope: !1110)
!1130 = !DILocation(line: 781, column: 7, scope: !1110)
!1131 = !DILocation(line: 783, column: 43, scope: !1110)
!1132 = !DILocation(line: 783, column: 53, scope: !1110)
!1133 = !DILocation(line: 783, column: 60, scope: !1110)
!1134 = !DILocation(line: 784, column: 43, scope: !1110)
!1135 = !DILocation(line: 784, column: 58, scope: !1110)
!1136 = !DILocation(line: 782, column: 14, scope: !1110)
!1137 = !DILocation(line: 782, column: 10, scope: !1110)
!1138 = !DILocation(line: 785, column: 9, scope: !1110)
!1139 = !DILocation(line: 786, column: 3, scope: !1110)
!1140 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1141, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1145)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!94, !50, !94, !6, !94, !58, !25, !1143, !6, !6}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1170, !1171, !1172, !1173, !1174, !1177, !1178, !1193, !1196, !1197, !1204}
!1146 = !DILocalVariable(name: "buffer", arg: 1, scope: !1140, file: !100, line: 248, type: !50)
!1147 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1140, file: !100, line: 248, type: !94)
!1148 = !DILocalVariable(name: "arg", arg: 3, scope: !1140, file: !100, line: 249, type: !6)
!1149 = !DILocalVariable(name: "argsize", arg: 4, scope: !1140, file: !100, line: 249, type: !94)
!1150 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1140, file: !100, line: 250, type: !58)
!1151 = !DILocalVariable(name: "flags", arg: 6, scope: !1140, file: !100, line: 250, type: !25)
!1152 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1140, file: !100, line: 251, type: !1143)
!1153 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1140, file: !100, line: 252, type: !6)
!1154 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1140, file: !100, line: 253, type: !6)
!1155 = !DILocalVariable(name: "i", scope: !1140, file: !100, line: 255, type: !94)
!1156 = !DILocalVariable(name: "len", scope: !1140, file: !100, line: 256, type: !94)
!1157 = !DILocalVariable(name: "orig_buffersize", scope: !1140, file: !100, line: 257, type: !94)
!1158 = !DILocalVariable(name: "quote_string", scope: !1140, file: !100, line: 258, type: !6)
!1159 = !DILocalVariable(name: "quote_string_len", scope: !1140, file: !100, line: 259, type: !94)
!1160 = !DILocalVariable(name: "backslash_escapes", scope: !1140, file: !100, line: 260, type: !17)
!1161 = !DILocalVariable(name: "unibyte_locale", scope: !1140, file: !100, line: 261, type: !17)
!1162 = !DILocalVariable(name: "elide_outer_quotes", scope: !1140, file: !100, line: 262, type: !17)
!1163 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1140, file: !100, line: 263, type: !17)
!1164 = !DILocalVariable(name: "encountered_single_quote", scope: !1140, file: !100, line: 264, type: !17)
!1165 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1140, file: !100, line: 265, type: !17)
!1166 = !DILocalVariable(name: "c", scope: !1167, file: !100, line: 394, type: !494)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !100, line: 393, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !100, line: 392, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 392, column: 3)
!1170 = !DILocalVariable(name: "esc", scope: !1167, file: !100, line: 395, type: !494)
!1171 = !DILocalVariable(name: "is_right_quote", scope: !1167, file: !100, line: 396, type: !17)
!1172 = !DILocalVariable(name: "escaping", scope: !1167, file: !100, line: 397, type: !17)
!1173 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1167, file: !100, line: 398, type: !17)
!1174 = !DILocalVariable(name: "m", scope: !1175, file: !100, line: 602, type: !94)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 600, column: 11)
!1176 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 418, column: 9)
!1177 = !DILocalVariable(name: "printable", scope: !1175, file: !100, line: 604, type: !17)
!1178 = !DILocalVariable(name: "mbstate", scope: !1179, file: !100, line: 613, type: !1181)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !100, line: 612, column: 15)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 606, column: 17)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1182, line: 6, baseType: !1183)
!1182 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1184, line: 21, baseType: !1185)
!1184 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1184, line: 13, size: 64, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1185, file: !1184, line: 15, baseType: !25, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1185, file: !1184, line: 20, baseType: !1189, size: 32, offset: 32)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1184, line: 16, size: 32, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1189, file: !1184, line: 18, baseType: !113, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1189, file: !1184, line: 19, baseType: !688, size: 32)
!1193 = !DILocalVariable(name: "w", scope: !1194, file: !100, line: 623, type: !1195)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 622, column: 19)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1196 = !DILocalVariable(name: "bytes", scope: !1194, file: !100, line: 624, type: !94)
!1197 = !DILocalVariable(name: "j", scope: !1198, file: !100, line: 649, type: !94)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !100, line: 648, column: 27)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 646, column: 29)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 641, column: 23)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !100, line: 633, column: 30)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !100, line: 628, column: 30)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !100, line: 626, column: 25)
!1204 = !DILocalVariable(name: "ilim", scope: !1205, file: !100, line: 676, type: !94)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 673, column: 15)
!1206 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 672, column: 17)
!1207 = !DILocation(line: 248, column: 33, scope: !1140)
!1208 = !DILocation(line: 248, column: 48, scope: !1140)
!1209 = !DILocation(line: 249, column: 39, scope: !1140)
!1210 = !DILocation(line: 249, column: 51, scope: !1140)
!1211 = !DILocation(line: 250, column: 46, scope: !1140)
!1212 = !DILocation(line: 250, column: 65, scope: !1140)
!1213 = !DILocation(line: 251, column: 47, scope: !1140)
!1214 = !DILocation(line: 252, column: 39, scope: !1140)
!1215 = !DILocation(line: 253, column: 39, scope: !1140)
!1216 = !DILocation(line: 256, column: 10, scope: !1140)
!1217 = !DILocation(line: 257, column: 10, scope: !1140)
!1218 = !DILocation(line: 258, column: 15, scope: !1140)
!1219 = !DILocation(line: 259, column: 10, scope: !1140)
!1220 = !DILocation(line: 260, column: 8, scope: !1140)
!1221 = !DILocation(line: 261, column: 25, scope: !1140)
!1222 = !DILocation(line: 261, column: 36, scope: !1140)
!1223 = !DILocation(line: 262, column: 8, scope: !1140)
!1224 = !DILocation(line: 263, column: 8, scope: !1140)
!1225 = !DILocation(line: 264, column: 8, scope: !1140)
!1226 = !DILocation(line: 265, column: 8, scope: !1140)
!1227 = !DILocation(line: 265, column: 3, scope: !1140)
!1228 = !DILocation(line: 308, column: 3, scope: !1140)
!1229 = !DILocation(line: 315, column: 11, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 309, column: 5)
!1231 = !DILocation(line: 315, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1230, file: !100, line: 315, column: 11)
!1233 = !DILocation(line: 316, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !100, line: 316, column: 9)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !100, line: 316, column: 9)
!1236 = !DILocation(line: 316, column: 9, scope: !1235)
!1237 = !DILocation(line: 354, column: 26, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !100, line: 332, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !100, line: 331, column: 13)
!1240 = distinct !DILexicalBlock(scope: !1230, file: !100, line: 330, column: 7)
!1241 = !DILocation(line: 355, column: 27, scope: !1238)
!1242 = !DILocation(line: 356, column: 11, scope: !1238)
!1243 = !DILocation(line: 357, column: 14, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !100, line: 357, column: 13)
!1245 = !DILocation(line: 357, column: 13, scope: !1240)
!1246 = !DILocation(line: 358, column: 43, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !100, line: 358, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !100, line: 358, column: 11)
!1249 = !DILocation(line: 358, column: 11, scope: !1248)
!1250 = !DILocation(line: 359, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !100, line: 359, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 359, column: 13)
!1253 = !DILocation(line: 359, column: 13, scope: !1252)
!1254 = !DILocation(line: 358, column: 70, scope: !1247)
!1255 = distinct !{!1255, !1249, !1256}
!1256 = !DILocation(line: 359, column: 13, scope: !1248)
!1257 = !DILocation(line: 362, column: 28, scope: !1240)
!1258 = !DILocation(line: 364, column: 7, scope: !1230)
!1259 = !DILocation(line: 367, column: 7, scope: !1230)
!1260 = !DILocation(line: 370, column: 7, scope: !1230)
!1261 = !DILocation(line: 373, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1230, file: !100, line: 373, column: 11)
!1263 = !DILocation(line: 373, column: 11, scope: !1230)
!1264 = !DILocation(line: 378, column: 12, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1230, file: !100, line: 378, column: 11)
!1266 = !DILocation(line: 378, column: 11, scope: !1230)
!1267 = !DILocation(line: 379, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !100, line: 379, column: 9)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !100, line: 379, column: 9)
!1270 = !DILocation(line: 379, column: 9, scope: !1269)
!1271 = !DILocation(line: 386, column: 7, scope: !1230)
!1272 = !DILocation(line: 389, column: 7, scope: !1230)
!1273 = !DILocation(line: 255, column: 10, scope: !1140)
!1274 = !DILocation(line: 392, column: 8, scope: !1169)
!1275 = !DILocation(line: 392, column: 27, scope: !1168)
!1276 = !DILocation(line: 392, column: 19, scope: !1168)
!1277 = !DILocation(line: 392, column: 60, scope: !1168)
!1278 = !DILocation(line: 392, column: 3, scope: !1169)
!1279 = !DILocation(line: 392, column: 41, scope: !1168)
!1280 = !DILocation(line: 392, column: 48, scope: !1168)
!1281 = !DILocation(line: 396, column: 12, scope: !1167)
!1282 = !DILocation(line: 397, column: 12, scope: !1167)
!1283 = !DILocation(line: 398, column: 12, scope: !1167)
!1284 = !DILocation(line: 401, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 400, column: 11)
!1286 = !DILocation(line: 403, column: 17, scope: !1285)
!1287 = !DILocation(line: 404, column: 39, scope: !1285)
!1288 = !DILocation(line: 408, column: 32, scope: !1285)
!1289 = !DILocation(line: 404, column: 19, scope: !1285)
!1290 = !DILocation(line: 404, column: 15, scope: !1285)
!1291 = !DILocation(line: 409, column: 11, scope: !1285)
!1292 = !DILocation(line: 409, column: 26, scope: !1285)
!1293 = !DILocation(line: 409, column: 14, scope: !1285)
!1294 = !DILocation(line: 409, column: 63, scope: !1285)
!1295 = !DILocation(line: 400, column: 11, scope: !1167)
!1296 = !DILocation(line: 416, column: 11, scope: !1167)
!1297 = !DILocation(line: 394, column: 21, scope: !1167)
!1298 = !DILocation(line: 417, column: 7, scope: !1167)
!1299 = !DILocation(line: 420, column: 15, scope: !1176)
!1300 = !DILocation(line: 422, column: 15, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !100, line: 422, column: 15)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !100, line: 421, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 420, column: 15)
!1304 = !DILocation(line: 422, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 422, column: 15)
!1306 = !DILocation(line: 422, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 422, column: 15)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 422, column: 15)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !100, line: 422, column: 15)
!1310 = !DILocation(line: 422, column: 15, scope: !1308)
!1311 = !DILocation(line: 422, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !100, line: 422, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 422, column: 15)
!1314 = !DILocation(line: 422, column: 15, scope: !1313)
!1315 = !DILocation(line: 422, column: 15, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !100, line: 422, column: 15)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 422, column: 15)
!1318 = !DILocation(line: 422, column: 15, scope: !1317)
!1319 = !DILocation(line: 422, column: 15, scope: !1309)
!1320 = !DILocation(line: 422, column: 15, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 422, column: 15)
!1322 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 422, column: 15)
!1323 = !DILocation(line: 422, column: 15, scope: !1322)
!1324 = !DILocation(line: 430, column: 19, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1302, file: !100, line: 429, column: 19)
!1326 = !DILocation(line: 430, column: 24, scope: !1325)
!1327 = !DILocation(line: 430, column: 28, scope: !1325)
!1328 = !DILocation(line: 430, column: 38, scope: !1325)
!1329 = !DILocation(line: 430, column: 48, scope: !1325)
!1330 = !DILocation(line: 430, column: 59, scope: !1325)
!1331 = !DILocation(line: 432, column: 19, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !100, line: 432, column: 19)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !100, line: 432, column: 19)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !100, line: 431, column: 17)
!1335 = !DILocation(line: 432, column: 19, scope: !1333)
!1336 = !DILocation(line: 433, column: 19, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !100, line: 433, column: 19)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !100, line: 433, column: 19)
!1339 = !DILocation(line: 433, column: 19, scope: !1338)
!1340 = !DILocation(line: 434, column: 17, scope: !1334)
!1341 = !DILocation(line: 441, column: 20, scope: !1303)
!1342 = !DILocation(line: 446, column: 11, scope: !1176)
!1343 = !DILocation(line: 449, column: 19, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 447, column: 13)
!1345 = !DILocation(line: 455, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !100, line: 454, column: 19)
!1347 = !DILocation(line: 455, column: 24, scope: !1346)
!1348 = !DILocation(line: 455, column: 28, scope: !1346)
!1349 = !DILocation(line: 455, column: 38, scope: !1346)
!1350 = !DILocation(line: 455, column: 47, scope: !1346)
!1351 = !DILocation(line: 455, column: 41, scope: !1346)
!1352 = !DILocation(line: 455, column: 52, scope: !1346)
!1353 = !DILocation(line: 454, column: 19, scope: !1344)
!1354 = !DILocation(line: 456, column: 25, scope: !1346)
!1355 = !DILocation(line: 456, column: 17, scope: !1346)
!1356 = !DILocation(line: 463, column: 25, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1346, file: !100, line: 457, column: 19)
!1358 = !DILocation(line: 467, column: 21, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !100, line: 467, column: 21)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 467, column: 21)
!1361 = !DILocation(line: 467, column: 21, scope: !1360)
!1362 = !DILocation(line: 468, column: 21, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 468, column: 21)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 468, column: 21)
!1365 = !DILocation(line: 468, column: 21, scope: !1364)
!1366 = !DILocation(line: 469, column: 21, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !100, line: 469, column: 21)
!1368 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 469, column: 21)
!1369 = !DILocation(line: 469, column: 21, scope: !1368)
!1370 = !DILocation(line: 470, column: 21, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !100, line: 470, column: 21)
!1372 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 470, column: 21)
!1373 = !DILocation(line: 470, column: 21, scope: !1372)
!1374 = !DILocation(line: 471, column: 21, scope: !1357)
!1375 = !DILocation(line: 395, column: 21, scope: !1167)
!1376 = !DILocation(line: 484, column: 31, scope: !1176)
!1377 = !DILocation(line: 485, column: 31, scope: !1176)
!1378 = !DILocation(line: 487, column: 31, scope: !1176)
!1379 = !DILocation(line: 488, column: 31, scope: !1176)
!1380 = !DILocation(line: 489, column: 31, scope: !1176)
!1381 = !DILocation(line: 492, column: 15, scope: !1176)
!1382 = !DILocation(line: 494, column: 19, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 493, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 492, column: 15)
!1385 = !DILocation(line: 501, column: 33, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 501, column: 15)
!1387 = !DILocation(line: 506, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 505, column: 15)
!1389 = !DILocation(line: 510, column: 15, scope: !1176)
!1390 = !DILocation(line: 518, column: 26, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 518, column: 15)
!1392 = !DILocation(line: 518, column: 15, scope: !1176)
!1393 = !DILocation(line: 518, column: 40, scope: !1391)
!1394 = !DILocation(line: 518, column: 47, scope: !1391)
!1395 = !DILocation(line: 522, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 522, column: 15)
!1397 = !DILocation(line: 518, column: 18, scope: !1391)
!1398 = !DILocation(line: 518, column: 65, scope: !1391)
!1399 = !DILocation(line: 522, column: 15, scope: !1176)
!1400 = !DILocation(line: 526, column: 11, scope: !1176)
!1401 = !DILocation(line: 541, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 540, column: 15)
!1403 = !DILocation(line: 548, column: 15, scope: !1176)
!1404 = !DILocation(line: 550, column: 19, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !100, line: 549, column: 13)
!1406 = distinct !DILexicalBlock(scope: !1176, file: !100, line: 548, column: 15)
!1407 = !DILocation(line: 553, column: 19, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !100, line: 553, column: 19)
!1409 = !DILocation(line: 553, column: 35, scope: !1408)
!1410 = !DILocation(line: 553, column: 30, scope: !1408)
!1411 = !DILocation(line: 562, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 562, column: 15)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !100, line: 562, column: 15)
!1414 = !DILocation(line: 562, column: 15, scope: !1413)
!1415 = !DILocation(line: 563, column: 15, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !100, line: 563, column: 15)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !100, line: 563, column: 15)
!1418 = !DILocation(line: 563, column: 15, scope: !1417)
!1419 = !DILocation(line: 564, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !100, line: 564, column: 15)
!1421 = distinct !DILexicalBlock(scope: !1405, file: !100, line: 564, column: 15)
!1422 = !DILocation(line: 564, column: 15, scope: !1421)
!1423 = !DILocation(line: 566, column: 13, scope: !1405)
!1424 = !DILocation(line: 606, column: 17, scope: !1175)
!1425 = !DILocation(line: 602, column: 20, scope: !1175)
!1426 = !DILocation(line: 609, column: 29, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1180, file: !100, line: 607, column: 15)
!1428 = !{!775, !775, i64 0}
!1429 = !DILocation(line: 609, column: 27, scope: !1427)
!1430 = !DILocation(line: 604, column: 18, scope: !1175)
!1431 = !DILocation(line: 610, column: 15, scope: !1427)
!1432 = !DILocation(line: 613, column: 17, scope: !1179)
!1433 = !DILocation(line: 614, column: 17, scope: !1179)
!1434 = !DILocation(line: 618, column: 29, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 618, column: 21)
!1436 = !DILocation(line: 618, column: 21, scope: !1179)
!1437 = !DILocation(line: 619, column: 29, scope: !1435)
!1438 = !DILocation(line: 619, column: 19, scope: !1435)
!1439 = !DILocation(line: 621, column: 17, scope: !1179)
!1440 = distinct !{!1440, !1439, !1441}
!1441 = !DILocation(line: 667, column: 44, scope: !1179)
!1442 = !DILocation(line: 623, column: 21, scope: !1194)
!1443 = !DILocation(line: 624, column: 56, scope: !1194)
!1444 = !DILocation(line: 624, column: 50, scope: !1194)
!1445 = !DILocation(line: 625, column: 53, scope: !1194)
!1446 = !DILocation(line: 613, column: 27, scope: !1179)
!1447 = !DILocation(line: 623, column: 29, scope: !1194)
!1448 = !DILocation(line: 624, column: 36, scope: !1194)
!1449 = !DILocation(line: 624, column: 28, scope: !1194)
!1450 = !DILocation(line: 626, column: 25, scope: !1194)
!1451 = !DILocation(line: 636, column: 38, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 634, column: 23)
!1453 = !DILocation(line: 636, column: 48, scope: !1452)
!1454 = !DILocation(line: 636, column: 51, scope: !1452)
!1455 = !DILocation(line: 636, column: 25, scope: !1452)
!1456 = !DILocation(line: 637, column: 28, scope: !1452)
!1457 = !DILocation(line: 636, column: 34, scope: !1452)
!1458 = distinct !{!1458, !1455, !1456}
!1459 = !DILocation(line: 650, column: 43, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !100, line: 650, column: 29)
!1461 = distinct !DILexicalBlock(scope: !1198, file: !100, line: 650, column: 29)
!1462 = !DILocation(line: 647, column: 29, scope: !1199)
!1463 = !DILocation(line: 649, column: 36, scope: !1198)
!1464 = !DILocation(line: 651, column: 49, scope: !1460)
!1465 = !DILocation(line: 651, column: 39, scope: !1460)
!1466 = !DILocation(line: 651, column: 31, scope: !1460)
!1467 = !DILocation(line: 650, column: 53, scope: !1460)
!1468 = !DILocation(line: 650, column: 29, scope: !1461)
!1469 = distinct !{!1469, !1468, !1470}
!1470 = !DILocation(line: 659, column: 33, scope: !1461)
!1471 = !DILocation(line: 666, column: 19, scope: !1179)
!1472 = !DILocation(line: 662, column: 41, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 662, column: 29)
!1474 = !DILocation(line: 662, column: 31, scope: !1473)
!1475 = !DILocation(line: 662, column: 29, scope: !1200)
!1476 = !DILocation(line: 664, column: 27, scope: !1200)
!1477 = !DILocation(line: 667, column: 26, scope: !1179)
!1478 = !DILocation(line: 667, column: 24, scope: !1179)
!1479 = !DILocation(line: 666, column: 19, scope: !1194)
!1480 = !DILocation(line: 668, column: 15, scope: !1180)
!1481 = !DILocation(line: 670, column: 40, scope: !1175)
!1482 = !DILocation(line: 672, column: 19, scope: !1206)
!1483 = !DILocation(line: 672, column: 45, scope: !1206)
!1484 = !DILocation(line: 672, column: 23, scope: !1206)
!1485 = !DILocation(line: 676, column: 33, scope: !1205)
!1486 = !DILocation(line: 676, column: 24, scope: !1205)
!1487 = !DILocation(line: 678, column: 17, scope: !1205)
!1488 = !DILocation(line: 680, column: 43, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !100, line: 680, column: 25)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !100, line: 679, column: 19)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !100, line: 678, column: 17)
!1492 = distinct !DILexicalBlock(scope: !1205, file: !100, line: 678, column: 17)
!1493 = !DILocation(line: 682, column: 25, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 682, column: 25)
!1495 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 681, column: 23)
!1496 = !DILocation(line: 682, column: 25, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 682, column: 25)
!1498 = !DILocation(line: 682, column: 25, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 682, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !100, line: 682, column: 25)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !100, line: 682, column: 25)
!1502 = !DILocation(line: 682, column: 25, scope: !1500)
!1503 = !DILocation(line: 682, column: 25, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 682, column: 25)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !100, line: 682, column: 25)
!1506 = !DILocation(line: 682, column: 25, scope: !1505)
!1507 = !DILocation(line: 682, column: 25, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !100, line: 682, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !100, line: 682, column: 25)
!1510 = !DILocation(line: 682, column: 25, scope: !1509)
!1511 = !DILocation(line: 682, column: 25, scope: !1501)
!1512 = !DILocation(line: 682, column: 25, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 682, column: 25)
!1514 = distinct !DILexicalBlock(scope: !1494, file: !100, line: 682, column: 25)
!1515 = !DILocation(line: 682, column: 25, scope: !1514)
!1516 = !DILocation(line: 683, column: 25, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !100, line: 683, column: 25)
!1518 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 683, column: 25)
!1519 = !DILocation(line: 683, column: 25, scope: !1518)
!1520 = !DILocation(line: 684, column: 25, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !100, line: 684, column: 25)
!1522 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 684, column: 25)
!1523 = !DILocation(line: 684, column: 25, scope: !1522)
!1524 = !DILocation(line: 685, column: 38, scope: !1495)
!1525 = !DILocation(line: 685, column: 33, scope: !1495)
!1526 = !DILocation(line: 686, column: 23, scope: !1495)
!1527 = !DILocation(line: 687, column: 30, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 687, column: 30)
!1529 = !DILocation(line: 687, column: 30, scope: !1489)
!1530 = !DILocation(line: 689, column: 25, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !100, line: 689, column: 25)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !100, line: 689, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !100, line: 688, column: 23)
!1534 = !DILocation(line: 689, column: 25, scope: !1532)
!1535 = !DILocation(line: 691, column: 23, scope: !1533)
!1536 = !DILocation(line: 692, column: 35, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1490, file: !100, line: 692, column: 25)
!1538 = !DILocation(line: 692, column: 30, scope: !1537)
!1539 = !DILocation(line: 692, column: 25, scope: !1490)
!1540 = !DILocation(line: 694, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !100, line: 694, column: 21)
!1542 = distinct !DILexicalBlock(scope: !1490, file: !100, line: 694, column: 21)
!1543 = !DILocation(line: 694, column: 21, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !100, line: 694, column: 21)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !100, line: 694, column: 21)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !100, line: 694, column: 21)
!1547 = !DILocation(line: 694, column: 21, scope: !1545)
!1548 = !DILocation(line: 694, column: 21, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !100, line: 694, column: 21)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !100, line: 694, column: 21)
!1551 = !DILocation(line: 694, column: 21, scope: !1550)
!1552 = !DILocation(line: 694, column: 21, scope: !1546)
!1553 = !DILocation(line: 695, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !100, line: 695, column: 21)
!1555 = distinct !DILexicalBlock(scope: !1490, file: !100, line: 695, column: 21)
!1556 = !DILocation(line: 695, column: 21, scope: !1555)
!1557 = !DILocation(line: 696, column: 25, scope: !1490)
!1558 = !DILocation(line: 678, column: 17, scope: !1491)
!1559 = distinct !{!1559, !1560, !1561}
!1560 = !DILocation(line: 678, column: 17, scope: !1492)
!1561 = !DILocation(line: 697, column: 19, scope: !1492)
!1562 = !DILocation(line: 704, column: 34, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 704, column: 11)
!1564 = !DILocation(line: 706, column: 14, scope: !1563)
!1565 = !DILocation(line: 707, column: 14, scope: !1563)
!1566 = !DILocation(line: 707, column: 35, scope: !1563)
!1567 = !DILocation(line: 707, column: 17, scope: !1563)
!1568 = !DILocation(line: 707, column: 53, scope: !1563)
!1569 = !DILocation(line: 707, column: 47, scope: !1563)
!1570 = !DILocation(line: 707, column: 65, scope: !1563)
!1571 = !DILocation(line: 708, column: 15, scope: !1563)
!1572 = !DILocation(line: 708, column: 11, scope: !1563)
!1573 = !DILocation(line: 704, column: 11, scope: !1167)
!1574 = !DILocation(line: 712, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 712, column: 7)
!1576 = !DILocation(line: 712, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1575, file: !100, line: 712, column: 7)
!1578 = !DILocation(line: 712, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 712, column: 7)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 712, column: 7)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !100, line: 712, column: 7)
!1582 = !DILocation(line: 712, column: 7, scope: !1580)
!1583 = !DILocation(line: 712, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !100, line: 712, column: 7)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 712, column: 7)
!1586 = !DILocation(line: 712, column: 7, scope: !1585)
!1587 = !DILocation(line: 712, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !100, line: 712, column: 7)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 712, column: 7)
!1590 = !DILocation(line: 712, column: 7, scope: !1589)
!1591 = !DILocation(line: 712, column: 7, scope: !1581)
!1592 = !DILocation(line: 712, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !100, line: 712, column: 7)
!1594 = distinct !DILexicalBlock(scope: !1575, file: !100, line: 712, column: 7)
!1595 = !DILocation(line: 712, column: 7, scope: !1594)
!1596 = !DILocation(line: 715, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !100, line: 715, column: 7)
!1598 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 715, column: 7)
!1599 = !DILocation(line: 715, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !100, line: 715, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !100, line: 715, column: 7)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !100, line: 715, column: 7)
!1603 = !DILocation(line: 715, column: 7, scope: !1601)
!1604 = !DILocation(line: 715, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !100, line: 715, column: 7)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !100, line: 715, column: 7)
!1607 = !DILocation(line: 715, column: 7, scope: !1606)
!1608 = !DILocation(line: 715, column: 7, scope: !1602)
!1609 = !DILocation(line: 716, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !100, line: 716, column: 7)
!1611 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 716, column: 7)
!1612 = !DILocation(line: 716, column: 7, scope: !1611)
!1613 = !DILocation(line: 718, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 718, column: 11)
!1615 = !DILocation(line: 718, column: 11, scope: !1167)
!1616 = !DILocation(line: 720, column: 5, scope: !1168)
!1617 = !DILocation(line: 392, column: 75, scope: !1168)
!1618 = !DILocation(line: 392, column: 3, scope: !1168)
!1619 = distinct !{!1619, !1278, !1620}
!1620 = !DILocation(line: 720, column: 5, scope: !1169)
!1621 = !DILocation(line: 722, column: 11, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 722, column: 7)
!1623 = !DILocation(line: 722, column: 16, scope: !1622)
!1624 = !DILocation(line: 730, column: 51, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 730, column: 7)
!1626 = !DILocation(line: 731, column: 10, scope: !1625)
!1627 = !DILocation(line: 733, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !100, line: 733, column: 11)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !100, line: 732, column: 5)
!1630 = !DILocation(line: 733, column: 11, scope: !1629)
!1631 = !DILocation(line: 734, column: 16, scope: !1628)
!1632 = !DILocation(line: 734, column: 9, scope: !1628)
!1633 = !DILocation(line: 738, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !100, line: 738, column: 16)
!1635 = !DILocation(line: 738, column: 32, scope: !1634)
!1636 = !DILocation(line: 738, column: 29, scope: !1634)
!1637 = !DILocation(line: 747, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 747, column: 7)
!1639 = !DILocation(line: 747, column: 20, scope: !1638)
!1640 = !DILocation(line: 748, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !100, line: 748, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !100, line: 748, column: 5)
!1643 = !DILocation(line: 748, column: 5, scope: !1642)
!1644 = !DILocation(line: 749, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !100, line: 749, column: 7)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !100, line: 749, column: 7)
!1647 = !DILocation(line: 749, column: 7, scope: !1646)
!1648 = !DILocation(line: 748, column: 39, scope: !1641)
!1649 = distinct !{!1649, !1643, !1650}
!1650 = !DILocation(line: 749, column: 7, scope: !1642)
!1651 = !DILocation(line: 751, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 751, column: 7)
!1653 = !DILocation(line: 751, column: 7, scope: !1140)
!1654 = !DILocation(line: 752, column: 5, scope: !1652)
!1655 = !DILocation(line: 752, column: 17, scope: !1652)
!1656 = !DILocation(line: 758, column: 21, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 758, column: 7)
!1658 = !DILocation(line: 758, column: 54, scope: !1657)
!1659 = !DILocation(line: 758, column: 51, scope: !1657)
!1660 = !DILocation(line: 762, column: 42, scope: !1140)
!1661 = !DILocation(line: 760, column: 10, scope: !1140)
!1662 = !DILocation(line: 760, column: 3, scope: !1140)
!1663 = !DILocation(line: 764, column: 1, scope: !1140)
!1664 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1665, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!6, !6, !58}
!1667 = !{!1668, !1669, !1670, !1671}
!1668 = !DILocalVariable(name: "msgid", arg: 1, scope: !1664, file: !100, line: 199, type: !6)
!1669 = !DILocalVariable(name: "s", arg: 2, scope: !1664, file: !100, line: 199, type: !58)
!1670 = !DILocalVariable(name: "translation", scope: !1664, file: !100, line: 201, type: !6)
!1671 = !DILocalVariable(name: "locale_code", scope: !1664, file: !100, line: 202, type: !6)
!1672 = !DILocation(line: 199, column: 28, scope: !1664)
!1673 = !DILocation(line: 199, column: 54, scope: !1664)
!1674 = !DILocation(line: 201, column: 29, scope: !1664)
!1675 = !DILocation(line: 201, column: 15, scope: !1664)
!1676 = !DILocation(line: 204, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1664, file: !100, line: 204, column: 7)
!1678 = !DILocation(line: 204, column: 7, scope: !1664)
!1679 = !DILocation(line: 225, column: 17, scope: !1664)
!1680 = !DILocation(line: 202, column: 15, scope: !1664)
!1681 = !DILocalVariable(name: "s2", arg: 2, scope: !1682, file: !1683, line: 160, type: !6)
!1682 = distinct !DISubprogram(name: "strcaseeq0", scope: !1683, file: !1683, line: 160, type: !1684, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1686)
!1683 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1686 = !{!1687, !1681, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1687 = !DILocalVariable(name: "s1", arg: 1, scope: !1682, file: !1683, line: 160, type: !6)
!1688 = !DILocalVariable(name: "s20", arg: 3, scope: !1682, file: !1683, line: 160, type: !8)
!1689 = !DILocalVariable(name: "s21", arg: 4, scope: !1682, file: !1683, line: 160, type: !8)
!1690 = !DILocalVariable(name: "s22", arg: 5, scope: !1682, file: !1683, line: 160, type: !8)
!1691 = !DILocalVariable(name: "s23", arg: 6, scope: !1682, file: !1683, line: 160, type: !8)
!1692 = !DILocalVariable(name: "s24", arg: 7, scope: !1682, file: !1683, line: 160, type: !8)
!1693 = !DILocalVariable(name: "s25", arg: 8, scope: !1682, file: !1683, line: 160, type: !8)
!1694 = !DILocalVariable(name: "s26", arg: 9, scope: !1682, file: !1683, line: 160, type: !8)
!1695 = !DILocalVariable(name: "s27", arg: 10, scope: !1682, file: !1683, line: 160, type: !8)
!1696 = !DILocalVariable(name: "s28", arg: 11, scope: !1682, file: !1683, line: 160, type: !8)
!1697 = !DILocation(line: 160, column: 41, scope: !1682, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 226, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1664, file: !100, line: 226, column: 7)
!1700 = !DILocation(line: 160, column: 120, scope: !1682, inlinedAt: !1698)
!1701 = !DILocation(line: 160, column: 130, scope: !1682, inlinedAt: !1698)
!1702 = !DILocation(line: 162, column: 7, scope: !1703, inlinedAt: !1698)
!1703 = distinct !DILexicalBlock(scope: !1682, file: !1683, line: 162, column: 7)
!1704 = !DILocalVariable(name: "s2", arg: 2, scope: !1705, file: !1683, line: 146, type: !6)
!1705 = distinct !DISubprogram(name: "strcaseeq1", scope: !1683, file: !1683, line: 146, type: !1706, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1708 = !{!1709, !1704, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1709 = !DILocalVariable(name: "s1", arg: 1, scope: !1705, file: !1683, line: 146, type: !6)
!1710 = !DILocalVariable(name: "s21", arg: 3, scope: !1705, file: !1683, line: 146, type: !8)
!1711 = !DILocalVariable(name: "s22", arg: 4, scope: !1705, file: !1683, line: 146, type: !8)
!1712 = !DILocalVariable(name: "s23", arg: 5, scope: !1705, file: !1683, line: 146, type: !8)
!1713 = !DILocalVariable(name: "s24", arg: 6, scope: !1705, file: !1683, line: 146, type: !8)
!1714 = !DILocalVariable(name: "s25", arg: 7, scope: !1705, file: !1683, line: 146, type: !8)
!1715 = !DILocalVariable(name: "s26", arg: 8, scope: !1705, file: !1683, line: 146, type: !8)
!1716 = !DILocalVariable(name: "s27", arg: 9, scope: !1705, file: !1683, line: 146, type: !8)
!1717 = !DILocalVariable(name: "s28", arg: 10, scope: !1705, file: !1683, line: 146, type: !8)
!1718 = !DILocation(line: 146, column: 41, scope: !1705, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 167, column: 16, scope: !1720, inlinedAt: !1698)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1683, line: 164, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1703, file: !1683, line: 163, column: 5)
!1722 = !DILocation(line: 146, column: 110, scope: !1705, inlinedAt: !1719)
!1723 = !DILocation(line: 146, column: 120, scope: !1705, inlinedAt: !1719)
!1724 = !DILocation(line: 148, column: 7, scope: !1725, inlinedAt: !1719)
!1725 = distinct !DILexicalBlock(scope: !1705, file: !1683, line: 148, column: 7)
!1726 = !DILocalVariable(name: "s2", arg: 2, scope: !1727, file: !1683, line: 132, type: !6)
!1727 = distinct !DISubprogram(name: "strcaseeq2", scope: !1683, file: !1683, line: 132, type: !1728, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1730 = !{!1731, !1726, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1731 = !DILocalVariable(name: "s1", arg: 1, scope: !1727, file: !1683, line: 132, type: !6)
!1732 = !DILocalVariable(name: "s22", arg: 3, scope: !1727, file: !1683, line: 132, type: !8)
!1733 = !DILocalVariable(name: "s23", arg: 4, scope: !1727, file: !1683, line: 132, type: !8)
!1734 = !DILocalVariable(name: "s24", arg: 5, scope: !1727, file: !1683, line: 132, type: !8)
!1735 = !DILocalVariable(name: "s25", arg: 6, scope: !1727, file: !1683, line: 132, type: !8)
!1736 = !DILocalVariable(name: "s26", arg: 7, scope: !1727, file: !1683, line: 132, type: !8)
!1737 = !DILocalVariable(name: "s27", arg: 8, scope: !1727, file: !1683, line: 132, type: !8)
!1738 = !DILocalVariable(name: "s28", arg: 9, scope: !1727, file: !1683, line: 132, type: !8)
!1739 = !DILocation(line: 132, column: 41, scope: !1727, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 153, column: 16, scope: !1741, inlinedAt: !1719)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1683, line: 150, column: 11)
!1742 = distinct !DILexicalBlock(scope: !1725, file: !1683, line: 149, column: 5)
!1743 = !DILocation(line: 132, column: 100, scope: !1727, inlinedAt: !1740)
!1744 = !DILocation(line: 132, column: 110, scope: !1727, inlinedAt: !1740)
!1745 = !DILocation(line: 134, column: 7, scope: !1746, inlinedAt: !1740)
!1746 = distinct !DILexicalBlock(scope: !1727, file: !1683, line: 134, column: 7)
!1747 = !DILocalVariable(name: "s2", arg: 2, scope: !1748, file: !1683, line: 118, type: !6)
!1748 = distinct !DISubprogram(name: "strcaseeq3", scope: !1683, file: !1683, line: 118, type: !1749, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1751 = !{!1752, !1747, !1753, !1754, !1755, !1756, !1757, !1758}
!1752 = !DILocalVariable(name: "s1", arg: 1, scope: !1748, file: !1683, line: 118, type: !6)
!1753 = !DILocalVariable(name: "s23", arg: 3, scope: !1748, file: !1683, line: 118, type: !8)
!1754 = !DILocalVariable(name: "s24", arg: 4, scope: !1748, file: !1683, line: 118, type: !8)
!1755 = !DILocalVariable(name: "s25", arg: 5, scope: !1748, file: !1683, line: 118, type: !8)
!1756 = !DILocalVariable(name: "s26", arg: 6, scope: !1748, file: !1683, line: 118, type: !8)
!1757 = !DILocalVariable(name: "s27", arg: 7, scope: !1748, file: !1683, line: 118, type: !8)
!1758 = !DILocalVariable(name: "s28", arg: 8, scope: !1748, file: !1683, line: 118, type: !8)
!1759 = !DILocation(line: 118, column: 41, scope: !1748, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 139, column: 16, scope: !1761, inlinedAt: !1740)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !1683, line: 136, column: 11)
!1762 = distinct !DILexicalBlock(scope: !1746, file: !1683, line: 135, column: 5)
!1763 = !DILocation(line: 118, column: 90, scope: !1748, inlinedAt: !1760)
!1764 = !DILocation(line: 118, column: 100, scope: !1748, inlinedAt: !1760)
!1765 = !DILocation(line: 120, column: 7, scope: !1766, inlinedAt: !1760)
!1766 = distinct !DILexicalBlock(scope: !1748, file: !1683, line: 120, column: 7)
!1767 = !DILocation(line: 120, column: 7, scope: !1748, inlinedAt: !1760)
!1768 = !DILocalVariable(name: "s2", arg: 2, scope: !1769, file: !1683, line: 104, type: !6)
!1769 = distinct !DISubprogram(name: "strcaseeq4", scope: !1683, file: !1683, line: 104, type: !1770, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1772 = !{!1773, !1768, !1774, !1775, !1776, !1777, !1778}
!1773 = !DILocalVariable(name: "s1", arg: 1, scope: !1769, file: !1683, line: 104, type: !6)
!1774 = !DILocalVariable(name: "s24", arg: 3, scope: !1769, file: !1683, line: 104, type: !8)
!1775 = !DILocalVariable(name: "s25", arg: 4, scope: !1769, file: !1683, line: 104, type: !8)
!1776 = !DILocalVariable(name: "s26", arg: 5, scope: !1769, file: !1683, line: 104, type: !8)
!1777 = !DILocalVariable(name: "s27", arg: 6, scope: !1769, file: !1683, line: 104, type: !8)
!1778 = !DILocalVariable(name: "s28", arg: 7, scope: !1769, file: !1683, line: 104, type: !8)
!1779 = !DILocation(line: 104, column: 41, scope: !1769, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 125, column: 16, scope: !1781, inlinedAt: !1760)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !1683, line: 122, column: 11)
!1782 = distinct !DILexicalBlock(scope: !1766, file: !1683, line: 121, column: 5)
!1783 = !DILocation(line: 104, column: 80, scope: !1769, inlinedAt: !1780)
!1784 = !DILocation(line: 104, column: 90, scope: !1769, inlinedAt: !1780)
!1785 = !DILocation(line: 106, column: 7, scope: !1786, inlinedAt: !1780)
!1786 = distinct !DILexicalBlock(scope: !1769, file: !1683, line: 106, column: 7)
!1787 = !DILocation(line: 106, column: 7, scope: !1769, inlinedAt: !1780)
!1788 = !DILocalVariable(name: "s2", arg: 2, scope: !1789, file: !1683, line: 90, type: !6)
!1789 = distinct !DISubprogram(name: "strcaseeq5", scope: !1683, file: !1683, line: 90, type: !1790, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!25, !6, !6, !8, !8, !8, !8}
!1792 = !{!1793, !1788, !1794, !1795, !1796, !1797}
!1793 = !DILocalVariable(name: "s1", arg: 1, scope: !1789, file: !1683, line: 90, type: !6)
!1794 = !DILocalVariable(name: "s25", arg: 3, scope: !1789, file: !1683, line: 90, type: !8)
!1795 = !DILocalVariable(name: "s26", arg: 4, scope: !1789, file: !1683, line: 90, type: !8)
!1796 = !DILocalVariable(name: "s27", arg: 5, scope: !1789, file: !1683, line: 90, type: !8)
!1797 = !DILocalVariable(name: "s28", arg: 6, scope: !1789, file: !1683, line: 90, type: !8)
!1798 = !DILocation(line: 90, column: 41, scope: !1789, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 111, column: 16, scope: !1800, inlinedAt: !1780)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !1683, line: 108, column: 11)
!1801 = distinct !DILexicalBlock(scope: !1786, file: !1683, line: 107, column: 5)
!1802 = !DILocation(line: 90, column: 70, scope: !1789, inlinedAt: !1799)
!1803 = !DILocation(line: 90, column: 80, scope: !1789, inlinedAt: !1799)
!1804 = !DILocation(line: 92, column: 7, scope: !1805, inlinedAt: !1799)
!1805 = distinct !DILexicalBlock(scope: !1789, file: !1683, line: 92, column: 7)
!1806 = !DILocation(line: 92, column: 7, scope: !1789, inlinedAt: !1799)
!1807 = !DILocation(line: 227, column: 12, scope: !1699)
!1808 = !DILocation(line: 227, column: 21, scope: !1699)
!1809 = !DILocation(line: 227, column: 5, scope: !1699)
!1810 = !DILocation(line: 146, column: 41, scope: !1705, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 167, column: 16, scope: !1720, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 228, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1664, file: !100, line: 228, column: 7)
!1814 = !DILocation(line: 146, column: 110, scope: !1705, inlinedAt: !1811)
!1815 = !DILocation(line: 146, column: 120, scope: !1705, inlinedAt: !1811)
!1816 = !DILocation(line: 148, column: 7, scope: !1725, inlinedAt: !1811)
!1817 = !DILocation(line: 132, column: 41, scope: !1727, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 153, column: 16, scope: !1741, inlinedAt: !1811)
!1819 = !DILocation(line: 132, column: 100, scope: !1727, inlinedAt: !1818)
!1820 = !DILocation(line: 132, column: 110, scope: !1727, inlinedAt: !1818)
!1821 = !DILocation(line: 134, column: 7, scope: !1746, inlinedAt: !1818)
!1822 = !DILocation(line: 134, column: 7, scope: !1727, inlinedAt: !1818)
!1823 = !DILocation(line: 118, column: 41, scope: !1748, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 139, column: 16, scope: !1761, inlinedAt: !1818)
!1825 = !DILocation(line: 118, column: 90, scope: !1748, inlinedAt: !1824)
!1826 = !DILocation(line: 118, column: 100, scope: !1748, inlinedAt: !1824)
!1827 = !DILocation(line: 120, column: 7, scope: !1766, inlinedAt: !1824)
!1828 = !DILocation(line: 120, column: 7, scope: !1748, inlinedAt: !1824)
!1829 = !DILocation(line: 104, column: 41, scope: !1769, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 125, column: 16, scope: !1781, inlinedAt: !1824)
!1831 = !DILocation(line: 104, column: 80, scope: !1769, inlinedAt: !1830)
!1832 = !DILocation(line: 104, column: 90, scope: !1769, inlinedAt: !1830)
!1833 = !DILocation(line: 106, column: 7, scope: !1786, inlinedAt: !1830)
!1834 = !DILocation(line: 106, column: 7, scope: !1769, inlinedAt: !1830)
!1835 = !DILocation(line: 90, column: 41, scope: !1789, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 111, column: 16, scope: !1800, inlinedAt: !1830)
!1837 = !DILocation(line: 90, column: 70, scope: !1789, inlinedAt: !1836)
!1838 = !DILocation(line: 90, column: 80, scope: !1789, inlinedAt: !1836)
!1839 = !DILocation(line: 92, column: 7, scope: !1805, inlinedAt: !1836)
!1840 = !DILocation(line: 92, column: 7, scope: !1789, inlinedAt: !1836)
!1841 = !DILocalVariable(name: "s2", arg: 2, scope: !1842, file: !1683, line: 76, type: !6)
!1842 = distinct !DISubprogram(name: "strcaseeq6", scope: !1683, file: !1683, line: 76, type: !1843, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!25, !6, !6, !8, !8, !8}
!1845 = !{!1846, !1841, !1847, !1848, !1849}
!1846 = !DILocalVariable(name: "s1", arg: 1, scope: !1842, file: !1683, line: 76, type: !6)
!1847 = !DILocalVariable(name: "s26", arg: 3, scope: !1842, file: !1683, line: 76, type: !8)
!1848 = !DILocalVariable(name: "s27", arg: 4, scope: !1842, file: !1683, line: 76, type: !8)
!1849 = !DILocalVariable(name: "s28", arg: 5, scope: !1842, file: !1683, line: 76, type: !8)
!1850 = !DILocation(line: 76, column: 41, scope: !1842, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 97, column: 16, scope: !1852, inlinedAt: !1836)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1683, line: 94, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1805, file: !1683, line: 93, column: 5)
!1854 = !DILocation(line: 76, column: 60, scope: !1842, inlinedAt: !1851)
!1855 = !DILocation(line: 76, column: 70, scope: !1842, inlinedAt: !1851)
!1856 = !DILocation(line: 78, column: 7, scope: !1857, inlinedAt: !1851)
!1857 = distinct !DILexicalBlock(scope: !1842, file: !1683, line: 78, column: 7)
!1858 = !DILocation(line: 78, column: 7, scope: !1842, inlinedAt: !1851)
!1859 = !DILocalVariable(name: "s2", arg: 2, scope: !1860, file: !1683, line: 62, type: !6)
!1860 = distinct !DISubprogram(name: "strcaseeq7", scope: !1683, file: !1683, line: 62, type: !1861, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!25, !6, !6, !8, !8}
!1863 = !{!1864, !1859, !1865, !1866}
!1864 = !DILocalVariable(name: "s1", arg: 1, scope: !1860, file: !1683, line: 62, type: !6)
!1865 = !DILocalVariable(name: "s27", arg: 3, scope: !1860, file: !1683, line: 62, type: !8)
!1866 = !DILocalVariable(name: "s28", arg: 4, scope: !1860, file: !1683, line: 62, type: !8)
!1867 = !DILocation(line: 62, column: 41, scope: !1860, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 83, column: 16, scope: !1869, inlinedAt: !1851)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1683, line: 80, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1857, file: !1683, line: 79, column: 5)
!1871 = !DILocation(line: 62, column: 50, scope: !1860, inlinedAt: !1868)
!1872 = !DILocation(line: 62, column: 60, scope: !1860, inlinedAt: !1868)
!1873 = !DILocation(line: 64, column: 7, scope: !1874, inlinedAt: !1868)
!1874 = distinct !DILexicalBlock(scope: !1860, file: !1683, line: 64, column: 7)
!1875 = !DILocation(line: 228, column: 7, scope: !1664)
!1876 = !DILocation(line: 229, column: 12, scope: !1813)
!1877 = !DILocation(line: 229, column: 21, scope: !1813)
!1878 = !DILocation(line: 229, column: 5, scope: !1813)
!1879 = !DILocation(line: 231, column: 13, scope: !1664)
!1880 = !DILocation(line: 231, column: 11, scope: !1664)
!1881 = !DILocation(line: 231, column: 3, scope: !1664)
!1882 = !DILocation(line: 232, column: 1, scope: !1664)
!1883 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1884, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!50, !6, !94, !1012}
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "arg", arg: 1, scope: !1883, file: !100, line: 791, type: !6)
!1888 = !DILocalVariable(name: "argsize", arg: 2, scope: !1883, file: !100, line: 791, type: !94)
!1889 = !DILocalVariable(name: "o", arg: 3, scope: !1883, file: !100, line: 792, type: !1012)
!1890 = !DILocation(line: 791, column: 29, scope: !1883)
!1891 = !DILocation(line: 791, column: 41, scope: !1883)
!1892 = !DILocation(line: 792, column: 47, scope: !1883)
!1893 = !DILocalVariable(name: "arg", arg: 1, scope: !1894, file: !100, line: 804, type: !6)
!1894 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1895, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!50, !6, !94, !545, !1012}
!1897 = !{!1893, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1898 = !DILocalVariable(name: "argsize", arg: 2, scope: !1894, file: !100, line: 804, type: !94)
!1899 = !DILocalVariable(name: "size", arg: 3, scope: !1894, file: !100, line: 804, type: !545)
!1900 = !DILocalVariable(name: "o", arg: 4, scope: !1894, file: !100, line: 805, type: !1012)
!1901 = !DILocalVariable(name: "p", scope: !1894, file: !100, line: 807, type: !1012)
!1902 = !DILocalVariable(name: "e", scope: !1894, file: !100, line: 808, type: !25)
!1903 = !DILocalVariable(name: "flags", scope: !1894, file: !100, line: 810, type: !25)
!1904 = !DILocalVariable(name: "bufsize", scope: !1894, file: !100, line: 811, type: !94)
!1905 = !DILocalVariable(name: "buf", scope: !1894, file: !100, line: 815, type: !50)
!1906 = !DILocation(line: 804, column: 33, scope: !1894, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 794, column: 10, scope: !1883)
!1908 = !DILocation(line: 804, column: 45, scope: !1894, inlinedAt: !1907)
!1909 = !DILocation(line: 804, column: 62, scope: !1894, inlinedAt: !1907)
!1910 = !DILocation(line: 805, column: 51, scope: !1894, inlinedAt: !1907)
!1911 = !DILocation(line: 807, column: 37, scope: !1894, inlinedAt: !1907)
!1912 = !DILocation(line: 807, column: 33, scope: !1894, inlinedAt: !1907)
!1913 = !DILocation(line: 808, column: 11, scope: !1894, inlinedAt: !1907)
!1914 = !DILocation(line: 808, column: 7, scope: !1894, inlinedAt: !1907)
!1915 = !DILocation(line: 810, column: 18, scope: !1894, inlinedAt: !1907)
!1916 = !DILocation(line: 810, column: 24, scope: !1894, inlinedAt: !1907)
!1917 = !DILocation(line: 810, column: 7, scope: !1894, inlinedAt: !1907)
!1918 = !DILocation(line: 811, column: 69, scope: !1894, inlinedAt: !1907)
!1919 = !DILocation(line: 812, column: 53, scope: !1894, inlinedAt: !1907)
!1920 = !DILocation(line: 813, column: 49, scope: !1894, inlinedAt: !1907)
!1921 = !DILocation(line: 814, column: 49, scope: !1894, inlinedAt: !1907)
!1922 = !DILocation(line: 811, column: 20, scope: !1894, inlinedAt: !1907)
!1923 = !DILocation(line: 814, column: 62, scope: !1894, inlinedAt: !1907)
!1924 = !DILocation(line: 811, column: 10, scope: !1894, inlinedAt: !1907)
!1925 = !DILocalVariable(name: "n", arg: 1, scope: !1926, file: !541, line: 220, type: !94)
!1926 = distinct !DISubprogram(name: "xcharalloc", scope: !541, file: !541, line: 220, type: !1927, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!50, !94}
!1929 = !{!1925}
!1930 = !DILocation(line: 220, column: 20, scope: !1926, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 815, column: 15, scope: !1894, inlinedAt: !1907)
!1932 = !DILocation(line: 222, column: 10, scope: !1926, inlinedAt: !1931)
!1933 = !DILocation(line: 815, column: 9, scope: !1894, inlinedAt: !1907)
!1934 = !DILocation(line: 816, column: 60, scope: !1894, inlinedAt: !1907)
!1935 = !DILocation(line: 818, column: 32, scope: !1894, inlinedAt: !1907)
!1936 = !DILocation(line: 818, column: 47, scope: !1894, inlinedAt: !1907)
!1937 = !DILocation(line: 816, column: 3, scope: !1894, inlinedAt: !1907)
!1938 = !DILocation(line: 819, column: 9, scope: !1894, inlinedAt: !1907)
!1939 = !DILocation(line: 794, column: 3, scope: !1883)
!1940 = !DILocation(line: 804, column: 33, scope: !1894)
!1941 = !DILocation(line: 804, column: 45, scope: !1894)
!1942 = !DILocation(line: 804, column: 62, scope: !1894)
!1943 = !DILocation(line: 805, column: 51, scope: !1894)
!1944 = !DILocation(line: 807, column: 37, scope: !1894)
!1945 = !DILocation(line: 807, column: 33, scope: !1894)
!1946 = !DILocation(line: 808, column: 11, scope: !1894)
!1947 = !DILocation(line: 808, column: 7, scope: !1894)
!1948 = !DILocation(line: 810, column: 18, scope: !1894)
!1949 = !DILocation(line: 810, column: 27, scope: !1894)
!1950 = !DILocation(line: 810, column: 24, scope: !1894)
!1951 = !DILocation(line: 810, column: 7, scope: !1894)
!1952 = !DILocation(line: 811, column: 69, scope: !1894)
!1953 = !DILocation(line: 812, column: 53, scope: !1894)
!1954 = !DILocation(line: 813, column: 49, scope: !1894)
!1955 = !DILocation(line: 814, column: 49, scope: !1894)
!1956 = !DILocation(line: 811, column: 20, scope: !1894)
!1957 = !DILocation(line: 814, column: 62, scope: !1894)
!1958 = !DILocation(line: 811, column: 10, scope: !1894)
!1959 = !DILocation(line: 220, column: 20, scope: !1926, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 815, column: 15, scope: !1894)
!1961 = !DILocation(line: 222, column: 10, scope: !1926, inlinedAt: !1960)
!1962 = !DILocation(line: 815, column: 9, scope: !1894)
!1963 = !DILocation(line: 816, column: 60, scope: !1894)
!1964 = !DILocation(line: 818, column: 32, scope: !1894)
!1965 = !DILocation(line: 818, column: 47, scope: !1894)
!1966 = !DILocation(line: 816, column: 3, scope: !1894)
!1967 = !DILocation(line: 819, column: 9, scope: !1894)
!1968 = !DILocation(line: 820, column: 7, scope: !1894)
!1969 = !DILocation(line: 821, column: 11, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1894, file: !100, line: 820, column: 7)
!1971 = !DILocation(line: 821, column: 5, scope: !1970)
!1972 = !DILocation(line: 822, column: 3, scope: !1894)
!1973 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !862, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1974)
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "sv", scope: !1973, file: !100, line: 842, type: !127)
!1976 = !DILocalVariable(name: "i", scope: !1973, file: !100, line: 843, type: !25)
!1977 = !DILocation(line: 842, column: 24, scope: !1973)
!1978 = !DILocation(line: 842, column: 19, scope: !1973)
!1979 = !DILocation(line: 843, column: 7, scope: !1973)
!1980 = !DILocation(line: 844, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !100, line: 844, column: 3)
!1982 = distinct !DILexicalBlock(scope: !1973, file: !100, line: 844, column: 3)
!1983 = !DILocation(line: 844, column: 17, scope: !1981)
!1984 = !DILocation(line: 844, column: 3, scope: !1982)
!1985 = !DILocation(line: 845, column: 17, scope: !1981)
!1986 = !{!1987, !601, i64 8}
!1987 = !{!"slotvec", !724, i64 0, !601, i64 8}
!1988 = !DILocation(line: 845, column: 5, scope: !1981)
!1989 = !DILocation(line: 844, column: 28, scope: !1981)
!1990 = distinct !{!1990, !1984, !1991}
!1991 = !DILocation(line: 845, column: 20, scope: !1982)
!1992 = !DILocation(line: 846, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1973, file: !100, line: 846, column: 7)
!1994 = !DILocation(line: 846, column: 17, scope: !1993)
!1995 = !DILocation(line: 846, column: 7, scope: !1973)
!1996 = !DILocation(line: 848, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !100, line: 847, column: 5)
!1998 = !DILocation(line: 849, column: 21, scope: !1997)
!1999 = !{!1987, !724, i64 0}
!2000 = !DILocation(line: 850, column: 20, scope: !1997)
!2001 = !DILocation(line: 851, column: 5, scope: !1997)
!2002 = !DILocation(line: 852, column: 10, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1973, file: !100, line: 852, column: 7)
!2004 = !DILocation(line: 852, column: 7, scope: !1973)
!2005 = !DILocation(line: 854, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !100, line: 853, column: 5)
!2007 = !DILocation(line: 854, column: 7, scope: !2006)
!2008 = !DILocation(line: 855, column: 15, scope: !2006)
!2009 = !DILocation(line: 856, column: 5, scope: !2006)
!2010 = !DILocation(line: 857, column: 10, scope: !1973)
!2011 = !DILocation(line: 858, column: 1, scope: !1973)
!2012 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2013, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!50, !25, !6}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "n", arg: 1, scope: !2012, file: !100, line: 922, type: !25)
!2017 = !DILocalVariable(name: "arg", arg: 2, scope: !2012, file: !100, line: 922, type: !6)
!2018 = !DILocation(line: 922, column: 17, scope: !2012)
!2019 = !DILocation(line: 922, column: 32, scope: !2012)
!2020 = !DILocation(line: 924, column: 10, scope: !2012)
!2021 = !DILocation(line: 924, column: 3, scope: !2012)
!2022 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2023, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!50, !25, !6, !94, !1012}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2035, !2037, !2038, !2039}
!2026 = !DILocalVariable(name: "n", arg: 1, scope: !2022, file: !100, line: 869, type: !25)
!2027 = !DILocalVariable(name: "arg", arg: 2, scope: !2022, file: !100, line: 869, type: !6)
!2028 = !DILocalVariable(name: "argsize", arg: 3, scope: !2022, file: !100, line: 869, type: !94)
!2029 = !DILocalVariable(name: "options", arg: 4, scope: !2022, file: !100, line: 870, type: !1012)
!2030 = !DILocalVariable(name: "e", scope: !2022, file: !100, line: 872, type: !25)
!2031 = !DILocalVariable(name: "sv", scope: !2022, file: !100, line: 874, type: !127)
!2032 = !DILocalVariable(name: "preallocated", scope: !2033, file: !100, line: 881, type: !17)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !100, line: 880, column: 5)
!2034 = distinct !DILexicalBlock(scope: !2022, file: !100, line: 879, column: 7)
!2035 = !DILocalVariable(name: "size", scope: !2036, file: !100, line: 894, type: !94)
!2036 = distinct !DILexicalBlock(scope: !2022, file: !100, line: 893, column: 3)
!2037 = !DILocalVariable(name: "val", scope: !2036, file: !100, line: 895, type: !50)
!2038 = !DILocalVariable(name: "flags", scope: !2036, file: !100, line: 897, type: !25)
!2039 = !DILocalVariable(name: "qsize", scope: !2036, file: !100, line: 898, type: !94)
!2040 = !DILocation(line: 869, column: 25, scope: !2022)
!2041 = !DILocation(line: 869, column: 40, scope: !2022)
!2042 = !DILocation(line: 869, column: 52, scope: !2022)
!2043 = !DILocation(line: 870, column: 51, scope: !2022)
!2044 = !DILocation(line: 872, column: 11, scope: !2022)
!2045 = !DILocation(line: 872, column: 7, scope: !2022)
!2046 = !DILocation(line: 874, column: 24, scope: !2022)
!2047 = !DILocation(line: 874, column: 19, scope: !2022)
!2048 = !DILocation(line: 876, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2022, file: !100, line: 876, column: 7)
!2050 = !DILocation(line: 876, column: 7, scope: !2022)
!2051 = !DILocation(line: 877, column: 5, scope: !2049)
!2052 = !DILocation(line: 879, column: 7, scope: !2034)
!2053 = !DILocation(line: 879, column: 14, scope: !2034)
!2054 = !DILocation(line: 879, column: 7, scope: !2022)
!2055 = !DILocation(line: 881, column: 31, scope: !2033)
!2056 = !DILocation(line: 883, column: 67, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2033, file: !100, line: 883, column: 11)
!2058 = !DILocation(line: 883, column: 11, scope: !2033)
!2059 = !DILocation(line: 884, column: 9, scope: !2057)
!2060 = !DILocation(line: 886, column: 32, scope: !2033)
!2061 = !DILocation(line: 886, column: 61, scope: !2033)
!2062 = !DILocation(line: 886, column: 58, scope: !2033)
!2063 = !DILocation(line: 886, column: 66, scope: !2033)
!2064 = !DILocation(line: 886, column: 22, scope: !2033)
!2065 = !DILocation(line: 886, column: 15, scope: !2033)
!2066 = !DILocation(line: 887, column: 11, scope: !2033)
!2067 = !DILocation(line: 888, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2033, file: !100, line: 887, column: 11)
!2069 = !{i64 0, i64 8, !723, i64 8, i64 8, !600}
!2070 = !DILocation(line: 888, column: 9, scope: !2068)
!2071 = !DILocation(line: 889, column: 20, scope: !2033)
!2072 = !DILocation(line: 889, column: 18, scope: !2033)
!2073 = !DILocation(line: 889, column: 7, scope: !2033)
!2074 = !DILocation(line: 889, column: 38, scope: !2033)
!2075 = !DILocation(line: 889, column: 31, scope: !2033)
!2076 = !DILocation(line: 889, column: 48, scope: !2033)
!2077 = !DILocation(line: 890, column: 14, scope: !2033)
!2078 = !DILocation(line: 891, column: 5, scope: !2033)
!2079 = !DILocation(line: 894, column: 19, scope: !2036)
!2080 = !DILocation(line: 894, column: 25, scope: !2036)
!2081 = !DILocation(line: 894, column: 12, scope: !2036)
!2082 = !DILocation(line: 895, column: 23, scope: !2036)
!2083 = !DILocation(line: 895, column: 11, scope: !2036)
!2084 = !DILocation(line: 897, column: 26, scope: !2036)
!2085 = !DILocation(line: 897, column: 32, scope: !2036)
!2086 = !DILocation(line: 897, column: 9, scope: !2036)
!2087 = !DILocation(line: 899, column: 55, scope: !2036)
!2088 = !DILocation(line: 900, column: 46, scope: !2036)
!2089 = !DILocation(line: 901, column: 55, scope: !2036)
!2090 = !DILocation(line: 902, column: 55, scope: !2036)
!2091 = !DILocation(line: 898, column: 20, scope: !2036)
!2092 = !DILocation(line: 898, column: 12, scope: !2036)
!2093 = !DILocation(line: 904, column: 14, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2036, file: !100, line: 904, column: 9)
!2095 = !DILocation(line: 904, column: 9, scope: !2036)
!2096 = !DILocation(line: 906, column: 35, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !100, line: 905, column: 7)
!2098 = !DILocation(line: 906, column: 20, scope: !2097)
!2099 = !DILocation(line: 907, column: 17, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !100, line: 907, column: 13)
!2101 = !DILocation(line: 907, column: 13, scope: !2097)
!2102 = !DILocation(line: 908, column: 11, scope: !2100)
!2103 = !DILocation(line: 220, column: 20, scope: !1926, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 909, column: 27, scope: !2097)
!2105 = !DILocation(line: 222, column: 10, scope: !1926, inlinedAt: !2104)
!2106 = !DILocation(line: 909, column: 19, scope: !2097)
!2107 = !DILocation(line: 910, column: 69, scope: !2097)
!2108 = !DILocation(line: 912, column: 44, scope: !2097)
!2109 = !DILocation(line: 913, column: 44, scope: !2097)
!2110 = !DILocation(line: 910, column: 9, scope: !2097)
!2111 = !DILocation(line: 914, column: 7, scope: !2097)
!2112 = !DILocation(line: 916, column: 11, scope: !2036)
!2113 = !DILocation(line: 917, column: 5, scope: !2036)
!2114 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2115, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!50, !25, !6, !94}
!2117 = !{!2118, !2119, !2120}
!2118 = !DILocalVariable(name: "n", arg: 1, scope: !2114, file: !100, line: 928, type: !25)
!2119 = !DILocalVariable(name: "arg", arg: 2, scope: !2114, file: !100, line: 928, type: !6)
!2120 = !DILocalVariable(name: "argsize", arg: 3, scope: !2114, file: !100, line: 928, type: !94)
!2121 = !DILocation(line: 928, column: 21, scope: !2114)
!2122 = !DILocation(line: 928, column: 36, scope: !2114)
!2123 = !DILocation(line: 928, column: 48, scope: !2114)
!2124 = !DILocation(line: 930, column: 10, scope: !2114)
!2125 = !DILocation(line: 930, column: 3, scope: !2114)
!2126 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2127, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!50, !6}
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "arg", arg: 1, scope: !2126, file: !100, line: 934, type: !6)
!2131 = !DILocation(line: 934, column: 23, scope: !2126)
!2132 = !DILocation(line: 922, column: 17, scope: !2012, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 936, column: 10, scope: !2126)
!2134 = !DILocation(line: 922, column: 32, scope: !2012, inlinedAt: !2133)
!2135 = !DILocation(line: 924, column: 10, scope: !2012, inlinedAt: !2133)
!2136 = !DILocation(line: 936, column: 3, scope: !2126)
!2137 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2138, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!50, !6, !94}
!2140 = !{!2141, !2142}
!2141 = !DILocalVariable(name: "arg", arg: 1, scope: !2137, file: !100, line: 940, type: !6)
!2142 = !DILocalVariable(name: "argsize", arg: 2, scope: !2137, file: !100, line: 940, type: !94)
!2143 = !DILocation(line: 940, column: 27, scope: !2137)
!2144 = !DILocation(line: 940, column: 39, scope: !2137)
!2145 = !DILocation(line: 928, column: 21, scope: !2114, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 942, column: 10, scope: !2137)
!2147 = !DILocation(line: 928, column: 36, scope: !2114, inlinedAt: !2146)
!2148 = !DILocation(line: 928, column: 48, scope: !2114, inlinedAt: !2146)
!2149 = !DILocation(line: 930, column: 10, scope: !2114, inlinedAt: !2146)
!2150 = !DILocation(line: 942, column: 3, scope: !2137)
!2151 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2152, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!50, !25, !58, !6}
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DILocalVariable(name: "n", arg: 1, scope: !2151, file: !100, line: 946, type: !25)
!2156 = !DILocalVariable(name: "s", arg: 2, scope: !2151, file: !100, line: 946, type: !58)
!2157 = !DILocalVariable(name: "arg", arg: 3, scope: !2151, file: !100, line: 946, type: !6)
!2158 = !DILocalVariable(name: "o", scope: !2151, file: !100, line: 948, type: !1013)
!2159 = !DILocalVariable(name: "o", scope: !2160, file: !100, line: 187, type: !107)
!2160 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2161, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!107, !58}
!2163 = !{!2164, !2159}
!2164 = !DILocalVariable(name: "style", arg: 1, scope: !2160, file: !100, line: 185, type: !58)
!2165 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2166 = !DILocation(line: 187, column: 26, scope: !2160, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 948, column: 36, scope: !2151)
!2168 = !DILocation(line: 946, column: 23, scope: !2151)
!2169 = !DILocation(line: 946, column: 45, scope: !2151)
!2170 = !DILocation(line: 946, column: 60, scope: !2151)
!2171 = !DILocation(line: 948, column: 3, scope: !2151)
!2172 = !DILocation(line: 948, column: 32, scope: !2151)
!2173 = !DILocation(line: 185, column: 48, scope: !2160, inlinedAt: !2167)
!2174 = !DILocation(line: 187, column: 3, scope: !2160, inlinedAt: !2167)
!2175 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2176 = !DILocation(line: 188, column: 13, scope: !2177, inlinedAt: !2167)
!2177 = distinct !DILexicalBlock(scope: !2160, file: !100, line: 188, column: 7)
!2178 = !DILocation(line: 188, column: 7, scope: !2160, inlinedAt: !2167)
!2179 = !DILocation(line: 189, column: 5, scope: !2177, inlinedAt: !2167)
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"quoting_options_from_style: argument 0"}
!2182 = distinct !{!2182, !"quoting_options_from_style"}
!2183 = !DILocation(line: 191, column: 10, scope: !2160, inlinedAt: !2167)
!2184 = !DILocation(line: 192, column: 1, scope: !2160, inlinedAt: !2167)
!2185 = !DILocation(line: 949, column: 10, scope: !2151)
!2186 = !DILocation(line: 950, column: 1, scope: !2151)
!2187 = !DILocation(line: 949, column: 3, scope: !2151)
!2188 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2189, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!50, !25, !58, !6, !94}
!2191 = !{!2192, !2193, !2194, !2195, !2196}
!2192 = !DILocalVariable(name: "n", arg: 1, scope: !2188, file: !100, line: 953, type: !25)
!2193 = !DILocalVariable(name: "s", arg: 2, scope: !2188, file: !100, line: 953, type: !58)
!2194 = !DILocalVariable(name: "arg", arg: 3, scope: !2188, file: !100, line: 954, type: !6)
!2195 = !DILocalVariable(name: "argsize", arg: 4, scope: !2188, file: !100, line: 954, type: !94)
!2196 = !DILocalVariable(name: "o", scope: !2188, file: !100, line: 956, type: !1013)
!2197 = !DILocation(line: 187, column: 26, scope: !2160, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 956, column: 36, scope: !2188)
!2199 = !DILocation(line: 953, column: 27, scope: !2188)
!2200 = !DILocation(line: 953, column: 49, scope: !2188)
!2201 = !DILocation(line: 954, column: 35, scope: !2188)
!2202 = !DILocation(line: 954, column: 47, scope: !2188)
!2203 = !DILocation(line: 956, column: 3, scope: !2188)
!2204 = !DILocation(line: 956, column: 32, scope: !2188)
!2205 = !DILocation(line: 185, column: 48, scope: !2160, inlinedAt: !2198)
!2206 = !DILocation(line: 187, column: 3, scope: !2160, inlinedAt: !2198)
!2207 = !DILocation(line: 188, column: 13, scope: !2177, inlinedAt: !2198)
!2208 = !DILocation(line: 188, column: 7, scope: !2160, inlinedAt: !2198)
!2209 = !DILocation(line: 189, column: 5, scope: !2177, inlinedAt: !2198)
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"quoting_options_from_style: argument 0"}
!2212 = distinct !{!2212, !"quoting_options_from_style"}
!2213 = !DILocation(line: 191, column: 10, scope: !2160, inlinedAt: !2198)
!2214 = !DILocation(line: 192, column: 1, scope: !2160, inlinedAt: !2198)
!2215 = !DILocation(line: 957, column: 10, scope: !2188)
!2216 = !DILocation(line: 958, column: 1, scope: !2188)
!2217 = !DILocation(line: 957, column: 3, scope: !2188)
!2218 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2219, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!50, !58, !6}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "s", arg: 1, scope: !2218, file: !100, line: 961, type: !58)
!2223 = !DILocalVariable(name: "arg", arg: 2, scope: !2218, file: !100, line: 961, type: !6)
!2224 = !DILocation(line: 187, column: 26, scope: !2160, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 948, column: 36, scope: !2151, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 963, column: 10, scope: !2218)
!2227 = !DILocation(line: 961, column: 36, scope: !2218)
!2228 = !DILocation(line: 961, column: 51, scope: !2218)
!2229 = !DILocation(line: 946, column: 23, scope: !2151, inlinedAt: !2226)
!2230 = !DILocation(line: 946, column: 45, scope: !2151, inlinedAt: !2226)
!2231 = !DILocation(line: 946, column: 60, scope: !2151, inlinedAt: !2226)
!2232 = !DILocation(line: 948, column: 3, scope: !2151, inlinedAt: !2226)
!2233 = !DILocation(line: 948, column: 32, scope: !2151, inlinedAt: !2226)
!2234 = !DILocation(line: 185, column: 48, scope: !2160, inlinedAt: !2225)
!2235 = !DILocation(line: 187, column: 3, scope: !2160, inlinedAt: !2225)
!2236 = !DILocation(line: 188, column: 13, scope: !2177, inlinedAt: !2225)
!2237 = !DILocation(line: 188, column: 7, scope: !2160, inlinedAt: !2225)
!2238 = !DILocation(line: 189, column: 5, scope: !2177, inlinedAt: !2225)
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"quoting_options_from_style: argument 0"}
!2241 = distinct !{!2241, !"quoting_options_from_style"}
!2242 = !DILocation(line: 191, column: 10, scope: !2160, inlinedAt: !2225)
!2243 = !DILocation(line: 192, column: 1, scope: !2160, inlinedAt: !2225)
!2244 = !DILocation(line: 949, column: 10, scope: !2151, inlinedAt: !2226)
!2245 = !DILocation(line: 950, column: 1, scope: !2151, inlinedAt: !2226)
!2246 = !DILocation(line: 963, column: 3, scope: !2218)
!2247 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2248, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!50, !58, !6, !94}
!2250 = !{!2251, !2252, !2253}
!2251 = !DILocalVariable(name: "s", arg: 1, scope: !2247, file: !100, line: 967, type: !58)
!2252 = !DILocalVariable(name: "arg", arg: 2, scope: !2247, file: !100, line: 967, type: !6)
!2253 = !DILocalVariable(name: "argsize", arg: 3, scope: !2247, file: !100, line: 967, type: !94)
!2254 = !DILocation(line: 187, column: 26, scope: !2160, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 956, column: 36, scope: !2188, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 969, column: 10, scope: !2247)
!2257 = !DILocation(line: 967, column: 40, scope: !2247)
!2258 = !DILocation(line: 967, column: 55, scope: !2247)
!2259 = !DILocation(line: 967, column: 67, scope: !2247)
!2260 = !DILocation(line: 953, column: 27, scope: !2188, inlinedAt: !2256)
!2261 = !DILocation(line: 953, column: 49, scope: !2188, inlinedAt: !2256)
!2262 = !DILocation(line: 954, column: 35, scope: !2188, inlinedAt: !2256)
!2263 = !DILocation(line: 954, column: 47, scope: !2188, inlinedAt: !2256)
!2264 = !DILocation(line: 956, column: 3, scope: !2188, inlinedAt: !2256)
!2265 = !DILocation(line: 956, column: 32, scope: !2188, inlinedAt: !2256)
!2266 = !DILocation(line: 185, column: 48, scope: !2160, inlinedAt: !2255)
!2267 = !DILocation(line: 187, column: 3, scope: !2160, inlinedAt: !2255)
!2268 = !DILocation(line: 188, column: 13, scope: !2177, inlinedAt: !2255)
!2269 = !DILocation(line: 188, column: 7, scope: !2160, inlinedAt: !2255)
!2270 = !DILocation(line: 189, column: 5, scope: !2177, inlinedAt: !2255)
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"quoting_options_from_style: argument 0"}
!2273 = distinct !{!2273, !"quoting_options_from_style"}
!2274 = !DILocation(line: 191, column: 10, scope: !2160, inlinedAt: !2255)
!2275 = !DILocation(line: 192, column: 1, scope: !2160, inlinedAt: !2255)
!2276 = !DILocation(line: 957, column: 10, scope: !2188, inlinedAt: !2256)
!2277 = !DILocation(line: 958, column: 1, scope: !2188, inlinedAt: !2256)
!2278 = !DILocation(line: 969, column: 3, scope: !2247)
!2279 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2280, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!50, !6, !94, !8}
!2282 = !{!2283, !2284, !2285, !2286}
!2283 = !DILocalVariable(name: "arg", arg: 1, scope: !2279, file: !100, line: 973, type: !6)
!2284 = !DILocalVariable(name: "argsize", arg: 2, scope: !2279, file: !100, line: 973, type: !94)
!2285 = !DILocalVariable(name: "ch", arg: 3, scope: !2279, file: !100, line: 973, type: !8)
!2286 = !DILocalVariable(name: "options", scope: !2279, file: !100, line: 975, type: !107)
!2287 = !DILocation(line: 973, column: 32, scope: !2279)
!2288 = !DILocation(line: 973, column: 44, scope: !2279)
!2289 = !DILocation(line: 973, column: 58, scope: !2279)
!2290 = !DILocation(line: 975, column: 3, scope: !2279)
!2291 = !DILocation(line: 976, column: 13, scope: !2279)
!2292 = !{i64 0, i64 4, !772, i64 4, i64 4, !647, i64 8, i64 32, !772, i64 40, i64 8, !600, i64 48, i64 8, !600}
!2293 = !DILocation(line: 975, column: 26, scope: !2279)
!2294 = !DILocation(line: 144, column: 43, scope: !1034, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 977, column: 3, scope: !2279)
!2296 = !DILocation(line: 144, column: 51, scope: !1034, inlinedAt: !2295)
!2297 = !DILocation(line: 144, column: 58, scope: !1034, inlinedAt: !2295)
!2298 = !DILocation(line: 146, column: 17, scope: !1034, inlinedAt: !2295)
!2299 = !DILocation(line: 148, column: 62, scope: !1034, inlinedAt: !2295)
!2300 = !DILocation(line: 148, column: 57, scope: !1034, inlinedAt: !2295)
!2301 = !DILocation(line: 147, column: 17, scope: !1034, inlinedAt: !2295)
!2302 = !DILocation(line: 149, column: 18, scope: !1034, inlinedAt: !2295)
!2303 = !DILocation(line: 149, column: 15, scope: !1034, inlinedAt: !2295)
!2304 = !DILocation(line: 149, column: 7, scope: !1034, inlinedAt: !2295)
!2305 = !DILocation(line: 150, column: 12, scope: !1034, inlinedAt: !2295)
!2306 = !DILocation(line: 150, column: 15, scope: !1034, inlinedAt: !2295)
!2307 = !DILocation(line: 150, column: 25, scope: !1034, inlinedAt: !2295)
!2308 = !DILocation(line: 150, column: 7, scope: !1034, inlinedAt: !2295)
!2309 = !DILocation(line: 151, column: 18, scope: !1034, inlinedAt: !2295)
!2310 = !DILocation(line: 151, column: 23, scope: !1034, inlinedAt: !2295)
!2311 = !DILocation(line: 151, column: 6, scope: !1034, inlinedAt: !2295)
!2312 = !DILocation(line: 978, column: 10, scope: !2279)
!2313 = !DILocation(line: 979, column: 1, scope: !2279)
!2314 = !DILocation(line: 978, column: 3, scope: !2279)
!2315 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2316, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!50, !6, !8}
!2318 = !{!2319, !2320}
!2319 = !DILocalVariable(name: "arg", arg: 1, scope: !2315, file: !100, line: 982, type: !6)
!2320 = !DILocalVariable(name: "ch", arg: 2, scope: !2315, file: !100, line: 982, type: !8)
!2321 = !DILocation(line: 982, column: 28, scope: !2315)
!2322 = !DILocation(line: 982, column: 38, scope: !2315)
!2323 = !DILocation(line: 973, column: 32, scope: !2279, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 984, column: 10, scope: !2315)
!2325 = !DILocation(line: 973, column: 44, scope: !2279, inlinedAt: !2324)
!2326 = !DILocation(line: 973, column: 58, scope: !2279, inlinedAt: !2324)
!2327 = !DILocation(line: 975, column: 3, scope: !2279, inlinedAt: !2324)
!2328 = !DILocation(line: 976, column: 13, scope: !2279, inlinedAt: !2324)
!2329 = !DILocation(line: 975, column: 26, scope: !2279, inlinedAt: !2324)
!2330 = !DILocation(line: 144, column: 43, scope: !1034, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 977, column: 3, scope: !2279, inlinedAt: !2324)
!2332 = !DILocation(line: 144, column: 51, scope: !1034, inlinedAt: !2331)
!2333 = !DILocation(line: 144, column: 58, scope: !1034, inlinedAt: !2331)
!2334 = !DILocation(line: 146, column: 17, scope: !1034, inlinedAt: !2331)
!2335 = !DILocation(line: 148, column: 62, scope: !1034, inlinedAt: !2331)
!2336 = !DILocation(line: 148, column: 57, scope: !1034, inlinedAt: !2331)
!2337 = !DILocation(line: 147, column: 17, scope: !1034, inlinedAt: !2331)
!2338 = !DILocation(line: 149, column: 18, scope: !1034, inlinedAt: !2331)
!2339 = !DILocation(line: 149, column: 15, scope: !1034, inlinedAt: !2331)
!2340 = !DILocation(line: 149, column: 7, scope: !1034, inlinedAt: !2331)
!2341 = !DILocation(line: 150, column: 12, scope: !1034, inlinedAt: !2331)
!2342 = !DILocation(line: 150, column: 15, scope: !1034, inlinedAt: !2331)
!2343 = !DILocation(line: 150, column: 25, scope: !1034, inlinedAt: !2331)
!2344 = !DILocation(line: 150, column: 7, scope: !1034, inlinedAt: !2331)
!2345 = !DILocation(line: 151, column: 18, scope: !1034, inlinedAt: !2331)
!2346 = !DILocation(line: 151, column: 23, scope: !1034, inlinedAt: !2331)
!2347 = !DILocation(line: 151, column: 6, scope: !1034, inlinedAt: !2331)
!2348 = !DILocation(line: 978, column: 10, scope: !2279, inlinedAt: !2324)
!2349 = !DILocation(line: 979, column: 1, scope: !2279, inlinedAt: !2324)
!2350 = !DILocation(line: 984, column: 3, scope: !2315)
!2351 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2127, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2352)
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "arg", arg: 1, scope: !2351, file: !100, line: 988, type: !6)
!2354 = !DILocation(line: 988, column: 29, scope: !2351)
!2355 = !DILocation(line: 982, column: 28, scope: !2315, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 990, column: 10, scope: !2351)
!2357 = !DILocation(line: 982, column: 38, scope: !2315, inlinedAt: !2356)
!2358 = !DILocation(line: 973, column: 32, scope: !2279, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 984, column: 10, scope: !2315, inlinedAt: !2356)
!2360 = !DILocation(line: 973, column: 44, scope: !2279, inlinedAt: !2359)
!2361 = !DILocation(line: 973, column: 58, scope: !2279, inlinedAt: !2359)
!2362 = !DILocation(line: 975, column: 3, scope: !2279, inlinedAt: !2359)
!2363 = !DILocation(line: 976, column: 13, scope: !2279, inlinedAt: !2359)
!2364 = !DILocation(line: 975, column: 26, scope: !2279, inlinedAt: !2359)
!2365 = !DILocation(line: 144, column: 43, scope: !1034, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 977, column: 3, scope: !2279, inlinedAt: !2359)
!2367 = !DILocation(line: 144, column: 51, scope: !1034, inlinedAt: !2366)
!2368 = !DILocation(line: 144, column: 58, scope: !1034, inlinedAt: !2366)
!2369 = !DILocation(line: 146, column: 17, scope: !1034, inlinedAt: !2366)
!2370 = !DILocation(line: 148, column: 57, scope: !1034, inlinedAt: !2366)
!2371 = !DILocation(line: 147, column: 17, scope: !1034, inlinedAt: !2366)
!2372 = !DILocation(line: 149, column: 7, scope: !1034, inlinedAt: !2366)
!2373 = !DILocation(line: 150, column: 12, scope: !1034, inlinedAt: !2366)
!2374 = !DILocation(line: 151, column: 6, scope: !1034, inlinedAt: !2366)
!2375 = !DILocation(line: 978, column: 10, scope: !2279, inlinedAt: !2359)
!2376 = !DILocation(line: 979, column: 1, scope: !2279, inlinedAt: !2359)
!2377 = !DILocation(line: 990, column: 3, scope: !2351)
!2378 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2138, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2379)
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !100, line: 994, type: !6)
!2381 = !DILocalVariable(name: "argsize", arg: 2, scope: !2378, file: !100, line: 994, type: !94)
!2382 = !DILocation(line: 994, column: 33, scope: !2378)
!2383 = !DILocation(line: 994, column: 45, scope: !2378)
!2384 = !DILocation(line: 973, column: 32, scope: !2279, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 996, column: 10, scope: !2378)
!2386 = !DILocation(line: 973, column: 44, scope: !2279, inlinedAt: !2385)
!2387 = !DILocation(line: 973, column: 58, scope: !2279, inlinedAt: !2385)
!2388 = !DILocation(line: 975, column: 3, scope: !2279, inlinedAt: !2385)
!2389 = !DILocation(line: 976, column: 13, scope: !2279, inlinedAt: !2385)
!2390 = !DILocation(line: 975, column: 26, scope: !2279, inlinedAt: !2385)
!2391 = !DILocation(line: 144, column: 43, scope: !1034, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 977, column: 3, scope: !2279, inlinedAt: !2385)
!2393 = !DILocation(line: 144, column: 51, scope: !1034, inlinedAt: !2392)
!2394 = !DILocation(line: 144, column: 58, scope: !1034, inlinedAt: !2392)
!2395 = !DILocation(line: 146, column: 17, scope: !1034, inlinedAt: !2392)
!2396 = !DILocation(line: 148, column: 57, scope: !1034, inlinedAt: !2392)
!2397 = !DILocation(line: 147, column: 17, scope: !1034, inlinedAt: !2392)
!2398 = !DILocation(line: 149, column: 7, scope: !1034, inlinedAt: !2392)
!2399 = !DILocation(line: 150, column: 12, scope: !1034, inlinedAt: !2392)
!2400 = !DILocation(line: 151, column: 6, scope: !1034, inlinedAt: !2392)
!2401 = !DILocation(line: 978, column: 10, scope: !2279, inlinedAt: !2385)
!2402 = !DILocation(line: 979, column: 1, scope: !2279, inlinedAt: !2385)
!2403 = !DILocation(line: 996, column: 3, scope: !2378)
!2404 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2152, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2405)
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !100, line: 1000, type: !25)
!2407 = !DILocalVariable(name: "s", arg: 2, scope: !2404, file: !100, line: 1000, type: !58)
!2408 = !DILocalVariable(name: "arg", arg: 3, scope: !2404, file: !100, line: 1000, type: !6)
!2409 = !DILocalVariable(name: "options", scope: !2404, file: !100, line: 1002, type: !107)
!2410 = !DILocation(line: 187, column: 26, scope: !2160, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1003, column: 13, scope: !2404)
!2412 = !DILocation(line: 1000, column: 29, scope: !2404)
!2413 = !DILocation(line: 1000, column: 51, scope: !2404)
!2414 = !DILocation(line: 1000, column: 66, scope: !2404)
!2415 = !DILocation(line: 1002, column: 3, scope: !2404)
!2416 = !DILocation(line: 185, column: 48, scope: !2160, inlinedAt: !2411)
!2417 = !DILocation(line: 187, column: 3, scope: !2160, inlinedAt: !2411)
!2418 = !DILocation(line: 188, column: 13, scope: !2177, inlinedAt: !2411)
!2419 = !DILocation(line: 188, column: 7, scope: !2160, inlinedAt: !2411)
!2420 = !DILocation(line: 189, column: 5, scope: !2177, inlinedAt: !2411)
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"quoting_options_from_style: argument 0"}
!2423 = distinct !{!2423, !"quoting_options_from_style"}
!2424 = !DILocation(line: 191, column: 10, scope: !2160, inlinedAt: !2411)
!2425 = !DILocation(line: 192, column: 1, scope: !2160, inlinedAt: !2411)
!2426 = !DILocation(line: 1003, column: 13, scope: !2404)
!2427 = !DILocation(line: 1002, column: 26, scope: !2404)
!2428 = !DILocation(line: 144, column: 43, scope: !1034, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1004, column: 3, scope: !2404)
!2430 = !DILocation(line: 144, column: 51, scope: !1034, inlinedAt: !2429)
!2431 = !DILocation(line: 144, column: 58, scope: !1034, inlinedAt: !2429)
!2432 = !DILocation(line: 146, column: 17, scope: !1034, inlinedAt: !2429)
!2433 = !DILocation(line: 148, column: 57, scope: !1034, inlinedAt: !2429)
!2434 = !DILocation(line: 147, column: 17, scope: !1034, inlinedAt: !2429)
!2435 = !DILocation(line: 149, column: 7, scope: !1034, inlinedAt: !2429)
!2436 = !DILocation(line: 150, column: 12, scope: !1034, inlinedAt: !2429)
!2437 = !DILocation(line: 151, column: 6, scope: !1034, inlinedAt: !2429)
!2438 = !DILocation(line: 1005, column: 10, scope: !2404)
!2439 = !DILocation(line: 1006, column: 1, scope: !2404)
!2440 = !DILocation(line: 1005, column: 3, scope: !2404)
!2441 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2442, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!50, !25, !6, !6, !6}
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DILocalVariable(name: "n", arg: 1, scope: !2441, file: !100, line: 1009, type: !25)
!2446 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2441, file: !100, line: 1009, type: !6)
!2447 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2441, file: !100, line: 1010, type: !6)
!2448 = !DILocalVariable(name: "arg", arg: 4, scope: !2441, file: !100, line: 1010, type: !6)
!2449 = !DILocation(line: 1009, column: 24, scope: !2441)
!2450 = !DILocation(line: 1009, column: 39, scope: !2441)
!2451 = !DILocation(line: 1010, column: 32, scope: !2441)
!2452 = !DILocation(line: 1010, column: 57, scope: !2441)
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !100, line: 1017, type: !25)
!2454 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2455, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!50, !25, !6, !6, !6, !94}
!2457 = !{!2453, !2458, !2459, !2460, !2461, !2462}
!2458 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2454, file: !100, line: 1017, type: !6)
!2459 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2454, file: !100, line: 1018, type: !6)
!2460 = !DILocalVariable(name: "arg", arg: 4, scope: !2454, file: !100, line: 1019, type: !6)
!2461 = !DILocalVariable(name: "argsize", arg: 5, scope: !2454, file: !100, line: 1019, type: !94)
!2462 = !DILocalVariable(name: "o", scope: !2454, file: !100, line: 1021, type: !107)
!2463 = !DILocation(line: 1017, column: 28, scope: !2454, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1012, column: 10, scope: !2441)
!2465 = !DILocation(line: 1017, column: 43, scope: !2454, inlinedAt: !2464)
!2466 = !DILocation(line: 1018, column: 36, scope: !2454, inlinedAt: !2464)
!2467 = !DILocation(line: 1019, column: 36, scope: !2454, inlinedAt: !2464)
!2468 = !DILocation(line: 1019, column: 48, scope: !2454, inlinedAt: !2464)
!2469 = !DILocation(line: 1021, column: 3, scope: !2454, inlinedAt: !2464)
!2470 = !DILocation(line: 1021, column: 30, scope: !2454, inlinedAt: !2464)
!2471 = !DILocation(line: 1021, column: 26, scope: !2454, inlinedAt: !2464)
!2472 = !DILocation(line: 171, column: 45, scope: !1083, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 1022, column: 3, scope: !2454, inlinedAt: !2464)
!2474 = !DILocation(line: 172, column: 33, scope: !1083, inlinedAt: !2473)
!2475 = !DILocation(line: 172, column: 57, scope: !1083, inlinedAt: !2473)
!2476 = !DILocation(line: 176, column: 6, scope: !1083, inlinedAt: !2473)
!2477 = !DILocation(line: 176, column: 12, scope: !1083, inlinedAt: !2473)
!2478 = !DILocation(line: 177, column: 8, scope: !1099, inlinedAt: !2473)
!2479 = !DILocation(line: 177, column: 23, scope: !1099, inlinedAt: !2473)
!2480 = !DILocation(line: 177, column: 19, scope: !1099, inlinedAt: !2473)
!2481 = !DILocation(line: 178, column: 5, scope: !1099, inlinedAt: !2473)
!2482 = !DILocation(line: 179, column: 6, scope: !1083, inlinedAt: !2473)
!2483 = !DILocation(line: 179, column: 17, scope: !1083, inlinedAt: !2473)
!2484 = !DILocation(line: 180, column: 6, scope: !1083, inlinedAt: !2473)
!2485 = !DILocation(line: 180, column: 18, scope: !1083, inlinedAt: !2473)
!2486 = !DILocation(line: 1023, column: 10, scope: !2454, inlinedAt: !2464)
!2487 = !DILocation(line: 1024, column: 1, scope: !2454, inlinedAt: !2464)
!2488 = !DILocation(line: 1012, column: 3, scope: !2441)
!2489 = !DILocation(line: 1017, column: 28, scope: !2454)
!2490 = !DILocation(line: 1017, column: 43, scope: !2454)
!2491 = !DILocation(line: 1018, column: 36, scope: !2454)
!2492 = !DILocation(line: 1019, column: 36, scope: !2454)
!2493 = !DILocation(line: 1019, column: 48, scope: !2454)
!2494 = !DILocation(line: 1021, column: 3, scope: !2454)
!2495 = !DILocation(line: 1021, column: 30, scope: !2454)
!2496 = !DILocation(line: 1021, column: 26, scope: !2454)
!2497 = !DILocation(line: 171, column: 45, scope: !1083, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1022, column: 3, scope: !2454)
!2499 = !DILocation(line: 172, column: 33, scope: !1083, inlinedAt: !2498)
!2500 = !DILocation(line: 172, column: 57, scope: !1083, inlinedAt: !2498)
!2501 = !DILocation(line: 176, column: 6, scope: !1083, inlinedAt: !2498)
!2502 = !DILocation(line: 176, column: 12, scope: !1083, inlinedAt: !2498)
!2503 = !DILocation(line: 177, column: 8, scope: !1099, inlinedAt: !2498)
!2504 = !DILocation(line: 177, column: 23, scope: !1099, inlinedAt: !2498)
!2505 = !DILocation(line: 177, column: 19, scope: !1099, inlinedAt: !2498)
!2506 = !DILocation(line: 178, column: 5, scope: !1099, inlinedAt: !2498)
!2507 = !DILocation(line: 179, column: 6, scope: !1083, inlinedAt: !2498)
!2508 = !DILocation(line: 179, column: 17, scope: !1083, inlinedAt: !2498)
!2509 = !DILocation(line: 180, column: 6, scope: !1083, inlinedAt: !2498)
!2510 = !DILocation(line: 180, column: 18, scope: !1083, inlinedAt: !2498)
!2511 = !DILocation(line: 1023, column: 10, scope: !2454)
!2512 = !DILocation(line: 1024, column: 1, scope: !2454)
!2513 = !DILocation(line: 1023, column: 3, scope: !2454)
!2514 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2515, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!50, !6, !6, !6}
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2514, file: !100, line: 1027, type: !6)
!2519 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2514, file: !100, line: 1027, type: !6)
!2520 = !DILocalVariable(name: "arg", arg: 3, scope: !2514, file: !100, line: 1028, type: !6)
!2521 = !DILocation(line: 1027, column: 30, scope: !2514)
!2522 = !DILocation(line: 1027, column: 54, scope: !2514)
!2523 = !DILocation(line: 1028, column: 30, scope: !2514)
!2524 = !DILocation(line: 1009, column: 24, scope: !2441, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 1030, column: 10, scope: !2514)
!2526 = !DILocation(line: 1009, column: 39, scope: !2441, inlinedAt: !2525)
!2527 = !DILocation(line: 1010, column: 32, scope: !2441, inlinedAt: !2525)
!2528 = !DILocation(line: 1010, column: 57, scope: !2441, inlinedAt: !2525)
!2529 = !DILocation(line: 1017, column: 28, scope: !2454, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 1012, column: 10, scope: !2441, inlinedAt: !2525)
!2531 = !DILocation(line: 1017, column: 43, scope: !2454, inlinedAt: !2530)
!2532 = !DILocation(line: 1018, column: 36, scope: !2454, inlinedAt: !2530)
!2533 = !DILocation(line: 1019, column: 36, scope: !2454, inlinedAt: !2530)
!2534 = !DILocation(line: 1019, column: 48, scope: !2454, inlinedAt: !2530)
!2535 = !DILocation(line: 1021, column: 3, scope: !2454, inlinedAt: !2530)
!2536 = !DILocation(line: 1021, column: 30, scope: !2454, inlinedAt: !2530)
!2537 = !DILocation(line: 1021, column: 26, scope: !2454, inlinedAt: !2530)
!2538 = !DILocation(line: 171, column: 45, scope: !1083, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1022, column: 3, scope: !2454, inlinedAt: !2530)
!2540 = !DILocation(line: 172, column: 33, scope: !1083, inlinedAt: !2539)
!2541 = !DILocation(line: 172, column: 57, scope: !1083, inlinedAt: !2539)
!2542 = !DILocation(line: 176, column: 6, scope: !1083, inlinedAt: !2539)
!2543 = !DILocation(line: 176, column: 12, scope: !1083, inlinedAt: !2539)
!2544 = !DILocation(line: 177, column: 8, scope: !1099, inlinedAt: !2539)
!2545 = !DILocation(line: 177, column: 23, scope: !1099, inlinedAt: !2539)
!2546 = !DILocation(line: 177, column: 19, scope: !1099, inlinedAt: !2539)
!2547 = !DILocation(line: 178, column: 5, scope: !1099, inlinedAt: !2539)
!2548 = !DILocation(line: 179, column: 6, scope: !1083, inlinedAt: !2539)
!2549 = !DILocation(line: 179, column: 17, scope: !1083, inlinedAt: !2539)
!2550 = !DILocation(line: 180, column: 6, scope: !1083, inlinedAt: !2539)
!2551 = !DILocation(line: 180, column: 18, scope: !1083, inlinedAt: !2539)
!2552 = !DILocation(line: 1023, column: 10, scope: !2454, inlinedAt: !2530)
!2553 = !DILocation(line: 1024, column: 1, scope: !2454, inlinedAt: !2530)
!2554 = !DILocation(line: 1030, column: 3, scope: !2514)
!2555 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2556, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!50, !6, !6, !6, !94}
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2555, file: !100, line: 1034, type: !6)
!2560 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2555, file: !100, line: 1034, type: !6)
!2561 = !DILocalVariable(name: "arg", arg: 3, scope: !2555, file: !100, line: 1035, type: !6)
!2562 = !DILocalVariable(name: "argsize", arg: 4, scope: !2555, file: !100, line: 1035, type: !94)
!2563 = !DILocation(line: 1034, column: 34, scope: !2555)
!2564 = !DILocation(line: 1034, column: 58, scope: !2555)
!2565 = !DILocation(line: 1035, column: 34, scope: !2555)
!2566 = !DILocation(line: 1035, column: 46, scope: !2555)
!2567 = !DILocation(line: 1017, column: 28, scope: !2454, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 1037, column: 10, scope: !2555)
!2569 = !DILocation(line: 1017, column: 43, scope: !2454, inlinedAt: !2568)
!2570 = !DILocation(line: 1018, column: 36, scope: !2454, inlinedAt: !2568)
!2571 = !DILocation(line: 1019, column: 36, scope: !2454, inlinedAt: !2568)
!2572 = !DILocation(line: 1019, column: 48, scope: !2454, inlinedAt: !2568)
!2573 = !DILocation(line: 1021, column: 3, scope: !2454, inlinedAt: !2568)
!2574 = !DILocation(line: 1021, column: 30, scope: !2454, inlinedAt: !2568)
!2575 = !DILocation(line: 1021, column: 26, scope: !2454, inlinedAt: !2568)
!2576 = !DILocation(line: 171, column: 45, scope: !1083, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1022, column: 3, scope: !2454, inlinedAt: !2568)
!2578 = !DILocation(line: 172, column: 33, scope: !1083, inlinedAt: !2577)
!2579 = !DILocation(line: 172, column: 57, scope: !1083, inlinedAt: !2577)
!2580 = !DILocation(line: 176, column: 6, scope: !1083, inlinedAt: !2577)
!2581 = !DILocation(line: 176, column: 12, scope: !1083, inlinedAt: !2577)
!2582 = !DILocation(line: 177, column: 8, scope: !1099, inlinedAt: !2577)
!2583 = !DILocation(line: 177, column: 23, scope: !1099, inlinedAt: !2577)
!2584 = !DILocation(line: 177, column: 19, scope: !1099, inlinedAt: !2577)
!2585 = !DILocation(line: 178, column: 5, scope: !1099, inlinedAt: !2577)
!2586 = !DILocation(line: 179, column: 6, scope: !1083, inlinedAt: !2577)
!2587 = !DILocation(line: 179, column: 17, scope: !1083, inlinedAt: !2577)
!2588 = !DILocation(line: 180, column: 6, scope: !1083, inlinedAt: !2577)
!2589 = !DILocation(line: 180, column: 18, scope: !1083, inlinedAt: !2577)
!2590 = !DILocation(line: 1023, column: 10, scope: !2454, inlinedAt: !2568)
!2591 = !DILocation(line: 1024, column: 1, scope: !2454, inlinedAt: !2568)
!2592 = !DILocation(line: 1037, column: 3, scope: !2555)
!2593 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2594, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!6, !25, !6, !94}
!2596 = !{!2597, !2598, !2599}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !100, line: 1052, type: !25)
!2598 = !DILocalVariable(name: "arg", arg: 2, scope: !2593, file: !100, line: 1052, type: !6)
!2599 = !DILocalVariable(name: "argsize", arg: 3, scope: !2593, file: !100, line: 1052, type: !94)
!2600 = !DILocation(line: 1052, column: 18, scope: !2593)
!2601 = !DILocation(line: 1052, column: 33, scope: !2593)
!2602 = !DILocation(line: 1052, column: 45, scope: !2593)
!2603 = !DILocation(line: 1054, column: 10, scope: !2593)
!2604 = !DILocation(line: 1054, column: 3, scope: !2593)
!2605 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2606, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!6, !6, !94}
!2608 = !{!2609, !2610}
!2609 = !DILocalVariable(name: "arg", arg: 1, scope: !2605, file: !100, line: 1058, type: !6)
!2610 = !DILocalVariable(name: "argsize", arg: 2, scope: !2605, file: !100, line: 1058, type: !94)
!2611 = !DILocation(line: 1058, column: 24, scope: !2605)
!2612 = !DILocation(line: 1058, column: 36, scope: !2605)
!2613 = !DILocation(line: 1052, column: 18, scope: !2593, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1060, column: 10, scope: !2605)
!2615 = !DILocation(line: 1052, column: 33, scope: !2593, inlinedAt: !2614)
!2616 = !DILocation(line: 1052, column: 45, scope: !2593, inlinedAt: !2614)
!2617 = !DILocation(line: 1054, column: 10, scope: !2593, inlinedAt: !2614)
!2618 = !DILocation(line: 1060, column: 3, scope: !2605)
!2619 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2620, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!6, !25, !6}
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !100, line: 1064, type: !25)
!2624 = !DILocalVariable(name: "arg", arg: 2, scope: !2619, file: !100, line: 1064, type: !6)
!2625 = !DILocation(line: 1064, column: 14, scope: !2619)
!2626 = !DILocation(line: 1064, column: 29, scope: !2619)
!2627 = !DILocation(line: 1052, column: 18, scope: !2593, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 1066, column: 10, scope: !2619)
!2629 = !DILocation(line: 1052, column: 33, scope: !2593, inlinedAt: !2628)
!2630 = !DILocation(line: 1052, column: 45, scope: !2593, inlinedAt: !2628)
!2631 = !DILocation(line: 1054, column: 10, scope: !2593, inlinedAt: !2628)
!2632 = !DILocation(line: 1066, column: 3, scope: !2619)
!2633 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2634, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!6, !6}
!2636 = !{!2637}
!2637 = !DILocalVariable(name: "arg", arg: 1, scope: !2633, file: !100, line: 1070, type: !6)
!2638 = !DILocation(line: 1070, column: 20, scope: !2633)
!2639 = !DILocation(line: 1064, column: 14, scope: !2619, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1072, column: 10, scope: !2633)
!2641 = !DILocation(line: 1064, column: 29, scope: !2619, inlinedAt: !2640)
!2642 = !DILocation(line: 1052, column: 18, scope: !2593, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1066, column: 10, scope: !2619, inlinedAt: !2640)
!2644 = !DILocation(line: 1052, column: 33, scope: !2593, inlinedAt: !2643)
!2645 = !DILocation(line: 1052, column: 45, scope: !2593, inlinedAt: !2643)
!2646 = !DILocation(line: 1054, column: 10, scope: !2593, inlinedAt: !2643)
!2647 = !DILocation(line: 1072, column: 3, scope: !2633)
!2648 = distinct !DISubprogram(name: "version_etc_arn", scope: !533, file: !533, line: 62, type: !2649, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !2701)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{null, !2651, !6, !6, !6, !2700, !94}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !2654)
!2653 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !2656)
!2655 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2677, !2678, !2679, !2680, !2683, !2684, !2686, !2688, !2691, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2654, file: !2655, line: 242, baseType: !25, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2654, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2654, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2654, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2654, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2654, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2654, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2654, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2654, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2654, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2654, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2654, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2654, file: !2655, line: 260, baseType: !2670, size: 64, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !2672)
!2672 = !{!2673, !2674, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2671, file: !2655, line: 157, baseType: !2670, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2671, file: !2655, line: 158, baseType: !2675, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2671, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2654, file: !2655, line: 262, baseType: !2675, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2654, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2654, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2654, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !682, line: 140, baseType: !2682)
!2682 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2654, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2654, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!2685 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2654, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !927)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2654, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2655, line: 150, baseType: null)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2654, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !682, line: 141, baseType: !2682)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2654, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2654, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2654, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2654, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2654, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2654, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2654, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707}
!2702 = !DILocalVariable(name: "stream", arg: 1, scope: !2648, file: !533, line: 62, type: !2651)
!2703 = !DILocalVariable(name: "command_name", arg: 2, scope: !2648, file: !533, line: 63, type: !6)
!2704 = !DILocalVariable(name: "package", arg: 3, scope: !2648, file: !533, line: 63, type: !6)
!2705 = !DILocalVariable(name: "version", arg: 4, scope: !2648, file: !533, line: 64, type: !6)
!2706 = !DILocalVariable(name: "authors", arg: 5, scope: !2648, file: !533, line: 65, type: !2700)
!2707 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2648, file: !533, line: 65, type: !94)
!2708 = !DILocation(line: 62, column: 24, scope: !2648)
!2709 = !DILocation(line: 63, column: 30, scope: !2648)
!2710 = !DILocation(line: 63, column: 56, scope: !2648)
!2711 = !DILocation(line: 64, column: 30, scope: !2648)
!2712 = !DILocation(line: 65, column: 39, scope: !2648)
!2713 = !DILocation(line: 65, column: 55, scope: !2648)
!2714 = !DILocation(line: 67, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2648, file: !533, line: 67, column: 7)
!2716 = !DILocation(line: 67, column: 7, scope: !2648)
!2717 = !DILocation(line: 68, column: 5, scope: !2715)
!2718 = !DILocation(line: 70, column: 5, scope: !2715)
!2719 = !DILocation(line: 84, column: 3, scope: !2648)
!2720 = !DILocation(line: 86, column: 3, scope: !2648)
!2721 = !DILocation(line: 95, column: 3, scope: !2648)
!2722 = !DILocation(line: 99, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2648, file: !533, line: 96, column: 5)
!2724 = !DILocation(line: 102, column: 7, scope: !2723)
!2725 = !DILocation(line: 103, column: 7, scope: !2723)
!2726 = !DILocation(line: 106, column: 7, scope: !2723)
!2727 = !DILocation(line: 107, column: 7, scope: !2723)
!2728 = !DILocation(line: 110, column: 7, scope: !2723)
!2729 = !DILocation(line: 112, column: 7, scope: !2723)
!2730 = !DILocation(line: 117, column: 7, scope: !2723)
!2731 = !DILocation(line: 119, column: 7, scope: !2723)
!2732 = !DILocation(line: 124, column: 7, scope: !2723)
!2733 = !DILocation(line: 126, column: 7, scope: !2723)
!2734 = !DILocation(line: 131, column: 7, scope: !2723)
!2735 = !DILocation(line: 134, column: 7, scope: !2723)
!2736 = !DILocation(line: 139, column: 7, scope: !2723)
!2737 = !DILocation(line: 142, column: 7, scope: !2723)
!2738 = !DILocation(line: 147, column: 7, scope: !2723)
!2739 = !DILocation(line: 151, column: 7, scope: !2723)
!2740 = !DILocation(line: 156, column: 7, scope: !2723)
!2741 = !DILocation(line: 160, column: 7, scope: !2723)
!2742 = !DILocation(line: 167, column: 7, scope: !2723)
!2743 = !DILocation(line: 171, column: 7, scope: !2723)
!2744 = !DILocation(line: 173, column: 1, scope: !2648)
!2745 = distinct !DISubprogram(name: "version_etc_ar", scope: !533, file: !533, line: 180, type: !2746, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !2651, !6, !6, !6, !2700}
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754}
!2749 = !DILocalVariable(name: "stream", arg: 1, scope: !2745, file: !533, line: 180, type: !2651)
!2750 = !DILocalVariable(name: "command_name", arg: 2, scope: !2745, file: !533, line: 181, type: !6)
!2751 = !DILocalVariable(name: "package", arg: 3, scope: !2745, file: !533, line: 181, type: !6)
!2752 = !DILocalVariable(name: "version", arg: 4, scope: !2745, file: !533, line: 182, type: !6)
!2753 = !DILocalVariable(name: "authors", arg: 5, scope: !2745, file: !533, line: 182, type: !2700)
!2754 = !DILocalVariable(name: "n_authors", scope: !2745, file: !533, line: 184, type: !94)
!2755 = !DILocation(line: 180, column: 23, scope: !2745)
!2756 = !DILocation(line: 181, column: 29, scope: !2745)
!2757 = !DILocation(line: 181, column: 55, scope: !2745)
!2758 = !DILocation(line: 182, column: 29, scope: !2745)
!2759 = !DILocation(line: 182, column: 59, scope: !2745)
!2760 = !DILocation(line: 184, column: 10, scope: !2745)
!2761 = !DILocation(line: 186, column: 8, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2745, file: !533, line: 186, column: 3)
!2763 = !DILocation(line: 186, column: 23, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2762, file: !533, line: 186, column: 3)
!2765 = !DILocation(line: 186, column: 3, scope: !2762)
!2766 = !DILocation(line: 186, column: 52, scope: !2764)
!2767 = distinct !{!2767, !2765, !2768}
!2768 = !DILocation(line: 187, column: 5, scope: !2762)
!2769 = !DILocation(line: 188, column: 3, scope: !2745)
!2770 = !DILocation(line: 189, column: 1, scope: !2745)
!2771 = distinct !DISubprogram(name: "version_etc_va", scope: !533, file: !533, line: 196, type: !2772, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !2781)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2651, !6, !6, !6, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !530, line: 189, size: 192, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2775, file: !530, line: 189, baseType: !113, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2775, file: !530, line: 189, baseType: !113, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2775, file: !530, line: 189, baseType: !49, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2775, file: !530, line: 189, baseType: !49, size: 64, offset: 128)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2782 = !DILocalVariable(name: "stream", arg: 1, scope: !2771, file: !533, line: 196, type: !2651)
!2783 = !DILocalVariable(name: "command_name", arg: 2, scope: !2771, file: !533, line: 197, type: !6)
!2784 = !DILocalVariable(name: "package", arg: 3, scope: !2771, file: !533, line: 197, type: !6)
!2785 = !DILocalVariable(name: "version", arg: 4, scope: !2771, file: !533, line: 198, type: !6)
!2786 = !DILocalVariable(name: "authors", arg: 5, scope: !2771, file: !533, line: 198, type: !2774)
!2787 = !DILocalVariable(name: "n_authors", scope: !2771, file: !533, line: 200, type: !94)
!2788 = !DILocalVariable(name: "authtab", scope: !2771, file: !533, line: 201, type: !2789)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2790 = !DILocation(line: 196, column: 23, scope: !2771)
!2791 = !DILocation(line: 197, column: 29, scope: !2771)
!2792 = !DILocation(line: 197, column: 55, scope: !2771)
!2793 = !DILocation(line: 198, column: 29, scope: !2771)
!2794 = !DILocation(line: 198, column: 46, scope: !2771)
!2795 = !DILocation(line: 201, column: 3, scope: !2771)
!2796 = !DILocation(line: 201, column: 15, scope: !2771)
!2797 = !DILocation(line: 200, column: 10, scope: !2771)
!2798 = !DILocation(line: 205, column: 35, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !533, line: 203, column: 3)
!2800 = distinct !DILexicalBlock(scope: !2771, file: !533, line: 203, column: 3)
!2801 = !DILocation(line: 205, column: 14, scope: !2799)
!2802 = !DILocation(line: 205, column: 33, scope: !2799)
!2803 = !DILocation(line: 205, column: 67, scope: !2799)
!2804 = !DILocation(line: 203, column: 3, scope: !2800)
!2805 = !DILocation(line: 208, column: 3, scope: !2771)
!2806 = !DILocation(line: 210, column: 1, scope: !2771)
!2807 = distinct !DISubprogram(name: "version_etc", scope: !533, file: !533, line: 227, type: !2808, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2651, !6, !6, !6, null}
!2810 = !{!2811, !2812, !2813, !2814, !2815}
!2811 = !DILocalVariable(name: "stream", arg: 1, scope: !2807, file: !533, line: 227, type: !2651)
!2812 = !DILocalVariable(name: "command_name", arg: 2, scope: !2807, file: !533, line: 228, type: !6)
!2813 = !DILocalVariable(name: "package", arg: 3, scope: !2807, file: !533, line: 228, type: !6)
!2814 = !DILocalVariable(name: "version", arg: 4, scope: !2807, file: !533, line: 229, type: !6)
!2815 = !DILocalVariable(name: "authors", scope: !2807, file: !533, line: 231, type: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !916, line: 46, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !918, line: 48, baseType: !2818)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !530, line: 231, baseType: !2819)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 192, elements: !927)
!2820 = !DILocation(line: 227, column: 20, scope: !2807)
!2821 = !DILocation(line: 228, column: 26, scope: !2807)
!2822 = !DILocation(line: 228, column: 52, scope: !2807)
!2823 = !DILocation(line: 229, column: 26, scope: !2807)
!2824 = !DILocation(line: 231, column: 3, scope: !2807)
!2825 = !DILocation(line: 231, column: 11, scope: !2807)
!2826 = !DILocation(line: 233, column: 3, scope: !2807)
!2827 = !DILocation(line: 234, column: 3, scope: !2807)
!2828 = !DILocation(line: 235, column: 3, scope: !2807)
!2829 = !DILocation(line: 236, column: 1, scope: !2807)
!2830 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !533, file: !533, line: 239, type: !862, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !4)
!2831 = !DILocation(line: 245, column: 3, scope: !2830)
!2832 = !DILocation(line: 251, column: 3, scope: !2830)
!2833 = !DILocation(line: 256, column: 3, scope: !2830)
!2834 = !DILocation(line: 258, column: 1, scope: !2830)
!2835 = distinct !DISubprogram(name: "xnmalloc", scope: !541, file: !541, line: 105, type: !749, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2836)
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2835, file: !541, line: 105, type: !94)
!2838 = !DILocalVariable(name: "s", arg: 2, scope: !2835, file: !541, line: 105, type: !94)
!2839 = !DILocation(line: 105, column: 18, scope: !2835)
!2840 = !DILocation(line: 105, column: 28, scope: !2835)
!2841 = !DILocation(line: 107, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !541, line: 107, column: 7)
!2843 = !DILocation(line: 107, column: 7, scope: !2835)
!2844 = !DILocation(line: 108, column: 5, scope: !2842)
!2845 = !DILocation(line: 109, column: 21, scope: !2835)
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !2848, line: 39, type: !94)
!2847 = distinct !DISubprogram(name: "xmalloc", scope: !2848, file: !2848, line: 39, type: !2849, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2851)
!2848 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!49, !94}
!2851 = !{!2846, !2852}
!2852 = !DILocalVariable(name: "p", scope: !2847, file: !2848, line: 41, type: !49)
!2853 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 109, column: 10, scope: !2835)
!2855 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !2854)
!2856 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !2854)
!2857 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !2854)
!2858 = distinct !DILexicalBlock(scope: !2847, file: !2848, line: 42, column: 7)
!2859 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !2854)
!2860 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !2854)
!2861 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !2854)
!2862 = !DILocation(line: 109, column: 3, scope: !2835)
!2863 = !DILocation(line: 39, column: 17, scope: !2847)
!2864 = !DILocation(line: 41, column: 13, scope: !2847)
!2865 = !DILocation(line: 41, column: 9, scope: !2847)
!2866 = !DILocation(line: 42, column: 8, scope: !2858)
!2867 = !DILocation(line: 42, column: 15, scope: !2858)
!2868 = !DILocation(line: 42, column: 10, scope: !2858)
!2869 = !DILocation(line: 43, column: 5, scope: !2858)
!2870 = !DILocation(line: 44, column: 3, scope: !2847)
!2871 = distinct !DISubprogram(name: "xnrealloc", scope: !541, file: !541, line: 118, type: !2872, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!49, !49, !94, !94}
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !541, line: 118, type: !49)
!2876 = !DILocalVariable(name: "n", arg: 2, scope: !2871, file: !541, line: 118, type: !94)
!2877 = !DILocalVariable(name: "s", arg: 3, scope: !2871, file: !541, line: 118, type: !94)
!2878 = !DILocation(line: 118, column: 18, scope: !2871)
!2879 = !DILocation(line: 118, column: 28, scope: !2871)
!2880 = !DILocation(line: 118, column: 38, scope: !2871)
!2881 = !DILocation(line: 120, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !541, line: 120, column: 7)
!2883 = !DILocation(line: 120, column: 7, scope: !2871)
!2884 = !DILocation(line: 121, column: 5, scope: !2882)
!2885 = !DILocation(line: 122, column: 25, scope: !2871)
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2887, file: !2848, line: 51, type: !49)
!2887 = distinct !DISubprogram(name: "xrealloc", scope: !2848, file: !2848, line: 51, type: !2888, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!49, !49, !94}
!2890 = !{!2886, !2891}
!2891 = !DILocalVariable(name: "n", arg: 2, scope: !2887, file: !2848, line: 51, type: !94)
!2892 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 122, column: 10, scope: !2871)
!2894 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !2893)
!2895 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !2893)
!2896 = distinct !DILexicalBlock(scope: !2887, file: !2848, line: 53, column: 7)
!2897 = !DILocation(line: 53, column: 13, scope: !2896, inlinedAt: !2893)
!2898 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !2893)
!2899 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !2893)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !2848, line: 54, column: 5)
!2901 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !2893)
!2902 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !2893)
!2903 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !2893)
!2904 = distinct !DILexicalBlock(scope: !2887, file: !2848, line: 62, column: 7)
!2905 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !2893)
!2906 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !2893)
!2907 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !2893)
!2908 = !DILocation(line: 122, column: 3, scope: !2871)
!2909 = !DILocation(line: 51, column: 17, scope: !2887)
!2910 = !DILocation(line: 51, column: 27, scope: !2887)
!2911 = !DILocation(line: 53, column: 8, scope: !2896)
!2912 = !DILocation(line: 53, column: 13, scope: !2896)
!2913 = !DILocation(line: 53, column: 10, scope: !2896)
!2914 = !DILocation(line: 57, column: 7, scope: !2900)
!2915 = !DILocation(line: 58, column: 7, scope: !2900)
!2916 = !DILocation(line: 61, column: 7, scope: !2887)
!2917 = !DILocation(line: 62, column: 8, scope: !2904)
!2918 = !DILocation(line: 62, column: 13, scope: !2904)
!2919 = !DILocation(line: 62, column: 10, scope: !2904)
!2920 = !DILocation(line: 63, column: 5, scope: !2904)
!2921 = !DILocation(line: 65, column: 1, scope: !2887)
!2922 = !DILocation(line: 180, column: 19, scope: !542)
!2923 = !DILocation(line: 180, column: 30, scope: !542)
!2924 = !DILocation(line: 180, column: 41, scope: !542)
!2925 = !DILocation(line: 182, column: 14, scope: !542)
!2926 = !DILocation(line: 182, column: 10, scope: !542)
!2927 = !DILocation(line: 184, column: 9, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !542, file: !541, line: 184, column: 7)
!2929 = !DILocation(line: 184, column: 7, scope: !542)
!2930 = !DILocation(line: 186, column: 13, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !541, line: 186, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !541, line: 185, column: 5)
!2933 = !DILocation(line: 186, column: 11, scope: !2932)
!2934 = !DILocation(line: 194, column: 30, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !541, line: 187, column: 9)
!2936 = !DILocation(line: 195, column: 16, scope: !2935)
!2937 = !DILocation(line: 195, column: 13, scope: !2935)
!2938 = !DILocation(line: 196, column: 9, scope: !2935)
!2939 = !DILocation(line: 204, column: 69, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !541, line: 204, column: 11)
!2941 = distinct !DILexicalBlock(scope: !2928, file: !541, line: 199, column: 5)
!2942 = !DILocation(line: 205, column: 11, scope: !2940)
!2943 = !DILocation(line: 204, column: 11, scope: !2941)
!2944 = !DILocation(line: 206, column: 9, scope: !2940)
!2945 = !DILocation(line: 210, column: 7, scope: !542)
!2946 = !DILocation(line: 211, column: 25, scope: !542)
!2947 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 211, column: 10, scope: !542)
!2949 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !2948)
!2950 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !2948)
!2951 = !DILocation(line: 207, column: 14, scope: !2941)
!2952 = !DILocation(line: 207, column: 18, scope: !2941)
!2953 = !DILocation(line: 207, column: 9, scope: !2941)
!2954 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !2948)
!2955 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !2948)
!2956 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !2948)
!2957 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !2948)
!2958 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !2948)
!2959 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !2948)
!2960 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !2948)
!2961 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !2948)
!2962 = !DILocation(line: 211, column: 3, scope: !542)
!2963 = distinct !DISubprogram(name: "xcharalloc", scope: !541, file: !541, line: 220, type: !1927, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2964)
!2964 = !{!2965}
!2965 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !541, line: 220, type: !94)
!2966 = !DILocation(line: 220, column: 20, scope: !2963)
!2967 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 222, column: 10, scope: !2963)
!2969 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !2968)
!2970 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !2968)
!2971 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !2968)
!2972 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !2968)
!2973 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !2968)
!2974 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !2968)
!2975 = !DILocation(line: 222, column: 3, scope: !2963)
!2976 = distinct !DISubprogram(name: "x2realloc", scope: !2848, file: !2848, line: 74, type: !2977, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!49, !49, !545}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "p", arg: 1, scope: !2976, file: !2848, line: 74, type: !49)
!2981 = !DILocalVariable(name: "pn", arg: 2, scope: !2976, file: !2848, line: 74, type: !545)
!2982 = !DILocation(line: 74, column: 18, scope: !2976)
!2983 = !DILocation(line: 74, column: 29, scope: !2976)
!2984 = !DILocation(line: 180, column: 19, scope: !542, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 76, column: 10, scope: !2976)
!2986 = !DILocation(line: 180, column: 30, scope: !542, inlinedAt: !2985)
!2987 = !DILocation(line: 180, column: 41, scope: !542, inlinedAt: !2985)
!2988 = !DILocation(line: 182, column: 14, scope: !542, inlinedAt: !2985)
!2989 = !DILocation(line: 182, column: 10, scope: !542, inlinedAt: !2985)
!2990 = !DILocation(line: 184, column: 9, scope: !2928, inlinedAt: !2985)
!2991 = !DILocation(line: 184, column: 7, scope: !542, inlinedAt: !2985)
!2992 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !2985)
!2993 = !DILocation(line: 186, column: 11, scope: !2932, inlinedAt: !2985)
!2994 = !DILocation(line: 210, column: 7, scope: !542, inlinedAt: !2985)
!2995 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 211, column: 10, scope: !542, inlinedAt: !2985)
!2997 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !2996)
!2998 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !2996)
!2999 = !DILocation(line: 205, column: 11, scope: !2940, inlinedAt: !2985)
!3000 = !DILocation(line: 204, column: 11, scope: !2941, inlinedAt: !2985)
!3001 = !DILocation(line: 206, column: 9, scope: !2940, inlinedAt: !2985)
!3002 = !DILocation(line: 207, column: 14, scope: !2941, inlinedAt: !2985)
!3003 = !DILocation(line: 207, column: 18, scope: !2941, inlinedAt: !2985)
!3004 = !DILocation(line: 207, column: 9, scope: !2941, inlinedAt: !2985)
!3005 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !2996)
!3006 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !2996)
!3007 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !2996)
!3008 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !2996)
!3009 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !2996)
!3010 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !2996)
!3011 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !2996)
!3012 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !2996)
!3013 = !DILocation(line: 76, column: 3, scope: !2976)
!3014 = distinct !DISubprogram(name: "xzalloc", scope: !2848, file: !2848, line: 84, type: !2849, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3015)
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "s", arg: 1, scope: !3014, file: !2848, line: 84, type: !94)
!3017 = !DILocation(line: 84, column: 17, scope: !3014)
!3018 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 86, column: 18, scope: !3014)
!3020 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3019)
!3021 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3019)
!3022 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3019)
!3023 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3019)
!3024 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3019)
!3025 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3019)
!3026 = !DILocation(line: 86, column: 10, scope: !3014)
!3027 = !DILocation(line: 86, column: 3, scope: !3014)
!3028 = distinct !DISubprogram(name: "xcalloc", scope: !2848, file: !2848, line: 93, type: !749, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3029)
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !2848, line: 93, type: !94)
!3031 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !2848, line: 93, type: !94)
!3032 = !DILocalVariable(name: "p", scope: !3028, file: !2848, line: 95, type: !49)
!3033 = !DILocation(line: 93, column: 17, scope: !3028)
!3034 = !DILocation(line: 93, column: 27, scope: !3028)
!3035 = !DILocation(line: 100, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3028, file: !2848, line: 100, column: 7)
!3037 = !DILocation(line: 101, column: 7, scope: !3036)
!3038 = !DILocation(line: 101, column: 18, scope: !3036)
!3039 = !DILocation(line: 95, column: 9, scope: !3028)
!3040 = !DILocation(line: 101, column: 16, scope: !3036)
!3041 = !DILocation(line: 100, column: 7, scope: !3028)
!3042 = !DILocation(line: 102, column: 5, scope: !3036)
!3043 = !DILocation(line: 103, column: 3, scope: !3028)
!3044 = distinct !DISubprogram(name: "xmemdup", scope: !2848, file: !2848, line: 111, type: !3045, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!49, !828, !94}
!3047 = !{!3048, !3049}
!3048 = !DILocalVariable(name: "p", arg: 1, scope: !3044, file: !2848, line: 111, type: !828)
!3049 = !DILocalVariable(name: "s", arg: 2, scope: !3044, file: !2848, line: 111, type: !94)
!3050 = !DILocation(line: 111, column: 22, scope: !3044)
!3051 = !DILocation(line: 111, column: 32, scope: !3044)
!3052 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 113, column: 18, scope: !3044)
!3054 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3053)
!3055 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3053)
!3056 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3053)
!3057 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3053)
!3058 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3053)
!3059 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3053)
!3060 = !DILocation(line: 113, column: 10, scope: !3044)
!3061 = !DILocation(line: 113, column: 3, scope: !3044)
!3062 = distinct !DISubprogram(name: "xstrdup", scope: !2848, file: !2848, line: 119, type: !2127, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3063)
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "string", arg: 1, scope: !3062, file: !2848, line: 119, type: !6)
!3065 = !DILocation(line: 119, column: 22, scope: !3062)
!3066 = !DILocation(line: 121, column: 27, scope: !3062)
!3067 = !DILocation(line: 121, column: 43, scope: !3062)
!3068 = !DILocation(line: 111, column: 22, scope: !3044, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 121, column: 10, scope: !3062)
!3070 = !DILocation(line: 111, column: 32, scope: !3044, inlinedAt: !3069)
!3071 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 113, column: 18, scope: !3044, inlinedAt: !3069)
!3073 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3072)
!3074 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3072)
!3075 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3072)
!3076 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3072)
!3077 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3072)
!3078 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3072)
!3079 = !DILocation(line: 113, column: 10, scope: !3044, inlinedAt: !3069)
!3080 = !DILocation(line: 121, column: 3, scope: !3062)
!3081 = distinct !DISubprogram(name: "xalloc_die", scope: !3082, file: !3082, line: 32, type: !862, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !554, variables: !4)
!3082 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3083 = !DILocation(line: 34, column: 10, scope: !3081)
!3084 = !DILocation(line: 34, column: 33, scope: !3081)
!3085 = !DILocation(line: 34, column: 3, scope: !3081)
!3086 = !DILocation(line: 40, column: 3, scope: !3081)
!3087 = distinct !DISubprogram(name: "rpl_calloc", scope: !3088, file: !3088, line: 42, type: !749, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3089)
!3088 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3089 = !{!3090, !3091, !3092, !3093}
!3090 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !3088, line: 42, type: !94)
!3091 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !3088, line: 42, type: !94)
!3092 = !DILocalVariable(name: "result", scope: !3087, file: !3088, line: 44, type: !49)
!3093 = !DILocalVariable(name: "bytes", scope: !3094, file: !3088, line: 56, type: !94)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3088, line: 53, column: 5)
!3095 = distinct !DILexicalBlock(scope: !3087, file: !3088, line: 47, column: 7)
!3096 = !DILocation(line: 42, column: 20, scope: !3087)
!3097 = !DILocation(line: 42, column: 30, scope: !3087)
!3098 = !DILocation(line: 47, column: 9, scope: !3095)
!3099 = !DILocation(line: 47, column: 19, scope: !3095)
!3100 = !DILocation(line: 47, column: 14, scope: !3095)
!3101 = !DILocation(line: 56, column: 24, scope: !3094)
!3102 = !DILocation(line: 56, column: 14, scope: !3094)
!3103 = !DILocation(line: 57, column: 17, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3094, file: !3088, line: 57, column: 11)
!3105 = !DILocation(line: 57, column: 21, scope: !3104)
!3106 = !DILocation(line: 57, column: 11, scope: !3094)
!3107 = !DILocation(line: 59, column: 11, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !3088, line: 58, column: 9)
!3109 = !DILocation(line: 59, column: 17, scope: !3108)
!3110 = !DILocation(line: 65, column: 12, scope: !3087)
!3111 = !DILocation(line: 44, column: 9, scope: !3087)
!3112 = !DILocation(line: 72, column: 3, scope: !3087)
!3113 = !DILocation(line: 73, column: 1, scope: !3087)
!3114 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3115, file: !3115, line: 334, type: !3116, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3130)
!3115 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!94, !3118, !6, !94, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1182, line: 6, baseType: !3121)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1184, line: 21, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1184, line: 13, size: 64, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3122, file: !1184, line: 15, baseType: !25, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3122, file: !1184, line: 20, baseType: !3126, size: 32, offset: 32)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3122, file: !1184, line: 16, size: 32, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3126, file: !1184, line: 18, baseType: !113, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3126, file: !1184, line: 19, baseType: !688, size: 32)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3131 = !DILocalVariable(name: "pwc", arg: 1, scope: !3114, file: !3115, line: 334, type: !3118)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !3115, line: 334, type: !6)
!3133 = !DILocalVariable(name: "n", arg: 3, scope: !3114, file: !3115, line: 334, type: !94)
!3134 = !DILocalVariable(name: "ps", arg: 4, scope: !3114, file: !3115, line: 334, type: !3119)
!3135 = !DILocalVariable(name: "ret", scope: !3114, file: !3115, line: 336, type: !94)
!3136 = !DILocalVariable(name: "wc", scope: !3114, file: !3115, line: 337, type: !1195)
!3137 = !DILocalVariable(name: "uc", scope: !3138, file: !3115, line: 398, type: !494)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3115, line: 397, column: 5)
!3139 = distinct !DILexicalBlock(scope: !3114, file: !3115, line: 396, column: 7)
!3140 = !DILocation(line: 334, column: 23, scope: !3114)
!3141 = !DILocation(line: 334, column: 40, scope: !3114)
!3142 = !DILocation(line: 334, column: 50, scope: !3114)
!3143 = !DILocation(line: 334, column: 64, scope: !3114)
!3144 = !DILocation(line: 337, column: 3, scope: !3114)
!3145 = !DILocation(line: 353, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3114, file: !3115, line: 353, column: 7)
!3147 = !DILocation(line: 353, column: 7, scope: !3114)
!3148 = !DILocation(line: 388, column: 9, scope: !3114)
!3149 = !DILocation(line: 336, column: 10, scope: !3114)
!3150 = !DILocation(line: 396, column: 19, scope: !3139)
!3151 = !DILocation(line: 396, column: 31, scope: !3139)
!3152 = !DILocation(line: 396, column: 26, scope: !3139)
!3153 = !DILocation(line: 396, column: 41, scope: !3139)
!3154 = !DILocation(line: 396, column: 7, scope: !3114)
!3155 = !DILocation(line: 398, column: 26, scope: !3138)
!3156 = !DILocation(line: 398, column: 21, scope: !3138)
!3157 = !DILocation(line: 399, column: 14, scope: !3138)
!3158 = !DILocation(line: 399, column: 12, scope: !3138)
!3159 = !DILocation(line: 405, column: 1, scope: !3114)
!3160 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !3161, file: !3161, line: 45, type: !3162, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3188)
!3161 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!50, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !502, line: 146, baseType: !3167)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !676, line: 55, size: 3072, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3180, !3181, !3186, !3187}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3167, file: !676, line: 57, baseType: !679, size: 16)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3167, file: !676, line: 58, baseType: !681, size: 32, offset: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3167, file: !676, line: 59, baseType: !684, size: 256, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3167, file: !676, line: 60, baseType: !688, size: 32, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3167, file: !676, line: 61, baseType: !684, size: 256, offset: 352)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3167, file: !676, line: 62, baseType: !122, size: 2048, offset: 608)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3167, file: !676, line: 63, baseType: !3176, size: 32, offset: 2656)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !676, line: 42, size: 32, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3176, file: !676, line: 45, baseType: !679, size: 16)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3176, file: !676, line: 46, baseType: !679, size: 16, offset: 16)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3167, file: !676, line: 70, baseType: !699, size: 32, offset: 2688)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !3167, file: !676, line: 75, baseType: !3182, size: 64, offset: 2720)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !676, line: 71, size: 64, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3182, file: !676, line: 73, baseType: !699, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3182, file: !676, line: 74, baseType: !699, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !3167, file: !676, line: 80, baseType: !706, size: 128, offset: 2784)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3167, file: !676, line: 81, baseType: !708, size: 160, offset: 2912)
!3188 = !{!3189, !3190, !3191}
!3189 = !DILocalVariable(name: "ut", arg: 1, scope: !3160, file: !3161, line: 45, type: !3164)
!3190 = !DILocalVariable(name: "p", scope: !3160, file: !3161, line: 47, type: !50)
!3191 = !DILocalVariable(name: "trimmed_name", scope: !3160, file: !3161, line: 47, type: !50)
!3192 = !DILocation(line: 45, column: 42, scope: !3160)
!3193 = !DILocation(line: 49, column: 18, scope: !3160)
!3194 = !DILocation(line: 47, column: 13, scope: !3160)
!3195 = !DILocation(line: 50, column: 26, scope: !3160)
!3196 = !DILocalVariable(name: "__dest", arg: 1, scope: !3197, file: !3198, line: 103, type: !3201)
!3197 = distinct !DISubprogram(name: "strncpy", scope: !3198, file: !3198, line: 103, type: !3199, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3203)
!3198 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!50, !3201, !3202, !94}
!3201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3203 = !{!3196, !3204, !3205}
!3204 = !DILocalVariable(name: "__src", arg: 2, scope: !3197, file: !3198, line: 103, type: !3202)
!3205 = !DILocalVariable(name: "__len", arg: 3, scope: !3197, file: !3198, line: 103, type: !94)
!3206 = !DILocation(line: 103, column: 1, scope: !3197, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 50, column: 3, scope: !3160)
!3208 = !DILocation(line: 106, column: 57, scope: !3197, inlinedAt: !3207)
!3209 = !DILocation(line: 106, column: 10, scope: !3197, inlinedAt: !3207)
!3210 = !DILocation(line: 54, column: 3, scope: !3160)
!3211 = !DILocation(line: 54, column: 39, scope: !3160)
!3212 = !DILocation(line: 55, column: 27, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3160, file: !3161, line: 55, column: 3)
!3214 = !DILocation(line: 47, column: 9, scope: !3160)
!3215 = !DILocation(line: 56, column: 21, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3161, line: 55, column: 3)
!3217 = !DILocation(line: 56, column: 25, scope: !3216)
!3218 = !DILocation(line: 55, column: 25, scope: !3213)
!3219 = !DILocation(line: 56, column: 28, scope: !3216)
!3220 = !DILocation(line: 56, column: 34, scope: !3216)
!3221 = !DILocation(line: 55, column: 3, scope: !3213)
!3222 = !DILocation(line: 57, column: 13, scope: !3216)
!3223 = distinct !{!3223, !3221, !3224}
!3224 = !DILocation(line: 58, column: 5, scope: !3213)
!3225 = !DILocation(line: 59, column: 3, scope: !3160)
!3226 = distinct !DISubprogram(name: "read_utmp", scope: !3161, file: !3161, line: 88, type: !3227, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3231)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!25, !6, !545, !3229, !25}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3232 = !DILocalVariable(name: "file", arg: 1, scope: !3226, file: !3161, line: 88, type: !6)
!3233 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3226, file: !3161, line: 88, type: !545)
!3234 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3226, file: !3161, line: 88, type: !3229)
!3235 = !DILocalVariable(name: "options", arg: 4, scope: !3226, file: !3161, line: 89, type: !25)
!3236 = !DILocalVariable(name: "n_read", scope: !3226, file: !3161, line: 91, type: !94)
!3237 = !DILocalVariable(name: "n_alloc", scope: !3226, file: !3161, line: 92, type: !94)
!3238 = !DILocalVariable(name: "utmp", scope: !3226, file: !3161, line: 93, type: !3230)
!3239 = !DILocalVariable(name: "u", scope: !3226, file: !3161, line: 94, type: !3230)
!3240 = !DILocation(line: 88, column: 24, scope: !3226)
!3241 = !DILocation(line: 88, column: 38, scope: !3226)
!3242 = !DILocation(line: 88, column: 63, scope: !3226)
!3243 = !DILocation(line: 89, column: 16, scope: !3226)
!3244 = !DILocation(line: 91, column: 10, scope: !3226)
!3245 = !DILocation(line: 92, column: 10, scope: !3226)
!3246 = !DILocation(line: 93, column: 16, scope: !3226)
!3247 = !DILocation(line: 100, column: 3, scope: !3226)
!3248 = !DILocation(line: 102, column: 3, scope: !3226)
!3249 = !DILocation(line: 104, column: 15, scope: !3226)
!3250 = !DILocation(line: 94, column: 16, scope: !3226)
!3251 = !DILocation(line: 104, column: 32, scope: !3226)
!3252 = !DILocation(line: 104, column: 3, scope: !3226)
!3253 = !DILocalVariable(name: "u", arg: 1, scope: !3254, file: !3161, line: 65, type: !3164)
!3254 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !3161, file: !3161, line: 65, type: !3255, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!17, !3164, !25}
!3257 = !{!3253, !3258, !3259}
!3258 = !DILocalVariable(name: "options", arg: 2, scope: !3254, file: !3161, line: 65, type: !25)
!3259 = !DILocalVariable(name: "user_proc", scope: !3254, file: !3161, line: 67, type: !17)
!3260 = !DILocation(line: 65, column: 42, scope: !3254, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 105, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3226, file: !3161, line: 105, column: 9)
!3263 = !DILocation(line: 65, column: 49, scope: !3254, inlinedAt: !3261)
!3264 = !DILocation(line: 67, column: 20, scope: !3254, inlinedAt: !3261)
!3265 = !DILocation(line: 68, column: 42, scope: !3266, inlinedAt: !3261)
!3266 = distinct !DILexicalBlock(scope: !3254, file: !3161, line: 68, column: 7)
!3267 = !DILocation(line: 71, column: 7, scope: !3268, inlinedAt: !3261)
!3268 = distinct !DILexicalBlock(scope: !3254, file: !3161, line: 70, column: 7)
!3269 = !DILocation(line: 72, column: 14, scope: !3268, inlinedAt: !3261)
!3270 = !{!774, !648, i64 4}
!3271 = !DILocation(line: 72, column: 12, scope: !3268, inlinedAt: !3261)
!3272 = !DILocation(line: 73, column: 7, scope: !3268, inlinedAt: !3261)
!3273 = !DILocation(line: 73, column: 11, scope: !3268, inlinedAt: !3261)
!3274 = !DILocation(line: 73, column: 32, scope: !3268, inlinedAt: !3261)
!3275 = !DILocation(line: 73, column: 36, scope: !3268, inlinedAt: !3261)
!3276 = !DILocation(line: 73, column: 39, scope: !3268, inlinedAt: !3261)
!3277 = !DILocation(line: 73, column: 45, scope: !3268, inlinedAt: !3261)
!3278 = !DILocation(line: 70, column: 7, scope: !3254, inlinedAt: !3261)
!3279 = !DILocation(line: 107, column: 20, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3161, line: 107, column: 13)
!3281 = distinct !DILexicalBlock(scope: !3262, file: !3161, line: 106, column: 7)
!3282 = !DILocation(line: 107, column: 13, scope: !3281)
!3283 = !DILocation(line: 180, column: 19, scope: !565, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 108, column: 18, scope: !3280)
!3285 = !DILocation(line: 180, column: 41, scope: !565, inlinedAt: !3284)
!3286 = !DILocation(line: 182, column: 10, scope: !565, inlinedAt: !3284)
!3287 = !DILocation(line: 184, column: 9, scope: !3288, inlinedAt: !3284)
!3288 = distinct !DILexicalBlock(scope: !565, file: !541, line: 184, column: 7)
!3289 = !DILocation(line: 184, column: 7, scope: !565, inlinedAt: !3284)
!3290 = !DILocation(line: 186, column: 13, scope: !3291, inlinedAt: !3284)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !541, line: 186, column: 11)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !541, line: 185, column: 5)
!3293 = !DILocation(line: 186, column: 11, scope: !3292, inlinedAt: !3284)
!3294 = !DILocation(line: 205, column: 11, scope: !3295, inlinedAt: !3284)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !541, line: 204, column: 11)
!3296 = distinct !DILexicalBlock(scope: !3288, file: !541, line: 199, column: 5)
!3297 = !DILocation(line: 204, column: 11, scope: !3296, inlinedAt: !3284)
!3298 = !DILocation(line: 206, column: 9, scope: !3295, inlinedAt: !3284)
!3299 = !DILocation(line: 207, column: 14, scope: !3296, inlinedAt: !3284)
!3300 = !DILocation(line: 207, column: 18, scope: !3296, inlinedAt: !3284)
!3301 = !DILocation(line: 207, column: 9, scope: !3296, inlinedAt: !3284)
!3302 = !DILocation(line: 211, column: 25, scope: !565, inlinedAt: !3284)
!3303 = !DILocation(line: 211, column: 10, scope: !565, inlinedAt: !3284)
!3304 = !DILocation(line: 108, column: 18, scope: !3280)
!3305 = !DILocation(line: 108, column: 11, scope: !3280)
!3306 = !DILocation(line: 110, column: 20, scope: !3281)
!3307 = !DILocation(line: 110, column: 9, scope: !3281)
!3308 = !DILocation(line: 110, column: 26, scope: !3281)
!3309 = !{i64 0, i64 2, !1428, i64 4, i64 4, !647, i64 8, i64 32, !772, i64 40, i64 4, !772, i64 44, i64 32, !772, i64 76, i64 256, !772, i64 332, i64 2, !1428, i64 334, i64 2, !1428, i64 336, i64 4, !647, i64 340, i64 4, !647, i64 344, i64 4, !647, i64 348, i64 16, !772, i64 364, i64 20, !772}
!3310 = !DILocation(line: 111, column: 7, scope: !3281)
!3311 = distinct !{!3311, !3252, !3312}
!3312 = !DILocation(line: 111, column: 7, scope: !3226)
!3313 = !DILocation(line: 113, column: 3, scope: !3226)
!3314 = !DILocation(line: 115, column: 14, scope: !3226)
!3315 = !DILocation(line: 116, column: 13, scope: !3226)
!3316 = !DILocation(line: 118, column: 3, scope: !3226)
!3317 = distinct !DISubprogram(name: "close_stream", scope: !3318, file: !3318, line: 56, type: !3319, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3361)
!3318 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!25, !3321}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3323, file: !2655, line: 242, baseType: !25, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3323, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3323, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3323, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3323, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3323, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3323, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3323, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3323, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3323, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3323, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3323, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3323, file: !2655, line: 260, baseType: !3338, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !3340)
!3340 = !{!3341, !3342, !3344}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3339, file: !2655, line: 157, baseType: !3338, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3339, file: !2655, line: 158, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3339, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3323, file: !2655, line: 262, baseType: !3343, size: 64, offset: 832)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3323, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3323, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3323, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3323, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3323, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3323, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3323, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3323, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3323, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3323, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3323, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3323, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3323, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3323, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3323, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!3361 = !{!3362, !3363, !3365, !3366}
!3362 = !DILocalVariable(name: "stream", arg: 1, scope: !3317, file: !3318, line: 56, type: !3321)
!3363 = !DILocalVariable(name: "some_pending", scope: !3317, file: !3318, line: 58, type: !3364)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3365 = !DILocalVariable(name: "prev_fail", scope: !3317, file: !3318, line: 59, type: !3364)
!3366 = !DILocalVariable(name: "fclose_fail", scope: !3317, file: !3318, line: 60, type: !3364)
!3367 = !DILocation(line: 56, column: 21, scope: !3317)
!3368 = !DILocation(line: 58, column: 30, scope: !3317)
!3369 = !DILocalVariable(name: "__stream", arg: 1, scope: !3370, file: !795, line: 132, type: !3321)
!3370 = distinct !DISubprogram(name: "ferror_unlocked", scope: !795, file: !795, line: 132, type: !3319, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3371)
!3371 = !{!3369}
!3372 = !DILocation(line: 132, column: 1, scope: !3370, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 59, column: 27, scope: !3317)
!3374 = !DILocation(line: 134, column: 10, scope: !3370, inlinedAt: !3373)
!3375 = !{!803, !648, i64 0}
!3376 = !DILocation(line: 59, column: 43, scope: !3317)
!3377 = !DILocation(line: 60, column: 29, scope: !3317)
!3378 = !DILocation(line: 60, column: 45, scope: !3317)
!3379 = !DILocation(line: 70, column: 17, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3317, file: !3318, line: 70, column: 7)
!3381 = !DILocation(line: 58, column: 50, scope: !3317)
!3382 = !DILocation(line: 70, column: 33, scope: !3380)
!3383 = !DILocation(line: 70, column: 53, scope: !3380)
!3384 = !DILocation(line: 70, column: 59, scope: !3380)
!3385 = !DILocation(line: 70, column: 7, scope: !3317)
!3386 = !DILocation(line: 72, column: 11, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3380, file: !3318, line: 71, column: 5)
!3388 = !DILocation(line: 73, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3387, file: !3318, line: 72, column: 11)
!3390 = !DILocation(line: 73, column: 15, scope: !3389)
!3391 = !DILocation(line: 78, column: 1, scope: !3317)
!3392 = distinct !DISubprogram(name: "hard_locale", scope: !3393, file: !3393, line: 38, type: !3394, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3396)
!3393 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!17, !25}
!3396 = !{!3397, !3398, !3399}
!3397 = !DILocalVariable(name: "category", arg: 1, scope: !3392, file: !3393, line: 38, type: !25)
!3398 = !DILocalVariable(name: "hard", scope: !3392, file: !3393, line: 40, type: !17)
!3399 = !DILocalVariable(name: "p", scope: !3392, file: !3393, line: 41, type: !6)
!3400 = !DILocation(line: 38, column: 18, scope: !3392)
!3401 = !DILocation(line: 40, column: 8, scope: !3392)
!3402 = !DILocation(line: 41, column: 19, scope: !3392)
!3403 = !DILocation(line: 41, column: 15, scope: !3392)
!3404 = !DILocation(line: 43, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3392, file: !3393, line: 43, column: 7)
!3406 = !DILocation(line: 43, column: 7, scope: !3392)
!3407 = !DILocation(line: 47, column: 15, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !3393, line: 47, column: 15)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3393, line: 46, column: 9)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3393, line: 45, column: 11)
!3411 = distinct !DILexicalBlock(scope: !3405, file: !3393, line: 44, column: 5)
!3412 = !DILocation(line: 47, column: 31, scope: !3408)
!3413 = !DILocation(line: 47, column: 36, scope: !3408)
!3414 = !DILocation(line: 47, column: 39, scope: !3408)
!3415 = !DILocation(line: 47, column: 59, scope: !3408)
!3416 = !DILocation(line: 47, column: 15, scope: !3409)
!3417 = !DILocation(line: 48, column: 13, scope: !3408)
!3418 = !DILocation(line: 71, column: 3, scope: !3392)
!3419 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3420, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!6}
!3422 = !{!3423, !3424}
!3423 = !DILocalVariable(name: "codeset", scope: !3419, file: !496, line: 395, type: !6)
!3424 = !DILocalVariable(name: "aliases", scope: !3419, file: !496, line: 396, type: !6)
!3425 = !DILocalVariable(name: "buf1", scope: !3426, file: !496, line: 196, type: !3493)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !496, line: 194, column: 21)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !496, line: 193, column: 19)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !496, line: 193, column: 19)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !496, line: 188, column: 17)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !496, line: 181, column: 19)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !496, line: 177, column: 13)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !496, line: 173, column: 15)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !496, line: 161, column: 9)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !496, line: 157, column: 11)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !496, line: 130, column: 5)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !496, line: 129, column: 7)
!3437 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3420, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3445, !3446, !3447, !3448, !3489, !3490, !3491, !3425, !3492, !3496, !3497, !3498}
!3439 = !DILocalVariable(name: "cp", scope: !3437, file: !496, line: 126, type: !6)
!3440 = !DILocalVariable(name: "dir", scope: !3435, file: !496, line: 132, type: !6)
!3441 = !DILocalVariable(name: "base", scope: !3435, file: !496, line: 133, type: !6)
!3442 = !DILocalVariable(name: "file_name", scope: !3435, file: !496, line: 134, type: !50)
!3443 = !DILocalVariable(name: "dir_len", scope: !3444, file: !496, line: 144, type: !94)
!3444 = distinct !DILexicalBlock(scope: !3435, file: !496, line: 143, column: 7)
!3445 = !DILocalVariable(name: "base_len", scope: !3444, file: !496, line: 145, type: !94)
!3446 = !DILocalVariable(name: "add_slash", scope: !3444, file: !496, line: 146, type: !25)
!3447 = !DILocalVariable(name: "fd", scope: !3433, file: !496, line: 162, type: !25)
!3448 = !DILocalVariable(name: "fp", scope: !3431, file: !496, line: 178, type: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3451, file: !2655, line: 242, baseType: !25, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3451, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3451, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3451, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3451, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3451, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3451, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3451, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3451, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3451, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3451, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3451, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3451, file: !2655, line: 260, baseType: !3466, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !3468)
!3468 = !{!3469, !3470, !3472}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3467, file: !2655, line: 157, baseType: !3466, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3467, file: !2655, line: 158, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3467, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3451, file: !2655, line: 262, baseType: !3471, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3451, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3451, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3451, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3451, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3451, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3451, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3451, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3451, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3451, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3451, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3451, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3451, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3451, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3451, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3451, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!3489 = !DILocalVariable(name: "res_ptr", scope: !3429, file: !496, line: 190, type: !50)
!3490 = !DILocalVariable(name: "res_size", scope: !3429, file: !496, line: 191, type: !94)
!3491 = !DILocalVariable(name: "c", scope: !3426, file: !496, line: 195, type: !25)
!3492 = !DILocalVariable(name: "buf2", scope: !3426, file: !496, line: 197, type: !3493)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3494)
!3494 = !{!3495}
!3495 = !DISubrange(count: 51)
!3496 = !DILocalVariable(name: "l1", scope: !3426, file: !496, line: 198, type: !94)
!3497 = !DILocalVariable(name: "l2", scope: !3426, file: !496, line: 198, type: !94)
!3498 = !DILocalVariable(name: "old_res_ptr", scope: !3426, file: !496, line: 199, type: !50)
!3499 = !DILocation(line: 196, column: 28, scope: !3426, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 589, column: 18, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3419, file: !496, line: 589, column: 3)
!3502 = !DILocation(line: 197, column: 28, scope: !3426, inlinedAt: !3500)
!3503 = !DILocation(line: 403, column: 13, scope: !3419)
!3504 = !DILocation(line: 395, column: 15, scope: !3419)
!3505 = !DILocation(line: 584, column: 15, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3419, file: !496, line: 584, column: 7)
!3507 = !DILocation(line: 584, column: 7, scope: !3419)
!3508 = !DILocation(line: 128, column: 8, scope: !3437, inlinedAt: !3500)
!3509 = !DILocation(line: 126, column: 15, scope: !3437, inlinedAt: !3500)
!3510 = !DILocation(line: 129, column: 10, scope: !3436, inlinedAt: !3500)
!3511 = !DILocation(line: 129, column: 7, scope: !3437, inlinedAt: !3500)
!3512 = !DILocation(line: 138, column: 13, scope: !3435, inlinedAt: !3500)
!3513 = !DILocation(line: 132, column: 19, scope: !3435, inlinedAt: !3500)
!3514 = !DILocation(line: 139, column: 15, scope: !3515, inlinedAt: !3500)
!3515 = distinct !DILexicalBlock(scope: !3435, file: !496, line: 139, column: 11)
!3516 = !DILocation(line: 139, column: 23, scope: !3515, inlinedAt: !3500)
!3517 = !DILocation(line: 139, column: 26, scope: !3515, inlinedAt: !3500)
!3518 = !DILocation(line: 139, column: 33, scope: !3515, inlinedAt: !3500)
!3519 = !DILocation(line: 139, column: 11, scope: !3435, inlinedAt: !3500)
!3520 = !DILocation(line: 140, column: 9, scope: !3515, inlinedAt: !3500)
!3521 = !DILocation(line: 144, column: 26, scope: !3444, inlinedAt: !3500)
!3522 = !DILocation(line: 144, column: 16, scope: !3444, inlinedAt: !3500)
!3523 = !DILocation(line: 145, column: 16, scope: !3444, inlinedAt: !3500)
!3524 = !DILocation(line: 146, column: 34, scope: !3444, inlinedAt: !3500)
!3525 = !DILocation(line: 146, column: 38, scope: !3444, inlinedAt: !3500)
!3526 = !DILocation(line: 146, column: 42, scope: !3444, inlinedAt: !3500)
!3527 = !DILocation(line: 147, column: 48, scope: !3444, inlinedAt: !3500)
!3528 = !DILocation(line: 147, column: 46, scope: !3444, inlinedAt: !3500)
!3529 = !DILocation(line: 147, column: 69, scope: !3444, inlinedAt: !3500)
!3530 = !DILocation(line: 147, column: 30, scope: !3444, inlinedAt: !3500)
!3531 = !DILocation(line: 134, column: 13, scope: !3435, inlinedAt: !3500)
!3532 = !DILocation(line: 148, column: 13, scope: !3444, inlinedAt: !3500)
!3533 = !DILocation(line: 150, column: 13, scope: !3534, inlinedAt: !3500)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !496, line: 149, column: 11)
!3535 = distinct !DILexicalBlock(scope: !3444, file: !496, line: 148, column: 13)
!3536 = !DILocation(line: 151, column: 17, scope: !3534, inlinedAt: !3500)
!3537 = !DILocation(line: 152, column: 34, scope: !3538, inlinedAt: !3500)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !496, line: 151, column: 17)
!3539 = !DILocation(line: 153, column: 41, scope: !3534, inlinedAt: !3500)
!3540 = !DILocation(line: 153, column: 13, scope: !3534, inlinedAt: !3500)
!3541 = !DILocation(line: 157, column: 11, scope: !3435, inlinedAt: !3500)
!3542 = !DILocation(line: 171, column: 16, scope: !3433, inlinedAt: !3500)
!3543 = !DILocation(line: 162, column: 15, scope: !3433, inlinedAt: !3500)
!3544 = !DILocation(line: 173, column: 18, scope: !3432, inlinedAt: !3500)
!3545 = !DILocation(line: 173, column: 15, scope: !3433, inlinedAt: !3500)
!3546 = !DILocation(line: 180, column: 20, scope: !3431, inlinedAt: !3500)
!3547 = !DILocation(line: 178, column: 21, scope: !3431, inlinedAt: !3500)
!3548 = !DILocation(line: 181, column: 22, scope: !3430, inlinedAt: !3500)
!3549 = !DILocation(line: 181, column: 19, scope: !3431, inlinedAt: !3500)
!3550 = !DILocation(line: 184, column: 19, scope: !3551, inlinedAt: !3500)
!3551 = distinct !DILexicalBlock(scope: !3430, file: !496, line: 182, column: 17)
!3552 = !DILocation(line: 186, column: 17, scope: !3551, inlinedAt: !3500)
!3553 = !DILocation(line: 190, column: 25, scope: !3429, inlinedAt: !3500)
!3554 = !DILocation(line: 191, column: 26, scope: !3429, inlinedAt: !3500)
!3555 = !DILocation(line: 193, column: 19, scope: !3429, inlinedAt: !3500)
!3556 = !DILocation(line: 196, column: 23, scope: !3426, inlinedAt: !3500)
!3557 = !DILocation(line: 197, column: 23, scope: !3426, inlinedAt: !3500)
!3558 = !DILocalVariable(name: "__fp", arg: 1, scope: !3559, file: !795, line: 63, type: !3449)
!3559 = distinct !DISubprogram(name: "getc_unlocked", scope: !795, file: !795, line: 63, type: !3560, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3562)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!25, !3449}
!3562 = !{!3558}
!3563 = !DILocation(line: 63, column: 22, scope: !3559, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 201, column: 27, scope: !3426, inlinedAt: !3500)
!3565 = !DILocation(line: 65, column: 10, scope: !3559, inlinedAt: !3564)
!3566 = !{!803, !601, i64 8}
!3567 = !{!803, !601, i64 16}
!3568 = !DILocation(line: 195, column: 27, scope: !3426, inlinedAt: !3500)
!3569 = !DILocation(line: 202, column: 27, scope: !3426, inlinedAt: !3500)
!3570 = distinct !{!3570, !3571, !3574}
!3571 = !DILocation(line: 209, column: 27, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !496, line: 207, column: 25)
!3573 = distinct !DILexicalBlock(scope: !3426, file: !496, line: 206, column: 27)
!3574 = !DILocation(line: 211, column: 58, scope: !3572)
!3575 = !DILocation(line: 65, column: 10, scope: !3559, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 210, column: 33, scope: !3572, inlinedAt: !3500)
!3577 = !DILocation(line: 63, column: 22, scope: !3559, inlinedAt: !3576)
!3578 = !DILocation(line: 210, column: 29, scope: !3572, inlinedAt: !3500)
!3579 = distinct !{!3579, !3580, !3581}
!3580 = !DILocation(line: 193, column: 19, scope: !3428)
!3581 = !DILocation(line: 241, column: 21, scope: !3428)
!3582 = !DILocation(line: 216, column: 23, scope: !3426, inlinedAt: !3500)
!3583 = !DILocation(line: 217, column: 27, scope: !3584, inlinedAt: !3500)
!3584 = distinct !DILexicalBlock(scope: !3426, file: !496, line: 217, column: 27)
!3585 = !DILocation(line: 217, column: 64, scope: !3584, inlinedAt: !3500)
!3586 = !DILocation(line: 217, column: 27, scope: !3426, inlinedAt: !3500)
!3587 = !DILocation(line: 219, column: 28, scope: !3426, inlinedAt: !3500)
!3588 = !DILocation(line: 198, column: 30, scope: !3426, inlinedAt: !3500)
!3589 = !DILocation(line: 220, column: 28, scope: !3426, inlinedAt: !3500)
!3590 = !DILocation(line: 198, column: 34, scope: !3426, inlinedAt: !3500)
!3591 = !DILocation(line: 199, column: 29, scope: !3426, inlinedAt: !3500)
!3592 = !DILocation(line: 222, column: 36, scope: !3593, inlinedAt: !3500)
!3593 = distinct !DILexicalBlock(scope: !3426, file: !496, line: 222, column: 27)
!3594 = !DILocation(line: 222, column: 27, scope: !3426, inlinedAt: !3500)
!3595 = !DILocation(line: 225, column: 63, scope: !3596, inlinedAt: !3500)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !496, line: 223, column: 25)
!3597 = !DILocation(line: 225, column: 46, scope: !3596, inlinedAt: !3500)
!3598 = !DILocation(line: 226, column: 25, scope: !3596, inlinedAt: !3500)
!3599 = !DILocation(line: 229, column: 36, scope: !3600, inlinedAt: !3500)
!3600 = distinct !DILexicalBlock(scope: !3593, file: !496, line: 228, column: 25)
!3601 = !DILocation(line: 230, column: 73, scope: !3600, inlinedAt: !3500)
!3602 = !DILocation(line: 230, column: 46, scope: !3600, inlinedAt: !3500)
!3603 = !DILocation(line: 232, column: 35, scope: !3604, inlinedAt: !3500)
!3604 = distinct !DILexicalBlock(scope: !3426, file: !496, line: 232, column: 27)
!3605 = !DILocation(line: 232, column: 27, scope: !3426, inlinedAt: !3500)
!3606 = !DILocation(line: 236, column: 27, scope: !3607, inlinedAt: !3500)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !496, line: 233, column: 25)
!3608 = !DILocation(line: 237, column: 27, scope: !3607, inlinedAt: !3500)
!3609 = !DILocation(line: 241, column: 21, scope: !3427, inlinedAt: !3500)
!3610 = !DILocation(line: 239, column: 39, scope: !3426, inlinedAt: !3500)
!3611 = !DILocation(line: 239, column: 50, scope: !3426, inlinedAt: !3500)
!3612 = !DILocation(line: 239, column: 61, scope: !3426, inlinedAt: !3500)
!3613 = !DILocalVariable(name: "__dest", arg: 1, scope: !3614, file: !3198, line: 88, type: !3201)
!3614 = distinct !DISubprogram(name: "strcpy", scope: !3198, file: !3198, line: 88, type: !3615, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!50, !3201, !3202}
!3617 = !{!3613, !3618}
!3618 = !DILocalVariable(name: "__src", arg: 2, scope: !3614, file: !3198, line: 88, type: !3202)
!3619 = !DILocation(line: 88, column: 1, scope: !3614, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 239, column: 23, scope: !3426, inlinedAt: !3500)
!3621 = !DILocation(line: 90, column: 49, scope: !3614, inlinedAt: !3620)
!3622 = !DILocation(line: 90, column: 10, scope: !3614, inlinedAt: !3620)
!3623 = !DILocation(line: 88, column: 1, scope: !3614, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 240, column: 23, scope: !3426, inlinedAt: !3500)
!3625 = !DILocation(line: 90, column: 49, scope: !3614, inlinedAt: !3624)
!3626 = !DILocation(line: 90, column: 10, scope: !3614, inlinedAt: !3624)
!3627 = !DILocation(line: 193, column: 19, scope: !3427, inlinedAt: !3500)
!3628 = !DILocation(line: 242, column: 19, scope: !3429, inlinedAt: !3500)
!3629 = !DILocation(line: 243, column: 32, scope: !3630, inlinedAt: !3500)
!3630 = distinct !DILexicalBlock(scope: !3429, file: !496, line: 243, column: 23)
!3631 = !DILocation(line: 243, column: 23, scope: !3429, inlinedAt: !3500)
!3632 = !DILocation(line: 247, column: 33, scope: !3633, inlinedAt: !3500)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !496, line: 246, column: 21)
!3634 = !DILocation(line: 247, column: 45, scope: !3633, inlinedAt: !3500)
!3635 = !DILocation(line: 253, column: 11, scope: !3433, inlinedAt: !3500)
!3636 = !DILocation(line: 377, column: 23, scope: !3435, inlinedAt: !3500)
!3637 = !DILocation(line: 378, column: 5, scope: !3435, inlinedAt: !3500)
!3638 = !DILocation(line: 396, column: 15, scope: !3419)
!3639 = !DILocation(line: 590, column: 8, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3501, file: !496, line: 589, column: 3)
!3641 = !DILocation(line: 590, column: 17, scope: !3640)
!3642 = !DILocation(line: 589, column: 3, scope: !3501)
!3643 = !DILocation(line: 592, column: 9, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3640, file: !496, line: 592, column: 9)
!3645 = !DILocation(line: 592, column: 35, scope: !3644)
!3646 = !DILocation(line: 593, column: 9, scope: !3644)
!3647 = !DILocation(line: 593, column: 24, scope: !3644)
!3648 = !DILocation(line: 593, column: 31, scope: !3644)
!3649 = !DILocation(line: 593, column: 34, scope: !3644)
!3650 = !DILocation(line: 593, column: 45, scope: !3644)
!3651 = !DILocation(line: 592, column: 9, scope: !3640)
!3652 = !DILocation(line: 595, column: 29, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3644, file: !496, line: 594, column: 7)
!3654 = !DILocation(line: 595, column: 27, scope: !3653)
!3655 = !DILocation(line: 595, column: 46, scope: !3653)
!3656 = !DILocation(line: 596, column: 9, scope: !3653)
!3657 = !DILocation(line: 591, column: 19, scope: !3640)
!3658 = !DILocation(line: 591, column: 36, scope: !3640)
!3659 = !DILocation(line: 591, column: 16, scope: !3640)
!3660 = !DILocation(line: 591, column: 52, scope: !3640)
!3661 = !DILocation(line: 591, column: 69, scope: !3640)
!3662 = !DILocation(line: 591, column: 49, scope: !3640)
!3663 = distinct !{!3663, !3642, !3664}
!3664 = !DILocation(line: 597, column: 7, scope: !3501)
!3665 = !DILocation(line: 602, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3419, file: !496, line: 602, column: 7)
!3667 = !DILocation(line: 602, column: 18, scope: !3666)
!3668 = !DILocation(line: 602, column: 7, scope: !3419)
!3669 = !DILocation(line: 612, column: 3, scope: !3419)
!3670 = distinct !DISubprogram(name: "rpl_fclose", scope: !3671, file: !3671, line: 56, type: !3672, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3714)
!3671 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!25, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3676, file: !2655, line: 242, baseType: !25, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3676, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3676, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3676, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3676, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3676, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3676, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3676, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3676, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3676, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3676, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3676, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3676, file: !2655, line: 260, baseType: !3691, size: 64, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !3693)
!3693 = !{!3694, !3695, !3697}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3692, file: !2655, line: 157, baseType: !3691, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3692, file: !2655, line: 158, baseType: !3696, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3692, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3676, file: !2655, line: 262, baseType: !3696, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3676, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3676, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3676, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3676, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3676, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3676, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3676, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3676, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3676, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3676, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3676, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3676, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3676, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3676, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3676, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DILocalVariable(name: "fp", arg: 1, scope: !3670, file: !3671, line: 56, type: !3674)
!3716 = !DILocalVariable(name: "saved_errno", scope: !3670, file: !3671, line: 58, type: !25)
!3717 = !DILocalVariable(name: "fd", scope: !3670, file: !3671, line: 59, type: !25)
!3718 = !DILocalVariable(name: "result", scope: !3670, file: !3671, line: 60, type: !25)
!3719 = !DILocation(line: 56, column: 19, scope: !3670)
!3720 = !DILocation(line: 58, column: 7, scope: !3670)
!3721 = !DILocation(line: 60, column: 7, scope: !3670)
!3722 = !DILocation(line: 63, column: 8, scope: !3670)
!3723 = !DILocation(line: 59, column: 7, scope: !3670)
!3724 = !DILocation(line: 64, column: 10, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3670, file: !3671, line: 64, column: 7)
!3726 = !DILocation(line: 64, column: 7, scope: !3670)
!3727 = !DILocation(line: 65, column: 12, scope: !3725)
!3728 = !DILocation(line: 65, column: 5, scope: !3725)
!3729 = !DILocation(line: 70, column: 9, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3670, file: !3671, line: 70, column: 7)
!3731 = !DILocation(line: 70, column: 23, scope: !3730)
!3732 = !DILocation(line: 70, column: 33, scope: !3730)
!3733 = !DILocation(line: 70, column: 26, scope: !3730)
!3734 = !DILocation(line: 70, column: 59, scope: !3730)
!3735 = !DILocation(line: 71, column: 7, scope: !3730)
!3736 = !DILocation(line: 71, column: 10, scope: !3730)
!3737 = !DILocation(line: 70, column: 7, scope: !3670)
!3738 = !DILocation(line: 98, column: 12, scope: !3670)
!3739 = !DILocation(line: 103, column: 7, scope: !3670)
!3740 = !DILocation(line: 72, column: 19, scope: !3730)
!3741 = !DILocation(line: 103, column: 19, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3670, file: !3671, line: 103, column: 7)
!3743 = !DILocation(line: 105, column: 13, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3742, file: !3671, line: 104, column: 5)
!3745 = !DILocation(line: 107, column: 5, scope: !3744)
!3746 = !DILocation(line: 110, column: 1, scope: !3670)
!3747 = distinct !DISubprogram(name: "rpl_fflush", scope: !3748, file: !3748, line: 127, type: !3749, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3791)
!3748 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!25, !3751}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3753, file: !2655, line: 242, baseType: !25, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3753, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3753, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3753, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3753, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3753, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3753, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3753, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3753, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3753, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3753, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3753, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3753, file: !2655, line: 260, baseType: !3768, size: 64, offset: 768)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !3770)
!3770 = !{!3771, !3772, !3774}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3769, file: !2655, line: 157, baseType: !3768, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3769, file: !2655, line: 158, baseType: !3773, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3769, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3753, file: !2655, line: 262, baseType: !3773, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3753, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3753, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3753, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3753, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3753, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3753, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3753, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3753, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3753, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3753, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3753, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3753, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3753, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3753, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3753, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "stream", arg: 1, scope: !3747, file: !3748, line: 127, type: !3751)
!3793 = !DILocation(line: 127, column: 19, scope: !3747)
!3794 = !DILocation(line: 148, column: 14, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3747, file: !3748, line: 148, column: 7)
!3796 = !DILocation(line: 148, column: 22, scope: !3795)
!3797 = !DILocation(line: 148, column: 27, scope: !3795)
!3798 = !DILocation(line: 148, column: 7, scope: !3747)
!3799 = !DILocation(line: 149, column: 12, scope: !3795)
!3800 = !DILocation(line: 149, column: 5, scope: !3795)
!3801 = !DILocalVariable(name: "fp", arg: 1, scope: !3802, file: !3748, line: 40, type: !3751)
!3802 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3748, file: !3748, line: 40, type: !3803, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3751}
!3805 = !{!3801}
!3806 = !DILocation(line: 40, column: 48, scope: !3802, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 153, column: 3, scope: !3747)
!3808 = !DILocation(line: 42, column: 11, scope: !3809, inlinedAt: !3807)
!3809 = distinct !DILexicalBlock(scope: !3802, file: !3748, line: 42, column: 7)
!3810 = !DILocation(line: 42, column: 18, scope: !3809, inlinedAt: !3807)
!3811 = !DILocation(line: 42, column: 7, scope: !3802, inlinedAt: !3807)
!3812 = !DILocation(line: 44, column: 5, scope: !3809, inlinedAt: !3807)
!3813 = !DILocation(line: 155, column: 10, scope: !3747)
!3814 = !DILocation(line: 155, column: 3, scope: !3747)
!3815 = !DILocation(line: 229, column: 1, scope: !3747)
!3816 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3817, file: !3817, line: 28, type: !3818, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3861)
!3817 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!25, !3820, !3860, !25}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2653, line: 7, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2655, line: 241, size: 1728, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3822, file: !2655, line: 242, baseType: !25, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3822, file: !2655, line: 247, baseType: !50, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3822, file: !2655, line: 248, baseType: !50, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3822, file: !2655, line: 249, baseType: !50, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3822, file: !2655, line: 250, baseType: !50, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3822, file: !2655, line: 251, baseType: !50, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3822, file: !2655, line: 252, baseType: !50, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3822, file: !2655, line: 253, baseType: !50, size: 64, offset: 448)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3822, file: !2655, line: 254, baseType: !50, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3822, file: !2655, line: 256, baseType: !50, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3822, file: !2655, line: 257, baseType: !50, size: 64, offset: 640)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3822, file: !2655, line: 258, baseType: !50, size: 64, offset: 704)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3822, file: !2655, line: 260, baseType: !3837, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2655, line: 156, size: 192, elements: !3839)
!3839 = !{!3840, !3841, !3843}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3838, file: !2655, line: 157, baseType: !3837, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3838, file: !2655, line: 158, baseType: !3842, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3838, file: !2655, line: 162, baseType: !25, size: 32, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3822, file: !2655, line: 262, baseType: !3842, size: 64, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3822, file: !2655, line: 264, baseType: !25, size: 32, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3822, file: !2655, line: 268, baseType: !25, size: 32, offset: 928)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3822, file: !2655, line: 270, baseType: !2681, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3822, file: !2655, line: 274, baseType: !93, size: 16, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3822, file: !2655, line: 275, baseType: !2685, size: 8, offset: 1040)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3822, file: !2655, line: 276, baseType: !2687, size: 8, offset: 1048)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3822, file: !2655, line: 280, baseType: !2689, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3822, file: !2655, line: 289, baseType: !2692, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3822, file: !2655, line: 297, baseType: !49, size: 64, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3822, file: !2655, line: 298, baseType: !49, size: 64, offset: 1280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3822, file: !2655, line: 299, baseType: !49, size: 64, offset: 1344)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3822, file: !2655, line: 300, baseType: !49, size: 64, offset: 1408)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3822, file: !2655, line: 302, baseType: !94, size: 64, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3822, file: !2655, line: 303, baseType: !25, size: 32, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3822, file: !2655, line: 305, baseType: !708, size: 160, offset: 1568)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !916, line: 57, baseType: !2681)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DILocalVariable(name: "fp", arg: 1, scope: !3816, file: !3817, line: 28, type: !3820)
!3863 = !DILocalVariable(name: "offset", arg: 2, scope: !3816, file: !3817, line: 28, type: !3860)
!3864 = !DILocalVariable(name: "whence", arg: 3, scope: !3816, file: !3817, line: 28, type: !25)
!3865 = !DILocalVariable(name: "pos", scope: !3866, file: !3817, line: 116, type: !3860)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3817, line: 112, column: 5)
!3867 = distinct !DILexicalBlock(scope: !3816, file: !3817, line: 51, column: 7)
!3868 = !DILocation(line: 28, column: 15, scope: !3816)
!3869 = !DILocation(line: 28, column: 25, scope: !3816)
!3870 = !DILocation(line: 28, column: 37, scope: !3816)
!3871 = !DILocation(line: 51, column: 11, scope: !3867)
!3872 = !DILocation(line: 51, column: 31, scope: !3867)
!3873 = !DILocation(line: 51, column: 24, scope: !3867)
!3874 = !DILocation(line: 52, column: 7, scope: !3867)
!3875 = !DILocation(line: 52, column: 14, scope: !3867)
!3876 = !DILocation(line: 52, column: 35, scope: !3867)
!3877 = !{!803, !601, i64 32}
!3878 = !DILocation(line: 52, column: 28, scope: !3867)
!3879 = !DILocation(line: 53, column: 7, scope: !3867)
!3880 = !DILocation(line: 53, column: 14, scope: !3867)
!3881 = !{!803, !601, i64 72}
!3882 = !DILocation(line: 53, column: 28, scope: !3867)
!3883 = !DILocation(line: 51, column: 7, scope: !3816)
!3884 = !DILocation(line: 116, column: 26, scope: !3866)
!3885 = !DILocation(line: 116, column: 19, scope: !3866)
!3886 = !DILocation(line: 116, column: 13, scope: !3866)
!3887 = !DILocation(line: 117, column: 15, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3866, file: !3817, line: 117, column: 11)
!3889 = !DILocation(line: 117, column: 11, scope: !3866)
!3890 = !DILocation(line: 127, column: 11, scope: !3866)
!3891 = !DILocation(line: 127, column: 18, scope: !3866)
!3892 = !DILocation(line: 128, column: 11, scope: !3866)
!3893 = !DILocation(line: 128, column: 19, scope: !3866)
!3894 = !{!803, !724, i64 144}
!3895 = !DILocation(line: 159, column: 7, scope: !3866)
!3896 = !DILocation(line: 161, column: 10, scope: !3816)
!3897 = !DILocation(line: 161, column: 3, scope: !3816)
!3898 = !DILocation(line: 162, column: 1, scope: !3816)
