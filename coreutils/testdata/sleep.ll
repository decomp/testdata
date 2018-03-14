; ModuleID = 'coreutils-8.27/src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [383 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\0A'm' for minutes, 'h' for hours or 'd' for days.  Unlike most implementations\0Athat require NUMBER be an integer, here NUMBER may be an arbitrary floating\0Apoint number.  Given two or more arguments, pause for the amount of time\0Aspecified by the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !9
@.str.17 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !42
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !47
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !51
@opterr = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.30, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.31, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !58
@.str.1.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !76
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !84
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !128
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !135
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !148
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !155
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !162
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !150
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !164
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.76 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.77 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !170
@.str.1.88 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !179
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !624 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !628, metadata !629), !dbg !630
  %2 = icmp eq i32 %0, 0, !dbg !631
  br i1 %2, label %8, label %3, !dbg !633

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !634
  %6 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !634
  br label %33, !dbg !634

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !640
  %10 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !640
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !642
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !642
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !643
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !643
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !540, metadata !629) #10, !dbg !644
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !540, metadata !629) #10, !dbg !644
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !646
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !646
  %20 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !548, metadata !629) #10, !dbg !648
  %21 = icmp eq i8* %20, null, !dbg !649
  br i1 %21, label %28, label %22, !dbg !651

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @strncmp(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #15, !dbg !652
  %24 = icmp eq i32 %23, 0, !dbg !652
  br i1 %24, label %28, label %25, !dbg !653

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !654
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !654
  br label %28, !dbg !656

; <label>:28:                                     ; preds = %8, %22, %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !657
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !657
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !658
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !658
  br label %33

; <label>:33:                                     ; preds = %28, %3
  tail call void @exit(i32 %0) #16, !dbg !659
  unreachable, !dbg !659
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !660 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !665, metadata !629), !dbg !676
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !666, metadata !629), !dbg !677
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !668, metadata !629), !dbg !678
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !670, metadata !629), !dbg !679
  %5 = load i8*, i8** %1, align 8, !dbg !680, !tbaa !636
  tail call void @set_program_name(i8* %5) #10, !dbg !681
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !682
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !683
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !684
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !685
  %10 = load i8*, i8** @Version, align 8, !dbg !686, !tbaa !636
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !687
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !688
  %12 = icmp eq i32 %11, -1, !dbg !690
  br i1 %12, label %14, label %13, !dbg !691

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #17, !dbg !692
  unreachable, !dbg !692

; <label>:14:                                     ; preds = %2
  %15 = icmp eq i32 %0, 1, !dbg !693
  br i1 %15, label %16, label %18, !dbg !695

; <label>:16:                                     ; preds = %14
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !696
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17) #10, !dbg !698
  tail call void @usage(i32 1) #17, !dbg !699
  unreachable, !dbg !699

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* @optind, align 4, !dbg !700, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !667, metadata !629), !dbg !703
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !670, metadata !629), !dbg !679
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !668, metadata !629), !dbg !678
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !667, metadata !629), !dbg !703
  %20 = icmp slt i32 %19, %0, !dbg !704
  br i1 %20, label %21, label %75, !dbg !705

; <label>:21:                                     ; preds = %18
  %22 = bitcast double* %3 to i8*
  %23 = bitcast i8** %4 to i8*
  %24 = sext i32 %19 to i64, !dbg !705
  br label %25, !dbg !705

; <label>:25:                                     ; preds = %64, %21
  %26 = phi i64 [ %24, %21 ], [ %68, %64 ]
  %27 = phi i8 [ 1, %21 ], [ %66, %64 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %67, %64 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !667, metadata !629), !dbg !703
  call void @llvm.dbg.value(metadata double %28, i64 0, metadata !668, metadata !629), !dbg !678
  call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !670, metadata !629), !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #10, !dbg !706
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #10, !dbg !707
  %29 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !708
  %30 = load i8*, i8** %29, align 8, !dbg !708, !tbaa !636
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !671, metadata !629), !dbg !710
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !675, metadata !629), !dbg !711
  %31 = call zeroext i1 @xstrtod(i8* %30, i8** nonnull %4, double* nonnull %3, double (i8*, i8**)* nonnull @c_strtod) #10, !dbg !712
  br i1 %31, label %39, label %32, !dbg !713

; <label>:32:                                     ; preds = %25
  %33 = tail call i32* @__errno_location() #18, !dbg !714
  %34 = load i32, i32* %33, align 4, !dbg !714, !tbaa !701
  %35 = icmp eq i32 %34, 34, !dbg !715
  %36 = load double, double* %3, align 8, !dbg !716
  call void @llvm.dbg.value(metadata double %36, i64 0, metadata !671, metadata !629), !dbg !710
  %37 = fcmp oge double %36, 0.000000e+00, !dbg !717
  %38 = and i1 %35, %37, !dbg !718
  br i1 %38, label %42, label %59, !dbg !718

; <label>:39:                                     ; preds = %25
  %40 = load double, double* %3, align 8, !dbg !716, !tbaa !719
  call void @llvm.dbg.value(metadata double %40, i64 0, metadata !671, metadata !629), !dbg !710
  %41 = fcmp ult double %40, 0.000000e+00, !dbg !717
  br i1 %41, label %59, label %42, !dbg !721

; <label>:42:                                     ; preds = %39, %32
  %43 = phi double [ %40, %39 ], [ %36, %32 ]
  %44 = load i8*, i8** %4, align 8, !dbg !722, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !675, metadata !629), !dbg !711
  %45 = load i8, i8* %44, align 1, !dbg !723, !tbaa !724
  %46 = icmp eq i8 %45, 0, !dbg !723
  br i1 %46, label %51, label %47, !dbg !725

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !726
  %49 = load i8, i8* %48, align 1, !dbg !727, !tbaa !724
  %50 = icmp eq i8 %49, 0, !dbg !727
  br i1 %50, label %51, label %59, !dbg !728

; <label>:51:                                     ; preds = %47, %42
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !675, metadata !629), !dbg !711
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !671, metadata !629), !dbg !710
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !729, metadata !629), !dbg !737
  tail call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !735, metadata !629), !dbg !739
  %52 = sext i8 %45 to i32, !dbg !740
  switch i32 %52, label %59 [
    i32 0, label %56
    i32 115, label %56
    i32 109, label %53
    i32 104, label %54
    i32 100, label %55
  ], !dbg !741

; <label>:53:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 60, i64 0, metadata !736, metadata !629), !dbg !742
  br label %56, !dbg !743

; <label>:54:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 3600, i64 0, metadata !736, metadata !629), !dbg !742
  br label %56, !dbg !745

; <label>:55:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 86400, i64 0, metadata !736, metadata !629), !dbg !742
  br label %56, !dbg !746

; <label>:56:                                     ; preds = %51, %51, %53, %54, %55
  %57 = phi double [ 8.640000e+04, %55 ], [ 3.600000e+03, %54 ], [ 6.000000e+01, %53 ], [ 1.000000e+00, %51 ], [ 1.000000e+00, %51 ]
  %58 = fmul double %57, %43, !dbg !747
  store double %58, double* %3, align 8, !dbg !747, !tbaa !719
  br label %64, !dbg !748

; <label>:59:                                     ; preds = %51, %39, %47, %32
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !749
  %61 = load i8*, i8** %29, align 8, !dbg !751, !tbaa !636
  %62 = call i8* @quote(i8* %61) #10, !dbg !752
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i8* %62) #10, !dbg !753
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !670, metadata !629), !dbg !679
  %63 = load double, double* %3, align 8, !dbg !754, !tbaa !719
  br label %64, !dbg !755

; <label>:64:                                     ; preds = %56, %59
  %65 = phi double [ %63, %59 ], [ %58, %56 ], !dbg !754
  %66 = phi i8 [ 0, %59 ], [ %27, %56 ]
  call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !670, metadata !629), !dbg !679
  call void @llvm.dbg.value(metadata double %65, i64 0, metadata !671, metadata !629), !dbg !710
  %67 = fadd double %28, %65, !dbg !756
  call void @llvm.dbg.value(metadata double %67, i64 0, metadata !668, metadata !629), !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #10, !dbg !757
  %68 = add nsw i64 %26, 1, !dbg !758
  call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !670, metadata !629), !dbg !679
  call void @llvm.dbg.value(metadata double %67, i64 0, metadata !668, metadata !629), !dbg !678
  %69 = trunc i64 %68 to i32, !dbg !704
  %70 = icmp eq i32 %69, %0, !dbg !704
  br i1 %70, label %71, label %25, !dbg !705, !llvm.loop !759

; <label>:71:                                     ; preds = %64
  %72 = and i8 %66, 1, !dbg !761
  %73 = icmp eq i8 %72, 0, !dbg !761
  br i1 %73, label %74, label %75, !dbg !763

; <label>:74:                                     ; preds = %71
  call void @usage(i32 1) #17, !dbg !764
  unreachable, !dbg !764

; <label>:75:                                     ; preds = %18, %71
  %76 = phi double [ %67, %71 ], [ 0.000000e+00, %18 ]
  %77 = call i32 @xnanosleep(double %76) #10, !dbg !765
  %78 = icmp eq i32 %77, 0, !dbg !765
  br i1 %78, label %83, label %79, !dbg !767

; <label>:79:                                     ; preds = %75
  %80 = tail call i32* @__errno_location() #18, !dbg !768
  %81 = load i32, i32* %80, align 4, !dbg !768, !tbaa !701
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !768
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %81, i8* %82) #10, !dbg !768
  unreachable, !dbg !768

; <label>:83:                                     ; preds = %75
  ret i32 0, !dbg !769
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define double @c_strtod(i8*, i8**) #6 !dbg !770 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !774, metadata !629), !dbg !778
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !775, metadata !629), !dbg !779
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !780, !tbaa !636
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !780
  br i1 %4, label %5, label %7, !dbg !786

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct.__locale_struct* null) #10, !dbg !787
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !788, !tbaa !636
  br label %7, !dbg !789

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !790, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !777, metadata !629), !dbg !791
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !792
  br i1 %9, label %10, label %13, !dbg !794

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !795
  br i1 %11, label %15, label %12, !dbg !798

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !799, !tbaa !636
  br label %15, !dbg !800

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #10, !dbg !801
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !776, metadata !629), !dbg !802
  br label %15, !dbg !803

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16, !dbg !804
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !805 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !807, metadata !629), !dbg !808
  store i8* %0, i8** @file_name, align 8, !dbg !809, !tbaa !636
  ret void, !dbg !810
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !811 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !815, metadata !629), !dbg !816
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !817, !tbaa !818
  ret void, !dbg !820
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !821 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !828, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !829
  %3 = icmp eq i32 %2, 0, !dbg !830
  br i1 %3, label %21, label %4, !dbg !831

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !832, !tbaa !818, !range !833
  %6 = icmp eq i8 %5, 0, !dbg !832
  %7 = tail call i32* @__errno_location() #18, !dbg !834
  br i1 %6, label %11, label %8, !dbg !836

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !837, !tbaa !701
  %10 = icmp eq i32 %9, 32, !dbg !838
  br i1 %10, label %21, label %11, !dbg !839

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !840
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !825, metadata !629), !dbg !841
  %13 = load i8*, i8** @file_name, align 8, !dbg !842, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !842
  %15 = load i32, i32* %7, align 4, !tbaa !701
  br i1 %14, label %18, label %16, !dbg !843

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !844
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !845
  br label %19, !dbg !845

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #10, !dbg !846
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !847, !tbaa !701
  tail call void @_exit(i32 %20) #16, !dbg !848
  unreachable, !dbg !848

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849, !tbaa !636
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !851
  %24 = icmp eq i32 %23, 0, !dbg !852
  br i1 %24, label %27, label %25, !dbg !853

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !854, !tbaa !701
  tail call void @_exit(i32 %26) #16, !dbg !855
  unreachable, !dbg !855

; <label>:27:                                     ; preds = %21
  ret void, !dbg !856
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !857 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !862, metadata !629), !dbg !889
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !863, metadata !629), !dbg !890
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !864, metadata !629), !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !865, metadata !629), !dbg !892
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !866, metadata !629), !dbg !893
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !867, metadata !629), !dbg !894
  %8 = load i32, i32* @opterr, align 4, !dbg !895, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !869, metadata !629), !dbg !896
  store i32 0, i32* @opterr, align 4, !dbg !897, !tbaa !701
  %9 = icmp eq i32 %0, 2, !dbg !898
  br i1 %9, label %10, label %17, !dbg !899

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !868, metadata !629), !dbg !901
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !902

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !903
  br label %17, !dbg !904

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !905
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !905
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !870, metadata !629), !dbg !906
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !907
  call void @llvm.va_start(i8* nonnull %14), !dbg !907
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !908, !tbaa !636
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !909
  call void @exit(i32 0) #16, !dbg !910
  unreachable, !dbg !910

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !911, !tbaa !701
  store i32 0, i32* @optind, align 4, !dbg !912, !tbaa !701
  ret void, !dbg !913
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !916, metadata !629), !dbg !919
  %2 = icmp eq i8* %0, null, !dbg !920
  br i1 %2, label %3, label %6, !dbg !922

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !923, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !925
  tail call void @abort() #16, !dbg !926
  unreachable, !dbg !926

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !927
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !917, metadata !629), !dbg !928
  %8 = icmp eq i8* %7, null, !dbg !929
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !930
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !918, metadata !629), !dbg !932
  %11 = ptrtoint i8* %10 to i64, !dbg !933
  %12 = ptrtoint i8* %0 to i64, !dbg !933
  %13 = sub i64 %11, %12, !dbg !933
  %14 = icmp sgt i64 %13, 6, !dbg !935
  br i1 %14, label %15, label %24, !dbg !936

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !937
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #15, !dbg !938
  %18 = icmp eq i32 %17, 0, !dbg !939
  br i1 %18, label %19, label %24, !dbg !940

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !916, metadata !629), !dbg !919
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #15, !dbg !941
  %21 = icmp eq i32 %20, 0, !dbg !944
  br i1 %21, label %22, label %24, !dbg !945

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !946
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !916, metadata !629), !dbg !919
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !948, !tbaa !636
  br label %24, !dbg !949

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !916, metadata !629), !dbg !919
  store i8* %25, i8** @program_name, align 8, !dbg !950, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !951, !tbaa !636
  ret void, !dbg !952
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !953 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !958, metadata !629), !dbg !961
  %2 = tail call i32* @__errno_location() #18, !dbg !962
  %3 = load i32, i32* %2, align 4, !dbg !962, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !959, metadata !629), !dbg !963
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !964
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !964
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !964
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !965
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !960, metadata !629), !dbg !966
  store i32 %3, i32* %2, align 4, !dbg !967, !tbaa !701
  ret %struct.quoting_options* %8, !dbg !968
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !969 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !975, metadata !629), !dbg !976
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !977
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !977
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !978
  %5 = load i32, i32* %4, align 8, !dbg !978, !tbaa !979
  ret i32 %5, !dbg !981
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !982 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !986, metadata !629), !dbg !988
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !987, metadata !629), !dbg !989
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !990
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !990
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !991
  store i32 %1, i32* %5, align 8, !dbg !992, !tbaa !979
  ret void, !dbg !993
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !994 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !998, metadata !629), !dbg !1006
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !629), !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1000, metadata !629), !dbg !1008
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1001, metadata !629), !dbg !1009
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1010
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1010
  %6 = lshr i8 %1, 5, !dbg !1011
  %7 = zext i8 %6 to i64, !dbg !1011
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1012
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1002, metadata !629), !dbg !1013
  %9 = and i8 %1, 31, !dbg !1014
  %10 = zext i8 %9 to i32, !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1004, metadata !629), !dbg !1016
  %11 = load i32, i32* %8, align 4, !dbg !1017, !tbaa !701
  %12 = lshr i32 %11, %10, !dbg !1018
  %13 = and i32 %12, 1, !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1005, metadata !629), !dbg !1020
  %14 = and i32 %2, 1, !dbg !1021
  %15 = xor i32 %13, %14, !dbg !1022
  %16 = shl i32 %15, %10, !dbg !1023
  %17 = xor i32 %16, %11, !dbg !1024
  store i32 %17, i32* %8, align 4, !dbg !1024, !tbaa !701
  ret i32 %13, !dbg !1025
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1026 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1030, metadata !629), !dbg !1033
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1031, metadata !629), !dbg !1034
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1030, metadata !629), !dbg !1033
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1030, metadata !629), !dbg !1033
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1038
  %6 = load i32, i32* %5, align 4, !dbg !1038, !tbaa !1039
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1032, metadata !629), !dbg !1040
  store i32 %1, i32* %5, align 4, !dbg !1041, !tbaa !1039
  ret i32 %6, !dbg !1042
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1043 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1047, metadata !629), !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1048, metadata !629), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1049, metadata !629), !dbg !1052
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1047, metadata !629), !dbg !1050
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1055
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1047, metadata !629), !dbg !1050
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1056
  store i32 10, i32* %6, align 8, !dbg !1057, !tbaa !979
  %7 = icmp ne i8* %1, null, !dbg !1058
  %8 = icmp ne i8* %2, null, !dbg !1060
  %9 = and i1 %7, %8, !dbg !1061
  br i1 %9, label %11, label %10, !dbg !1061

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1062
  unreachable, !dbg !1062

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1063
  store i8* %1, i8** %12, align 8, !dbg !1064, !tbaa !1065
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1066
  store i8* %2, i8** %13, align 8, !dbg !1067, !tbaa !1068
  ret void, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1070 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1074, metadata !629), !dbg !1082
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1075, metadata !629), !dbg !1083
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1076, metadata !629), !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1077, metadata !629), !dbg !1085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1078, metadata !629), !dbg !1086
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1087
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1079, metadata !629), !dbg !1088
  %8 = tail call i32* @__errno_location() #18, !dbg !1089
  %9 = load i32, i32* %8, align 4, !dbg !1089, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1080, metadata !629), !dbg !1090
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1091
  %11 = load i32, i32* %10, align 8, !dbg !1091, !tbaa !979
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1092
  %13 = load i32, i32* %12, align 4, !dbg !1092, !tbaa !1039
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1093
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1094
  %16 = load i8*, i8** %15, align 8, !dbg !1094, !tbaa !1065
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1095
  %18 = load i8*, i8** %17, align 8, !dbg !1095, !tbaa !1068
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1096
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1081, metadata !629), !dbg !1097
  store i32 %9, i32* %8, align 4, !dbg !1098, !tbaa !701
  ret i64 %19, !dbg !1099
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1100 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1106, metadata !629), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1107, metadata !629), !dbg !1171
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1108, metadata !629), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1109, metadata !629), !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1110, metadata !629), !dbg !1174
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1111, metadata !629), !dbg !1175
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1112, metadata !629), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1113, metadata !629), !dbg !1177
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1114, metadata !629), !dbg !1178
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1117, metadata !629), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1118, metadata !629), !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1119, metadata !629), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1120, metadata !629), !dbg !1183
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1184
  %14 = icmp eq i64 %13, 1, !dbg !1185
  %15 = lshr i32 %5, 1, !dbg !1186
  %16 = trunc i32 %15 to i8, !dbg !1186
  %17 = and i8 %16, 1, !dbg !1186
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1122, metadata !629), !dbg !1186
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1124, metadata !629), !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !629), !dbg !1189
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1190

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1125, metadata !629), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1120, metadata !629), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1119, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1114, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1113, metadata !629), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1110, metadata !629), !dbg !1174
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
  ], !dbg !1191

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1174
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1174
  br label %94, !dbg !1192

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1110, metadata !629), !dbg !1174
  %43 = and i8 %36, 1, !dbg !1194
  %44 = icmp eq i8 %43, 0, !dbg !1194
  br i1 %44, label %45, label %94, !dbg !1192

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1196
  br i1 %46, label %94, label %47, !dbg !1199

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1196, !tbaa !724
  br label %94, !dbg !1196

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1113, metadata !629), !dbg !1177
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1114, metadata !629), !dbg !1178
  br label %51, !dbg !1205

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1114, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1113, metadata !629), !dbg !1177
  %54 = and i8 %36, 1, !dbg !1206
  %55 = icmp eq i8 %54, 0, !dbg !1206
  br i1 %55, label %56, label %72, !dbg !1208

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1179
  %57 = load i8, i8* %52, align 1, !dbg !1209, !tbaa !724
  %58 = icmp eq i8 %57, 0, !dbg !1212
  br i1 %58, label %72, label %59, !dbg !1212

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1213

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1118, metadata !629), !dbg !1181
  %64 = icmp ult i64 %63, %40, !dbg !1213
  br i1 %64, label %65, label %67, !dbg !1216

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1213
  store i8 %61, i8* %66, align 1, !dbg !1213, !tbaa !724
  br label %67, !dbg !1213

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1116, metadata !629), !dbg !1179
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1116, metadata !629), !dbg !1179
  %70 = load i8, i8* %69, align 1, !dbg !1209, !tbaa !724
  %71 = icmp eq i8 %70, 0, !dbg !1212
  br i1 %71, label %72, label %60, !dbg !1212, !llvm.loop !1218

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1118, metadata !629), !dbg !1181
  %74 = call i64 @strlen(i8* %53) #15, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1119, metadata !629), !dbg !1182
  br label %94, !dbg !1221

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1183
  br label %76, !dbg !1222

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1120, metadata !629), !dbg !1183
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !629), !dbg !1186
  br label %78, !dbg !1223

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1120, metadata !629), !dbg !1183
  %81 = and i8 %80, 1, !dbg !1224
  %82 = icmp eq i8 %81, 0, !dbg !1224
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !629), !dbg !1183
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1226
  br label %84, !dbg !1226

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1120, metadata !629), !dbg !1183
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1110, metadata !629), !dbg !1174
  %87 = and i8 %86, 1, !dbg !1227
  %88 = icmp eq i8 %87, 0, !dbg !1227
  br i1 %88, label %89, label %94, !dbg !1229

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1230
  br i1 %90, label %94, label %91, !dbg !1233

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1230, !tbaa !724
  br label %94, !dbg !1230

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !629), !dbg !1186
  br label %94, !dbg !1234

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !1235
  unreachable, !dbg !1235

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1122, metadata !629), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1120, metadata !629), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1119, metadata !629), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1114, metadata !629), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1113, metadata !629), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1110, metadata !629), !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1115, metadata !629), !dbg !1236
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
  br label %122, !dbg !1237

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1125, metadata !629), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1115, metadata !629), !dbg !1236
  %131 = icmp eq i64 %126, -1, !dbg !1238
  br i1 %131, label %134, label %132, !dbg !1239

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1240
  br i1 %133, label %590, label %138, !dbg !1241

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1242
  %136 = load i8, i8* %135, align 1, !dbg !1242, !tbaa !724
  %137 = icmp eq i8 %136, 0, !dbg !1243
  br i1 %137, label %590, label %138, !dbg !1241

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !629), !dbg !1244
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1133, metadata !629), !dbg !1246
  br i1 %108, label %139, label %154, !dbg !1247

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1249
  %141 = and i1 %109, %131, !dbg !1250
  br i1 %141, label %142, label %144, !dbg !1250

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1109, metadata !629), !dbg !1173
  br label %144, !dbg !1252

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1109, metadata !629), !dbg !1173
  %146 = icmp ugt i64 %140, %145, !dbg !1253
  br i1 %146, label %154, label %147, !dbg !1254

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1255
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !1256
  %150 = icmp ne i32 %149, 0, !dbg !1257
  %151 = or i1 %150, %111, !dbg !1258
  %152 = xor i1 %150, true, !dbg !1258
  %153 = zext i1 %152 to i8, !dbg !1258
  br i1 %151, label %154, label %635, !dbg !1258

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1131, metadata !629), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1109, metadata !629), !dbg !1173
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1259
  %158 = load i8, i8* %157, align 1, !dbg !1259, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1126, metadata !629), !dbg !1260
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
  ], !dbg !1261

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1262

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1263

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1245
  %162 = and i8 %127, 1, !dbg !1267
  %163 = icmp eq i8 %162, 0, !dbg !1267
  %164 = and i1 %113, %163, !dbg !1267
  br i1 %164, label %165, label %181, !dbg !1267

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1269
  br i1 %166, label %167, label %169, !dbg !1273

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1269
  store i8 39, i8* %168, align 1, !dbg !1269, !tbaa !724
  br label %169, !dbg !1269

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1116, metadata !629), !dbg !1179
  %171 = icmp ult i64 %170, %130, !dbg !1274
  br i1 %171, label %172, label %174, !dbg !1277

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1274
  store i8 36, i8* %173, align 1, !dbg !1274, !tbaa !724
  br label %174, !dbg !1274

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1116, metadata !629), !dbg !1179
  %176 = icmp ult i64 %175, %130, !dbg !1278
  br i1 %176, label %177, label %179, !dbg !1281

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1278
  store i8 39, i8* %178, align 1, !dbg !1278, !tbaa !724
  br label %179, !dbg !1278

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %181, !dbg !1282

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1116, metadata !629), !dbg !1179
  %184 = icmp ult i64 %182, %130, !dbg !1283
  br i1 %184, label %185, label %187, !dbg !1286

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1283
  store i8 92, i8* %186, align 1, !dbg !1283, !tbaa !724
  br label %187, !dbg !1283

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1116, metadata !629), !dbg !1179
  br i1 %105, label %189, label %470, !dbg !1287

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1289
  %191 = icmp ult i64 %190, %155, !dbg !1290
  br i1 %191, label %192, label %470, !dbg !1291

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1292
  %194 = load i8, i8* %193, align 1, !dbg !1292, !tbaa !724
  %195 = add i8 %194, -48, !dbg !1293
  %196 = icmp ult i8 %195, 10, !dbg !1293
  br i1 %196, label %197, label %470, !dbg !1293

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1294
  br i1 %198, label %199, label %201, !dbg !1298

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1294
  store i8 48, i8* %200, align 1, !dbg !1294, !tbaa !724
  br label %201, !dbg !1294

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1116, metadata !629), !dbg !1179
  %203 = icmp ult i64 %202, %130, !dbg !1299
  br i1 %203, label %204, label %206, !dbg !1302

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1299
  store i8 48, i8* %205, align 1, !dbg !1299, !tbaa !724
  br label %206, !dbg !1299

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1116, metadata !629), !dbg !1179
  br label %470, !dbg !1303

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1304

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1305

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1306

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1308

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1310
  %214 = icmp ult i64 %213, %155, !dbg !1311
  br i1 %214, label %215, label %470, !dbg !1312

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1313
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1314
  %218 = load i8, i8* %217, align 1, !dbg !1314, !tbaa !724
  %219 = icmp eq i8 %218, 63, !dbg !1315
  br i1 %219, label %220, label %470, !dbg !1316

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1317
  %222 = load i8, i8* %221, align 1, !dbg !1317, !tbaa !724
  %223 = sext i8 %222 to i32, !dbg !1317
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
  ], !dbg !1318

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1319

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1115, metadata !629), !dbg !1236
  %226 = icmp ult i64 %124, %130, !dbg !1321
  br i1 %226, label %227, label %229, !dbg !1324

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1321
  store i8 63, i8* %228, align 1, !dbg !1321, !tbaa !724
  br label %229, !dbg !1321

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1116, metadata !629), !dbg !1179
  %231 = icmp ult i64 %230, %130, !dbg !1325
  br i1 %231, label %232, label %234, !dbg !1328

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1325
  store i8 34, i8* %233, align 1, !dbg !1325, !tbaa !724
  br label %234, !dbg !1325

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1116, metadata !629), !dbg !1179
  %236 = icmp ult i64 %235, %130, !dbg !1329
  br i1 %236, label %237, label %239, !dbg !1332

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1329
  store i8 34, i8* %238, align 1, !dbg !1329, !tbaa !724
  br label %239, !dbg !1329

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1116, metadata !629), !dbg !1179
  %241 = icmp ult i64 %240, %130, !dbg !1333
  br i1 %241, label %242, label %244, !dbg !1336

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1333
  store i8 63, i8* %243, align 1, !dbg !1333, !tbaa !724
  br label %244, !dbg !1333

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1116, metadata !629), !dbg !1179
  br label %470, !dbg !1337

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1130, metadata !629), !dbg !1338
  br label %256, !dbg !1339

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1130, metadata !629), !dbg !1338
  br label %256, !dbg !1340

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1130, metadata !629), !dbg !1338
  br label %254, !dbg !1341

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1130, metadata !629), !dbg !1338
  br label %254, !dbg !1342

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1130, metadata !629), !dbg !1338
  br label %256, !dbg !1343

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1130, metadata !629), !dbg !1338
  br i1 %113, label %252, label %253, !dbg !1344

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1345

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1348

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1130, metadata !629), !dbg !1338
  br i1 %117, label %256, label %635, !dbg !1350

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1130, metadata !629), !dbg !1338
  br i1 %104, label %497, label %470, !dbg !1352

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1353
  br i1 %259, label %260, label %265, !dbg !1355

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1356, !tbaa !724
  %262 = icmp ne i8 %261, 0, !dbg !1357
  %263 = icmp ne i64 %123, 0, !dbg !1358
  %264 = or i1 %263, %262, !dbg !1360
  br i1 %264, label %470, label %271, !dbg !1360

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1361
  %267 = icmp ne i64 %123, 0, !dbg !1358
  %268 = or i1 %267, %266, !dbg !1355
  br i1 %268, label %470, label %271, !dbg !1355

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1358
  br i1 %270, label %271, label %470, !dbg !1362

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1133, metadata !629), !dbg !1246
  br label %272, !dbg !1363

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1133, metadata !629), !dbg !1246
  br i1 %117, label %470, label %635, !dbg !1364

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1133, metadata !629), !dbg !1246
  br i1 %113, label %275, label %470, !dbg !1366

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1367

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1370
  %278 = icmp ne i64 %125, 0, !dbg !1372
  %279 = or i1 %278, %277, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1107, metadata !629), !dbg !1171
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1373
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1117, metadata !629), !dbg !1180
  %282 = icmp ult i64 %124, %281, !dbg !1374
  br i1 %282, label %283, label %285, !dbg !1377

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1374
  store i8 39, i8* %284, align 1, !dbg !1374, !tbaa !724
  br label %285, !dbg !1374

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1116, metadata !629), !dbg !1179
  %287 = icmp ult i64 %286, %281, !dbg !1378
  br i1 %287, label %288, label %290, !dbg !1381

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1378
  store i8 92, i8* %289, align 1, !dbg !1378, !tbaa !724
  br label %290, !dbg !1378

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1116, metadata !629), !dbg !1179
  %292 = icmp ult i64 %291, %281, !dbg !1382
  br i1 %292, label %293, label %295, !dbg !1385

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1382
  store i8 39, i8* %294, align 1, !dbg !1382, !tbaa !724
  br label %295, !dbg !1382

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %470, !dbg !1386

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1387

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1134, metadata !629), !dbg !1388
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !1389
  %300 = load i16*, i16** %299, align 8, !dbg !1389, !tbaa !636
  %301 = zext i8 %158 to i64, !dbg !1389
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1389
  %303 = load i16, i16* %302, align 2, !dbg !1389, !tbaa !1391
  %304 = lshr i16 %303, 14, !dbg !1393
  %305 = trunc i16 %304 to i8, !dbg !1393
  %306 = and i8 %305, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1137, metadata !629), !dbg !1394
  br label %362, !dbg !1395

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1396
  store i64 0, i64* %10, align 8, !dbg !1397
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !629), !dbg !1394
  %308 = icmp eq i64 %155, -1, !dbg !1398
  br i1 %308, label %309, label %311, !dbg !1400

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1109, metadata !629), !dbg !1173
  br label %311, !dbg !1402

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1109, metadata !629), !dbg !1173
  br label %313, !dbg !1403, !llvm.loop !1404

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1406
  %316 = add i64 %314, %123, !dbg !1407
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1408
  %318 = sub i64 %312, %316, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1138, metadata !629), !dbg !1410
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1156, metadata !629), !dbg !1411
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1159, metadata !629), !dbg !1413
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1414

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1134, metadata !629), !dbg !1388
  %321 = icmp ugt i64 %312, %316, !dbg !1415
  br i1 %321, label %322, label %347, !dbg !1417

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1418

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1134, metadata !629), !dbg !1388
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1418
  %327 = load i8, i8* %326, align 1, !dbg !1418, !tbaa !724
  %328 = icmp eq i8 %327, 0, !dbg !1417
  br i1 %328, label %347, label %329, !dbg !1419

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1134, metadata !629), !dbg !1388
  %331 = add i64 %330, %123, !dbg !1421
  %332 = icmp ult i64 %331, %312, !dbg !1415
  br i1 %332, label %323, label %347, !dbg !1417, !llvm.loop !1422

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1423
  %335 = and i1 %115, %334, !dbg !1426
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1160, metadata !629), !dbg !1427
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1160, metadata !629), !dbg !1427
  br i1 %335, label %336, label %350, !dbg !1426

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1428

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1160, metadata !629), !dbg !1427
  %339 = add i64 %338, %316, !dbg !1428
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1429
  %341 = load i8, i8* %340, align 1, !dbg !1429, !tbaa !724
  %342 = sext i8 %341 to i32, !dbg !1429
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1430

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1160, metadata !629), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1160, metadata !629), !dbg !1427
  %345 = icmp ult i64 %344, %319, !dbg !1423
  br i1 %345, label %337, label %350, !dbg !1432, !llvm.loop !1433

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1435

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1435
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1436, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1156, metadata !629), !dbg !1411
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1438
  %353 = icmp eq i32 %352, 0, !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1137, metadata !629), !dbg !1394
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1439
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1137, metadata !629), !dbg !1394
  %355 = add i64 %319, %314, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1138, metadata !629), !dbg !1410
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !1441
  %357 = icmp eq i32 %356, 0, !dbg !1442
  br i1 %357, label %313, label %358, !dbg !1443, !llvm.loop !1404

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1444
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1444
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1137, metadata !629), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1134, metadata !629), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1109, metadata !629), !dbg !1173
  %366 = and i8 %365, 1, !dbg !1445
  %367 = icmp ne i8 %366, 0, !dbg !1445
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1133, metadata !629), !dbg !1246
  %368 = icmp ult i64 %364, 2, !dbg !1446
  %369 = or i1 %367, %112, !dbg !1447
  %370 = and i1 %368, %369, !dbg !1448
  br i1 %370, label %470, label %371, !dbg !1448

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1167, metadata !629), !dbg !1450
  br label %373, !dbg !1451

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1131, metadata !629), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1115, metadata !629), !dbg !1236
  br i1 %369, label %426, label %380, !dbg !1452

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1457

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1245
  %382 = and i8 %376, 1, !dbg !1460
  %383 = icmp eq i8 %382, 0, !dbg !1460
  %384 = and i1 %113, %383, !dbg !1460
  br i1 %384, label %385, label %401, !dbg !1460

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1462
  br i1 %386, label %387, label %389, !dbg !1466

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1462
  store i8 39, i8* %388, align 1, !dbg !1462, !tbaa !724
  br label %389, !dbg !1462

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1116, metadata !629), !dbg !1179
  %391 = icmp ult i64 %390, %130, !dbg !1467
  br i1 %391, label %392, label %394, !dbg !1470

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1467
  store i8 36, i8* %393, align 1, !dbg !1467, !tbaa !724
  br label %394, !dbg !1467

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1116, metadata !629), !dbg !1179
  %396 = icmp ult i64 %395, %130, !dbg !1471
  br i1 %396, label %397, label %399, !dbg !1474

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1471
  store i8 39, i8* %398, align 1, !dbg !1471, !tbaa !724
  br label %399, !dbg !1471

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %401, !dbg !1475

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1116, metadata !629), !dbg !1179
  %404 = icmp ult i64 %402, %130, !dbg !1476
  br i1 %404, label %405, label %407, !dbg !1479

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1476
  store i8 92, i8* %406, align 1, !dbg !1476, !tbaa !724
  br label %407, !dbg !1476

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1116, metadata !629), !dbg !1179
  %409 = icmp ult i64 %408, %130, !dbg !1480
  br i1 %409, label %410, label %414, !dbg !1483

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1480
  %412 = or i8 %411, 48, !dbg !1480
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1480
  store i8 %412, i8* %413, align 1, !dbg !1480, !tbaa !724
  br label %414, !dbg !1480

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1116, metadata !629), !dbg !1179
  %416 = icmp ult i64 %415, %130, !dbg !1484
  br i1 %416, label %417, label %422, !dbg !1487

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1484
  %419 = and i8 %418, 7, !dbg !1484
  %420 = or i8 %419, 48, !dbg !1484
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1484
  store i8 %420, i8* %421, align 1, !dbg !1484, !tbaa !724
  br label %422, !dbg !1484

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1116, metadata !629), !dbg !1179
  %424 = and i8 %377, 7, !dbg !1488
  %425 = or i8 %424, 48, !dbg !1489
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1126, metadata !629), !dbg !1260
  br label %435, !dbg !1490

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1491
  %428 = icmp eq i8 %427, 0, !dbg !1491
  br i1 %428, label %435, label %429, !dbg !1493

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1494
  br i1 %430, label %431, label %433, !dbg !1498

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1494
  store i8 92, i8* %432, align 1, !dbg !1494, !tbaa !724
  br label %433, !dbg !1494

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !629), !dbg !1244
  br label %435, !dbg !1499

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1131, metadata !629), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1116, metadata !629), !dbg !1179
  %441 = add i64 %374, 1, !dbg !1500
  %442 = icmp ugt i64 %372, %441, !dbg !1502
  br i1 %442, label %443, label %535, !dbg !1503

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1504
  %445 = icmp ne i8 %444, 0, !dbg !1504
  %446 = and i8 %440, 1, !dbg !1504
  %447 = icmp eq i8 %446, 0, !dbg !1504
  %448 = and i1 %445, %447, !dbg !1504
  br i1 %448, label %449, label %460, !dbg !1504

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1507
  br i1 %450, label %451, label %453, !dbg !1511

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1507
  store i8 39, i8* %452, align 1, !dbg !1507, !tbaa !724
  br label %453, !dbg !1507

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1116, metadata !629), !dbg !1179
  %455 = icmp ult i64 %454, %130, !dbg !1512
  br i1 %455, label %456, label %458, !dbg !1515

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1512
  store i8 39, i8* %457, align 1, !dbg !1512, !tbaa !724
  br label %458, !dbg !1512

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %460, !dbg !1516

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1116, metadata !629), !dbg !1179
  %463 = icmp ult i64 %461, %130, !dbg !1517
  br i1 %463, label %464, label %466, !dbg !1520

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1517
  store i8 %438, i8* %465, align 1, !dbg !1517, !tbaa !724
  br label %466, !dbg !1517

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1115, metadata !629), !dbg !1236
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1521
  %469 = load i8, i8* %468, align 1, !dbg !1521, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1126, metadata !629), !dbg !1260
  br label %373, !dbg !1522, !llvm.loop !1523

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1133, metadata !629), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1131, metadata !629), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1115, metadata !629), !dbg !1236
  br i1 %106, label %482, label %481, !dbg !1526

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1528

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1529

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1530
  %485 = zext i8 %484 to i64, !dbg !1530
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1531
  %487 = load i32, i32* %486, align 4, !dbg !1531, !tbaa !701
  %488 = and i8 %477, 31, !dbg !1532
  %489 = zext i8 %488 to i32, !dbg !1533
  %490 = shl i32 1, %489, !dbg !1534
  %491 = and i32 %487, %490, !dbg !1534
  %492 = icmp eq i32 %491, 0, !dbg !1534
  %493 = icmp eq i8 %156, 0, !dbg !1535
  %494 = and i1 %493, %492, !dbg !1536
  br i1 %494, label %535, label %497, !dbg !1536

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1535
  br i1 %496, label %535, label %497, !dbg !1537

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1133, metadata !629), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1115, metadata !629), !dbg !1236
  br i1 %111, label %507, label %635, !dbg !1538

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !629), !dbg !1245
  %508 = and i8 %502, 1, !dbg !1540
  %509 = icmp eq i8 %508, 0, !dbg !1540
  %510 = and i1 %113, %509, !dbg !1540
  br i1 %510, label %511, label %527, !dbg !1540

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1542
  br i1 %512, label %513, label %515, !dbg !1546

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1542
  store i8 39, i8* %514, align 1, !dbg !1542, !tbaa !724
  br label %515, !dbg !1542

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1116, metadata !629), !dbg !1179
  %517 = icmp ult i64 %516, %506, !dbg !1547
  br i1 %517, label %518, label %520, !dbg !1550

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1547
  store i8 36, i8* %519, align 1, !dbg !1547, !tbaa !724
  br label %520, !dbg !1547

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1116, metadata !629), !dbg !1179
  %522 = icmp ult i64 %521, %506, !dbg !1551
  br i1 %522, label %523, label %525, !dbg !1554

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1551
  store i8 39, i8* %524, align 1, !dbg !1551, !tbaa !724
  br label %525, !dbg !1551

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %527, !dbg !1555

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1116, metadata !629), !dbg !1179
  %530 = icmp ult i64 %528, %506, !dbg !1556
  br i1 %530, label %531, label %533, !dbg !1559

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1556
  store i8 92, i8* %532, align 1, !dbg !1556, !tbaa !724
  br label %533, !dbg !1556

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1133, metadata !629), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1115, metadata !629), !dbg !1236
  br label %562, !dbg !1560

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1133, metadata !629), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1132, metadata !629), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1126, metadata !629), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1115, metadata !629), !dbg !1236
  %546 = and i8 %540, 1, !dbg !1560
  %547 = icmp ne i8 %546, 0, !dbg !1560
  %548 = and i8 %543, 1, !dbg !1560
  %549 = icmp eq i8 %548, 0, !dbg !1560
  %550 = and i1 %547, %549, !dbg !1560
  br i1 %550, label %551, label %562, !dbg !1560

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1563
  br i1 %552, label %553, label %555, !dbg !1567

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1563
  store i8 39, i8* %554, align 1, !dbg !1563, !tbaa !724
  br label %555, !dbg !1563

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1116, metadata !629), !dbg !1179
  %557 = icmp ult i64 %556, %545, !dbg !1568
  br i1 %557, label %558, label %560, !dbg !1571

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1568
  store i8 39, i8* %559, align 1, !dbg !1568, !tbaa !724
  br label %560, !dbg !1568

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !629), !dbg !1187
  br label %562, !dbg !1572

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1116, metadata !629), !dbg !1179
  %572 = icmp ult i64 %570, %563, !dbg !1573
  br i1 %572, label %573, label %575, !dbg !1576

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1573
  store i8 %565, i8* %574, align 1, !dbg !1573, !tbaa !724
  br label %575, !dbg !1573

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1116, metadata !629), !dbg !1179
  %577 = and i8 %564, 1, !dbg !1577
  %578 = icmp eq i8 %577, 0, !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1125, metadata !629), !dbg !1189
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1125, metadata !629), !dbg !1189
  br label %580, !dbg !1580

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1125, metadata !629), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1124, metadata !629), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1123, metadata !629), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1109, metadata !629), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1117, metadata !629), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1115, metadata !629), !dbg !1236
  %589 = add i64 %581, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1115, metadata !629), !dbg !1236
  br label %122, !dbg !1582, !llvm.loop !1583

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1585
  %593 = and i1 %113, %592, !dbg !1587
  %594 = xor i1 %593, true, !dbg !1587
  %595 = or i1 %111, %594, !dbg !1587
  br i1 %595, label %596, label %635, !dbg !1587

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1588
  %598 = xor i1 %597, true, !dbg !1588
  %599 = and i8 %128, 1, !dbg !1590
  %600 = icmp eq i8 %599, 0, !dbg !1590
  %601 = or i1 %600, %598, !dbg !1588
  br i1 %601, label %611, label %602, !dbg !1588

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1591
  %604 = icmp eq i8 %603, 0, !dbg !1591
  br i1 %604, label %607, label %605, !dbg !1594

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1595
  br label %645, !dbg !1596

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1597
  %609 = icmp ne i64 %125, 0, !dbg !1599
  %610 = and i1 %609, %608, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1116, metadata !629), !dbg !1179
  br i1 %610, label %27, label %611, !dbg !1600

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1601
  %613 = and i1 %612, %111, !dbg !1603
  br i1 %613, label %614, label %630, !dbg !1603

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1116, metadata !629), !dbg !1179
  %615 = load i8, i8* %99, align 1, !dbg !1604, !tbaa !724
  %616 = icmp eq i8 %615, 0, !dbg !1607
  br i1 %616, label %630, label %617, !dbg !1607

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1608

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1116, metadata !629), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1118, metadata !629), !dbg !1181
  %622 = icmp ult i64 %621, %130, !dbg !1608
  br i1 %622, label %623, label %625, !dbg !1611

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1608
  store i8 %619, i8* %624, align 1, !dbg !1608, !tbaa !724
  br label %625, !dbg !1608

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1116, metadata !629), !dbg !1179
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1118, metadata !629), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1116, metadata !629), !dbg !1179
  %628 = load i8, i8* %627, align 1, !dbg !1604, !tbaa !724
  %629 = icmp eq i8 %628, 0, !dbg !1607
  br i1 %629, label %630, label %618, !dbg !1607, !llvm.loop !1613

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1116, metadata !629), !dbg !1179
  %632 = icmp ult i64 %631, %130, !dbg !1615
  br i1 %632, label %633, label %645, !dbg !1617

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1618
  store i8 0, i8* %634, align 1, !dbg !1619, !tbaa !724
  br label %645, !dbg !1618

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1107, metadata !629), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1109, metadata !629), !dbg !1173
  %639 = icmp ne i32 %636, 2, !dbg !1620
  %640 = icmp eq i8 %103, 0, !dbg !1622
  %641 = or i1 %639, %640, !dbg !1623
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1110, metadata !629), !dbg !1174
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1110, metadata !629), !dbg !1174
  %643 = and i32 %5, -3, !dbg !1624
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1625
  br label %645, !dbg !1626

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1627
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1628 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1632, metadata !629), !dbg !1636
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1633, metadata !629), !dbg !1637
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1634, metadata !629), !dbg !1639
  %4 = icmp eq i8* %3, %0, !dbg !1640
  br i1 %4, label %5, label %75, !dbg !1642

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1643
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1635, metadata !629), !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1645, metadata !629), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1659, metadata !629), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1660, metadata !629), !dbg !1665
  %7 = load i8, i8* %6, align 1, !dbg !1666, !tbaa !724
  %8 = sext i8 %7 to i32, !dbg !1666
  %9 = and i32 %8, -33, !dbg !1666
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1666

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1668, metadata !629), !dbg !1682
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1680, metadata !629), !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1681, metadata !629), !dbg !1687
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1688
  %12 = load i8, i8* %11, align 1, !dbg !1688, !tbaa !724
  %13 = sext i8 %12 to i32, !dbg !1688
  %14 = and i32 %13, -33, !dbg !1688
  %15 = icmp eq i32 %14, 84, !dbg !1688
  br i1 %15, label %16, label %72, !dbg !1688

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1690, metadata !629), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1701, metadata !629), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1702, metadata !629), !dbg !1708
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1709
  %18 = load i8, i8* %17, align 1, !dbg !1709, !tbaa !724
  %19 = sext i8 %18 to i32, !dbg !1709
  %20 = and i32 %19, -33, !dbg !1709
  %21 = icmp eq i32 %20, 70, !dbg !1709
  br i1 %21, label %22, label %72, !dbg !1709

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1711, metadata !629), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1721, metadata !629), !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1722, metadata !629), !dbg !1728
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1729
  %24 = load i8, i8* %23, align 1, !dbg !1729, !tbaa !724
  %25 = icmp eq i8 %24, 45, !dbg !1729
  br i1 %25, label %26, label %72, !dbg !1731

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1732, metadata !629), !dbg !1743
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1741, metadata !629), !dbg !1747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1742, metadata !629), !dbg !1748
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1749
  %28 = load i8, i8* %27, align 1, !dbg !1749, !tbaa !724
  %29 = icmp eq i8 %28, 56, !dbg !1749
  br i1 %29, label %30, label %72, !dbg !1751

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1752, metadata !629), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !629), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1761, metadata !629), !dbg !1767
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1768
  %32 = load i8, i8* %31, align 1, !dbg !1768, !tbaa !724
  %33 = icmp eq i8 %32, 0, !dbg !1768
  br i1 %33, label %34, label %72, !dbg !1770

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1771, !tbaa !724
  %36 = icmp eq i8 %35, 96, !dbg !1772
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1771
  br label %75, !dbg !1773

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1668, metadata !629), !dbg !1774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1680, metadata !629), !dbg !1778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1681, metadata !629), !dbg !1779
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1780
  %40 = load i8, i8* %39, align 1, !dbg !1780, !tbaa !724
  %41 = sext i8 %40 to i32, !dbg !1780
  %42 = and i32 %41, -33, !dbg !1780
  %43 = icmp eq i32 %42, 66, !dbg !1780
  br i1 %43, label %44, label %72, !dbg !1780

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1690, metadata !629), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1701, metadata !629), !dbg !1783
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1702, metadata !629), !dbg !1784
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1785
  %46 = load i8, i8* %45, align 1, !dbg !1785, !tbaa !724
  %47 = icmp eq i8 %46, 49, !dbg !1785
  br i1 %47, label %48, label %72, !dbg !1786

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1711, metadata !629), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1721, metadata !629), !dbg !1789
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1722, metadata !629), !dbg !1790
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1791
  %50 = load i8, i8* %49, align 1, !dbg !1791, !tbaa !724
  %51 = icmp eq i8 %50, 56, !dbg !1791
  br i1 %51, label %52, label %72, !dbg !1792

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1732, metadata !629), !dbg !1793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1741, metadata !629), !dbg !1795
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1742, metadata !629), !dbg !1796
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1797
  %54 = load i8, i8* %53, align 1, !dbg !1797, !tbaa !724
  %55 = icmp eq i8 %54, 48, !dbg !1797
  br i1 %55, label %56, label %72, !dbg !1798

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1752, metadata !629), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !629), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1761, metadata !629), !dbg !1802
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1803
  %58 = load i8, i8* %57, align 1, !dbg !1803, !tbaa !724
  %59 = icmp eq i8 %58, 51, !dbg !1803
  br i1 %59, label %60, label %72, !dbg !1804

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1805, metadata !629), !dbg !1814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1812, metadata !629), !dbg !1818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !629), !dbg !1819
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1820
  %62 = load i8, i8* %61, align 1, !dbg !1820, !tbaa !724
  %63 = icmp eq i8 %62, 48, !dbg !1820
  br i1 %63, label %64, label %72, !dbg !1822

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1823, metadata !629), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1829, metadata !629), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !629), !dbg !1836
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1837
  %66 = load i8, i8* %65, align 1, !dbg !1837, !tbaa !724
  %67 = icmp eq i8 %66, 0, !dbg !1837
  br i1 %67, label %68, label %72, !dbg !1839

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1840, !tbaa !724
  %70 = icmp eq i8 %69, 96, !dbg !1841
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1840
  br label %75, !dbg !1842

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1843
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !1844
  br label %75, !dbg !1845

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1846
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1851, metadata !629), !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1852, metadata !629), !dbg !1855
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1853, metadata !629), !dbg !1856
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1857, metadata !629) #10, !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1862, metadata !629) #10, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1863, metadata !629) #10, !dbg !1873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1864, metadata !629) #10, !dbg !1874
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1875
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1865, metadata !629) #10, !dbg !1876
  %6 = tail call i32* @__errno_location() #18, !dbg !1877
  %7 = load i32, i32* %6, align 4, !dbg !1877, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1866, metadata !629) #10, !dbg !1878
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1879
  %9 = load i32, i32* %8, align 4, !dbg !1879, !tbaa !1039
  %10 = or i32 %9, 1, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1867, metadata !629) #10, !dbg !1881
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1882
  %12 = load i32, i32* %11, align 8, !dbg !1882, !tbaa !979
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1883
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1884
  %15 = load i8*, i8** %14, align 8, !dbg !1884, !tbaa !1065
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1885
  %17 = load i8*, i8** %16, align 8, !dbg !1885, !tbaa !1068
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1886
  %19 = add i64 %18, 1, !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1868, metadata !629) #10, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1889, metadata !629) #10, !dbg !1894
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1896
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1869, metadata !629) #10, !dbg !1897
  %21 = load i32, i32* %11, align 8, !dbg !1898, !tbaa !979
  %22 = load i8*, i8** %14, align 8, !dbg !1899, !tbaa !1065
  %23 = load i8*, i8** %16, align 8, !dbg !1900, !tbaa !1068
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1901
  store i32 %7, i32* %6, align 4, !dbg !1902, !tbaa !701
  ret i8* %20, !dbg !1903
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1857, metadata !629), !dbg !1904
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1862, metadata !629), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1863, metadata !629), !dbg !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1864, metadata !629), !dbg !1907
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1908
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1865, metadata !629), !dbg !1909
  %7 = tail call i32* @__errno_location() #18, !dbg !1910
  %8 = load i32, i32* %7, align 4, !dbg !1910, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1866, metadata !629), !dbg !1911
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1912
  %10 = load i32, i32* %9, align 4, !dbg !1912, !tbaa !1039
  %11 = icmp ne i64* %2, null, !dbg !1913
  %12 = xor i1 %11, true, !dbg !1913
  %13 = zext i1 %12 to i32, !dbg !1913
  %14 = or i32 %10, %13, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1867, metadata !629), !dbg !1915
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1916
  %16 = load i32, i32* %15, align 8, !dbg !1916, !tbaa !979
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1917
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1918
  %19 = load i8*, i8** %18, align 8, !dbg !1918, !tbaa !1065
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1919
  %21 = load i8*, i8** %20, align 8, !dbg !1919, !tbaa !1068
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1920
  %23 = add i64 %22, 1, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1868, metadata !629), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1889, metadata !629) #10, !dbg !1923
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1925
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1869, metadata !629), !dbg !1926
  %25 = load i32, i32* %15, align 8, !dbg !1927, !tbaa !979
  %26 = load i8*, i8** %18, align 8, !dbg !1928, !tbaa !1065
  %27 = load i8*, i8** %20, align 8, !dbg !1929, !tbaa !1068
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1930
  store i32 %8, i32* %7, align 4, !dbg !1931, !tbaa !701
  br i1 %11, label %29, label %30, !dbg !1932

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1933, !tbaa !1935
  br label %30, !dbg !1937

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1938
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1939 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1943, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1941, metadata !629), !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1942, metadata !629), !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1942, metadata !629), !dbg !1945
  %2 = load i32, i32* @nslots, align 4, !dbg !1946, !tbaa !701
  %3 = icmp sgt i32 %2, 1, !dbg !1949
  br i1 %3, label %4, label %13, !dbg !1950

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1951

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1942, metadata !629), !dbg !1945
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1951
  %8 = load i8*, i8** %7, align 8, !dbg !1951, !tbaa !1952
  tail call void @free(i8* %8) #10, !dbg !1954
  %9 = add nuw i64 %6, 1, !dbg !1955
  %10 = load i32, i32* @nslots, align 4, !dbg !1946, !tbaa !701
  %11 = sext i32 %10 to i64, !dbg !1949
  %12 = icmp slt i64 %9, %11, !dbg !1949
  br i1 %12, label %5, label %13, !dbg !1950, !llvm.loop !1956

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1958
  %15 = load i8*, i8** %14, align 8, !dbg !1958, !tbaa !1952
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1960
  br i1 %16, label %18, label %17, !dbg !1961

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1962
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1964, !tbaa !1965
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1966, !tbaa !1952
  br label %18, !dbg !1967

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1968
  br i1 %19, label %22, label %20, !dbg !1970

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1971
  tail call void @free(i8* %21) #10, !dbg !1973
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1974, !tbaa !636
  br label %22, !dbg !1975

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1976, !tbaa !701
  ret void, !dbg !1977
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1978 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1982, metadata !629), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1983, metadata !629), !dbg !1985
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1986
  ret i8* %3, !dbg !1987
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1988 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1992, metadata !629), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1993, metadata !629), !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1994, metadata !629), !dbg !2008
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1995, metadata !629), !dbg !2009
  %5 = tail call i32* @__errno_location() #18, !dbg !2010
  %6 = load i32, i32* %5, align 4, !dbg !2010, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1996, metadata !629), !dbg !2011
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2012, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1997, metadata !629), !dbg !2013
  %8 = icmp slt i32 %0, 0, !dbg !2014
  br i1 %8, label %9, label %10, !dbg !2016

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2017
  unreachable, !dbg !2017

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2018, !tbaa !701
  %12 = icmp sgt i32 %11, %0, !dbg !2019
  br i1 %12, label %34, label %13, !dbg !2020

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2021
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2022
  br i1 %15, label %16, label %17, !dbg !2024

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2025
  unreachable, !dbg !2025

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2026
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2026
  %20 = add nsw i32 %0, 1, !dbg !2027
  %21 = sext i32 %20 to i64, !dbg !2028
  %22 = shl nsw i64 %21, 4, !dbg !2029
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2030
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2030
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1997, metadata !629), !dbg !2013
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2031, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2032

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2033, !tbaa.struct !2035
  br label %26, !dbg !2036

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2037, !tbaa !701
  %28 = sext i32 %27 to i64, !dbg !2038
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2038
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2039
  %31 = sub nsw i32 %20, %27, !dbg !2040
  %32 = sext i32 %31 to i64, !dbg !2041
  %33 = shl nsw i64 %32, 4, !dbg !2042
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2039
  store i32 %20, i32* @nslots, align 4, !dbg !2043, !tbaa !701
  br label %34, !dbg !2044

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1997, metadata !629), !dbg !2013
  %36 = sext i32 %0 to i64, !dbg !2045
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2046
  %38 = load i64, i64* %37, align 8, !dbg !2046, !tbaa !1965
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2001, metadata !629), !dbg !2047
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2048
  %40 = load i8*, i8** %39, align 8, !dbg !2048, !tbaa !1952
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2003, metadata !629), !dbg !2049
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2050
  %42 = load i32, i32* %41, align 4, !dbg !2050, !tbaa !1039
  %43 = or i32 %42, 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2004, metadata !629), !dbg !2052
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2053
  %45 = load i32, i32* %44, align 8, !dbg !2053, !tbaa !979
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2054
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2055
  %48 = load i8*, i8** %47, align 8, !dbg !2055, !tbaa !1065
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2056
  %50 = load i8*, i8** %49, align 8, !dbg !2056, !tbaa !1068
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2005, metadata !629), !dbg !2058
  %52 = icmp ugt i64 %38, %51, !dbg !2059
  br i1 %52, label %63, label %53, !dbg !2061

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2001, metadata !629), !dbg !2047
  store i64 %54, i64* %37, align 8, !dbg !2064, !tbaa !1965
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2065
  br i1 %55, label %57, label %56, !dbg !2067

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2068
  br label %57, !dbg !2068

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1889, metadata !629) #10, !dbg !2069
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2071
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2003, metadata !629), !dbg !2049
  store i8* %58, i8** %39, align 8, !dbg !2072, !tbaa !1952
  %59 = load i32, i32* %44, align 8, !dbg !2073, !tbaa !979
  %60 = load i8*, i8** %47, align 8, !dbg !2074, !tbaa !1065
  %61 = load i8*, i8** %49, align 8, !dbg !2075, !tbaa !1068
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2076
  br label %63, !dbg !2077

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2003, metadata !629), !dbg !2049
  store i32 %6, i32* %5, align 4, !dbg !2078, !tbaa !701
  ret i8* %64, !dbg !2079
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2080 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2084, metadata !629), !dbg !2087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2085, metadata !629), !dbg !2088
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2086, metadata !629), !dbg !2089
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2090
  ret i8* %4, !dbg !2091
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2092 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !629), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1982, metadata !629) #10, !dbg !2098
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1983, metadata !629) #10, !dbg !2100
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2101
  ret i8* %2, !dbg !2102
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2103 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2107, metadata !629), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2108, metadata !629), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2084, metadata !629) #10, !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2085, metadata !629) #10, !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2086, metadata !629) #10, !dbg !2114
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2115
  ret i8* %3, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2117 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2132
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2121, metadata !629), !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2122, metadata !629), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2123, metadata !629), !dbg !2136
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2124, metadata !629), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !629) #10, !dbg !2139
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2140
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !629) #10, !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2132
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2132
  %8 = icmp eq i32 %1, 10, !dbg !2142
  br i1 %8, label %9, label %10, !dbg !2144

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2145, !noalias !2146
  unreachable, !dbg !2145

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #10, !dbg !2132
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2149
  store i32 %1, i32* %11, align 8, !dbg !2149, !alias.scope !2146
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2149
  %13 = bitcast i32* %12 to i8*, !dbg !2149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2124, metadata !629), !dbg !2138
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2152
  ret i8* %14, !dbg !2153
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2154 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2125, metadata !2131), !dbg !2163
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2158, metadata !629), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2159, metadata !629), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2160, metadata !629), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2161, metadata !629), !dbg !2168
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2162, metadata !629), !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !629) #10, !dbg !2171
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2172
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !629) #10, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2163
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2163
  %9 = icmp eq i32 %1, 10, !dbg !2173
  br i1 %9, label %10, label %11, !dbg !2174

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2175, !noalias !2176
  unreachable, !dbg !2175

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #10, !dbg !2163
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2179
  store i32 %1, i32* %12, align 8, !dbg !2179, !alias.scope !2176
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2179
  %14 = bitcast i32* %13 to i8*, !dbg !2179
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2179
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2162, metadata !629), !dbg !2170
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2182
  ret i8* %15, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2184 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2125, metadata !2131), !dbg !2190
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2188, metadata !629), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2189, metadata !629), !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2121, metadata !629) #10, !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2122, metadata !629) #10, !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2123, metadata !629) #10, !dbg !2197
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2198
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2124, metadata !629) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2130, metadata !629) #10, !dbg !2200
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2201
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !629) #10, !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2190
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2190
  %7 = icmp eq i32 %0, 10, !dbg !2202
  br i1 %7, label %8, label %9, !dbg !2203

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !2204, !noalias !2205
  unreachable, !dbg !2204

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2190
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2208
  store i32 %0, i32* %10, align 8, !dbg !2208, !alias.scope !2205
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2208
  %12 = bitcast i32* %11 to i8*, !dbg !2208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2209
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2124, metadata !629) #10, !dbg !2199
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2211
  ret i8* %13, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2213 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2220
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2217, metadata !629), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2218, metadata !629), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2219, metadata !629), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2158, metadata !629) #10, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2159, metadata !629) #10, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2160, metadata !629) #10, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2161, metadata !629) #10, !dbg !2229
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2162, metadata !629) #10, !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2130, metadata !629) #10, !dbg !2232
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2233
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !629) #10, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2220
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2220
  %8 = icmp eq i32 %0, 10, !dbg !2234
  br i1 %8, label %9, label %10, !dbg !2235

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2236, !noalias !2237
  unreachable, !dbg !2236

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2220
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2240
  store i32 %0, i32* %11, align 8, !dbg !2240, !alias.scope !2237
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2240
  %13 = bitcast i32* %12 to i8*, !dbg !2240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2162, metadata !629) #10, !dbg !2231
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2243
  ret i8* %14, !dbg !2244
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2245 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !629), !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2250, metadata !629), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2251, metadata !629), !dbg !2255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2257, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2252, metadata !629), !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !998, metadata !629), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !999, metadata !629), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !629), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1001, metadata !629), !dbg !2264
  %6 = lshr i8 %2, 5, !dbg !2265
  %7 = zext i8 %6 to i64, !dbg !2265
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1002, metadata !629), !dbg !2267
  %9 = and i8 %2, 31, !dbg !2268
  %10 = zext i8 %9 to i32, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1004, metadata !629), !dbg !2270
  %11 = load i32, i32* %8, align 4, !dbg !2271, !tbaa !701
  %12 = lshr i32 %11, %10, !dbg !2272
  %13 = and i32 %12, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1005, metadata !629), !dbg !2274
  %14 = xor i32 %13, 1, !dbg !2275
  %15 = shl i32 %14, %10, !dbg !2276
  %16 = xor i32 %15, %11, !dbg !2277
  store i32 %16, i32* %8, align 4, !dbg !2277, !tbaa !701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2252, metadata !629), !dbg !2259
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2279
  ret i8* %17, !dbg !2280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2281 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2285, metadata !629), !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2286, metadata !629), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !629) #10, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2250, metadata !629) #10, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2251, metadata !629) #10, !dbg !2292
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2294, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !629) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !998, metadata !629) #10, !dbg !2296
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !999, metadata !629) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !629) #10, !dbg !2299
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1001, metadata !629) #10, !dbg !2300
  %5 = lshr i8 %1, 5, !dbg !2301
  %6 = zext i8 %5 to i64, !dbg !2301
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1002, metadata !629) #10, !dbg !2303
  %8 = and i8 %1, 31, !dbg !2304
  %9 = zext i8 %8 to i32, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1004, metadata !629) #10, !dbg !2306
  %10 = load i32, i32* %7, align 4, !dbg !2307, !tbaa !701
  %11 = lshr i32 %10, %9, !dbg !2308
  %12 = and i32 %11, 1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1005, metadata !629) #10, !dbg !2310
  %13 = xor i32 %12, 1, !dbg !2311
  %14 = shl i32 %13, %9, !dbg !2312
  %15 = xor i32 %14, %10, !dbg !2313
  store i32 %15, i32* %7, align 4, !dbg !2313, !tbaa !701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !629) #10, !dbg !2295
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2315
  ret i8* %16, !dbg !2316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2317 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !629), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2285, metadata !629) #10, !dbg !2321
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2286, metadata !629) #10, !dbg !2323
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !629) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2250, metadata !629) #10, !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2251, metadata !629) #10, !dbg !2327
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2329, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2252, metadata !629) #10, !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !998, metadata !629) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629) #10, !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !629) #10, !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1001, metadata !629) #10, !dbg !2335
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1002, metadata !629) #10, !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1004, metadata !629) #10, !dbg !2338
  %5 = load i32, i32* %4, align 4, !dbg !2339, !tbaa !701
  %6 = or i32 %5, 67108864, !dbg !2340
  store i32 %6, i32* %4, align 4, !dbg !2340, !tbaa !701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2252, metadata !629) #10, !dbg !2330
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2342
  ret i8* %7, !dbg !2343
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2344 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2346, metadata !629), !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2347, metadata !629), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !629) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2250, metadata !629) #10, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2251, metadata !629) #10, !dbg !2353
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2354
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2355, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !629) #10, !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !998, metadata !629) #10, !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !629) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1001, metadata !629) #10, !dbg !2361
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1002, metadata !629) #10, !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1004, metadata !629) #10, !dbg !2364
  %6 = load i32, i32* %5, align 4, !dbg !2365, !tbaa !701
  %7 = or i32 %6, 67108864, !dbg !2366
  store i32 %7, i32* %5, align 4, !dbg !2366, !tbaa !701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !629) #10, !dbg !2356
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2368
  ret i8* %8, !dbg !2369
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2370 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2376
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2372, metadata !629), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2373, metadata !629), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2374, metadata !629), !dbg !2380
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !629) #10, !dbg !2382
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2383
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !629) #10, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #10, !dbg !2376
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2376
  %9 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %9, label %10, label %11, !dbg !2385

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2386, !noalias !2387
  unreachable, !dbg !2386

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #10, !dbg !2376
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2391
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2392
  store i32 %1, i32* %13, align 8, !dbg !2392
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2392
  %15 = bitcast i32* %14 to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2375, metadata !629), !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !998, metadata !629), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !999, metadata !629), !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !629), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1001, metadata !629), !dbg !2398
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1002, metadata !629), !dbg !2400
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1004, metadata !629), !dbg !2401
  %17 = load i32, i32* %16, align 4, !dbg !2402, !tbaa !701
  %18 = or i32 %17, 67108864, !dbg !2403
  store i32 %18, i32* %16, align 4, !dbg !2403, !tbaa !701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2375, metadata !629), !dbg !2393
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2404
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2405
  ret i8* %19, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2407 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2411, metadata !629), !dbg !2415
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2412, metadata !629), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2413, metadata !629), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2414, metadata !629), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2419, metadata !629) #10, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !629) #10, !dbg !2431
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2425, metadata !629) #10, !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2426, metadata !629) #10, !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2427, metadata !629) #10, !dbg !2434
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2436, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !629) #10, !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1047, metadata !629) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1048, metadata !629) #10, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1049, metadata !629) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1047, metadata !629) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1047, metadata !629) #10, !dbg !2438
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2442
  store i32 10, i32* %7, align 8, !dbg !2443, !tbaa !979
  %8 = icmp ne i8* %1, null, !dbg !2444
  %9 = icmp ne i8* %2, null, !dbg !2445
  %10 = and i1 %8, %9, !dbg !2446
  br i1 %10, label %12, label %11, !dbg !2446

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2447
  unreachable, !dbg !2447

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2448
  store i8* %1, i8** %13, align 8, !dbg !2449, !tbaa !1065
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2450
  store i8* %2, i8** %14, align 8, !dbg !2451, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !629) #10, !dbg !2437
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2453
  ret i8* %15, !dbg !2454
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2420 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2419, metadata !629), !dbg !2455
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !629), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2425, metadata !629), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2426, metadata !629), !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2427, metadata !629), !dbg !2459
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2461, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2428, metadata !629), !dbg !2462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1047, metadata !629) #10, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1048, metadata !629) #10, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1049, metadata !629) #10, !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1047, metadata !629) #10, !dbg !2463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1047, metadata !629) #10, !dbg !2463
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2467
  store i32 10, i32* %8, align 8, !dbg !2468, !tbaa !979
  %9 = icmp ne i8* %1, null, !dbg !2469
  %10 = icmp ne i8* %2, null, !dbg !2470
  %11 = and i1 %9, %10, !dbg !2471
  br i1 %11, label %13, label %12, !dbg !2471

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !2472
  unreachable, !dbg !2472

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2473
  store i8* %1, i8** %14, align 8, !dbg !2474, !tbaa !1065
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2475
  store i8* %2, i8** %15, align 8, !dbg !2476, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2428, metadata !629), !dbg !2462
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2478
  ret i8* %16, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2480 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2484, metadata !629), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2485, metadata !629), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2486, metadata !629), !dbg !2489
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2411, metadata !629) #10, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2412, metadata !629) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2413, metadata !629) #10, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2414, metadata !629) #10, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2419, metadata !629) #10, !dbg !2495
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !629) #10, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2425, metadata !629) #10, !dbg !2498
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2426, metadata !629) #10, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2427, metadata !629) #10, !dbg !2500
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2502, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !629) #10, !dbg !2503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1047, metadata !629) #10, !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1048, metadata !629) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1049, metadata !629) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1047, metadata !629) #10, !dbg !2504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1047, metadata !629) #10, !dbg !2504
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2508
  store i32 10, i32* %6, align 8, !dbg !2509, !tbaa !979
  %7 = icmp ne i8* %0, null, !dbg !2510
  %8 = icmp ne i8* %1, null, !dbg !2511
  %9 = and i1 %7, %8, !dbg !2512
  br i1 %9, label %11, label %10, !dbg !2512

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2513
  unreachable, !dbg !2513

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2514
  store i8* %0, i8** %12, align 8, !dbg !2515, !tbaa !1065
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2516
  store i8* %1, i8** %13, align 8, !dbg !2517, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !629) #10, !dbg !2503
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2519
  ret i8* %14, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2521 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2525, metadata !629), !dbg !2529
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2526, metadata !629), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2527, metadata !629), !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2528, metadata !629), !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2419, metadata !629) #10, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !629) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2425, metadata !629) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2426, metadata !629) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2427, metadata !629) #10, !dbg !2538
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2540, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !629) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1047, metadata !629) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1048, metadata !629) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1049, metadata !629) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1047, metadata !629) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1047, metadata !629) #10, !dbg !2542
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2546
  store i32 10, i32* %7, align 8, !dbg !2547, !tbaa !979
  %8 = icmp ne i8* %0, null, !dbg !2548
  %9 = icmp ne i8* %1, null, !dbg !2549
  %10 = and i1 %8, %9, !dbg !2550
  br i1 %10, label %12, label %11, !dbg !2550

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2551
  unreachable, !dbg !2551

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2552
  store i8* %0, i8** %13, align 8, !dbg !2553, !tbaa !1065
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2554
  store i8* %1, i8** %14, align 8, !dbg !2555, !tbaa !1068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !629) #10, !dbg !2541
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2556
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2557
  ret i8* %15, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !629), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !629), !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2565, metadata !629), !dbg !2568
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2569
  ret i8* %4, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2575, metadata !629), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2576, metadata !629), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2563, metadata !629) #10, !dbg !2579
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !629) #10, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2565, metadata !629) #10, !dbg !2582
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2583
  ret i8* %3, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2589, metadata !629), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2590, metadata !629), !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !629) #10, !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !629) #10, !dbg !2595
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2565, metadata !629) #10, !dbg !2596
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2597
  ret i8* %3, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2599 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2603, metadata !629), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2589, metadata !629) #10, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !629) #10, !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2563, metadata !629) #10, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !629) #10, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2565, metadata !629) #10, !dbg !2611
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2612
  ret i8* %2, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2614 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2670, metadata !629), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2671, metadata !629), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2672, metadata !629), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2673, metadata !629), !dbg !2679
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2674, metadata !629), !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2675, metadata !629), !dbg !2681
  %7 = icmp eq i8* %1, null, !dbg !2682
  br i1 %7, label %10, label %8, !dbg !2684

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2685
  br label %12, !dbg !2685

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2686
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #10, !dbg !2687
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2687
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #10, !dbg !2688
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2688
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
  ], !dbg !2689

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !2690
  unreachable, !dbg !2690

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #10, !dbg !2692
  %20 = load i8*, i8** %4, align 8, !dbg !2692, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2692
  br label %146, !dbg !2693

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #10, !dbg !2694
  %24 = load i8*, i8** %4, align 8, !dbg !2694, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2694
  %26 = load i8*, i8** %25, align 8, !dbg !2694, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2694
  br label %146, !dbg !2695

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #10, !dbg !2696
  %30 = load i8*, i8** %4, align 8, !dbg !2696, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2696
  %32 = load i8*, i8** %31, align 8, !dbg !2696, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2696
  %34 = load i8*, i8** %33, align 8, !dbg !2696, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2696
  br label %146, !dbg !2697

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #10, !dbg !2698
  %38 = load i8*, i8** %4, align 8, !dbg !2698, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2698
  %40 = load i8*, i8** %39, align 8, !dbg !2698, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2698
  %42 = load i8*, i8** %41, align 8, !dbg !2698, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2698
  %44 = load i8*, i8** %43, align 8, !dbg !2698, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2698
  br label %146, !dbg !2699

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #10, !dbg !2700
  %48 = load i8*, i8** %4, align 8, !dbg !2700, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2700
  %50 = load i8*, i8** %49, align 8, !dbg !2700, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2700
  %52 = load i8*, i8** %51, align 8, !dbg !2700, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2700
  %54 = load i8*, i8** %53, align 8, !dbg !2700, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2700
  %56 = load i8*, i8** %55, align 8, !dbg !2700, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2700
  br label %146, !dbg !2701

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #10, !dbg !2702
  %60 = load i8*, i8** %4, align 8, !dbg !2702, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2702
  %62 = load i8*, i8** %61, align 8, !dbg !2702, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2702
  %64 = load i8*, i8** %63, align 8, !dbg !2702, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2702
  %66 = load i8*, i8** %65, align 8, !dbg !2702, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2702
  %68 = load i8*, i8** %67, align 8, !dbg !2702, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2702
  %70 = load i8*, i8** %69, align 8, !dbg !2702, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2702
  br label %146, !dbg !2703

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #10, !dbg !2704
  %74 = load i8*, i8** %4, align 8, !dbg !2704, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2704
  %76 = load i8*, i8** %75, align 8, !dbg !2704, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2704
  %78 = load i8*, i8** %77, align 8, !dbg !2704, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2704
  %80 = load i8*, i8** %79, align 8, !dbg !2704, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2704
  %82 = load i8*, i8** %81, align 8, !dbg !2704, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2704
  %84 = load i8*, i8** %83, align 8, !dbg !2704, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2704
  %86 = load i8*, i8** %85, align 8, !dbg !2704, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2704
  br label %146, !dbg !2705

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #10, !dbg !2706
  %90 = load i8*, i8** %4, align 8, !dbg !2706, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2706
  %92 = load i8*, i8** %91, align 8, !dbg !2706, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2706
  %94 = load i8*, i8** %93, align 8, !dbg !2706, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2706
  %96 = load i8*, i8** %95, align 8, !dbg !2706, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2706
  %98 = load i8*, i8** %97, align 8, !dbg !2706, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2706
  %100 = load i8*, i8** %99, align 8, !dbg !2706, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2706
  %102 = load i8*, i8** %101, align 8, !dbg !2706, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2706
  %104 = load i8*, i8** %103, align 8, !dbg !2706, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2706
  br label %146, !dbg !2707

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #10, !dbg !2708
  %108 = load i8*, i8** %4, align 8, !dbg !2708, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2708
  %110 = load i8*, i8** %109, align 8, !dbg !2708, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2708
  %112 = load i8*, i8** %111, align 8, !dbg !2708, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2708
  %114 = load i8*, i8** %113, align 8, !dbg !2708, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2708
  %116 = load i8*, i8** %115, align 8, !dbg !2708, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2708
  %118 = load i8*, i8** %117, align 8, !dbg !2708, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2708
  %120 = load i8*, i8** %119, align 8, !dbg !2708, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2708
  %122 = load i8*, i8** %121, align 8, !dbg !2708, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2708
  %124 = load i8*, i8** %123, align 8, !dbg !2708, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2708
  br label %146, !dbg !2709

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #10, !dbg !2710
  %128 = load i8*, i8** %4, align 8, !dbg !2710, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2710
  %130 = load i8*, i8** %129, align 8, !dbg !2710, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2710
  %132 = load i8*, i8** %131, align 8, !dbg !2710, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2710
  %134 = load i8*, i8** %133, align 8, !dbg !2710, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2710
  %136 = load i8*, i8** %135, align 8, !dbg !2710, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2710
  %138 = load i8*, i8** %137, align 8, !dbg !2710, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2710
  %140 = load i8*, i8** %139, align 8, !dbg !2710, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2710
  %142 = load i8*, i8** %141, align 8, !dbg !2710, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2710
  %144 = load i8*, i8** %143, align 8, !dbg !2710, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2710
  br label %146, !dbg !2711

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2713 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2717, metadata !629), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2718, metadata !629), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2719, metadata !629), !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2720, metadata !629), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2721, metadata !629), !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2722, metadata !629), !dbg !2728
  br label %6, !dbg !2729

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2722, metadata !629), !dbg !2728
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2731
  %9 = load i8*, i8** %8, align 8, !dbg !2731, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2733
  %11 = add i64 %7, 1, !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2722, metadata !629), !dbg !2728
  br i1 %10, label %12, label %6, !dbg !2733, !llvm.loop !2735

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2737
  ret void, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2739 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2750, metadata !629), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2751, metadata !629), !dbg !2759
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2752, metadata !629), !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2753, metadata !629), !dbg !2761
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2754, metadata !629), !dbg !2762
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2763
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2756, metadata !629), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %11 = load i32, i32* %8, align 8, !dbg !2766
  %12 = icmp ult i32 %11, 41, !dbg !2766
  br i1 %12, label %13, label %18, !dbg !2766

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2766
  %15 = sext i32 %11 to i64, !dbg !2766
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2766
  %17 = add i32 %11, 8, !dbg !2766
  store i32 %17, i32* %8, align 8, !dbg !2766
  br label %21, !dbg !2766

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2766
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2766
  store i8* %20, i8** %10, align 8, !dbg !2766
  br label %21, !dbg !2766

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2766
  %25 = load i8*, i8** %24, align 8, !dbg !2766
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2769
  store i8* %25, i8** %26, align 16, !dbg !2770, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2771
  br i1 %27, label %30, label %28, !dbg !2772

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %29 = icmp ult i32 %22, 41, !dbg !2766
  br i1 %29, label %35, label %32, !dbg !2766

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2774
  ret void, !dbg !2774

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2766
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2766
  store i8* %34, i8** %10, align 8, !dbg !2766
  br label %40, !dbg !2766

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2766
  %37 = sext i32 %22 to i64, !dbg !2766
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2766
  %39 = add i32 %22, 8, !dbg !2766
  store i32 %39, i32* %8, align 8, !dbg !2766
  br label %40, !dbg !2766

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2766
  %44 = load i8*, i8** %43, align 8, !dbg !2766
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2769
  store i8* %44, i8** %45, align 8, !dbg !2770, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2771
  br i1 %46, label %30, label %47, !dbg !2772

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %48 = icmp ult i32 %41, 41, !dbg !2766
  br i1 %48, label %52, label %49, !dbg !2766

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2766
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2766
  store i8* %51, i8** %10, align 8, !dbg !2766
  br label %57, !dbg !2766

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2766
  %54 = sext i32 %41 to i64, !dbg !2766
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2766
  %56 = add i32 %41, 8, !dbg !2766
  store i32 %56, i32* %8, align 8, !dbg !2766
  br label %57, !dbg !2766

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2766
  %61 = load i8*, i8** %60, align 8, !dbg !2766
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2769
  store i8* %61, i8** %62, align 16, !dbg !2770, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2771
  br i1 %63, label %30, label %64, !dbg !2772

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %65 = icmp ult i32 %58, 41, !dbg !2766
  br i1 %65, label %69, label %66, !dbg !2766

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2766
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2766
  store i8* %68, i8** %10, align 8, !dbg !2766
  br label %74, !dbg !2766

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2766
  %71 = sext i32 %58 to i64, !dbg !2766
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2766
  %73 = add i32 %58, 8, !dbg !2766
  store i32 %73, i32* %8, align 8, !dbg !2766
  br label %74, !dbg !2766

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2766
  %78 = load i8*, i8** %77, align 8, !dbg !2766
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2769
  store i8* %78, i8** %79, align 8, !dbg !2770, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2771
  br i1 %80, label %30, label %81, !dbg !2772

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %82 = icmp ult i32 %75, 41, !dbg !2766
  br i1 %82, label %86, label %83, !dbg !2766

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2766
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2766
  store i8* %85, i8** %10, align 8, !dbg !2766
  br label %91, !dbg !2766

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2766
  %88 = sext i32 %75 to i64, !dbg !2766
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2766
  %90 = add i32 %75, 8, !dbg !2766
  store i32 %90, i32* %8, align 8, !dbg !2766
  br label %91, !dbg !2766

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2766
  %95 = load i8*, i8** %94, align 8, !dbg !2766
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2769
  store i8* %95, i8** %96, align 16, !dbg !2770, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2771
  br i1 %97, label %30, label %98, !dbg !2772

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %99 = icmp ult i32 %92, 41, !dbg !2766
  br i1 %99, label %103, label %100, !dbg !2766

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2766
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2766
  store i8* %102, i8** %10, align 8, !dbg !2766
  br label %108, !dbg !2766

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2766
  %105 = sext i32 %92 to i64, !dbg !2766
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2766
  %107 = add i32 %92, 8, !dbg !2766
  store i32 %107, i32* %8, align 8, !dbg !2766
  br label %108, !dbg !2766

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2766
  %111 = load i8*, i8** %110, align 8, !dbg !2766
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2769
  store i8* %111, i8** %112, align 8, !dbg !2770, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2771
  br i1 %113, label %30, label %114, !dbg !2772

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %115 = load i8*, i8** %10, align 8, !dbg !2766
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2766
  store i8* %116, i8** %10, align 8, !dbg !2766
  %117 = bitcast i8* %115 to i8**, !dbg !2766
  %118 = load i8*, i8** %117, align 8, !dbg !2766
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2769
  store i8* %118, i8** %119, align 16, !dbg !2770, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2771
  br i1 %120, label %30, label %121, !dbg !2772

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %122 = load i8*, i8** %10, align 8, !dbg !2766
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2766
  store i8* %123, i8** %10, align 8, !dbg !2766
  %124 = bitcast i8* %122 to i8**, !dbg !2766
  %125 = load i8*, i8** %124, align 8, !dbg !2766
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2769
  store i8* %125, i8** %126, align 8, !dbg !2770, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2771
  br i1 %127, label %30, label %128, !dbg !2772

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %129 = load i8*, i8** %10, align 8, !dbg !2766
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2766
  store i8* %130, i8** %10, align 8, !dbg !2766
  %131 = bitcast i8* %129 to i8**, !dbg !2766
  %132 = load i8*, i8** %131, align 8, !dbg !2766
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2769
  store i8* %132, i8** %133, align 16, !dbg !2770, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2771
  br i1 %134, label %30, label %135, !dbg !2772

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !629), !dbg !2765
  %136 = load i8*, i8** %10, align 8, !dbg !2766
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2766
  store i8* %137, i8** %10, align 8, !dbg !2766
  %138 = bitcast i8* %136 to i8**, !dbg !2766
  %139 = load i8*, i8** %138, align 8, !dbg !2766
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2769
  store i8* %139, i8** %140, align 8, !dbg !2770, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !629), !dbg !2765
  %142 = select i1 %141, i64 9, i64 10, !dbg !2772
  br label %30, !dbg !2772
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2775 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2779, metadata !629), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2780, metadata !629), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2781, metadata !629), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2782, metadata !629), !dbg !2791
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2792
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2783, metadata !629), !dbg !2793
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2794
  call void @llvm.va_start(i8* nonnull %6), !dbg !2794
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2795
  call void @llvm.va_end(i8* nonnull %6), !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2797
  ret void, !dbg !2797
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2798 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #10, !dbg !2799
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #10, !dbg !2799
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2800
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.77, i64 0, i64 0)) #10, !dbg !2800
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2801
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2801, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2803 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2807, metadata !629), !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2808, metadata !629), !dbg !2810
  %3 = udiv i64 9223372036854775807, %1, !dbg !2811
  %4 = icmp ult i64 %3, %0, !dbg !2811
  br i1 %4, label %5, label %6, !dbg !2813

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !2814
  unreachable, !dbg !2814

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2816, metadata !629) #10, !dbg !2823
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2822, metadata !629) #10, !dbg !2826
  %9 = icmp eq i8* %8, null, !dbg !2827
  %10 = icmp ne i64 %7, 0, !dbg !2829
  %11 = and i1 %10, %9, !dbg !2830
  br i1 %11, label %12, label %13, !dbg !2830

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !2831
  unreachable, !dbg !2831

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2832
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2817 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2816, metadata !629), !dbg !2833
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2822, metadata !629), !dbg !2835
  %3 = icmp eq i8* %2, null, !dbg !2836
  %4 = icmp ne i64 %0, 0, !dbg !2837
  %5 = and i1 %4, %3, !dbg !2838
  br i1 %5, label %6, label %7, !dbg !2838

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !2839
  unreachable, !dbg !2839

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2840
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2845, metadata !629), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2846, metadata !629), !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2847, metadata !629), !dbg !2850
  %4 = udiv i64 9223372036854775807, %2, !dbg !2851
  %5 = icmp ult i64 %4, %1, !dbg !2851
  br i1 %5, label %6, label %7, !dbg !2853

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !2854
  unreachable, !dbg !2854

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629) #10, !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2861, metadata !629) #10, !dbg !2864
  %9 = icmp eq i64 %8, 0, !dbg !2865
  %10 = icmp ne i8* %0, null, !dbg !2867
  %11 = and i1 %10, %9, !dbg !2868
  br i1 %11, label %12, label %13, !dbg !2868

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2869
  br label %19, !dbg !2871

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2856, metadata !629) #10, !dbg !2862
  %15 = icmp eq i8* %14, null, !dbg !2873
  %16 = icmp ne i64 %8, 0, !dbg !2875
  %17 = and i1 %16, %15, !dbg !2876
  br i1 %17, label %18, label %19, !dbg !2876

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2877
  unreachable, !dbg !2877

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2878
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2857 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2861, metadata !629), !dbg !2880
  %3 = icmp eq i64 %1, 0, !dbg !2881
  %4 = icmp ne i8* %0, null, !dbg !2882
  %5 = and i1 %4, %3, !dbg !2883
  br i1 %5, label %6, label %7, !dbg !2883

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2884
  br label %13, !dbg !2885

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2856, metadata !629), !dbg !2879
  %9 = icmp eq i8* %8, null, !dbg !2887
  %10 = icmp ne i64 %1, 0, !dbg !2888
  %11 = and i1 %10, %9, !dbg !2889
  br i1 %11, label %12, label %13, !dbg !2889

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !2890
  unreachable, !dbg !2890

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2891
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !565 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !570, metadata !629), !dbg !2892
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !571, metadata !629), !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !572, metadata !629), !dbg !2894
  %4 = load i64, i64* %1, align 8, !dbg !2895, !tbaa !1935
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !573, metadata !629), !dbg !2896
  %5 = icmp eq i8* %0, null, !dbg !2897
  br i1 %5, label %6, label %13, !dbg !2899

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2900
  br i1 %7, label %8, label %17, !dbg !2903

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !573, metadata !629), !dbg !2896
  %10 = icmp ugt i64 %2, 128, !dbg !2906
  %11 = zext i1 %10 to i64, !dbg !2906
  %12 = add nuw nsw i64 %9, %11, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !573, metadata !629), !dbg !2896
  br label %17, !dbg !2908

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2909
  %15 = icmp ugt i64 %14, %4, !dbg !2912
  br i1 %15, label %20, label %16, !dbg !2913

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2914
  unreachable, !dbg !2914

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !573, metadata !629), !dbg !2896
  store i64 %18, i64* %1, align 8, !dbg !2915, !tbaa !1935
  %19 = mul i64 %18, %2, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629) #10, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2861, metadata !629) #10, !dbg !2919
  br label %27, !dbg !2920

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2921
  %22 = add i64 %4, 1, !dbg !2922
  %23 = add i64 %22, %21, !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !573, metadata !629), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !573, metadata !629), !dbg !2896
  store i64 %23, i64* %1, align 8, !dbg !2915, !tbaa !1935
  %24 = mul i64 %23, %2, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629) #10, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2861, metadata !629) #10, !dbg !2919
  %25 = icmp eq i64 %24, 0, !dbg !2924
  br i1 %25, label %26, label %27, !dbg !2920

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2925
  br label %34, !dbg !2926

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2856, metadata !629) #10, !dbg !2917
  %30 = icmp eq i8* %29, null, !dbg !2928
  %31 = icmp ne i64 %28, 0, !dbg !2929
  %32 = and i1 %31, %30, !dbg !2930
  br i1 %32, label %33, label %34, !dbg !2930

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !2931
  unreachable, !dbg !2931

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2932
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2935, metadata !629), !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2816, metadata !629) #10, !dbg !2937
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2822, metadata !629) #10, !dbg !2940
  %3 = icmp eq i8* %2, null, !dbg !2941
  %4 = icmp ne i64 %0, 0, !dbg !2942
  %5 = and i1 %4, %3, !dbg !2943
  br i1 %5, label %6, label %7, !dbg !2943

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !2944
  unreachable, !dbg !2944

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2950, metadata !629), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2951, metadata !629), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !570, metadata !629) #10, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !571, metadata !629) #10, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !572, metadata !629) #10, !dbg !2957
  %3 = load i64, i64* %1, align 8, !dbg !2958, !tbaa !1935
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  %4 = icmp eq i8* %0, null, !dbg !2960
  br i1 %4, label %5, label %8, !dbg !2961

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  store i64 %7, i64* %1, align 8, !dbg !2964, !tbaa !1935
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2861, metadata !629) #10, !dbg !2967
  br label %17, !dbg !2968

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2969
  br i1 %9, label %11, label %10, !dbg !2970

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !2971
  unreachable, !dbg !2971

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2972
  %13 = add i64 %3, 1, !dbg !2973
  %14 = add i64 %13, %12, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !573, metadata !629) #10, !dbg !2959
  store i64 %14, i64* %1, align 8, !dbg !2964, !tbaa !1935
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2856, metadata !629) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2861, metadata !629) #10, !dbg !2967
  %15 = icmp eq i64 %14, 0, !dbg !2975
  br i1 %15, label %16, label %17, !dbg !2968

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2976
  br label %24, !dbg !2977

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2856, metadata !629) #10, !dbg !2965
  %20 = icmp eq i8* %19, null, !dbg !2979
  %21 = icmp ne i64 %18, 0, !dbg !2980
  %22 = and i1 %21, %20, !dbg !2981
  br i1 %22, label %23, label %24, !dbg !2981

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !2982
  unreachable, !dbg !2982

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2986, metadata !629), !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2816, metadata !629) #10, !dbg !2988
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2822, metadata !629) #10, !dbg !2991
  %3 = icmp eq i8* %2, null, !dbg !2992
  %4 = icmp ne i64 %0, 0, !dbg !2993
  %5 = and i1 %4, %3, !dbg !2994
  br i1 %5, label %6, label %7, !dbg !2994

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !2995
  unreachable, !dbg !2995

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2996
  ret i8* %2, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3000, metadata !629), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3001, metadata !629), !dbg !3004
  %3 = udiv i64 9223372036854775807, %1, !dbg !3005
  %4 = icmp ult i64 %3, %0, !dbg !3005
  br i1 %4, label %8, label %5, !dbg !3007

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3002, metadata !629), !dbg !3009
  %7 = icmp eq i8* %6, null, !dbg !3010
  br i1 %7, label %8, label %9, !dbg !3011

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3012
  unreachable, !dbg !3012

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3014 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3020, metadata !629), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3021, metadata !629), !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2816, metadata !629) #10, !dbg !3024
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2822, metadata !629) #10, !dbg !3027
  %4 = icmp eq i8* %3, null, !dbg !3028
  %5 = icmp ne i64 %1, 0, !dbg !3029
  %6 = and i1 %5, %4, !dbg !3030
  br i1 %6, label %7, label %8, !dbg !3030

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3031
  unreachable, !dbg !3031

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3032
  ret i8* %3, !dbg !3033
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3034 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3036, metadata !629), !dbg !3037
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !3038
  %3 = add i64 %2, 1, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3020, metadata !629) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3021, metadata !629) #10, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2816, metadata !629) #10, !dbg !3043
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2822, metadata !629) #10, !dbg !3046
  %5 = icmp eq i8* %4, null, !dbg !3047
  %6 = icmp ne i64 %3, 0, !dbg !3048
  %7 = and i1 %6, %5, !dbg !3049
  br i1 %7, label %8, label %9, !dbg !3049

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3050
  unreachable, !dbg !3050

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3051
  ret i8* %4, !dbg !3052
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3053 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3055, !tbaa !701
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.88, i64 0, i64 0), i32 5) #10, !dbg !3056
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* %2) #10, !dbg !3057
  tail call void @abort() #16, !dbg !3058
  unreachable, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xnanosleep(double) local_unnamed_addr #6 !dbg !3059 {
  %2 = alloca %struct.timespec, align 8
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !3064, metadata !629), !dbg !3072
  %3 = bitcast %struct.timespec* %2 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #10, !dbg !3073
  %4 = tail call { i64, i64 } @dtotimespec(double %0) #18, !dbg !3074
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3074
  %6 = extractvalue { i64, i64 } %4, 0, !dbg !3074
  store i64 %6, i64* %5, align 8, !dbg !3074
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3074
  %8 = extractvalue { i64, i64 } %4, 1, !dbg !3074
  store i64 %8, i64* %7, align 8, !dbg !3074
  %9 = tail call i32* @__errno_location() #18, !dbg !3075
  store i32 0, i32* %9, align 4, !dbg !3079, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.timespec* %2, i64 0, metadata !3065, metadata !629), !dbg !3080
  %10 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3081
  %11 = icmp eq i32 %10, 0, !dbg !3083
  br i1 %11, label %18, label %12, !dbg !3084

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3085

; <label>:13:                                     ; preds = %12, %15
  %14 = load i32, i32* %9, align 4, !dbg !3085, !tbaa !701
  switch i32 %14, label %18 [
    i32 4, label %15
    i32 0, label %15
  ], !dbg !3087

; <label>:15:                                     ; preds = %13, %13
  store i32 0, i32* %9, align 4, !dbg !3079, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.timespec* %2, i64 0, metadata !3065, metadata !629), !dbg !3080
  %16 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3081
  %17 = icmp eq i32 %16, 0, !dbg !3083
  br i1 %17, label %18, label %13, !dbg !3084, !llvm.loop !3088

; <label>:18:                                     ; preds = %13, %15, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %15 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #10, !dbg !3091
  ret i32 %19, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !3092 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !629), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3100, metadata !629), !dbg !3107
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !3101, metadata !629), !dbg !3108
  tail call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, i64 0, metadata !3102, metadata !629), !dbg !3109
  %6 = bitcast i8** %5 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3105, metadata !629), !dbg !3111
  %7 = tail call i32* @__errno_location() #18, !dbg !3112
  store i32 0, i32* %7, align 4, !dbg !3113, !tbaa !701
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3104, metadata !629), !dbg !3114
  %8 = call double %3(i8* %0, i8** nonnull %5) #10, !dbg !3115
  call void @llvm.dbg.value(metadata double %8, i64 0, metadata !3103, metadata !629), !dbg !3116
  %9 = load i8*, i8** %5, align 8, !dbg !3117, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3104, metadata !629), !dbg !3114
  %10 = icmp eq i8* %9, %0, !dbg !3119
  %11 = ptrtoint i8* %9 to i64, !dbg !3120
  br i1 %10, label %22, label %12, !dbg !3120

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3121
  br i1 %13, label %14, label %17, !dbg !3122

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3123, !tbaa !724
  %16 = icmp eq i8 %15, 0, !dbg !3124
  br i1 %16, label %17, label %27, !dbg !3125

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3126
  br i1 %18, label %19, label %22, !dbg !3129

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3130, !tbaa !701
  %21 = icmp ne i32 %20, 34, !dbg !3131
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3105, metadata !629), !dbg !3111
  br label %22, !dbg !3132

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3133
  br i1 %24, label %27, label %25, !dbg !3135

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3104, metadata !3136), !dbg !3114
  %26 = bitcast i8** %1 to i64*, !dbg !3137
  store i64 %11, i64* %26, align 8, !dbg !3137, !tbaa !636
  br label %27, !dbg !3138

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3139, !tbaa !719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !3140
  ret i1 %28, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3145, metadata !629), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3146, metadata !629), !dbg !3152
  %3 = icmp eq i64 %0, 0, !dbg !3153
  %4 = icmp eq i64 %1, 0, !dbg !3154
  %5 = or i1 %3, %4, !dbg !3155
  br i1 %5, label %12, label %6, !dbg !3155

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3148, metadata !629), !dbg !3157
  %8 = udiv i64 %7, %1, !dbg !3158
  %9 = icmp eq i64 %8, %0, !dbg !3160
  br i1 %9, label %12, label %10, !dbg !3161

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !3162
  store i32 12, i32* %11, align 4, !dbg !3164, !tbaa !701
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3145, metadata !629), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3146, metadata !629), !dbg !3152
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3147, metadata !629), !dbg !3166
  br label %16, !dbg !3167

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3168
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3169 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3186, metadata !629), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3187, metadata !629), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3188, metadata !629), !dbg !3197
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3189, metadata !629), !dbg !3198
  %6 = bitcast i32* %5 to i8*, !dbg !3199
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3199
  %7 = icmp eq i32* %0, null, !dbg !3200
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3186, metadata !629), !dbg !3195
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3202
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3186, metadata !629), !dbg !3195
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3190, metadata !629), !dbg !3204
  %10 = icmp ugt i64 %9, -3, !dbg !3205
  %11 = icmp ne i64 %2, 0, !dbg !3206
  %12 = and i1 %11, %10, !dbg !3207
  br i1 %12, label %13, label %18, !dbg !3207

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3208
  br i1 %14, label %18, label %15, !dbg !3209

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3210, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3192, metadata !629), !dbg !3211
  %17 = zext i8 %16 to i32, !dbg !3212
  store i32 %17, i32* %8, align 4, !dbg !3213, !tbaa !701
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3214
  ret i64 %19, !dbg !3214
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly, %struct.timespec*) local_unnamed_addr #6 !dbg !3215 {
  %3 = alloca %struct.timespec, align 8
  tail call void @llvm.dbg.value(metadata %struct.timespec* %0, i64 0, metadata !3226, metadata !629), !dbg !3235
  tail call void @llvm.dbg.value(metadata %struct.timespec* %1, i64 0, metadata !3227, metadata !629), !dbg !3236
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3237
  %5 = load i64, i64* %4, align 8, !dbg !3237, !tbaa !3239
  %6 = icmp ugt i64 %5, 999999999, !dbg !3241
  br i1 %6, label %7, label %9, !dbg !3241

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #18, !dbg !3242
  store i32 22, i32* %8, align 4, !dbg !3244, !tbaa !701
  br label %35, !dbg !3245

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 2073600, i64 0, metadata !3228, metadata !629), !dbg !3246
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3247
  %11 = load i64, i64* %10, align 8, !dbg !3247, !tbaa !3248
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3231, metadata !629), !dbg !3249
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #10, !dbg !3250
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1, !dbg !3251
  store i64 %5, i64* %13, align 8, !tbaa !3239
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3231, metadata !629), !dbg !3249
  %14 = icmp sgt i64 %11, 2073600, !dbg !3252
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  br i1 %14, label %16, label %30, !dbg !3253

; <label>:16:                                     ; preds = %9
  br label %19, !dbg !3254

; <label>:17:                                     ; preds = %19
  store i64 0, i64* %13, align 8, !tbaa !3239
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3231, metadata !629), !dbg !3249
  %18 = icmp sgt i64 %20, 4147200, !dbg !3252
  br i1 %18, label %19, label %30, !dbg !3253, !llvm.loop !3255

; <label>:19:                                     ; preds = %16, %17
  %20 = phi i64 [ %22, %17 ], [ %11, %16 ]
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !3231, metadata !629), !dbg !3249
  store i64 2073600, i64* %15, align 8, !dbg !3254, !tbaa !3248
  call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !3232, metadata !629), !dbg !3257
  %21 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3233, metadata !629), !dbg !3259
  %22 = add nsw i64 %20, -2073600, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3231, metadata !629), !dbg !3249
  %23 = icmp eq i32 %21, 0, !dbg !3261
  br i1 %23, label %17, label %24, !dbg !3263

; <label>:24:                                     ; preds = %19
  %25 = icmp eq %struct.timespec* %1, null, !dbg !3264
  br i1 %25, label %33, label %26, !dbg !3267

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3268
  %28 = load i64, i64* %27, align 8, !dbg !3269, !tbaa !3248
  %29 = add nsw i64 %28, %22, !dbg !3269
  store i64 %29, i64* %27, align 8, !dbg !3269, !tbaa !3248
  br label %33, !dbg !3270

; <label>:30:                                     ; preds = %17, %9
  %31 = phi i64 [ %11, %9 ], [ %22, %17 ]
  store i64 %31, i64* %15, align 8, !dbg !3271, !tbaa !3248
  call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !3232, metadata !629), !dbg !3257
  %32 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3272
  br label %33, !dbg !3273

; <label>:33:                                     ; preds = %26, %24, %30
  %34 = phi i32 [ %32, %30 ], [ %21, %24 ], [ %21, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #10, !dbg !3274
  br label %35

; <label>:35:                                     ; preds = %33, %7
  %36 = phi i32 [ -1, %7 ], [ %34, %33 ]
  ret i32 %36, !dbg !3275
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3276 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3321, metadata !629), !dbg !3326
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3327
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3328, metadata !629), !dbg !3332
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3334
  %4 = load i32, i32* %3, align 8, !dbg !3334, !tbaa !3335
  %5 = and i32 %4, 32, !dbg !3334
  %6 = icmp eq i32 %5, 0, !dbg !3337
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3338
  %8 = icmp ne i32 %7, 0, !dbg !3339
  br i1 %6, label %9, label %19, !dbg !3340

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3342
  %11 = xor i1 %8, true, !dbg !3343
  %12 = or i1 %10, %11, !dbg !3343
  %13 = sext i1 %8 to i32, !dbg !3343
  br i1 %12, label %22, label %14, !dbg !3343

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !3344
  %16 = load i32, i32* %15, align 4, !dbg !3344, !tbaa !701
  %17 = icmp ne i32 %16, 9, !dbg !3345
  %18 = sext i1 %17 to i32, !dbg !3346
  br label %22, !dbg !3346

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3347

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !3349
  store i32 0, i32* %21, align 4, !dbg !3351, !tbaa !701
  br label %22, !dbg !3349

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3352
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #14 !dbg !3353 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !3362, metadata !629), !dbg !3369
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3370
  br i1 %2, label %3, label %25, !dbg !3371

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3372
  br i1 %4, label %5, label %25, !dbg !3373

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !3363, metadata !629), !dbg !3375
  %7 = sitofp i64 %6 to double, !dbg !3376
  %8 = fsub double %0, %7, !dbg !3377
  %9 = fmul double %8, 1.000000e+09, !dbg !3378
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !3367, metadata !629), !dbg !3379
  %10 = fptosi double %9 to i64, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !3368, metadata !629), !dbg !3381
  %11 = sitofp i64 %10 to double, !dbg !3382
  %12 = fcmp ogt double %9, %11, !dbg !3383
  %13 = zext i1 %12 to i64, !dbg !3382
  %14 = add nsw i64 %13, %10, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3368, metadata !629), !dbg !3381
  %15 = sdiv i64 %14, 1000000000, !dbg !3385
  %16 = add nsw i64 %15, %6, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !3363, metadata !629), !dbg !3375
  %17 = srem i64 %14, 1000000000, !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3368, metadata !629), !dbg !3381
  %18 = icmp slt i64 %17, 0, !dbg !3388
  %19 = add nsw i64 %17, 1000000000, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3368, metadata !629), !dbg !3381
  %20 = ashr i64 %17, 63, !dbg !3392
  %21 = add nsw i64 %16, %20, !dbg !3392
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3368, metadata !629), !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3363, metadata !629), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3393, metadata !629), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3398, metadata !629), !dbg !3402
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !3399, metadata !629), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3399, metadata !3404), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3399, metadata !3405), !dbg !3403
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !3406
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !3406
  br label %25

; <label>:25:                                     ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3408 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3413, metadata !629), !dbg !3416
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3414, metadata !629), !dbg !3417
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3418
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3415, metadata !629), !dbg !3419
  %3 = icmp eq i8* %2, null, !dbg !3420
  br i1 %3, label %11, label %4, !dbg !3422

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0)) #15, !dbg !3423
  %6 = icmp eq i32 %5, 0, !dbg !3428
  br i1 %6, label %10, label %7, !dbg !3429

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #15, !dbg !3430
  %9 = icmp eq i32 %8, 0, !dbg !3431
  br i1 %9, label %10, label %11, !dbg !3432

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3414, metadata !629), !dbg !3417
  br label %11, !dbg !3433

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3434
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3435 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3441, metadata !629), !dbg !3515
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3508, metadata !629), !dbg !3518
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3439, metadata !629), !dbg !3520
  %4 = icmp eq i8* %3, null, !dbg !3521
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3439, metadata !629), !dbg !3520
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3524, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3455, metadata !629) #10, !dbg !3525
  %7 = icmp eq i8* %6, null, !dbg !3526
  br i1 %7, label %8, label %123, !dbg !3527

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3456, metadata !629) #10, !dbg !3529
  %10 = icmp eq i8* %9, null, !dbg !3530
  br i1 %10, label %14, label %11, !dbg !3532

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3533, !tbaa !724
  %13 = icmp eq i8 %12, 0, !dbg !3534
  br i1 %13, label %14, label %15, !dbg !3535

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3536

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3456, metadata !629) #10, !dbg !3529
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3459, metadata !629) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3461, metadata !629) #10, !dbg !3539
  %18 = icmp eq i64 %17, 0, !dbg !3540
  br i1 %18, label %24, label %19, !dbg !3541

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3542
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3542
  %22 = load i8, i8* %21, align 1, !dbg !3542, !tbaa !724
  %23 = icmp ne i8 %22, 47, !dbg !3542
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3543
  %27 = add i64 %17, 14, !dbg !3544
  %28 = add i64 %27, %26, !dbg !3545
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3458, metadata !629) #10, !dbg !3547
  %30 = icmp eq i8* %29, null, !dbg !3548
  br i1 %30, label %121, label %31, !dbg !3548

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3549
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3552

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3553, !tbaa !724
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3555
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3556
  br label %37, !dbg !3557

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3555
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3556
  br label %37, !dbg !3557

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3463, metadata !629) #10, !dbg !3559
  %39 = icmp slt i32 %38, 0, !dbg !3560
  br i1 %39, label %119, label %40, !dbg !3561

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3464, metadata !629) #10, !dbg !3563
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3564
  br i1 %42, label %43, label %45, !dbg !3565

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3566
  br label %119, !dbg !3568

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3571

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3572

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3572
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3573
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3574, metadata !629) #10, !dbg !3579
  %54 = load i8*, i8** %48, align 8, !dbg !3581, !tbaa !3582
  %55 = load i8*, i8** %49, align 8, !dbg !3581, !tbaa !3583
  %56 = icmp ult i8* %54, %55, !dbg !3581
  br i1 %56, label %59, label %57, !dbg !3581, !prof !3584

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3581
  br label %63, !dbg !3581

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3581
  store i8* %60, i8** %48, align 8, !dbg !3581, !tbaa !3582
  %61 = load i8, i8* %54, align 1, !dbg !3581, !tbaa !724
  %62 = zext i8 %61 to i32, !dbg !3581
  br label %63, !dbg !3581

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3581
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3507, metadata !629) #10, !dbg !3585
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3586, !llvm.loop !3587

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3592

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3574, metadata !629) #10, !dbg !3594
  %67 = load i8*, i8** %48, align 8, !dbg !3592, !tbaa !3582
  %68 = load i8*, i8** %49, align 8, !dbg !3592, !tbaa !3583
  %69 = icmp ult i8* %67, %68, !dbg !3592
  br i1 %69, label %72, label %70, !dbg !3592, !prof !3584

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3592
  br label %76, !dbg !3592

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3592
  store i8* %73, i8** %48, align 8, !dbg !3592, !tbaa !3582
  %74 = load i8, i8* %67, align 1, !dbg !3592, !tbaa !724
  %75 = zext i8 %74 to i32, !dbg !3592
  br label %76, !dbg !3592

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3507, metadata !629) #10, !dbg !3585
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3595, !llvm.loop !3596

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3599
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3600
  %81 = icmp slt i32 %80, 2, !dbg !3602
  br i1 %81, label %112, label %82, !dbg !3603

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3512, metadata !629) #10, !dbg !3605
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3513, metadata !629) #10, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3514, metadata !629) #10, !dbg !3608
  %85 = icmp eq i64 %51, 0, !dbg !3609
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3611

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  %90 = add i64 %87, 2, !dbg !3612
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3614
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  br label %96, !dbg !3615

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  %94 = add i64 %93, 1, !dbg !3618
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  %99 = icmp eq i8* %98, null, !dbg !3620
  br i1 %99, label %100, label %102, !dbg !3622

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  call void @free(i8* %52) #10, !dbg !3623
  br label %112, !dbg !3625

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3626
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3627
  %104 = xor i64 %84, -1, !dbg !3628
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3628
  %106 = xor i64 %83, -1, !dbg !3629
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3630, metadata !629) #10, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3638, metadata !629) #10, !dbg !3639
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3641
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3630, metadata !629) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3638, metadata !629) #10, !dbg !3643
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3645
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3505, metadata !629) #10, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3506, metadata !629) #10, !dbg !3570
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3626
  br label %50, !dbg !3647, !llvm.loop !3596

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3626
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3648
  %116 = icmp eq i64 %113, 0, !dbg !3649
  br i1 %116, label %119, label %117, !dbg !3651

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3652
  store i8 0, i8* %118, align 1, !dbg !3654, !tbaa !724
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3455, metadata !629) #10, !dbg !3525
  call void @free(i8* %29) #10, !dbg !3655
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3455, metadata !629) #10, !dbg !3525
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3656, !tbaa !636
  br label %123, !dbg !3657

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3455, metadata !629) #10, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3440, metadata !629), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3440, metadata !629), !dbg !3658
  %125 = load i8, i8* %124, align 1, !dbg !3659, !tbaa !724
  %126 = icmp eq i8 %125, 0, !dbg !3661
  br i1 %126, label %152, label %127, !dbg !3662

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3663

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3440, metadata !629), !dbg !3658
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !3663
  %132 = icmp eq i32 %131, 0, !dbg !3665
  br i1 %132, label %139, label %133, !dbg !3666

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3667
  br i1 %134, label %135, label %143, !dbg !3668

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3669
  %137 = load i8, i8* %136, align 1, !dbg !3669, !tbaa !724
  %138 = icmp eq i8 %137, 0, !dbg !3670
  br i1 %138, label %139, label %143, !dbg !3671

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !3672
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3674
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3439, metadata !629), !dbg !3520
  br label %152, !dbg !3676

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !3677
  %145 = add i64 %144, 1, !dbg !3678
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3440, metadata !629), !dbg !3658
  %147 = call i64 @strlen(i8* %146) #15, !dbg !3680
  %148 = add i64 %147, 1, !dbg !3681
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3440, metadata !629), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3440, metadata !629), !dbg !3658
  %150 = load i8, i8* %149, align 1, !dbg !3659, !tbaa !724
  %151 = icmp eq i8 %150, 0, !dbg !3661
  br i1 %151, label %152, label %128, !dbg !3662, !llvm.loop !3683

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3439, metadata !629), !dbg !3520
  %154 = load i8, i8* %153, align 1, !dbg !3685, !tbaa !724
  %155 = icmp eq i8 %154, 0, !dbg !3687
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %153, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3439, metadata !629), !dbg !3520
  ret i8* %156, !dbg !3689
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3690 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3735, metadata !629), !dbg !3739
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3736, metadata !629), !dbg !3740
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3738, metadata !629), !dbg !3741
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3737, metadata !629), !dbg !3743
  %3 = icmp slt i32 %2, 0, !dbg !3744
  br i1 %3, label %4, label %6, !dbg !3746

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3747
  br label %24, !dbg !3748

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3749
  %8 = icmp eq i32 %7, 0, !dbg !3749
  br i1 %8, label %13, label %9, !dbg !3751

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3752
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3753
  %12 = icmp eq i64 %11, -1, !dbg !3754
  br i1 %12, label %16, label %13, !dbg !3755

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3756
  %15 = icmp eq i32 %14, 0, !dbg !3756
  br i1 %15, label %16, label %18, !dbg !3757

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3736, metadata !629), !dbg !3740
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3758
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3738, metadata !629), !dbg !3741
  br label %24, !dbg !3759

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !3760
  %20 = load i32, i32* %19, align 4, !dbg !3760, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3736, metadata !629), !dbg !3740
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3736, metadata !629), !dbg !3740
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3758
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3738, metadata !629), !dbg !3741
  %22 = icmp eq i32 %20, 0, !dbg !3761
  br i1 %22, label %24, label %23, !dbg !3759

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3763, !tbaa !701
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3738, metadata !629), !dbg !3741
  br label %24, !dbg !3765

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3766
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3767 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3812, metadata !629), !dbg !3813
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3814
  br i1 %2, label %6, label %3, !dbg !3816

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3817
  %5 = icmp eq i32 %4, 0, !dbg !3817
  br i1 %5, label %6, label %8, !dbg !3818

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3819
  br label %17, !dbg !3820

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3821, metadata !629) #10, !dbg !3826
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3828
  %10 = load i32, i32* %9, align 8, !dbg !3828, !tbaa !3335
  %11 = and i32 %10, 256, !dbg !3830
  %12 = icmp eq i32 %11, 0, !dbg !3830
  br i1 %12, label %15, label %13, !dbg !3831

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3832
  br label %15, !dbg !3832

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3833
  br label %17, !dbg !3834

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3835
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3882, metadata !629), !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3883, metadata !629), !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3884, metadata !629), !dbg !3890
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3891
  %5 = load i8*, i8** %4, align 8, !dbg !3891, !tbaa !3583
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3892
  %7 = load i8*, i8** %6, align 8, !dbg !3892, !tbaa !3582
  %8 = icmp eq i8* %5, %7, !dbg !3893
  br i1 %8, label %9, label %28, !dbg !3894

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3895
  %11 = load i8*, i8** %10, align 8, !dbg !3895, !tbaa !3896
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3897
  %13 = load i8*, i8** %12, align 8, !dbg !3897, !tbaa !3898
  %14 = icmp eq i8* %11, %13, !dbg !3899
  br i1 %14, label %15, label %28, !dbg !3900

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3901
  %17 = load i8*, i8** %16, align 8, !dbg !3901, !tbaa !3902
  %18 = icmp eq i8* %17, null, !dbg !3903
  br i1 %18, label %19, label %28, !dbg !3904

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3905
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3906
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3885, metadata !629), !dbg !3907
  %22 = icmp eq i64 %21, -1, !dbg !3908
  br i1 %22, label %30, label %23, !dbg !3910

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3911
  %25 = load i32, i32* %24, align 8, !dbg !3912, !tbaa !3335
  %26 = and i32 %25, -17, !dbg !3912
  store i32 %26, i32* %24, align 8, !dbg !3912, !tbaa !3335
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3913
  store i64 %21, i64* %27, align 8, !dbg !3914, !tbaa !3915
  br label %30, !dbg !3916

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3917
  br label %30, !dbg !3918

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3919
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
attributes #14 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!528, !2, !11, !44, !53, !60, !78, !86, !552, !172, !560, !577, !579, !581, !583, !585, !588, !595, !597, !610, !181, !612, !614, !616}
!llvm.ident = !{!618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618}
!llvm.module.flags = !{!619, !620, !621, !622, !623}

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
!10 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !11, file: !40, line: 51, type: !41, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !39)
!12 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !18, line: 28, size: 1856, elements: !21)
!21 = !{!22, !28, !32, !36, !37}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !20, file: !18, line: 31, baseType: !23, size: 832)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 832, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !18, line: 31, flags: DIFlagFwdDecl)
!26 = !{!27}
!27 = !DISubrange(count: 13)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !20, file: !18, line: 34, baseType: !29, size: 64, offset: 832)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !20, file: !18, line: 35, baseType: !33, size: 64, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !20, file: !18, line: 36, baseType: !33, size: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !20, file: !18, line: 39, baseType: !38, size: 832, offset: 1024)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !26)
!39 = !{!9}
!40 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!42 = !DIGlobalVariableExpression(var: !43)
!43 = distinct !DIGlobalVariable(name: "file_name", scope: !44, file: !49, line: 36, type: !6, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !46)
!45 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!46 = !{!42, !47}
!47 = !DIGlobalVariableExpression(var: !48)
!48 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !44, file: !49, line: 46, type: !50, isLocal: true, isDefinition: true)
!49 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "exit_failure", scope: !53, file: !56, line: 24, type: !57, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !55)
!54 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!51}
!56 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "long_options", scope: !60, file: !63, line: 33, type: !64, isLocal: true, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !62)
!61 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !{!58}
!63 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 768, elements: !74)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !67, line: 50, size: 256, elements: !68)
!67 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!68 = !{!69, !70, !71, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !67, line: 52, baseType: !6, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !66, file: !67, line: 55, baseType: !35, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !66, file: !67, line: 56, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !66, file: !67, line: 57, baseType: !35, size: 32, offset: 192)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "program_name", scope: !78, file: !83, line: 33, type: !6, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !80, globals: !82)
!79 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !{!81, !14}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !{!76}
!83 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !86, file: !130, line: 77, type: !166, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !123, globals: !127)
!87 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!89, !103, !108}
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !90, line: 32, size: 32, elements: !91)
!90 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!92 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!93 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!94 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!95 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!96 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!97 = !DIEnumerator(name: "c_quoting_style", value: 5)
!98 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!99 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!100 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!101 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!102 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !90, line: 242, size: 32, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!106 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!107 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 46, size: 32, elements: !110)
!109 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!111 = !DIEnumerator(name: "_ISupper", value: 256)
!112 = !DIEnumerator(name: "_ISlower", value: 512)
!113 = !DIEnumerator(name: "_ISalpha", value: 1024)
!114 = !DIEnumerator(name: "_ISdigit", value: 2048)
!115 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!116 = !DIEnumerator(name: "_ISspace", value: 8192)
!117 = !DIEnumerator(name: "_ISprint", value: 16384)
!118 = !DIEnumerator(name: "_ISgraph", value: 32768)
!119 = !DIEnumerator(name: "_ISblank", value: 1)
!120 = !DIEnumerator(name: "_IScntrl", value: 2)
!121 = !DIEnumerator(name: "_ISpunct", value: 4)
!122 = !DIEnumerator(name: "_ISalnum", value: 8)
!123 = !{!35, !31, !124, !14}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 62, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!84, !128, !135, !148, !150, !155, !162, !164}
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !86, file: !130, line: 93, type: !131, isLocal: false, isDefinition: true)
!130 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 320, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!133 = !{!134}
!134 = !DISubrange(count: 10)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !86, file: !130, line: 1043, type: !137, isLocal: false, isDefinition: true)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !130, line: 57, size: 448, elements: !138)
!138 = !{!139, !140, !141, !146, !147}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !137, file: !130, line: 60, baseType: !89, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !130, line: 63, baseType: !35, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !137, file: !130, line: 67, baseType: !142, size: 256, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !144)
!143 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !137, file: !130, line: 70, baseType: !6, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !137, file: !130, line: 73, baseType: !6, size: 64, offset: 384)
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !86, file: !130, line: 108, type: !137, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "slot0", scope: !86, file: !130, line: 834, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 256)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slotvec", scope: !86, file: !130, line: 837, type: !157, isLocal: true, isDefinition: true)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !130, line: 826, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !158, file: !130, line: 828, baseType: !124, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !158, file: !130, line: 829, baseType: !14, size: 64, offset: 64)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "nslots", scope: !86, file: !130, line: 835, type: !35, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "slotvec0", scope: !86, file: !130, line: 836, type: !158, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 704, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!168 = !{!169}
!169 = !DISubrange(count: 11)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !172, file: !175, line: 26, type: !176, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !174)
!173 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!170}
!175 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 47)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !181, file: !526, line: 120, type: !527, isLocal: true, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !522, globals: !525)
!182 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!184}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !185, line: 41, size: 32, elements: !186)
!185 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!187 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!188 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!189 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!190 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!191 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!192 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!193 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!194 = !DIEnumerator(name: "DAY_1", value: 131079)
!195 = !DIEnumerator(name: "DAY_2", value: 131080)
!196 = !DIEnumerator(name: "DAY_3", value: 131081)
!197 = !DIEnumerator(name: "DAY_4", value: 131082)
!198 = !DIEnumerator(name: "DAY_5", value: 131083)
!199 = !DIEnumerator(name: "DAY_6", value: 131084)
!200 = !DIEnumerator(name: "DAY_7", value: 131085)
!201 = !DIEnumerator(name: "ABMON_1", value: 131086)
!202 = !DIEnumerator(name: "ABMON_2", value: 131087)
!203 = !DIEnumerator(name: "ABMON_3", value: 131088)
!204 = !DIEnumerator(name: "ABMON_4", value: 131089)
!205 = !DIEnumerator(name: "ABMON_5", value: 131090)
!206 = !DIEnumerator(name: "ABMON_6", value: 131091)
!207 = !DIEnumerator(name: "ABMON_7", value: 131092)
!208 = !DIEnumerator(name: "ABMON_8", value: 131093)
!209 = !DIEnumerator(name: "ABMON_9", value: 131094)
!210 = !DIEnumerator(name: "ABMON_10", value: 131095)
!211 = !DIEnumerator(name: "ABMON_11", value: 131096)
!212 = !DIEnumerator(name: "ABMON_12", value: 131097)
!213 = !DIEnumerator(name: "MON_1", value: 131098)
!214 = !DIEnumerator(name: "MON_2", value: 131099)
!215 = !DIEnumerator(name: "MON_3", value: 131100)
!216 = !DIEnumerator(name: "MON_4", value: 131101)
!217 = !DIEnumerator(name: "MON_5", value: 131102)
!218 = !DIEnumerator(name: "MON_6", value: 131103)
!219 = !DIEnumerator(name: "MON_7", value: 131104)
!220 = !DIEnumerator(name: "MON_8", value: 131105)
!221 = !DIEnumerator(name: "MON_9", value: 131106)
!222 = !DIEnumerator(name: "MON_10", value: 131107)
!223 = !DIEnumerator(name: "MON_11", value: 131108)
!224 = !DIEnumerator(name: "MON_12", value: 131109)
!225 = !DIEnumerator(name: "AM_STR", value: 131110)
!226 = !DIEnumerator(name: "PM_STR", value: 131111)
!227 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!228 = !DIEnumerator(name: "D_FMT", value: 131113)
!229 = !DIEnumerator(name: "T_FMT", value: 131114)
!230 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!231 = !DIEnumerator(name: "ERA", value: 131116)
!232 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!233 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!234 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!235 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!236 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!237 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!238 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!239 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!240 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!241 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!242 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!243 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!244 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!245 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!246 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!247 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!248 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!249 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!250 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!251 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!252 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!253 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!254 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!255 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!256 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!257 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!258 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!259 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!260 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!261 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!262 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!263 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!264 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!265 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!266 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!267 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!268 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!269 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!270 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!271 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!272 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!273 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!274 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!275 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!276 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!277 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!278 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!279 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!280 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!281 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!282 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!283 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!284 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!285 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!286 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!287 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!288 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!291 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!292 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!293 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!294 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!295 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!296 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!297 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!298 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!299 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!300 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!301 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!302 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!303 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!304 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!305 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!306 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!307 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!308 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!309 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!310 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!311 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!312 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!313 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!314 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!315 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!316 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!317 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!318 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!319 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!320 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!321 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!322 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!323 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!324 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!325 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!327 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!329 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!330 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!331 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!332 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!333 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!334 = !DIEnumerator(name: "CODESET", value: 14)
!335 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!336 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!337 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!338 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!390 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!391 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!406 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!407 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!408 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!409 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!410 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!411 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!412 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!413 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!414 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!415 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!416 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!417 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!418 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!419 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!420 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!421 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!422 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!423 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!424 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!425 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!426 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!427 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!428 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!445 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!446 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!449 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!450 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!451 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!452 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!453 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!454 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!455 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!456 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!457 = !DIEnumerator(name: "THOUSEP", value: 65537)
!458 = !DIEnumerator(name: "__GROUPING", value: 65538)
!459 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!460 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!461 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!462 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!463 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!464 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!465 = !DIEnumerator(name: "__YESSTR", value: 327682)
!466 = !DIEnumerator(name: "__NOSTR", value: 327683)
!467 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!468 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!469 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!470 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!471 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!472 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!473 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!474 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!475 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!476 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!477 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!479 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!480 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!481 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!484 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!486 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!489 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!490 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!491 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!492 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!493 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!494 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!495 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!496 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!497 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!498 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!499 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!500 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!501 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!502 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!503 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!520 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!521 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!522 = !{!81, !14, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!525 = !{!179}
!526 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530, globals: !531)
!529 = !DIFile(filename: "src/sleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !{!6, !81}
!531 = !{!532}
!532 = !DIGlobalVariableExpression(var: !533)
!533 = distinct !DIGlobalVariable(name: "infomap", scope: !534, file: !535, line: 632, type: !549, isLocal: true, isDefinition: true)
!534 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !535, file: !535, line: 630, type: !536, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !538)
!535 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !DISubroutineType(types: !537)
!537 = !{null, !6}
!538 = !{!539, !540, !541, !548}
!539 = !DILocalVariable(name: "program", arg: 1, scope: !534, file: !535, line: 630, type: !6)
!540 = !DILocalVariable(name: "node", scope: !534, file: !535, line: 642, type: !6)
!541 = !DILocalVariable(name: "map_prog", scope: !534, file: !535, line: 643, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !534, file: !535, line: 632, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !544, file: !535, line: 632, baseType: !6, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !535, line: 632, baseType: !6, size: 64, offset: 64)
!548 = !DILocalVariable(name: "lc_messages", scope: !534, file: !535, line: 655, type: !6)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 896, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 7)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554, retainedTypes: !559)
!553 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !556, line: 41, size: 32, elements: !557)
!556 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!558}
!558 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!559 = !{!81}
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !562, retainedTypes: !576)
!561 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = !{!563}
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !565, file: !564, line: 192, size: 32, elements: !574)
!564 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DISubprogram(name: "x2nrealloc", scope: !564, file: !564, line: 180, type: !566, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !569)
!566 = !DISubroutineType(types: !567)
!567 = !{!81, !81, !568, !124}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "p", arg: 1, scope: !565, file: !564, line: 180, type: !81)
!571 = !DILocalVariable(name: "pn", arg: 2, scope: !565, file: !564, line: 180, type: !568)
!572 = !DILocalVariable(name: "s", arg: 3, scope: !565, file: !564, line: 180, type: !124)
!573 = !DILocalVariable(name: "n", scope: !565, file: !564, line: 182, type: !124)
!574 = !{!575}
!575 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!576 = !{!124, !14, !81}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!578 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!580 = !DIFile(filename: "./lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !559)
!582 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !559)
!584 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!586 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!124}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !590)
!589 = !DIFile(filename: "./lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!591}
!591 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !592, line: 41, size: 32, elements: !593)
!592 = !DIFile(filename: "lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!594}
!594 = !DIEnumerator(name: "BILLION", value: 1000000000)
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!596 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !604)
!598 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !601, line: 35, size: 32, elements: !602)
!601 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = !{!603}
!603 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !606, line: 7, baseType: !607)
!606 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !608, line: 148, baseType: !609)
!608 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!611 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!613 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !559)
!615 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !559)
!617 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!619 = !{i32 2, !"Dwarf Version", i32 4}
!620 = !{i32 2, !"Debug Info Version", i32 3}
!621 = !{i32 1, !"wchar_size", i32 4}
!622 = !{i32 7, !"PIC Level", i32 2}
!623 = !{i32 7, !"PIE Level", i32 2}
!624 = distinct !DISubprogram(name: "usage", scope: !529, file: !529, line: 39, type: !625, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !528, variables: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !35}
!627 = !{!628}
!628 = !DILocalVariable(name: "status", arg: 1, scope: !624, file: !529, line: 39, type: !35)
!629 = !DIExpression()
!630 = !DILocation(line: 39, column: 12, scope: !624)
!631 = !DILocation(line: 41, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !529, line: 41, column: 7)
!633 = !DILocation(line: 41, column: 7, scope: !624)
!634 = !DILocation(line: 42, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !529, line: 42, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 45, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !529, line: 44, column: 5)
!642 = !DILocation(line: 56, column: 7, scope: !641)
!643 = !DILocation(line: 57, column: 7, scope: !641)
!644 = !DILocation(line: 642, column: 15, scope: !534, inlinedAt: !645)
!645 = distinct !DILocation(line: 58, column: 7, scope: !641)
!646 = !DILocation(line: 651, column: 3, scope: !534, inlinedAt: !645)
!647 = !DILocation(line: 655, column: 29, scope: !534, inlinedAt: !645)
!648 = !DILocation(line: 655, column: 15, scope: !534, inlinedAt: !645)
!649 = !DILocation(line: 656, column: 7, scope: !650, inlinedAt: !645)
!650 = distinct !DILexicalBlock(scope: !534, file: !535, line: 656, column: 7)
!651 = !DILocation(line: 656, column: 19, scope: !650, inlinedAt: !645)
!652 = !DILocation(line: 656, column: 22, scope: !650, inlinedAt: !645)
!653 = !DILocation(line: 656, column: 7, scope: !534, inlinedAt: !645)
!654 = !DILocation(line: 662, column: 7, scope: !655, inlinedAt: !645)
!655 = distinct !DILexicalBlock(scope: !650, file: !535, line: 657, column: 5)
!656 = !DILocation(line: 664, column: 5, scope: !655, inlinedAt: !645)
!657 = !DILocation(line: 665, column: 3, scope: !534, inlinedAt: !645)
!658 = !DILocation(line: 667, column: 3, scope: !534, inlinedAt: !645)
!659 = !DILocation(line: 60, column: 3, scope: !624)
!660 = distinct !DISubprogram(name: "main", scope: !529, file: !529, line: 99, type: !661, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!35, !35, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!664 = !{!665, !666, !667, !668, !670, !671, !675}
!665 = !DILocalVariable(name: "argc", arg: 1, scope: !660, file: !529, line: 99, type: !35)
!666 = !DILocalVariable(name: "argv", arg: 2, scope: !660, file: !529, line: 99, type: !663)
!667 = !DILocalVariable(name: "i", scope: !660, file: !529, line: 101, type: !35)
!668 = !DILocalVariable(name: "seconds", scope: !660, file: !529, line: 102, type: !669)
!669 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!670 = !DILocalVariable(name: "ok", scope: !660, file: !529, line: 103, type: !50)
!671 = !DILocalVariable(name: "s", scope: !672, file: !529, line: 126, type: !669)
!672 = distinct !DILexicalBlock(scope: !673, file: !529, line: 125, column: 5)
!673 = distinct !DILexicalBlock(scope: !674, file: !529, line: 124, column: 3)
!674 = distinct !DILexicalBlock(scope: !660, file: !529, line: 124, column: 3)
!675 = !DILocalVariable(name: "p", scope: !672, file: !529, line: 127, type: !6)
!676 = !DILocation(line: 99, column: 11, scope: !660)
!677 = !DILocation(line: 99, column: 24, scope: !660)
!678 = !DILocation(line: 102, column: 10, scope: !660)
!679 = !DILocation(line: 103, column: 8, scope: !660)
!680 = !DILocation(line: 106, column: 21, scope: !660)
!681 = !DILocation(line: 106, column: 3, scope: !660)
!682 = !DILocation(line: 107, column: 3, scope: !660)
!683 = !DILocation(line: 108, column: 3, scope: !660)
!684 = !DILocation(line: 109, column: 3, scope: !660)
!685 = !DILocation(line: 111, column: 3, scope: !660)
!686 = !DILocation(line: 113, column: 63, scope: !660)
!687 = !DILocation(line: 113, column: 3, scope: !660)
!688 = !DILocation(line: 115, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !660, file: !529, line: 115, column: 7)
!690 = !DILocation(line: 115, column: 48, scope: !689)
!691 = !DILocation(line: 115, column: 7, scope: !660)
!692 = !DILocation(line: 116, column: 5, scope: !689)
!693 = !DILocation(line: 118, column: 12, scope: !694)
!694 = distinct !DILexicalBlock(scope: !660, file: !529, line: 118, column: 7)
!695 = !DILocation(line: 118, column: 7, scope: !660)
!696 = !DILocation(line: 120, column: 20, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !529, line: 119, column: 5)
!698 = !DILocation(line: 120, column: 7, scope: !697)
!699 = !DILocation(line: 121, column: 7, scope: !697)
!700 = !DILocation(line: 124, column: 12, scope: !674)
!701 = !{!702, !702, i64 0}
!702 = !{!"int", !638, i64 0}
!703 = !DILocation(line: 101, column: 7, scope: !660)
!704 = !DILocation(line: 124, column: 22, scope: !673)
!705 = !DILocation(line: 124, column: 3, scope: !674)
!706 = !DILocation(line: 126, column: 7, scope: !672)
!707 = !DILocation(line: 127, column: 7, scope: !672)
!708 = !DILocation(line: 128, column: 23, scope: !709)
!709 = distinct !DILexicalBlock(scope: !672, file: !529, line: 128, column: 11)
!710 = !DILocation(line: 126, column: 14, scope: !672)
!711 = !DILocation(line: 127, column: 19, scope: !672)
!712 = !DILocation(line: 128, column: 14, scope: !709)
!713 = !DILocation(line: 128, column: 50, scope: !709)
!714 = !DILocation(line: 128, column: 53, scope: !709)
!715 = !DILocation(line: 128, column: 59, scope: !709)
!716 = !DILocation(line: 130, column: 22, scope: !709)
!717 = !DILocation(line: 130, column: 19, scope: !709)
!718 = !DILocation(line: 130, column: 11, scope: !709)
!719 = !{!720, !720, i64 0}
!720 = !{!"double", !638, i64 0}
!721 = !DILocation(line: 132, column: 11, scope: !709)
!722 = !DILocation(line: 132, column: 16, scope: !709)
!723 = !DILocation(line: 132, column: 15, scope: !709)
!724 = !{!638, !638, i64 0}
!725 = !DILocation(line: 132, column: 18, scope: !709)
!726 = !DILocation(line: 132, column: 24, scope: !709)
!727 = !DILocation(line: 132, column: 21, scope: !709)
!728 = !DILocation(line: 134, column: 11, scope: !709)
!729 = !DILocalVariable(name: "x", arg: 1, scope: !730, file: !529, line: 70, type: !733)
!730 = distinct !DISubprogram(name: "apply_suffix", scope: !529, file: !529, line: 70, type: !731, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !734)
!731 = !DISubroutineType(types: !732)
!732 = !{!50, !733, !8}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!734 = !{!729, !735, !736}
!735 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !730, file: !529, line: 70, type: !8)
!736 = !DILocalVariable(name: "multiplier", scope: !730, file: !529, line: 72, type: !35)
!737 = !DILocation(line: 70, column: 23, scope: !730, inlinedAt: !738)
!738 = distinct !DILocation(line: 134, column: 16, scope: !709)
!739 = !DILocation(line: 70, column: 31, scope: !730, inlinedAt: !738)
!740 = !DILocation(line: 74, column: 11, scope: !730, inlinedAt: !738)
!741 = !DILocation(line: 74, column: 3, scope: !730, inlinedAt: !738)
!742 = !DILocation(line: 72, column: 7, scope: !730, inlinedAt: !738)
!743 = !DILocation(line: 82, column: 7, scope: !744, inlinedAt: !738)
!744 = distinct !DILexicalBlock(scope: !730, file: !529, line: 75, column: 5)
!745 = !DILocation(line: 85, column: 7, scope: !744, inlinedAt: !738)
!746 = !DILocation(line: 88, column: 7, scope: !744, inlinedAt: !738)
!747 = !DILocation(line: 93, column: 6, scope: !730, inlinedAt: !738)
!748 = !DILocation(line: 128, column: 11, scope: !672)
!749 = !DILocation(line: 136, column: 24, scope: !750)
!750 = distinct !DILexicalBlock(scope: !709, file: !529, line: 135, column: 9)
!751 = !DILocation(line: 136, column: 62, scope: !750)
!752 = !DILocation(line: 136, column: 55, scope: !750)
!753 = !DILocation(line: 136, column: 11, scope: !750)
!754 = !DILocation(line: 140, column: 18, scope: !672)
!755 = !DILocation(line: 138, column: 9, scope: !750)
!756 = !DILocation(line: 140, column: 15, scope: !672)
!757 = !DILocation(line: 141, column: 5, scope: !673)
!758 = !DILocation(line: 124, column: 31, scope: !673)
!759 = distinct !{!759, !705, !760}
!760 = !DILocation(line: 141, column: 5, scope: !674)
!761 = !DILocation(line: 143, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !660, file: !529, line: 143, column: 7)
!763 = !DILocation(line: 143, column: 7, scope: !660)
!764 = !DILocation(line: 144, column: 5, scope: !762)
!765 = !DILocation(line: 146, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !660, file: !529, line: 146, column: 7)
!767 = !DILocation(line: 146, column: 7, scope: !660)
!768 = !DILocation(line: 147, column: 5, scope: !766)
!769 = !DILocation(line: 149, column: 3, scope: !660)
!770 = distinct !DISubprogram(name: "c_strtod", scope: !40, file: !40, line: 66, type: !771, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!669, !6, !663}
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "nptr", arg: 1, scope: !770, file: !40, line: 66, type: !6)
!775 = !DILocalVariable(name: "endptr", arg: 2, scope: !770, file: !40, line: 66, type: !663)
!776 = !DILocalVariable(name: "r", scope: !770, file: !40, line: 68, type: !669)
!777 = !DILocalVariable(name: "locale", scope: !770, file: !40, line: 72, type: !15)
!778 = !DILocation(line: 66, column: 23, scope: !770)
!779 = !DILocation(line: 66, column: 36, scope: !770)
!780 = !DILocation(line: 58, column: 8, scope: !781, inlinedAt: !785)
!781 = distinct !DILexicalBlock(scope: !782, file: !40, line: 58, column: 7)
!782 = distinct !DISubprogram(name: "c_locale", scope: !40, file: !40, line: 56, type: !783, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !4)
!783 = !DISubroutineType(types: !784)
!784 = !{!15}
!785 = distinct !DILocation(line: 72, column: 21, scope: !770)
!786 = !DILocation(line: 58, column: 7, scope: !782, inlinedAt: !785)
!787 = !DILocation(line: 59, column: 22, scope: !781, inlinedAt: !785)
!788 = !DILocation(line: 59, column: 20, scope: !781, inlinedAt: !785)
!789 = !DILocation(line: 59, column: 5, scope: !781, inlinedAt: !785)
!790 = !DILocation(line: 60, column: 10, scope: !782, inlinedAt: !785)
!791 = !DILocation(line: 72, column: 12, scope: !770)
!792 = !DILocation(line: 73, column: 8, scope: !793)
!793 = distinct !DILexicalBlock(scope: !770, file: !40, line: 73, column: 7)
!794 = !DILocation(line: 73, column: 7, scope: !770)
!795 = !DILocation(line: 75, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !40, line: 75, column: 11)
!797 = distinct !DILexicalBlock(scope: !793, file: !40, line: 74, column: 5)
!798 = !DILocation(line: 75, column: 11, scope: !797)
!799 = !DILocation(line: 76, column: 17, scope: !796)
!800 = !DILocation(line: 76, column: 9, scope: !796)
!801 = !DILocation(line: 80, column: 7, scope: !770)
!802 = !DILocation(line: 68, column: 10, scope: !770)
!803 = !DILocation(line: 111, column: 3, scope: !770)
!804 = !DILocation(line: 112, column: 1, scope: !770)
!805 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !49, file: !49, line: 41, type: !536, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !44, variables: !806)
!806 = !{!807}
!807 = !DILocalVariable(name: "file", arg: 1, scope: !805, file: !49, line: 41, type: !6)
!808 = !DILocation(line: 41, column: 41, scope: !805)
!809 = !DILocation(line: 43, column: 13, scope: !805)
!810 = !DILocation(line: 44, column: 1, scope: !805)
!811 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !49, file: !49, line: 78, type: !812, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !44, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !50}
!814 = !{!815}
!815 = !DILocalVariable(name: "ignore", arg: 1, scope: !811, file: !49, line: 78, type: !50)
!816 = !DILocation(line: 78, column: 37, scope: !811)
!817 = !DILocation(line: 80, column: 16, scope: !811)
!818 = !{!819, !819, i64 0}
!819 = !{!"_Bool", !638, i64 0}
!820 = !DILocation(line: 81, column: 1, scope: !811)
!821 = distinct !DISubprogram(name: "close_stdout", scope: !49, file: !49, line: 107, type: !822, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !44, variables: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{null}
!824 = !{!825}
!825 = !DILocalVariable(name: "write_error", scope: !826, file: !49, line: 112, type: !6)
!826 = distinct !DILexicalBlock(scope: !827, file: !49, line: 111, column: 5)
!827 = distinct !DILexicalBlock(scope: !821, file: !49, line: 109, column: 7)
!828 = !DILocation(line: 109, column: 21, scope: !827)
!829 = !DILocation(line: 109, column: 7, scope: !827)
!830 = !DILocation(line: 109, column: 29, scope: !827)
!831 = !DILocation(line: 110, column: 7, scope: !827)
!832 = !DILocation(line: 110, column: 12, scope: !827)
!833 = !{i8 0, i8 2}
!834 = !DILocation(line: 114, column: 19, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !49, line: 113, column: 11)
!836 = !DILocation(line: 110, column: 25, scope: !827)
!837 = !DILocation(line: 110, column: 28, scope: !827)
!838 = !DILocation(line: 110, column: 34, scope: !827)
!839 = !DILocation(line: 109, column: 7, scope: !821)
!840 = !DILocation(line: 112, column: 33, scope: !826)
!841 = !DILocation(line: 112, column: 19, scope: !826)
!842 = !DILocation(line: 113, column: 11, scope: !835)
!843 = !DILocation(line: 113, column: 11, scope: !826)
!844 = !DILocation(line: 114, column: 36, scope: !835)
!845 = !DILocation(line: 114, column: 9, scope: !835)
!846 = !DILocation(line: 117, column: 9, scope: !835)
!847 = !DILocation(line: 119, column: 14, scope: !826)
!848 = !DILocation(line: 119, column: 7, scope: !826)
!849 = !DILocation(line: 122, column: 22, scope: !850)
!850 = distinct !DILexicalBlock(scope: !821, file: !49, line: 122, column: 8)
!851 = !DILocation(line: 122, column: 8, scope: !850)
!852 = !DILocation(line: 122, column: 30, scope: !850)
!853 = !DILocation(line: 122, column: 8, scope: !821)
!854 = !DILocation(line: 123, column: 13, scope: !850)
!855 = !DILocation(line: 123, column: 6, scope: !850)
!856 = !DILocation(line: 124, column: 1, scope: !821)
!857 = distinct !DISubprogram(name: "parse_long_options", scope: !63, file: !63, line: 44, type: !858, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !60, variables: !861)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !35, !663, !6, !6, !6, !860, null}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870}
!862 = !DILocalVariable(name: "argc", arg: 1, scope: !857, file: !63, line: 44, type: !35)
!863 = !DILocalVariable(name: "argv", arg: 2, scope: !857, file: !63, line: 45, type: !663)
!864 = !DILocalVariable(name: "command_name", arg: 3, scope: !857, file: !63, line: 46, type: !6)
!865 = !DILocalVariable(name: "package", arg: 4, scope: !857, file: !63, line: 47, type: !6)
!866 = !DILocalVariable(name: "version", arg: 5, scope: !857, file: !63, line: 48, type: !6)
!867 = !DILocalVariable(name: "usage_func", arg: 6, scope: !857, file: !63, line: 49, type: !860)
!868 = !DILocalVariable(name: "c", scope: !857, file: !63, line: 52, type: !35)
!869 = !DILocalVariable(name: "saved_opterr", scope: !857, file: !63, line: 53, type: !35)
!870 = !DILocalVariable(name: "authors", scope: !871, file: !63, line: 71, type: !875)
!871 = distinct !DILexicalBlock(scope: !872, file: !63, line: 70, column: 11)
!872 = distinct !DILexicalBlock(scope: !873, file: !63, line: 64, column: 9)
!873 = distinct !DILexicalBlock(scope: !874, file: !63, line: 62, column: 5)
!874 = distinct !DILexicalBlock(scope: !857, file: !63, line: 60, column: 7)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !876, line: 46, baseType: !877)
!876 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !878, line: 48, baseType: !879)
!878 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !61, line: 71, baseType: !880)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 192, elements: !887)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !61, line: 71, size: 192, elements: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !881, file: !61, line: 71, baseType: !143, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !881, file: !61, line: 71, baseType: !143, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !881, file: !61, line: 71, baseType: !81, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !881, file: !61, line: 71, baseType: !81, size: 64, offset: 128)
!887 = !{!888}
!888 = !DISubrange(count: 1)
!889 = !DILocation(line: 44, column: 25, scope: !857)
!890 = !DILocation(line: 45, column: 28, scope: !857)
!891 = !DILocation(line: 46, column: 33, scope: !857)
!892 = !DILocation(line: 47, column: 33, scope: !857)
!893 = !DILocation(line: 48, column: 33, scope: !857)
!894 = !DILocation(line: 49, column: 28, scope: !857)
!895 = !DILocation(line: 55, column: 18, scope: !857)
!896 = !DILocation(line: 53, column: 7, scope: !857)
!897 = !DILocation(line: 58, column: 10, scope: !857)
!898 = !DILocation(line: 60, column: 12, scope: !874)
!899 = !DILocation(line: 61, column: 7, scope: !874)
!900 = !DILocation(line: 61, column: 15, scope: !874)
!901 = !DILocation(line: 52, column: 7, scope: !857)
!902 = !DILocation(line: 60, column: 7, scope: !857)
!903 = !DILocation(line: 66, column: 11, scope: !872)
!904 = !DILocation(line: 67, column: 11, scope: !872)
!905 = !DILocation(line: 71, column: 13, scope: !871)
!906 = !DILocation(line: 71, column: 21, scope: !871)
!907 = !DILocation(line: 72, column: 13, scope: !871)
!908 = !DILocation(line: 73, column: 29, scope: !871)
!909 = !DILocation(line: 73, column: 13, scope: !871)
!910 = !DILocation(line: 74, column: 13, scope: !871)
!911 = !DILocation(line: 84, column: 10, scope: !857)
!912 = !DILocation(line: 88, column: 10, scope: !857)
!913 = !DILocation(line: 89, column: 1, scope: !857)
!914 = distinct !DISubprogram(name: "set_program_name", scope: !83, file: !83, line: 39, type: !536, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !78, variables: !915)
!915 = !{!916, !917, !918}
!916 = !DILocalVariable(name: "argv0", arg: 1, scope: !914, file: !83, line: 39, type: !6)
!917 = !DILocalVariable(name: "slash", scope: !914, file: !83, line: 46, type: !6)
!918 = !DILocalVariable(name: "base", scope: !914, file: !83, line: 47, type: !6)
!919 = !DILocation(line: 39, column: 31, scope: !914)
!920 = !DILocation(line: 51, column: 13, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !83, line: 51, column: 7)
!922 = !DILocation(line: 51, column: 7, scope: !914)
!923 = !DILocation(line: 55, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !83, line: 52, column: 5)
!925 = !DILocation(line: 54, column: 7, scope: !924)
!926 = !DILocation(line: 56, column: 7, scope: !924)
!927 = !DILocation(line: 59, column: 11, scope: !914)
!928 = !DILocation(line: 46, column: 15, scope: !914)
!929 = !DILocation(line: 60, column: 17, scope: !914)
!930 = !DILocation(line: 60, column: 33, scope: !914)
!931 = !DILocation(line: 60, column: 11, scope: !914)
!932 = !DILocation(line: 47, column: 15, scope: !914)
!933 = !DILocation(line: 61, column: 12, scope: !934)
!934 = distinct !DILexicalBlock(scope: !914, file: !83, line: 61, column: 7)
!935 = !DILocation(line: 61, column: 20, scope: !934)
!936 = !DILocation(line: 61, column: 25, scope: !934)
!937 = !DILocation(line: 61, column: 42, scope: !934)
!938 = !DILocation(line: 61, column: 28, scope: !934)
!939 = !DILocation(line: 61, column: 61, scope: !934)
!940 = !DILocation(line: 61, column: 7, scope: !914)
!941 = !DILocation(line: 64, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !83, line: 64, column: 11)
!943 = distinct !DILexicalBlock(scope: !934, file: !83, line: 62, column: 5)
!944 = !DILocation(line: 64, column: 36, scope: !942)
!945 = !DILocation(line: 64, column: 11, scope: !943)
!946 = !DILocation(line: 66, column: 24, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !83, line: 65, column: 9)
!948 = !DILocation(line: 70, column: 41, scope: !947)
!949 = !DILocation(line: 72, column: 9, scope: !947)
!950 = !DILocation(line: 84, column: 16, scope: !914)
!951 = !DILocation(line: 90, column: 27, scope: !914)
!952 = !DILocation(line: 92, column: 1, scope: !914)
!953 = distinct !DISubprogram(name: "clone_quoting_options", scope: !130, file: !130, line: 114, type: !954, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !957)
!954 = !DISubroutineType(types: !955)
!955 = !{!956, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!957 = !{!958, !959, !960}
!958 = !DILocalVariable(name: "o", arg: 1, scope: !953, file: !130, line: 114, type: !956)
!959 = !DILocalVariable(name: "e", scope: !953, file: !130, line: 116, type: !35)
!960 = !DILocalVariable(name: "p", scope: !953, file: !130, line: 117, type: !956)
!961 = !DILocation(line: 114, column: 48, scope: !953)
!962 = !DILocation(line: 116, column: 11, scope: !953)
!963 = !DILocation(line: 116, column: 7, scope: !953)
!964 = !DILocation(line: 117, column: 40, scope: !953)
!965 = !DILocation(line: 117, column: 31, scope: !953)
!966 = !DILocation(line: 117, column: 27, scope: !953)
!967 = !DILocation(line: 119, column: 9, scope: !953)
!968 = !DILocation(line: 120, column: 3, scope: !953)
!969 = distinct !DISubprogram(name: "get_quoting_style", scope: !130, file: !130, line: 125, type: !970, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !974)
!970 = !DISubroutineType(types: !971)
!971 = !{!89, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!974 = !{!975}
!975 = !DILocalVariable(name: "o", arg: 1, scope: !969, file: !130, line: 125, type: !972)
!976 = !DILocation(line: 125, column: 50, scope: !969)
!977 = !DILocation(line: 127, column: 11, scope: !969)
!978 = !DILocation(line: 127, column: 46, scope: !969)
!979 = !{!980, !638, i64 0}
!980 = !{!"quoting_options", !638, i64 0, !702, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!981 = !DILocation(line: 127, column: 3, scope: !969)
!982 = distinct !DISubprogram(name: "set_quoting_style", scope: !130, file: !130, line: 133, type: !983, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !956, !89}
!985 = !{!986, !987}
!986 = !DILocalVariable(name: "o", arg: 1, scope: !982, file: !130, line: 133, type: !956)
!987 = !DILocalVariable(name: "s", arg: 2, scope: !982, file: !130, line: 133, type: !89)
!988 = !DILocation(line: 133, column: 44, scope: !982)
!989 = !DILocation(line: 133, column: 66, scope: !982)
!990 = !DILocation(line: 135, column: 4, scope: !982)
!991 = !DILocation(line: 135, column: 39, scope: !982)
!992 = !DILocation(line: 135, column: 45, scope: !982)
!993 = !DILocation(line: 136, column: 1, scope: !982)
!994 = distinct !DISubprogram(name: "set_char_quoting", scope: !130, file: !130, line: 144, type: !995, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!35, !956, !8, !35}
!997 = !{!998, !999, !1000, !1001, !1002, !1004, !1005}
!998 = !DILocalVariable(name: "o", arg: 1, scope: !994, file: !130, line: 144, type: !956)
!999 = !DILocalVariable(name: "c", arg: 2, scope: !994, file: !130, line: 144, type: !8)
!1000 = !DILocalVariable(name: "i", arg: 3, scope: !994, file: !130, line: 144, type: !35)
!1001 = !DILocalVariable(name: "uc", scope: !994, file: !130, line: 146, type: !524)
!1002 = !DILocalVariable(name: "p", scope: !994, file: !130, line: 147, type: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1004 = !DILocalVariable(name: "shift", scope: !994, file: !130, line: 149, type: !35)
!1005 = !DILocalVariable(name: "r", scope: !994, file: !130, line: 150, type: !35)
!1006 = !DILocation(line: 144, column: 43, scope: !994)
!1007 = !DILocation(line: 144, column: 51, scope: !994)
!1008 = !DILocation(line: 144, column: 58, scope: !994)
!1009 = !DILocation(line: 146, column: 17, scope: !994)
!1010 = !DILocation(line: 148, column: 6, scope: !994)
!1011 = !DILocation(line: 148, column: 62, scope: !994)
!1012 = !DILocation(line: 148, column: 57, scope: !994)
!1013 = !DILocation(line: 147, column: 17, scope: !994)
!1014 = !DILocation(line: 149, column: 18, scope: !994)
!1015 = !DILocation(line: 149, column: 15, scope: !994)
!1016 = !DILocation(line: 149, column: 7, scope: !994)
!1017 = !DILocation(line: 150, column: 12, scope: !994)
!1018 = !DILocation(line: 150, column: 15, scope: !994)
!1019 = !DILocation(line: 150, column: 25, scope: !994)
!1020 = !DILocation(line: 150, column: 7, scope: !994)
!1021 = !DILocation(line: 151, column: 13, scope: !994)
!1022 = !DILocation(line: 151, column: 18, scope: !994)
!1023 = !DILocation(line: 151, column: 23, scope: !994)
!1024 = !DILocation(line: 151, column: 6, scope: !994)
!1025 = !DILocation(line: 152, column: 3, scope: !994)
!1026 = distinct !DISubprogram(name: "set_quoting_flags", scope: !130, file: !130, line: 160, type: !1027, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!35, !956, !35}
!1029 = !{!1030, !1031, !1032}
!1030 = !DILocalVariable(name: "o", arg: 1, scope: !1026, file: !130, line: 160, type: !956)
!1031 = !DILocalVariable(name: "i", arg: 2, scope: !1026, file: !130, line: 160, type: !35)
!1032 = !DILocalVariable(name: "r", scope: !1026, file: !130, line: 162, type: !35)
!1033 = !DILocation(line: 160, column: 44, scope: !1026)
!1034 = !DILocation(line: 160, column: 51, scope: !1026)
!1035 = !DILocation(line: 163, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1026, file: !130, line: 163, column: 7)
!1037 = !DILocation(line: 163, column: 7, scope: !1026)
!1038 = !DILocation(line: 165, column: 10, scope: !1026)
!1039 = !{!980, !702, i64 4}
!1040 = !DILocation(line: 162, column: 7, scope: !1026)
!1041 = !DILocation(line: 166, column: 12, scope: !1026)
!1042 = !DILocation(line: 167, column: 3, scope: !1026)
!1043 = distinct !DISubprogram(name: "set_custom_quoting", scope: !130, file: !130, line: 171, type: !1044, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !956, !6, !6}
!1046 = !{!1047, !1048, !1049}
!1047 = !DILocalVariable(name: "o", arg: 1, scope: !1043, file: !130, line: 171, type: !956)
!1048 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1043, file: !130, line: 172, type: !6)
!1049 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1043, file: !130, line: 172, type: !6)
!1050 = !DILocation(line: 171, column: 45, scope: !1043)
!1051 = !DILocation(line: 172, column: 33, scope: !1043)
!1052 = !DILocation(line: 172, column: 57, scope: !1043)
!1053 = !DILocation(line: 174, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1043, file: !130, line: 174, column: 7)
!1055 = !DILocation(line: 174, column: 7, scope: !1043)
!1056 = !DILocation(line: 176, column: 6, scope: !1043)
!1057 = !DILocation(line: 176, column: 12, scope: !1043)
!1058 = !DILocation(line: 177, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1043, file: !130, line: 177, column: 7)
!1060 = !DILocation(line: 177, column: 23, scope: !1059)
!1061 = !DILocation(line: 177, column: 19, scope: !1059)
!1062 = !DILocation(line: 178, column: 5, scope: !1059)
!1063 = !DILocation(line: 179, column: 6, scope: !1043)
!1064 = !DILocation(line: 179, column: 17, scope: !1043)
!1065 = !{!980, !637, i64 40}
!1066 = !DILocation(line: 180, column: 6, scope: !1043)
!1067 = !DILocation(line: 180, column: 18, scope: !1043)
!1068 = !{!980, !637, i64 48}
!1069 = !DILocation(line: 181, column: 1, scope: !1043)
!1070 = distinct !DISubprogram(name: "quotearg_buffer", scope: !130, file: !130, line: 776, type: !1071, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!124, !14, !124, !6, !124, !972}
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1074 = !DILocalVariable(name: "buffer", arg: 1, scope: !1070, file: !130, line: 776, type: !14)
!1075 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1070, file: !130, line: 776, type: !124)
!1076 = !DILocalVariable(name: "arg", arg: 3, scope: !1070, file: !130, line: 777, type: !6)
!1077 = !DILocalVariable(name: "argsize", arg: 4, scope: !1070, file: !130, line: 777, type: !124)
!1078 = !DILocalVariable(name: "o", arg: 5, scope: !1070, file: !130, line: 778, type: !972)
!1079 = !DILocalVariable(name: "p", scope: !1070, file: !130, line: 780, type: !972)
!1080 = !DILocalVariable(name: "e", scope: !1070, file: !130, line: 781, type: !35)
!1081 = !DILocalVariable(name: "r", scope: !1070, file: !130, line: 782, type: !124)
!1082 = !DILocation(line: 776, column: 24, scope: !1070)
!1083 = !DILocation(line: 776, column: 39, scope: !1070)
!1084 = !DILocation(line: 777, column: 30, scope: !1070)
!1085 = !DILocation(line: 777, column: 42, scope: !1070)
!1086 = !DILocation(line: 778, column: 48, scope: !1070)
!1087 = !DILocation(line: 780, column: 37, scope: !1070)
!1088 = !DILocation(line: 780, column: 33, scope: !1070)
!1089 = !DILocation(line: 781, column: 11, scope: !1070)
!1090 = !DILocation(line: 781, column: 7, scope: !1070)
!1091 = !DILocation(line: 783, column: 43, scope: !1070)
!1092 = !DILocation(line: 783, column: 53, scope: !1070)
!1093 = !DILocation(line: 783, column: 60, scope: !1070)
!1094 = !DILocation(line: 784, column: 43, scope: !1070)
!1095 = !DILocation(line: 784, column: 58, scope: !1070)
!1096 = !DILocation(line: 782, column: 14, scope: !1070)
!1097 = !DILocation(line: 782, column: 10, scope: !1070)
!1098 = !DILocation(line: 785, column: 9, scope: !1070)
!1099 = !DILocation(line: 786, column: 3, scope: !1070)
!1100 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !130, file: !130, line: 248, type: !1101, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1105)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!124, !14, !124, !6, !124, !89, !35, !1103, !6, !6}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134, !1137, !1138, !1156, !1159, !1160, !1167}
!1106 = !DILocalVariable(name: "buffer", arg: 1, scope: !1100, file: !130, line: 248, type: !14)
!1107 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1100, file: !130, line: 248, type: !124)
!1108 = !DILocalVariable(name: "arg", arg: 3, scope: !1100, file: !130, line: 249, type: !6)
!1109 = !DILocalVariable(name: "argsize", arg: 4, scope: !1100, file: !130, line: 249, type: !124)
!1110 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1100, file: !130, line: 250, type: !89)
!1111 = !DILocalVariable(name: "flags", arg: 6, scope: !1100, file: !130, line: 250, type: !35)
!1112 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1100, file: !130, line: 251, type: !1103)
!1113 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1100, file: !130, line: 252, type: !6)
!1114 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1100, file: !130, line: 253, type: !6)
!1115 = !DILocalVariable(name: "i", scope: !1100, file: !130, line: 255, type: !124)
!1116 = !DILocalVariable(name: "len", scope: !1100, file: !130, line: 256, type: !124)
!1117 = !DILocalVariable(name: "orig_buffersize", scope: !1100, file: !130, line: 257, type: !124)
!1118 = !DILocalVariable(name: "quote_string", scope: !1100, file: !130, line: 258, type: !6)
!1119 = !DILocalVariable(name: "quote_string_len", scope: !1100, file: !130, line: 259, type: !124)
!1120 = !DILocalVariable(name: "backslash_escapes", scope: !1100, file: !130, line: 260, type: !50)
!1121 = !DILocalVariable(name: "unibyte_locale", scope: !1100, file: !130, line: 261, type: !50)
!1122 = !DILocalVariable(name: "elide_outer_quotes", scope: !1100, file: !130, line: 262, type: !50)
!1123 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1100, file: !130, line: 263, type: !50)
!1124 = !DILocalVariable(name: "encountered_single_quote", scope: !1100, file: !130, line: 264, type: !50)
!1125 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1100, file: !130, line: 265, type: !50)
!1126 = !DILocalVariable(name: "c", scope: !1127, file: !130, line: 394, type: !524)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !130, line: 393, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !130, line: 392, column: 3)
!1129 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 392, column: 3)
!1130 = !DILocalVariable(name: "esc", scope: !1127, file: !130, line: 395, type: !524)
!1131 = !DILocalVariable(name: "is_right_quote", scope: !1127, file: !130, line: 396, type: !50)
!1132 = !DILocalVariable(name: "escaping", scope: !1127, file: !130, line: 397, type: !50)
!1133 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1127, file: !130, line: 398, type: !50)
!1134 = !DILocalVariable(name: "m", scope: !1135, file: !130, line: 602, type: !124)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 600, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 418, column: 9)
!1137 = !DILocalVariable(name: "printable", scope: !1135, file: !130, line: 604, type: !50)
!1138 = !DILocalVariable(name: "mbstate", scope: !1139, file: !130, line: 613, type: !1141)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !130, line: 612, column: 15)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !130, line: 606, column: 17)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1142, line: 6, baseType: !1143)
!1142 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1144, line: 21, baseType: !1145)
!1144 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1144, line: 13, size: 64, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1145, file: !1144, line: 15, baseType: !35, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1145, file: !1144, line: 20, baseType: !1149, size: 32, offset: 32)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1145, file: !1144, line: 16, size: 32, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1149, file: !1144, line: 18, baseType: !143, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1149, file: !1144, line: 19, baseType: !1153, size: 32)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 4)
!1156 = !DILocalVariable(name: "w", scope: !1157, file: !130, line: 623, type: !1158)
!1157 = distinct !DILexicalBlock(scope: !1139, file: !130, line: 622, column: 19)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !125, line: 90, baseType: !35)
!1159 = !DILocalVariable(name: "bytes", scope: !1157, file: !130, line: 624, type: !124)
!1160 = !DILocalVariable(name: "j", scope: !1161, file: !130, line: 649, type: !124)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !130, line: 648, column: 27)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !130, line: 646, column: 29)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !130, line: 641, column: 23)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !130, line: 633, column: 30)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !130, line: 628, column: 30)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !130, line: 626, column: 25)
!1167 = !DILocalVariable(name: "ilim", scope: !1168, file: !130, line: 676, type: !124)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !130, line: 673, column: 15)
!1169 = distinct !DILexicalBlock(scope: !1135, file: !130, line: 672, column: 17)
!1170 = !DILocation(line: 248, column: 33, scope: !1100)
!1171 = !DILocation(line: 248, column: 48, scope: !1100)
!1172 = !DILocation(line: 249, column: 39, scope: !1100)
!1173 = !DILocation(line: 249, column: 51, scope: !1100)
!1174 = !DILocation(line: 250, column: 46, scope: !1100)
!1175 = !DILocation(line: 250, column: 65, scope: !1100)
!1176 = !DILocation(line: 251, column: 47, scope: !1100)
!1177 = !DILocation(line: 252, column: 39, scope: !1100)
!1178 = !DILocation(line: 253, column: 39, scope: !1100)
!1179 = !DILocation(line: 256, column: 10, scope: !1100)
!1180 = !DILocation(line: 257, column: 10, scope: !1100)
!1181 = !DILocation(line: 258, column: 15, scope: !1100)
!1182 = !DILocation(line: 259, column: 10, scope: !1100)
!1183 = !DILocation(line: 260, column: 8, scope: !1100)
!1184 = !DILocation(line: 261, column: 25, scope: !1100)
!1185 = !DILocation(line: 261, column: 36, scope: !1100)
!1186 = !DILocation(line: 262, column: 8, scope: !1100)
!1187 = !DILocation(line: 263, column: 8, scope: !1100)
!1188 = !DILocation(line: 264, column: 8, scope: !1100)
!1189 = !DILocation(line: 265, column: 8, scope: !1100)
!1190 = !DILocation(line: 265, column: 3, scope: !1100)
!1191 = !DILocation(line: 308, column: 3, scope: !1100)
!1192 = !DILocation(line: 315, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 309, column: 5)
!1194 = !DILocation(line: 315, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1193, file: !130, line: 315, column: 11)
!1196 = !DILocation(line: 316, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !130, line: 316, column: 9)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !130, line: 316, column: 9)
!1199 = !DILocation(line: 316, column: 9, scope: !1198)
!1200 = !DILocation(line: 354, column: 26, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !130, line: 332, column: 11)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !130, line: 331, column: 13)
!1203 = distinct !DILexicalBlock(scope: !1193, file: !130, line: 330, column: 7)
!1204 = !DILocation(line: 355, column: 27, scope: !1201)
!1205 = !DILocation(line: 356, column: 11, scope: !1201)
!1206 = !DILocation(line: 357, column: 14, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !130, line: 357, column: 13)
!1208 = !DILocation(line: 357, column: 13, scope: !1203)
!1209 = !DILocation(line: 358, column: 43, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !130, line: 358, column: 11)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !130, line: 358, column: 11)
!1212 = !DILocation(line: 358, column: 11, scope: !1211)
!1213 = !DILocation(line: 359, column: 13, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !130, line: 359, column: 13)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !130, line: 359, column: 13)
!1216 = !DILocation(line: 359, column: 13, scope: !1215)
!1217 = !DILocation(line: 358, column: 70, scope: !1210)
!1218 = distinct !{!1218, !1212, !1219}
!1219 = !DILocation(line: 359, column: 13, scope: !1211)
!1220 = !DILocation(line: 362, column: 28, scope: !1203)
!1221 = !DILocation(line: 364, column: 7, scope: !1193)
!1222 = !DILocation(line: 367, column: 7, scope: !1193)
!1223 = !DILocation(line: 370, column: 7, scope: !1193)
!1224 = !DILocation(line: 373, column: 12, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1193, file: !130, line: 373, column: 11)
!1226 = !DILocation(line: 373, column: 11, scope: !1193)
!1227 = !DILocation(line: 378, column: 12, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1193, file: !130, line: 378, column: 11)
!1229 = !DILocation(line: 378, column: 11, scope: !1193)
!1230 = !DILocation(line: 379, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !130, line: 379, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !130, line: 379, column: 9)
!1233 = !DILocation(line: 379, column: 9, scope: !1232)
!1234 = !DILocation(line: 386, column: 7, scope: !1193)
!1235 = !DILocation(line: 389, column: 7, scope: !1193)
!1236 = !DILocation(line: 255, column: 10, scope: !1100)
!1237 = !DILocation(line: 392, column: 8, scope: !1129)
!1238 = !DILocation(line: 392, column: 27, scope: !1128)
!1239 = !DILocation(line: 392, column: 19, scope: !1128)
!1240 = !DILocation(line: 392, column: 60, scope: !1128)
!1241 = !DILocation(line: 392, column: 3, scope: !1129)
!1242 = !DILocation(line: 392, column: 41, scope: !1128)
!1243 = !DILocation(line: 392, column: 48, scope: !1128)
!1244 = !DILocation(line: 396, column: 12, scope: !1127)
!1245 = !DILocation(line: 397, column: 12, scope: !1127)
!1246 = !DILocation(line: 398, column: 12, scope: !1127)
!1247 = !DILocation(line: 401, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 400, column: 11)
!1249 = !DILocation(line: 403, column: 17, scope: !1248)
!1250 = !DILocation(line: 404, column: 39, scope: !1248)
!1251 = !DILocation(line: 408, column: 32, scope: !1248)
!1252 = !DILocation(line: 404, column: 19, scope: !1248)
!1253 = !DILocation(line: 404, column: 15, scope: !1248)
!1254 = !DILocation(line: 409, column: 11, scope: !1248)
!1255 = !DILocation(line: 409, column: 26, scope: !1248)
!1256 = !DILocation(line: 409, column: 14, scope: !1248)
!1257 = !DILocation(line: 409, column: 63, scope: !1248)
!1258 = !DILocation(line: 400, column: 11, scope: !1127)
!1259 = !DILocation(line: 416, column: 11, scope: !1127)
!1260 = !DILocation(line: 394, column: 21, scope: !1127)
!1261 = !DILocation(line: 417, column: 7, scope: !1127)
!1262 = !DILocation(line: 420, column: 15, scope: !1136)
!1263 = !DILocation(line: 422, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !130, line: 422, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !130, line: 421, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 420, column: 15)
!1267 = !DILocation(line: 422, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !130, line: 422, column: 15)
!1269 = !DILocation(line: 422, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !130, line: 422, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !130, line: 422, column: 15)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !130, line: 422, column: 15)
!1273 = !DILocation(line: 422, column: 15, scope: !1271)
!1274 = !DILocation(line: 422, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !130, line: 422, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !130, line: 422, column: 15)
!1277 = !DILocation(line: 422, column: 15, scope: !1276)
!1278 = !DILocation(line: 422, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !130, line: 422, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !130, line: 422, column: 15)
!1281 = !DILocation(line: 422, column: 15, scope: !1280)
!1282 = !DILocation(line: 422, column: 15, scope: !1272)
!1283 = !DILocation(line: 422, column: 15, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !130, line: 422, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1264, file: !130, line: 422, column: 15)
!1286 = !DILocation(line: 422, column: 15, scope: !1285)
!1287 = !DILocation(line: 430, column: 19, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1265, file: !130, line: 429, column: 19)
!1289 = !DILocation(line: 430, column: 24, scope: !1288)
!1290 = !DILocation(line: 430, column: 28, scope: !1288)
!1291 = !DILocation(line: 430, column: 38, scope: !1288)
!1292 = !DILocation(line: 430, column: 48, scope: !1288)
!1293 = !DILocation(line: 430, column: 59, scope: !1288)
!1294 = !DILocation(line: 432, column: 19, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !130, line: 432, column: 19)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !130, line: 432, column: 19)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !130, line: 431, column: 17)
!1298 = !DILocation(line: 432, column: 19, scope: !1296)
!1299 = !DILocation(line: 433, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !130, line: 433, column: 19)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !130, line: 433, column: 19)
!1302 = !DILocation(line: 433, column: 19, scope: !1301)
!1303 = !DILocation(line: 434, column: 17, scope: !1297)
!1304 = !DILocation(line: 441, column: 20, scope: !1266)
!1305 = !DILocation(line: 446, column: 11, scope: !1136)
!1306 = !DILocation(line: 449, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 447, column: 13)
!1308 = !DILocation(line: 455, column: 19, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !130, line: 454, column: 19)
!1310 = !DILocation(line: 455, column: 24, scope: !1309)
!1311 = !DILocation(line: 455, column: 28, scope: !1309)
!1312 = !DILocation(line: 455, column: 38, scope: !1309)
!1313 = !DILocation(line: 455, column: 47, scope: !1309)
!1314 = !DILocation(line: 455, column: 41, scope: !1309)
!1315 = !DILocation(line: 455, column: 52, scope: !1309)
!1316 = !DILocation(line: 454, column: 19, scope: !1307)
!1317 = !DILocation(line: 456, column: 25, scope: !1309)
!1318 = !DILocation(line: 456, column: 17, scope: !1309)
!1319 = !DILocation(line: 463, column: 25, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1309, file: !130, line: 457, column: 19)
!1321 = !DILocation(line: 467, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !130, line: 467, column: 21)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !130, line: 467, column: 21)
!1324 = !DILocation(line: 467, column: 21, scope: !1323)
!1325 = !DILocation(line: 468, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !130, line: 468, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !130, line: 468, column: 21)
!1328 = !DILocation(line: 468, column: 21, scope: !1327)
!1329 = !DILocation(line: 469, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !130, line: 469, column: 21)
!1331 = distinct !DILexicalBlock(scope: !1320, file: !130, line: 469, column: 21)
!1332 = !DILocation(line: 469, column: 21, scope: !1331)
!1333 = !DILocation(line: 470, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !130, line: 470, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1320, file: !130, line: 470, column: 21)
!1336 = !DILocation(line: 470, column: 21, scope: !1335)
!1337 = !DILocation(line: 471, column: 21, scope: !1320)
!1338 = !DILocation(line: 395, column: 21, scope: !1127)
!1339 = !DILocation(line: 484, column: 31, scope: !1136)
!1340 = !DILocation(line: 485, column: 31, scope: !1136)
!1341 = !DILocation(line: 487, column: 31, scope: !1136)
!1342 = !DILocation(line: 488, column: 31, scope: !1136)
!1343 = !DILocation(line: 489, column: 31, scope: !1136)
!1344 = !DILocation(line: 492, column: 15, scope: !1136)
!1345 = !DILocation(line: 494, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !130, line: 493, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 492, column: 15)
!1348 = !DILocation(line: 501, column: 33, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 501, column: 15)
!1350 = !DILocation(line: 506, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 505, column: 15)
!1352 = !DILocation(line: 510, column: 15, scope: !1136)
!1353 = !DILocation(line: 518, column: 26, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 518, column: 15)
!1355 = !DILocation(line: 518, column: 15, scope: !1136)
!1356 = !DILocation(line: 518, column: 40, scope: !1354)
!1357 = !DILocation(line: 518, column: 47, scope: !1354)
!1358 = !DILocation(line: 522, column: 17, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 522, column: 15)
!1360 = !DILocation(line: 518, column: 18, scope: !1354)
!1361 = !DILocation(line: 518, column: 65, scope: !1354)
!1362 = !DILocation(line: 522, column: 15, scope: !1136)
!1363 = !DILocation(line: 526, column: 11, scope: !1136)
!1364 = !DILocation(line: 541, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 540, column: 15)
!1366 = !DILocation(line: 548, column: 15, scope: !1136)
!1367 = !DILocation(line: 550, column: 19, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !130, line: 549, column: 13)
!1369 = distinct !DILexicalBlock(scope: !1136, file: !130, line: 548, column: 15)
!1370 = !DILocation(line: 553, column: 19, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !130, line: 553, column: 19)
!1372 = !DILocation(line: 553, column: 35, scope: !1371)
!1373 = !DILocation(line: 553, column: 30, scope: !1371)
!1374 = !DILocation(line: 562, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !130, line: 562, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1368, file: !130, line: 562, column: 15)
!1377 = !DILocation(line: 562, column: 15, scope: !1376)
!1378 = !DILocation(line: 563, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !130, line: 563, column: 15)
!1380 = distinct !DILexicalBlock(scope: !1368, file: !130, line: 563, column: 15)
!1381 = !DILocation(line: 563, column: 15, scope: !1380)
!1382 = !DILocation(line: 564, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !130, line: 564, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1368, file: !130, line: 564, column: 15)
!1385 = !DILocation(line: 564, column: 15, scope: !1384)
!1386 = !DILocation(line: 566, column: 13, scope: !1368)
!1387 = !DILocation(line: 606, column: 17, scope: !1135)
!1388 = !DILocation(line: 602, column: 20, scope: !1135)
!1389 = !DILocation(line: 609, column: 29, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1140, file: !130, line: 607, column: 15)
!1391 = !{!1392, !1392, i64 0}
!1392 = !{!"short", !638, i64 0}
!1393 = !DILocation(line: 609, column: 27, scope: !1390)
!1394 = !DILocation(line: 604, column: 18, scope: !1135)
!1395 = !DILocation(line: 610, column: 15, scope: !1390)
!1396 = !DILocation(line: 613, column: 17, scope: !1139)
!1397 = !DILocation(line: 614, column: 17, scope: !1139)
!1398 = !DILocation(line: 618, column: 29, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1139, file: !130, line: 618, column: 21)
!1400 = !DILocation(line: 618, column: 21, scope: !1139)
!1401 = !DILocation(line: 619, column: 29, scope: !1399)
!1402 = !DILocation(line: 619, column: 19, scope: !1399)
!1403 = !DILocation(line: 621, column: 17, scope: !1139)
!1404 = distinct !{!1404, !1403, !1405}
!1405 = !DILocation(line: 667, column: 44, scope: !1139)
!1406 = !DILocation(line: 623, column: 21, scope: !1157)
!1407 = !DILocation(line: 624, column: 56, scope: !1157)
!1408 = !DILocation(line: 624, column: 50, scope: !1157)
!1409 = !DILocation(line: 625, column: 53, scope: !1157)
!1410 = !DILocation(line: 613, column: 27, scope: !1139)
!1411 = !DILocation(line: 623, column: 29, scope: !1157)
!1412 = !DILocation(line: 624, column: 36, scope: !1157)
!1413 = !DILocation(line: 624, column: 28, scope: !1157)
!1414 = !DILocation(line: 626, column: 25, scope: !1157)
!1415 = !DILocation(line: 636, column: 38, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1164, file: !130, line: 634, column: 23)
!1417 = !DILocation(line: 636, column: 48, scope: !1416)
!1418 = !DILocation(line: 636, column: 51, scope: !1416)
!1419 = !DILocation(line: 636, column: 25, scope: !1416)
!1420 = !DILocation(line: 637, column: 28, scope: !1416)
!1421 = !DILocation(line: 636, column: 34, scope: !1416)
!1422 = distinct !{!1422, !1419, !1420}
!1423 = !DILocation(line: 650, column: 43, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !130, line: 650, column: 29)
!1425 = distinct !DILexicalBlock(scope: !1161, file: !130, line: 650, column: 29)
!1426 = !DILocation(line: 647, column: 29, scope: !1162)
!1427 = !DILocation(line: 649, column: 36, scope: !1161)
!1428 = !DILocation(line: 651, column: 49, scope: !1424)
!1429 = !DILocation(line: 651, column: 39, scope: !1424)
!1430 = !DILocation(line: 651, column: 31, scope: !1424)
!1431 = !DILocation(line: 650, column: 53, scope: !1424)
!1432 = !DILocation(line: 650, column: 29, scope: !1425)
!1433 = distinct !{!1433, !1432, !1434}
!1434 = !DILocation(line: 659, column: 33, scope: !1425)
!1435 = !DILocation(line: 666, column: 19, scope: !1139)
!1436 = !DILocation(line: 662, column: 41, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1163, file: !130, line: 662, column: 29)
!1438 = !DILocation(line: 662, column: 31, scope: !1437)
!1439 = !DILocation(line: 662, column: 29, scope: !1163)
!1440 = !DILocation(line: 664, column: 27, scope: !1163)
!1441 = !DILocation(line: 667, column: 26, scope: !1139)
!1442 = !DILocation(line: 667, column: 24, scope: !1139)
!1443 = !DILocation(line: 666, column: 19, scope: !1157)
!1444 = !DILocation(line: 668, column: 15, scope: !1140)
!1445 = !DILocation(line: 670, column: 40, scope: !1135)
!1446 = !DILocation(line: 672, column: 19, scope: !1169)
!1447 = !DILocation(line: 672, column: 45, scope: !1169)
!1448 = !DILocation(line: 672, column: 23, scope: !1169)
!1449 = !DILocation(line: 676, column: 33, scope: !1168)
!1450 = !DILocation(line: 676, column: 24, scope: !1168)
!1451 = !DILocation(line: 678, column: 17, scope: !1168)
!1452 = !DILocation(line: 680, column: 43, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !130, line: 680, column: 25)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !130, line: 679, column: 19)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !130, line: 678, column: 17)
!1456 = distinct !DILexicalBlock(scope: !1168, file: !130, line: 678, column: 17)
!1457 = !DILocation(line: 682, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !130, line: 682, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !130, line: 681, column: 23)
!1460 = !DILocation(line: 682, column: 25, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !130, line: 682, column: 25)
!1462 = !DILocation(line: 682, column: 25, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !130, line: 682, column: 25)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !130, line: 682, column: 25)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !130, line: 682, column: 25)
!1466 = !DILocation(line: 682, column: 25, scope: !1464)
!1467 = !DILocation(line: 682, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !130, line: 682, column: 25)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !130, line: 682, column: 25)
!1470 = !DILocation(line: 682, column: 25, scope: !1469)
!1471 = !DILocation(line: 682, column: 25, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !130, line: 682, column: 25)
!1473 = distinct !DILexicalBlock(scope: !1465, file: !130, line: 682, column: 25)
!1474 = !DILocation(line: 682, column: 25, scope: !1473)
!1475 = !DILocation(line: 682, column: 25, scope: !1465)
!1476 = !DILocation(line: 682, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !130, line: 682, column: 25)
!1478 = distinct !DILexicalBlock(scope: !1458, file: !130, line: 682, column: 25)
!1479 = !DILocation(line: 682, column: 25, scope: !1478)
!1480 = !DILocation(line: 683, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !130, line: 683, column: 25)
!1482 = distinct !DILexicalBlock(scope: !1459, file: !130, line: 683, column: 25)
!1483 = !DILocation(line: 683, column: 25, scope: !1482)
!1484 = !DILocation(line: 684, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !130, line: 684, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1459, file: !130, line: 684, column: 25)
!1487 = !DILocation(line: 684, column: 25, scope: !1486)
!1488 = !DILocation(line: 685, column: 38, scope: !1459)
!1489 = !DILocation(line: 685, column: 33, scope: !1459)
!1490 = !DILocation(line: 686, column: 23, scope: !1459)
!1491 = !DILocation(line: 687, column: 30, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1453, file: !130, line: 687, column: 30)
!1493 = !DILocation(line: 687, column: 30, scope: !1453)
!1494 = !DILocation(line: 689, column: 25, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !130, line: 689, column: 25)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !130, line: 689, column: 25)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !130, line: 688, column: 23)
!1498 = !DILocation(line: 689, column: 25, scope: !1496)
!1499 = !DILocation(line: 691, column: 23, scope: !1497)
!1500 = !DILocation(line: 692, column: 35, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1454, file: !130, line: 692, column: 25)
!1502 = !DILocation(line: 692, column: 30, scope: !1501)
!1503 = !DILocation(line: 692, column: 25, scope: !1454)
!1504 = !DILocation(line: 694, column: 21, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !130, line: 694, column: 21)
!1506 = distinct !DILexicalBlock(scope: !1454, file: !130, line: 694, column: 21)
!1507 = !DILocation(line: 694, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !130, line: 694, column: 21)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !130, line: 694, column: 21)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !130, line: 694, column: 21)
!1511 = !DILocation(line: 694, column: 21, scope: !1509)
!1512 = !DILocation(line: 694, column: 21, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !130, line: 694, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !130, line: 694, column: 21)
!1515 = !DILocation(line: 694, column: 21, scope: !1514)
!1516 = !DILocation(line: 694, column: 21, scope: !1510)
!1517 = !DILocation(line: 695, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !130, line: 695, column: 21)
!1519 = distinct !DILexicalBlock(scope: !1454, file: !130, line: 695, column: 21)
!1520 = !DILocation(line: 695, column: 21, scope: !1519)
!1521 = !DILocation(line: 696, column: 25, scope: !1454)
!1522 = !DILocation(line: 678, column: 17, scope: !1455)
!1523 = distinct !{!1523, !1524, !1525}
!1524 = !DILocation(line: 678, column: 17, scope: !1456)
!1525 = !DILocation(line: 697, column: 19, scope: !1456)
!1526 = !DILocation(line: 704, column: 34, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 704, column: 11)
!1528 = !DILocation(line: 706, column: 14, scope: !1527)
!1529 = !DILocation(line: 707, column: 14, scope: !1527)
!1530 = !DILocation(line: 707, column: 35, scope: !1527)
!1531 = !DILocation(line: 707, column: 17, scope: !1527)
!1532 = !DILocation(line: 707, column: 53, scope: !1527)
!1533 = !DILocation(line: 707, column: 47, scope: !1527)
!1534 = !DILocation(line: 707, column: 65, scope: !1527)
!1535 = !DILocation(line: 708, column: 15, scope: !1527)
!1536 = !DILocation(line: 708, column: 11, scope: !1527)
!1537 = !DILocation(line: 704, column: 11, scope: !1127)
!1538 = !DILocation(line: 712, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 712, column: 7)
!1540 = !DILocation(line: 712, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !130, line: 712, column: 7)
!1542 = !DILocation(line: 712, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !130, line: 712, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !130, line: 712, column: 7)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !130, line: 712, column: 7)
!1546 = !DILocation(line: 712, column: 7, scope: !1544)
!1547 = !DILocation(line: 712, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !130, line: 712, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !130, line: 712, column: 7)
!1550 = !DILocation(line: 712, column: 7, scope: !1549)
!1551 = !DILocation(line: 712, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !130, line: 712, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !130, line: 712, column: 7)
!1554 = !DILocation(line: 712, column: 7, scope: !1553)
!1555 = !DILocation(line: 712, column: 7, scope: !1545)
!1556 = !DILocation(line: 712, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !130, line: 712, column: 7)
!1558 = distinct !DILexicalBlock(scope: !1539, file: !130, line: 712, column: 7)
!1559 = !DILocation(line: 712, column: 7, scope: !1558)
!1560 = !DILocation(line: 715, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !130, line: 715, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 715, column: 7)
!1563 = !DILocation(line: 715, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !130, line: 715, column: 7)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !130, line: 715, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !130, line: 715, column: 7)
!1567 = !DILocation(line: 715, column: 7, scope: !1565)
!1568 = !DILocation(line: 715, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !130, line: 715, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !130, line: 715, column: 7)
!1571 = !DILocation(line: 715, column: 7, scope: !1570)
!1572 = !DILocation(line: 715, column: 7, scope: !1566)
!1573 = !DILocation(line: 716, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !130, line: 716, column: 7)
!1575 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 716, column: 7)
!1576 = !DILocation(line: 716, column: 7, scope: !1575)
!1577 = !DILocation(line: 718, column: 13, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1127, file: !130, line: 718, column: 11)
!1579 = !DILocation(line: 718, column: 11, scope: !1127)
!1580 = !DILocation(line: 720, column: 5, scope: !1128)
!1581 = !DILocation(line: 392, column: 75, scope: !1128)
!1582 = !DILocation(line: 392, column: 3, scope: !1128)
!1583 = distinct !{!1583, !1241, !1584}
!1584 = !DILocation(line: 720, column: 5, scope: !1129)
!1585 = !DILocation(line: 722, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 722, column: 7)
!1587 = !DILocation(line: 722, column: 16, scope: !1586)
!1588 = !DILocation(line: 730, column: 51, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 730, column: 7)
!1590 = !DILocation(line: 731, column: 10, scope: !1589)
!1591 = !DILocation(line: 733, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !130, line: 733, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !130, line: 732, column: 5)
!1594 = !DILocation(line: 733, column: 11, scope: !1593)
!1595 = !DILocation(line: 734, column: 16, scope: !1592)
!1596 = !DILocation(line: 734, column: 9, scope: !1592)
!1597 = !DILocation(line: 738, column: 18, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !130, line: 738, column: 16)
!1599 = !DILocation(line: 738, column: 32, scope: !1598)
!1600 = !DILocation(line: 738, column: 29, scope: !1598)
!1601 = !DILocation(line: 747, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 747, column: 7)
!1603 = !DILocation(line: 747, column: 20, scope: !1602)
!1604 = !DILocation(line: 748, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !130, line: 748, column: 5)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !130, line: 748, column: 5)
!1607 = !DILocation(line: 748, column: 5, scope: !1606)
!1608 = !DILocation(line: 749, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !130, line: 749, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !130, line: 749, column: 7)
!1611 = !DILocation(line: 749, column: 7, scope: !1610)
!1612 = !DILocation(line: 748, column: 39, scope: !1605)
!1613 = distinct !{!1613, !1607, !1614}
!1614 = !DILocation(line: 749, column: 7, scope: !1606)
!1615 = !DILocation(line: 751, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 751, column: 7)
!1617 = !DILocation(line: 751, column: 7, scope: !1100)
!1618 = !DILocation(line: 752, column: 5, scope: !1616)
!1619 = !DILocation(line: 752, column: 17, scope: !1616)
!1620 = !DILocation(line: 758, column: 21, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1100, file: !130, line: 758, column: 7)
!1622 = !DILocation(line: 758, column: 54, scope: !1621)
!1623 = !DILocation(line: 758, column: 51, scope: !1621)
!1624 = !DILocation(line: 762, column: 42, scope: !1100)
!1625 = !DILocation(line: 760, column: 10, scope: !1100)
!1626 = !DILocation(line: 760, column: 3, scope: !1100)
!1627 = !DILocation(line: 764, column: 1, scope: !1100)
!1628 = distinct !DISubprogram(name: "gettext_quote", scope: !130, file: !130, line: 199, type: !1629, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!6, !6, !89}
!1631 = !{!1632, !1633, !1634, !1635}
!1632 = !DILocalVariable(name: "msgid", arg: 1, scope: !1628, file: !130, line: 199, type: !6)
!1633 = !DILocalVariable(name: "s", arg: 2, scope: !1628, file: !130, line: 199, type: !89)
!1634 = !DILocalVariable(name: "translation", scope: !1628, file: !130, line: 201, type: !6)
!1635 = !DILocalVariable(name: "locale_code", scope: !1628, file: !130, line: 202, type: !6)
!1636 = !DILocation(line: 199, column: 28, scope: !1628)
!1637 = !DILocation(line: 199, column: 54, scope: !1628)
!1638 = !DILocation(line: 201, column: 29, scope: !1628)
!1639 = !DILocation(line: 201, column: 15, scope: !1628)
!1640 = !DILocation(line: 204, column: 19, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1628, file: !130, line: 204, column: 7)
!1642 = !DILocation(line: 204, column: 7, scope: !1628)
!1643 = !DILocation(line: 225, column: 17, scope: !1628)
!1644 = !DILocation(line: 202, column: 15, scope: !1628)
!1645 = !DILocalVariable(name: "s2", arg: 2, scope: !1646, file: !1647, line: 160, type: !6)
!1646 = distinct !DISubprogram(name: "strcaseeq0", scope: !1647, file: !1647, line: 160, type: !1648, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1650)
!1647 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1650 = !{!1651, !1645, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1651 = !DILocalVariable(name: "s1", arg: 1, scope: !1646, file: !1647, line: 160, type: !6)
!1652 = !DILocalVariable(name: "s20", arg: 3, scope: !1646, file: !1647, line: 160, type: !8)
!1653 = !DILocalVariable(name: "s21", arg: 4, scope: !1646, file: !1647, line: 160, type: !8)
!1654 = !DILocalVariable(name: "s22", arg: 5, scope: !1646, file: !1647, line: 160, type: !8)
!1655 = !DILocalVariable(name: "s23", arg: 6, scope: !1646, file: !1647, line: 160, type: !8)
!1656 = !DILocalVariable(name: "s24", arg: 7, scope: !1646, file: !1647, line: 160, type: !8)
!1657 = !DILocalVariable(name: "s25", arg: 8, scope: !1646, file: !1647, line: 160, type: !8)
!1658 = !DILocalVariable(name: "s26", arg: 9, scope: !1646, file: !1647, line: 160, type: !8)
!1659 = !DILocalVariable(name: "s27", arg: 10, scope: !1646, file: !1647, line: 160, type: !8)
!1660 = !DILocalVariable(name: "s28", arg: 11, scope: !1646, file: !1647, line: 160, type: !8)
!1661 = !DILocation(line: 160, column: 41, scope: !1646, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 226, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1628, file: !130, line: 226, column: 7)
!1664 = !DILocation(line: 160, column: 120, scope: !1646, inlinedAt: !1662)
!1665 = !DILocation(line: 160, column: 130, scope: !1646, inlinedAt: !1662)
!1666 = !DILocation(line: 162, column: 7, scope: !1667, inlinedAt: !1662)
!1667 = distinct !DILexicalBlock(scope: !1646, file: !1647, line: 162, column: 7)
!1668 = !DILocalVariable(name: "s2", arg: 2, scope: !1669, file: !1647, line: 146, type: !6)
!1669 = distinct !DISubprogram(name: "strcaseeq1", scope: !1647, file: !1647, line: 146, type: !1670, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1672)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1672 = !{!1673, !1668, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1673 = !DILocalVariable(name: "s1", arg: 1, scope: !1669, file: !1647, line: 146, type: !6)
!1674 = !DILocalVariable(name: "s21", arg: 3, scope: !1669, file: !1647, line: 146, type: !8)
!1675 = !DILocalVariable(name: "s22", arg: 4, scope: !1669, file: !1647, line: 146, type: !8)
!1676 = !DILocalVariable(name: "s23", arg: 5, scope: !1669, file: !1647, line: 146, type: !8)
!1677 = !DILocalVariable(name: "s24", arg: 6, scope: !1669, file: !1647, line: 146, type: !8)
!1678 = !DILocalVariable(name: "s25", arg: 7, scope: !1669, file: !1647, line: 146, type: !8)
!1679 = !DILocalVariable(name: "s26", arg: 8, scope: !1669, file: !1647, line: 146, type: !8)
!1680 = !DILocalVariable(name: "s27", arg: 9, scope: !1669, file: !1647, line: 146, type: !8)
!1681 = !DILocalVariable(name: "s28", arg: 10, scope: !1669, file: !1647, line: 146, type: !8)
!1682 = !DILocation(line: 146, column: 41, scope: !1669, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 167, column: 16, scope: !1684, inlinedAt: !1662)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !1647, line: 164, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1667, file: !1647, line: 163, column: 5)
!1686 = !DILocation(line: 146, column: 110, scope: !1669, inlinedAt: !1683)
!1687 = !DILocation(line: 146, column: 120, scope: !1669, inlinedAt: !1683)
!1688 = !DILocation(line: 148, column: 7, scope: !1689, inlinedAt: !1683)
!1689 = distinct !DILexicalBlock(scope: !1669, file: !1647, line: 148, column: 7)
!1690 = !DILocalVariable(name: "s2", arg: 2, scope: !1691, file: !1647, line: 132, type: !6)
!1691 = distinct !DISubprogram(name: "strcaseeq2", scope: !1647, file: !1647, line: 132, type: !1692, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1694 = !{!1695, !1690, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1695 = !DILocalVariable(name: "s1", arg: 1, scope: !1691, file: !1647, line: 132, type: !6)
!1696 = !DILocalVariable(name: "s22", arg: 3, scope: !1691, file: !1647, line: 132, type: !8)
!1697 = !DILocalVariable(name: "s23", arg: 4, scope: !1691, file: !1647, line: 132, type: !8)
!1698 = !DILocalVariable(name: "s24", arg: 5, scope: !1691, file: !1647, line: 132, type: !8)
!1699 = !DILocalVariable(name: "s25", arg: 6, scope: !1691, file: !1647, line: 132, type: !8)
!1700 = !DILocalVariable(name: "s26", arg: 7, scope: !1691, file: !1647, line: 132, type: !8)
!1701 = !DILocalVariable(name: "s27", arg: 8, scope: !1691, file: !1647, line: 132, type: !8)
!1702 = !DILocalVariable(name: "s28", arg: 9, scope: !1691, file: !1647, line: 132, type: !8)
!1703 = !DILocation(line: 132, column: 41, scope: !1691, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 153, column: 16, scope: !1705, inlinedAt: !1683)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1647, line: 150, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1689, file: !1647, line: 149, column: 5)
!1707 = !DILocation(line: 132, column: 100, scope: !1691, inlinedAt: !1704)
!1708 = !DILocation(line: 132, column: 110, scope: !1691, inlinedAt: !1704)
!1709 = !DILocation(line: 134, column: 7, scope: !1710, inlinedAt: !1704)
!1710 = distinct !DILexicalBlock(scope: !1691, file: !1647, line: 134, column: 7)
!1711 = !DILocalVariable(name: "s2", arg: 2, scope: !1712, file: !1647, line: 118, type: !6)
!1712 = distinct !DISubprogram(name: "strcaseeq3", scope: !1647, file: !1647, line: 118, type: !1713, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8}
!1715 = !{!1716, !1711, !1717, !1718, !1719, !1720, !1721, !1722}
!1716 = !DILocalVariable(name: "s1", arg: 1, scope: !1712, file: !1647, line: 118, type: !6)
!1717 = !DILocalVariable(name: "s23", arg: 3, scope: !1712, file: !1647, line: 118, type: !8)
!1718 = !DILocalVariable(name: "s24", arg: 4, scope: !1712, file: !1647, line: 118, type: !8)
!1719 = !DILocalVariable(name: "s25", arg: 5, scope: !1712, file: !1647, line: 118, type: !8)
!1720 = !DILocalVariable(name: "s26", arg: 6, scope: !1712, file: !1647, line: 118, type: !8)
!1721 = !DILocalVariable(name: "s27", arg: 7, scope: !1712, file: !1647, line: 118, type: !8)
!1722 = !DILocalVariable(name: "s28", arg: 8, scope: !1712, file: !1647, line: 118, type: !8)
!1723 = !DILocation(line: 118, column: 41, scope: !1712, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 139, column: 16, scope: !1725, inlinedAt: !1704)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !1647, line: 136, column: 11)
!1726 = distinct !DILexicalBlock(scope: !1710, file: !1647, line: 135, column: 5)
!1727 = !DILocation(line: 118, column: 90, scope: !1712, inlinedAt: !1724)
!1728 = !DILocation(line: 118, column: 100, scope: !1712, inlinedAt: !1724)
!1729 = !DILocation(line: 120, column: 7, scope: !1730, inlinedAt: !1724)
!1730 = distinct !DILexicalBlock(scope: !1712, file: !1647, line: 120, column: 7)
!1731 = !DILocation(line: 120, column: 7, scope: !1712, inlinedAt: !1724)
!1732 = !DILocalVariable(name: "s2", arg: 2, scope: !1733, file: !1647, line: 104, type: !6)
!1733 = distinct !DISubprogram(name: "strcaseeq4", scope: !1647, file: !1647, line: 104, type: !1734, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!35, !6, !6, !8, !8, !8, !8, !8}
!1736 = !{!1737, !1732, !1738, !1739, !1740, !1741, !1742}
!1737 = !DILocalVariable(name: "s1", arg: 1, scope: !1733, file: !1647, line: 104, type: !6)
!1738 = !DILocalVariable(name: "s24", arg: 3, scope: !1733, file: !1647, line: 104, type: !8)
!1739 = !DILocalVariable(name: "s25", arg: 4, scope: !1733, file: !1647, line: 104, type: !8)
!1740 = !DILocalVariable(name: "s26", arg: 5, scope: !1733, file: !1647, line: 104, type: !8)
!1741 = !DILocalVariable(name: "s27", arg: 6, scope: !1733, file: !1647, line: 104, type: !8)
!1742 = !DILocalVariable(name: "s28", arg: 7, scope: !1733, file: !1647, line: 104, type: !8)
!1743 = !DILocation(line: 104, column: 41, scope: !1733, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 125, column: 16, scope: !1745, inlinedAt: !1724)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1647, line: 122, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1730, file: !1647, line: 121, column: 5)
!1747 = !DILocation(line: 104, column: 80, scope: !1733, inlinedAt: !1744)
!1748 = !DILocation(line: 104, column: 90, scope: !1733, inlinedAt: !1744)
!1749 = !DILocation(line: 106, column: 7, scope: !1750, inlinedAt: !1744)
!1750 = distinct !DILexicalBlock(scope: !1733, file: !1647, line: 106, column: 7)
!1751 = !DILocation(line: 106, column: 7, scope: !1733, inlinedAt: !1744)
!1752 = !DILocalVariable(name: "s2", arg: 2, scope: !1753, file: !1647, line: 90, type: !6)
!1753 = distinct !DISubprogram(name: "strcaseeq5", scope: !1647, file: !1647, line: 90, type: !1754, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!35, !6, !6, !8, !8, !8, !8}
!1756 = !{!1757, !1752, !1758, !1759, !1760, !1761}
!1757 = !DILocalVariable(name: "s1", arg: 1, scope: !1753, file: !1647, line: 90, type: !6)
!1758 = !DILocalVariable(name: "s25", arg: 3, scope: !1753, file: !1647, line: 90, type: !8)
!1759 = !DILocalVariable(name: "s26", arg: 4, scope: !1753, file: !1647, line: 90, type: !8)
!1760 = !DILocalVariable(name: "s27", arg: 5, scope: !1753, file: !1647, line: 90, type: !8)
!1761 = !DILocalVariable(name: "s28", arg: 6, scope: !1753, file: !1647, line: 90, type: !8)
!1762 = !DILocation(line: 90, column: 41, scope: !1753, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 111, column: 16, scope: !1764, inlinedAt: !1744)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1647, line: 108, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !1647, line: 107, column: 5)
!1766 = !DILocation(line: 90, column: 70, scope: !1753, inlinedAt: !1763)
!1767 = !DILocation(line: 90, column: 80, scope: !1753, inlinedAt: !1763)
!1768 = !DILocation(line: 92, column: 7, scope: !1769, inlinedAt: !1763)
!1769 = distinct !DILexicalBlock(scope: !1753, file: !1647, line: 92, column: 7)
!1770 = !DILocation(line: 92, column: 7, scope: !1753, inlinedAt: !1763)
!1771 = !DILocation(line: 227, column: 12, scope: !1663)
!1772 = !DILocation(line: 227, column: 21, scope: !1663)
!1773 = !DILocation(line: 227, column: 5, scope: !1663)
!1774 = !DILocation(line: 146, column: 41, scope: !1669, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 167, column: 16, scope: !1684, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 228, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1628, file: !130, line: 228, column: 7)
!1778 = !DILocation(line: 146, column: 110, scope: !1669, inlinedAt: !1775)
!1779 = !DILocation(line: 146, column: 120, scope: !1669, inlinedAt: !1775)
!1780 = !DILocation(line: 148, column: 7, scope: !1689, inlinedAt: !1775)
!1781 = !DILocation(line: 132, column: 41, scope: !1691, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 153, column: 16, scope: !1705, inlinedAt: !1775)
!1783 = !DILocation(line: 132, column: 100, scope: !1691, inlinedAt: !1782)
!1784 = !DILocation(line: 132, column: 110, scope: !1691, inlinedAt: !1782)
!1785 = !DILocation(line: 134, column: 7, scope: !1710, inlinedAt: !1782)
!1786 = !DILocation(line: 134, column: 7, scope: !1691, inlinedAt: !1782)
!1787 = !DILocation(line: 118, column: 41, scope: !1712, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 139, column: 16, scope: !1725, inlinedAt: !1782)
!1789 = !DILocation(line: 118, column: 90, scope: !1712, inlinedAt: !1788)
!1790 = !DILocation(line: 118, column: 100, scope: !1712, inlinedAt: !1788)
!1791 = !DILocation(line: 120, column: 7, scope: !1730, inlinedAt: !1788)
!1792 = !DILocation(line: 120, column: 7, scope: !1712, inlinedAt: !1788)
!1793 = !DILocation(line: 104, column: 41, scope: !1733, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 125, column: 16, scope: !1745, inlinedAt: !1788)
!1795 = !DILocation(line: 104, column: 80, scope: !1733, inlinedAt: !1794)
!1796 = !DILocation(line: 104, column: 90, scope: !1733, inlinedAt: !1794)
!1797 = !DILocation(line: 106, column: 7, scope: !1750, inlinedAt: !1794)
!1798 = !DILocation(line: 106, column: 7, scope: !1733, inlinedAt: !1794)
!1799 = !DILocation(line: 90, column: 41, scope: !1753, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 111, column: 16, scope: !1764, inlinedAt: !1794)
!1801 = !DILocation(line: 90, column: 70, scope: !1753, inlinedAt: !1800)
!1802 = !DILocation(line: 90, column: 80, scope: !1753, inlinedAt: !1800)
!1803 = !DILocation(line: 92, column: 7, scope: !1769, inlinedAt: !1800)
!1804 = !DILocation(line: 92, column: 7, scope: !1753, inlinedAt: !1800)
!1805 = !DILocalVariable(name: "s2", arg: 2, scope: !1806, file: !1647, line: 76, type: !6)
!1806 = distinct !DISubprogram(name: "strcaseeq6", scope: !1647, file: !1647, line: 76, type: !1807, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!35, !6, !6, !8, !8, !8}
!1809 = !{!1810, !1805, !1811, !1812, !1813}
!1810 = !DILocalVariable(name: "s1", arg: 1, scope: !1806, file: !1647, line: 76, type: !6)
!1811 = !DILocalVariable(name: "s26", arg: 3, scope: !1806, file: !1647, line: 76, type: !8)
!1812 = !DILocalVariable(name: "s27", arg: 4, scope: !1806, file: !1647, line: 76, type: !8)
!1813 = !DILocalVariable(name: "s28", arg: 5, scope: !1806, file: !1647, line: 76, type: !8)
!1814 = !DILocation(line: 76, column: 41, scope: !1806, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 97, column: 16, scope: !1816, inlinedAt: !1800)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1647, line: 94, column: 11)
!1817 = distinct !DILexicalBlock(scope: !1769, file: !1647, line: 93, column: 5)
!1818 = !DILocation(line: 76, column: 60, scope: !1806, inlinedAt: !1815)
!1819 = !DILocation(line: 76, column: 70, scope: !1806, inlinedAt: !1815)
!1820 = !DILocation(line: 78, column: 7, scope: !1821, inlinedAt: !1815)
!1821 = distinct !DILexicalBlock(scope: !1806, file: !1647, line: 78, column: 7)
!1822 = !DILocation(line: 78, column: 7, scope: !1806, inlinedAt: !1815)
!1823 = !DILocalVariable(name: "s2", arg: 2, scope: !1824, file: !1647, line: 62, type: !6)
!1824 = distinct !DISubprogram(name: "strcaseeq7", scope: !1647, file: !1647, line: 62, type: !1825, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!35, !6, !6, !8, !8}
!1827 = !{!1828, !1823, !1829, !1830}
!1828 = !DILocalVariable(name: "s1", arg: 1, scope: !1824, file: !1647, line: 62, type: !6)
!1829 = !DILocalVariable(name: "s27", arg: 3, scope: !1824, file: !1647, line: 62, type: !8)
!1830 = !DILocalVariable(name: "s28", arg: 4, scope: !1824, file: !1647, line: 62, type: !8)
!1831 = !DILocation(line: 62, column: 41, scope: !1824, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 83, column: 16, scope: !1833, inlinedAt: !1815)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1647, line: 80, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1821, file: !1647, line: 79, column: 5)
!1835 = !DILocation(line: 62, column: 50, scope: !1824, inlinedAt: !1832)
!1836 = !DILocation(line: 62, column: 60, scope: !1824, inlinedAt: !1832)
!1837 = !DILocation(line: 64, column: 7, scope: !1838, inlinedAt: !1832)
!1838 = distinct !DILexicalBlock(scope: !1824, file: !1647, line: 64, column: 7)
!1839 = !DILocation(line: 228, column: 7, scope: !1628)
!1840 = !DILocation(line: 229, column: 12, scope: !1777)
!1841 = !DILocation(line: 229, column: 21, scope: !1777)
!1842 = !DILocation(line: 229, column: 5, scope: !1777)
!1843 = !DILocation(line: 231, column: 13, scope: !1628)
!1844 = !DILocation(line: 231, column: 11, scope: !1628)
!1845 = !DILocation(line: 231, column: 3, scope: !1628)
!1846 = !DILocation(line: 232, column: 1, scope: !1628)
!1847 = distinct !DISubprogram(name: "quotearg_alloc", scope: !130, file: !130, line: 791, type: !1848, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!14, !6, !124, !972}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "arg", arg: 1, scope: !1847, file: !130, line: 791, type: !6)
!1852 = !DILocalVariable(name: "argsize", arg: 2, scope: !1847, file: !130, line: 791, type: !124)
!1853 = !DILocalVariable(name: "o", arg: 3, scope: !1847, file: !130, line: 792, type: !972)
!1854 = !DILocation(line: 791, column: 29, scope: !1847)
!1855 = !DILocation(line: 791, column: 41, scope: !1847)
!1856 = !DILocation(line: 792, column: 47, scope: !1847)
!1857 = !DILocalVariable(name: "arg", arg: 1, scope: !1858, file: !130, line: 804, type: !6)
!1858 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !130, file: !130, line: 804, type: !1859, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!14, !6, !124, !568, !972}
!1861 = !{!1857, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DILocalVariable(name: "argsize", arg: 2, scope: !1858, file: !130, line: 804, type: !124)
!1863 = !DILocalVariable(name: "size", arg: 3, scope: !1858, file: !130, line: 804, type: !568)
!1864 = !DILocalVariable(name: "o", arg: 4, scope: !1858, file: !130, line: 805, type: !972)
!1865 = !DILocalVariable(name: "p", scope: !1858, file: !130, line: 807, type: !972)
!1866 = !DILocalVariable(name: "e", scope: !1858, file: !130, line: 808, type: !35)
!1867 = !DILocalVariable(name: "flags", scope: !1858, file: !130, line: 810, type: !35)
!1868 = !DILocalVariable(name: "bufsize", scope: !1858, file: !130, line: 811, type: !124)
!1869 = !DILocalVariable(name: "buf", scope: !1858, file: !130, line: 815, type: !14)
!1870 = !DILocation(line: 804, column: 33, scope: !1858, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 794, column: 10, scope: !1847)
!1872 = !DILocation(line: 804, column: 45, scope: !1858, inlinedAt: !1871)
!1873 = !DILocation(line: 804, column: 62, scope: !1858, inlinedAt: !1871)
!1874 = !DILocation(line: 805, column: 51, scope: !1858, inlinedAt: !1871)
!1875 = !DILocation(line: 807, column: 37, scope: !1858, inlinedAt: !1871)
!1876 = !DILocation(line: 807, column: 33, scope: !1858, inlinedAt: !1871)
!1877 = !DILocation(line: 808, column: 11, scope: !1858, inlinedAt: !1871)
!1878 = !DILocation(line: 808, column: 7, scope: !1858, inlinedAt: !1871)
!1879 = !DILocation(line: 810, column: 18, scope: !1858, inlinedAt: !1871)
!1880 = !DILocation(line: 810, column: 24, scope: !1858, inlinedAt: !1871)
!1881 = !DILocation(line: 810, column: 7, scope: !1858, inlinedAt: !1871)
!1882 = !DILocation(line: 811, column: 69, scope: !1858, inlinedAt: !1871)
!1883 = !DILocation(line: 812, column: 53, scope: !1858, inlinedAt: !1871)
!1884 = !DILocation(line: 813, column: 49, scope: !1858, inlinedAt: !1871)
!1885 = !DILocation(line: 814, column: 49, scope: !1858, inlinedAt: !1871)
!1886 = !DILocation(line: 811, column: 20, scope: !1858, inlinedAt: !1871)
!1887 = !DILocation(line: 814, column: 62, scope: !1858, inlinedAt: !1871)
!1888 = !DILocation(line: 811, column: 10, scope: !1858, inlinedAt: !1871)
!1889 = !DILocalVariable(name: "n", arg: 1, scope: !1890, file: !564, line: 220, type: !124)
!1890 = distinct !DISubprogram(name: "xcharalloc", scope: !564, file: !564, line: 220, type: !1891, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!14, !124}
!1893 = !{!1889}
!1894 = !DILocation(line: 220, column: 20, scope: !1890, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 815, column: 15, scope: !1858, inlinedAt: !1871)
!1896 = !DILocation(line: 222, column: 10, scope: !1890, inlinedAt: !1895)
!1897 = !DILocation(line: 815, column: 9, scope: !1858, inlinedAt: !1871)
!1898 = !DILocation(line: 816, column: 60, scope: !1858, inlinedAt: !1871)
!1899 = !DILocation(line: 818, column: 32, scope: !1858, inlinedAt: !1871)
!1900 = !DILocation(line: 818, column: 47, scope: !1858, inlinedAt: !1871)
!1901 = !DILocation(line: 816, column: 3, scope: !1858, inlinedAt: !1871)
!1902 = !DILocation(line: 819, column: 9, scope: !1858, inlinedAt: !1871)
!1903 = !DILocation(line: 794, column: 3, scope: !1847)
!1904 = !DILocation(line: 804, column: 33, scope: !1858)
!1905 = !DILocation(line: 804, column: 45, scope: !1858)
!1906 = !DILocation(line: 804, column: 62, scope: !1858)
!1907 = !DILocation(line: 805, column: 51, scope: !1858)
!1908 = !DILocation(line: 807, column: 37, scope: !1858)
!1909 = !DILocation(line: 807, column: 33, scope: !1858)
!1910 = !DILocation(line: 808, column: 11, scope: !1858)
!1911 = !DILocation(line: 808, column: 7, scope: !1858)
!1912 = !DILocation(line: 810, column: 18, scope: !1858)
!1913 = !DILocation(line: 810, column: 27, scope: !1858)
!1914 = !DILocation(line: 810, column: 24, scope: !1858)
!1915 = !DILocation(line: 810, column: 7, scope: !1858)
!1916 = !DILocation(line: 811, column: 69, scope: !1858)
!1917 = !DILocation(line: 812, column: 53, scope: !1858)
!1918 = !DILocation(line: 813, column: 49, scope: !1858)
!1919 = !DILocation(line: 814, column: 49, scope: !1858)
!1920 = !DILocation(line: 811, column: 20, scope: !1858)
!1921 = !DILocation(line: 814, column: 62, scope: !1858)
!1922 = !DILocation(line: 811, column: 10, scope: !1858)
!1923 = !DILocation(line: 220, column: 20, scope: !1890, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 815, column: 15, scope: !1858)
!1925 = !DILocation(line: 222, column: 10, scope: !1890, inlinedAt: !1924)
!1926 = !DILocation(line: 815, column: 9, scope: !1858)
!1927 = !DILocation(line: 816, column: 60, scope: !1858)
!1928 = !DILocation(line: 818, column: 32, scope: !1858)
!1929 = !DILocation(line: 818, column: 47, scope: !1858)
!1930 = !DILocation(line: 816, column: 3, scope: !1858)
!1931 = !DILocation(line: 819, column: 9, scope: !1858)
!1932 = !DILocation(line: 820, column: 7, scope: !1858)
!1933 = !DILocation(line: 821, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1858, file: !130, line: 820, column: 7)
!1935 = !{!1936, !1936, i64 0}
!1936 = !{!"long", !638, i64 0}
!1937 = !DILocation(line: 821, column: 5, scope: !1934)
!1938 = !DILocation(line: 822, column: 3, scope: !1858)
!1939 = distinct !DISubprogram(name: "quotearg_free", scope: !130, file: !130, line: 840, type: !822, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1940)
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "sv", scope: !1939, file: !130, line: 842, type: !157)
!1942 = !DILocalVariable(name: "i", scope: !1939, file: !130, line: 843, type: !35)
!1943 = !DILocation(line: 842, column: 24, scope: !1939)
!1944 = !DILocation(line: 842, column: 19, scope: !1939)
!1945 = !DILocation(line: 843, column: 7, scope: !1939)
!1946 = !DILocation(line: 844, column: 19, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !130, line: 844, column: 3)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !130, line: 844, column: 3)
!1949 = !DILocation(line: 844, column: 17, scope: !1947)
!1950 = !DILocation(line: 844, column: 3, scope: !1948)
!1951 = !DILocation(line: 845, column: 17, scope: !1947)
!1952 = !{!1953, !637, i64 8}
!1953 = !{!"slotvec", !1936, i64 0, !637, i64 8}
!1954 = !DILocation(line: 845, column: 5, scope: !1947)
!1955 = !DILocation(line: 844, column: 28, scope: !1947)
!1956 = distinct !{!1956, !1950, !1957}
!1957 = !DILocation(line: 845, column: 20, scope: !1948)
!1958 = !DILocation(line: 846, column: 13, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1939, file: !130, line: 846, column: 7)
!1960 = !DILocation(line: 846, column: 17, scope: !1959)
!1961 = !DILocation(line: 846, column: 7, scope: !1939)
!1962 = !DILocation(line: 848, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !130, line: 847, column: 5)
!1964 = !DILocation(line: 849, column: 21, scope: !1963)
!1965 = !{!1953, !1936, i64 0}
!1966 = !DILocation(line: 850, column: 20, scope: !1963)
!1967 = !DILocation(line: 851, column: 5, scope: !1963)
!1968 = !DILocation(line: 852, column: 10, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1939, file: !130, line: 852, column: 7)
!1970 = !DILocation(line: 852, column: 7, scope: !1939)
!1971 = !DILocation(line: 854, column: 13, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !130, line: 853, column: 5)
!1973 = !DILocation(line: 854, column: 7, scope: !1972)
!1974 = !DILocation(line: 855, column: 15, scope: !1972)
!1975 = !DILocation(line: 856, column: 5, scope: !1972)
!1976 = !DILocation(line: 857, column: 10, scope: !1939)
!1977 = !DILocation(line: 858, column: 1, scope: !1939)
!1978 = distinct !DISubprogram(name: "quotearg_n", scope: !130, file: !130, line: 922, type: !1979, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!14, !35, !6}
!1981 = !{!1982, !1983}
!1982 = !DILocalVariable(name: "n", arg: 1, scope: !1978, file: !130, line: 922, type: !35)
!1983 = !DILocalVariable(name: "arg", arg: 2, scope: !1978, file: !130, line: 922, type: !6)
!1984 = !DILocation(line: 922, column: 17, scope: !1978)
!1985 = !DILocation(line: 922, column: 32, scope: !1978)
!1986 = !DILocation(line: 924, column: 10, scope: !1978)
!1987 = !DILocation(line: 924, column: 3, scope: !1978)
!1988 = distinct !DISubprogram(name: "quotearg_n_options", scope: !130, file: !130, line: 869, type: !1989, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!14, !35, !6, !124, !972}
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !1998, !2001, !2003, !2004, !2005}
!1992 = !DILocalVariable(name: "n", arg: 1, scope: !1988, file: !130, line: 869, type: !35)
!1993 = !DILocalVariable(name: "arg", arg: 2, scope: !1988, file: !130, line: 869, type: !6)
!1994 = !DILocalVariable(name: "argsize", arg: 3, scope: !1988, file: !130, line: 869, type: !124)
!1995 = !DILocalVariable(name: "options", arg: 4, scope: !1988, file: !130, line: 870, type: !972)
!1996 = !DILocalVariable(name: "e", scope: !1988, file: !130, line: 872, type: !35)
!1997 = !DILocalVariable(name: "sv", scope: !1988, file: !130, line: 874, type: !157)
!1998 = !DILocalVariable(name: "preallocated", scope: !1999, file: !130, line: 881, type: !50)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !130, line: 880, column: 5)
!2000 = distinct !DILexicalBlock(scope: !1988, file: !130, line: 879, column: 7)
!2001 = !DILocalVariable(name: "size", scope: !2002, file: !130, line: 894, type: !124)
!2002 = distinct !DILexicalBlock(scope: !1988, file: !130, line: 893, column: 3)
!2003 = !DILocalVariable(name: "val", scope: !2002, file: !130, line: 895, type: !14)
!2004 = !DILocalVariable(name: "flags", scope: !2002, file: !130, line: 897, type: !35)
!2005 = !DILocalVariable(name: "qsize", scope: !2002, file: !130, line: 898, type: !124)
!2006 = !DILocation(line: 869, column: 25, scope: !1988)
!2007 = !DILocation(line: 869, column: 40, scope: !1988)
!2008 = !DILocation(line: 869, column: 52, scope: !1988)
!2009 = !DILocation(line: 870, column: 51, scope: !1988)
!2010 = !DILocation(line: 872, column: 11, scope: !1988)
!2011 = !DILocation(line: 872, column: 7, scope: !1988)
!2012 = !DILocation(line: 874, column: 24, scope: !1988)
!2013 = !DILocation(line: 874, column: 19, scope: !1988)
!2014 = !DILocation(line: 876, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1988, file: !130, line: 876, column: 7)
!2016 = !DILocation(line: 876, column: 7, scope: !1988)
!2017 = !DILocation(line: 877, column: 5, scope: !2015)
!2018 = !DILocation(line: 879, column: 7, scope: !2000)
!2019 = !DILocation(line: 879, column: 14, scope: !2000)
!2020 = !DILocation(line: 879, column: 7, scope: !1988)
!2021 = !DILocation(line: 881, column: 31, scope: !1999)
!2022 = !DILocation(line: 883, column: 67, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1999, file: !130, line: 883, column: 11)
!2024 = !DILocation(line: 883, column: 11, scope: !1999)
!2025 = !DILocation(line: 884, column: 9, scope: !2023)
!2026 = !DILocation(line: 886, column: 32, scope: !1999)
!2027 = !DILocation(line: 886, column: 61, scope: !1999)
!2028 = !DILocation(line: 886, column: 58, scope: !1999)
!2029 = !DILocation(line: 886, column: 66, scope: !1999)
!2030 = !DILocation(line: 886, column: 22, scope: !1999)
!2031 = !DILocation(line: 886, column: 15, scope: !1999)
!2032 = !DILocation(line: 887, column: 11, scope: !1999)
!2033 = !DILocation(line: 888, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1999, file: !130, line: 887, column: 11)
!2035 = !{i64 0, i64 8, !1935, i64 8, i64 8, !636}
!2036 = !DILocation(line: 888, column: 9, scope: !2034)
!2037 = !DILocation(line: 889, column: 20, scope: !1999)
!2038 = !DILocation(line: 889, column: 18, scope: !1999)
!2039 = !DILocation(line: 889, column: 7, scope: !1999)
!2040 = !DILocation(line: 889, column: 38, scope: !1999)
!2041 = !DILocation(line: 889, column: 31, scope: !1999)
!2042 = !DILocation(line: 889, column: 48, scope: !1999)
!2043 = !DILocation(line: 890, column: 14, scope: !1999)
!2044 = !DILocation(line: 891, column: 5, scope: !1999)
!2045 = !DILocation(line: 894, column: 19, scope: !2002)
!2046 = !DILocation(line: 894, column: 25, scope: !2002)
!2047 = !DILocation(line: 894, column: 12, scope: !2002)
!2048 = !DILocation(line: 895, column: 23, scope: !2002)
!2049 = !DILocation(line: 895, column: 11, scope: !2002)
!2050 = !DILocation(line: 897, column: 26, scope: !2002)
!2051 = !DILocation(line: 897, column: 32, scope: !2002)
!2052 = !DILocation(line: 897, column: 9, scope: !2002)
!2053 = !DILocation(line: 899, column: 55, scope: !2002)
!2054 = !DILocation(line: 900, column: 46, scope: !2002)
!2055 = !DILocation(line: 901, column: 55, scope: !2002)
!2056 = !DILocation(line: 902, column: 55, scope: !2002)
!2057 = !DILocation(line: 898, column: 20, scope: !2002)
!2058 = !DILocation(line: 898, column: 12, scope: !2002)
!2059 = !DILocation(line: 904, column: 14, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2002, file: !130, line: 904, column: 9)
!2061 = !DILocation(line: 904, column: 9, scope: !2002)
!2062 = !DILocation(line: 906, column: 35, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !130, line: 905, column: 7)
!2064 = !DILocation(line: 906, column: 20, scope: !2063)
!2065 = !DILocation(line: 907, column: 17, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !130, line: 907, column: 13)
!2067 = !DILocation(line: 907, column: 13, scope: !2063)
!2068 = !DILocation(line: 908, column: 11, scope: !2066)
!2069 = !DILocation(line: 220, column: 20, scope: !1890, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 909, column: 27, scope: !2063)
!2071 = !DILocation(line: 222, column: 10, scope: !1890, inlinedAt: !2070)
!2072 = !DILocation(line: 909, column: 19, scope: !2063)
!2073 = !DILocation(line: 910, column: 69, scope: !2063)
!2074 = !DILocation(line: 912, column: 44, scope: !2063)
!2075 = !DILocation(line: 913, column: 44, scope: !2063)
!2076 = !DILocation(line: 910, column: 9, scope: !2063)
!2077 = !DILocation(line: 914, column: 7, scope: !2063)
!2078 = !DILocation(line: 916, column: 11, scope: !2002)
!2079 = !DILocation(line: 917, column: 5, scope: !2002)
!2080 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !130, file: !130, line: 928, type: !2081, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!14, !35, !6, !124}
!2083 = !{!2084, !2085, !2086}
!2084 = !DILocalVariable(name: "n", arg: 1, scope: !2080, file: !130, line: 928, type: !35)
!2085 = !DILocalVariable(name: "arg", arg: 2, scope: !2080, file: !130, line: 928, type: !6)
!2086 = !DILocalVariable(name: "argsize", arg: 3, scope: !2080, file: !130, line: 928, type: !124)
!2087 = !DILocation(line: 928, column: 21, scope: !2080)
!2088 = !DILocation(line: 928, column: 36, scope: !2080)
!2089 = !DILocation(line: 928, column: 48, scope: !2080)
!2090 = !DILocation(line: 930, column: 10, scope: !2080)
!2091 = !DILocation(line: 930, column: 3, scope: !2080)
!2092 = distinct !DISubprogram(name: "quotearg", scope: !130, file: !130, line: 934, type: !2093, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!14, !6}
!2095 = !{!2096}
!2096 = !DILocalVariable(name: "arg", arg: 1, scope: !2092, file: !130, line: 934, type: !6)
!2097 = !DILocation(line: 934, column: 23, scope: !2092)
!2098 = !DILocation(line: 922, column: 17, scope: !1978, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 936, column: 10, scope: !2092)
!2100 = !DILocation(line: 922, column: 32, scope: !1978, inlinedAt: !2099)
!2101 = !DILocation(line: 924, column: 10, scope: !1978, inlinedAt: !2099)
!2102 = !DILocation(line: 936, column: 3, scope: !2092)
!2103 = distinct !DISubprogram(name: "quotearg_mem", scope: !130, file: !130, line: 940, type: !2104, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!14, !6, !124}
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "arg", arg: 1, scope: !2103, file: !130, line: 940, type: !6)
!2108 = !DILocalVariable(name: "argsize", arg: 2, scope: !2103, file: !130, line: 940, type: !124)
!2109 = !DILocation(line: 940, column: 27, scope: !2103)
!2110 = !DILocation(line: 940, column: 39, scope: !2103)
!2111 = !DILocation(line: 928, column: 21, scope: !2080, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 942, column: 10, scope: !2103)
!2113 = !DILocation(line: 928, column: 36, scope: !2080, inlinedAt: !2112)
!2114 = !DILocation(line: 928, column: 48, scope: !2080, inlinedAt: !2112)
!2115 = !DILocation(line: 930, column: 10, scope: !2080, inlinedAt: !2112)
!2116 = !DILocation(line: 942, column: 3, scope: !2103)
!2117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !130, file: !130, line: 946, type: !2118, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!14, !35, !89, !6}
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2117, file: !130, line: 946, type: !35)
!2122 = !DILocalVariable(name: "s", arg: 2, scope: !2117, file: !130, line: 946, type: !89)
!2123 = !DILocalVariable(name: "arg", arg: 3, scope: !2117, file: !130, line: 946, type: !6)
!2124 = !DILocalVariable(name: "o", scope: !2117, file: !130, line: 948, type: !973)
!2125 = !DILocalVariable(name: "o", scope: !2126, file: !130, line: 187, type: !137)
!2126 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !130, file: !130, line: 185, type: !2127, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!137, !89}
!2129 = !{!2130, !2125}
!2130 = !DILocalVariable(name: "style", arg: 1, scope: !2126, file: !130, line: 185, type: !89)
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
!2143 = distinct !DILexicalBlock(scope: !2126, file: !130, line: 188, column: 7)
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
!2154 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !130, file: !130, line: 953, type: !2155, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!14, !35, !89, !6, !124}
!2157 = !{!2158, !2159, !2160, !2161, !2162}
!2158 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !130, line: 953, type: !35)
!2159 = !DILocalVariable(name: "s", arg: 2, scope: !2154, file: !130, line: 953, type: !89)
!2160 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !130, line: 954, type: !6)
!2161 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !130, line: 954, type: !124)
!2162 = !DILocalVariable(name: "o", scope: !2154, file: !130, line: 956, type: !973)
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
!2184 = distinct !DISubprogram(name: "quotearg_style", scope: !130, file: !130, line: 961, type: !2185, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!14, !89, !6}
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "s", arg: 1, scope: !2184, file: !130, line: 961, type: !89)
!2189 = !DILocalVariable(name: "arg", arg: 2, scope: !2184, file: !130, line: 961, type: !6)
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
!2213 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !130, file: !130, line: 967, type: !2214, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!14, !89, !6, !124}
!2216 = !{!2217, !2218, !2219}
!2217 = !DILocalVariable(name: "s", arg: 1, scope: !2213, file: !130, line: 967, type: !89)
!2218 = !DILocalVariable(name: "arg", arg: 2, scope: !2213, file: !130, line: 967, type: !6)
!2219 = !DILocalVariable(name: "argsize", arg: 3, scope: !2213, file: !130, line: 967, type: !124)
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
!2245 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !130, file: !130, line: 973, type: !2246, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!14, !6, !124, !8}
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DILocalVariable(name: "arg", arg: 1, scope: !2245, file: !130, line: 973, type: !6)
!2250 = !DILocalVariable(name: "argsize", arg: 2, scope: !2245, file: !130, line: 973, type: !124)
!2251 = !DILocalVariable(name: "ch", arg: 3, scope: !2245, file: !130, line: 973, type: !8)
!2252 = !DILocalVariable(name: "options", scope: !2245, file: !130, line: 975, type: !137)
!2253 = !DILocation(line: 973, column: 32, scope: !2245)
!2254 = !DILocation(line: 973, column: 44, scope: !2245)
!2255 = !DILocation(line: 973, column: 58, scope: !2245)
!2256 = !DILocation(line: 975, column: 3, scope: !2245)
!2257 = !DILocation(line: 976, column: 13, scope: !2245)
!2258 = !{i64 0, i64 4, !724, i64 4, i64 4, !701, i64 8, i64 32, !724, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2259 = !DILocation(line: 975, column: 26, scope: !2245)
!2260 = !DILocation(line: 144, column: 43, scope: !994, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 977, column: 3, scope: !2245)
!2262 = !DILocation(line: 144, column: 51, scope: !994, inlinedAt: !2261)
!2263 = !DILocation(line: 144, column: 58, scope: !994, inlinedAt: !2261)
!2264 = !DILocation(line: 146, column: 17, scope: !994, inlinedAt: !2261)
!2265 = !DILocation(line: 148, column: 62, scope: !994, inlinedAt: !2261)
!2266 = !DILocation(line: 148, column: 57, scope: !994, inlinedAt: !2261)
!2267 = !DILocation(line: 147, column: 17, scope: !994, inlinedAt: !2261)
!2268 = !DILocation(line: 149, column: 18, scope: !994, inlinedAt: !2261)
!2269 = !DILocation(line: 149, column: 15, scope: !994, inlinedAt: !2261)
!2270 = !DILocation(line: 149, column: 7, scope: !994, inlinedAt: !2261)
!2271 = !DILocation(line: 150, column: 12, scope: !994, inlinedAt: !2261)
!2272 = !DILocation(line: 150, column: 15, scope: !994, inlinedAt: !2261)
!2273 = !DILocation(line: 150, column: 25, scope: !994, inlinedAt: !2261)
!2274 = !DILocation(line: 150, column: 7, scope: !994, inlinedAt: !2261)
!2275 = !DILocation(line: 151, column: 18, scope: !994, inlinedAt: !2261)
!2276 = !DILocation(line: 151, column: 23, scope: !994, inlinedAt: !2261)
!2277 = !DILocation(line: 151, column: 6, scope: !994, inlinedAt: !2261)
!2278 = !DILocation(line: 978, column: 10, scope: !2245)
!2279 = !DILocation(line: 979, column: 1, scope: !2245)
!2280 = !DILocation(line: 978, column: 3, scope: !2245)
!2281 = distinct !DISubprogram(name: "quotearg_char", scope: !130, file: !130, line: 982, type: !2282, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!14, !6, !8}
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "arg", arg: 1, scope: !2281, file: !130, line: 982, type: !6)
!2286 = !DILocalVariable(name: "ch", arg: 2, scope: !2281, file: !130, line: 982, type: !8)
!2287 = !DILocation(line: 982, column: 28, scope: !2281)
!2288 = !DILocation(line: 982, column: 38, scope: !2281)
!2289 = !DILocation(line: 973, column: 32, scope: !2245, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 984, column: 10, scope: !2281)
!2291 = !DILocation(line: 973, column: 44, scope: !2245, inlinedAt: !2290)
!2292 = !DILocation(line: 973, column: 58, scope: !2245, inlinedAt: !2290)
!2293 = !DILocation(line: 975, column: 3, scope: !2245, inlinedAt: !2290)
!2294 = !DILocation(line: 976, column: 13, scope: !2245, inlinedAt: !2290)
!2295 = !DILocation(line: 975, column: 26, scope: !2245, inlinedAt: !2290)
!2296 = !DILocation(line: 144, column: 43, scope: !994, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2290)
!2298 = !DILocation(line: 144, column: 51, scope: !994, inlinedAt: !2297)
!2299 = !DILocation(line: 144, column: 58, scope: !994, inlinedAt: !2297)
!2300 = !DILocation(line: 146, column: 17, scope: !994, inlinedAt: !2297)
!2301 = !DILocation(line: 148, column: 62, scope: !994, inlinedAt: !2297)
!2302 = !DILocation(line: 148, column: 57, scope: !994, inlinedAt: !2297)
!2303 = !DILocation(line: 147, column: 17, scope: !994, inlinedAt: !2297)
!2304 = !DILocation(line: 149, column: 18, scope: !994, inlinedAt: !2297)
!2305 = !DILocation(line: 149, column: 15, scope: !994, inlinedAt: !2297)
!2306 = !DILocation(line: 149, column: 7, scope: !994, inlinedAt: !2297)
!2307 = !DILocation(line: 150, column: 12, scope: !994, inlinedAt: !2297)
!2308 = !DILocation(line: 150, column: 15, scope: !994, inlinedAt: !2297)
!2309 = !DILocation(line: 150, column: 25, scope: !994, inlinedAt: !2297)
!2310 = !DILocation(line: 150, column: 7, scope: !994, inlinedAt: !2297)
!2311 = !DILocation(line: 151, column: 18, scope: !994, inlinedAt: !2297)
!2312 = !DILocation(line: 151, column: 23, scope: !994, inlinedAt: !2297)
!2313 = !DILocation(line: 151, column: 6, scope: !994, inlinedAt: !2297)
!2314 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2290)
!2315 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2290)
!2316 = !DILocation(line: 984, column: 3, scope: !2281)
!2317 = distinct !DISubprogram(name: "quotearg_colon", scope: !130, file: !130, line: 988, type: !2093, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2318)
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "arg", arg: 1, scope: !2317, file: !130, line: 988, type: !6)
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
!2331 = !DILocation(line: 144, column: 43, scope: !994, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2325)
!2333 = !DILocation(line: 144, column: 51, scope: !994, inlinedAt: !2332)
!2334 = !DILocation(line: 144, column: 58, scope: !994, inlinedAt: !2332)
!2335 = !DILocation(line: 146, column: 17, scope: !994, inlinedAt: !2332)
!2336 = !DILocation(line: 148, column: 57, scope: !994, inlinedAt: !2332)
!2337 = !DILocation(line: 147, column: 17, scope: !994, inlinedAt: !2332)
!2338 = !DILocation(line: 149, column: 7, scope: !994, inlinedAt: !2332)
!2339 = !DILocation(line: 150, column: 12, scope: !994, inlinedAt: !2332)
!2340 = !DILocation(line: 151, column: 6, scope: !994, inlinedAt: !2332)
!2341 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2325)
!2342 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2325)
!2343 = !DILocation(line: 990, column: 3, scope: !2317)
!2344 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !130, file: !130, line: 994, type: !2104, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2345)
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "arg", arg: 1, scope: !2344, file: !130, line: 994, type: !6)
!2347 = !DILocalVariable(name: "argsize", arg: 2, scope: !2344, file: !130, line: 994, type: !124)
!2348 = !DILocation(line: 994, column: 33, scope: !2344)
!2349 = !DILocation(line: 994, column: 45, scope: !2344)
!2350 = !DILocation(line: 973, column: 32, scope: !2245, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 996, column: 10, scope: !2344)
!2352 = !DILocation(line: 973, column: 44, scope: !2245, inlinedAt: !2351)
!2353 = !DILocation(line: 973, column: 58, scope: !2245, inlinedAt: !2351)
!2354 = !DILocation(line: 975, column: 3, scope: !2245, inlinedAt: !2351)
!2355 = !DILocation(line: 976, column: 13, scope: !2245, inlinedAt: !2351)
!2356 = !DILocation(line: 975, column: 26, scope: !2245, inlinedAt: !2351)
!2357 = !DILocation(line: 144, column: 43, scope: !994, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2351)
!2359 = !DILocation(line: 144, column: 51, scope: !994, inlinedAt: !2358)
!2360 = !DILocation(line: 144, column: 58, scope: !994, inlinedAt: !2358)
!2361 = !DILocation(line: 146, column: 17, scope: !994, inlinedAt: !2358)
!2362 = !DILocation(line: 148, column: 57, scope: !994, inlinedAt: !2358)
!2363 = !DILocation(line: 147, column: 17, scope: !994, inlinedAt: !2358)
!2364 = !DILocation(line: 149, column: 7, scope: !994, inlinedAt: !2358)
!2365 = !DILocation(line: 150, column: 12, scope: !994, inlinedAt: !2358)
!2366 = !DILocation(line: 151, column: 6, scope: !994, inlinedAt: !2358)
!2367 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2351)
!2368 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2351)
!2369 = !DILocation(line: 996, column: 3, scope: !2344)
!2370 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !130, file: !130, line: 1000, type: !2118, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2370, file: !130, line: 1000, type: !35)
!2373 = !DILocalVariable(name: "s", arg: 2, scope: !2370, file: !130, line: 1000, type: !89)
!2374 = !DILocalVariable(name: "arg", arg: 3, scope: !2370, file: !130, line: 1000, type: !6)
!2375 = !DILocalVariable(name: "options", scope: !2370, file: !130, line: 1002, type: !137)
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
!2394 = !DILocation(line: 144, column: 43, scope: !994, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1004, column: 3, scope: !2370)
!2396 = !DILocation(line: 144, column: 51, scope: !994, inlinedAt: !2395)
!2397 = !DILocation(line: 144, column: 58, scope: !994, inlinedAt: !2395)
!2398 = !DILocation(line: 146, column: 17, scope: !994, inlinedAt: !2395)
!2399 = !DILocation(line: 148, column: 57, scope: !994, inlinedAt: !2395)
!2400 = !DILocation(line: 147, column: 17, scope: !994, inlinedAt: !2395)
!2401 = !DILocation(line: 149, column: 7, scope: !994, inlinedAt: !2395)
!2402 = !DILocation(line: 150, column: 12, scope: !994, inlinedAt: !2395)
!2403 = !DILocation(line: 151, column: 6, scope: !994, inlinedAt: !2395)
!2404 = !DILocation(line: 1005, column: 10, scope: !2370)
!2405 = !DILocation(line: 1006, column: 1, scope: !2370)
!2406 = !DILocation(line: 1005, column: 3, scope: !2370)
!2407 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !130, file: !130, line: 1009, type: !2408, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!14, !35, !6, !6, !6}
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !130, line: 1009, type: !35)
!2412 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2407, file: !130, line: 1009, type: !6)
!2413 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2407, file: !130, line: 1010, type: !6)
!2414 = !DILocalVariable(name: "arg", arg: 4, scope: !2407, file: !130, line: 1010, type: !6)
!2415 = !DILocation(line: 1009, column: 24, scope: !2407)
!2416 = !DILocation(line: 1009, column: 39, scope: !2407)
!2417 = !DILocation(line: 1010, column: 32, scope: !2407)
!2418 = !DILocation(line: 1010, column: 57, scope: !2407)
!2419 = !DILocalVariable(name: "n", arg: 1, scope: !2420, file: !130, line: 1017, type: !35)
!2420 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !130, file: !130, line: 1017, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!14, !35, !6, !6, !6, !124}
!2423 = !{!2419, !2424, !2425, !2426, !2427, !2428}
!2424 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2420, file: !130, line: 1017, type: !6)
!2425 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2420, file: !130, line: 1018, type: !6)
!2426 = !DILocalVariable(name: "arg", arg: 4, scope: !2420, file: !130, line: 1019, type: !6)
!2427 = !DILocalVariable(name: "argsize", arg: 5, scope: !2420, file: !130, line: 1019, type: !124)
!2428 = !DILocalVariable(name: "o", scope: !2420, file: !130, line: 1021, type: !137)
!2429 = !DILocation(line: 1017, column: 28, scope: !2420, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1012, column: 10, scope: !2407)
!2431 = !DILocation(line: 1017, column: 43, scope: !2420, inlinedAt: !2430)
!2432 = !DILocation(line: 1018, column: 36, scope: !2420, inlinedAt: !2430)
!2433 = !DILocation(line: 1019, column: 36, scope: !2420, inlinedAt: !2430)
!2434 = !DILocation(line: 1019, column: 48, scope: !2420, inlinedAt: !2430)
!2435 = !DILocation(line: 1021, column: 3, scope: !2420, inlinedAt: !2430)
!2436 = !DILocation(line: 1021, column: 30, scope: !2420, inlinedAt: !2430)
!2437 = !DILocation(line: 1021, column: 26, scope: !2420, inlinedAt: !2430)
!2438 = !DILocation(line: 171, column: 45, scope: !1043, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2430)
!2440 = !DILocation(line: 172, column: 33, scope: !1043, inlinedAt: !2439)
!2441 = !DILocation(line: 172, column: 57, scope: !1043, inlinedAt: !2439)
!2442 = !DILocation(line: 176, column: 6, scope: !1043, inlinedAt: !2439)
!2443 = !DILocation(line: 176, column: 12, scope: !1043, inlinedAt: !2439)
!2444 = !DILocation(line: 177, column: 8, scope: !1059, inlinedAt: !2439)
!2445 = !DILocation(line: 177, column: 23, scope: !1059, inlinedAt: !2439)
!2446 = !DILocation(line: 177, column: 19, scope: !1059, inlinedAt: !2439)
!2447 = !DILocation(line: 178, column: 5, scope: !1059, inlinedAt: !2439)
!2448 = !DILocation(line: 179, column: 6, scope: !1043, inlinedAt: !2439)
!2449 = !DILocation(line: 179, column: 17, scope: !1043, inlinedAt: !2439)
!2450 = !DILocation(line: 180, column: 6, scope: !1043, inlinedAt: !2439)
!2451 = !DILocation(line: 180, column: 18, scope: !1043, inlinedAt: !2439)
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
!2463 = !DILocation(line: 171, column: 45, scope: !1043, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1022, column: 3, scope: !2420)
!2465 = !DILocation(line: 172, column: 33, scope: !1043, inlinedAt: !2464)
!2466 = !DILocation(line: 172, column: 57, scope: !1043, inlinedAt: !2464)
!2467 = !DILocation(line: 176, column: 6, scope: !1043, inlinedAt: !2464)
!2468 = !DILocation(line: 176, column: 12, scope: !1043, inlinedAt: !2464)
!2469 = !DILocation(line: 177, column: 8, scope: !1059, inlinedAt: !2464)
!2470 = !DILocation(line: 177, column: 23, scope: !1059, inlinedAt: !2464)
!2471 = !DILocation(line: 177, column: 19, scope: !1059, inlinedAt: !2464)
!2472 = !DILocation(line: 178, column: 5, scope: !1059, inlinedAt: !2464)
!2473 = !DILocation(line: 179, column: 6, scope: !1043, inlinedAt: !2464)
!2474 = !DILocation(line: 179, column: 17, scope: !1043, inlinedAt: !2464)
!2475 = !DILocation(line: 180, column: 6, scope: !1043, inlinedAt: !2464)
!2476 = !DILocation(line: 180, column: 18, scope: !1043, inlinedAt: !2464)
!2477 = !DILocation(line: 1023, column: 10, scope: !2420)
!2478 = !DILocation(line: 1024, column: 1, scope: !2420)
!2479 = !DILocation(line: 1023, column: 3, scope: !2420)
!2480 = distinct !DISubprogram(name: "quotearg_custom", scope: !130, file: !130, line: 1027, type: !2481, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!14, !6, !6, !6}
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2480, file: !130, line: 1027, type: !6)
!2485 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2480, file: !130, line: 1027, type: !6)
!2486 = !DILocalVariable(name: "arg", arg: 3, scope: !2480, file: !130, line: 1028, type: !6)
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
!2504 = !DILocation(line: 171, column: 45, scope: !1043, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2496)
!2506 = !DILocation(line: 172, column: 33, scope: !1043, inlinedAt: !2505)
!2507 = !DILocation(line: 172, column: 57, scope: !1043, inlinedAt: !2505)
!2508 = !DILocation(line: 176, column: 6, scope: !1043, inlinedAt: !2505)
!2509 = !DILocation(line: 176, column: 12, scope: !1043, inlinedAt: !2505)
!2510 = !DILocation(line: 177, column: 8, scope: !1059, inlinedAt: !2505)
!2511 = !DILocation(line: 177, column: 23, scope: !1059, inlinedAt: !2505)
!2512 = !DILocation(line: 177, column: 19, scope: !1059, inlinedAt: !2505)
!2513 = !DILocation(line: 178, column: 5, scope: !1059, inlinedAt: !2505)
!2514 = !DILocation(line: 179, column: 6, scope: !1043, inlinedAt: !2505)
!2515 = !DILocation(line: 179, column: 17, scope: !1043, inlinedAt: !2505)
!2516 = !DILocation(line: 180, column: 6, scope: !1043, inlinedAt: !2505)
!2517 = !DILocation(line: 180, column: 18, scope: !1043, inlinedAt: !2505)
!2518 = !DILocation(line: 1023, column: 10, scope: !2420, inlinedAt: !2496)
!2519 = !DILocation(line: 1024, column: 1, scope: !2420, inlinedAt: !2496)
!2520 = !DILocation(line: 1030, column: 3, scope: !2480)
!2521 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !130, file: !130, line: 1034, type: !2522, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!14, !6, !6, !6, !124}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2521, file: !130, line: 1034, type: !6)
!2526 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2521, file: !130, line: 1034, type: !6)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !130, line: 1035, type: !6)
!2528 = !DILocalVariable(name: "argsize", arg: 4, scope: !2521, file: !130, line: 1035, type: !124)
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
!2542 = !DILocation(line: 171, column: 45, scope: !1043, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2534)
!2544 = !DILocation(line: 172, column: 33, scope: !1043, inlinedAt: !2543)
!2545 = !DILocation(line: 172, column: 57, scope: !1043, inlinedAt: !2543)
!2546 = !DILocation(line: 176, column: 6, scope: !1043, inlinedAt: !2543)
!2547 = !DILocation(line: 176, column: 12, scope: !1043, inlinedAt: !2543)
!2548 = !DILocation(line: 177, column: 8, scope: !1059, inlinedAt: !2543)
!2549 = !DILocation(line: 177, column: 23, scope: !1059, inlinedAt: !2543)
!2550 = !DILocation(line: 177, column: 19, scope: !1059, inlinedAt: !2543)
!2551 = !DILocation(line: 178, column: 5, scope: !1059, inlinedAt: !2543)
!2552 = !DILocation(line: 179, column: 6, scope: !1043, inlinedAt: !2543)
!2553 = !DILocation(line: 179, column: 17, scope: !1043, inlinedAt: !2543)
!2554 = !DILocation(line: 180, column: 6, scope: !1043, inlinedAt: !2543)
!2555 = !DILocation(line: 180, column: 18, scope: !1043, inlinedAt: !2543)
!2556 = !DILocation(line: 1023, column: 10, scope: !2420, inlinedAt: !2534)
!2557 = !DILocation(line: 1024, column: 1, scope: !2420, inlinedAt: !2534)
!2558 = !DILocation(line: 1037, column: 3, scope: !2521)
!2559 = distinct !DISubprogram(name: "quote_n_mem", scope: !130, file: !130, line: 1052, type: !2560, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!6, !35, !6, !124}
!2562 = !{!2563, !2564, !2565}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2559, file: !130, line: 1052, type: !35)
!2564 = !DILocalVariable(name: "arg", arg: 2, scope: !2559, file: !130, line: 1052, type: !6)
!2565 = !DILocalVariable(name: "argsize", arg: 3, scope: !2559, file: !130, line: 1052, type: !124)
!2566 = !DILocation(line: 1052, column: 18, scope: !2559)
!2567 = !DILocation(line: 1052, column: 33, scope: !2559)
!2568 = !DILocation(line: 1052, column: 45, scope: !2559)
!2569 = !DILocation(line: 1054, column: 10, scope: !2559)
!2570 = !DILocation(line: 1054, column: 3, scope: !2559)
!2571 = distinct !DISubprogram(name: "quote_mem", scope: !130, file: !130, line: 1058, type: !2572, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!6, !6, !124}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !130, line: 1058, type: !6)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !130, line: 1058, type: !124)
!2577 = !DILocation(line: 1058, column: 24, scope: !2571)
!2578 = !DILocation(line: 1058, column: 36, scope: !2571)
!2579 = !DILocation(line: 1052, column: 18, scope: !2559, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1060, column: 10, scope: !2571)
!2581 = !DILocation(line: 1052, column: 33, scope: !2559, inlinedAt: !2580)
!2582 = !DILocation(line: 1052, column: 45, scope: !2559, inlinedAt: !2580)
!2583 = !DILocation(line: 1054, column: 10, scope: !2559, inlinedAt: !2580)
!2584 = !DILocation(line: 1060, column: 3, scope: !2571)
!2585 = distinct !DISubprogram(name: "quote_n", scope: !130, file: !130, line: 1064, type: !2586, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!6, !35, !6}
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !130, line: 1064, type: !35)
!2590 = !DILocalVariable(name: "arg", arg: 2, scope: !2585, file: !130, line: 1064, type: !6)
!2591 = !DILocation(line: 1064, column: 14, scope: !2585)
!2592 = !DILocation(line: 1064, column: 29, scope: !2585)
!2593 = !DILocation(line: 1052, column: 18, scope: !2559, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1066, column: 10, scope: !2585)
!2595 = !DILocation(line: 1052, column: 33, scope: !2559, inlinedAt: !2594)
!2596 = !DILocation(line: 1052, column: 45, scope: !2559, inlinedAt: !2594)
!2597 = !DILocation(line: 1054, column: 10, scope: !2559, inlinedAt: !2594)
!2598 = !DILocation(line: 1066, column: 3, scope: !2585)
!2599 = distinct !DISubprogram(name: "quote", scope: !130, file: !130, line: 1070, type: !2600, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!6, !6}
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "arg", arg: 1, scope: !2599, file: !130, line: 1070, type: !6)
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
!2614 = distinct !DISubprogram(name: "version_etc_arn", scope: !556, file: !556, line: 62, type: !2615, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2669)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2617, !6, !6, !6, !2668, !124}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !2620)
!2619 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !2622)
!2621 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2643, !2644, !2645, !2646, !2648, !2649, !2651, !2653, !2656, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2620, file: !2621, line: 242, baseType: !35, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2620, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2620, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2620, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2620, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2620, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2620, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2620, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2620, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2620, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2620, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2620, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2620, file: !2621, line: 260, baseType: !2636, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !2638)
!2638 = !{!2639, !2640, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2637, file: !2621, line: 157, baseType: !2636, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2637, file: !2621, line: 158, baseType: !2641, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2637, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2620, file: !2621, line: 262, baseType: !2641, size: 64, offset: 832)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2620, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2620, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2620, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !608, line: 140, baseType: !609)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2620, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2620, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!2650 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2620, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !887)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2620, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2621, line: 150, baseType: null)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2620, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !608, line: 141, baseType: !609)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2620, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2620, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2620, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2620, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2620, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2620, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2620, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2666)
!2666 = !{!2667}
!2667 = !DISubrange(count: 20)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675}
!2670 = !DILocalVariable(name: "stream", arg: 1, scope: !2614, file: !556, line: 62, type: !2617)
!2671 = !DILocalVariable(name: "command_name", arg: 2, scope: !2614, file: !556, line: 63, type: !6)
!2672 = !DILocalVariable(name: "package", arg: 3, scope: !2614, file: !556, line: 63, type: !6)
!2673 = !DILocalVariable(name: "version", arg: 4, scope: !2614, file: !556, line: 64, type: !6)
!2674 = !DILocalVariable(name: "authors", arg: 5, scope: !2614, file: !556, line: 65, type: !2668)
!2675 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2614, file: !556, line: 65, type: !124)
!2676 = !DILocation(line: 62, column: 24, scope: !2614)
!2677 = !DILocation(line: 63, column: 30, scope: !2614)
!2678 = !DILocation(line: 63, column: 56, scope: !2614)
!2679 = !DILocation(line: 64, column: 30, scope: !2614)
!2680 = !DILocation(line: 65, column: 39, scope: !2614)
!2681 = !DILocation(line: 65, column: 55, scope: !2614)
!2682 = !DILocation(line: 67, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2614, file: !556, line: 67, column: 7)
!2684 = !DILocation(line: 67, column: 7, scope: !2614)
!2685 = !DILocation(line: 68, column: 5, scope: !2683)
!2686 = !DILocation(line: 70, column: 5, scope: !2683)
!2687 = !DILocation(line: 84, column: 3, scope: !2614)
!2688 = !DILocation(line: 86, column: 3, scope: !2614)
!2689 = !DILocation(line: 95, column: 3, scope: !2614)
!2690 = !DILocation(line: 99, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2614, file: !556, line: 96, column: 5)
!2692 = !DILocation(line: 102, column: 7, scope: !2691)
!2693 = !DILocation(line: 103, column: 7, scope: !2691)
!2694 = !DILocation(line: 106, column: 7, scope: !2691)
!2695 = !DILocation(line: 107, column: 7, scope: !2691)
!2696 = !DILocation(line: 110, column: 7, scope: !2691)
!2697 = !DILocation(line: 112, column: 7, scope: !2691)
!2698 = !DILocation(line: 117, column: 7, scope: !2691)
!2699 = !DILocation(line: 119, column: 7, scope: !2691)
!2700 = !DILocation(line: 124, column: 7, scope: !2691)
!2701 = !DILocation(line: 126, column: 7, scope: !2691)
!2702 = !DILocation(line: 131, column: 7, scope: !2691)
!2703 = !DILocation(line: 134, column: 7, scope: !2691)
!2704 = !DILocation(line: 139, column: 7, scope: !2691)
!2705 = !DILocation(line: 142, column: 7, scope: !2691)
!2706 = !DILocation(line: 147, column: 7, scope: !2691)
!2707 = !DILocation(line: 151, column: 7, scope: !2691)
!2708 = !DILocation(line: 156, column: 7, scope: !2691)
!2709 = !DILocation(line: 160, column: 7, scope: !2691)
!2710 = !DILocation(line: 167, column: 7, scope: !2691)
!2711 = !DILocation(line: 171, column: 7, scope: !2691)
!2712 = !DILocation(line: 173, column: 1, scope: !2614)
!2713 = distinct !DISubprogram(name: "version_etc_ar", scope: !556, file: !556, line: 180, type: !2714, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2617, !6, !6, !6, !2668}
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722}
!2717 = !DILocalVariable(name: "stream", arg: 1, scope: !2713, file: !556, line: 180, type: !2617)
!2718 = !DILocalVariable(name: "command_name", arg: 2, scope: !2713, file: !556, line: 181, type: !6)
!2719 = !DILocalVariable(name: "package", arg: 3, scope: !2713, file: !556, line: 181, type: !6)
!2720 = !DILocalVariable(name: "version", arg: 4, scope: !2713, file: !556, line: 182, type: !6)
!2721 = !DILocalVariable(name: "authors", arg: 5, scope: !2713, file: !556, line: 182, type: !2668)
!2722 = !DILocalVariable(name: "n_authors", scope: !2713, file: !556, line: 184, type: !124)
!2723 = !DILocation(line: 180, column: 23, scope: !2713)
!2724 = !DILocation(line: 181, column: 29, scope: !2713)
!2725 = !DILocation(line: 181, column: 55, scope: !2713)
!2726 = !DILocation(line: 182, column: 29, scope: !2713)
!2727 = !DILocation(line: 182, column: 59, scope: !2713)
!2728 = !DILocation(line: 184, column: 10, scope: !2713)
!2729 = !DILocation(line: 186, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2713, file: !556, line: 186, column: 3)
!2731 = !DILocation(line: 186, column: 23, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2730, file: !556, line: 186, column: 3)
!2733 = !DILocation(line: 186, column: 3, scope: !2730)
!2734 = !DILocation(line: 186, column: 52, scope: !2732)
!2735 = distinct !{!2735, !2733, !2736}
!2736 = !DILocation(line: 187, column: 5, scope: !2730)
!2737 = !DILocation(line: 188, column: 3, scope: !2713)
!2738 = !DILocation(line: 189, column: 1, scope: !2713)
!2739 = distinct !DISubprogram(name: "version_etc_va", scope: !556, file: !556, line: 196, type: !2740, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2749)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2617, !6, !6, !6, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !553, line: 189, size: 192, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2743, file: !553, line: 189, baseType: !143, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2743, file: !553, line: 189, baseType: !143, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2743, file: !553, line: 189, baseType: !81, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2743, file: !553, line: 189, baseType: !81, size: 64, offset: 128)
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2750 = !DILocalVariable(name: "stream", arg: 1, scope: !2739, file: !556, line: 196, type: !2617)
!2751 = !DILocalVariable(name: "command_name", arg: 2, scope: !2739, file: !556, line: 197, type: !6)
!2752 = !DILocalVariable(name: "package", arg: 3, scope: !2739, file: !556, line: 197, type: !6)
!2753 = !DILocalVariable(name: "version", arg: 4, scope: !2739, file: !556, line: 198, type: !6)
!2754 = !DILocalVariable(name: "authors", arg: 5, scope: !2739, file: !556, line: 198, type: !2742)
!2755 = !DILocalVariable(name: "n_authors", scope: !2739, file: !556, line: 200, type: !124)
!2756 = !DILocalVariable(name: "authtab", scope: !2739, file: !556, line: 201, type: !2757)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !133)
!2758 = !DILocation(line: 196, column: 23, scope: !2739)
!2759 = !DILocation(line: 197, column: 29, scope: !2739)
!2760 = !DILocation(line: 197, column: 55, scope: !2739)
!2761 = !DILocation(line: 198, column: 29, scope: !2739)
!2762 = !DILocation(line: 198, column: 46, scope: !2739)
!2763 = !DILocation(line: 201, column: 3, scope: !2739)
!2764 = !DILocation(line: 201, column: 15, scope: !2739)
!2765 = !DILocation(line: 200, column: 10, scope: !2739)
!2766 = !DILocation(line: 205, column: 35, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !556, line: 203, column: 3)
!2768 = distinct !DILexicalBlock(scope: !2739, file: !556, line: 203, column: 3)
!2769 = !DILocation(line: 205, column: 14, scope: !2767)
!2770 = !DILocation(line: 205, column: 33, scope: !2767)
!2771 = !DILocation(line: 205, column: 67, scope: !2767)
!2772 = !DILocation(line: 203, column: 3, scope: !2768)
!2773 = !DILocation(line: 208, column: 3, scope: !2739)
!2774 = !DILocation(line: 210, column: 1, scope: !2739)
!2775 = distinct !DISubprogram(name: "version_etc", scope: !556, file: !556, line: 227, type: !2776, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2617, !6, !6, !6, null}
!2778 = !{!2779, !2780, !2781, !2782, !2783}
!2779 = !DILocalVariable(name: "stream", arg: 1, scope: !2775, file: !556, line: 227, type: !2617)
!2780 = !DILocalVariable(name: "command_name", arg: 2, scope: !2775, file: !556, line: 228, type: !6)
!2781 = !DILocalVariable(name: "package", arg: 3, scope: !2775, file: !556, line: 228, type: !6)
!2782 = !DILocalVariable(name: "version", arg: 4, scope: !2775, file: !556, line: 229, type: !6)
!2783 = !DILocalVariable(name: "authors", scope: !2775, file: !556, line: 231, type: !2784)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !876, line: 46, baseType: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !878, line: 48, baseType: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !553, line: 231, baseType: !2787)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 192, elements: !887)
!2788 = !DILocation(line: 227, column: 20, scope: !2775)
!2789 = !DILocation(line: 228, column: 26, scope: !2775)
!2790 = !DILocation(line: 228, column: 52, scope: !2775)
!2791 = !DILocation(line: 229, column: 26, scope: !2775)
!2792 = !DILocation(line: 231, column: 3, scope: !2775)
!2793 = !DILocation(line: 231, column: 11, scope: !2775)
!2794 = !DILocation(line: 233, column: 3, scope: !2775)
!2795 = !DILocation(line: 234, column: 3, scope: !2775)
!2796 = !DILocation(line: 235, column: 3, scope: !2775)
!2797 = !DILocation(line: 236, column: 1, scope: !2775)
!2798 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !556, file: !556, line: 239, type: !822, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !4)
!2799 = !DILocation(line: 245, column: 3, scope: !2798)
!2800 = !DILocation(line: 251, column: 3, scope: !2798)
!2801 = !DILocation(line: 256, column: 3, scope: !2798)
!2802 = !DILocation(line: 258, column: 1, scope: !2798)
!2803 = distinct !DISubprogram(name: "xnmalloc", scope: !564, file: !564, line: 105, type: !2804, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!81, !124, !124}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !564, line: 105, type: !124)
!2808 = !DILocalVariable(name: "s", arg: 2, scope: !2803, file: !564, line: 105, type: !124)
!2809 = !DILocation(line: 105, column: 18, scope: !2803)
!2810 = !DILocation(line: 105, column: 28, scope: !2803)
!2811 = !DILocation(line: 107, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2803, file: !564, line: 107, column: 7)
!2813 = !DILocation(line: 107, column: 7, scope: !2803)
!2814 = !DILocation(line: 108, column: 5, scope: !2812)
!2815 = !DILocation(line: 109, column: 21, scope: !2803)
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2817, file: !2818, line: 39, type: !124)
!2817 = distinct !DISubprogram(name: "xmalloc", scope: !2818, file: !2818, line: 39, type: !2819, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2821)
!2818 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!81, !124}
!2821 = !{!2816, !2822}
!2822 = !DILocalVariable(name: "p", scope: !2817, file: !2818, line: 41, type: !81)
!2823 = !DILocation(line: 39, column: 17, scope: !2817, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 109, column: 10, scope: !2803)
!2825 = !DILocation(line: 41, column: 13, scope: !2817, inlinedAt: !2824)
!2826 = !DILocation(line: 41, column: 9, scope: !2817, inlinedAt: !2824)
!2827 = !DILocation(line: 42, column: 8, scope: !2828, inlinedAt: !2824)
!2828 = distinct !DILexicalBlock(scope: !2817, file: !2818, line: 42, column: 7)
!2829 = !DILocation(line: 42, column: 15, scope: !2828, inlinedAt: !2824)
!2830 = !DILocation(line: 42, column: 10, scope: !2828, inlinedAt: !2824)
!2831 = !DILocation(line: 43, column: 5, scope: !2828, inlinedAt: !2824)
!2832 = !DILocation(line: 109, column: 3, scope: !2803)
!2833 = !DILocation(line: 39, column: 17, scope: !2817)
!2834 = !DILocation(line: 41, column: 13, scope: !2817)
!2835 = !DILocation(line: 41, column: 9, scope: !2817)
!2836 = !DILocation(line: 42, column: 8, scope: !2828)
!2837 = !DILocation(line: 42, column: 15, scope: !2828)
!2838 = !DILocation(line: 42, column: 10, scope: !2828)
!2839 = !DILocation(line: 43, column: 5, scope: !2828)
!2840 = !DILocation(line: 44, column: 3, scope: !2817)
!2841 = distinct !DISubprogram(name: "xnrealloc", scope: !564, file: !564, line: 118, type: !2842, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!81, !81, !124, !124}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "p", arg: 1, scope: !2841, file: !564, line: 118, type: !81)
!2846 = !DILocalVariable(name: "n", arg: 2, scope: !2841, file: !564, line: 118, type: !124)
!2847 = !DILocalVariable(name: "s", arg: 3, scope: !2841, file: !564, line: 118, type: !124)
!2848 = !DILocation(line: 118, column: 18, scope: !2841)
!2849 = !DILocation(line: 118, column: 28, scope: !2841)
!2850 = !DILocation(line: 118, column: 38, scope: !2841)
!2851 = !DILocation(line: 120, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2841, file: !564, line: 120, column: 7)
!2853 = !DILocation(line: 120, column: 7, scope: !2841)
!2854 = !DILocation(line: 121, column: 5, scope: !2852)
!2855 = !DILocation(line: 122, column: 25, scope: !2841)
!2856 = !DILocalVariable(name: "p", arg: 1, scope: !2857, file: !2818, line: 51, type: !81)
!2857 = distinct !DISubprogram(name: "xrealloc", scope: !2818, file: !2818, line: 51, type: !2858, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!81, !81, !124}
!2860 = !{!2856, !2861}
!2861 = !DILocalVariable(name: "n", arg: 2, scope: !2857, file: !2818, line: 51, type: !124)
!2862 = !DILocation(line: 51, column: 17, scope: !2857, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 122, column: 10, scope: !2841)
!2864 = !DILocation(line: 51, column: 27, scope: !2857, inlinedAt: !2863)
!2865 = !DILocation(line: 53, column: 8, scope: !2866, inlinedAt: !2863)
!2866 = distinct !DILexicalBlock(scope: !2857, file: !2818, line: 53, column: 7)
!2867 = !DILocation(line: 53, column: 13, scope: !2866, inlinedAt: !2863)
!2868 = !DILocation(line: 53, column: 10, scope: !2866, inlinedAt: !2863)
!2869 = !DILocation(line: 57, column: 7, scope: !2870, inlinedAt: !2863)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !2818, line: 54, column: 5)
!2871 = !DILocation(line: 58, column: 7, scope: !2870, inlinedAt: !2863)
!2872 = !DILocation(line: 61, column: 7, scope: !2857, inlinedAt: !2863)
!2873 = !DILocation(line: 62, column: 8, scope: !2874, inlinedAt: !2863)
!2874 = distinct !DILexicalBlock(scope: !2857, file: !2818, line: 62, column: 7)
!2875 = !DILocation(line: 62, column: 13, scope: !2874, inlinedAt: !2863)
!2876 = !DILocation(line: 62, column: 10, scope: !2874, inlinedAt: !2863)
!2877 = !DILocation(line: 63, column: 5, scope: !2874, inlinedAt: !2863)
!2878 = !DILocation(line: 122, column: 3, scope: !2841)
!2879 = !DILocation(line: 51, column: 17, scope: !2857)
!2880 = !DILocation(line: 51, column: 27, scope: !2857)
!2881 = !DILocation(line: 53, column: 8, scope: !2866)
!2882 = !DILocation(line: 53, column: 13, scope: !2866)
!2883 = !DILocation(line: 53, column: 10, scope: !2866)
!2884 = !DILocation(line: 57, column: 7, scope: !2870)
!2885 = !DILocation(line: 58, column: 7, scope: !2870)
!2886 = !DILocation(line: 61, column: 7, scope: !2857)
!2887 = !DILocation(line: 62, column: 8, scope: !2874)
!2888 = !DILocation(line: 62, column: 13, scope: !2874)
!2889 = !DILocation(line: 62, column: 10, scope: !2874)
!2890 = !DILocation(line: 63, column: 5, scope: !2874)
!2891 = !DILocation(line: 65, column: 1, scope: !2857)
!2892 = !DILocation(line: 180, column: 19, scope: !565)
!2893 = !DILocation(line: 180, column: 30, scope: !565)
!2894 = !DILocation(line: 180, column: 41, scope: !565)
!2895 = !DILocation(line: 182, column: 14, scope: !565)
!2896 = !DILocation(line: 182, column: 10, scope: !565)
!2897 = !DILocation(line: 184, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !565, file: !564, line: 184, column: 7)
!2899 = !DILocation(line: 184, column: 7, scope: !565)
!2900 = !DILocation(line: 186, column: 13, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !564, line: 186, column: 11)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !564, line: 185, column: 5)
!2903 = !DILocation(line: 186, column: 11, scope: !2902)
!2904 = !DILocation(line: 194, column: 30, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !564, line: 187, column: 9)
!2906 = !DILocation(line: 195, column: 16, scope: !2905)
!2907 = !DILocation(line: 195, column: 13, scope: !2905)
!2908 = !DILocation(line: 196, column: 9, scope: !2905)
!2909 = !DILocation(line: 204, column: 69, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !564, line: 204, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2898, file: !564, line: 199, column: 5)
!2912 = !DILocation(line: 205, column: 11, scope: !2910)
!2913 = !DILocation(line: 204, column: 11, scope: !2911)
!2914 = !DILocation(line: 206, column: 9, scope: !2910)
!2915 = !DILocation(line: 210, column: 7, scope: !565)
!2916 = !DILocation(line: 211, column: 25, scope: !565)
!2917 = !DILocation(line: 51, column: 17, scope: !2857, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 211, column: 10, scope: !565)
!2919 = !DILocation(line: 51, column: 27, scope: !2857, inlinedAt: !2918)
!2920 = !DILocation(line: 53, column: 10, scope: !2866, inlinedAt: !2918)
!2921 = !DILocation(line: 207, column: 14, scope: !2911)
!2922 = !DILocation(line: 207, column: 18, scope: !2911)
!2923 = !DILocation(line: 207, column: 9, scope: !2911)
!2924 = !DILocation(line: 53, column: 8, scope: !2866, inlinedAt: !2918)
!2925 = !DILocation(line: 57, column: 7, scope: !2870, inlinedAt: !2918)
!2926 = !DILocation(line: 58, column: 7, scope: !2870, inlinedAt: !2918)
!2927 = !DILocation(line: 61, column: 7, scope: !2857, inlinedAt: !2918)
!2928 = !DILocation(line: 62, column: 8, scope: !2874, inlinedAt: !2918)
!2929 = !DILocation(line: 62, column: 13, scope: !2874, inlinedAt: !2918)
!2930 = !DILocation(line: 62, column: 10, scope: !2874, inlinedAt: !2918)
!2931 = !DILocation(line: 63, column: 5, scope: !2874, inlinedAt: !2918)
!2932 = !DILocation(line: 211, column: 3, scope: !565)
!2933 = distinct !DISubprogram(name: "xcharalloc", scope: !564, file: !564, line: 220, type: !1891, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2934)
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2933, file: !564, line: 220, type: !124)
!2936 = !DILocation(line: 220, column: 20, scope: !2933)
!2937 = !DILocation(line: 39, column: 17, scope: !2817, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 222, column: 10, scope: !2933)
!2939 = !DILocation(line: 41, column: 13, scope: !2817, inlinedAt: !2938)
!2940 = !DILocation(line: 41, column: 9, scope: !2817, inlinedAt: !2938)
!2941 = !DILocation(line: 42, column: 8, scope: !2828, inlinedAt: !2938)
!2942 = !DILocation(line: 42, column: 15, scope: !2828, inlinedAt: !2938)
!2943 = !DILocation(line: 42, column: 10, scope: !2828, inlinedAt: !2938)
!2944 = !DILocation(line: 43, column: 5, scope: !2828, inlinedAt: !2938)
!2945 = !DILocation(line: 222, column: 3, scope: !2933)
!2946 = distinct !DISubprogram(name: "x2realloc", scope: !2818, file: !2818, line: 74, type: !2947, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!81, !81, !568}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "p", arg: 1, scope: !2946, file: !2818, line: 74, type: !81)
!2951 = !DILocalVariable(name: "pn", arg: 2, scope: !2946, file: !2818, line: 74, type: !568)
!2952 = !DILocation(line: 74, column: 18, scope: !2946)
!2953 = !DILocation(line: 74, column: 29, scope: !2946)
!2954 = !DILocation(line: 180, column: 19, scope: !565, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 76, column: 10, scope: !2946)
!2956 = !DILocation(line: 180, column: 30, scope: !565, inlinedAt: !2955)
!2957 = !DILocation(line: 180, column: 41, scope: !565, inlinedAt: !2955)
!2958 = !DILocation(line: 182, column: 14, scope: !565, inlinedAt: !2955)
!2959 = !DILocation(line: 182, column: 10, scope: !565, inlinedAt: !2955)
!2960 = !DILocation(line: 184, column: 9, scope: !2898, inlinedAt: !2955)
!2961 = !DILocation(line: 184, column: 7, scope: !565, inlinedAt: !2955)
!2962 = !DILocation(line: 186, column: 13, scope: !2901, inlinedAt: !2955)
!2963 = !DILocation(line: 186, column: 11, scope: !2902, inlinedAt: !2955)
!2964 = !DILocation(line: 210, column: 7, scope: !565, inlinedAt: !2955)
!2965 = !DILocation(line: 51, column: 17, scope: !2857, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 211, column: 10, scope: !565, inlinedAt: !2955)
!2967 = !DILocation(line: 51, column: 27, scope: !2857, inlinedAt: !2966)
!2968 = !DILocation(line: 53, column: 10, scope: !2866, inlinedAt: !2966)
!2969 = !DILocation(line: 205, column: 11, scope: !2910, inlinedAt: !2955)
!2970 = !DILocation(line: 204, column: 11, scope: !2911, inlinedAt: !2955)
!2971 = !DILocation(line: 206, column: 9, scope: !2910, inlinedAt: !2955)
!2972 = !DILocation(line: 207, column: 14, scope: !2911, inlinedAt: !2955)
!2973 = !DILocation(line: 207, column: 18, scope: !2911, inlinedAt: !2955)
!2974 = !DILocation(line: 207, column: 9, scope: !2911, inlinedAt: !2955)
!2975 = !DILocation(line: 53, column: 8, scope: !2866, inlinedAt: !2966)
!2976 = !DILocation(line: 57, column: 7, scope: !2870, inlinedAt: !2966)
!2977 = !DILocation(line: 58, column: 7, scope: !2870, inlinedAt: !2966)
!2978 = !DILocation(line: 61, column: 7, scope: !2857, inlinedAt: !2966)
!2979 = !DILocation(line: 62, column: 8, scope: !2874, inlinedAt: !2966)
!2980 = !DILocation(line: 62, column: 13, scope: !2874, inlinedAt: !2966)
!2981 = !DILocation(line: 62, column: 10, scope: !2874, inlinedAt: !2966)
!2982 = !DILocation(line: 63, column: 5, scope: !2874, inlinedAt: !2966)
!2983 = !DILocation(line: 76, column: 3, scope: !2946)
!2984 = distinct !DISubprogram(name: "xzalloc", scope: !2818, file: !2818, line: 84, type: !2819, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2985)
!2985 = !{!2986}
!2986 = !DILocalVariable(name: "s", arg: 1, scope: !2984, file: !2818, line: 84, type: !124)
!2987 = !DILocation(line: 84, column: 17, scope: !2984)
!2988 = !DILocation(line: 39, column: 17, scope: !2817, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 86, column: 18, scope: !2984)
!2990 = !DILocation(line: 41, column: 13, scope: !2817, inlinedAt: !2989)
!2991 = !DILocation(line: 41, column: 9, scope: !2817, inlinedAt: !2989)
!2992 = !DILocation(line: 42, column: 8, scope: !2828, inlinedAt: !2989)
!2993 = !DILocation(line: 42, column: 15, scope: !2828, inlinedAt: !2989)
!2994 = !DILocation(line: 42, column: 10, scope: !2828, inlinedAt: !2989)
!2995 = !DILocation(line: 43, column: 5, scope: !2828, inlinedAt: !2989)
!2996 = !DILocation(line: 86, column: 10, scope: !2984)
!2997 = !DILocation(line: 86, column: 3, scope: !2984)
!2998 = distinct !DISubprogram(name: "xcalloc", scope: !2818, file: !2818, line: 93, type: !2804, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !2999)
!2999 = !{!3000, !3001, !3002}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !2818, line: 93, type: !124)
!3001 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !2818, line: 93, type: !124)
!3002 = !DILocalVariable(name: "p", scope: !2998, file: !2818, line: 95, type: !81)
!3003 = !DILocation(line: 93, column: 17, scope: !2998)
!3004 = !DILocation(line: 93, column: 27, scope: !2998)
!3005 = !DILocation(line: 100, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2998, file: !2818, line: 100, column: 7)
!3007 = !DILocation(line: 101, column: 7, scope: !3006)
!3008 = !DILocation(line: 101, column: 18, scope: !3006)
!3009 = !DILocation(line: 95, column: 9, scope: !2998)
!3010 = !DILocation(line: 101, column: 16, scope: !3006)
!3011 = !DILocation(line: 100, column: 7, scope: !2998)
!3012 = !DILocation(line: 102, column: 5, scope: !3006)
!3013 = !DILocation(line: 103, column: 3, scope: !2998)
!3014 = distinct !DISubprogram(name: "xmemdup", scope: !2818, file: !2818, line: 111, type: !3015, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3019)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!81, !3017, !124}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !2818, line: 111, type: !3017)
!3021 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !2818, line: 111, type: !124)
!3022 = !DILocation(line: 111, column: 22, scope: !3014)
!3023 = !DILocation(line: 111, column: 32, scope: !3014)
!3024 = !DILocation(line: 39, column: 17, scope: !2817, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 113, column: 18, scope: !3014)
!3026 = !DILocation(line: 41, column: 13, scope: !2817, inlinedAt: !3025)
!3027 = !DILocation(line: 41, column: 9, scope: !2817, inlinedAt: !3025)
!3028 = !DILocation(line: 42, column: 8, scope: !2828, inlinedAt: !3025)
!3029 = !DILocation(line: 42, column: 15, scope: !2828, inlinedAt: !3025)
!3030 = !DILocation(line: 42, column: 10, scope: !2828, inlinedAt: !3025)
!3031 = !DILocation(line: 43, column: 5, scope: !2828, inlinedAt: !3025)
!3032 = !DILocation(line: 113, column: 10, scope: !3014)
!3033 = !DILocation(line: 113, column: 3, scope: !3014)
!3034 = distinct !DISubprogram(name: "xstrdup", scope: !2818, file: !2818, line: 119, type: !2093, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3035)
!3035 = !{!3036}
!3036 = !DILocalVariable(name: "string", arg: 1, scope: !3034, file: !2818, line: 119, type: !6)
!3037 = !DILocation(line: 119, column: 22, scope: !3034)
!3038 = !DILocation(line: 121, column: 27, scope: !3034)
!3039 = !DILocation(line: 121, column: 43, scope: !3034)
!3040 = !DILocation(line: 111, column: 22, scope: !3014, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 121, column: 10, scope: !3034)
!3042 = !DILocation(line: 111, column: 32, scope: !3014, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 17, scope: !2817, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 113, column: 18, scope: !3014, inlinedAt: !3041)
!3045 = !DILocation(line: 41, column: 13, scope: !2817, inlinedAt: !3044)
!3046 = !DILocation(line: 41, column: 9, scope: !2817, inlinedAt: !3044)
!3047 = !DILocation(line: 42, column: 8, scope: !2828, inlinedAt: !3044)
!3048 = !DILocation(line: 42, column: 15, scope: !2828, inlinedAt: !3044)
!3049 = !DILocation(line: 42, column: 10, scope: !2828, inlinedAt: !3044)
!3050 = !DILocation(line: 43, column: 5, scope: !2828, inlinedAt: !3044)
!3051 = !DILocation(line: 113, column: 10, scope: !3014, inlinedAt: !3041)
!3052 = !DILocation(line: 121, column: 3, scope: !3034)
!3053 = distinct !DISubprogram(name: "xalloc_die", scope: !3054, file: !3054, line: 32, type: !822, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !577, variables: !4)
!3054 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3055 = !DILocation(line: 34, column: 10, scope: !3053)
!3056 = !DILocation(line: 34, column: 33, scope: !3053)
!3057 = !DILocation(line: 34, column: 3, scope: !3053)
!3058 = !DILocation(line: 40, column: 3, scope: !3053)
!3059 = distinct !DISubprogram(name: "xnanosleep", scope: !3060, file: !3060, line: 38, type: !3061, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3063)
!3060 = !DIFile(filename: "lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!35, !669}
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "seconds", arg: 1, scope: !3059, file: !3060, line: 38, type: !669)
!3065 = !DILocalVariable(name: "ts_sleep", scope: !3059, file: !3060, line: 40, type: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3067, line: 8, size: 128, elements: !3068)
!3067 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3066, file: !3067, line: 10, baseType: !607, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3066, file: !3067, line: 11, baseType: !3071, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !608, line: 184, baseType: !609)
!3072 = !DILocation(line: 38, column: 20, scope: !3059)
!3073 = !DILocation(line: 40, column: 3, scope: !3059)
!3074 = !DILocation(line: 40, column: 30, scope: !3059)
!3075 = !DILocation(line: 50, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3060, line: 43, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3060, line: 42, column: 3)
!3078 = distinct !DILexicalBlock(scope: !3059, file: !3060, line: 42, column: 3)
!3079 = !DILocation(line: 50, column: 13, scope: !3076)
!3080 = !DILocation(line: 40, column: 19, scope: !3059)
!3081 = !DILocation(line: 51, column: 11, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3076, file: !3060, line: 51, column: 11)
!3083 = !DILocation(line: 51, column: 39, scope: !3082)
!3084 = !DILocation(line: 51, column: 11, scope: !3076)
!3085 = !DILocation(line: 53, column: 11, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3076, file: !3060, line: 53, column: 11)
!3087 = !DILocation(line: 53, column: 26, scope: !3086)
!3088 = distinct !{!3088, !3089, !3090}
!3089 = !DILocation(line: 42, column: 3, scope: !3078)
!3090 = !DILocation(line: 55, column: 5, scope: !3078)
!3091 = !DILocation(line: 58, column: 1, scope: !3059)
!3092 = distinct !DISubprogram(name: "xstrtod", scope: !3093, file: !3093, line: 44, type: !3094, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3098)
!3093 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!50, !6, !3096, !733, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3099 = !DILocalVariable(name: "str", arg: 1, scope: !3092, file: !3093, line: 44, type: !6)
!3100 = !DILocalVariable(name: "ptr", arg: 2, scope: !3092, file: !3093, line: 44, type: !3096)
!3101 = !DILocalVariable(name: "result", arg: 3, scope: !3092, file: !3093, line: 44, type: !733)
!3102 = !DILocalVariable(name: "convert", arg: 4, scope: !3092, file: !3093, line: 45, type: !3097)
!3103 = !DILocalVariable(name: "val", scope: !3092, file: !3093, line: 47, type: !669)
!3104 = !DILocalVariable(name: "terminator", scope: !3092, file: !3093, line: 48, type: !14)
!3105 = !DILocalVariable(name: "ok", scope: !3092, file: !3093, line: 49, type: !50)
!3106 = !DILocation(line: 44, column: 22, scope: !3092)
!3107 = !DILocation(line: 44, column: 40, scope: !3092)
!3108 = !DILocation(line: 44, column: 53, scope: !3092)
!3109 = !DILocation(line: 45, column: 19, scope: !3092)
!3110 = !DILocation(line: 48, column: 3, scope: !3092)
!3111 = !DILocation(line: 49, column: 8, scope: !3092)
!3112 = !DILocation(line: 51, column: 3, scope: !3092)
!3113 = !DILocation(line: 51, column: 9, scope: !3092)
!3114 = !DILocation(line: 48, column: 9, scope: !3092)
!3115 = !DILocation(line: 52, column: 9, scope: !3092)
!3116 = !DILocation(line: 47, column: 10, scope: !3092)
!3117 = !DILocation(line: 55, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3092, file: !3093, line: 55, column: 7)
!3119 = !DILocation(line: 55, column: 18, scope: !3118)
!3120 = !DILocation(line: 55, column: 25, scope: !3118)
!3121 = !DILocation(line: 55, column: 33, scope: !3118)
!3122 = !DILocation(line: 55, column: 41, scope: !3118)
!3123 = !DILocation(line: 55, column: 44, scope: !3118)
!3124 = !DILocation(line: 55, column: 56, scope: !3118)
!3125 = !DILocation(line: 55, column: 7, scope: !3092)
!3126 = !DILocation(line: 62, column: 15, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !3093, line: 62, column: 11)
!3128 = distinct !DILexicalBlock(scope: !3118, file: !3093, line: 58, column: 5)
!3129 = !DILocation(line: 62, column: 20, scope: !3127)
!3130 = !DILocation(line: 62, column: 23, scope: !3127)
!3131 = !DILocation(line: 62, column: 29, scope: !3127)
!3132 = !DILocation(line: 62, column: 11, scope: !3128)
!3133 = !DILocation(line: 66, column: 11, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3092, file: !3093, line: 66, column: 7)
!3135 = !DILocation(line: 66, column: 7, scope: !3092)
!3136 = !DIExpression(DW_OP_deref)
!3137 = !DILocation(line: 67, column: 10, scope: !3134)
!3138 = !DILocation(line: 67, column: 5, scope: !3134)
!3139 = !DILocation(line: 69, column: 11, scope: !3092)
!3140 = !DILocation(line: 71, column: 1, scope: !3092)
!3141 = !DILocation(line: 70, column: 3, scope: !3092)
!3142 = distinct !DISubprogram(name: "rpl_calloc", scope: !3143, file: !3143, line: 42, type: !2804, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3144)
!3143 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !3143, line: 42, type: !124)
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3142, file: !3143, line: 42, type: !124)
!3147 = !DILocalVariable(name: "result", scope: !3142, file: !3143, line: 44, type: !81)
!3148 = !DILocalVariable(name: "bytes", scope: !3149, file: !3143, line: 56, type: !124)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3143, line: 53, column: 5)
!3150 = distinct !DILexicalBlock(scope: !3142, file: !3143, line: 47, column: 7)
!3151 = !DILocation(line: 42, column: 20, scope: !3142)
!3152 = !DILocation(line: 42, column: 30, scope: !3142)
!3153 = !DILocation(line: 47, column: 9, scope: !3150)
!3154 = !DILocation(line: 47, column: 19, scope: !3150)
!3155 = !DILocation(line: 47, column: 14, scope: !3150)
!3156 = !DILocation(line: 56, column: 24, scope: !3149)
!3157 = !DILocation(line: 56, column: 14, scope: !3149)
!3158 = !DILocation(line: 57, column: 17, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3149, file: !3143, line: 57, column: 11)
!3160 = !DILocation(line: 57, column: 21, scope: !3159)
!3161 = !DILocation(line: 57, column: 11, scope: !3149)
!3162 = !DILocation(line: 59, column: 11, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !3143, line: 58, column: 9)
!3164 = !DILocation(line: 59, column: 17, scope: !3163)
!3165 = !DILocation(line: 65, column: 12, scope: !3142)
!3166 = !DILocation(line: 44, column: 9, scope: !3142)
!3167 = !DILocation(line: 72, column: 3, scope: !3142)
!3168 = !DILocation(line: 73, column: 1, scope: !3142)
!3169 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3170, file: !3170, line: 334, type: !3171, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3185)
!3170 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!124, !3173, !6, !124, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1142, line: 6, baseType: !3176)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1144, line: 21, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1144, line: 13, size: 64, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3177, file: !1144, line: 15, baseType: !35, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3177, file: !1144, line: 20, baseType: !3181, size: 32, offset: 32)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3177, file: !1144, line: 16, size: 32, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3181, file: !1144, line: 18, baseType: !143, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3181, file: !1144, line: 19, baseType: !1153, size: 32)
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191, !3192}
!3186 = !DILocalVariable(name: "pwc", arg: 1, scope: !3169, file: !3170, line: 334, type: !3173)
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3169, file: !3170, line: 334, type: !6)
!3188 = !DILocalVariable(name: "n", arg: 3, scope: !3169, file: !3170, line: 334, type: !124)
!3189 = !DILocalVariable(name: "ps", arg: 4, scope: !3169, file: !3170, line: 334, type: !3174)
!3190 = !DILocalVariable(name: "ret", scope: !3169, file: !3170, line: 336, type: !124)
!3191 = !DILocalVariable(name: "wc", scope: !3169, file: !3170, line: 337, type: !1158)
!3192 = !DILocalVariable(name: "uc", scope: !3193, file: !3170, line: 398, type: !524)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3170, line: 397, column: 5)
!3194 = distinct !DILexicalBlock(scope: !3169, file: !3170, line: 396, column: 7)
!3195 = !DILocation(line: 334, column: 23, scope: !3169)
!3196 = !DILocation(line: 334, column: 40, scope: !3169)
!3197 = !DILocation(line: 334, column: 50, scope: !3169)
!3198 = !DILocation(line: 334, column: 64, scope: !3169)
!3199 = !DILocation(line: 337, column: 3, scope: !3169)
!3200 = !DILocation(line: 353, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3169, file: !3170, line: 353, column: 7)
!3202 = !DILocation(line: 353, column: 7, scope: !3169)
!3203 = !DILocation(line: 388, column: 9, scope: !3169)
!3204 = !DILocation(line: 336, column: 10, scope: !3169)
!3205 = !DILocation(line: 396, column: 19, scope: !3194)
!3206 = !DILocation(line: 396, column: 31, scope: !3194)
!3207 = !DILocation(line: 396, column: 26, scope: !3194)
!3208 = !DILocation(line: 396, column: 41, scope: !3194)
!3209 = !DILocation(line: 396, column: 7, scope: !3169)
!3210 = !DILocation(line: 398, column: 26, scope: !3193)
!3211 = !DILocation(line: 398, column: 21, scope: !3193)
!3212 = !DILocation(line: 399, column: 14, scope: !3193)
!3213 = !DILocation(line: 399, column: 12, scope: !3193)
!3214 = !DILocation(line: 405, column: 1, scope: !3169)
!3215 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !592, file: !592, line: 46, type: !3216, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3225)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!35, !3218, !3224}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3067, line: 8, size: 128, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3220, file: !3067, line: 10, baseType: !607, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3220, file: !3067, line: 11, baseType: !3071, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3225 = !{!3226, !3227, !3228, !3231, !3232, !3233}
!3226 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3215, file: !592, line: 46, type: !3218)
!3227 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3215, file: !592, line: 47, type: !3224)
!3228 = !DILocalVariable(name: "limit", scope: !3229, file: !592, line: 65, type: !3230)
!3229 = distinct !DILexicalBlock(scope: !3215, file: !592, line: 62, column: 3)
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!3231 = !DILocalVariable(name: "seconds", scope: !3229, file: !592, line: 66, type: !605)
!3232 = !DILocalVariable(name: "intermediate", scope: !3229, file: !592, line: 67, type: !3220)
!3233 = !DILocalVariable(name: "result", scope: !3234, file: !592, line: 72, type: !35)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !592, line: 71, column: 7)
!3235 = !DILocation(line: 46, column: 35, scope: !3215)
!3236 = !DILocation(line: 47, column: 29, scope: !3215)
!3237 = !DILocation(line: 56, column: 24, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3215, file: !592, line: 56, column: 7)
!3239 = !{!3240, !1936, i64 8}
!3240 = !{!"timespec", !1936, i64 0, !1936, i64 8}
!3241 = !DILocation(line: 56, column: 36, scope: !3238)
!3242 = !DILocation(line: 58, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3238, file: !592, line: 57, column: 5)
!3244 = !DILocation(line: 58, column: 13, scope: !3243)
!3245 = !DILocation(line: 59, column: 7, scope: !3243)
!3246 = !DILocation(line: 65, column: 18, scope: !3229)
!3247 = !DILocation(line: 66, column: 39, scope: !3229)
!3248 = !{!3240, !1936, i64 0}
!3249 = !DILocation(line: 66, column: 12, scope: !3229)
!3250 = !DILocation(line: 67, column: 5, scope: !3229)
!3251 = !DILocation(line: 68, column: 18, scope: !3229)
!3252 = !DILocation(line: 70, column: 18, scope: !3229)
!3253 = !DILocation(line: 70, column: 5, scope: !3229)
!3254 = !DILocation(line: 73, column: 29, scope: !3234)
!3255 = distinct !{!3255, !3253, !3256}
!3256 = !DILocation(line: 83, column: 7, scope: !3229)
!3257 = !DILocation(line: 67, column: 21, scope: !3229)
!3258 = !DILocation(line: 74, column: 18, scope: !3234)
!3259 = !DILocation(line: 72, column: 13, scope: !3234)
!3260 = !DILocation(line: 75, column: 17, scope: !3234)
!3261 = !DILocation(line: 76, column: 13, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3234, file: !592, line: 76, column: 13)
!3263 = !DILocation(line: 76, column: 13, scope: !3234)
!3264 = !DILocation(line: 78, column: 17, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !592, line: 78, column: 17)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !592, line: 77, column: 11)
!3267 = !DILocation(line: 78, column: 17, scope: !3266)
!3268 = !DILocation(line: 79, column: 32, scope: !3265)
!3269 = !DILocation(line: 79, column: 39, scope: !3265)
!3270 = !DILocation(line: 79, column: 15, scope: !3265)
!3271 = !DILocation(line: 84, column: 25, scope: !3229)
!3272 = !DILocation(line: 85, column: 12, scope: !3229)
!3273 = !DILocation(line: 85, column: 5, scope: !3229)
!3274 = !DILocation(line: 86, column: 3, scope: !3215)
!3275 = !DILocation(line: 87, column: 1, scope: !3215)
!3276 = distinct !DISubprogram(name: "close_stream", scope: !3277, file: !3277, line: 56, type: !3278, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !3320)
!3277 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!35, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3282, file: !2621, line: 242, baseType: !35, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3282, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3282, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3282, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3282, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3282, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3282, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3282, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3282, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3282, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3282, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3282, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3282, file: !2621, line: 260, baseType: !3297, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3299)
!3299 = !{!3300, !3301, !3303}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3298, file: !2621, line: 157, baseType: !3297, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3298, file: !2621, line: 158, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3298, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3282, file: !2621, line: 262, baseType: !3302, size: 64, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3282, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3282, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3282, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3282, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3282, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3282, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3282, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3282, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3282, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3282, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3282, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3282, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3282, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3282, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3282, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!3320 = !{!3321, !3322, !3324, !3325}
!3321 = !DILocalVariable(name: "stream", arg: 1, scope: !3276, file: !3277, line: 56, type: !3280)
!3322 = !DILocalVariable(name: "some_pending", scope: !3276, file: !3277, line: 58, type: !3323)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!3324 = !DILocalVariable(name: "prev_fail", scope: !3276, file: !3277, line: 59, type: !3323)
!3325 = !DILocalVariable(name: "fclose_fail", scope: !3276, file: !3277, line: 60, type: !3323)
!3326 = !DILocation(line: 56, column: 21, scope: !3276)
!3327 = !DILocation(line: 58, column: 30, scope: !3276)
!3328 = !DILocalVariable(name: "__stream", arg: 1, scope: !3329, file: !3330, line: 132, type: !3280)
!3329 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3330, file: !3330, line: 132, type: !3278, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !3331)
!3330 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3331 = !{!3328}
!3332 = !DILocation(line: 132, column: 1, scope: !3329, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 59, column: 27, scope: !3276)
!3334 = !DILocation(line: 134, column: 10, scope: !3329, inlinedAt: !3333)
!3335 = !{!3336, !702, i64 0}
!3336 = !{!"_IO_FILE", !702, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !702, i64 112, !702, i64 116, !1936, i64 120, !1392, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !1936, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !1936, i64 184, !702, i64 192, !638, i64 196}
!3337 = !DILocation(line: 59, column: 43, scope: !3276)
!3338 = !DILocation(line: 60, column: 29, scope: !3276)
!3339 = !DILocation(line: 60, column: 45, scope: !3276)
!3340 = !DILocation(line: 70, column: 17, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3276, file: !3277, line: 70, column: 7)
!3342 = !DILocation(line: 58, column: 50, scope: !3276)
!3343 = !DILocation(line: 70, column: 33, scope: !3341)
!3344 = !DILocation(line: 70, column: 53, scope: !3341)
!3345 = !DILocation(line: 70, column: 59, scope: !3341)
!3346 = !DILocation(line: 70, column: 7, scope: !3276)
!3347 = !DILocation(line: 72, column: 11, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !3277, line: 71, column: 5)
!3349 = !DILocation(line: 73, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !3277, line: 72, column: 11)
!3351 = !DILocation(line: 73, column: 15, scope: !3350)
!3352 = !DILocation(line: 78, column: 1, scope: !3276)
!3353 = distinct !DISubprogram(name: "dtotimespec", scope: !3354, file: !3354, line: 30, type: !3355, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3361)
!3354 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!3357, !669}
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3067, line: 8, size: 128, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3357, file: !3067, line: 10, baseType: !607, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3357, file: !3067, line: 11, baseType: !3071, size: 64, offset: 64)
!3361 = !{!3362, !3363, !3367, !3368}
!3362 = !DILocalVariable(name: "sec", arg: 1, scope: !3353, file: !3354, line: 30, type: !669)
!3363 = !DILocalVariable(name: "s", scope: !3364, file: !3354, line: 38, type: !605)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3354, line: 37, column: 5)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3354, line: 34, column: 12)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !3354, line: 32, column: 7)
!3367 = !DILocalVariable(name: "frac", scope: !3364, file: !3354, line: 39, type: !669)
!3368 = !DILocalVariable(name: "ns", scope: !3364, file: !3354, line: 40, type: !609)
!3369 = !DILocation(line: 30, column: 21, scope: !3353)
!3370 = !DILocation(line: 32, column: 32, scope: !3366)
!3371 = !DILocation(line: 32, column: 7, scope: !3353)
!3372 = !DILocation(line: 34, column: 19, scope: !3365)
!3373 = !DILocation(line: 34, column: 12, scope: !3366)
!3374 = !DILocation(line: 38, column: 18, scope: !3364)
!3375 = !DILocation(line: 38, column: 14, scope: !3364)
!3376 = !DILocation(line: 39, column: 50, scope: !3364)
!3377 = !DILocation(line: 39, column: 48, scope: !3364)
!3378 = !DILocation(line: 39, column: 41, scope: !3364)
!3379 = !DILocation(line: 39, column: 14, scope: !3364)
!3380 = !DILocation(line: 40, column: 17, scope: !3364)
!3381 = !DILocation(line: 40, column: 12, scope: !3364)
!3382 = !DILocation(line: 41, column: 13, scope: !3364)
!3383 = !DILocation(line: 41, column: 16, scope: !3364)
!3384 = !DILocation(line: 41, column: 10, scope: !3364)
!3385 = !DILocation(line: 42, column: 15, scope: !3364)
!3386 = !DILocation(line: 42, column: 9, scope: !3364)
!3387 = !DILocation(line: 43, column: 10, scope: !3364)
!3388 = !DILocation(line: 45, column: 14, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3364, file: !3354, line: 45, column: 11)
!3390 = !DILocation(line: 48, column: 14, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3389, file: !3354, line: 46, column: 9)
!3392 = !DILocation(line: 45, column: 11, scope: !3364)
!3393 = !DILocalVariable(name: "s", arg: 1, scope: !3394, file: !601, line: 41, type: !605)
!3394 = distinct !DISubprogram(name: "make_timespec", scope: !601, file: !601, line: 41, type: !3395, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!3357, !605, !609}
!3397 = !{!3393, !3398, !3399}
!3398 = !DILocalVariable(name: "ns", arg: 2, scope: !3394, file: !601, line: 41, type: !609)
!3399 = !DILocalVariable(name: "r", scope: !3394, file: !601, line: 43, type: !3357)
!3400 = !DILocation(line: 41, column: 23, scope: !3394, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 51, column: 14, scope: !3364)
!3402 = !DILocation(line: 41, column: 35, scope: !3394, inlinedAt: !3401)
!3403 = !DILocation(line: 43, column: 19, scope: !3394, inlinedAt: !3401)
!3404 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!3405 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!3406 = !DILocation(line: 47, column: 1, scope: !3394, inlinedAt: !3401)
!3407 = !DILocation(line: 53, column: 1, scope: !3353)
!3408 = distinct !DISubprogram(name: "hard_locale", scope: !3409, file: !3409, line: 38, type: !3410, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3412)
!3409 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!50, !35}
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "category", arg: 1, scope: !3408, file: !3409, line: 38, type: !35)
!3414 = !DILocalVariable(name: "hard", scope: !3408, file: !3409, line: 40, type: !50)
!3415 = !DILocalVariable(name: "p", scope: !3408, file: !3409, line: 41, type: !6)
!3416 = !DILocation(line: 38, column: 18, scope: !3408)
!3417 = !DILocation(line: 40, column: 8, scope: !3408)
!3418 = !DILocation(line: 41, column: 19, scope: !3408)
!3419 = !DILocation(line: 41, column: 15, scope: !3408)
!3420 = !DILocation(line: 43, column: 7, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3408, file: !3409, line: 43, column: 7)
!3422 = !DILocation(line: 43, column: 7, scope: !3408)
!3423 = !DILocation(line: 47, column: 15, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3409, line: 47, column: 15)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !3409, line: 46, column: 9)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3409, line: 45, column: 11)
!3427 = distinct !DILexicalBlock(scope: !3421, file: !3409, line: 44, column: 5)
!3428 = !DILocation(line: 47, column: 31, scope: !3424)
!3429 = !DILocation(line: 47, column: 36, scope: !3424)
!3430 = !DILocation(line: 47, column: 39, scope: !3424)
!3431 = !DILocation(line: 47, column: 59, scope: !3424)
!3432 = !DILocation(line: 47, column: 15, scope: !3425)
!3433 = !DILocation(line: 48, column: 13, scope: !3424)
!3434 = !DILocation(line: 71, column: 3, scope: !3408)
!3435 = distinct !DISubprogram(name: "locale_charset", scope: !526, file: !526, line: 393, type: !3436, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!6}
!3438 = !{!3439, !3440}
!3439 = !DILocalVariable(name: "codeset", scope: !3435, file: !526, line: 395, type: !6)
!3440 = !DILocalVariable(name: "aliases", scope: !3435, file: !526, line: 396, type: !6)
!3441 = !DILocalVariable(name: "buf1", scope: !3442, file: !526, line: 196, type: !3509)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !526, line: 194, column: 21)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !526, line: 193, column: 19)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !526, line: 193, column: 19)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !526, line: 188, column: 17)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !526, line: 181, column: 19)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !526, line: 177, column: 13)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !526, line: 173, column: 15)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !526, line: 161, column: 9)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !526, line: 157, column: 11)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !526, line: 130, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !526, line: 129, column: 7)
!3453 = distinct !DISubprogram(name: "get_charset_aliases", scope: !526, file: !526, line: 124, type: !3436, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3461, !3462, !3463, !3464, !3505, !3506, !3507, !3441, !3508, !3512, !3513, !3514}
!3455 = !DILocalVariable(name: "cp", scope: !3453, file: !526, line: 126, type: !6)
!3456 = !DILocalVariable(name: "dir", scope: !3451, file: !526, line: 132, type: !6)
!3457 = !DILocalVariable(name: "base", scope: !3451, file: !526, line: 133, type: !6)
!3458 = !DILocalVariable(name: "file_name", scope: !3451, file: !526, line: 134, type: !14)
!3459 = !DILocalVariable(name: "dir_len", scope: !3460, file: !526, line: 144, type: !124)
!3460 = distinct !DILexicalBlock(scope: !3451, file: !526, line: 143, column: 7)
!3461 = !DILocalVariable(name: "base_len", scope: !3460, file: !526, line: 145, type: !124)
!3462 = !DILocalVariable(name: "add_slash", scope: !3460, file: !526, line: 146, type: !35)
!3463 = !DILocalVariable(name: "fd", scope: !3449, file: !526, line: 162, type: !35)
!3464 = !DILocalVariable(name: "fp", scope: !3447, file: !526, line: 178, type: !3465)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3467, file: !2621, line: 242, baseType: !35, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3467, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3467, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3467, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3467, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3467, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3467, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3467, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3467, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3467, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3467, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3467, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3467, file: !2621, line: 260, baseType: !3482, size: 64, offset: 768)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3484)
!3484 = !{!3485, !3486, !3488}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3483, file: !2621, line: 157, baseType: !3482, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3483, file: !2621, line: 158, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3483, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3467, file: !2621, line: 262, baseType: !3487, size: 64, offset: 832)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3467, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3467, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3467, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3467, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3467, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3467, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3467, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3467, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3467, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3467, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3467, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3467, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3467, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3467, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3467, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!3505 = !DILocalVariable(name: "res_ptr", scope: !3445, file: !526, line: 190, type: !14)
!3506 = !DILocalVariable(name: "res_size", scope: !3445, file: !526, line: 191, type: !124)
!3507 = !DILocalVariable(name: "c", scope: !3442, file: !526, line: 195, type: !35)
!3508 = !DILocalVariable(name: "buf2", scope: !3442, file: !526, line: 197, type: !3509)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 51)
!3512 = !DILocalVariable(name: "l1", scope: !3442, file: !526, line: 198, type: !124)
!3513 = !DILocalVariable(name: "l2", scope: !3442, file: !526, line: 198, type: !124)
!3514 = !DILocalVariable(name: "old_res_ptr", scope: !3442, file: !526, line: 199, type: !14)
!3515 = !DILocation(line: 196, column: 28, scope: !3442, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 589, column: 18, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3435, file: !526, line: 589, column: 3)
!3518 = !DILocation(line: 197, column: 28, scope: !3442, inlinedAt: !3516)
!3519 = !DILocation(line: 403, column: 13, scope: !3435)
!3520 = !DILocation(line: 395, column: 15, scope: !3435)
!3521 = !DILocation(line: 584, column: 15, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3435, file: !526, line: 584, column: 7)
!3523 = !DILocation(line: 584, column: 7, scope: !3435)
!3524 = !DILocation(line: 128, column: 8, scope: !3453, inlinedAt: !3516)
!3525 = !DILocation(line: 126, column: 15, scope: !3453, inlinedAt: !3516)
!3526 = !DILocation(line: 129, column: 10, scope: !3452, inlinedAt: !3516)
!3527 = !DILocation(line: 129, column: 7, scope: !3453, inlinedAt: !3516)
!3528 = !DILocation(line: 138, column: 13, scope: !3451, inlinedAt: !3516)
!3529 = !DILocation(line: 132, column: 19, scope: !3451, inlinedAt: !3516)
!3530 = !DILocation(line: 139, column: 15, scope: !3531, inlinedAt: !3516)
!3531 = distinct !DILexicalBlock(scope: !3451, file: !526, line: 139, column: 11)
!3532 = !DILocation(line: 139, column: 23, scope: !3531, inlinedAt: !3516)
!3533 = !DILocation(line: 139, column: 26, scope: !3531, inlinedAt: !3516)
!3534 = !DILocation(line: 139, column: 33, scope: !3531, inlinedAt: !3516)
!3535 = !DILocation(line: 139, column: 11, scope: !3451, inlinedAt: !3516)
!3536 = !DILocation(line: 140, column: 9, scope: !3531, inlinedAt: !3516)
!3537 = !DILocation(line: 144, column: 26, scope: !3460, inlinedAt: !3516)
!3538 = !DILocation(line: 144, column: 16, scope: !3460, inlinedAt: !3516)
!3539 = !DILocation(line: 145, column: 16, scope: !3460, inlinedAt: !3516)
!3540 = !DILocation(line: 146, column: 34, scope: !3460, inlinedAt: !3516)
!3541 = !DILocation(line: 146, column: 38, scope: !3460, inlinedAt: !3516)
!3542 = !DILocation(line: 146, column: 42, scope: !3460, inlinedAt: !3516)
!3543 = !DILocation(line: 147, column: 48, scope: !3460, inlinedAt: !3516)
!3544 = !DILocation(line: 147, column: 46, scope: !3460, inlinedAt: !3516)
!3545 = !DILocation(line: 147, column: 69, scope: !3460, inlinedAt: !3516)
!3546 = !DILocation(line: 147, column: 30, scope: !3460, inlinedAt: !3516)
!3547 = !DILocation(line: 134, column: 13, scope: !3451, inlinedAt: !3516)
!3548 = !DILocation(line: 148, column: 13, scope: !3460, inlinedAt: !3516)
!3549 = !DILocation(line: 150, column: 13, scope: !3550, inlinedAt: !3516)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !526, line: 149, column: 11)
!3551 = distinct !DILexicalBlock(scope: !3460, file: !526, line: 148, column: 13)
!3552 = !DILocation(line: 151, column: 17, scope: !3550, inlinedAt: !3516)
!3553 = !DILocation(line: 152, column: 34, scope: !3554, inlinedAt: !3516)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !526, line: 151, column: 17)
!3555 = !DILocation(line: 153, column: 41, scope: !3550, inlinedAt: !3516)
!3556 = !DILocation(line: 153, column: 13, scope: !3550, inlinedAt: !3516)
!3557 = !DILocation(line: 157, column: 11, scope: !3451, inlinedAt: !3516)
!3558 = !DILocation(line: 171, column: 16, scope: !3449, inlinedAt: !3516)
!3559 = !DILocation(line: 162, column: 15, scope: !3449, inlinedAt: !3516)
!3560 = !DILocation(line: 173, column: 18, scope: !3448, inlinedAt: !3516)
!3561 = !DILocation(line: 173, column: 15, scope: !3449, inlinedAt: !3516)
!3562 = !DILocation(line: 180, column: 20, scope: !3447, inlinedAt: !3516)
!3563 = !DILocation(line: 178, column: 21, scope: !3447, inlinedAt: !3516)
!3564 = !DILocation(line: 181, column: 22, scope: !3446, inlinedAt: !3516)
!3565 = !DILocation(line: 181, column: 19, scope: !3447, inlinedAt: !3516)
!3566 = !DILocation(line: 184, column: 19, scope: !3567, inlinedAt: !3516)
!3567 = distinct !DILexicalBlock(scope: !3446, file: !526, line: 182, column: 17)
!3568 = !DILocation(line: 186, column: 17, scope: !3567, inlinedAt: !3516)
!3569 = !DILocation(line: 190, column: 25, scope: !3445, inlinedAt: !3516)
!3570 = !DILocation(line: 191, column: 26, scope: !3445, inlinedAt: !3516)
!3571 = !DILocation(line: 193, column: 19, scope: !3445, inlinedAt: !3516)
!3572 = !DILocation(line: 196, column: 23, scope: !3442, inlinedAt: !3516)
!3573 = !DILocation(line: 197, column: 23, scope: !3442, inlinedAt: !3516)
!3574 = !DILocalVariable(name: "__fp", arg: 1, scope: !3575, file: !3330, line: 63, type: !3465)
!3575 = distinct !DISubprogram(name: "getc_unlocked", scope: !3330, file: !3330, line: 63, type: !3576, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!35, !3465}
!3578 = !{!3574}
!3579 = !DILocation(line: 63, column: 22, scope: !3575, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 201, column: 27, scope: !3442, inlinedAt: !3516)
!3581 = !DILocation(line: 65, column: 10, scope: !3575, inlinedAt: !3580)
!3582 = !{!3336, !637, i64 8}
!3583 = !{!3336, !637, i64 16}
!3584 = !{!"branch_weights", i32 2000, i32 1}
!3585 = !DILocation(line: 195, column: 27, scope: !3442, inlinedAt: !3516)
!3586 = !DILocation(line: 202, column: 27, scope: !3442, inlinedAt: !3516)
!3587 = distinct !{!3587, !3588, !3591}
!3588 = !DILocation(line: 209, column: 27, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !526, line: 207, column: 25)
!3590 = distinct !DILexicalBlock(scope: !3442, file: !526, line: 206, column: 27)
!3591 = !DILocation(line: 211, column: 58, scope: !3589)
!3592 = !DILocation(line: 65, column: 10, scope: !3575, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 210, column: 33, scope: !3589, inlinedAt: !3516)
!3594 = !DILocation(line: 63, column: 22, scope: !3575, inlinedAt: !3593)
!3595 = !DILocation(line: 210, column: 29, scope: !3589, inlinedAt: !3516)
!3596 = distinct !{!3596, !3597, !3598}
!3597 = !DILocation(line: 193, column: 19, scope: !3444)
!3598 = !DILocation(line: 241, column: 21, scope: !3444)
!3599 = !DILocation(line: 216, column: 23, scope: !3442, inlinedAt: !3516)
!3600 = !DILocation(line: 217, column: 27, scope: !3601, inlinedAt: !3516)
!3601 = distinct !DILexicalBlock(scope: !3442, file: !526, line: 217, column: 27)
!3602 = !DILocation(line: 217, column: 64, scope: !3601, inlinedAt: !3516)
!3603 = !DILocation(line: 217, column: 27, scope: !3442, inlinedAt: !3516)
!3604 = !DILocation(line: 219, column: 28, scope: !3442, inlinedAt: !3516)
!3605 = !DILocation(line: 198, column: 30, scope: !3442, inlinedAt: !3516)
!3606 = !DILocation(line: 220, column: 28, scope: !3442, inlinedAt: !3516)
!3607 = !DILocation(line: 198, column: 34, scope: !3442, inlinedAt: !3516)
!3608 = !DILocation(line: 199, column: 29, scope: !3442, inlinedAt: !3516)
!3609 = !DILocation(line: 222, column: 36, scope: !3610, inlinedAt: !3516)
!3610 = distinct !DILexicalBlock(scope: !3442, file: !526, line: 222, column: 27)
!3611 = !DILocation(line: 222, column: 27, scope: !3442, inlinedAt: !3516)
!3612 = !DILocation(line: 225, column: 63, scope: !3613, inlinedAt: !3516)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !526, line: 223, column: 25)
!3614 = !DILocation(line: 225, column: 46, scope: !3613, inlinedAt: !3516)
!3615 = !DILocation(line: 226, column: 25, scope: !3613, inlinedAt: !3516)
!3616 = !DILocation(line: 229, column: 36, scope: !3617, inlinedAt: !3516)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !526, line: 228, column: 25)
!3618 = !DILocation(line: 230, column: 73, scope: !3617, inlinedAt: !3516)
!3619 = !DILocation(line: 230, column: 46, scope: !3617, inlinedAt: !3516)
!3620 = !DILocation(line: 232, column: 35, scope: !3621, inlinedAt: !3516)
!3621 = distinct !DILexicalBlock(scope: !3442, file: !526, line: 232, column: 27)
!3622 = !DILocation(line: 232, column: 27, scope: !3442, inlinedAt: !3516)
!3623 = !DILocation(line: 236, column: 27, scope: !3624, inlinedAt: !3516)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !526, line: 233, column: 25)
!3625 = !DILocation(line: 237, column: 27, scope: !3624, inlinedAt: !3516)
!3626 = !DILocation(line: 241, column: 21, scope: !3443, inlinedAt: !3516)
!3627 = !DILocation(line: 239, column: 39, scope: !3442, inlinedAt: !3516)
!3628 = !DILocation(line: 239, column: 50, scope: !3442, inlinedAt: !3516)
!3629 = !DILocation(line: 239, column: 61, scope: !3442, inlinedAt: !3516)
!3630 = !DILocalVariable(name: "__dest", arg: 1, scope: !3631, file: !3632, line: 88, type: !3635)
!3631 = distinct !DISubprogram(name: "strcpy", scope: !3632, file: !3632, line: 88, type: !3633, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !3637)
!3632 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!14, !3635, !3636}
!3635 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!3636 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3637 = !{!3630, !3638}
!3638 = !DILocalVariable(name: "__src", arg: 2, scope: !3631, file: !3632, line: 88, type: !3636)
!3639 = !DILocation(line: 88, column: 1, scope: !3631, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 239, column: 23, scope: !3442, inlinedAt: !3516)
!3641 = !DILocation(line: 90, column: 49, scope: !3631, inlinedAt: !3640)
!3642 = !DILocation(line: 90, column: 10, scope: !3631, inlinedAt: !3640)
!3643 = !DILocation(line: 88, column: 1, scope: !3631, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 240, column: 23, scope: !3442, inlinedAt: !3516)
!3645 = !DILocation(line: 90, column: 49, scope: !3631, inlinedAt: !3644)
!3646 = !DILocation(line: 90, column: 10, scope: !3631, inlinedAt: !3644)
!3647 = !DILocation(line: 193, column: 19, scope: !3443, inlinedAt: !3516)
!3648 = !DILocation(line: 242, column: 19, scope: !3445, inlinedAt: !3516)
!3649 = !DILocation(line: 243, column: 32, scope: !3650, inlinedAt: !3516)
!3650 = distinct !DILexicalBlock(scope: !3445, file: !526, line: 243, column: 23)
!3651 = !DILocation(line: 243, column: 23, scope: !3445, inlinedAt: !3516)
!3652 = !DILocation(line: 247, column: 33, scope: !3653, inlinedAt: !3516)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !526, line: 246, column: 21)
!3654 = !DILocation(line: 247, column: 45, scope: !3653, inlinedAt: !3516)
!3655 = !DILocation(line: 253, column: 11, scope: !3449, inlinedAt: !3516)
!3656 = !DILocation(line: 377, column: 23, scope: !3451, inlinedAt: !3516)
!3657 = !DILocation(line: 378, column: 5, scope: !3451, inlinedAt: !3516)
!3658 = !DILocation(line: 396, column: 15, scope: !3435)
!3659 = !DILocation(line: 590, column: 8, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3517, file: !526, line: 589, column: 3)
!3661 = !DILocation(line: 590, column: 17, scope: !3660)
!3662 = !DILocation(line: 589, column: 3, scope: !3517)
!3663 = !DILocation(line: 592, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !526, line: 592, column: 9)
!3665 = !DILocation(line: 592, column: 35, scope: !3664)
!3666 = !DILocation(line: 593, column: 9, scope: !3664)
!3667 = !DILocation(line: 593, column: 24, scope: !3664)
!3668 = !DILocation(line: 593, column: 31, scope: !3664)
!3669 = !DILocation(line: 593, column: 34, scope: !3664)
!3670 = !DILocation(line: 593, column: 45, scope: !3664)
!3671 = !DILocation(line: 592, column: 9, scope: !3660)
!3672 = !DILocation(line: 595, column: 29, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3664, file: !526, line: 594, column: 7)
!3674 = !DILocation(line: 595, column: 27, scope: !3673)
!3675 = !DILocation(line: 595, column: 46, scope: !3673)
!3676 = !DILocation(line: 596, column: 9, scope: !3673)
!3677 = !DILocation(line: 591, column: 19, scope: !3660)
!3678 = !DILocation(line: 591, column: 36, scope: !3660)
!3679 = !DILocation(line: 591, column: 16, scope: !3660)
!3680 = !DILocation(line: 591, column: 52, scope: !3660)
!3681 = !DILocation(line: 591, column: 69, scope: !3660)
!3682 = !DILocation(line: 591, column: 49, scope: !3660)
!3683 = distinct !{!3683, !3662, !3684}
!3684 = !DILocation(line: 597, column: 7, scope: !3517)
!3685 = !DILocation(line: 602, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3435, file: !526, line: 602, column: 7)
!3687 = !DILocation(line: 602, column: 18, scope: !3686)
!3688 = !DILocation(line: 602, column: 7, scope: !3435)
!3689 = !DILocation(line: 612, column: 3, scope: !3435)
!3690 = distinct !DISubprogram(name: "rpl_fclose", scope: !3691, file: !3691, line: 56, type: !3692, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3734)
!3691 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!35, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3696, file: !2621, line: 242, baseType: !35, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3696, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3696, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3696, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3696, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3696, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3696, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3696, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3696, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3696, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3696, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3696, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3696, file: !2621, line: 260, baseType: !3711, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3713)
!3713 = !{!3714, !3715, !3717}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3712, file: !2621, line: 157, baseType: !3711, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3712, file: !2621, line: 158, baseType: !3716, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3712, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3696, file: !2621, line: 262, baseType: !3716, size: 64, offset: 832)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3696, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3696, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3696, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3696, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3696, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3696, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3696, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3696, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3696, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3696, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3696, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3696, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3696, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3696, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3696, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DILocalVariable(name: "fp", arg: 1, scope: !3690, file: !3691, line: 56, type: !3694)
!3736 = !DILocalVariable(name: "saved_errno", scope: !3690, file: !3691, line: 58, type: !35)
!3737 = !DILocalVariable(name: "fd", scope: !3690, file: !3691, line: 59, type: !35)
!3738 = !DILocalVariable(name: "result", scope: !3690, file: !3691, line: 60, type: !35)
!3739 = !DILocation(line: 56, column: 19, scope: !3690)
!3740 = !DILocation(line: 58, column: 7, scope: !3690)
!3741 = !DILocation(line: 60, column: 7, scope: !3690)
!3742 = !DILocation(line: 63, column: 8, scope: !3690)
!3743 = !DILocation(line: 59, column: 7, scope: !3690)
!3744 = !DILocation(line: 64, column: 10, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3690, file: !3691, line: 64, column: 7)
!3746 = !DILocation(line: 64, column: 7, scope: !3690)
!3747 = !DILocation(line: 65, column: 12, scope: !3745)
!3748 = !DILocation(line: 65, column: 5, scope: !3745)
!3749 = !DILocation(line: 70, column: 9, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3690, file: !3691, line: 70, column: 7)
!3751 = !DILocation(line: 70, column: 23, scope: !3750)
!3752 = !DILocation(line: 70, column: 33, scope: !3750)
!3753 = !DILocation(line: 70, column: 26, scope: !3750)
!3754 = !DILocation(line: 70, column: 59, scope: !3750)
!3755 = !DILocation(line: 71, column: 7, scope: !3750)
!3756 = !DILocation(line: 71, column: 10, scope: !3750)
!3757 = !DILocation(line: 70, column: 7, scope: !3690)
!3758 = !DILocation(line: 98, column: 12, scope: !3690)
!3759 = !DILocation(line: 103, column: 7, scope: !3690)
!3760 = !DILocation(line: 72, column: 19, scope: !3750)
!3761 = !DILocation(line: 103, column: 19, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3690, file: !3691, line: 103, column: 7)
!3763 = !DILocation(line: 105, column: 13, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3762, file: !3691, line: 104, column: 5)
!3765 = !DILocation(line: 107, column: 5, scope: !3764)
!3766 = !DILocation(line: 110, column: 1, scope: !3690)
!3767 = distinct !DISubprogram(name: "rpl_fflush", scope: !3768, file: !3768, line: 127, type: !3769, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3811)
!3768 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!35, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3773)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3773, file: !2621, line: 242, baseType: !35, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3773, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3773, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3773, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3773, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3773, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3773, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3773, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3773, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3773, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3773, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3773, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3773, file: !2621, line: 260, baseType: !3788, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3790)
!3790 = !{!3791, !3792, !3794}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3789, file: !2621, line: 157, baseType: !3788, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3789, file: !2621, line: 158, baseType: !3793, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3789, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3773, file: !2621, line: 262, baseType: !3793, size: 64, offset: 832)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3773, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3773, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3773, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3773, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3773, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3773, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3773, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3773, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3773, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3773, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3773, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3773, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3773, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3773, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3773, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "stream", arg: 1, scope: !3767, file: !3768, line: 127, type: !3771)
!3813 = !DILocation(line: 127, column: 19, scope: !3767)
!3814 = !DILocation(line: 148, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3767, file: !3768, line: 148, column: 7)
!3816 = !DILocation(line: 148, column: 22, scope: !3815)
!3817 = !DILocation(line: 148, column: 27, scope: !3815)
!3818 = !DILocation(line: 148, column: 7, scope: !3767)
!3819 = !DILocation(line: 149, column: 12, scope: !3815)
!3820 = !DILocation(line: 149, column: 5, scope: !3815)
!3821 = !DILocalVariable(name: "fp", arg: 1, scope: !3822, file: !3768, line: 40, type: !3771)
!3822 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3768, file: !3768, line: 40, type: !3823, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3771}
!3825 = !{!3821}
!3826 = !DILocation(line: 40, column: 48, scope: !3822, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 153, column: 3, scope: !3767)
!3828 = !DILocation(line: 42, column: 11, scope: !3829, inlinedAt: !3827)
!3829 = distinct !DILexicalBlock(scope: !3822, file: !3768, line: 42, column: 7)
!3830 = !DILocation(line: 42, column: 18, scope: !3829, inlinedAt: !3827)
!3831 = !DILocation(line: 42, column: 7, scope: !3822, inlinedAt: !3827)
!3832 = !DILocation(line: 44, column: 5, scope: !3829, inlinedAt: !3827)
!3833 = !DILocation(line: 155, column: 10, scope: !3767)
!3834 = !DILocation(line: 155, column: 3, scope: !3767)
!3835 = !DILocation(line: 229, column: 1, scope: !3767)
!3836 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3837, file: !3837, line: 28, type: !3838, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !3881)
!3837 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!35, !3840, !3880, !35}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3842)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3842, file: !2621, line: 242, baseType: !35, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3842, file: !2621, line: 247, baseType: !14, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3842, file: !2621, line: 248, baseType: !14, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3842, file: !2621, line: 249, baseType: !14, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3842, file: !2621, line: 250, baseType: !14, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3842, file: !2621, line: 251, baseType: !14, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3842, file: !2621, line: 252, baseType: !14, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3842, file: !2621, line: 253, baseType: !14, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3842, file: !2621, line: 254, baseType: !14, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3842, file: !2621, line: 256, baseType: !14, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3842, file: !2621, line: 257, baseType: !14, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3842, file: !2621, line: 258, baseType: !14, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3842, file: !2621, line: 260, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3859)
!3859 = !{!3860, !3861, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3858, file: !2621, line: 157, baseType: !3857, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3858, file: !2621, line: 158, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3858, file: !2621, line: 162, baseType: !35, size: 32, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3842, file: !2621, line: 262, baseType: !3862, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3842, file: !2621, line: 264, baseType: !35, size: 32, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3842, file: !2621, line: 268, baseType: !35, size: 32, offset: 928)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3842, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3842, file: !2621, line: 274, baseType: !31, size: 16, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3842, file: !2621, line: 275, baseType: !2650, size: 8, offset: 1040)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3842, file: !2621, line: 276, baseType: !2652, size: 8, offset: 1048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3842, file: !2621, line: 280, baseType: !2654, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3842, file: !2621, line: 289, baseType: !2657, size: 64, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3842, file: !2621, line: 297, baseType: !81, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3842, file: !2621, line: 298, baseType: !81, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3842, file: !2621, line: 299, baseType: !81, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3842, file: !2621, line: 300, baseType: !81, size: 64, offset: 1408)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3842, file: !2621, line: 302, baseType: !124, size: 64, offset: 1472)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3842, file: !2621, line: 303, baseType: !35, size: 32, offset: 1536)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3842, file: !2621, line: 305, baseType: !2665, size: 160, offset: 1568)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !876, line: 57, baseType: !2647)
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "fp", arg: 1, scope: !3836, file: !3837, line: 28, type: !3840)
!3883 = !DILocalVariable(name: "offset", arg: 2, scope: !3836, file: !3837, line: 28, type: !3880)
!3884 = !DILocalVariable(name: "whence", arg: 3, scope: !3836, file: !3837, line: 28, type: !35)
!3885 = !DILocalVariable(name: "pos", scope: !3886, file: !3837, line: 116, type: !3880)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3837, line: 112, column: 5)
!3887 = distinct !DILexicalBlock(scope: !3836, file: !3837, line: 51, column: 7)
!3888 = !DILocation(line: 28, column: 15, scope: !3836)
!3889 = !DILocation(line: 28, column: 25, scope: !3836)
!3890 = !DILocation(line: 28, column: 37, scope: !3836)
!3891 = !DILocation(line: 51, column: 11, scope: !3887)
!3892 = !DILocation(line: 51, column: 31, scope: !3887)
!3893 = !DILocation(line: 51, column: 24, scope: !3887)
!3894 = !DILocation(line: 52, column: 7, scope: !3887)
!3895 = !DILocation(line: 52, column: 14, scope: !3887)
!3896 = !{!3336, !637, i64 40}
!3897 = !DILocation(line: 52, column: 35, scope: !3887)
!3898 = !{!3336, !637, i64 32}
!3899 = !DILocation(line: 52, column: 28, scope: !3887)
!3900 = !DILocation(line: 53, column: 7, scope: !3887)
!3901 = !DILocation(line: 53, column: 14, scope: !3887)
!3902 = !{!3336, !637, i64 72}
!3903 = !DILocation(line: 53, column: 28, scope: !3887)
!3904 = !DILocation(line: 51, column: 7, scope: !3836)
!3905 = !DILocation(line: 116, column: 26, scope: !3886)
!3906 = !DILocation(line: 116, column: 19, scope: !3886)
!3907 = !DILocation(line: 116, column: 13, scope: !3886)
!3908 = !DILocation(line: 117, column: 15, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3886, file: !3837, line: 117, column: 11)
!3910 = !DILocation(line: 117, column: 11, scope: !3886)
!3911 = !DILocation(line: 127, column: 11, scope: !3886)
!3912 = !DILocation(line: 127, column: 18, scope: !3886)
!3913 = !DILocation(line: 128, column: 11, scope: !3886)
!3914 = !DILocation(line: 128, column: 19, scope: !3886)
!3915 = !{!3336, !1936, i64 144}
!3916 = !DILocation(line: 159, column: 7, scope: !3886)
!3917 = !DILocation(line: 161, column: 10, scope: !3836)
!3918 = !DILocation(line: 161, column: 3, scope: !3836)
!3919 = !DILocation(line: 162, column: 1, scope: !3836)
