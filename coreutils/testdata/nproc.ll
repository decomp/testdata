; ModuleID = 'coreutils-8.27/src/nproc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.cpu_set_t = type { [16 x i64] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [128 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [116 x i8] c"     --all       print the number of installed processors\0A     --ignore=N  if possible, exclude N processing units\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !51
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !57
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !62
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !66
@.str.34 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.35 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !73
@.str.40 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.42 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.52, i32 0, i32 0), i8* null], align 16, !dbg !80
@.str.43 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.44 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.45 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.46 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.47 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.48 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.49 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.50 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.51 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.52 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !125
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !132
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.53 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.54 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.58 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !152
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !159
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !161
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !167
@.str.1.93 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.101 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.111 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !176
@.str.3.115 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.116 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.117 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.118 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.119 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !809 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !813, metadata !814), !dbg !815
  %2 = icmp eq i32 %0, 0, !dbg !816
  br i1 %2, label %8, label %3, !dbg !818

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !819, !tbaa !821
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !819
  %6 = load i8*, i8** @program_name, align 8, !dbg !819, !tbaa !821
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !819
  br label %39, !dbg !819

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !825
  %10 = load i8*, i8** @program_name, align 8, !dbg !825, !tbaa !821
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !825
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !827
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !827, !tbaa !821
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !827
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !828
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !828, !tbaa !821
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !828
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !829
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !821
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !829
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !830
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830, !tbaa !821
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !830
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !26, metadata !814) #10, !dbg !831
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !26, metadata !814) #10, !dbg !831
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !833
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !833
  %26 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !834
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !34, metadata !814) #10, !dbg !835
  %27 = icmp eq i8* %26, null, !dbg !836
  br i1 %27, label %34, label %28, !dbg !838

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !839
  %30 = icmp eq i32 %29, 0, !dbg !839
  br i1 %30, label %34, label %31, !dbg !840

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !841
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !841
  br label %34, !dbg !843

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !844
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !844
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !845
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !845
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #15, !dbg !846
  unreachable, !dbg !846
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !847 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !852, metadata !814), !dbg !859
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !853, metadata !814), !dbg !860
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !855, metadata !814), !dbg !861
  %3 = load i8*, i8** %1, align 8, !dbg !862, !tbaa !821
  tail call void @set_program_name(i8* %3) #10, !dbg !863
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !864
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !865
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !866
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !867
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !856, metadata !814), !dbg !868
  br label %8, !dbg !869

; <label>:8:                                      ; preds = %18, %2
  %9 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !870

; <label>:11:                                     ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ]
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !856, metadata !814), !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !855, metadata !814), !dbg !861
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !870
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !857, metadata !814), !dbg !871
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %11
    i32 129, label %18
  ], !dbg !872, !llvm.loop !873

; <label>:14:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !875
  unreachable, !dbg !875

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !877, !tbaa !821
  %17 = load i8*, i8** @Version, align 8, !dbg !877, !tbaa !821
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !877
  tail call void @exit(i32 0) #15, !dbg !877
  unreachable, !dbg !877

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** @optarg, align 8, !dbg !878, !tbaa !821
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !879
  %21 = tail call i64 @xdectoumax(i8* %19, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 0) #10, !dbg !880
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !855, metadata !814), !dbg !861
  br label %8, !dbg !881, !llvm.loop !873

; <label>:22:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !882
  unreachable, !dbg !882

; <label>:23:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !856, metadata !814), !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !855, metadata !814), !dbg !861
  %24 = load i32, i32* @optind, align 4, !dbg !883, !tbaa !885
  %25 = icmp eq i32 %24, %0, !dbg !887
  br i1 %25, label %33, label %26, !dbg !888

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !889
  %28 = load i32, i32* @optind, align 4, !dbg !891, !tbaa !885
  %29 = sext i32 %28 to i64, !dbg !892
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !892
  %31 = load i8*, i8** %30, align 8, !dbg !892, !tbaa !821
  %32 = tail call i8* @quote(i8* %31) #10, !dbg !893
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %32) #10, !dbg !894
  tail call void @usage(i32 1) #16, !dbg !895
  unreachable, !dbg !895

; <label>:33:                                     ; preds = %23
  %34 = tail call i64 @num_processors(i32 %12) #10, !dbg !896
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !854, metadata !814), !dbg !897
  %35 = icmp ugt i64 %34, %9, !dbg !898
  %36 = sub i64 %34, %9, !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !854, metadata !814), !dbg !897
  %37 = select i1 %35, i64 %36, i64 1, !dbg !901
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !854, metadata !814), !dbg !897
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %37) #10, !dbg !902
  ret i32 0, !dbg !903
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !904 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !906, metadata !814), !dbg !907
  store i8* %0, i8** @file_name, align 8, !dbg !908, !tbaa !821
  ret void, !dbg !909
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !910 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !914, metadata !814), !dbg !915
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !916, !tbaa !917
  ret void, !dbg !919
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !920 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !821
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !928
  %3 = icmp eq i32 %2, 0, !dbg !929
  br i1 %3, label %21, label %4, !dbg !930

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !931, !tbaa !917, !range !932
  %6 = icmp eq i8 %5, 0, !dbg !931
  %7 = tail call i32* @__errno_location() #17, !dbg !933
  br i1 %6, label %11, label %8, !dbg !935

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !936, !tbaa !885
  %10 = icmp eq i32 %9, 32, !dbg !937
  br i1 %10, label %21, label %11, !dbg !938

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !939
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !924, metadata !814), !dbg !940
  %13 = load i8*, i8** @file_name, align 8, !dbg !941, !tbaa !821
  %14 = icmp eq i8* %13, null, !dbg !941
  %15 = load i32, i32* %7, align 4, !tbaa !885
  br i1 %14, label %18, label %16, !dbg !942

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !943
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !944
  br label %19, !dbg !944

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #10, !dbg !945
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !946, !tbaa !885
  tail call void @_exit(i32 %20) #15, !dbg !947
  unreachable, !dbg !947

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948, !tbaa !821
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !950
  %24 = icmp eq i32 %23, 0, !dbg !951
  br i1 %24, label %27, label %25, !dbg !952

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !953, !tbaa !885
  tail call void @_exit(i32 %26) #15, !dbg !954
  unreachable, !dbg !954

; <label>:27:                                     ; preds = %21
  ret void, !dbg !955
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i64 @num_processors(i32) local_unnamed_addr #6 !dbg !956 {
  %2 = alloca %struct.cpu_set_t, align 8
  %3 = alloca %struct.cpu_set_t, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !961, metadata !814), !dbg !968
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !962, metadata !814), !dbg !969
  %6 = icmp eq i32 %0, 2, !dbg !970
  br i1 %6, label %7, label %101, !dbg !971

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !972
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !973, metadata !814) #10, !dbg !983
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !814) #10, !dbg !985
  %9 = icmp eq i8* %8, null, !dbg !986
  br i1 %9, label %50, label %10, !dbg !988

; <label>:10:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !973, metadata !814) #10, !dbg !983
  %11 = load i8, i8* %8, align 1, !dbg !989, !tbaa !990
  %12 = icmp eq i8 %11, 0, !dbg !991
  br i1 %12, label %22, label %13, !dbg !992

; <label>:13:                                     ; preds = %10
  br label %14, !dbg !989

; <label>:14:                                     ; preds = %13, %18
  %15 = phi i8 [ %20, %18 ], [ %11, %13 ]
  %16 = phi i8* [ %19, %18 ], [ %8, %13 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !973, metadata !814) #10, !dbg !983
  %17 = sext i8 %15 to i32, !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !993, metadata !814) #10, !dbg !999
  switch i32 %17, label %22 [
    i32 32, label %18
    i32 9, label %18
    i32 10, label %18
    i32 11, label %18
    i32 12, label %18
    i32 13, label %18
  ], !dbg !1001

; <label>:18:                                     ; preds = %14, %14, %14, %14, %14, %14
  %19 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1002
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !973, metadata !814) #10, !dbg !983
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !973, metadata !814) #10, !dbg !983
  %20 = load i8, i8* %19, align 1, !dbg !989, !tbaa !990
  %21 = icmp eq i8 %20, 0, !dbg !991
  br i1 %21, label %22, label %14, !dbg !992, !llvm.loop !1003

; <label>:22:                                     ; preds = %18, %14, %10
  %23 = phi i8* [ %8, %10 ], [ %19, %18 ], [ %16, %14 ]
  %24 = phi i8 [ 0, %10 ], [ 0, %18 ], [ %15, %14 ]
  %25 = sext i8 %24 to i32, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1007, metadata !814) #10, !dbg !1010
  %26 = add nsw i32 %25, -48, !dbg !1012
  %27 = icmp ult i32 %26, 10, !dbg !1012
  br i1 %27, label %28, label %50, !dbg !1013

; <label>:28:                                     ; preds = %22
  %29 = bitcast i8** %5 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #10, !dbg !1014
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  store i8* null, i8** %5, align 8, !dbg !1015, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %30 = call i64 @strtoul(i8* %23, i8** nonnull %5, i32 10) #10, !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !982, metadata !814) #10, !dbg !1017
  %31 = load i8*, i8** %5, align 8, !dbg !1018, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %32 = icmp eq i8* %31, null, !dbg !1020
  br i1 %32, label %49, label %33, !dbg !1021

; <label>:33:                                     ; preds = %28
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %34 = load i8, i8* %31, align 1, !dbg !1022, !tbaa !990
  %35 = icmp eq i8 %34, 0, !dbg !1024
  br i1 %35, label %48, label %36, !dbg !1025

; <label>:36:                                     ; preds = %33
  br label %37, !dbg !1022

; <label>:37:                                     ; preds = %36, %41
  %38 = phi i8* [ %42, %41 ], [ %31, %36 ]
  %39 = phi i8 [ %43, %41 ], [ %34, %36 ]
  %40 = sext i8 %39 to i32, !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !993, metadata !814) #10, !dbg !1026
  switch i32 %40, label %45 [
    i32 32, label %41
    i32 9, label %41
    i32 10, label %41
    i32 11, label %41
    i32 12, label %41
    i32 13, label %41
  ], !dbg !1028

; <label>:41:                                     ; preds = %37, %37, %37, %37, %37, %37
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1029
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %43 = load i8, i8* %42, align 1, !dbg !1022, !tbaa !990
  %44 = icmp eq i8 %43, 0, !dbg !1024
  br i1 %44, label %47, label %37, !dbg !1025, !llvm.loop !1030

; <label>:45:                                     ; preds = %37
  store i8* %38, i8** %5, align 8, !dbg !1029, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !979, metadata !814) #10, !dbg !1015
  %46 = icmp eq i8 %39, 44, !dbg !1033
  br i1 %46, label %48, label %49, !dbg !1033

; <label>:47:                                     ; preds = %41
  store i8* %42, i8** %5, align 8, !dbg !1029, !tbaa !821
  br label %48, !dbg !1025

; <label>:48:                                     ; preds = %47, %45, %33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10, !dbg !1034
  br label %50

; <label>:49:                                     ; preds = %45, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10, !dbg !1034
  br label %50

; <label>:50:                                     ; preds = %7, %22, %48, %49
  %51 = phi i64 [ %30, %48 ], [ 0, %7 ], [ 0, %49 ], [ 0, %22 ]
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !963, metadata !814), !dbg !1035
  %52 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.35, i64 0, i64 0)) #10, !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !973, metadata !814) #10, !dbg !1037
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !814) #10, !dbg !1039
  %53 = icmp eq i8* %52, null, !dbg !1040
  br i1 %53, label %95, label %54, !dbg !1041

; <label>:54:                                     ; preds = %50
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !973, metadata !814) #10, !dbg !1037
  %55 = load i8, i8* %52, align 1, !dbg !1042, !tbaa !990
  %56 = icmp eq i8 %55, 0, !dbg !1043
  br i1 %56, label %66, label %57, !dbg !1044

; <label>:57:                                     ; preds = %54
  br label %58, !dbg !1042

; <label>:58:                                     ; preds = %57, %62
  %59 = phi i8 [ %64, %62 ], [ %55, %57 ]
  %60 = phi i8* [ %63, %62 ], [ %52, %57 ]
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !973, metadata !814) #10, !dbg !1037
  %61 = sext i8 %59 to i32, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !993, metadata !814) #10, !dbg !1045
  switch i32 %61, label %66 [
    i32 32, label %62
    i32 9, label %62
    i32 10, label %62
    i32 11, label %62
    i32 12, label %62
    i32 13, label %62
  ], !dbg !1047

; <label>:62:                                     ; preds = %58, %58, %58, %58, %58, %58
  %63 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1048
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !973, metadata !814) #10, !dbg !1037
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !973, metadata !814) #10, !dbg !1037
  %64 = load i8, i8* %63, align 1, !dbg !1042, !tbaa !990
  %65 = icmp eq i8 %64, 0, !dbg !1043
  br i1 %65, label %66, label %58, !dbg !1044, !llvm.loop !1003

; <label>:66:                                     ; preds = %62, %58, %54
  %67 = phi i8* [ %52, %54 ], [ %63, %62 ], [ %60, %58 ]
  %68 = phi i8 [ 0, %54 ], [ 0, %62 ], [ %59, %58 ]
  %69 = sext i8 %68 to i32, !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1007, metadata !814) #10, !dbg !1050
  %70 = add nsw i32 %69, -48, !dbg !1052
  %71 = icmp ult i32 %70, 10, !dbg !1052
  br i1 %71, label %72, label %95, !dbg !1053

; <label>:72:                                     ; preds = %66
  %73 = bitcast i8** %4 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #10, !dbg !1054
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  store i8* null, i8** %4, align 8, !dbg !1055, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %74 = call i64 @strtoul(i8* %67, i8** nonnull %4, i32 10) #10, !dbg !1056
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !982, metadata !814) #10, !dbg !1057
  %75 = load i8*, i8** %4, align 8, !dbg !1058, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %76 = icmp eq i8* %75, null, !dbg !1059
  br i1 %76, label %92, label %77, !dbg !1060

; <label>:77:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %78 = load i8, i8* %75, align 1, !dbg !1061, !tbaa !990
  %79 = icmp eq i8 %78, 0, !dbg !1062
  br i1 %79, label %93, label %80, !dbg !1063

; <label>:80:                                     ; preds = %77
  br label %81, !dbg !1061

; <label>:81:                                     ; preds = %80, %85
  %82 = phi i8* [ %86, %85 ], [ %75, %80 ]
  %83 = phi i8 [ %87, %85 ], [ %78, %80 ]
  %84 = sext i8 %83 to i32, !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !993, metadata !814) #10, !dbg !1064
  switch i32 %84, label %89 [
    i32 32, label %85
    i32 9, label %85
    i32 10, label %85
    i32 11, label %85
    i32 12, label %85
    i32 13, label %85
  ], !dbg !1066

; <label>:85:                                     ; preds = %81, %81, %81, %81, %81, %81
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %86 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1067
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %87 = load i8, i8* %86, align 1, !dbg !1061, !tbaa !990
  %88 = icmp eq i8 %87, 0, !dbg !1062
  br i1 %88, label %91, label %81, !dbg !1063, !llvm.loop !1030

; <label>:89:                                     ; preds = %81
  store i8* %82, i8** %4, align 8, !dbg !1067, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !979, metadata !814) #10, !dbg !1055
  %90 = icmp eq i8 %83, 44, !dbg !1068
  br i1 %90, label %93, label %92, !dbg !1068

; <label>:91:                                     ; preds = %85
  store i8* %86, i8** %4, align 8, !dbg !1067, !tbaa !821
  br label %93, !dbg !1063

; <label>:92:                                     ; preds = %89, %72
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #10, !dbg !1069
  br label %95

; <label>:93:                                     ; preds = %77, %89, %91
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #10, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !962, metadata !814), !dbg !969
  %94 = icmp eq i64 %74, 0, !dbg !1070
  br i1 %94, label %95, label %96, !dbg !1072

; <label>:95:                                     ; preds = %66, %92, %50, %93
  br label %96, !dbg !1072

; <label>:96:                                     ; preds = %93, %95
  %97 = phi i64 [ -1, %95 ], [ %74, %93 ]
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !962, metadata !814), !dbg !969
  %98 = icmp eq i64 %51, 0, !dbg !1073
  %99 = icmp ult i64 %51, %97, !dbg !1075
  %100 = select i1 %99, i64 %51, i64 %97, !dbg !1075
  br i1 %98, label %101, label %138

; <label>:101:                                    ; preds = %96, %1
  %102 = phi i64 [ %97, %96 ], [ -1, %1 ]
  %103 = phi i32 [ 1, %96 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !961, metadata !814), !dbg !968
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !962, metadata !814), !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1076, metadata !814) #10, !dbg !1092
  %104 = icmp eq i32 %103, 1, !dbg !1094
  br i1 %104, label %105, label %117, !dbg !1095

; <label>:105:                                    ; preds = %101
  %106 = bitcast %struct.cpu_set_t* %3 to i8*, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %106) #10, !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, i64 0, metadata !1102, metadata !814) #10, !dbg !1116
  %107 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1117
  %108 = icmp eq i32 %107, 0, !dbg !1118
  br i1 %108, label %109, label %112, !dbg !1119

; <label>:109:                                    ; preds = %105
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, i64 0, metadata !1102, metadata !814) #10, !dbg !1116
  %110 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1120
  %111 = icmp eq i32 %110, 0, !dbg !1121
  br i1 %111, label %112, label %115

; <label>:112:                                    ; preds = %109, %105
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %106) #10, !dbg !1123
  %113 = call i64 @sysconf(i32 84) #10, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !1083, metadata !814) #10, !dbg !1125
  %114 = icmp sgt i64 %113, 0, !dbg !1126
  br i1 %114, label %134, label %133

; <label>:115:                                    ; preds = %109
  %116 = sext i32 %110 to i64, !dbg !1120
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %106) #10, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !1079, metadata !814) #10, !dbg !1128
  br label %134, !dbg !1129

; <label>:117:                                    ; preds = %101
  %118 = tail call i64 @sysconf(i32 83) #10, !dbg !1130
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1086, metadata !814) #10, !dbg !1131
  %119 = icmp eq i64 %118, 1, !dbg !1132
  br i1 %119, label %120, label %130, !dbg !1133

; <label>:120:                                    ; preds = %117
  %121 = bitcast %struct.cpu_set_t* %2 to i8*, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %121) #10, !dbg !1134
  tail call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, i64 0, metadata !1102, metadata !814) #10, !dbg !1136
  %122 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1137
  %123 = icmp eq i32 %122, 0, !dbg !1138
  br i1 %123, label %124, label %127, !dbg !1139

; <label>:124:                                    ; preds = %120
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, i64 0, metadata !1102, metadata !814) #10, !dbg !1136
  %125 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1140
  %126 = icmp eq i32 %125, 0, !dbg !1141
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %124, %120
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %121) #10, !dbg !1142
  br label %134, !dbg !1143

; <label>:128:                                    ; preds = %124
  %129 = sext i32 %125 to i64, !dbg !1140
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %121) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !1089, metadata !814) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !1086, metadata !814) #10, !dbg !1131
  br label %130, !dbg !1143

; <label>:130:                                    ; preds = %128, %117
  %131 = phi i64 [ %118, %117 ], [ %129, %128 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1086, metadata !814) #10, !dbg !1131
  %132 = icmp slt i64 %131, 1, !dbg !1145
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %130, %112
  br label %134, !dbg !1147

; <label>:134:                                    ; preds = %112, %115, %127, %130, %133
  %135 = phi i64 [ 1, %133 ], [ %113, %112 ], [ %131, %130 ], [ %116, %115 ], [ 1, %127 ]
  call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !966, metadata !814), !dbg !1148
  %136 = icmp ult i64 %135, %102, !dbg !1149
  %137 = select i1 %136, i64 %135, i64 %102, !dbg !1149
  br label %138

; <label>:138:                                    ; preds = %96, %134
  %139 = phi i64 [ %137, %134 ], [ %100, %96 ]
  ret i64 %139, !dbg !1150
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1151 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1153, metadata !814), !dbg !1156
  %2 = icmp eq i8* %0, null, !dbg !1157
  br i1 %2, label %3, label %6, !dbg !1159

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1160, !tbaa !821
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1162
  tail call void @abort() #15, !dbg !1163
  unreachable, !dbg !1163

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1164
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1154, metadata !814), !dbg !1165
  %8 = icmp eq i8* %7, null, !dbg !1166
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1167
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1168
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1155, metadata !814), !dbg !1169
  %11 = ptrtoint i8* %10 to i64, !dbg !1170
  %12 = ptrtoint i8* %0 to i64, !dbg !1170
  %13 = sub i64 %11, %12, !dbg !1170
  %14 = icmp sgt i64 %13, 6, !dbg !1172
  br i1 %14, label %15, label %24, !dbg !1173

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1174
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.41, i64 0, i64 0), i64 7) #14, !dbg !1175
  %18 = icmp eq i32 %17, 0, !dbg !1176
  br i1 %18, label %19, label %24, !dbg !1177

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1153, metadata !814), !dbg !1156
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.42, i64 0, i64 0), i64 3) #14, !dbg !1178
  %21 = icmp eq i32 %20, 0, !dbg !1181
  br i1 %21, label %22, label %24, !dbg !1182

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1183
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1153, metadata !814), !dbg !1156
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1185, !tbaa !821
  br label %24, !dbg !1186

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1153, metadata !814), !dbg !1156
  store i8* %25, i8** @program_name, align 8, !dbg !1187, !tbaa !821
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1188, !tbaa !821
  ret void, !dbg !1189
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1190 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1195, metadata !814), !dbg !1198
  %2 = tail call i32* @__errno_location() #17, !dbg !1199
  %3 = load i32, i32* %2, align 4, !dbg !1199, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1196, metadata !814), !dbg !1200
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1201
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1201
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1201
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1202
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1202
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1197, metadata !814), !dbg !1203
  store i32 %3, i32* %2, align 4, !dbg !1204, !tbaa !885
  ret %struct.quoting_options* %8, !dbg !1205
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1206 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1212, metadata !814), !dbg !1213
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1214
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1214
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1215
  %5 = load i32, i32* %4, align 8, !dbg !1215, !tbaa !1216
  ret i32 %5, !dbg !1218
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1219 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1223, metadata !814), !dbg !1225
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1224, metadata !814), !dbg !1226
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1227
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1227
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1228
  store i32 %1, i32* %5, align 8, !dbg !1229, !tbaa !1216
  ret void, !dbg !1230
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1231 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1235, metadata !814), !dbg !1243
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1236, metadata !814), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1237, metadata !814), !dbg !1245
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1238, metadata !814), !dbg !1246
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1247
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1247
  %6 = lshr i8 %1, 5, !dbg !1248
  %7 = zext i8 %6 to i64, !dbg !1248
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1249
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1239, metadata !814), !dbg !1250
  %9 = and i8 %1, 31, !dbg !1251
  %10 = zext i8 %9 to i32, !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1241, metadata !814), !dbg !1253
  %11 = load i32, i32* %8, align 4, !dbg !1254, !tbaa !885
  %12 = lshr i32 %11, %10, !dbg !1255
  %13 = and i32 %12, 1, !dbg !1256
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1242, metadata !814), !dbg !1257
  %14 = and i32 %2, 1, !dbg !1258
  %15 = xor i32 %13, %14, !dbg !1259
  %16 = shl i32 %15, %10, !dbg !1260
  %17 = xor i32 %16, %11, !dbg !1261
  store i32 %17, i32* %8, align 4, !dbg !1261, !tbaa !885
  ret i32 %13, !dbg !1262
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1263 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1267, metadata !814), !dbg !1270
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1268, metadata !814), !dbg !1271
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1272
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1267, metadata !814), !dbg !1270
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1267, metadata !814), !dbg !1270
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1275
  %6 = load i32, i32* %5, align 4, !dbg !1275, !tbaa !1276
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1269, metadata !814), !dbg !1277
  store i32 %1, i32* %5, align 4, !dbg !1278, !tbaa !1276
  ret i32 %6, !dbg !1279
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1280 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1284, metadata !814), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1285, metadata !814), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1286, metadata !814), !dbg !1289
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1284, metadata !814), !dbg !1287
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1284, metadata !814), !dbg !1287
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1293
  store i32 10, i32* %6, align 8, !dbg !1294, !tbaa !1216
  %7 = icmp ne i8* %1, null, !dbg !1295
  %8 = icmp ne i8* %2, null, !dbg !1297
  %9 = and i1 %7, %8, !dbg !1298
  br i1 %9, label %11, label %10, !dbg !1298

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1299
  unreachable, !dbg !1299

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1300
  store i8* %1, i8** %12, align 8, !dbg !1301, !tbaa !1302
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1303
  store i8* %2, i8** %13, align 8, !dbg !1304, !tbaa !1305
  ret void, !dbg !1306
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1307 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1311, metadata !814), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1312, metadata !814), !dbg !1320
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1313, metadata !814), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1314, metadata !814), !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1315, metadata !814), !dbg !1323
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1324
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1316, metadata !814), !dbg !1325
  %8 = tail call i32* @__errno_location() #17, !dbg !1326
  %9 = load i32, i32* %8, align 4, !dbg !1326, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1317, metadata !814), !dbg !1327
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1328
  %11 = load i32, i32* %10, align 8, !dbg !1328, !tbaa !1216
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1329
  %13 = load i32, i32* %12, align 4, !dbg !1329, !tbaa !1276
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1330
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1331
  %16 = load i8*, i8** %15, align 8, !dbg !1331, !tbaa !1302
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1332
  %18 = load i8*, i8** %17, align 8, !dbg !1332, !tbaa !1305
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1333
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1318, metadata !814), !dbg !1334
  store i32 %9, i32* %8, align 4, !dbg !1335, !tbaa !885
  ret i64 %19, !dbg !1336
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1337 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1343, metadata !814), !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1344, metadata !814), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1345, metadata !814), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1346, metadata !814), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1347, metadata !814), !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1348, metadata !814), !dbg !1412
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1349, metadata !814), !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1350, metadata !814), !dbg !1414
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1351, metadata !814), !dbg !1415
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1353, metadata !814), !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1354, metadata !814), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1355, metadata !814), !dbg !1418
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1356, metadata !814), !dbg !1419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1357, metadata !814), !dbg !1420
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1421
  %14 = icmp eq i64 %13, 1, !dbg !1422
  %15 = lshr i32 %5, 1, !dbg !1423
  %16 = trunc i32 %15 to i8, !dbg !1423
  %17 = and i8 %16, 1, !dbg !1423
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1359, metadata !814), !dbg !1423
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1360, metadata !814), !dbg !1424
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1361, metadata !814), !dbg !1425
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1362, metadata !814), !dbg !1426
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1427

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1362, metadata !814), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1357, metadata !814), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1356, metadata !814), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1351, metadata !814), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1350, metadata !814), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1347, metadata !814), !dbg !1411
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
  ], !dbg !1428

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1347, metadata !814), !dbg !1411
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1347, metadata !814), !dbg !1411
  br label %94, !dbg !1429

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1347, metadata !814), !dbg !1411
  %43 = and i8 %36, 1, !dbg !1431
  %44 = icmp eq i8 %43, 0, !dbg !1431
  br i1 %44, label %45, label %94, !dbg !1429

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1433
  br i1 %46, label %94, label %47, !dbg !1436

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1433, !tbaa !990
  br label %94, !dbg !1433

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.53, i64 0, i64 0), i32 %28), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1350, metadata !814), !dbg !1414
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), i32 %28), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1351, metadata !814), !dbg !1415
  br label %51, !dbg !1442

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1351, metadata !814), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1350, metadata !814), !dbg !1414
  %54 = and i8 %36, 1, !dbg !1443
  %55 = icmp eq i8 %54, 0, !dbg !1443
  br i1 %55, label %56, label %72, !dbg !1445

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1353, metadata !814), !dbg !1416
  %57 = load i8, i8* %52, align 1, !dbg !1446, !tbaa !990
  %58 = icmp eq i8 %57, 0, !dbg !1449
  br i1 %58, label %72, label %59, !dbg !1449

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1450

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1355, metadata !814), !dbg !1418
  %64 = icmp ult i64 %63, %40, !dbg !1450
  br i1 %64, label %65, label %67, !dbg !1453

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1450
  store i8 %61, i8* %66, align 1, !dbg !1450, !tbaa !990
  br label %67, !dbg !1450

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1353, metadata !814), !dbg !1416
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1353, metadata !814), !dbg !1416
  %70 = load i8, i8* %69, align 1, !dbg !1446, !tbaa !990
  %71 = icmp eq i8 %70, 0, !dbg !1449
  br i1 %71, label %72, label %60, !dbg !1449, !llvm.loop !1455

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1357, metadata !814), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1355, metadata !814), !dbg !1418
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1356, metadata !814), !dbg !1419
  br label %94, !dbg !1458

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1357, metadata !814), !dbg !1420
  br label %76, !dbg !1459

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1357, metadata !814), !dbg !1420
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1359, metadata !814), !dbg !1423
  br label %78, !dbg !1460

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1357, metadata !814), !dbg !1420
  %81 = and i8 %80, 1, !dbg !1461
  %82 = icmp eq i8 %81, 0, !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1357, metadata !814), !dbg !1420
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1463
  br label %84, !dbg !1463

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1357, metadata !814), !dbg !1420
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1347, metadata !814), !dbg !1411
  %87 = and i8 %86, 1, !dbg !1464
  %88 = icmp eq i8 %87, 0, !dbg !1464
  br i1 %88, label %89, label %94, !dbg !1466

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1467
  br i1 %90, label %94, label %91, !dbg !1470

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1467, !tbaa !990
  br label %94, !dbg !1467

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1359, metadata !814), !dbg !1423
  br label %94, !dbg !1471

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1472
  unreachable, !dbg !1472

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1359, metadata !814), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1357, metadata !814), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1356, metadata !814), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1351, metadata !814), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1350, metadata !814), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1347, metadata !814), !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1352, metadata !814), !dbg !1473
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
  br label %122, !dbg !1474

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1362, metadata !814), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1352, metadata !814), !dbg !1473
  %131 = icmp eq i64 %126, -1, !dbg !1475
  br i1 %131, label %134, label %132, !dbg !1476

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1477
  br i1 %133, label %590, label %138, !dbg !1478

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1479
  %136 = load i8, i8* %135, align 1, !dbg !1479, !tbaa !990
  %137 = icmp eq i8 %136, 0, !dbg !1480
  br i1 %137, label %590, label %138, !dbg !1478

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1368, metadata !814), !dbg !1481
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1370, metadata !814), !dbg !1483
  br i1 %108, label %139, label %154, !dbg !1484

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1486
  %141 = and i1 %109, %131, !dbg !1487
  br i1 %141, label %142, label %144, !dbg !1487

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1346, metadata !814), !dbg !1410
  br label %144, !dbg !1489

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1346, metadata !814), !dbg !1410
  %146 = icmp ugt i64 %140, %145, !dbg !1490
  br i1 %146, label %154, label %147, !dbg !1491

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1492
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1493
  %150 = icmp ne i32 %149, 0, !dbg !1494
  %151 = or i1 %150, %111, !dbg !1495
  %152 = xor i1 %150, true, !dbg !1495
  %153 = zext i1 %152 to i8, !dbg !1495
  br i1 %151, label %154, label %635, !dbg !1495

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1368, metadata !814), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1346, metadata !814), !dbg !1410
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1496
  %158 = load i8, i8* %157, align 1, !dbg !1496, !tbaa !990
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1363, metadata !814), !dbg !1497
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
  ], !dbg !1498

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1499

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1500

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1369, metadata !814), !dbg !1482
  %162 = and i8 %127, 1, !dbg !1504
  %163 = icmp eq i8 %162, 0, !dbg !1504
  %164 = and i1 %113, %163, !dbg !1504
  br i1 %164, label %165, label %181, !dbg !1504

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1506
  br i1 %166, label %167, label %169, !dbg !1510

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1506
  store i8 39, i8* %168, align 1, !dbg !1506, !tbaa !990
  br label %169, !dbg !1506

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1353, metadata !814), !dbg !1416
  %171 = icmp ult i64 %170, %130, !dbg !1511
  br i1 %171, label %172, label %174, !dbg !1514

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1511
  store i8 36, i8* %173, align 1, !dbg !1511, !tbaa !990
  br label %174, !dbg !1511

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1353, metadata !814), !dbg !1416
  %176 = icmp ult i64 %175, %130, !dbg !1515
  br i1 %176, label %177, label %179, !dbg !1518

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1515
  store i8 39, i8* %178, align 1, !dbg !1515, !tbaa !990
  br label %179, !dbg !1515

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %181, !dbg !1519

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1353, metadata !814), !dbg !1416
  %184 = icmp ult i64 %182, %130, !dbg !1520
  br i1 %184, label %185, label %187, !dbg !1523

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1520
  store i8 92, i8* %186, align 1, !dbg !1520, !tbaa !990
  br label %187, !dbg !1520

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1353, metadata !814), !dbg !1416
  br i1 %105, label %189, label %470, !dbg !1524

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1526
  %191 = icmp ult i64 %190, %155, !dbg !1527
  br i1 %191, label %192, label %470, !dbg !1528

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1529
  %194 = load i8, i8* %193, align 1, !dbg !1529, !tbaa !990
  %195 = add i8 %194, -48, !dbg !1530
  %196 = icmp ult i8 %195, 10, !dbg !1530
  br i1 %196, label %197, label %470, !dbg !1530

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1531
  br i1 %198, label %199, label %201, !dbg !1535

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1531
  store i8 48, i8* %200, align 1, !dbg !1531, !tbaa !990
  br label %201, !dbg !1531

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1353, metadata !814), !dbg !1416
  %203 = icmp ult i64 %202, %130, !dbg !1536
  br i1 %203, label %204, label %206, !dbg !1539

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1536
  store i8 48, i8* %205, align 1, !dbg !1536, !tbaa !990
  br label %206, !dbg !1536

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1353, metadata !814), !dbg !1416
  br label %470, !dbg !1540

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1541

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1542

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1543

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1545

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1547
  %214 = icmp ult i64 %213, %155, !dbg !1548
  br i1 %214, label %215, label %470, !dbg !1549

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1550
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1551
  %218 = load i8, i8* %217, align 1, !dbg !1551, !tbaa !990
  %219 = icmp eq i8 %218, 63, !dbg !1552
  br i1 %219, label %220, label %470, !dbg !1553

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1554
  %222 = load i8, i8* %221, align 1, !dbg !1554, !tbaa !990
  %223 = sext i8 %222 to i32, !dbg !1554
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
  ], !dbg !1555

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1556

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1352, metadata !814), !dbg !1473
  %226 = icmp ult i64 %124, %130, !dbg !1558
  br i1 %226, label %227, label %229, !dbg !1561

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1558
  store i8 63, i8* %228, align 1, !dbg !1558, !tbaa !990
  br label %229, !dbg !1558

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1353, metadata !814), !dbg !1416
  %231 = icmp ult i64 %230, %130, !dbg !1562
  br i1 %231, label %232, label %234, !dbg !1565

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1562
  store i8 34, i8* %233, align 1, !dbg !1562, !tbaa !990
  br label %234, !dbg !1562

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1353, metadata !814), !dbg !1416
  %236 = icmp ult i64 %235, %130, !dbg !1566
  br i1 %236, label %237, label %239, !dbg !1569

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1566
  store i8 34, i8* %238, align 1, !dbg !1566, !tbaa !990
  br label %239, !dbg !1566

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1353, metadata !814), !dbg !1416
  %241 = icmp ult i64 %240, %130, !dbg !1570
  br i1 %241, label %242, label %244, !dbg !1573

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1570
  store i8 63, i8* %243, align 1, !dbg !1570, !tbaa !990
  br label %244, !dbg !1570

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1353, metadata !814), !dbg !1416
  br label %470, !dbg !1574

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1367, metadata !814), !dbg !1575
  br label %256, !dbg !1576

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1367, metadata !814), !dbg !1575
  br label %256, !dbg !1577

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1367, metadata !814), !dbg !1575
  br label %254, !dbg !1578

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1367, metadata !814), !dbg !1575
  br label %254, !dbg !1579

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1367, metadata !814), !dbg !1575
  br label %256, !dbg !1580

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1367, metadata !814), !dbg !1575
  br i1 %113, label %252, label %253, !dbg !1581

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1582

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1585

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1367, metadata !814), !dbg !1575
  br i1 %117, label %256, label %635, !dbg !1587

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1367, metadata !814), !dbg !1575
  br i1 %104, label %497, label %470, !dbg !1589

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1590
  br i1 %259, label %260, label %265, !dbg !1592

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1593, !tbaa !990
  %262 = icmp ne i8 %261, 0, !dbg !1594
  %263 = icmp ne i64 %123, 0, !dbg !1595
  %264 = or i1 %263, %262, !dbg !1597
  br i1 %264, label %470, label %271, !dbg !1597

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1598
  %267 = icmp ne i64 %123, 0, !dbg !1595
  %268 = or i1 %267, %266, !dbg !1592
  br i1 %268, label %470, label %271, !dbg !1592

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1595
  br i1 %270, label %271, label %470, !dbg !1599

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1370, metadata !814), !dbg !1483
  br label %272, !dbg !1600

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1370, metadata !814), !dbg !1483
  br i1 %117, label %470, label %635, !dbg !1601

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1370, metadata !814), !dbg !1483
  br i1 %113, label %275, label %470, !dbg !1603

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1604

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1607
  %278 = icmp ne i64 %125, 0, !dbg !1609
  %279 = or i1 %278, %277, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1344, metadata !814), !dbg !1408
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1610
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1354, metadata !814), !dbg !1417
  %282 = icmp ult i64 %124, %281, !dbg !1611
  br i1 %282, label %283, label %285, !dbg !1614

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1611
  store i8 39, i8* %284, align 1, !dbg !1611, !tbaa !990
  br label %285, !dbg !1611

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1353, metadata !814), !dbg !1416
  %287 = icmp ult i64 %286, %281, !dbg !1615
  br i1 %287, label %288, label %290, !dbg !1618

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1615
  store i8 92, i8* %289, align 1, !dbg !1615, !tbaa !990
  br label %290, !dbg !1615

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1353, metadata !814), !dbg !1416
  %292 = icmp ult i64 %291, %281, !dbg !1619
  br i1 %292, label %293, label %295, !dbg !1622

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1619
  store i8 39, i8* %294, align 1, !dbg !1619, !tbaa !990
  br label %295, !dbg !1619

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %470, !dbg !1623

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1624

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1371, metadata !814), !dbg !1625
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1626
  %300 = load i16*, i16** %299, align 8, !dbg !1626, !tbaa !821
  %301 = zext i8 %158 to i64, !dbg !1626
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1626
  %303 = load i16, i16* %302, align 2, !dbg !1626, !tbaa !1628
  %304 = lshr i16 %303, 14, !dbg !1630
  %305 = trunc i16 %304 to i8, !dbg !1630
  %306 = and i8 %305, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1374, metadata !814), !dbg !1631
  br label %362, !dbg !1632

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1633
  store i64 0, i64* %10, align 8, !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1374, metadata !814), !dbg !1631
  %308 = icmp eq i64 %155, -1, !dbg !1635
  br i1 %308, label %309, label %311, !dbg !1637

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1346, metadata !814), !dbg !1410
  br label %311, !dbg !1639

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1346, metadata !814), !dbg !1410
  br label %313, !dbg !1640, !llvm.loop !1641

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1643
  %316 = add i64 %314, %123, !dbg !1644
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1645
  %318 = sub i64 %312, %316, !dbg !1646
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1375, metadata !814), !dbg !1647
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1393, metadata !814), !dbg !1648
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1396, metadata !814), !dbg !1650
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1651

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1371, metadata !814), !dbg !1625
  %321 = icmp ugt i64 %312, %316, !dbg !1652
  br i1 %321, label %322, label %347, !dbg !1654

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1655

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1371, metadata !814), !dbg !1625
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1655
  %327 = load i8, i8* %326, align 1, !dbg !1655, !tbaa !990
  %328 = icmp eq i8 %327, 0, !dbg !1654
  br i1 %328, label %347, label %329, !dbg !1656

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1371, metadata !814), !dbg !1625
  %331 = add i64 %330, %123, !dbg !1658
  %332 = icmp ult i64 %331, %312, !dbg !1652
  br i1 %332, label %323, label %347, !dbg !1654, !llvm.loop !1659

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1660
  %335 = and i1 %115, %334, !dbg !1663
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1397, metadata !814), !dbg !1664
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1397, metadata !814), !dbg !1664
  br i1 %335, label %336, label %350, !dbg !1663

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1665

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1397, metadata !814), !dbg !1664
  %339 = add i64 %338, %316, !dbg !1665
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1666
  %341 = load i8, i8* %340, align 1, !dbg !1666, !tbaa !990
  %342 = sext i8 %341 to i32, !dbg !1666
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1667

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1397, metadata !814), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1397, metadata !814), !dbg !1664
  %345 = icmp ult i64 %344, %319, !dbg !1660
  br i1 %345, label %337, label %350, !dbg !1669, !llvm.loop !1670

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1672

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1672
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1673, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1393, metadata !814), !dbg !1648
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1675
  %353 = icmp eq i32 %352, 0, !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1374, metadata !814), !dbg !1631
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1676
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1374, metadata !814), !dbg !1631
  %355 = add i64 %319, %314, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1375, metadata !814), !dbg !1647
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1678
  %357 = icmp eq i32 %356, 0, !dbg !1679
  br i1 %357, label %313, label %358, !dbg !1680, !llvm.loop !1641

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1681
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1681
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1374, metadata !814), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1371, metadata !814), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1346, metadata !814), !dbg !1410
  %366 = and i8 %365, 1, !dbg !1682
  %367 = icmp ne i8 %366, 0, !dbg !1682
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1370, metadata !814), !dbg !1483
  %368 = icmp ult i64 %364, 2, !dbg !1683
  %369 = or i1 %367, %112, !dbg !1684
  %370 = and i1 %368, %369, !dbg !1685
  br i1 %370, label %470, label %371, !dbg !1685

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1404, metadata !814), !dbg !1687
  br label %373, !dbg !1688

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1368, metadata !814), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1352, metadata !814), !dbg !1473
  br i1 %369, label %426, label %380, !dbg !1689

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1694

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1369, metadata !814), !dbg !1482
  %382 = and i8 %376, 1, !dbg !1697
  %383 = icmp eq i8 %382, 0, !dbg !1697
  %384 = and i1 %113, %383, !dbg !1697
  br i1 %384, label %385, label %401, !dbg !1697

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1699
  br i1 %386, label %387, label %389, !dbg !1703

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1699
  store i8 39, i8* %388, align 1, !dbg !1699, !tbaa !990
  br label %389, !dbg !1699

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1353, metadata !814), !dbg !1416
  %391 = icmp ult i64 %390, %130, !dbg !1704
  br i1 %391, label %392, label %394, !dbg !1707

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1704
  store i8 36, i8* %393, align 1, !dbg !1704, !tbaa !990
  br label %394, !dbg !1704

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1353, metadata !814), !dbg !1416
  %396 = icmp ult i64 %395, %130, !dbg !1708
  br i1 %396, label %397, label %399, !dbg !1711

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1708
  store i8 39, i8* %398, align 1, !dbg !1708, !tbaa !990
  br label %399, !dbg !1708

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %401, !dbg !1712

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1353, metadata !814), !dbg !1416
  %404 = icmp ult i64 %402, %130, !dbg !1713
  br i1 %404, label %405, label %407, !dbg !1716

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1713
  store i8 92, i8* %406, align 1, !dbg !1713, !tbaa !990
  br label %407, !dbg !1713

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1353, metadata !814), !dbg !1416
  %409 = icmp ult i64 %408, %130, !dbg !1717
  br i1 %409, label %410, label %414, !dbg !1720

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1717
  %412 = or i8 %411, 48, !dbg !1717
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1717
  store i8 %412, i8* %413, align 1, !dbg !1717, !tbaa !990
  br label %414, !dbg !1717

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1353, metadata !814), !dbg !1416
  %416 = icmp ult i64 %415, %130, !dbg !1721
  br i1 %416, label %417, label %422, !dbg !1724

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1721
  %419 = and i8 %418, 7, !dbg !1721
  %420 = or i8 %419, 48, !dbg !1721
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1721
  store i8 %420, i8* %421, align 1, !dbg !1721, !tbaa !990
  br label %422, !dbg !1721

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1353, metadata !814), !dbg !1416
  %424 = and i8 %377, 7, !dbg !1725
  %425 = or i8 %424, 48, !dbg !1726
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1363, metadata !814), !dbg !1497
  br label %435, !dbg !1727

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1728
  %428 = icmp eq i8 %427, 0, !dbg !1728
  br i1 %428, label %435, label %429, !dbg !1730

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1731
  br i1 %430, label %431, label %433, !dbg !1735

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1731
  store i8 92, i8* %432, align 1, !dbg !1731, !tbaa !990
  br label %433, !dbg !1731

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1368, metadata !814), !dbg !1481
  br label %435, !dbg !1736

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1368, metadata !814), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1353, metadata !814), !dbg !1416
  %441 = add i64 %374, 1, !dbg !1737
  %442 = icmp ugt i64 %372, %441, !dbg !1739
  br i1 %442, label %443, label %535, !dbg !1740

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1741
  %445 = icmp ne i8 %444, 0, !dbg !1741
  %446 = and i8 %440, 1, !dbg !1741
  %447 = icmp eq i8 %446, 0, !dbg !1741
  %448 = and i1 %445, %447, !dbg !1741
  br i1 %448, label %449, label %460, !dbg !1741

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1744
  br i1 %450, label %451, label %453, !dbg !1748

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1744
  store i8 39, i8* %452, align 1, !dbg !1744, !tbaa !990
  br label %453, !dbg !1744

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1353, metadata !814), !dbg !1416
  %455 = icmp ult i64 %454, %130, !dbg !1749
  br i1 %455, label %456, label %458, !dbg !1752

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1749
  store i8 39, i8* %457, align 1, !dbg !1749, !tbaa !990
  br label %458, !dbg !1749

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %460, !dbg !1753

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1353, metadata !814), !dbg !1416
  %463 = icmp ult i64 %461, %130, !dbg !1754
  br i1 %463, label %464, label %466, !dbg !1757

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1754
  store i8 %438, i8* %465, align 1, !dbg !1754, !tbaa !990
  br label %466, !dbg !1754

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1352, metadata !814), !dbg !1473
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1758
  %469 = load i8, i8* %468, align 1, !dbg !1758, !tbaa !990
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1363, metadata !814), !dbg !1497
  br label %373, !dbg !1759, !llvm.loop !1760

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1370, metadata !814), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1368, metadata !814), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1352, metadata !814), !dbg !1473
  br i1 %106, label %482, label %481, !dbg !1763

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1765

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1766

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1767
  %485 = zext i8 %484 to i64, !dbg !1767
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1768
  %487 = load i32, i32* %486, align 4, !dbg !1768, !tbaa !885
  %488 = and i8 %477, 31, !dbg !1769
  %489 = zext i8 %488 to i32, !dbg !1770
  %490 = shl i32 1, %489, !dbg !1771
  %491 = and i32 %487, %490, !dbg !1771
  %492 = icmp eq i32 %491, 0, !dbg !1771
  %493 = icmp eq i8 %156, 0, !dbg !1772
  %494 = and i1 %493, %492, !dbg !1773
  br i1 %494, label %535, label %497, !dbg !1773

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1772
  br i1 %496, label %535, label %497, !dbg !1774

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1370, metadata !814), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1352, metadata !814), !dbg !1473
  br i1 %111, label %507, label %635, !dbg !1775

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1369, metadata !814), !dbg !1482
  %508 = and i8 %502, 1, !dbg !1777
  %509 = icmp eq i8 %508, 0, !dbg !1777
  %510 = and i1 %113, %509, !dbg !1777
  br i1 %510, label %511, label %527, !dbg !1777

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1779
  br i1 %512, label %513, label %515, !dbg !1783

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1779
  store i8 39, i8* %514, align 1, !dbg !1779, !tbaa !990
  br label %515, !dbg !1779

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1353, metadata !814), !dbg !1416
  %517 = icmp ult i64 %516, %506, !dbg !1784
  br i1 %517, label %518, label %520, !dbg !1787

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1784
  store i8 36, i8* %519, align 1, !dbg !1784, !tbaa !990
  br label %520, !dbg !1784

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1353, metadata !814), !dbg !1416
  %522 = icmp ult i64 %521, %506, !dbg !1788
  br i1 %522, label %523, label %525, !dbg !1791

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1788
  store i8 39, i8* %524, align 1, !dbg !1788, !tbaa !990
  br label %525, !dbg !1788

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %527, !dbg !1792

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1353, metadata !814), !dbg !1416
  %530 = icmp ult i64 %528, %506, !dbg !1793
  br i1 %530, label %531, label %533, !dbg !1796

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1793
  store i8 92, i8* %532, align 1, !dbg !1793, !tbaa !990
  br label %533, !dbg !1793

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1370, metadata !814), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1352, metadata !814), !dbg !1473
  br label %562, !dbg !1797

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1370, metadata !814), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1369, metadata !814), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1363, metadata !814), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1352, metadata !814), !dbg !1473
  %546 = and i8 %540, 1, !dbg !1797
  %547 = icmp ne i8 %546, 0, !dbg !1797
  %548 = and i8 %543, 1, !dbg !1797
  %549 = icmp eq i8 %548, 0, !dbg !1797
  %550 = and i1 %547, %549, !dbg !1797
  br i1 %550, label %551, label %562, !dbg !1797

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1800
  br i1 %552, label %553, label %555, !dbg !1804

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1800
  store i8 39, i8* %554, align 1, !dbg !1800, !tbaa !990
  br label %555, !dbg !1800

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1353, metadata !814), !dbg !1416
  %557 = icmp ult i64 %556, %545, !dbg !1805
  br i1 %557, label %558, label %560, !dbg !1808

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1805
  store i8 39, i8* %559, align 1, !dbg !1805, !tbaa !990
  br label %560, !dbg !1805

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1360, metadata !814), !dbg !1424
  br label %562, !dbg !1809

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1353, metadata !814), !dbg !1416
  %572 = icmp ult i64 %570, %563, !dbg !1810
  br i1 %572, label %573, label %575, !dbg !1813

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1810
  store i8 %565, i8* %574, align 1, !dbg !1810, !tbaa !990
  br label %575, !dbg !1810

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1353, metadata !814), !dbg !1416
  %577 = and i8 %564, 1, !dbg !1814
  %578 = icmp eq i8 %577, 0, !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1362, metadata !814), !dbg !1426
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1816
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1362, metadata !814), !dbg !1426
  br label %580, !dbg !1817

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1362, metadata !814), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1361, metadata !814), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1360, metadata !814), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1346, metadata !814), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1354, metadata !814), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1352, metadata !814), !dbg !1473
  %589 = add i64 %581, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1352, metadata !814), !dbg !1473
  br label %122, !dbg !1819, !llvm.loop !1820

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1822
  %593 = and i1 %113, %592, !dbg !1824
  %594 = xor i1 %593, true, !dbg !1824
  %595 = or i1 %111, %594, !dbg !1824
  br i1 %595, label %596, label %635, !dbg !1824

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1825
  %598 = xor i1 %597, true, !dbg !1825
  %599 = and i8 %128, 1, !dbg !1827
  %600 = icmp eq i8 %599, 0, !dbg !1827
  %601 = or i1 %600, %598, !dbg !1825
  br i1 %601, label %611, label %602, !dbg !1825

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1828
  %604 = icmp eq i8 %603, 0, !dbg !1828
  br i1 %604, label %607, label %605, !dbg !1831

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1832
  br label %645, !dbg !1833

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1834
  %609 = icmp ne i64 %125, 0, !dbg !1836
  %610 = and i1 %609, %608, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1353, metadata !814), !dbg !1416
  br i1 %610, label %27, label %611, !dbg !1837

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1838
  %613 = and i1 %612, %111, !dbg !1840
  br i1 %613, label %614, label %630, !dbg !1840

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1353, metadata !814), !dbg !1416
  %615 = load i8, i8* %99, align 1, !dbg !1841, !tbaa !990
  %616 = icmp eq i8 %615, 0, !dbg !1844
  br i1 %616, label %630, label %617, !dbg !1844

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1845

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1353, metadata !814), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1355, metadata !814), !dbg !1418
  %622 = icmp ult i64 %621, %130, !dbg !1845
  br i1 %622, label %623, label %625, !dbg !1848

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1845
  store i8 %619, i8* %624, align 1, !dbg !1845, !tbaa !990
  br label %625, !dbg !1845

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1353, metadata !814), !dbg !1416
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1355, metadata !814), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1353, metadata !814), !dbg !1416
  %628 = load i8, i8* %627, align 1, !dbg !1841, !tbaa !990
  %629 = icmp eq i8 %628, 0, !dbg !1844
  br i1 %629, label %630, label %618, !dbg !1844, !llvm.loop !1850

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1353, metadata !814), !dbg !1416
  %632 = icmp ult i64 %631, %130, !dbg !1852
  br i1 %632, label %633, label %645, !dbg !1854

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1855
  store i8 0, i8* %634, align 1, !dbg !1856, !tbaa !990
  br label %645, !dbg !1855

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1344, metadata !814), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1346, metadata !814), !dbg !1410
  %639 = icmp ne i32 %636, 2, !dbg !1857
  %640 = icmp eq i8 %103, 0, !dbg !1859
  %641 = or i1 %639, %640, !dbg !1860
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1347, metadata !814), !dbg !1411
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1347, metadata !814), !dbg !1411
  %643 = and i32 %5, -3, !dbg !1861
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1862
  br label %645, !dbg !1863

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1864
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1865 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1869, metadata !814), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1870, metadata !814), !dbg !1874
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1875
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1871, metadata !814), !dbg !1876
  %4 = icmp eq i8* %3, %0, !dbg !1877
  br i1 %4, label %5, label %75, !dbg !1879

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1880
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1872, metadata !814), !dbg !1881
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1882, metadata !814), !dbg !1898
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1896, metadata !814), !dbg !1901
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1897, metadata !814), !dbg !1902
  %7 = load i8, i8* %6, align 1, !dbg !1903, !tbaa !990
  %8 = sext i8 %7 to i32, !dbg !1903
  %9 = and i32 %8, -33, !dbg !1903
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1903

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1905, metadata !814), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !814), !dbg !1923
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !814), !dbg !1924
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1925
  %12 = load i8, i8* %11, align 1, !dbg !1925, !tbaa !990
  %13 = sext i8 %12 to i32, !dbg !1925
  %14 = and i32 %13, -33, !dbg !1925
  %15 = icmp eq i32 %14, 84, !dbg !1925
  br i1 %15, label %16, label %72, !dbg !1925

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1927, metadata !814), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !814), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !814), !dbg !1945
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1946
  %18 = load i8, i8* %17, align 1, !dbg !1946, !tbaa !990
  %19 = sext i8 %18 to i32, !dbg !1946
  %20 = and i32 %19, -33, !dbg !1946
  %21 = icmp eq i32 %20, 70, !dbg !1946
  br i1 %21, label %22, label %72, !dbg !1946

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1948, metadata !814), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !814), !dbg !1964
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !814), !dbg !1965
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1966
  %24 = load i8, i8* %23, align 1, !dbg !1966, !tbaa !990
  %25 = icmp eq i8 %24, 45, !dbg !1966
  br i1 %25, label %26, label %72, !dbg !1968

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1969, metadata !814), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1978, metadata !814), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1979, metadata !814), !dbg !1985
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1986
  %28 = load i8, i8* %27, align 1, !dbg !1986, !tbaa !990
  %29 = icmp eq i8 %28, 56, !dbg !1986
  br i1 %29, label %30, label %72, !dbg !1988

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1989, metadata !814), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !814), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1998, metadata !814), !dbg !2004
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2005
  %32 = load i8, i8* %31, align 1, !dbg !2005, !tbaa !990
  %33 = icmp eq i8 %32, 0, !dbg !2005
  br i1 %33, label %34, label %72, !dbg !2007

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2008, !tbaa !990
  %36 = icmp eq i8 %35, 96, !dbg !2009
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i64 0, i64 0), !dbg !2008
  br label %75, !dbg !2010

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1905, metadata !814), !dbg !2011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !814), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !814), !dbg !2016
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2017
  %40 = load i8, i8* %39, align 1, !dbg !2017, !tbaa !990
  %41 = sext i8 %40 to i32, !dbg !2017
  %42 = and i32 %41, -33, !dbg !2017
  %43 = icmp eq i32 %42, 66, !dbg !2017
  br i1 %43, label %44, label %72, !dbg !2017

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1927, metadata !814), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !814), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !814), !dbg !2021
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2022
  %46 = load i8, i8* %45, align 1, !dbg !2022, !tbaa !990
  %47 = icmp eq i8 %46, 49, !dbg !2022
  br i1 %47, label %48, label %72, !dbg !2023

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1948, metadata !814), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !814), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !814), !dbg !2027
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2028
  %50 = load i8, i8* %49, align 1, !dbg !2028, !tbaa !990
  %51 = icmp eq i8 %50, 56, !dbg !2028
  br i1 %51, label %52, label %72, !dbg !2029

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1969, metadata !814), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1978, metadata !814), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1979, metadata !814), !dbg !2033
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2034
  %54 = load i8, i8* %53, align 1, !dbg !2034, !tbaa !990
  %55 = icmp eq i8 %54, 48, !dbg !2034
  br i1 %55, label %56, label %72, !dbg !2035

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1989, metadata !814), !dbg !2036
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !814), !dbg !2038
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1998, metadata !814), !dbg !2039
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2040
  %58 = load i8, i8* %57, align 1, !dbg !2040, !tbaa !990
  %59 = icmp eq i8 %58, 51, !dbg !2040
  br i1 %59, label %60, label %72, !dbg !2041

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2042, metadata !814), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2049, metadata !814), !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2050, metadata !814), !dbg !2056
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2057
  %62 = load i8, i8* %61, align 1, !dbg !2057, !tbaa !990
  %63 = icmp eq i8 %62, 48, !dbg !2057
  br i1 %63, label %64, label %72, !dbg !2059

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2060, metadata !814), !dbg !2068
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !814), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2067, metadata !814), !dbg !2073
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2074
  %66 = load i8, i8* %65, align 1, !dbg !2074, !tbaa !990
  %67 = icmp eq i8 %66, 0, !dbg !2074
  br i1 %67, label %68, label %72, !dbg !2076

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2077, !tbaa !990
  %70 = icmp eq i8 %69, 96, !dbg !2078
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.58, i64 0, i64 0), !dbg !2077
  br label %75, !dbg !2079

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2080
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), !dbg !2081
  br label %75, !dbg !2082

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2083
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2084 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2088, metadata !814), !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2089, metadata !814), !dbg !2092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2090, metadata !814), !dbg !2093
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2094, metadata !814) #10, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2099, metadata !814) #10, !dbg !2109
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2100, metadata !814) #10, !dbg !2110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2101, metadata !814) #10, !dbg !2111
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2112
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2102, metadata !814) #10, !dbg !2113
  %6 = tail call i32* @__errno_location() #17, !dbg !2114
  %7 = load i32, i32* %6, align 4, !dbg !2114, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2103, metadata !814) #10, !dbg !2115
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2116
  %9 = load i32, i32* %8, align 4, !dbg !2116, !tbaa !1276
  %10 = or i32 %9, 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2104, metadata !814) #10, !dbg !2118
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2119
  %12 = load i32, i32* %11, align 8, !dbg !2119, !tbaa !1216
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2120
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2121
  %15 = load i8*, i8** %14, align 8, !dbg !2121, !tbaa !1302
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2122
  %17 = load i8*, i8** %16, align 8, !dbg !2122, !tbaa !1305
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2123
  %19 = add i64 %18, 1, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2105, metadata !814) #10, !dbg !2125
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2126, metadata !814) #10, !dbg !2131
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2133
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2106, metadata !814) #10, !dbg !2134
  %21 = load i32, i32* %11, align 8, !dbg !2135, !tbaa !1216
  %22 = load i8*, i8** %14, align 8, !dbg !2136, !tbaa !1302
  %23 = load i8*, i8** %16, align 8, !dbg !2137, !tbaa !1305
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2138
  store i32 %7, i32* %6, align 4, !dbg !2139, !tbaa !885
  ret i8* %20, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2095 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2094, metadata !814), !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2099, metadata !814), !dbg !2142
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2100, metadata !814), !dbg !2143
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2101, metadata !814), !dbg !2144
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2145
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2102, metadata !814), !dbg !2146
  %7 = tail call i32* @__errno_location() #17, !dbg !2147
  %8 = load i32, i32* %7, align 4, !dbg !2147, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2103, metadata !814), !dbg !2148
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2149
  %10 = load i32, i32* %9, align 4, !dbg !2149, !tbaa !1276
  %11 = icmp ne i64* %2, null, !dbg !2150
  %12 = xor i1 %11, true, !dbg !2150
  %13 = zext i1 %12 to i32, !dbg !2150
  %14 = or i32 %10, %13, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2104, metadata !814), !dbg !2152
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2153
  %16 = load i32, i32* %15, align 8, !dbg !2153, !tbaa !1216
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2154
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2155
  %19 = load i8*, i8** %18, align 8, !dbg !2155, !tbaa !1302
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2156
  %21 = load i8*, i8** %20, align 8, !dbg !2156, !tbaa !1305
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2157
  %23 = add i64 %22, 1, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2105, metadata !814), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2126, metadata !814) #10, !dbg !2160
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2106, metadata !814), !dbg !2163
  %25 = load i32, i32* %15, align 8, !dbg !2164, !tbaa !1216
  %26 = load i8*, i8** %18, align 8, !dbg !2165, !tbaa !1302
  %27 = load i8*, i8** %20, align 8, !dbg !2166, !tbaa !1305
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2167
  store i32 %8, i32* %7, align 4, !dbg !2168, !tbaa !885
  br i1 %11, label %29, label %30, !dbg !2169

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2170, !tbaa !2172
  br label %30, !dbg !2174

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2175
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2176 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2180, !tbaa !821
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2178, metadata !814), !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2179, metadata !814), !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2179, metadata !814), !dbg !2182
  %2 = load i32, i32* @nslots, align 4, !dbg !2183, !tbaa !885
  %3 = icmp sgt i32 %2, 1, !dbg !2186
  br i1 %3, label %4, label %13, !dbg !2187

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2188

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2179, metadata !814), !dbg !2182
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2188
  %8 = load i8*, i8** %7, align 8, !dbg !2188, !tbaa !2189
  tail call void @free(i8* %8) #10, !dbg !2191
  %9 = add nuw i64 %6, 1, !dbg !2192
  %10 = load i32, i32* @nslots, align 4, !dbg !2183, !tbaa !885
  %11 = sext i32 %10 to i64, !dbg !2186
  %12 = icmp slt i64 %9, %11, !dbg !2186
  br i1 %12, label %5, label %13, !dbg !2187, !llvm.loop !2193

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2195
  %15 = load i8*, i8** %14, align 8, !dbg !2195, !tbaa !2189
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2197
  br i1 %16, label %18, label %17, !dbg !2198

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2199
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2201, !tbaa !2202
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2203, !tbaa !2189
  br label %18, !dbg !2204

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2205
  br i1 %19, label %22, label %20, !dbg !2207

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2208
  tail call void @free(i8* %21) #10, !dbg !2210
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2211, !tbaa !821
  br label %22, !dbg !2212

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2213, !tbaa !885
  ret void, !dbg !2214
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2215 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2219, metadata !814), !dbg !2221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2220, metadata !814), !dbg !2222
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2223
  ret i8* %3, !dbg !2224
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2225 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2229, metadata !814), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2230, metadata !814), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2231, metadata !814), !dbg !2245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2232, metadata !814), !dbg !2246
  %5 = tail call i32* @__errno_location() #17, !dbg !2247
  %6 = load i32, i32* %5, align 4, !dbg !2247, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2233, metadata !814), !dbg !2248
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2249, !tbaa !821
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2234, metadata !814), !dbg !2250
  %8 = icmp slt i32 %0, 0, !dbg !2251
  br i1 %8, label %9, label %10, !dbg !2253

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2254
  unreachable, !dbg !2254

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2255, !tbaa !885
  %12 = icmp sgt i32 %11, %0, !dbg !2256
  br i1 %12, label %34, label %13, !dbg !2257

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2258
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2259
  br i1 %15, label %16, label %17, !dbg !2261

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2262
  unreachable, !dbg !2262

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2263
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2263
  %20 = add nsw i32 %0, 1, !dbg !2264
  %21 = sext i32 %20 to i64, !dbg !2265
  %22 = shl nsw i64 %21, 4, !dbg !2266
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2267
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2267
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2234, metadata !814), !dbg !2250
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2268, !tbaa !821
  br i1 %14, label %25, label %26, !dbg !2269

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2270, !tbaa.struct !2272
  br label %26, !dbg !2273

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2274, !tbaa !885
  %28 = sext i32 %27 to i64, !dbg !2275
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2275
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2276
  %31 = sub nsw i32 %20, %27, !dbg !2277
  %32 = sext i32 %31 to i64, !dbg !2278
  %33 = shl nsw i64 %32, 4, !dbg !2279
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2276
  store i32 %20, i32* @nslots, align 4, !dbg !2280, !tbaa !885
  br label %34, !dbg !2281

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2234, metadata !814), !dbg !2250
  %36 = sext i32 %0 to i64, !dbg !2282
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2283
  %38 = load i64, i64* %37, align 8, !dbg !2283, !tbaa !2202
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2238, metadata !814), !dbg !2284
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2285
  %40 = load i8*, i8** %39, align 8, !dbg !2285, !tbaa !2189
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2240, metadata !814), !dbg !2286
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2287
  %42 = load i32, i32* %41, align 4, !dbg !2287, !tbaa !1276
  %43 = or i32 %42, 1, !dbg !2288
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2241, metadata !814), !dbg !2289
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2290
  %45 = load i32, i32* %44, align 8, !dbg !2290, !tbaa !1216
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2291
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2292
  %48 = load i8*, i8** %47, align 8, !dbg !2292, !tbaa !1302
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2293
  %50 = load i8*, i8** %49, align 8, !dbg !2293, !tbaa !1305
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2242, metadata !814), !dbg !2295
  %52 = icmp ugt i64 %38, %51, !dbg !2296
  br i1 %52, label %63, label %53, !dbg !2298

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2238, metadata !814), !dbg !2284
  store i64 %54, i64* %37, align 8, !dbg !2301, !tbaa !2202
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2302
  br i1 %55, label %57, label %56, !dbg !2304

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2305
  br label %57, !dbg !2305

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2126, metadata !814) #10, !dbg !2306
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2240, metadata !814), !dbg !2286
  store i8* %58, i8** %39, align 8, !dbg !2309, !tbaa !2189
  %59 = load i32, i32* %44, align 8, !dbg !2310, !tbaa !1216
  %60 = load i8*, i8** %47, align 8, !dbg !2311, !tbaa !1302
  %61 = load i8*, i8** %49, align 8, !dbg !2312, !tbaa !1305
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2313
  br label %63, !dbg !2314

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2240, metadata !814), !dbg !2286
  store i32 %6, i32* %5, align 4, !dbg !2315, !tbaa !885
  ret i8* %64, !dbg !2316
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2317 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2321, metadata !814), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2322, metadata !814), !dbg !2325
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2323, metadata !814), !dbg !2326
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2327
  ret i8* %4, !dbg !2328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2329 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2333, metadata !814), !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2219, metadata !814) #10, !dbg !2335
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2220, metadata !814) #10, !dbg !2337
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2338
  ret i8* %2, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2340 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2344, metadata !814), !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2345, metadata !814), !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2321, metadata !814) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2322, metadata !814) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2323, metadata !814) #10, !dbg !2351
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2352
  ret i8* %3, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2354 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2362, metadata !2368), !dbg !2369
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2358, metadata !814), !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2359, metadata !814), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2360, metadata !814), !dbg !2373
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2361, metadata !814), !dbg !2375
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2367, metadata !814) #10, !dbg !2376
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2377
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2362, metadata !814) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2369
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2369
  %8 = icmp eq i32 %1, 10, !dbg !2379
  br i1 %8, label %9, label %10, !dbg !2381

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2382, !noalias !2383
  unreachable, !dbg !2382

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2362, metadata !2378) #10, !dbg !2369
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2386
  store i32 %1, i32* %11, align 8, !dbg !2386, !alias.scope !2383
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2386
  %13 = bitcast i32* %12 to i8*, !dbg !2386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2387
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2361, metadata !814), !dbg !2375
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2389
  ret i8* %14, !dbg !2390
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2391 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2362, metadata !2368), !dbg !2400
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2395, metadata !814), !dbg !2402
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2396, metadata !814), !dbg !2403
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2397, metadata !814), !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2398, metadata !814), !dbg !2405
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2399, metadata !814), !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2367, metadata !814) #10, !dbg !2408
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2409
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2362, metadata !814) #10, !dbg !2400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2400
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2400
  %9 = icmp eq i32 %1, 10, !dbg !2410
  br i1 %9, label %10, label %11, !dbg !2411

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2412, !noalias !2413
  unreachable, !dbg !2412

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2362, metadata !2378) #10, !dbg !2400
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2416
  store i32 %1, i32* %12, align 8, !dbg !2416, !alias.scope !2413
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2416
  %14 = bitcast i32* %13 to i8*, !dbg !2416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2416
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2399, metadata !814), !dbg !2407
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2419
  ret i8* %15, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2421 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2362, metadata !2368), !dbg !2427
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2425, metadata !814), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2426, metadata !814), !dbg !2431
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2358, metadata !814) #10, !dbg !2432
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2359, metadata !814) #10, !dbg !2433
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2360, metadata !814) #10, !dbg !2434
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2361, metadata !814) #10, !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2367, metadata !814) #10, !dbg !2437
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2438
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2362, metadata !814) #10, !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2427
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2427
  %7 = icmp eq i32 %0, 10, !dbg !2439
  br i1 %7, label %8, label %9, !dbg !2440

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2441, !noalias !2442
  unreachable, !dbg !2441

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2427
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2445
  store i32 %0, i32* %10, align 8, !dbg !2445, !alias.scope !2442
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2445
  %12 = bitcast i32* %11 to i8*, !dbg !2445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2445
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2361, metadata !814) #10, !dbg !2436
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2448
  ret i8* %13, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2450 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2362, metadata !2368), !dbg !2457
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2454, metadata !814), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2455, metadata !814), !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2456, metadata !814), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2395, metadata !814) #10, !dbg !2463
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2396, metadata !814) #10, !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2397, metadata !814) #10, !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2398, metadata !814) #10, !dbg !2466
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2467
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2399, metadata !814) #10, !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2367, metadata !814) #10, !dbg !2469
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2470
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2362, metadata !814) #10, !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2457
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2457
  %8 = icmp eq i32 %0, 10, !dbg !2471
  br i1 %8, label %9, label %10, !dbg !2472

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2473, !noalias !2474
  unreachable, !dbg !2473

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2457
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2477
  store i32 %0, i32* %11, align 8, !dbg !2477, !alias.scope !2474
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2477
  %13 = bitcast i32* %12 to i8*, !dbg !2477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2399, metadata !814) #10, !dbg !2468
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2479
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2480
  ret i8* %14, !dbg !2481
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2482 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2486, metadata !814), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2487, metadata !814), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2488, metadata !814), !dbg !2492
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2494, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2489, metadata !814), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1235, metadata !814), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1236, metadata !814), !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !814), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1238, metadata !814), !dbg !2501
  %6 = lshr i8 %2, 5, !dbg !2502
  %7 = zext i8 %6 to i64, !dbg !2502
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2503
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1239, metadata !814), !dbg !2504
  %9 = and i8 %2, 31, !dbg !2505
  %10 = zext i8 %9 to i32, !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1241, metadata !814), !dbg !2507
  %11 = load i32, i32* %8, align 4, !dbg !2508, !tbaa !885
  %12 = lshr i32 %11, %10, !dbg !2509
  %13 = and i32 %12, 1, !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1242, metadata !814), !dbg !2511
  %14 = xor i32 %13, 1, !dbg !2512
  %15 = shl i32 %14, %10, !dbg !2513
  %16 = xor i32 %15, %11, !dbg !2514
  store i32 %16, i32* %8, align 4, !dbg !2514, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2489, metadata !814), !dbg !2496
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2515
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2516
  ret i8* %17, !dbg !2517
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2518 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2522, metadata !814), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2523, metadata !814), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2486, metadata !814) #10, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2487, metadata !814) #10, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2488, metadata !814) #10, !dbg !2529
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2530
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2531, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2489, metadata !814) #10, !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1235, metadata !814) #10, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1236, metadata !814) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !814) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1238, metadata !814) #10, !dbg !2537
  %5 = lshr i8 %1, 5, !dbg !2538
  %6 = zext i8 %5 to i64, !dbg !2538
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1239, metadata !814) #10, !dbg !2540
  %8 = and i8 %1, 31, !dbg !2541
  %9 = zext i8 %8 to i32, !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1241, metadata !814) #10, !dbg !2543
  %10 = load i32, i32* %7, align 4, !dbg !2544, !tbaa !885
  %11 = lshr i32 %10, %9, !dbg !2545
  %12 = and i32 %11, 1, !dbg !2546
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1242, metadata !814) #10, !dbg !2547
  %13 = xor i32 %12, 1, !dbg !2548
  %14 = shl i32 %13, %9, !dbg !2549
  %15 = xor i32 %14, %10, !dbg !2550
  store i32 %15, i32* %7, align 4, !dbg !2550, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2489, metadata !814) #10, !dbg !2532
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2552
  ret i8* %16, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2554 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2556, metadata !814), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2522, metadata !814) #10, !dbg !2558
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2523, metadata !814) #10, !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2486, metadata !814) #10, !dbg !2561
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2487, metadata !814) #10, !dbg !2563
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2488, metadata !814) #10, !dbg !2564
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2565
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2566, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2489, metadata !814) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1235, metadata !814) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !814) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !814) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !814) #10, !dbg !2572
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1239, metadata !814) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !814) #10, !dbg !2575
  %5 = load i32, i32* %4, align 4, !dbg !2576, !tbaa !885
  %6 = or i32 %5, 67108864, !dbg !2577
  store i32 %6, i32* %4, align 4, !dbg !2577, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2489, metadata !814) #10, !dbg !2567
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2579
  ret i8* %7, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2581 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2583, metadata !814), !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2584, metadata !814), !dbg !2586
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2486, metadata !814) #10, !dbg !2587
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2487, metadata !814) #10, !dbg !2589
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2488, metadata !814) #10, !dbg !2590
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2592, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2489, metadata !814) #10, !dbg !2593
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1235, metadata !814) #10, !dbg !2594
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !814) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !814) #10, !dbg !2597
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !814) #10, !dbg !2598
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1239, metadata !814) #10, !dbg !2600
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !814) #10, !dbg !2601
  %6 = load i32, i32* %5, align 4, !dbg !2602, !tbaa !885
  %7 = or i32 %6, 67108864, !dbg !2603
  store i32 %7, i32* %5, align 4, !dbg !2603, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2489, metadata !814) #10, !dbg !2593
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2604
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2605
  ret i8* %8, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2607 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2362, metadata !2368), !dbg !2613
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2609, metadata !814), !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2610, metadata !814), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2611, metadata !814), !dbg !2617
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2618
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2367, metadata !814) #10, !dbg !2619
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2620
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2362, metadata !814) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2362, metadata !2378) #10, !dbg !2613
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2613
  %9 = icmp eq i32 %1, 10, !dbg !2621
  br i1 %9, label %10, label %11, !dbg !2622

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2623, !noalias !2624
  unreachable, !dbg !2623

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2362, metadata !2378) #10, !dbg !2613
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2628
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2629
  store i32 %1, i32* %13, align 8, !dbg !2629
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2629
  %15 = bitcast i32* %14 to i8*, !dbg !2629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2629
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !814), !dbg !2630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1235, metadata !814), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1236, metadata !814), !dbg !2633
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1237, metadata !814), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1238, metadata !814), !dbg !2635
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2636
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1239, metadata !814), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1241, metadata !814), !dbg !2638
  %17 = load i32, i32* %16, align 4, !dbg !2639, !tbaa !885
  %18 = or i32 %17, 67108864, !dbg !2640
  store i32 %18, i32* %16, align 4, !dbg !2640, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !814), !dbg !2630
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2642
  ret i8* %19, !dbg !2643
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2644 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2648, metadata !814), !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2649, metadata !814), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2650, metadata !814), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2651, metadata !814), !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2656, metadata !814) #10, !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2661, metadata !814) #10, !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2662, metadata !814) #10, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2663, metadata !814) #10, !dbg !2670
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2664, metadata !814) #10, !dbg !2671
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2673, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2665, metadata !814) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1284, metadata !814) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1285, metadata !814) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1286, metadata !814) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1284, metadata !814) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1284, metadata !814) #10, !dbg !2675
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2679
  store i32 10, i32* %7, align 8, !dbg !2680, !tbaa !1216
  %8 = icmp ne i8* %1, null, !dbg !2681
  %9 = icmp ne i8* %2, null, !dbg !2682
  %10 = and i1 %8, %9, !dbg !2683
  br i1 %10, label %12, label %11, !dbg !2683

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2684
  unreachable, !dbg !2684

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2685
  store i8* %1, i8** %13, align 8, !dbg !2686, !tbaa !1302
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2687
  store i8* %2, i8** %14, align 8, !dbg !2688, !tbaa !1305
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2665, metadata !814) #10, !dbg !2674
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2690
  ret i8* %15, !dbg !2691
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2657 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2656, metadata !814), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2661, metadata !814), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2662, metadata !814), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2663, metadata !814), !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2664, metadata !814), !dbg !2696
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2698, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2665, metadata !814), !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1284, metadata !814) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1285, metadata !814) #10, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1286, metadata !814) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1284, metadata !814) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1284, metadata !814) #10, !dbg !2700
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2704
  store i32 10, i32* %8, align 8, !dbg !2705, !tbaa !1216
  %9 = icmp ne i8* %1, null, !dbg !2706
  %10 = icmp ne i8* %2, null, !dbg !2707
  %11 = and i1 %9, %10, !dbg !2708
  br i1 %11, label %13, label %12, !dbg !2708

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2709
  unreachable, !dbg !2709

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2710
  store i8* %1, i8** %14, align 8, !dbg !2711, !tbaa !1302
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2712
  store i8* %2, i8** %15, align 8, !dbg !2713, !tbaa !1305
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2665, metadata !814), !dbg !2699
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2715
  ret i8* %16, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2717 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2721, metadata !814), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2722, metadata !814), !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2723, metadata !814), !dbg !2726
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2648, metadata !814) #10, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2649, metadata !814) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2650, metadata !814) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2651, metadata !814) #10, !dbg !2731
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2656, metadata !814) #10, !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2661, metadata !814) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !814) #10, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2663, metadata !814) #10, !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2664, metadata !814) #10, !dbg !2737
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2739, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2665, metadata !814) #10, !dbg !2740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1284, metadata !814) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1285, metadata !814) #10, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1286, metadata !814) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1284, metadata !814) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1284, metadata !814) #10, !dbg !2741
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2745
  store i32 10, i32* %6, align 8, !dbg !2746, !tbaa !1216
  %7 = icmp ne i8* %0, null, !dbg !2747
  %8 = icmp ne i8* %1, null, !dbg !2748
  %9 = and i1 %7, %8, !dbg !2749
  br i1 %9, label %11, label %10, !dbg !2749

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2750
  unreachable, !dbg !2750

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2751
  store i8* %0, i8** %12, align 8, !dbg !2752, !tbaa !1302
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2753
  store i8* %1, i8** %13, align 8, !dbg !2754, !tbaa !1305
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2665, metadata !814) #10, !dbg !2740
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2756
  ret i8* %14, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2758 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2762, metadata !814), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2763, metadata !814), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2764, metadata !814), !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2765, metadata !814), !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2656, metadata !814) #10, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2661, metadata !814) #10, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !814) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2663, metadata !814) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2664, metadata !814) #10, !dbg !2775
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2777, !tbaa.struct !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2665, metadata !814) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1284, metadata !814) #10, !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1285, metadata !814) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1286, metadata !814) #10, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1284, metadata !814) #10, !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1284, metadata !814) #10, !dbg !2779
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2783
  store i32 10, i32* %7, align 8, !dbg !2784, !tbaa !1216
  %8 = icmp ne i8* %0, null, !dbg !2785
  %9 = icmp ne i8* %1, null, !dbg !2786
  %10 = and i1 %8, %9, !dbg !2787
  br i1 %10, label %12, label %11, !dbg !2787

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2788
  unreachable, !dbg !2788

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2789
  store i8* %0, i8** %13, align 8, !dbg !2790, !tbaa !1302
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2791
  store i8* %1, i8** %14, align 8, !dbg !2792, !tbaa !1305
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2665, metadata !814) #10, !dbg !2778
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2794
  ret i8* %15, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2800, metadata !814), !dbg !2803
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2801, metadata !814), !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2802, metadata !814), !dbg !2805
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2806
  ret i8* %4, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2808 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2812, metadata !814), !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2813, metadata !814), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2800, metadata !814) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2801, metadata !814) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2802, metadata !814) #10, !dbg !2819
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2820
  ret i8* %3, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2822 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2826, metadata !814), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2827, metadata !814), !dbg !2829
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2800, metadata !814) #10, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2801, metadata !814) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2802, metadata !814) #10, !dbg !2833
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2834
  ret i8* %3, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2836 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !814), !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2826, metadata !814) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2827, metadata !814) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2800, metadata !814) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2801, metadata !814) #10, !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2802, metadata !814) #10, !dbg !2848
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2849
  ret i8* %2, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2851 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2910, metadata !814), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2911, metadata !814), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2912, metadata !814), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2913, metadata !814), !dbg !2919
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2914, metadata !814), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2915, metadata !814), !dbg !2921
  %7 = icmp eq i8* %1, null, !dbg !2922
  br i1 %7, label %10, label %8, !dbg !2924

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2925
  br label %12, !dbg !2925

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2926
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #10, !dbg !2927
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2927
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #10, !dbg !2928
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2928
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
  ], !dbg !2929

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2930
  unreachable, !dbg !2930

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #10, !dbg !2932
  %20 = load i8*, i8** %4, align 8, !dbg !2932, !tbaa !821
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2932
  br label %146, !dbg !2933

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #10, !dbg !2934
  %24 = load i8*, i8** %4, align 8, !dbg !2934, !tbaa !821
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2934
  %26 = load i8*, i8** %25, align 8, !dbg !2934, !tbaa !821
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2934
  br label %146, !dbg !2935

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #10, !dbg !2936
  %30 = load i8*, i8** %4, align 8, !dbg !2936, !tbaa !821
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2936
  %32 = load i8*, i8** %31, align 8, !dbg !2936, !tbaa !821
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2936
  %34 = load i8*, i8** %33, align 8, !dbg !2936, !tbaa !821
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2936
  br label %146, !dbg !2937

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #10, !dbg !2938
  %38 = load i8*, i8** %4, align 8, !dbg !2938, !tbaa !821
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2938
  %40 = load i8*, i8** %39, align 8, !dbg !2938, !tbaa !821
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2938
  %42 = load i8*, i8** %41, align 8, !dbg !2938, !tbaa !821
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2938
  %44 = load i8*, i8** %43, align 8, !dbg !2938, !tbaa !821
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2938
  br label %146, !dbg !2939

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #10, !dbg !2940
  %48 = load i8*, i8** %4, align 8, !dbg !2940, !tbaa !821
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2940
  %50 = load i8*, i8** %49, align 8, !dbg !2940, !tbaa !821
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2940
  %52 = load i8*, i8** %51, align 8, !dbg !2940, !tbaa !821
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2940
  %54 = load i8*, i8** %53, align 8, !dbg !2940, !tbaa !821
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2940
  %56 = load i8*, i8** %55, align 8, !dbg !2940, !tbaa !821
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2940
  br label %146, !dbg !2941

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #10, !dbg !2942
  %60 = load i8*, i8** %4, align 8, !dbg !2942, !tbaa !821
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2942
  %62 = load i8*, i8** %61, align 8, !dbg !2942, !tbaa !821
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2942
  %64 = load i8*, i8** %63, align 8, !dbg !2942, !tbaa !821
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2942
  %66 = load i8*, i8** %65, align 8, !dbg !2942, !tbaa !821
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2942
  %68 = load i8*, i8** %67, align 8, !dbg !2942, !tbaa !821
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2942
  %70 = load i8*, i8** %69, align 8, !dbg !2942, !tbaa !821
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2942
  br label %146, !dbg !2943

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #10, !dbg !2944
  %74 = load i8*, i8** %4, align 8, !dbg !2944, !tbaa !821
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2944
  %76 = load i8*, i8** %75, align 8, !dbg !2944, !tbaa !821
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2944
  %78 = load i8*, i8** %77, align 8, !dbg !2944, !tbaa !821
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2944
  %80 = load i8*, i8** %79, align 8, !dbg !2944, !tbaa !821
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2944
  %82 = load i8*, i8** %81, align 8, !dbg !2944, !tbaa !821
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2944
  %84 = load i8*, i8** %83, align 8, !dbg !2944, !tbaa !821
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2944
  %86 = load i8*, i8** %85, align 8, !dbg !2944, !tbaa !821
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2944
  br label %146, !dbg !2945

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #10, !dbg !2946
  %90 = load i8*, i8** %4, align 8, !dbg !2946, !tbaa !821
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2946
  %92 = load i8*, i8** %91, align 8, !dbg !2946, !tbaa !821
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2946
  %94 = load i8*, i8** %93, align 8, !dbg !2946, !tbaa !821
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2946
  %96 = load i8*, i8** %95, align 8, !dbg !2946, !tbaa !821
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2946
  %98 = load i8*, i8** %97, align 8, !dbg !2946, !tbaa !821
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2946
  %100 = load i8*, i8** %99, align 8, !dbg !2946, !tbaa !821
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2946
  %102 = load i8*, i8** %101, align 8, !dbg !2946, !tbaa !821
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2946
  %104 = load i8*, i8** %103, align 8, !dbg !2946, !tbaa !821
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2946
  br label %146, !dbg !2947

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #10, !dbg !2948
  %108 = load i8*, i8** %4, align 8, !dbg !2948, !tbaa !821
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2948
  %110 = load i8*, i8** %109, align 8, !dbg !2948, !tbaa !821
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2948
  %112 = load i8*, i8** %111, align 8, !dbg !2948, !tbaa !821
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2948
  %114 = load i8*, i8** %113, align 8, !dbg !2948, !tbaa !821
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2948
  %116 = load i8*, i8** %115, align 8, !dbg !2948, !tbaa !821
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2948
  %118 = load i8*, i8** %117, align 8, !dbg !2948, !tbaa !821
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2948
  %120 = load i8*, i8** %119, align 8, !dbg !2948, !tbaa !821
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2948
  %122 = load i8*, i8** %121, align 8, !dbg !2948, !tbaa !821
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2948
  %124 = load i8*, i8** %123, align 8, !dbg !2948, !tbaa !821
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2948
  br label %146, !dbg !2949

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #10, !dbg !2950
  %128 = load i8*, i8** %4, align 8, !dbg !2950, !tbaa !821
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2950
  %130 = load i8*, i8** %129, align 8, !dbg !2950, !tbaa !821
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2950
  %132 = load i8*, i8** %131, align 8, !dbg !2950, !tbaa !821
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2950
  %134 = load i8*, i8** %133, align 8, !dbg !2950, !tbaa !821
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2950
  %136 = load i8*, i8** %135, align 8, !dbg !2950, !tbaa !821
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2950
  %138 = load i8*, i8** %137, align 8, !dbg !2950, !tbaa !821
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2950
  %140 = load i8*, i8** %139, align 8, !dbg !2950, !tbaa !821
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2950
  %142 = load i8*, i8** %141, align 8, !dbg !2950, !tbaa !821
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2950
  %144 = load i8*, i8** %143, align 8, !dbg !2950, !tbaa !821
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2950
  br label %146, !dbg !2951

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2953 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2957, metadata !814), !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2958, metadata !814), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2959, metadata !814), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2960, metadata !814), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2961, metadata !814), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2962, metadata !814), !dbg !2968
  br label %6, !dbg !2969

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2962, metadata !814), !dbg !2968
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2971
  %9 = load i8*, i8** %8, align 8, !dbg !2971, !tbaa !821
  %10 = icmp eq i8* %9, null, !dbg !2973
  %11 = add i64 %7, 1, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2962, metadata !814), !dbg !2968
  br i1 %10, label %12, label %6, !dbg !2973, !llvm.loop !2975

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2977
  ret void, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2979 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2990, metadata !814), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2991, metadata !814), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2992, metadata !814), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2993, metadata !814), !dbg !3001
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2994, metadata !814), !dbg !3002
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3003
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2996, metadata !814), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %11 = load i32, i32* %8, align 8, !dbg !3006
  %12 = icmp ult i32 %11, 41, !dbg !3006
  br i1 %12, label %13, label %18, !dbg !3006

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3006
  %15 = sext i32 %11 to i64, !dbg !3006
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3006
  %17 = add i32 %11, 8, !dbg !3006
  store i32 %17, i32* %8, align 8, !dbg !3006
  br label %21, !dbg !3006

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3006
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3006
  store i8* %20, i8** %10, align 8, !dbg !3006
  br label %21, !dbg !3006

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3006
  %25 = load i8*, i8** %24, align 8, !dbg !3006
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3009
  store i8* %25, i8** %26, align 16, !dbg !3010, !tbaa !821
  %27 = icmp eq i8* %25, null, !dbg !3011
  br i1 %27, label %30, label %28, !dbg !3012

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %29 = icmp ult i32 %22, 41, !dbg !3006
  br i1 %29, label %35, label %32, !dbg !3006

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3014
  ret void, !dbg !3014

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3006
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3006
  store i8* %34, i8** %10, align 8, !dbg !3006
  br label %40, !dbg !3006

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3006
  %37 = sext i32 %22 to i64, !dbg !3006
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3006
  %39 = add i32 %22, 8, !dbg !3006
  store i32 %39, i32* %8, align 8, !dbg !3006
  br label %40, !dbg !3006

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3006
  %44 = load i8*, i8** %43, align 8, !dbg !3006
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3009
  store i8* %44, i8** %45, align 8, !dbg !3010, !tbaa !821
  %46 = icmp eq i8* %44, null, !dbg !3011
  br i1 %46, label %30, label %47, !dbg !3012

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %48 = icmp ult i32 %41, 41, !dbg !3006
  br i1 %48, label %52, label %49, !dbg !3006

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3006
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3006
  store i8* %51, i8** %10, align 8, !dbg !3006
  br label %57, !dbg !3006

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3006
  %54 = sext i32 %41 to i64, !dbg !3006
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3006
  %56 = add i32 %41, 8, !dbg !3006
  store i32 %56, i32* %8, align 8, !dbg !3006
  br label %57, !dbg !3006

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3006
  %61 = load i8*, i8** %60, align 8, !dbg !3006
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3009
  store i8* %61, i8** %62, align 16, !dbg !3010, !tbaa !821
  %63 = icmp eq i8* %61, null, !dbg !3011
  br i1 %63, label %30, label %64, !dbg !3012

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %65 = icmp ult i32 %58, 41, !dbg !3006
  br i1 %65, label %69, label %66, !dbg !3006

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3006
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3006
  store i8* %68, i8** %10, align 8, !dbg !3006
  br label %74, !dbg !3006

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3006
  %71 = sext i32 %58 to i64, !dbg !3006
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3006
  %73 = add i32 %58, 8, !dbg !3006
  store i32 %73, i32* %8, align 8, !dbg !3006
  br label %74, !dbg !3006

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3006
  %78 = load i8*, i8** %77, align 8, !dbg !3006
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3009
  store i8* %78, i8** %79, align 8, !dbg !3010, !tbaa !821
  %80 = icmp eq i8* %78, null, !dbg !3011
  br i1 %80, label %30, label %81, !dbg !3012

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %82 = icmp ult i32 %75, 41, !dbg !3006
  br i1 %82, label %86, label %83, !dbg !3006

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3006
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3006
  store i8* %85, i8** %10, align 8, !dbg !3006
  br label %91, !dbg !3006

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3006
  %88 = sext i32 %75 to i64, !dbg !3006
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3006
  %90 = add i32 %75, 8, !dbg !3006
  store i32 %90, i32* %8, align 8, !dbg !3006
  br label %91, !dbg !3006

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3006
  %95 = load i8*, i8** %94, align 8, !dbg !3006
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3009
  store i8* %95, i8** %96, align 16, !dbg !3010, !tbaa !821
  %97 = icmp eq i8* %95, null, !dbg !3011
  br i1 %97, label %30, label %98, !dbg !3012

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %99 = icmp ult i32 %92, 41, !dbg !3006
  br i1 %99, label %103, label %100, !dbg !3006

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3006
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3006
  store i8* %102, i8** %10, align 8, !dbg !3006
  br label %108, !dbg !3006

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3006
  %105 = sext i32 %92 to i64, !dbg !3006
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3006
  %107 = add i32 %92, 8, !dbg !3006
  store i32 %107, i32* %8, align 8, !dbg !3006
  br label %108, !dbg !3006

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3006
  %111 = load i8*, i8** %110, align 8, !dbg !3006
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3009
  store i8* %111, i8** %112, align 8, !dbg !3010, !tbaa !821
  %113 = icmp eq i8* %111, null, !dbg !3011
  br i1 %113, label %30, label %114, !dbg !3012

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %115 = load i8*, i8** %10, align 8, !dbg !3006
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3006
  store i8* %116, i8** %10, align 8, !dbg !3006
  %117 = bitcast i8* %115 to i8**, !dbg !3006
  %118 = load i8*, i8** %117, align 8, !dbg !3006
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3009
  store i8* %118, i8** %119, align 16, !dbg !3010, !tbaa !821
  %120 = icmp eq i8* %118, null, !dbg !3011
  br i1 %120, label %30, label %121, !dbg !3012

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %122 = load i8*, i8** %10, align 8, !dbg !3006
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3006
  store i8* %123, i8** %10, align 8, !dbg !3006
  %124 = bitcast i8* %122 to i8**, !dbg !3006
  %125 = load i8*, i8** %124, align 8, !dbg !3006
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3009
  store i8* %125, i8** %126, align 8, !dbg !3010, !tbaa !821
  %127 = icmp eq i8* %125, null, !dbg !3011
  br i1 %127, label %30, label %128, !dbg !3012

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %129 = load i8*, i8** %10, align 8, !dbg !3006
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3006
  store i8* %130, i8** %10, align 8, !dbg !3006
  %131 = bitcast i8* %129 to i8**, !dbg !3006
  %132 = load i8*, i8** %131, align 8, !dbg !3006
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3009
  store i8* %132, i8** %133, align 16, !dbg !3010, !tbaa !821
  %134 = icmp eq i8* %132, null, !dbg !3011
  br i1 %134, label %30, label %135, !dbg !3012

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2995, metadata !814), !dbg !3005
  %136 = load i8*, i8** %10, align 8, !dbg !3006
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3006
  store i8* %137, i8** %10, align 8, !dbg !3006
  %138 = bitcast i8* %136 to i8**, !dbg !3006
  %139 = load i8*, i8** %138, align 8, !dbg !3006
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3009
  store i8* %139, i8** %140, align 8, !dbg !3010, !tbaa !821
  %141 = icmp eq i8* %139, null, !dbg !3011
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2995, metadata !814), !dbg !3005
  %142 = select i1 %141, i64 9, i64 10, !dbg !3012
  br label %30, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3015 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3019, metadata !814), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3020, metadata !814), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3021, metadata !814), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3022, metadata !814), !dbg !3033
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3034
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3023, metadata !814), !dbg !3035
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3036
  call void @llvm.va_start(i8* nonnull %6), !dbg !3036
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3037
  call void @llvm.va_end(i8* nonnull %6), !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3039
  ret void, !dbg !3039
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3040 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #10, !dbg !3041
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #10, !dbg !3041
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3042
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.82, i64 0, i64 0)) #10, !dbg !3042
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3043
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3043, !tbaa !821
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3049, metadata !814), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3050, metadata !814), !dbg !3052
  %3 = udiv i64 9223372036854775807, %1, !dbg !3053
  %4 = icmp ult i64 %3, %0, !dbg !3053
  br i1 %4, label %5, label %6, !dbg !3055

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3056
  unreachable, !dbg !3056

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3058, metadata !814) #10, !dbg !3065
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3064, metadata !814) #10, !dbg !3068
  %9 = icmp eq i8* %8, null, !dbg !3069
  %10 = icmp ne i64 %7, 0, !dbg !3071
  %11 = and i1 %10, %9, !dbg !3072
  br i1 %11, label %12, label %13, !dbg !3072

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3074
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3059 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !814), !dbg !3075
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !814), !dbg !3077
  %3 = icmp eq i8* %2, null, !dbg !3078
  %4 = icmp ne i64 %0, 0, !dbg !3079
  %5 = and i1 %4, %3, !dbg !3080
  br i1 %5, label %6, label %7, !dbg !3080

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3081
  unreachable, !dbg !3081

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3082
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3083 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3087, metadata !814), !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3088, metadata !814), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3089, metadata !814), !dbg !3092
  %4 = udiv i64 9223372036854775807, %2, !dbg !3093
  %5 = icmp ult i64 %4, %1, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3095

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3096
  unreachable, !dbg !3096

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3103, metadata !814) #10, !dbg !3106
  %9 = icmp eq i64 %8, 0, !dbg !3107
  %10 = icmp ne i8* %0, null, !dbg !3109
  %11 = and i1 %10, %9, !dbg !3110
  br i1 %11, label %12, label %13, !dbg !3110

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3111
  br label %19, !dbg !3113

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3098, metadata !814) #10, !dbg !3104
  %15 = icmp eq i8* %14, null, !dbg !3115
  %16 = icmp ne i64 %8, 0, !dbg !3117
  %17 = and i1 %16, %15, !dbg !3118
  br i1 %17, label %18, label %19, !dbg !3118

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3119
  unreachable, !dbg !3119

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3120
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814), !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3103, metadata !814), !dbg !3122
  %3 = icmp eq i64 %1, 0, !dbg !3123
  %4 = icmp ne i8* %0, null, !dbg !3124
  %5 = and i1 %4, %3, !dbg !3125
  br i1 %5, label %6, label %7, !dbg !3125

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3126
  br label %13, !dbg !3127

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3098, metadata !814), !dbg !3121
  %9 = icmp eq i8* %8, null, !dbg !3129
  %10 = icmp ne i64 %1, 0, !dbg !3130
  %11 = and i1 %10, %9, !dbg !3131
  br i1 %11, label %12, label %13, !dbg !3131

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3132
  unreachable, !dbg !3132

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3133
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !759 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !764, metadata !814), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !765, metadata !814), !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !766, metadata !814), !dbg !3136
  %4 = load i64, i64* %1, align 8, !dbg !3137, !tbaa !2172
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !767, metadata !814), !dbg !3138
  %5 = icmp eq i8* %0, null, !dbg !3139
  br i1 %5, label %6, label %13, !dbg !3141

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3142
  br i1 %7, label %8, label %17, !dbg !3145

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !767, metadata !814), !dbg !3138
  %10 = icmp ugt i64 %2, 128, !dbg !3148
  %11 = zext i1 %10 to i64, !dbg !3148
  %12 = add nuw nsw i64 %9, %11, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !767, metadata !814), !dbg !3138
  br label %17, !dbg !3150

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3151
  %15 = icmp ugt i64 %14, %4, !dbg !3154
  br i1 %15, label %20, label %16, !dbg !3155

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3156
  unreachable, !dbg !3156

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !767, metadata !814), !dbg !3138
  store i64 %18, i64* %1, align 8, !dbg !3157, !tbaa !2172
  %19 = mul i64 %18, %2, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814) #10, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3103, metadata !814) #10, !dbg !3161
  br label %27, !dbg !3162

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3163
  %22 = add i64 %4, 1, !dbg !3164
  %23 = add i64 %22, %21, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !767, metadata !814), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !767, metadata !814), !dbg !3138
  store i64 %23, i64* %1, align 8, !dbg !3157, !tbaa !2172
  %24 = mul i64 %23, %2, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814) #10, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3103, metadata !814) #10, !dbg !3161
  %25 = icmp eq i64 %24, 0, !dbg !3166
  br i1 %25, label %26, label %27, !dbg !3162

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3167
  br label %34, !dbg !3168

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3098, metadata !814) #10, !dbg !3159
  %30 = icmp eq i8* %29, null, !dbg !3170
  %31 = icmp ne i64 %28, 0, !dbg !3171
  %32 = and i1 %31, %30, !dbg !3172
  br i1 %32, label %33, label %34, !dbg !3172

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3173
  unreachable, !dbg !3173

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3174
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3175 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3177, metadata !814), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !814) #10, !dbg !3179
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !814) #10, !dbg !3182
  %3 = icmp eq i8* %2, null, !dbg !3183
  %4 = icmp ne i64 %0, 0, !dbg !3184
  %5 = and i1 %4, %3, !dbg !3185
  br i1 %5, label %6, label %7, !dbg !3185

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3186
  unreachable, !dbg !3186

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3188 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3192, metadata !814), !dbg !3194
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3193, metadata !814), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !764, metadata !814) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !765, metadata !814) #10, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !766, metadata !814) #10, !dbg !3199
  %3 = load i64, i64* %1, align 8, !dbg !3200, !tbaa !2172
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  %4 = icmp eq i8* %0, null, !dbg !3202
  br i1 %4, label %5, label %8, !dbg !3203

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  store i64 %7, i64* %1, align 8, !dbg !3206, !tbaa !2172
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3103, metadata !814) #10, !dbg !3209
  br label %17, !dbg !3210

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3211
  br i1 %9, label %11, label %10, !dbg !3212

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3213
  unreachable, !dbg !3213

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3214
  %13 = add i64 %3, 1, !dbg !3215
  %14 = add i64 %13, %12, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !767, metadata !814) #10, !dbg !3201
  store i64 %14, i64* %1, align 8, !dbg !3206, !tbaa !2172
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !814) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3103, metadata !814) #10, !dbg !3209
  %15 = icmp eq i64 %14, 0, !dbg !3217
  br i1 %15, label %16, label %17, !dbg !3210

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3218
  br label %24, !dbg !3219

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3220
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3098, metadata !814) #10, !dbg !3207
  %20 = icmp eq i8* %19, null, !dbg !3221
  %21 = icmp ne i64 %18, 0, !dbg !3222
  %22 = and i1 %21, %20, !dbg !3223
  br i1 %22, label %23, label %24, !dbg !3223

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3224
  unreachable, !dbg !3224

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3228, metadata !814), !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3058, metadata !814) #10, !dbg !3230
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3232
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !814) #10, !dbg !3233
  %3 = icmp eq i8* %2, null, !dbg !3234
  %4 = icmp ne i64 %0, 0, !dbg !3235
  %5 = and i1 %4, %3, !dbg !3236
  br i1 %5, label %6, label %7, !dbg !3236

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3237
  unreachable, !dbg !3237

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3238
  ret i8* %2, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3240 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3242, metadata !814), !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3243, metadata !814), !dbg !3246
  %3 = udiv i64 9223372036854775807, %1, !dbg !3247
  %4 = icmp ult i64 %3, %0, !dbg !3247
  br i1 %4, label %8, label %5, !dbg !3249

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3244, metadata !814), !dbg !3251
  %7 = icmp eq i8* %6, null, !dbg !3252
  br i1 %7, label %8, label %9, !dbg !3253

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3254
  unreachable, !dbg !3254

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3262, metadata !814), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3263, metadata !814), !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3058, metadata !814) #10, !dbg !3266
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3064, metadata !814) #10, !dbg !3269
  %4 = icmp eq i8* %3, null, !dbg !3270
  %5 = icmp ne i64 %1, 0, !dbg !3271
  %6 = and i1 %5, %4, !dbg !3272
  br i1 %6, label %7, label %8, !dbg !3272

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3273
  unreachable, !dbg !3273

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3274
  ret i8* %3, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3276 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3278, metadata !814), !dbg !3279
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3280
  %3 = add i64 %2, 1, !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3262, metadata !814) #10, !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3263, metadata !814) #10, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3058, metadata !814) #10, !dbg !3285
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3064, metadata !814) #10, !dbg !3288
  %5 = icmp eq i8* %4, null, !dbg !3289
  %6 = icmp ne i64 %3, 0, !dbg !3290
  %7 = and i1 %6, %5, !dbg !3291
  br i1 %7, label %8, label %9, !dbg !3291

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3292
  unreachable, !dbg !3292

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3293
  ret i8* %4, !dbg !3294
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3295 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3297, !tbaa !885
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.93, i64 0, i64 0), i32 5) #10, !dbg !3298
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i8* %2) #10, !dbg !3299
  tail call void @abort() #15, !dbg !3300
  unreachable, !dbg !3300
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3301 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3309, metadata !814), !dbg !3319
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3310, metadata !814), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3311, metadata !814), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3312, metadata !814), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3313, metadata !814), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3314, metadata !814), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3315, metadata !814), !dbg !3325
  %9 = bitcast i64* %8 to i8*, !dbg !3326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3318, metadata !814), !dbg !3327
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3316, metadata !814), !dbg !3329
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3330

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3331
  br label %26, !dbg !3330

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3334, !tbaa !2172
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3318, metadata !814), !dbg !3327
  %15 = icmp ult i64 %14, %2, !dbg !3338
  %16 = icmp ugt i64 %14, %3, !dbg !3339
  %17 = or i1 %15, %16, !dbg !3340
  br i1 %17, label %18, label %35, !dbg !3340

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3316, metadata !814), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3318, metadata !814), !dbg !3327
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3341
  %20 = tail call i32* @__errno_location() #17, !dbg !3344
  %21 = select i1 %19, i32 75, i32 34, !dbg !3345
  store i32 %21, i32* %20, align 4, !tbaa !885
  br label %26, !dbg !3346

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #17, !dbg !3347
  store i32 75, i32* %23, align 4, !dbg !3349, !tbaa !885
  br label %26, !dbg !3347

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #17, !dbg !3350
  store i32 0, i32* %25, align 4, !dbg !3352, !tbaa !885
  br label %26, !dbg !3350

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3331
  %28 = icmp eq i32 %6, 0, !dbg !3353
  %29 = select i1 %28, i32 1, i32 %6, !dbg !3353
  %30 = load i32, i32* %27, align 4, !dbg !3331, !tbaa !885
  %31 = icmp eq i32 %30, 22, !dbg !3354
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3331
  %33 = call i8* @quote(i8* %0) #10, !dbg !3355
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !3356
  %34 = load i64, i64* %8, align 8, !dbg !3357, !tbaa !2172
  br label %35, !dbg !3358

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !3357
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3318, metadata !814), !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3359
  ret i64 %36, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3365, metadata !814), !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3366, metadata !814), !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3367, metadata !814), !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3368, metadata !814), !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3369, metadata !814), !dbg !3375
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3370, metadata !814), !dbg !3376
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3377
  ret i64 %7, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3379 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3385, metadata !814), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3386, metadata !814), !dbg !3404
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3387, metadata !814), !dbg !3405
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3388, metadata !814), !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3389, metadata !814), !dbg !3407
  %7 = bitcast i8** %6 to i8*, !dbg !3408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3393, metadata !814), !dbg !3409
  %8 = icmp ult i32 %2, 37, !dbg !3410
  br i1 %8, label %10, label %9, !dbg !3410

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.101, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3410
  unreachable, !dbg !3410

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3391, metadata !814), !dbg !3414
  %12 = tail call i32* @__errno_location() #17, !dbg !3415
  store i32 0, i32* %12, align 4, !dbg !3416, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3394, metadata !814), !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !3418), !dbg !3419
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3420
  %14 = load i16*, i16** %13, align 8, !tbaa !821
  br label %15, !dbg !3421

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !990
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3397, metadata !814), !dbg !3419
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3394, metadata !814), !dbg !3417
  %18 = zext i8 %17 to i64, !dbg !3420
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3420
  %20 = load i16, i16* %19, align 2, !dbg !3420, !tbaa !1628
  %21 = and i16 %20, 8192, !dbg !3420
  %22 = icmp eq i16 %21, 0, !dbg !3421
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3394, metadata !814), !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3397, metadata !3418), !dbg !3419
  br i1 %22, label %24, label %15, !dbg !3421, !llvm.loop !3423

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3413
  %26 = icmp eq i8 %17, 45, !dbg !3425
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3427, metadata !814) #10, !dbg !3437
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3435, metadata !814) #10, !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3436, metadata !814) #10, !dbg !3437
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3392, metadata !814), !dbg !3440
  %29 = load i8*, i8** %25, align 8, !dbg !3441, !tbaa !821
  %30 = icmp eq i8* %29, %0, !dbg !3443
  br i1 %30, label %31, label %40, !dbg !3444

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3445
  br i1 %32, label %265, label %33, !dbg !3448

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3449, !tbaa !990
  %35 = icmp eq i8 %34, 0, !dbg !3449
  br i1 %35, label %265, label %36, !dbg !3450

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3449
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3451
  %39 = icmp eq i8* %38, null, !dbg !3451
  br i1 %39, label %265, label %47, !dbg !3452

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3453, !tbaa !885
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3455

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3393, metadata !814), !dbg !3409
  br label %43, !dbg !3456

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3393, metadata !814), !dbg !3409
  %45 = icmp eq i8* %4, null, !dbg !3458
  br i1 %45, label %46, label %47, !dbg !3460

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3392, metadata !814), !dbg !3440
  store i64 %28, i64* %3, align 8, !dbg !3461, !tbaa !2172
  br label %265, !dbg !3463

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3464, !tbaa !990
  %51 = sext i8 %50 to i32, !dbg !3464
  %52 = icmp eq i8 %50, 0, !dbg !3465
  br i1 %52, label %262, label %53, !dbg !3466

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3398, metadata !814), !dbg !3467
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3401, metadata !814), !dbg !3468
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3469
  %55 = icmp eq i8* %54, null, !dbg !3469
  br i1 %55, label %56, label %58, !dbg !3471

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3392, metadata !814), !dbg !3440
  store i64 %49, i64* %3, align 8, !dbg !3472, !tbaa !2172
  %57 = or i32 %48, 2, !dbg !3474
  br label %265, !dbg !3475

; <label>:58:                                     ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !3476

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3477
  %61 = icmp eq i8* %60, null, !dbg !3477
  br i1 %61, label %72, label %62, !dbg !3480

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3481
  %64 = load i8, i8* %63, align 1, !dbg !3481, !tbaa !990
  %65 = sext i8 %64 to i32, !dbg !3481
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3482

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3483
  %68 = load i8, i8* %67, align 1, !dbg !3483, !tbaa !990
  %69 = icmp eq i8 %68, 66, !dbg !3486
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3401, metadata !814), !dbg !3468
  %70 = select i1 %69, i64 3, i64 1, !dbg !3487
  br label %72, !dbg !3487

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3398, metadata !814), !dbg !3467
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3401, metadata !814), !dbg !3468
  br label %72, !dbg !3488

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !3489

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3490, metadata !814), !dbg !3496
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3499
  %77 = shl i64 %49, 9, !dbg !3501
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3502
  %79 = zext i1 %76 to i32, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3402, metadata !814), !dbg !3503
  br label %253, !dbg !3504

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3490, metadata !814), !dbg !3505
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3507
  %82 = shl i64 %49, 10, !dbg !3508
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3509
  %84 = zext i1 %81 to i32, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3402, metadata !814), !dbg !3503
  br label %253, !dbg !3510

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %87 = icmp ult i64 %86, %49, !dbg !3522
  %88 = mul i64 %49, %73, !dbg !3524
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %90 = icmp ult i64 %86, %89, !dbg !3522
  %91 = mul i64 %89, %73, !dbg !3524
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3525
  %93 = or i1 %87, %90, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %94 = icmp ult i64 %86, %92, !dbg !3522
  %95 = mul i64 %92, %73, !dbg !3524
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3525
  %97 = or i1 %93, %94, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %98 = icmp ult i64 %86, %96, !dbg !3522
  %99 = mul i64 %96, %73, !dbg !3524
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3525
  %101 = or i1 %97, %98, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %102 = icmp ult i64 %86, %100, !dbg !3522
  %103 = mul i64 %100, %73, !dbg !3524
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3525
  %105 = or i1 %101, %102, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3521
  %106 = icmp ult i64 %86, %104, !dbg !3522
  %107 = mul i64 %104, %73, !dbg !3524
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3525
  %109 = or i1 %105, %106, !dbg !3526
  %110 = zext i1 %109 to i32, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3519
  br label %253, !dbg !3527

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3528
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3530
  %113 = icmp ult i64 %112, %49, !dbg !3531
  %114 = mul i64 %49, %73, !dbg !3533
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3530
  %116 = icmp ult i64 %112, %115, !dbg !3531
  %117 = mul i64 %115, %73, !dbg !3533
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3534
  %119 = or i1 %113, %116, !dbg !3535
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3530
  %120 = icmp ult i64 %112, %118, !dbg !3531
  %121 = mul i64 %118, %73, !dbg !3533
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3534
  %123 = or i1 %119, %120, !dbg !3535
  %124 = zext i1 %123 to i32, !dbg !3535
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3528
  br label %253, !dbg !3527

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3536
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3511, metadata !814), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3538
  %127 = icmp ult i64 %126, %49, !dbg !3539
  %128 = mul i64 %49, %73, !dbg !3541
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3542
  %130 = zext i1 %127 to i32, !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3518, metadata !814), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3518, metadata !814), !dbg !3538
  br label %253, !dbg !3527

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3545
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3545
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3543
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3545
  %133 = icmp ult i64 %132, %49, !dbg !3546
  %134 = mul i64 %49, %73, !dbg !3548
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3545
  %136 = icmp ult i64 %132, %135, !dbg !3546
  %137 = mul i64 %135, %73, !dbg !3548
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3549
  %139 = or i1 %133, %136, !dbg !3550
  %140 = zext i1 %139 to i32, !dbg !3550
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3511, metadata !814), !dbg !3543
  br label %253, !dbg !3527

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  %143 = icmp ult i64 %142, %49, !dbg !3554
  %144 = mul i64 %49, %73, !dbg !3556
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  %146 = icmp ult i64 %142, %145, !dbg !3554
  %147 = mul i64 %145, %73, !dbg !3556
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3557
  %149 = or i1 %143, %146, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  %150 = icmp ult i64 %142, %148, !dbg !3554
  %151 = mul i64 %148, %73, !dbg !3556
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3557
  %153 = or i1 %149, %150, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  %154 = icmp ult i64 %142, %152, !dbg !3554
  %155 = mul i64 %152, %73, !dbg !3556
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3557
  %157 = or i1 %153, %154, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3553
  %158 = icmp ult i64 %142, %156, !dbg !3554
  %159 = mul i64 %156, %73, !dbg !3556
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3557
  %161 = or i1 %157, %158, !dbg !3558
  %162 = zext i1 %161 to i32, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3551
  br label %253, !dbg !3527

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  %165 = icmp ult i64 %164, %49, !dbg !3562
  %166 = mul i64 %49, %73, !dbg !3564
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  %168 = icmp ult i64 %164, %167, !dbg !3562
  %169 = mul i64 %167, %73, !dbg !3564
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3565
  %171 = or i1 %165, %168, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  %172 = icmp ult i64 %164, %170, !dbg !3562
  %173 = mul i64 %170, %73, !dbg !3564
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3565
  %175 = or i1 %171, %172, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3561
  %176 = icmp ult i64 %164, %174, !dbg !3562
  %177 = mul i64 %174, %73, !dbg !3564
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3565
  %179 = or i1 %175, %176, !dbg !3566
  %180 = zext i1 %179 to i32, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3511, metadata !814), !dbg !3559
  br label %253, !dbg !3527

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3490, metadata !814), !dbg !3567
  %182 = icmp slt i64 %49, 0, !dbg !3569
  %183 = shl i64 %49, 1, !dbg !3570
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3571
  %185 = lshr i64 %49, 63, !dbg !3571
  %186 = trunc i64 %185 to i32, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3402, metadata !814), !dbg !3503
  br label %253, !dbg !3572

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %189 = icmp ult i64 %188, %49, !dbg !3576
  %190 = mul i64 %49, %73, !dbg !3578
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %192 = icmp ult i64 %188, %191, !dbg !3576
  %193 = mul i64 %191, %73, !dbg !3578
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3579
  %195 = or i1 %189, %192, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %196 = icmp ult i64 %188, %194, !dbg !3576
  %197 = mul i64 %194, %73, !dbg !3578
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3579
  %199 = or i1 %195, %196, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %200 = icmp ult i64 %188, %198, !dbg !3576
  %201 = mul i64 %198, %73, !dbg !3578
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3579
  %203 = or i1 %199, %200, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %204 = icmp ult i64 %188, %202, !dbg !3576
  %205 = mul i64 %202, %73, !dbg !3578
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3579
  %207 = or i1 %203, %204, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %208 = icmp ult i64 %188, %206, !dbg !3576
  %209 = mul i64 %206, %73, !dbg !3578
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3579
  %211 = or i1 %207, %208, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %212 = icmp ult i64 %188, %210, !dbg !3576
  %213 = mul i64 %210, %73, !dbg !3578
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3579
  %215 = or i1 %211, %212, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3575
  %216 = icmp ult i64 %188, %214, !dbg !3576
  %217 = mul i64 %214, %73, !dbg !3578
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3579
  %219 = or i1 %215, %216, !dbg !3580
  %220 = zext i1 %219 to i32, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3573
  br label %253, !dbg !3527

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %223 = icmp ult i64 %222, %49, !dbg !3584
  %224 = mul i64 %49, %73, !dbg !3586
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %226 = icmp ult i64 %222, %225, !dbg !3584
  %227 = mul i64 %225, %73, !dbg !3586
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3587
  %229 = or i1 %223, %226, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %230 = icmp ult i64 %222, %228, !dbg !3584
  %231 = mul i64 %228, %73, !dbg !3586
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3587
  %233 = or i1 %229, %230, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %234 = icmp ult i64 %222, %232, !dbg !3584
  %235 = mul i64 %232, %73, !dbg !3586
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3587
  %237 = or i1 %233, %234, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %238 = icmp ult i64 %222, %236, !dbg !3584
  %239 = mul i64 %236, %73, !dbg !3586
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3587
  %241 = or i1 %237, %238, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %242 = icmp ult i64 %222, %240, !dbg !3584
  %243 = mul i64 %240, %73, !dbg !3586
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3587
  %245 = or i1 %241, %242, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3518, metadata !814), !dbg !3583
  %246 = icmp ult i64 %222, %244, !dbg !3584
  %247 = mul i64 %244, %73, !dbg !3586
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3587
  %249 = or i1 %245, %246, !dbg !3588
  %250 = zext i1 %249 to i32, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3511, metadata !814), !dbg !3581
  br label %253, !dbg !3527

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3392, metadata !814), !dbg !3440
  store i64 %49, i64* %3, align 8, !dbg !3589, !tbaa !2172
  %252 = or i32 %48, 2, !dbg !3590
  br label %265, !dbg !3591

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3402, metadata !814), !dbg !3503
  %256 = or i32 %255, %48, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3393, metadata !814), !dbg !3409
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3592
  store i8* %257, i8** %25, align 8, !dbg !3592, !tbaa !821
  %258 = load i8, i8* %257, align 1, !dbg !3593, !tbaa !990
  %259 = icmp eq i8 %258, 0, !dbg !3593
  %260 = or i32 %256, 2, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3393, metadata !814), !dbg !3409
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3596
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3393, metadata !814), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3393, metadata !814), !dbg !3409
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3393, metadata !814), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3392, metadata !814), !dbg !3440
  store i64 %263, i64* %3, align 8, !dbg !3597, !tbaa !2172
  br label %265, !dbg !3598

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3599
  ret i32 %266, !dbg !3599
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3603, metadata !814), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3604, metadata !814), !dbg !3610
  %3 = icmp eq i64 %0, 0, !dbg !3611
  %4 = icmp eq i64 %1, 0, !dbg !3612
  %5 = or i1 %3, %4, !dbg !3613
  br i1 %5, label %12, label %6, !dbg !3613

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3614
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3606, metadata !814), !dbg !3615
  %8 = udiv i64 %7, %1, !dbg !3616
  %9 = icmp eq i64 %8, %0, !dbg !3618
  br i1 %9, label %12, label %10, !dbg !3619

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3620
  store i32 12, i32* %11, align 4, !dbg !3622, !tbaa !885
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3603, metadata !814), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3604, metadata !814), !dbg !3610
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3605, metadata !814), !dbg !3624
  br label %16, !dbg !3625

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3626
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3627 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3644, metadata !814), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3645, metadata !814), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3646, metadata !814), !dbg !3655
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3647, metadata !814), !dbg !3656
  %6 = bitcast i32* %5 to i8*, !dbg !3657
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3657
  %7 = icmp eq i32* %0, null, !dbg !3658
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3644, metadata !814), !dbg !3653
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3660
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3644, metadata !814), !dbg !3653
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3648, metadata !814), !dbg !3662
  %10 = icmp ugt i64 %9, -3, !dbg !3663
  %11 = icmp ne i64 %2, 0, !dbg !3664
  %12 = and i1 %11, %10, !dbg !3665
  br i1 %12, label %13, label %18, !dbg !3665

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3666
  br i1 %14, label %18, label %15, !dbg !3667

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3668, !tbaa !990
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3650, metadata !814), !dbg !3669
  %17 = zext i8 %16 to i32, !dbg !3670
  store i32 %17, i32* %8, align 4, !dbg !3671, !tbaa !885
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3672
  ret i64 %19, !dbg !3672
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3718, metadata !814), !dbg !3723
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3725, metadata !814), !dbg !3729
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3731
  %4 = load i32, i32* %3, align 8, !dbg !3731, !tbaa !3732
  %5 = and i32 %4, 32, !dbg !3731
  %6 = icmp eq i32 %5, 0, !dbg !3734
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3735
  %8 = icmp ne i32 %7, 0, !dbg !3736
  br i1 %6, label %9, label %19, !dbg !3737

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3739
  %11 = xor i1 %8, true, !dbg !3740
  %12 = or i1 %10, %11, !dbg !3740
  %13 = sext i1 %8 to i32, !dbg !3740
  br i1 %12, label %22, label %14, !dbg !3740

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3741
  %16 = load i32, i32* %15, align 4, !dbg !3741, !tbaa !885
  %17 = icmp ne i32 %16, 9, !dbg !3742
  %18 = sext i1 %17 to i32, !dbg !3743
  br label %22, !dbg !3743

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3744

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3746
  store i32 0, i32* %21, align 4, !dbg !3748, !tbaa !885
  br label %22, !dbg !3746

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3749
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3750 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3753, metadata !814), !dbg !3756
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3754, metadata !814), !dbg !3757
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3755, metadata !814), !dbg !3759
  %3 = icmp eq i8* %2, null, !dbg !3760
  br i1 %3, label %11, label %4, !dbg !3762

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0)) #14, !dbg !3763
  %6 = icmp eq i32 %5, 0, !dbg !3768
  br i1 %6, label %10, label %7, !dbg !3769

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i64 0, i64 0)) #14, !dbg !3770
  %9 = icmp eq i32 %8, 0, !dbg !3771
  br i1 %9, label %10, label %11, !dbg !3772

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3754, metadata !814), !dbg !3757
  br label %11, !dbg !3773

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3774
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3775 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3781, metadata !814), !dbg !3855
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3848, metadata !814), !dbg !3858
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3779, metadata !814), !dbg !3860
  %4 = icmp eq i8* %3, null, !dbg !3861
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i64 0, i64 0), i8* %3, !dbg !3863
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3779, metadata !814), !dbg !3860
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3864, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3795, metadata !814) #10, !dbg !3865
  %7 = icmp eq i8* %6, null, !dbg !3866
  br i1 %7, label %8, label %123, !dbg !3867

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.115, i64 0, i64 0)) #10, !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3796, metadata !814) #10, !dbg !3869
  %10 = icmp eq i8* %9, null, !dbg !3870
  br i1 %10, label %14, label %11, !dbg !3872

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3873, !tbaa !990
  %13 = icmp eq i8 %12, 0, !dbg !3874
  br i1 %13, label %14, label %15, !dbg !3875

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3876

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.116, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3796, metadata !814) #10, !dbg !3869
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3799, metadata !814) #10, !dbg !3878
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3801, metadata !814) #10, !dbg !3879
  %18 = icmp eq i64 %17, 0, !dbg !3880
  br i1 %18, label %24, label %19, !dbg !3881

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3882
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3882
  %22 = load i8, i8* %21, align 1, !dbg !3882, !tbaa !990
  %23 = icmp ne i8 %22, 47, !dbg !3882
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3883
  %27 = add i64 %17, 14, !dbg !3884
  %28 = add i64 %27, %26, !dbg !3885
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3886
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3798, metadata !814) #10, !dbg !3887
  %30 = icmp eq i8* %29, null, !dbg !3888
  br i1 %30, label %121, label %31, !dbg !3888

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3889
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3892

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3893, !tbaa !990
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3895
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.117, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3896
  br label %37, !dbg !3897

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3895
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.117, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3896
  br label %37, !dbg !3897

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3898
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3803, metadata !814) #10, !dbg !3899
  %39 = icmp slt i32 %38, 0, !dbg !3900
  br i1 %39, label %119, label %40, !dbg !3901

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i64 0, i64 0)) #10, !dbg !3902
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3804, metadata !814) #10, !dbg !3903
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3904
  br i1 %42, label %43, label %45, !dbg !3905

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3906
  br label %119, !dbg !3908

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3911

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3912

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3912
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3913
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3914, metadata !814) #10, !dbg !3919
  %54 = load i8*, i8** %48, align 8, !dbg !3921, !tbaa !3922
  %55 = load i8*, i8** %49, align 8, !dbg !3921, !tbaa !3923
  %56 = icmp ult i8* %54, %55, !dbg !3921
  br i1 %56, label %59, label %57, !dbg !3921, !prof !3924

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3921
  br label %63, !dbg !3921

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3921
  store i8* %60, i8** %48, align 8, !dbg !3921, !tbaa !3922
  %61 = load i8, i8* %54, align 1, !dbg !3921, !tbaa !990
  %62 = zext i8 %61 to i32, !dbg !3921
  br label %63, !dbg !3921

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3921
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3847, metadata !814) #10, !dbg !3925
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3926, !llvm.loop !3927

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3932

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3914, metadata !814) #10, !dbg !3934
  %67 = load i8*, i8** %48, align 8, !dbg !3932, !tbaa !3922
  %68 = load i8*, i8** %49, align 8, !dbg !3932, !tbaa !3923
  %69 = icmp ult i8* %67, %68, !dbg !3932
  br i1 %69, label %72, label %70, !dbg !3932, !prof !3924

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3932
  br label %76, !dbg !3932

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3932
  store i8* %73, i8** %48, align 8, !dbg !3932, !tbaa !3922
  %74 = load i8, i8* %67, align 1, !dbg !3932, !tbaa !990
  %75 = zext i8 %74 to i32, !dbg !3932
  br label %76, !dbg !3932

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3932
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3847, metadata !814) #10, !dbg !3925
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3935, !llvm.loop !3936

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3939
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.119, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3940
  %81 = icmp slt i32 %80, 2, !dbg !3942
  br i1 %81, label %112, label %82, !dbg !3943

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3852, metadata !814) #10, !dbg !3945
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3853, metadata !814) #10, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3854, metadata !814) #10, !dbg !3948
  %85 = icmp eq i64 %51, 0, !dbg !3949
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3951

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  %90 = add i64 %87, 2, !dbg !3952
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  br label %96, !dbg !3955

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3956
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  %94 = add i64 %93, 1, !dbg !3958
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3959
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  %99 = icmp eq i8* %98, null, !dbg !3960
  br i1 %99, label %100, label %102, !dbg !3962

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  call void @free(i8* %52) #10, !dbg !3963
  br label %112, !dbg !3965

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3966
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3966
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3967
  %104 = xor i64 %84, -1, !dbg !3968
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3968
  %106 = xor i64 %83, -1, !dbg !3969
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3970, metadata !814) #10, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3977, metadata !814) #10, !dbg !3978
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3980
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3970, metadata !814) #10, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3977, metadata !814) #10, !dbg !3982
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3984
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3845, metadata !814) #10, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3846, metadata !814) #10, !dbg !3910
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3966
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3966
  br label %50, !dbg !3986, !llvm.loop !3936

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3966
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3966
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3987
  %116 = icmp eq i64 %113, 0, !dbg !3988
  br i1 %116, label %119, label %117, !dbg !3990

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3991
  store i8 0, i8* %118, align 1, !dbg !3993, !tbaa !990
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3795, metadata !814) #10, !dbg !3865
  call void @free(i8* %29) #10, !dbg !3994
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3795, metadata !814) #10, !dbg !3865
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3995, !tbaa !821
  br label %123, !dbg !3996

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3795, metadata !814) #10, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3780, metadata !814), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3780, metadata !814), !dbg !3997
  %125 = load i8, i8* %124, align 1, !dbg !3998, !tbaa !990
  %126 = icmp eq i8 %125, 0, !dbg !4000
  br i1 %126, label %152, label %127, !dbg !4001

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4002

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3780, metadata !814), !dbg !3997
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4002
  %132 = icmp eq i32 %131, 0, !dbg !4004
  br i1 %132, label %139, label %133, !dbg !4005

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4006
  br i1 %134, label %135, label %143, !dbg !4007

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4008
  %137 = load i8, i8* %136, align 1, !dbg !4008, !tbaa !990
  %138 = icmp eq i8 %137, 0, !dbg !4009
  br i1 %138, label %139, label %143, !dbg !4010

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4011
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4013
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3779, metadata !814), !dbg !3860
  br label %152, !dbg !4015

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4016
  %145 = add i64 %144, 1, !dbg !4017
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3780, metadata !814), !dbg !3997
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4019
  %148 = add i64 %147, 1, !dbg !4020
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3780, metadata !814), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3780, metadata !814), !dbg !3997
  %150 = load i8, i8* %149, align 1, !dbg !3998, !tbaa !990
  %151 = icmp eq i8 %150, 0, !dbg !4000
  br i1 %151, label %152, label %128, !dbg !4001, !llvm.loop !4022

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3779, metadata !814), !dbg !3860
  %154 = load i8, i8* %153, align 1, !dbg !4024, !tbaa !990
  %155 = icmp eq i8 %154, 0, !dbg !4026
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0), i8* %153, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3779, metadata !814), !dbg !3860
  ret i8* %156, !dbg !4028
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4029 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4074, metadata !814), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4075, metadata !814), !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4077, metadata !814), !dbg !4080
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4081
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4076, metadata !814), !dbg !4082
  %3 = icmp slt i32 %2, 0, !dbg !4083
  br i1 %3, label %4, label %6, !dbg !4085

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4086
  br label %24, !dbg !4087

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4088
  %8 = icmp eq i32 %7, 0, !dbg !4088
  br i1 %8, label %13, label %9, !dbg !4090

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4091
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4092
  %12 = icmp eq i64 %11, -1, !dbg !4093
  br i1 %12, label %16, label %13, !dbg !4094

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4095
  %15 = icmp eq i32 %14, 0, !dbg !4095
  br i1 %15, label %16, label %18, !dbg !4096

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4075, metadata !814), !dbg !4079
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4077, metadata !814), !dbg !4080
  br label %24, !dbg !4098

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4099
  %20 = load i32, i32* %19, align 4, !dbg !4099, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4075, metadata !814), !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4075, metadata !814), !dbg !4079
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4077, metadata !814), !dbg !4080
  %22 = icmp eq i32 %20, 0, !dbg !4100
  br i1 %22, label %24, label %23, !dbg !4098

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4102, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4077, metadata !814), !dbg !4080
  br label %24, !dbg !4104

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4105
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4106 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4151, metadata !814), !dbg !4152
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4153
  br i1 %2, label %6, label %3, !dbg !4155

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4156
  %5 = icmp eq i32 %4, 0, !dbg !4156
  br i1 %5, label %6, label %8, !dbg !4157

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4158
  br label %17, !dbg !4159

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4160, metadata !814) #10, !dbg !4165
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4167
  %10 = load i32, i32* %9, align 8, !dbg !4167, !tbaa !3732
  %11 = and i32 %10, 256, !dbg !4169
  %12 = icmp eq i32 %11, 0, !dbg !4169
  br i1 %12, label %15, label %13, !dbg !4170

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4171
  br label %15, !dbg !4171

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4172
  br label %17, !dbg !4173

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4174
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4175 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4221, metadata !814), !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4222, metadata !814), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4223, metadata !814), !dbg !4229
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4230
  %5 = load i8*, i8** %4, align 8, !dbg !4230, !tbaa !3923
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4231
  %7 = load i8*, i8** %6, align 8, !dbg !4231, !tbaa !3922
  %8 = icmp eq i8* %5, %7, !dbg !4232
  br i1 %8, label %9, label %28, !dbg !4233

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4234
  %11 = load i8*, i8** %10, align 8, !dbg !4234, !tbaa !4235
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4236
  %13 = load i8*, i8** %12, align 8, !dbg !4236, !tbaa !4237
  %14 = icmp eq i8* %11, %13, !dbg !4238
  br i1 %14, label %15, label %28, !dbg !4239

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4240
  %17 = load i8*, i8** %16, align 8, !dbg !4240, !tbaa !4241
  %18 = icmp eq i8* %17, null, !dbg !4242
  br i1 %18, label %19, label %28, !dbg !4243

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4244
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4224, metadata !814), !dbg !4246
  %22 = icmp eq i64 %21, -1, !dbg !4247
  br i1 %22, label %30, label %23, !dbg !4249

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4250
  %25 = load i32, i32* %24, align 8, !dbg !4251, !tbaa !3732
  %26 = and i32 %25, -17, !dbg !4251
  store i32 %26, i32* %24, align 8, !dbg !4251, !tbaa !3732
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4252
  store i64 %21, i64* %27, align 8, !dbg !4253, !tbaa !4254
  br label %30, !dbg !4255

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4256
  br label %30, !dbg !4257

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4258
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

!llvm.dbg.cu = !{!2, !53, !59, !68, !525, !75, !82, !747, !169, !754, !771, !773, !784, !788, !790, !793, !795, !178, !797, !799, !801}
!llvm.ident = !{!803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803, !803}
!llvm.module.flags = !{!804, !805, !806, !807, !808}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15)
!3 = !DIFile(filename: "src/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!9 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!10 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!16, !0}
!16 = !DIGlobalVariableExpression(var: !17)
!17 = distinct !DIGlobalVariable(name: "infomap", scope: !18, file: !19, line: 632, type: !35, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !19, file: !19, line: 630, type: !20, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !24)
!19 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!24 = !{!25, !26, !27, !34}
!25 = !DILocalVariable(name: "program", arg: 1, scope: !18, file: !19, line: 630, type: !22)
!26 = !DILocalVariable(name: "node", scope: !18, file: !19, line: 642, type: !22)
!27 = !DILocalVariable(name: "map_prog", scope: !18, file: !19, line: 643, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !18, file: !19, line: 632, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !30, file: !19, line: 632, baseType: !22, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !19, line: 632, baseType: !22, size: 64, offset: 64)
!34 = !DILocalVariable(name: "lc_messages", scope: !18, file: !19, line: 655, type: !22)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 896, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 7)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !49)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !41, line: 50, size: 256, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !{!43, !44, !46, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 52, baseType: !22, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !40, file: !41, line: 55, baseType: !45, size: 32, offset: 64)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !40, file: !41, line: 56, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !41, line: 57, baseType: !45, size: 32, offset: 192)
!49 = !{!50}
!50 = !DISubrange(count: 5)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "Version", scope: !53, file: !54, line: 2, type: !22, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, globals: !56)
!54 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{}
!56 = !{!51}
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "file_name", scope: !59, file: !64, line: 36, type: !22, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, globals: !61)
!60 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!57, !62}
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !59, file: !64, line: 46, type: !65, isLocal: true, isDefinition: true)
!64 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "exit_failure", scope: !68, file: !71, line: 24, type: !72, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, globals: !70)
!69 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !{!66}
!71 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "program_name", scope: !75, file: !79, line: 33, type: !22, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !77, globals: !78)
!76 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!14, !12}
!78 = !{!73}
!79 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !82, file: !127, line: 77, type: !163, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !119, globals: !124)
!83 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !99, !104}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !86, line: 32, size: 32, elements: !87)
!86 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!88 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!89 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!90 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!91 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!92 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!93 = !DIEnumerator(name: "c_quoting_style", value: 5)
!94 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!95 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!96 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!97 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!98 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !86, line: 242, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!102 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!103 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 46, size: 32, elements: !106)
!105 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!107 = !DIEnumerator(name: "_ISupper", value: 256)
!108 = !DIEnumerator(name: "_ISlower", value: 512)
!109 = !DIEnumerator(name: "_ISalpha", value: 1024)
!110 = !DIEnumerator(name: "_ISdigit", value: 2048)
!111 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!112 = !DIEnumerator(name: "_ISspace", value: 8192)
!113 = !DIEnumerator(name: "_ISprint", value: 16384)
!114 = !DIEnumerator(name: "_ISgraph", value: 32768)
!115 = !DIEnumerator(name: "_ISblank", value: 1)
!116 = !DIEnumerator(name: "_IScntrl", value: 2)
!117 = !DIEnumerator(name: "_ISpunct", value: 4)
!118 = !DIEnumerator(name: "_ISalnum", value: 8)
!119 = !{!45, !120, !121, !12}
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !{!80, !125, !132, !145, !147, !152, !159, !161}
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !82, file: !127, line: 93, type: !128, isLocal: false, isDefinition: true)
!127 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!130 = !{!131}
!131 = !DISubrange(count: 10)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !82, file: !127, line: 1043, type: !134, isLocal: false, isDefinition: true)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !127, line: 57, size: 448, elements: !135)
!135 = !{!136, !137, !138, !143, !144}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !134, file: !127, line: 60, baseType: !85, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !127, line: 63, baseType: !45, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !134, file: !127, line: 67, baseType: !139, size: 256, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !141)
!140 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !134, file: !127, line: 70, baseType: !22, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !134, file: !127, line: 73, baseType: !22, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !82, file: !127, line: 108, type: !134, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !82, file: !127, line: 834, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "slotvec", scope: !82, file: !127, line: 837, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !127, line: 826, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !127, line: 828, baseType: !121, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !155, file: !127, line: 829, baseType: !12, size: 64, offset: 64)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "nslots", scope: !82, file: !127, line: 835, type: !45, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "slotvec0", scope: !82, file: !127, line: 836, type: !155, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 704, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!165 = !{!166}
!166 = !DISubrange(count: 11)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !169, file: !172, line: 26, type: !173, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, globals: !171)
!170 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !{!167}
!172 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !178, file: !523, line: 120, type: !524, isLocal: true, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !519, globals: !522)
!179 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 41, size: 32, elements: !183)
!182 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!184 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!185 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!186 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!187 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!188 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!189 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!190 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!191 = !DIEnumerator(name: "DAY_1", value: 131079)
!192 = !DIEnumerator(name: "DAY_2", value: 131080)
!193 = !DIEnumerator(name: "DAY_3", value: 131081)
!194 = !DIEnumerator(name: "DAY_4", value: 131082)
!195 = !DIEnumerator(name: "DAY_5", value: 131083)
!196 = !DIEnumerator(name: "DAY_6", value: 131084)
!197 = !DIEnumerator(name: "DAY_7", value: 131085)
!198 = !DIEnumerator(name: "ABMON_1", value: 131086)
!199 = !DIEnumerator(name: "ABMON_2", value: 131087)
!200 = !DIEnumerator(name: "ABMON_3", value: 131088)
!201 = !DIEnumerator(name: "ABMON_4", value: 131089)
!202 = !DIEnumerator(name: "ABMON_5", value: 131090)
!203 = !DIEnumerator(name: "ABMON_6", value: 131091)
!204 = !DIEnumerator(name: "ABMON_7", value: 131092)
!205 = !DIEnumerator(name: "ABMON_8", value: 131093)
!206 = !DIEnumerator(name: "ABMON_9", value: 131094)
!207 = !DIEnumerator(name: "ABMON_10", value: 131095)
!208 = !DIEnumerator(name: "ABMON_11", value: 131096)
!209 = !DIEnumerator(name: "ABMON_12", value: 131097)
!210 = !DIEnumerator(name: "MON_1", value: 131098)
!211 = !DIEnumerator(name: "MON_2", value: 131099)
!212 = !DIEnumerator(name: "MON_3", value: 131100)
!213 = !DIEnumerator(name: "MON_4", value: 131101)
!214 = !DIEnumerator(name: "MON_5", value: 131102)
!215 = !DIEnumerator(name: "MON_6", value: 131103)
!216 = !DIEnumerator(name: "MON_7", value: 131104)
!217 = !DIEnumerator(name: "MON_8", value: 131105)
!218 = !DIEnumerator(name: "MON_9", value: 131106)
!219 = !DIEnumerator(name: "MON_10", value: 131107)
!220 = !DIEnumerator(name: "MON_11", value: 131108)
!221 = !DIEnumerator(name: "MON_12", value: 131109)
!222 = !DIEnumerator(name: "AM_STR", value: 131110)
!223 = !DIEnumerator(name: "PM_STR", value: 131111)
!224 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!225 = !DIEnumerator(name: "D_FMT", value: 131113)
!226 = !DIEnumerator(name: "T_FMT", value: 131114)
!227 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!228 = !DIEnumerator(name: "ERA", value: 131116)
!229 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!230 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!231 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!232 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!233 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!234 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!235 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!236 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!237 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!238 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!239 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!240 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!241 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!242 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!243 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!244 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!245 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!246 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!247 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!248 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!249 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!250 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!251 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!252 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!253 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!254 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!255 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!256 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!257 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!258 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!259 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!260 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!261 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!262 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!263 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!264 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!265 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!266 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!267 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!268 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!269 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!270 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!271 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!272 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!273 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!274 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!275 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!276 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!277 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!278 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!279 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!280 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!281 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!282 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!283 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!284 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!285 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!286 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!287 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!288 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!289 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!290 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!291 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!292 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!293 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!294 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!295 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!296 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!297 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!298 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!299 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!300 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!301 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!302 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!303 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!304 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!305 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!306 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!307 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!308 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!309 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!310 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!311 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!312 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!313 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!314 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!315 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!316 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!317 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!319 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!321 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!323 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!325 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!326 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!327 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!328 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!329 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!330 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!331 = !DIEnumerator(name: "CODESET", value: 14)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!333 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!335 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!387 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!388 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!403 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!404 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!405 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!406 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!407 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!408 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!409 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!410 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!411 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!412 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!413 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!414 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!415 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!416 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!417 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!418 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!419 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!420 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!421 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!422 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!423 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!424 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!425 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!442 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!443 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!446 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!447 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!448 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!449 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!450 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!451 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!452 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!453 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!454 = !DIEnumerator(name: "THOUSEP", value: 65537)
!455 = !DIEnumerator(name: "__GROUPING", value: 65538)
!456 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!457 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!458 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!459 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!460 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!461 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!462 = !DIEnumerator(name: "__YESSTR", value: 327682)
!463 = !DIEnumerator(name: "__NOSTR", value: 327683)
!464 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!465 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!466 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!467 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!468 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!469 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!473 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!474 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!475 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!476 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!477 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!478 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!484 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!487 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!488 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!489 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!490 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!491 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!494 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!495 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!496 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!497 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!498 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!499 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!500 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!517 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!518 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!519 = !{!14, !12, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!522 = !{!176}
!523 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !527, retainedTypes: !746)
!526 = !DIFile(filename: "./lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!5, !528}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !529, line: 71, size: 32, elements: !530)
!529 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!531 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!532 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!533 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!534 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!535 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!536 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!537 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!538 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!539 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!540 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!541 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!542 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!543 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!544 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!545 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!546 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!547 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!548 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!549 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!550 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!551 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!552 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!553 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!554 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!555 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!556 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!557 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!558 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!559 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!560 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!561 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!562 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!563 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!564 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!565 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!566 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!567 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!568 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!569 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!570 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!571 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!572 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!573 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!574 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!575 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!576 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!577 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!578 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!579 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!580 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!581 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!582 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!583 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!584 = !DIEnumerator(name: "_SC_PII", value: 53)
!585 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!586 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!587 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!588 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!589 = !DIEnumerator(name: "_SC_POLL", value: 58)
!590 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!591 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!592 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!593 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!594 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!595 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!596 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!597 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!598 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!599 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!600 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!601 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!602 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!603 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!604 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!605 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!606 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!607 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!608 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!609 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!610 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!611 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!612 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!613 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!614 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!615 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!616 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!617 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!618 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!619 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!620 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!621 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!622 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!623 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!624 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!625 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!626 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!627 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!628 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!629 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!630 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!631 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!632 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!633 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!634 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!635 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!636 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!637 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!638 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!639 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!640 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!641 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!642 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!643 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!644 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!645 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!646 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!647 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!648 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!649 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!650 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!651 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!652 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!653 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!654 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!655 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!656 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!657 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!658 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!659 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!660 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!661 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!662 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!663 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!664 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!665 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!666 = !DIEnumerator(name: "_SC_BASE", value: 134)
!667 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!668 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!669 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!670 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!671 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!672 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!673 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!674 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!675 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!676 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!677 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!678 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!679 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!680 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!681 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!682 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!683 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!684 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!685 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!686 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!687 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!688 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!689 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!690 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!691 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!692 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!693 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!694 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!695 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!696 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!697 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!698 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!699 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!700 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!701 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!702 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!703 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!704 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!705 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!706 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!707 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!708 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!709 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!710 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!711 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!712 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!713 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!714 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!715 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!716 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!717 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!718 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!719 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!720 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!721 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!722 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!723 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!724 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!725 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!726 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!727 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!728 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!729 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!730 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!731 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!732 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!733 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!734 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!735 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!736 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!737 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!738 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!739 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!740 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!741 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!742 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!743 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!744 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!745 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!746 = !{!14}
!747 = distinct !DICompileUnit(language: DW_LANG_C99, file: !748, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !749, retainedTypes: !746)
!748 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!749 = !{!750}
!750 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !751, line: 41, size: 32, elements: !752)
!751 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = !{!753}
!753 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !756, retainedTypes: !770)
!755 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = !{!757}
!757 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !759, file: !758, line: 192, size: 32, elements: !768)
!758 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = distinct !DISubprogram(name: "x2nrealloc", scope: !758, file: !758, line: 180, type: !760, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !763)
!760 = !DISubroutineType(types: !761)
!761 = !{!14, !14, !762, !121}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!763 = !{!764, !765, !766, !767}
!764 = !DILocalVariable(name: "p", arg: 1, scope: !759, file: !758, line: 180, type: !14)
!765 = !DILocalVariable(name: "pn", arg: 2, scope: !759, file: !758, line: 180, type: !762)
!766 = !DILocalVariable(name: "s", arg: 3, scope: !759, file: !758, line: 180, type: !121)
!767 = !DILocalVariable(name: "n", scope: !759, file: !758, line: 182, type: !121)
!768 = !{!769}
!769 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!770 = !{!121, !12, !14}
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !772, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55)
!772 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !774, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !775)
!774 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!775 = !{!776}
!776 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !777, line: 26, size: 32, elements: !778)
!777 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!778 = !{!779, !780, !781, !782, !783}
!779 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!780 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!781 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!782 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!783 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !785, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !786, retainedTypes: !787)
!785 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!786 = !{!776, !104}
!787 = !{!45, !120}
!788 = distinct !DICompileUnit(language: DW_LANG_C99, file: !789, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !746)
!789 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!790 = distinct !DICompileUnit(language: DW_LANG_C99, file: !791, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !792)
!791 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = !{!121}
!793 = distinct !DICompileUnit(language: DW_LANG_C99, file: !794, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55)
!794 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!795 = distinct !DICompileUnit(language: DW_LANG_C99, file: !796, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55)
!796 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!797 = distinct !DICompileUnit(language: DW_LANG_C99, file: !798, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55)
!798 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!799 = distinct !DICompileUnit(language: DW_LANG_C99, file: !800, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !746)
!800 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!801 = distinct !DICompileUnit(language: DW_LANG_C99, file: !802, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !746)
!802 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!803 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!804 = !{i32 2, !"Dwarf Version", i32 4}
!805 = !{i32 2, !"Debug Info Version", i32 3}
!806 = !{i32 1, !"wchar_size", i32 4}
!807 = !{i32 7, !"PIC Level", i32 2}
!808 = !{i32 7, !"PIE Level", i32 2}
!809 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !810, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !45}
!812 = !{!813}
!813 = !DILocalVariable(name: "status", arg: 1, scope: !809, file: !3, line: 51, type: !45)
!814 = !DIExpression()
!815 = !DILocation(line: 51, column: 12, scope: !809)
!816 = !DILocation(line: 53, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !809, file: !3, line: 53, column: 7)
!818 = !DILocation(line: 53, column: 7, scope: !809)
!819 = !DILocation(line: 54, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !3, line: 54, column: 5)
!821 = !{!822, !822, i64 0}
!822 = !{!"any pointer", !823, i64 0}
!823 = !{!"omnipotent char", !824, i64 0}
!824 = !{!"Simple C/C++ TBAA"}
!825 = !DILocation(line: 57, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !817, file: !3, line: 56, column: 5)
!827 = !DILocation(line: 58, column: 7, scope: !826)
!828 = !DILocation(line: 63, column: 7, scope: !826)
!829 = !DILocation(line: 68, column: 7, scope: !826)
!830 = !DILocation(line: 69, column: 7, scope: !826)
!831 = !DILocation(line: 642, column: 15, scope: !18, inlinedAt: !832)
!832 = distinct !DILocation(line: 70, column: 7, scope: !826)
!833 = !DILocation(line: 651, column: 3, scope: !18, inlinedAt: !832)
!834 = !DILocation(line: 655, column: 29, scope: !18, inlinedAt: !832)
!835 = !DILocation(line: 655, column: 15, scope: !18, inlinedAt: !832)
!836 = !DILocation(line: 656, column: 7, scope: !837, inlinedAt: !832)
!837 = distinct !DILexicalBlock(scope: !18, file: !19, line: 656, column: 7)
!838 = !DILocation(line: 656, column: 19, scope: !837, inlinedAt: !832)
!839 = !DILocation(line: 656, column: 22, scope: !837, inlinedAt: !832)
!840 = !DILocation(line: 656, column: 7, scope: !18, inlinedAt: !832)
!841 = !DILocation(line: 662, column: 7, scope: !842, inlinedAt: !832)
!842 = distinct !DILexicalBlock(scope: !837, file: !19, line: 657, column: 5)
!843 = !DILocation(line: 664, column: 5, scope: !842, inlinedAt: !832)
!844 = !DILocation(line: 665, column: 3, scope: !18, inlinedAt: !832)
!845 = !DILocation(line: 667, column: 3, scope: !18, inlinedAt: !832)
!846 = !DILocation(line: 72, column: 3, scope: !809)
!847 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !848, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !851)
!848 = !DISubroutineType(types: !849)
!849 = !{!45, !45, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!851 = !{!852, !853, !854, !855, !856, !857}
!852 = !DILocalVariable(name: "argc", arg: 1, scope: !847, file: !3, line: 76, type: !45)
!853 = !DILocalVariable(name: "argv", arg: 2, scope: !847, file: !3, line: 76, type: !850)
!854 = !DILocalVariable(name: "nproc", scope: !847, file: !3, line: 78, type: !123)
!855 = !DILocalVariable(name: "ignore", scope: !847, file: !3, line: 78, type: !123)
!856 = !DILocalVariable(name: "mode", scope: !847, file: !3, line: 87, type: !5)
!857 = !DILocalVariable(name: "c", scope: !858, file: !3, line: 91, type: !45)
!858 = distinct !DILexicalBlock(scope: !847, file: !3, line: 90, column: 5)
!859 = !DILocation(line: 76, column: 11, scope: !847)
!860 = !DILocation(line: 76, column: 24, scope: !847)
!861 = !DILocation(line: 78, column: 24, scope: !847)
!862 = !DILocation(line: 80, column: 21, scope: !847)
!863 = !DILocation(line: 80, column: 3, scope: !847)
!864 = !DILocation(line: 81, column: 3, scope: !847)
!865 = !DILocation(line: 82, column: 3, scope: !847)
!866 = !DILocation(line: 83, column: 3, scope: !847)
!867 = !DILocation(line: 85, column: 3, scope: !847)
!868 = !DILocation(line: 87, column: 20, scope: !847)
!869 = !DILocation(line: 89, column: 3, scope: !847)
!870 = !DILocation(line: 91, column: 15, scope: !858)
!871 = !DILocation(line: 91, column: 11, scope: !858)
!872 = !DILocation(line: 92, column: 11, scope: !858)
!873 = distinct !{!873, !869, !874}
!874 = !DILocation(line: 111, column: 5, scope: !847)
!875 = !DILocation(line: 96, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !858, file: !3, line: 95, column: 9)
!877 = !DILocation(line: 98, column: 9, scope: !876)
!878 = !DILocation(line: 105, column: 32, scope: !876)
!879 = !DILocation(line: 105, column: 58, scope: !876)
!880 = !DILocation(line: 105, column: 20, scope: !876)
!881 = !DILocation(line: 106, column: 11, scope: !876)
!882 = !DILocation(line: 109, column: 11, scope: !876)
!883 = !DILocation(line: 113, column: 15, scope: !884)
!884 = distinct !DILexicalBlock(scope: !847, file: !3, line: 113, column: 7)
!885 = !{!886, !886, i64 0}
!886 = !{!"int", !823, i64 0}
!887 = !DILocation(line: 113, column: 12, scope: !884)
!888 = !DILocation(line: 113, column: 7, scope: !847)
!889 = !DILocation(line: 115, column: 20, scope: !890)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 114, column: 5)
!891 = !DILocation(line: 115, column: 55, scope: !890)
!892 = !DILocation(line: 115, column: 50, scope: !890)
!893 = !DILocation(line: 115, column: 43, scope: !890)
!894 = !DILocation(line: 115, column: 7, scope: !890)
!895 = !DILocation(line: 116, column: 7, scope: !890)
!896 = !DILocation(line: 119, column: 11, scope: !847)
!897 = !DILocation(line: 78, column: 17, scope: !847)
!898 = !DILocation(line: 121, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !847, file: !3, line: 121, column: 7)
!900 = !DILocation(line: 122, column: 11, scope: !899)
!901 = !DILocation(line: 121, column: 7, scope: !847)
!902 = !DILocation(line: 126, column: 3, scope: !847)
!903 = !DILocation(line: 129, column: 1, scope: !847)
!904 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !64, file: !64, line: 41, type: !20, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !905)
!905 = !{!906}
!906 = !DILocalVariable(name: "file", arg: 1, scope: !904, file: !64, line: 41, type: !22)
!907 = !DILocation(line: 41, column: 41, scope: !904)
!908 = !DILocation(line: 43, column: 13, scope: !904)
!909 = !DILocation(line: 44, column: 1, scope: !904)
!910 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !64, file: !64, line: 78, type: !911, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !65}
!913 = !{!914}
!914 = !DILocalVariable(name: "ignore", arg: 1, scope: !910, file: !64, line: 78, type: !65)
!915 = !DILocation(line: 78, column: 37, scope: !910)
!916 = !DILocation(line: 80, column: 16, scope: !910)
!917 = !{!918, !918, i64 0}
!918 = !{!"_Bool", !823, i64 0}
!919 = !DILocation(line: 81, column: 1, scope: !910)
!920 = distinct !DISubprogram(name: "close_stdout", scope: !64, file: !64, line: 107, type: !921, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null}
!923 = !{!924}
!924 = !DILocalVariable(name: "write_error", scope: !925, file: !64, line: 112, type: !22)
!925 = distinct !DILexicalBlock(scope: !926, file: !64, line: 111, column: 5)
!926 = distinct !DILexicalBlock(scope: !920, file: !64, line: 109, column: 7)
!927 = !DILocation(line: 109, column: 21, scope: !926)
!928 = !DILocation(line: 109, column: 7, scope: !926)
!929 = !DILocation(line: 109, column: 29, scope: !926)
!930 = !DILocation(line: 110, column: 7, scope: !926)
!931 = !DILocation(line: 110, column: 12, scope: !926)
!932 = !{i8 0, i8 2}
!933 = !DILocation(line: 114, column: 19, scope: !934)
!934 = distinct !DILexicalBlock(scope: !925, file: !64, line: 113, column: 11)
!935 = !DILocation(line: 110, column: 25, scope: !926)
!936 = !DILocation(line: 110, column: 28, scope: !926)
!937 = !DILocation(line: 110, column: 34, scope: !926)
!938 = !DILocation(line: 109, column: 7, scope: !920)
!939 = !DILocation(line: 112, column: 33, scope: !925)
!940 = !DILocation(line: 112, column: 19, scope: !925)
!941 = !DILocation(line: 113, column: 11, scope: !934)
!942 = !DILocation(line: 113, column: 11, scope: !925)
!943 = !DILocation(line: 114, column: 36, scope: !934)
!944 = !DILocation(line: 114, column: 9, scope: !934)
!945 = !DILocation(line: 117, column: 9, scope: !934)
!946 = !DILocation(line: 119, column: 14, scope: !925)
!947 = !DILocation(line: 119, column: 7, scope: !925)
!948 = !DILocation(line: 122, column: 22, scope: !949)
!949 = distinct !DILexicalBlock(scope: !920, file: !64, line: 122, column: 8)
!950 = !DILocation(line: 122, column: 8, scope: !949)
!951 = !DILocation(line: 122, column: 30, scope: !949)
!952 = !DILocation(line: 122, column: 8, scope: !920)
!953 = !DILocation(line: 123, column: 13, scope: !949)
!954 = !DILocation(line: 123, column: 6, scope: !949)
!955 = !DILocation(line: 124, column: 1, scope: !920)
!956 = distinct !DISubprogram(name: "num_processors", scope: !957, file: !957, line: 371, type: !958, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !960)
!957 = !DIFile(filename: "lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!958 = !DISubroutineType(types: !959)
!959 = !{!123, !5}
!960 = !{!961, !962, !963, !966}
!961 = !DILocalVariable(name: "query", arg: 1, scope: !956, file: !957, line: 371, type: !5)
!962 = !DILocalVariable(name: "omp_env_limit", scope: !956, file: !957, line: 373, type: !123)
!963 = !DILocalVariable(name: "omp_env_threads", scope: !964, file: !957, line: 377, type: !123)
!964 = distinct !DILexicalBlock(scope: !965, file: !957, line: 376, column: 5)
!965 = distinct !DILexicalBlock(scope: !956, file: !957, line: 375, column: 7)
!966 = !DILocalVariable(name: "nprocs", scope: !967, file: !957, line: 392, type: !123)
!967 = distinct !DILexicalBlock(scope: !956, file: !957, line: 391, column: 3)
!968 = !DILocation(line: 371, column: 34, scope: !956)
!969 = !DILocation(line: 373, column: 21, scope: !956)
!970 = !DILocation(line: 375, column: 13, scope: !965)
!971 = !DILocation(line: 375, column: 7, scope: !956)
!972 = !DILocation(line: 380, column: 44, scope: !964)
!973 = !DILocalVariable(name: "threads", arg: 1, scope: !974, file: !957, line: 336, type: !22)
!974 = distinct !DISubprogram(name: "parse_omp_threads", scope: !957, file: !957, line: 336, type: !975, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!123, !22}
!977 = !{!973, !978, !979, !982}
!978 = !DILocalVariable(name: "ret", scope: !974, file: !957, line: 338, type: !123)
!979 = !DILocalVariable(name: "endptr", scope: !980, file: !957, line: 351, type: !12)
!980 = distinct !DILexicalBlock(scope: !981, file: !957, line: 350, column: 5)
!981 = distinct !DILexicalBlock(scope: !974, file: !957, line: 349, column: 7)
!982 = !DILocalVariable(name: "value", scope: !980, file: !957, line: 352, type: !123)
!983 = !DILocation(line: 336, column: 32, scope: !974, inlinedAt: !984)
!984 = distinct !DILocation(line: 380, column: 25, scope: !964)
!985 = !DILocation(line: 338, column: 21, scope: !974, inlinedAt: !984)
!986 = !DILocation(line: 340, column: 15, scope: !987, inlinedAt: !984)
!987 = distinct !DILexicalBlock(scope: !974, file: !957, line: 340, column: 7)
!988 = !DILocation(line: 340, column: 7, scope: !974, inlinedAt: !984)
!989 = !DILocation(line: 345, column: 10, scope: !974, inlinedAt: !984)
!990 = !{!823, !823, i64 0}
!991 = !DILocation(line: 345, column: 19, scope: !974, inlinedAt: !984)
!992 = !DILocation(line: 345, column: 27, scope: !974, inlinedAt: !984)
!993 = !DILocalVariable(name: "c", arg: 1, scope: !994, file: !995, line: 300, type: !45)
!994 = distinct !DISubprogram(name: "c_isspace", scope: !995, file: !995, line: 300, type: !996, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !998)
!995 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!996 = !DISubroutineType(types: !997)
!997 = !{!65, !45}
!998 = !{!993}
!999 = !DILocation(line: 300, column: 16, scope: !994, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 345, column: 30, scope: !974, inlinedAt: !984)
!1001 = !DILocation(line: 302, column: 3, scope: !994, inlinedAt: !1000)
!1002 = !DILocation(line: 346, column: 12, scope: !974, inlinedAt: !984)
!1003 = distinct !{!1003, !1004, !1005}
!1004 = !DILocation(line: 345, column: 3, scope: !974)
!1005 = !DILocation(line: 346, column: 12, scope: !974)
!1006 = !DILocation(line: 349, column: 18, scope: !981, inlinedAt: !984)
!1007 = !DILocalVariable(name: "c", arg: 1, scope: !1008, file: !995, line: 233, type: !45)
!1008 = distinct !DISubprogram(name: "c_isdigit", scope: !995, file: !995, line: 233, type: !996, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !1009)
!1009 = !{!1007}
!1010 = !DILocation(line: 233, column: 16, scope: !1008, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 349, column: 7, scope: !981, inlinedAt: !984)
!1012 = !DILocation(line: 235, column: 3, scope: !1008, inlinedAt: !1011)
!1013 = !DILocation(line: 349, column: 7, scope: !974, inlinedAt: !984)
!1014 = !DILocation(line: 351, column: 7, scope: !980, inlinedAt: !984)
!1015 = !DILocation(line: 351, column: 13, scope: !980, inlinedAt: !984)
!1016 = !DILocation(line: 352, column: 33, scope: !980, inlinedAt: !984)
!1017 = !DILocation(line: 352, column: 25, scope: !980, inlinedAt: !984)
!1018 = !DILocation(line: 354, column: 11, scope: !1019, inlinedAt: !984)
!1019 = distinct !DILexicalBlock(scope: !980, file: !957, line: 354, column: 11)
!1020 = !DILocation(line: 354, column: 18, scope: !1019, inlinedAt: !984)
!1021 = !DILocation(line: 354, column: 11, scope: !980, inlinedAt: !984)
!1022 = !DILocation(line: 356, column: 18, scope: !1023, inlinedAt: !984)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !957, line: 355, column: 9)
!1024 = !DILocation(line: 356, column: 26, scope: !1023, inlinedAt: !984)
!1025 = !DILocation(line: 356, column: 34, scope: !1023, inlinedAt: !984)
!1026 = !DILocation(line: 300, column: 16, scope: !994, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 356, column: 37, scope: !1023, inlinedAt: !984)
!1028 = !DILocation(line: 302, column: 3, scope: !994, inlinedAt: !1027)
!1029 = !DILocation(line: 357, column: 19, scope: !1023, inlinedAt: !984)
!1030 = distinct !{!1030, !1031, !1032}
!1031 = !DILocation(line: 356, column: 11, scope: !1023)
!1032 = !DILocation(line: 357, column: 19, scope: !1023)
!1033 = !DILocation(line: 358, column: 15, scope: !1023, inlinedAt: !984)
!1034 = !DILocation(line: 365, column: 5, scope: !981, inlinedAt: !984)
!1035 = !DILocation(line: 377, column: 25, scope: !964)
!1036 = !DILocation(line: 381, column: 42, scope: !964)
!1037 = !DILocation(line: 336, column: 32, scope: !974, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 381, column: 23, scope: !964)
!1039 = !DILocation(line: 338, column: 21, scope: !974, inlinedAt: !1038)
!1040 = !DILocation(line: 340, column: 15, scope: !987, inlinedAt: !1038)
!1041 = !DILocation(line: 340, column: 7, scope: !974, inlinedAt: !1038)
!1042 = !DILocation(line: 345, column: 10, scope: !974, inlinedAt: !1038)
!1043 = !DILocation(line: 345, column: 19, scope: !974, inlinedAt: !1038)
!1044 = !DILocation(line: 345, column: 27, scope: !974, inlinedAt: !1038)
!1045 = !DILocation(line: 300, column: 16, scope: !994, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 345, column: 30, scope: !974, inlinedAt: !1038)
!1047 = !DILocation(line: 302, column: 3, scope: !994, inlinedAt: !1046)
!1048 = !DILocation(line: 346, column: 12, scope: !974, inlinedAt: !1038)
!1049 = !DILocation(line: 349, column: 18, scope: !981, inlinedAt: !1038)
!1050 = !DILocation(line: 233, column: 16, scope: !1008, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 349, column: 7, scope: !981, inlinedAt: !1038)
!1052 = !DILocation(line: 235, column: 3, scope: !1008, inlinedAt: !1051)
!1053 = !DILocation(line: 349, column: 7, scope: !974, inlinedAt: !1038)
!1054 = !DILocation(line: 351, column: 7, scope: !980, inlinedAt: !1038)
!1055 = !DILocation(line: 351, column: 13, scope: !980, inlinedAt: !1038)
!1056 = !DILocation(line: 352, column: 33, scope: !980, inlinedAt: !1038)
!1057 = !DILocation(line: 352, column: 25, scope: !980, inlinedAt: !1038)
!1058 = !DILocation(line: 354, column: 11, scope: !1019, inlinedAt: !1038)
!1059 = !DILocation(line: 354, column: 18, scope: !1019, inlinedAt: !1038)
!1060 = !DILocation(line: 354, column: 11, scope: !980, inlinedAt: !1038)
!1061 = !DILocation(line: 356, column: 18, scope: !1023, inlinedAt: !1038)
!1062 = !DILocation(line: 356, column: 26, scope: !1023, inlinedAt: !1038)
!1063 = !DILocation(line: 356, column: 34, scope: !1023, inlinedAt: !1038)
!1064 = !DILocation(line: 300, column: 16, scope: !994, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 356, column: 37, scope: !1023, inlinedAt: !1038)
!1066 = !DILocation(line: 302, column: 3, scope: !994, inlinedAt: !1065)
!1067 = !DILocation(line: 357, column: 19, scope: !1023, inlinedAt: !1038)
!1068 = !DILocation(line: 358, column: 15, scope: !1023, inlinedAt: !1038)
!1069 = !DILocation(line: 365, column: 5, scope: !981, inlinedAt: !1038)
!1070 = !DILocation(line: 382, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !964, file: !957, line: 382, column: 11)
!1072 = !DILocation(line: 382, column: 11, scope: !964)
!1073 = !DILocation(line: 385, column: 11, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !964, file: !957, line: 385, column: 11)
!1075 = !DILocation(line: 386, column: 16, scope: !1074)
!1076 = !DILocalVariable(name: "query", arg: 1, scope: !1077, file: !957, line: 206, type: !5)
!1077 = distinct !DISubprogram(name: "num_processors_ignoring_omp", scope: !957, file: !957, line: 206, type: !958, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !1078)
!1078 = !{!1076, !1079, !1083, !1086, !1089}
!1079 = !DILocalVariable(name: "nprocs", scope: !1080, file: !957, line: 226, type: !123)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !957, line: 225, column: 7)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !957, line: 223, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !957, line: 222, column: 7)
!1083 = !DILocalVariable(name: "nprocs", scope: !1084, file: !957, line: 235, type: !1085)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !957, line: 233, column: 7)
!1085 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1086 = !DILocalVariable(name: "nprocs", scope: !1087, file: !957, line: 246, type: !1085)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !957, line: 244, column: 7)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !957, line: 242, column: 5)
!1089 = !DILocalVariable(name: "nprocs_current", scope: !1090, file: !957, line: 256, type: !123)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !957, line: 255, column: 11)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !957, line: 254, column: 13)
!1092 = !DILocation(line: 206, column: 47, scope: !1077, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 392, column: 28, scope: !967)
!1094 = !DILocation(line: 222, column: 13, scope: !1082, inlinedAt: !1093)
!1095 = !DILocation(line: 222, column: 7, scope: !1077, inlinedAt: !1093)
!1096 = !DILocation(line: 129, column: 5, scope: !1097, inlinedAt: !1115)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !957, line: 128, column: 3)
!1098 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !957, file: !957, line: 69, type: !1099, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!123}
!1101 = !{!1102, !1112}
!1102 = !DILocalVariable(name: "set", scope: !1097, file: !957, line: 129, type: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1104, line: 42, baseType: !1105)
!1104 = !DIFile(filename: "/usr/include/bits/cpu-set.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1104, line: 39, size: 1024, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1105, file: !1104, line: 41, baseType: !1108, size: 1024)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 1024, elements: !1110)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1104, line: 32, baseType: !123)
!1110 = !{!1111}
!1111 = !DISubrange(count: 16)
!1112 = !DILocalVariable(name: "count", scope: !1113, file: !957, line: 133, type: !123)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !957, line: 132, column: 7)
!1114 = distinct !DILexicalBlock(scope: !1097, file: !957, line: 131, column: 9)
!1115 = distinct !DILocation(line: 226, column: 32, scope: !1080, inlinedAt: !1093)
!1116 = !DILocation(line: 129, column: 15, scope: !1097, inlinedAt: !1115)
!1117 = !DILocation(line: 131, column: 9, scope: !1114, inlinedAt: !1115)
!1118 = !DILocation(line: 131, column: 51, scope: !1114, inlinedAt: !1115)
!1119 = !DILocation(line: 131, column: 9, scope: !1097, inlinedAt: !1115)
!1120 = !DILocation(line: 137, column: 17, scope: !1113, inlinedAt: !1115)
!1121 = !DILocation(line: 146, column: 19, scope: !1122, inlinedAt: !1115)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !957, line: 146, column: 13)
!1123 = !DILocation(line: 149, column: 3, scope: !1098, inlinedAt: !1115)
!1124 = !DILocation(line: 235, column: 27, scope: !1084, inlinedAt: !1093)
!1125 = !DILocation(line: 235, column: 18, scope: !1084, inlinedAt: !1093)
!1126 = !DILocation(line: 236, column: 20, scope: !1127, inlinedAt: !1093)
!1127 = distinct !DILexicalBlock(scope: !1084, file: !957, line: 236, column: 13)
!1128 = !DILocation(line: 226, column: 23, scope: !1080, inlinedAt: !1093)
!1129 = !DILocation(line: 230, column: 7, scope: !1081, inlinedAt: !1093)
!1130 = !DILocation(line: 246, column: 27, scope: !1087, inlinedAt: !1093)
!1131 = !DILocation(line: 246, column: 18, scope: !1087, inlinedAt: !1093)
!1132 = !DILocation(line: 254, column: 20, scope: !1091, inlinedAt: !1093)
!1133 = !DILocation(line: 254, column: 13, scope: !1087, inlinedAt: !1093)
!1134 = !DILocation(line: 129, column: 5, scope: !1097, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 256, column: 44, scope: !1090, inlinedAt: !1093)
!1136 = !DILocation(line: 129, column: 15, scope: !1097, inlinedAt: !1135)
!1137 = !DILocation(line: 131, column: 9, scope: !1114, inlinedAt: !1135)
!1138 = !DILocation(line: 131, column: 51, scope: !1114, inlinedAt: !1135)
!1139 = !DILocation(line: 131, column: 9, scope: !1097, inlinedAt: !1135)
!1140 = !DILocation(line: 137, column: 17, scope: !1113, inlinedAt: !1135)
!1141 = !DILocation(line: 146, column: 19, scope: !1122, inlinedAt: !1135)
!1142 = !DILocation(line: 149, column: 3, scope: !1098, inlinedAt: !1135)
!1143 = !DILocation(line: 258, column: 17, scope: !1090, inlinedAt: !1093)
!1144 = !DILocation(line: 256, column: 27, scope: !1090, inlinedAt: !1093)
!1145 = !DILocation(line: 263, column: 20, scope: !1146, inlinedAt: !1093)
!1146 = distinct !DILexicalBlock(scope: !1087, file: !957, line: 263, column: 13)
!1147 = !DILocation(line: 330, column: 3, scope: !1077, inlinedAt: !1093)
!1148 = !DILocation(line: 392, column: 19, scope: !967)
!1149 = !DILocation(line: 393, column: 12, scope: !967)
!1150 = !DILocation(line: 395, column: 1, scope: !956)
!1151 = distinct !DISubprogram(name: "set_program_name", scope: !79, file: !79, line: 39, type: !20, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DILocalVariable(name: "argv0", arg: 1, scope: !1151, file: !79, line: 39, type: !22)
!1154 = !DILocalVariable(name: "slash", scope: !1151, file: !79, line: 46, type: !22)
!1155 = !DILocalVariable(name: "base", scope: !1151, file: !79, line: 47, type: !22)
!1156 = !DILocation(line: 39, column: 31, scope: !1151)
!1157 = !DILocation(line: 51, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !79, line: 51, column: 7)
!1159 = !DILocation(line: 51, column: 7, scope: !1151)
!1160 = !DILocation(line: 55, column: 14, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !79, line: 52, column: 5)
!1162 = !DILocation(line: 54, column: 7, scope: !1161)
!1163 = !DILocation(line: 56, column: 7, scope: !1161)
!1164 = !DILocation(line: 59, column: 11, scope: !1151)
!1165 = !DILocation(line: 46, column: 15, scope: !1151)
!1166 = !DILocation(line: 60, column: 17, scope: !1151)
!1167 = !DILocation(line: 60, column: 33, scope: !1151)
!1168 = !DILocation(line: 60, column: 11, scope: !1151)
!1169 = !DILocation(line: 47, column: 15, scope: !1151)
!1170 = !DILocation(line: 61, column: 12, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1151, file: !79, line: 61, column: 7)
!1172 = !DILocation(line: 61, column: 20, scope: !1171)
!1173 = !DILocation(line: 61, column: 25, scope: !1171)
!1174 = !DILocation(line: 61, column: 42, scope: !1171)
!1175 = !DILocation(line: 61, column: 28, scope: !1171)
!1176 = !DILocation(line: 61, column: 61, scope: !1171)
!1177 = !DILocation(line: 61, column: 7, scope: !1151)
!1178 = !DILocation(line: 64, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !79, line: 64, column: 11)
!1180 = distinct !DILexicalBlock(scope: !1171, file: !79, line: 62, column: 5)
!1181 = !DILocation(line: 64, column: 36, scope: !1179)
!1182 = !DILocation(line: 64, column: 11, scope: !1180)
!1183 = !DILocation(line: 66, column: 24, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !79, line: 65, column: 9)
!1185 = !DILocation(line: 70, column: 41, scope: !1184)
!1186 = !DILocation(line: 72, column: 9, scope: !1184)
!1187 = !DILocation(line: 84, column: 16, scope: !1151)
!1188 = !DILocation(line: 90, column: 27, scope: !1151)
!1189 = !DILocation(line: 92, column: 1, scope: !1151)
!1190 = distinct !DISubprogram(name: "clone_quoting_options", scope: !127, file: !127, line: 114, type: !1191, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1194)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1194 = !{!1195, !1196, !1197}
!1195 = !DILocalVariable(name: "o", arg: 1, scope: !1190, file: !127, line: 114, type: !1193)
!1196 = !DILocalVariable(name: "e", scope: !1190, file: !127, line: 116, type: !45)
!1197 = !DILocalVariable(name: "p", scope: !1190, file: !127, line: 117, type: !1193)
!1198 = !DILocation(line: 114, column: 48, scope: !1190)
!1199 = !DILocation(line: 116, column: 11, scope: !1190)
!1200 = !DILocation(line: 116, column: 7, scope: !1190)
!1201 = !DILocation(line: 117, column: 40, scope: !1190)
!1202 = !DILocation(line: 117, column: 31, scope: !1190)
!1203 = !DILocation(line: 117, column: 27, scope: !1190)
!1204 = !DILocation(line: 119, column: 9, scope: !1190)
!1205 = !DILocation(line: 120, column: 3, scope: !1190)
!1206 = distinct !DISubprogram(name: "get_quoting_style", scope: !127, file: !127, line: 125, type: !1207, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1211)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!85, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "o", arg: 1, scope: !1206, file: !127, line: 125, type: !1209)
!1213 = !DILocation(line: 125, column: 50, scope: !1206)
!1214 = !DILocation(line: 127, column: 11, scope: !1206)
!1215 = !DILocation(line: 127, column: 46, scope: !1206)
!1216 = !{!1217, !823, i64 0}
!1217 = !{!"quoting_options", !823, i64 0, !886, i64 4, !823, i64 8, !822, i64 40, !822, i64 48}
!1218 = !DILocation(line: 127, column: 3, scope: !1206)
!1219 = distinct !DISubprogram(name: "set_quoting_style", scope: !127, file: !127, line: 133, type: !1220, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !1193, !85}
!1222 = !{!1223, !1224}
!1223 = !DILocalVariable(name: "o", arg: 1, scope: !1219, file: !127, line: 133, type: !1193)
!1224 = !DILocalVariable(name: "s", arg: 2, scope: !1219, file: !127, line: 133, type: !85)
!1225 = !DILocation(line: 133, column: 44, scope: !1219)
!1226 = !DILocation(line: 133, column: 66, scope: !1219)
!1227 = !DILocation(line: 135, column: 4, scope: !1219)
!1228 = !DILocation(line: 135, column: 39, scope: !1219)
!1229 = !DILocation(line: 135, column: 45, scope: !1219)
!1230 = !DILocation(line: 136, column: 1, scope: !1219)
!1231 = distinct !DISubprogram(name: "set_char_quoting", scope: !127, file: !127, line: 144, type: !1232, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!45, !1193, !13, !45}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1241, !1242}
!1235 = !DILocalVariable(name: "o", arg: 1, scope: !1231, file: !127, line: 144, type: !1193)
!1236 = !DILocalVariable(name: "c", arg: 2, scope: !1231, file: !127, line: 144, type: !13)
!1237 = !DILocalVariable(name: "i", arg: 3, scope: !1231, file: !127, line: 144, type: !45)
!1238 = !DILocalVariable(name: "uc", scope: !1231, file: !127, line: 146, type: !521)
!1239 = !DILocalVariable(name: "p", scope: !1231, file: !127, line: 147, type: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1241 = !DILocalVariable(name: "shift", scope: !1231, file: !127, line: 149, type: !45)
!1242 = !DILocalVariable(name: "r", scope: !1231, file: !127, line: 150, type: !45)
!1243 = !DILocation(line: 144, column: 43, scope: !1231)
!1244 = !DILocation(line: 144, column: 51, scope: !1231)
!1245 = !DILocation(line: 144, column: 58, scope: !1231)
!1246 = !DILocation(line: 146, column: 17, scope: !1231)
!1247 = !DILocation(line: 148, column: 6, scope: !1231)
!1248 = !DILocation(line: 148, column: 62, scope: !1231)
!1249 = !DILocation(line: 148, column: 57, scope: !1231)
!1250 = !DILocation(line: 147, column: 17, scope: !1231)
!1251 = !DILocation(line: 149, column: 18, scope: !1231)
!1252 = !DILocation(line: 149, column: 15, scope: !1231)
!1253 = !DILocation(line: 149, column: 7, scope: !1231)
!1254 = !DILocation(line: 150, column: 12, scope: !1231)
!1255 = !DILocation(line: 150, column: 15, scope: !1231)
!1256 = !DILocation(line: 150, column: 25, scope: !1231)
!1257 = !DILocation(line: 150, column: 7, scope: !1231)
!1258 = !DILocation(line: 151, column: 13, scope: !1231)
!1259 = !DILocation(line: 151, column: 18, scope: !1231)
!1260 = !DILocation(line: 151, column: 23, scope: !1231)
!1261 = !DILocation(line: 151, column: 6, scope: !1231)
!1262 = !DILocation(line: 152, column: 3, scope: !1231)
!1263 = distinct !DISubprogram(name: "set_quoting_flags", scope: !127, file: !127, line: 160, type: !1264, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!45, !1193, !45}
!1266 = !{!1267, !1268, !1269}
!1267 = !DILocalVariable(name: "o", arg: 1, scope: !1263, file: !127, line: 160, type: !1193)
!1268 = !DILocalVariable(name: "i", arg: 2, scope: !1263, file: !127, line: 160, type: !45)
!1269 = !DILocalVariable(name: "r", scope: !1263, file: !127, line: 162, type: !45)
!1270 = !DILocation(line: 160, column: 44, scope: !1263)
!1271 = !DILocation(line: 160, column: 51, scope: !1263)
!1272 = !DILocation(line: 163, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1263, file: !127, line: 163, column: 7)
!1274 = !DILocation(line: 163, column: 7, scope: !1263)
!1275 = !DILocation(line: 165, column: 10, scope: !1263)
!1276 = !{!1217, !886, i64 4}
!1277 = !DILocation(line: 162, column: 7, scope: !1263)
!1278 = !DILocation(line: 166, column: 12, scope: !1263)
!1279 = !DILocation(line: 167, column: 3, scope: !1263)
!1280 = distinct !DISubprogram(name: "set_custom_quoting", scope: !127, file: !127, line: 171, type: !1281, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1193, !22, !22}
!1283 = !{!1284, !1285, !1286}
!1284 = !DILocalVariable(name: "o", arg: 1, scope: !1280, file: !127, line: 171, type: !1193)
!1285 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1280, file: !127, line: 172, type: !22)
!1286 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1280, file: !127, line: 172, type: !22)
!1287 = !DILocation(line: 171, column: 45, scope: !1280)
!1288 = !DILocation(line: 172, column: 33, scope: !1280)
!1289 = !DILocation(line: 172, column: 57, scope: !1280)
!1290 = !DILocation(line: 174, column: 8, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1280, file: !127, line: 174, column: 7)
!1292 = !DILocation(line: 174, column: 7, scope: !1280)
!1293 = !DILocation(line: 176, column: 6, scope: !1280)
!1294 = !DILocation(line: 176, column: 12, scope: !1280)
!1295 = !DILocation(line: 177, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1280, file: !127, line: 177, column: 7)
!1297 = !DILocation(line: 177, column: 23, scope: !1296)
!1298 = !DILocation(line: 177, column: 19, scope: !1296)
!1299 = !DILocation(line: 178, column: 5, scope: !1296)
!1300 = !DILocation(line: 179, column: 6, scope: !1280)
!1301 = !DILocation(line: 179, column: 17, scope: !1280)
!1302 = !{!1217, !822, i64 40}
!1303 = !DILocation(line: 180, column: 6, scope: !1280)
!1304 = !DILocation(line: 180, column: 18, scope: !1280)
!1305 = !{!1217, !822, i64 48}
!1306 = !DILocation(line: 181, column: 1, scope: !1280)
!1307 = distinct !DISubprogram(name: "quotearg_buffer", scope: !127, file: !127, line: 776, type: !1308, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!121, !12, !121, !22, !121, !1209}
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1311 = !DILocalVariable(name: "buffer", arg: 1, scope: !1307, file: !127, line: 776, type: !12)
!1312 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1307, file: !127, line: 776, type: !121)
!1313 = !DILocalVariable(name: "arg", arg: 3, scope: !1307, file: !127, line: 777, type: !22)
!1314 = !DILocalVariable(name: "argsize", arg: 4, scope: !1307, file: !127, line: 777, type: !121)
!1315 = !DILocalVariable(name: "o", arg: 5, scope: !1307, file: !127, line: 778, type: !1209)
!1316 = !DILocalVariable(name: "p", scope: !1307, file: !127, line: 780, type: !1209)
!1317 = !DILocalVariable(name: "e", scope: !1307, file: !127, line: 781, type: !45)
!1318 = !DILocalVariable(name: "r", scope: !1307, file: !127, line: 782, type: !121)
!1319 = !DILocation(line: 776, column: 24, scope: !1307)
!1320 = !DILocation(line: 776, column: 39, scope: !1307)
!1321 = !DILocation(line: 777, column: 30, scope: !1307)
!1322 = !DILocation(line: 777, column: 42, scope: !1307)
!1323 = !DILocation(line: 778, column: 48, scope: !1307)
!1324 = !DILocation(line: 780, column: 37, scope: !1307)
!1325 = !DILocation(line: 780, column: 33, scope: !1307)
!1326 = !DILocation(line: 781, column: 11, scope: !1307)
!1327 = !DILocation(line: 781, column: 7, scope: !1307)
!1328 = !DILocation(line: 783, column: 43, scope: !1307)
!1329 = !DILocation(line: 783, column: 53, scope: !1307)
!1330 = !DILocation(line: 783, column: 60, scope: !1307)
!1331 = !DILocation(line: 784, column: 43, scope: !1307)
!1332 = !DILocation(line: 784, column: 58, scope: !1307)
!1333 = !DILocation(line: 782, column: 14, scope: !1307)
!1334 = !DILocation(line: 782, column: 10, scope: !1307)
!1335 = !DILocation(line: 785, column: 9, scope: !1307)
!1336 = !DILocation(line: 786, column: 3, scope: !1307)
!1337 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !127, file: !127, line: 248, type: !1338, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1342)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!121, !12, !121, !22, !121, !85, !45, !1340, !22, !22}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1367, !1368, !1369, !1370, !1371, !1374, !1375, !1393, !1396, !1397, !1404}
!1343 = !DILocalVariable(name: "buffer", arg: 1, scope: !1337, file: !127, line: 248, type: !12)
!1344 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1337, file: !127, line: 248, type: !121)
!1345 = !DILocalVariable(name: "arg", arg: 3, scope: !1337, file: !127, line: 249, type: !22)
!1346 = !DILocalVariable(name: "argsize", arg: 4, scope: !1337, file: !127, line: 249, type: !121)
!1347 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1337, file: !127, line: 250, type: !85)
!1348 = !DILocalVariable(name: "flags", arg: 6, scope: !1337, file: !127, line: 250, type: !45)
!1349 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1337, file: !127, line: 251, type: !1340)
!1350 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1337, file: !127, line: 252, type: !22)
!1351 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1337, file: !127, line: 253, type: !22)
!1352 = !DILocalVariable(name: "i", scope: !1337, file: !127, line: 255, type: !121)
!1353 = !DILocalVariable(name: "len", scope: !1337, file: !127, line: 256, type: !121)
!1354 = !DILocalVariable(name: "orig_buffersize", scope: !1337, file: !127, line: 257, type: !121)
!1355 = !DILocalVariable(name: "quote_string", scope: !1337, file: !127, line: 258, type: !22)
!1356 = !DILocalVariable(name: "quote_string_len", scope: !1337, file: !127, line: 259, type: !121)
!1357 = !DILocalVariable(name: "backslash_escapes", scope: !1337, file: !127, line: 260, type: !65)
!1358 = !DILocalVariable(name: "unibyte_locale", scope: !1337, file: !127, line: 261, type: !65)
!1359 = !DILocalVariable(name: "elide_outer_quotes", scope: !1337, file: !127, line: 262, type: !65)
!1360 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1337, file: !127, line: 263, type: !65)
!1361 = !DILocalVariable(name: "encountered_single_quote", scope: !1337, file: !127, line: 264, type: !65)
!1362 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1337, file: !127, line: 265, type: !65)
!1363 = !DILocalVariable(name: "c", scope: !1364, file: !127, line: 394, type: !521)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !127, line: 393, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !127, line: 392, column: 3)
!1366 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 392, column: 3)
!1367 = !DILocalVariable(name: "esc", scope: !1364, file: !127, line: 395, type: !521)
!1368 = !DILocalVariable(name: "is_right_quote", scope: !1364, file: !127, line: 396, type: !65)
!1369 = !DILocalVariable(name: "escaping", scope: !1364, file: !127, line: 397, type: !65)
!1370 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1364, file: !127, line: 398, type: !65)
!1371 = !DILocalVariable(name: "m", scope: !1372, file: !127, line: 602, type: !121)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 600, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 418, column: 9)
!1374 = !DILocalVariable(name: "printable", scope: !1372, file: !127, line: 604, type: !65)
!1375 = !DILocalVariable(name: "mbstate", scope: !1376, file: !127, line: 613, type: !1378)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !127, line: 612, column: 15)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !127, line: 606, column: 17)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1379, line: 6, baseType: !1380)
!1379 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1381, line: 21, baseType: !1382)
!1381 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 13, size: 64, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1382, file: !1381, line: 15, baseType: !45, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1382, file: !1381, line: 20, baseType: !1386, size: 32, offset: 32)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1381, line: 16, size: 32, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1386, file: !1381, line: 18, baseType: !140, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1386, file: !1381, line: 19, baseType: !1390, size: 32)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 4)
!1393 = !DILocalVariable(name: "w", scope: !1394, file: !127, line: 623, type: !1395)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !127, line: 622, column: 19)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 90, baseType: !45)
!1396 = !DILocalVariable(name: "bytes", scope: !1394, file: !127, line: 624, type: !121)
!1397 = !DILocalVariable(name: "j", scope: !1398, file: !127, line: 649, type: !121)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !127, line: 648, column: 27)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !127, line: 646, column: 29)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !127, line: 641, column: 23)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !127, line: 633, column: 30)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !127, line: 628, column: 30)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !127, line: 626, column: 25)
!1404 = !DILocalVariable(name: "ilim", scope: !1405, file: !127, line: 676, type: !121)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !127, line: 673, column: 15)
!1406 = distinct !DILexicalBlock(scope: !1372, file: !127, line: 672, column: 17)
!1407 = !DILocation(line: 248, column: 33, scope: !1337)
!1408 = !DILocation(line: 248, column: 48, scope: !1337)
!1409 = !DILocation(line: 249, column: 39, scope: !1337)
!1410 = !DILocation(line: 249, column: 51, scope: !1337)
!1411 = !DILocation(line: 250, column: 46, scope: !1337)
!1412 = !DILocation(line: 250, column: 65, scope: !1337)
!1413 = !DILocation(line: 251, column: 47, scope: !1337)
!1414 = !DILocation(line: 252, column: 39, scope: !1337)
!1415 = !DILocation(line: 253, column: 39, scope: !1337)
!1416 = !DILocation(line: 256, column: 10, scope: !1337)
!1417 = !DILocation(line: 257, column: 10, scope: !1337)
!1418 = !DILocation(line: 258, column: 15, scope: !1337)
!1419 = !DILocation(line: 259, column: 10, scope: !1337)
!1420 = !DILocation(line: 260, column: 8, scope: !1337)
!1421 = !DILocation(line: 261, column: 25, scope: !1337)
!1422 = !DILocation(line: 261, column: 36, scope: !1337)
!1423 = !DILocation(line: 262, column: 8, scope: !1337)
!1424 = !DILocation(line: 263, column: 8, scope: !1337)
!1425 = !DILocation(line: 264, column: 8, scope: !1337)
!1426 = !DILocation(line: 265, column: 8, scope: !1337)
!1427 = !DILocation(line: 265, column: 3, scope: !1337)
!1428 = !DILocation(line: 308, column: 3, scope: !1337)
!1429 = !DILocation(line: 315, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 309, column: 5)
!1431 = !DILocation(line: 315, column: 12, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1430, file: !127, line: 315, column: 11)
!1433 = !DILocation(line: 316, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !127, line: 316, column: 9)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !127, line: 316, column: 9)
!1436 = !DILocation(line: 316, column: 9, scope: !1435)
!1437 = !DILocation(line: 354, column: 26, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !127, line: 332, column: 11)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !127, line: 331, column: 13)
!1440 = distinct !DILexicalBlock(scope: !1430, file: !127, line: 330, column: 7)
!1441 = !DILocation(line: 355, column: 27, scope: !1438)
!1442 = !DILocation(line: 356, column: 11, scope: !1438)
!1443 = !DILocation(line: 357, column: 14, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !127, line: 357, column: 13)
!1445 = !DILocation(line: 357, column: 13, scope: !1440)
!1446 = !DILocation(line: 358, column: 43, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !127, line: 358, column: 11)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !127, line: 358, column: 11)
!1449 = !DILocation(line: 358, column: 11, scope: !1448)
!1450 = !DILocation(line: 359, column: 13, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !127, line: 359, column: 13)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !127, line: 359, column: 13)
!1453 = !DILocation(line: 359, column: 13, scope: !1452)
!1454 = !DILocation(line: 358, column: 70, scope: !1447)
!1455 = distinct !{!1455, !1449, !1456}
!1456 = !DILocation(line: 359, column: 13, scope: !1448)
!1457 = !DILocation(line: 362, column: 28, scope: !1440)
!1458 = !DILocation(line: 364, column: 7, scope: !1430)
!1459 = !DILocation(line: 367, column: 7, scope: !1430)
!1460 = !DILocation(line: 370, column: 7, scope: !1430)
!1461 = !DILocation(line: 373, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1430, file: !127, line: 373, column: 11)
!1463 = !DILocation(line: 373, column: 11, scope: !1430)
!1464 = !DILocation(line: 378, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1430, file: !127, line: 378, column: 11)
!1466 = !DILocation(line: 378, column: 11, scope: !1430)
!1467 = !DILocation(line: 379, column: 9, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !127, line: 379, column: 9)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !127, line: 379, column: 9)
!1470 = !DILocation(line: 379, column: 9, scope: !1469)
!1471 = !DILocation(line: 386, column: 7, scope: !1430)
!1472 = !DILocation(line: 389, column: 7, scope: !1430)
!1473 = !DILocation(line: 255, column: 10, scope: !1337)
!1474 = !DILocation(line: 392, column: 8, scope: !1366)
!1475 = !DILocation(line: 392, column: 27, scope: !1365)
!1476 = !DILocation(line: 392, column: 19, scope: !1365)
!1477 = !DILocation(line: 392, column: 60, scope: !1365)
!1478 = !DILocation(line: 392, column: 3, scope: !1366)
!1479 = !DILocation(line: 392, column: 41, scope: !1365)
!1480 = !DILocation(line: 392, column: 48, scope: !1365)
!1481 = !DILocation(line: 396, column: 12, scope: !1364)
!1482 = !DILocation(line: 397, column: 12, scope: !1364)
!1483 = !DILocation(line: 398, column: 12, scope: !1364)
!1484 = !DILocation(line: 401, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 400, column: 11)
!1486 = !DILocation(line: 403, column: 17, scope: !1485)
!1487 = !DILocation(line: 404, column: 39, scope: !1485)
!1488 = !DILocation(line: 408, column: 32, scope: !1485)
!1489 = !DILocation(line: 404, column: 19, scope: !1485)
!1490 = !DILocation(line: 404, column: 15, scope: !1485)
!1491 = !DILocation(line: 409, column: 11, scope: !1485)
!1492 = !DILocation(line: 409, column: 26, scope: !1485)
!1493 = !DILocation(line: 409, column: 14, scope: !1485)
!1494 = !DILocation(line: 409, column: 63, scope: !1485)
!1495 = !DILocation(line: 400, column: 11, scope: !1364)
!1496 = !DILocation(line: 416, column: 11, scope: !1364)
!1497 = !DILocation(line: 394, column: 21, scope: !1364)
!1498 = !DILocation(line: 417, column: 7, scope: !1364)
!1499 = !DILocation(line: 420, column: 15, scope: !1373)
!1500 = !DILocation(line: 422, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !127, line: 422, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !127, line: 421, column: 13)
!1503 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 420, column: 15)
!1504 = !DILocation(line: 422, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !127, line: 422, column: 15)
!1506 = !DILocation(line: 422, column: 15, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !127, line: 422, column: 15)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !127, line: 422, column: 15)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !127, line: 422, column: 15)
!1510 = !DILocation(line: 422, column: 15, scope: !1508)
!1511 = !DILocation(line: 422, column: 15, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !127, line: 422, column: 15)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !127, line: 422, column: 15)
!1514 = !DILocation(line: 422, column: 15, scope: !1513)
!1515 = !DILocation(line: 422, column: 15, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !127, line: 422, column: 15)
!1517 = distinct !DILexicalBlock(scope: !1509, file: !127, line: 422, column: 15)
!1518 = !DILocation(line: 422, column: 15, scope: !1517)
!1519 = !DILocation(line: 422, column: 15, scope: !1509)
!1520 = !DILocation(line: 422, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !127, line: 422, column: 15)
!1522 = distinct !DILexicalBlock(scope: !1501, file: !127, line: 422, column: 15)
!1523 = !DILocation(line: 422, column: 15, scope: !1522)
!1524 = !DILocation(line: 430, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1502, file: !127, line: 429, column: 19)
!1526 = !DILocation(line: 430, column: 24, scope: !1525)
!1527 = !DILocation(line: 430, column: 28, scope: !1525)
!1528 = !DILocation(line: 430, column: 38, scope: !1525)
!1529 = !DILocation(line: 430, column: 48, scope: !1525)
!1530 = !DILocation(line: 430, column: 59, scope: !1525)
!1531 = !DILocation(line: 432, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !127, line: 432, column: 19)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !127, line: 432, column: 19)
!1534 = distinct !DILexicalBlock(scope: !1525, file: !127, line: 431, column: 17)
!1535 = !DILocation(line: 432, column: 19, scope: !1533)
!1536 = !DILocation(line: 433, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !127, line: 433, column: 19)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !127, line: 433, column: 19)
!1539 = !DILocation(line: 433, column: 19, scope: !1538)
!1540 = !DILocation(line: 434, column: 17, scope: !1534)
!1541 = !DILocation(line: 441, column: 20, scope: !1503)
!1542 = !DILocation(line: 446, column: 11, scope: !1373)
!1543 = !DILocation(line: 449, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 447, column: 13)
!1545 = !DILocation(line: 455, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !127, line: 454, column: 19)
!1547 = !DILocation(line: 455, column: 24, scope: !1546)
!1548 = !DILocation(line: 455, column: 28, scope: !1546)
!1549 = !DILocation(line: 455, column: 38, scope: !1546)
!1550 = !DILocation(line: 455, column: 47, scope: !1546)
!1551 = !DILocation(line: 455, column: 41, scope: !1546)
!1552 = !DILocation(line: 455, column: 52, scope: !1546)
!1553 = !DILocation(line: 454, column: 19, scope: !1544)
!1554 = !DILocation(line: 456, column: 25, scope: !1546)
!1555 = !DILocation(line: 456, column: 17, scope: !1546)
!1556 = !DILocation(line: 463, column: 25, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1546, file: !127, line: 457, column: 19)
!1558 = !DILocation(line: 467, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !127, line: 467, column: 21)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !127, line: 467, column: 21)
!1561 = !DILocation(line: 467, column: 21, scope: !1560)
!1562 = !DILocation(line: 468, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !127, line: 468, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !127, line: 468, column: 21)
!1565 = !DILocation(line: 468, column: 21, scope: !1564)
!1566 = !DILocation(line: 469, column: 21, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !127, line: 469, column: 21)
!1568 = distinct !DILexicalBlock(scope: !1557, file: !127, line: 469, column: 21)
!1569 = !DILocation(line: 469, column: 21, scope: !1568)
!1570 = !DILocation(line: 470, column: 21, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !127, line: 470, column: 21)
!1572 = distinct !DILexicalBlock(scope: !1557, file: !127, line: 470, column: 21)
!1573 = !DILocation(line: 470, column: 21, scope: !1572)
!1574 = !DILocation(line: 471, column: 21, scope: !1557)
!1575 = !DILocation(line: 395, column: 21, scope: !1364)
!1576 = !DILocation(line: 484, column: 31, scope: !1373)
!1577 = !DILocation(line: 485, column: 31, scope: !1373)
!1578 = !DILocation(line: 487, column: 31, scope: !1373)
!1579 = !DILocation(line: 488, column: 31, scope: !1373)
!1580 = !DILocation(line: 489, column: 31, scope: !1373)
!1581 = !DILocation(line: 492, column: 15, scope: !1373)
!1582 = !DILocation(line: 494, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !127, line: 493, column: 13)
!1584 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 492, column: 15)
!1585 = !DILocation(line: 501, column: 33, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 501, column: 15)
!1587 = !DILocation(line: 506, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 505, column: 15)
!1589 = !DILocation(line: 510, column: 15, scope: !1373)
!1590 = !DILocation(line: 518, column: 26, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 518, column: 15)
!1592 = !DILocation(line: 518, column: 15, scope: !1373)
!1593 = !DILocation(line: 518, column: 40, scope: !1591)
!1594 = !DILocation(line: 518, column: 47, scope: !1591)
!1595 = !DILocation(line: 522, column: 17, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 522, column: 15)
!1597 = !DILocation(line: 518, column: 18, scope: !1591)
!1598 = !DILocation(line: 518, column: 65, scope: !1591)
!1599 = !DILocation(line: 522, column: 15, scope: !1373)
!1600 = !DILocation(line: 526, column: 11, scope: !1373)
!1601 = !DILocation(line: 541, column: 15, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 540, column: 15)
!1603 = !DILocation(line: 548, column: 15, scope: !1373)
!1604 = !DILocation(line: 550, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !127, line: 549, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 548, column: 15)
!1607 = !DILocation(line: 553, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !127, line: 553, column: 19)
!1609 = !DILocation(line: 553, column: 35, scope: !1608)
!1610 = !DILocation(line: 553, column: 30, scope: !1608)
!1611 = !DILocation(line: 562, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !127, line: 562, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !127, line: 562, column: 15)
!1614 = !DILocation(line: 562, column: 15, scope: !1613)
!1615 = !DILocation(line: 563, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !127, line: 563, column: 15)
!1617 = distinct !DILexicalBlock(scope: !1605, file: !127, line: 563, column: 15)
!1618 = !DILocation(line: 563, column: 15, scope: !1617)
!1619 = !DILocation(line: 564, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !127, line: 564, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1605, file: !127, line: 564, column: 15)
!1622 = !DILocation(line: 564, column: 15, scope: !1621)
!1623 = !DILocation(line: 566, column: 13, scope: !1605)
!1624 = !DILocation(line: 606, column: 17, scope: !1372)
!1625 = !DILocation(line: 602, column: 20, scope: !1372)
!1626 = !DILocation(line: 609, column: 29, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1377, file: !127, line: 607, column: 15)
!1628 = !{!1629, !1629, i64 0}
!1629 = !{!"short", !823, i64 0}
!1630 = !DILocation(line: 609, column: 27, scope: !1627)
!1631 = !DILocation(line: 604, column: 18, scope: !1372)
!1632 = !DILocation(line: 610, column: 15, scope: !1627)
!1633 = !DILocation(line: 613, column: 17, scope: !1376)
!1634 = !DILocation(line: 614, column: 17, scope: !1376)
!1635 = !DILocation(line: 618, column: 29, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1376, file: !127, line: 618, column: 21)
!1637 = !DILocation(line: 618, column: 21, scope: !1376)
!1638 = !DILocation(line: 619, column: 29, scope: !1636)
!1639 = !DILocation(line: 619, column: 19, scope: !1636)
!1640 = !DILocation(line: 621, column: 17, scope: !1376)
!1641 = distinct !{!1641, !1640, !1642}
!1642 = !DILocation(line: 667, column: 44, scope: !1376)
!1643 = !DILocation(line: 623, column: 21, scope: !1394)
!1644 = !DILocation(line: 624, column: 56, scope: !1394)
!1645 = !DILocation(line: 624, column: 50, scope: !1394)
!1646 = !DILocation(line: 625, column: 53, scope: !1394)
!1647 = !DILocation(line: 613, column: 27, scope: !1376)
!1648 = !DILocation(line: 623, column: 29, scope: !1394)
!1649 = !DILocation(line: 624, column: 36, scope: !1394)
!1650 = !DILocation(line: 624, column: 28, scope: !1394)
!1651 = !DILocation(line: 626, column: 25, scope: !1394)
!1652 = !DILocation(line: 636, column: 38, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1401, file: !127, line: 634, column: 23)
!1654 = !DILocation(line: 636, column: 48, scope: !1653)
!1655 = !DILocation(line: 636, column: 51, scope: !1653)
!1656 = !DILocation(line: 636, column: 25, scope: !1653)
!1657 = !DILocation(line: 637, column: 28, scope: !1653)
!1658 = !DILocation(line: 636, column: 34, scope: !1653)
!1659 = distinct !{!1659, !1656, !1657}
!1660 = !DILocation(line: 650, column: 43, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !127, line: 650, column: 29)
!1662 = distinct !DILexicalBlock(scope: !1398, file: !127, line: 650, column: 29)
!1663 = !DILocation(line: 647, column: 29, scope: !1399)
!1664 = !DILocation(line: 649, column: 36, scope: !1398)
!1665 = !DILocation(line: 651, column: 49, scope: !1661)
!1666 = !DILocation(line: 651, column: 39, scope: !1661)
!1667 = !DILocation(line: 651, column: 31, scope: !1661)
!1668 = !DILocation(line: 650, column: 53, scope: !1661)
!1669 = !DILocation(line: 650, column: 29, scope: !1662)
!1670 = distinct !{!1670, !1669, !1671}
!1671 = !DILocation(line: 659, column: 33, scope: !1662)
!1672 = !DILocation(line: 666, column: 19, scope: !1376)
!1673 = !DILocation(line: 662, column: 41, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1400, file: !127, line: 662, column: 29)
!1675 = !DILocation(line: 662, column: 31, scope: !1674)
!1676 = !DILocation(line: 662, column: 29, scope: !1400)
!1677 = !DILocation(line: 664, column: 27, scope: !1400)
!1678 = !DILocation(line: 667, column: 26, scope: !1376)
!1679 = !DILocation(line: 667, column: 24, scope: !1376)
!1680 = !DILocation(line: 666, column: 19, scope: !1394)
!1681 = !DILocation(line: 668, column: 15, scope: !1377)
!1682 = !DILocation(line: 670, column: 40, scope: !1372)
!1683 = !DILocation(line: 672, column: 19, scope: !1406)
!1684 = !DILocation(line: 672, column: 45, scope: !1406)
!1685 = !DILocation(line: 672, column: 23, scope: !1406)
!1686 = !DILocation(line: 676, column: 33, scope: !1405)
!1687 = !DILocation(line: 676, column: 24, scope: !1405)
!1688 = !DILocation(line: 678, column: 17, scope: !1405)
!1689 = !DILocation(line: 680, column: 43, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !127, line: 680, column: 25)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !127, line: 679, column: 19)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !127, line: 678, column: 17)
!1693 = distinct !DILexicalBlock(scope: !1405, file: !127, line: 678, column: 17)
!1694 = !DILocation(line: 682, column: 25, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !127, line: 682, column: 25)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !127, line: 681, column: 23)
!1697 = !DILocation(line: 682, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !127, line: 682, column: 25)
!1699 = !DILocation(line: 682, column: 25, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !127, line: 682, column: 25)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !127, line: 682, column: 25)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !127, line: 682, column: 25)
!1703 = !DILocation(line: 682, column: 25, scope: !1701)
!1704 = !DILocation(line: 682, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !127, line: 682, column: 25)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !127, line: 682, column: 25)
!1707 = !DILocation(line: 682, column: 25, scope: !1706)
!1708 = !DILocation(line: 682, column: 25, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !127, line: 682, column: 25)
!1710 = distinct !DILexicalBlock(scope: !1702, file: !127, line: 682, column: 25)
!1711 = !DILocation(line: 682, column: 25, scope: !1710)
!1712 = !DILocation(line: 682, column: 25, scope: !1702)
!1713 = !DILocation(line: 682, column: 25, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !127, line: 682, column: 25)
!1715 = distinct !DILexicalBlock(scope: !1695, file: !127, line: 682, column: 25)
!1716 = !DILocation(line: 682, column: 25, scope: !1715)
!1717 = !DILocation(line: 683, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !127, line: 683, column: 25)
!1719 = distinct !DILexicalBlock(scope: !1696, file: !127, line: 683, column: 25)
!1720 = !DILocation(line: 683, column: 25, scope: !1719)
!1721 = !DILocation(line: 684, column: 25, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !127, line: 684, column: 25)
!1723 = distinct !DILexicalBlock(scope: !1696, file: !127, line: 684, column: 25)
!1724 = !DILocation(line: 684, column: 25, scope: !1723)
!1725 = !DILocation(line: 685, column: 38, scope: !1696)
!1726 = !DILocation(line: 685, column: 33, scope: !1696)
!1727 = !DILocation(line: 686, column: 23, scope: !1696)
!1728 = !DILocation(line: 687, column: 30, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1690, file: !127, line: 687, column: 30)
!1730 = !DILocation(line: 687, column: 30, scope: !1690)
!1731 = !DILocation(line: 689, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !127, line: 689, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !127, line: 689, column: 25)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !127, line: 688, column: 23)
!1735 = !DILocation(line: 689, column: 25, scope: !1733)
!1736 = !DILocation(line: 691, column: 23, scope: !1734)
!1737 = !DILocation(line: 692, column: 35, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1691, file: !127, line: 692, column: 25)
!1739 = !DILocation(line: 692, column: 30, scope: !1738)
!1740 = !DILocation(line: 692, column: 25, scope: !1691)
!1741 = !DILocation(line: 694, column: 21, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !127, line: 694, column: 21)
!1743 = distinct !DILexicalBlock(scope: !1691, file: !127, line: 694, column: 21)
!1744 = !DILocation(line: 694, column: 21, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !127, line: 694, column: 21)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !127, line: 694, column: 21)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !127, line: 694, column: 21)
!1748 = !DILocation(line: 694, column: 21, scope: !1746)
!1749 = !DILocation(line: 694, column: 21, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !127, line: 694, column: 21)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !127, line: 694, column: 21)
!1752 = !DILocation(line: 694, column: 21, scope: !1751)
!1753 = !DILocation(line: 694, column: 21, scope: !1747)
!1754 = !DILocation(line: 695, column: 21, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !127, line: 695, column: 21)
!1756 = distinct !DILexicalBlock(scope: !1691, file: !127, line: 695, column: 21)
!1757 = !DILocation(line: 695, column: 21, scope: !1756)
!1758 = !DILocation(line: 696, column: 25, scope: !1691)
!1759 = !DILocation(line: 678, column: 17, scope: !1692)
!1760 = distinct !{!1760, !1761, !1762}
!1761 = !DILocation(line: 678, column: 17, scope: !1693)
!1762 = !DILocation(line: 697, column: 19, scope: !1693)
!1763 = !DILocation(line: 704, column: 34, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 704, column: 11)
!1765 = !DILocation(line: 706, column: 14, scope: !1764)
!1766 = !DILocation(line: 707, column: 14, scope: !1764)
!1767 = !DILocation(line: 707, column: 35, scope: !1764)
!1768 = !DILocation(line: 707, column: 17, scope: !1764)
!1769 = !DILocation(line: 707, column: 53, scope: !1764)
!1770 = !DILocation(line: 707, column: 47, scope: !1764)
!1771 = !DILocation(line: 707, column: 65, scope: !1764)
!1772 = !DILocation(line: 708, column: 15, scope: !1764)
!1773 = !DILocation(line: 708, column: 11, scope: !1764)
!1774 = !DILocation(line: 704, column: 11, scope: !1364)
!1775 = !DILocation(line: 712, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 712, column: 7)
!1777 = !DILocation(line: 712, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !127, line: 712, column: 7)
!1779 = !DILocation(line: 712, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !127, line: 712, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !127, line: 712, column: 7)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !127, line: 712, column: 7)
!1783 = !DILocation(line: 712, column: 7, scope: !1781)
!1784 = !DILocation(line: 712, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !127, line: 712, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !127, line: 712, column: 7)
!1787 = !DILocation(line: 712, column: 7, scope: !1786)
!1788 = !DILocation(line: 712, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !127, line: 712, column: 7)
!1790 = distinct !DILexicalBlock(scope: !1782, file: !127, line: 712, column: 7)
!1791 = !DILocation(line: 712, column: 7, scope: !1790)
!1792 = !DILocation(line: 712, column: 7, scope: !1782)
!1793 = !DILocation(line: 712, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !127, line: 712, column: 7)
!1795 = distinct !DILexicalBlock(scope: !1776, file: !127, line: 712, column: 7)
!1796 = !DILocation(line: 712, column: 7, scope: !1795)
!1797 = !DILocation(line: 715, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !127, line: 715, column: 7)
!1799 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 715, column: 7)
!1800 = !DILocation(line: 715, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !127, line: 715, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !127, line: 715, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !127, line: 715, column: 7)
!1804 = !DILocation(line: 715, column: 7, scope: !1802)
!1805 = !DILocation(line: 715, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !127, line: 715, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !127, line: 715, column: 7)
!1808 = !DILocation(line: 715, column: 7, scope: !1807)
!1809 = !DILocation(line: 715, column: 7, scope: !1803)
!1810 = !DILocation(line: 716, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !127, line: 716, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 716, column: 7)
!1813 = !DILocation(line: 716, column: 7, scope: !1812)
!1814 = !DILocation(line: 718, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1364, file: !127, line: 718, column: 11)
!1816 = !DILocation(line: 718, column: 11, scope: !1364)
!1817 = !DILocation(line: 720, column: 5, scope: !1365)
!1818 = !DILocation(line: 392, column: 75, scope: !1365)
!1819 = !DILocation(line: 392, column: 3, scope: !1365)
!1820 = distinct !{!1820, !1478, !1821}
!1821 = !DILocation(line: 720, column: 5, scope: !1366)
!1822 = !DILocation(line: 722, column: 11, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 722, column: 7)
!1824 = !DILocation(line: 722, column: 16, scope: !1823)
!1825 = !DILocation(line: 730, column: 51, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 730, column: 7)
!1827 = !DILocation(line: 731, column: 10, scope: !1826)
!1828 = !DILocation(line: 733, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !127, line: 733, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !127, line: 732, column: 5)
!1831 = !DILocation(line: 733, column: 11, scope: !1830)
!1832 = !DILocation(line: 734, column: 16, scope: !1829)
!1833 = !DILocation(line: 734, column: 9, scope: !1829)
!1834 = !DILocation(line: 738, column: 18, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 738, column: 16)
!1836 = !DILocation(line: 738, column: 32, scope: !1835)
!1837 = !DILocation(line: 738, column: 29, scope: !1835)
!1838 = !DILocation(line: 747, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 747, column: 7)
!1840 = !DILocation(line: 747, column: 20, scope: !1839)
!1841 = !DILocation(line: 748, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !127, line: 748, column: 5)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !127, line: 748, column: 5)
!1844 = !DILocation(line: 748, column: 5, scope: !1843)
!1845 = !DILocation(line: 749, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !127, line: 749, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !127, line: 749, column: 7)
!1848 = !DILocation(line: 749, column: 7, scope: !1847)
!1849 = !DILocation(line: 748, column: 39, scope: !1842)
!1850 = distinct !{!1850, !1844, !1851}
!1851 = !DILocation(line: 749, column: 7, scope: !1843)
!1852 = !DILocation(line: 751, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 751, column: 7)
!1854 = !DILocation(line: 751, column: 7, scope: !1337)
!1855 = !DILocation(line: 752, column: 5, scope: !1853)
!1856 = !DILocation(line: 752, column: 17, scope: !1853)
!1857 = !DILocation(line: 758, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1337, file: !127, line: 758, column: 7)
!1859 = !DILocation(line: 758, column: 54, scope: !1858)
!1860 = !DILocation(line: 758, column: 51, scope: !1858)
!1861 = !DILocation(line: 762, column: 42, scope: !1337)
!1862 = !DILocation(line: 760, column: 10, scope: !1337)
!1863 = !DILocation(line: 760, column: 3, scope: !1337)
!1864 = !DILocation(line: 764, column: 1, scope: !1337)
!1865 = distinct !DISubprogram(name: "gettext_quote", scope: !127, file: !127, line: 199, type: !1866, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!22, !22, !85}
!1868 = !{!1869, !1870, !1871, !1872}
!1869 = !DILocalVariable(name: "msgid", arg: 1, scope: !1865, file: !127, line: 199, type: !22)
!1870 = !DILocalVariable(name: "s", arg: 2, scope: !1865, file: !127, line: 199, type: !85)
!1871 = !DILocalVariable(name: "translation", scope: !1865, file: !127, line: 201, type: !22)
!1872 = !DILocalVariable(name: "locale_code", scope: !1865, file: !127, line: 202, type: !22)
!1873 = !DILocation(line: 199, column: 28, scope: !1865)
!1874 = !DILocation(line: 199, column: 54, scope: !1865)
!1875 = !DILocation(line: 201, column: 29, scope: !1865)
!1876 = !DILocation(line: 201, column: 15, scope: !1865)
!1877 = !DILocation(line: 204, column: 19, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1865, file: !127, line: 204, column: 7)
!1879 = !DILocation(line: 204, column: 7, scope: !1865)
!1880 = !DILocation(line: 225, column: 17, scope: !1865)
!1881 = !DILocation(line: 202, column: 15, scope: !1865)
!1882 = !DILocalVariable(name: "s2", arg: 2, scope: !1883, file: !1884, line: 160, type: !22)
!1883 = distinct !DISubprogram(name: "strcaseeq0", scope: !1884, file: !1884, line: 160, type: !1885, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1887)
!1884 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!45, !22, !22, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!1887 = !{!1888, !1882, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1888 = !DILocalVariable(name: "s1", arg: 1, scope: !1883, file: !1884, line: 160, type: !22)
!1889 = !DILocalVariable(name: "s20", arg: 3, scope: !1883, file: !1884, line: 160, type: !13)
!1890 = !DILocalVariable(name: "s21", arg: 4, scope: !1883, file: !1884, line: 160, type: !13)
!1891 = !DILocalVariable(name: "s22", arg: 5, scope: !1883, file: !1884, line: 160, type: !13)
!1892 = !DILocalVariable(name: "s23", arg: 6, scope: !1883, file: !1884, line: 160, type: !13)
!1893 = !DILocalVariable(name: "s24", arg: 7, scope: !1883, file: !1884, line: 160, type: !13)
!1894 = !DILocalVariable(name: "s25", arg: 8, scope: !1883, file: !1884, line: 160, type: !13)
!1895 = !DILocalVariable(name: "s26", arg: 9, scope: !1883, file: !1884, line: 160, type: !13)
!1896 = !DILocalVariable(name: "s27", arg: 10, scope: !1883, file: !1884, line: 160, type: !13)
!1897 = !DILocalVariable(name: "s28", arg: 11, scope: !1883, file: !1884, line: 160, type: !13)
!1898 = !DILocation(line: 160, column: 41, scope: !1883, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 226, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1865, file: !127, line: 226, column: 7)
!1901 = !DILocation(line: 160, column: 120, scope: !1883, inlinedAt: !1899)
!1902 = !DILocation(line: 160, column: 130, scope: !1883, inlinedAt: !1899)
!1903 = !DILocation(line: 162, column: 7, scope: !1904, inlinedAt: !1899)
!1904 = distinct !DILexicalBlock(scope: !1883, file: !1884, line: 162, column: 7)
!1905 = !DILocalVariable(name: "s2", arg: 2, scope: !1906, file: !1884, line: 146, type: !22)
!1906 = distinct !DISubprogram(name: "strcaseeq1", scope: !1884, file: !1884, line: 146, type: !1907, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!45, !22, !22, !13, !13, !13, !13, !13, !13, !13, !13}
!1909 = !{!1910, !1905, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1910 = !DILocalVariable(name: "s1", arg: 1, scope: !1906, file: !1884, line: 146, type: !22)
!1911 = !DILocalVariable(name: "s21", arg: 3, scope: !1906, file: !1884, line: 146, type: !13)
!1912 = !DILocalVariable(name: "s22", arg: 4, scope: !1906, file: !1884, line: 146, type: !13)
!1913 = !DILocalVariable(name: "s23", arg: 5, scope: !1906, file: !1884, line: 146, type: !13)
!1914 = !DILocalVariable(name: "s24", arg: 6, scope: !1906, file: !1884, line: 146, type: !13)
!1915 = !DILocalVariable(name: "s25", arg: 7, scope: !1906, file: !1884, line: 146, type: !13)
!1916 = !DILocalVariable(name: "s26", arg: 8, scope: !1906, file: !1884, line: 146, type: !13)
!1917 = !DILocalVariable(name: "s27", arg: 9, scope: !1906, file: !1884, line: 146, type: !13)
!1918 = !DILocalVariable(name: "s28", arg: 10, scope: !1906, file: !1884, line: 146, type: !13)
!1919 = !DILocation(line: 146, column: 41, scope: !1906, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 167, column: 16, scope: !1921, inlinedAt: !1899)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !1884, line: 164, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1904, file: !1884, line: 163, column: 5)
!1923 = !DILocation(line: 146, column: 110, scope: !1906, inlinedAt: !1920)
!1924 = !DILocation(line: 146, column: 120, scope: !1906, inlinedAt: !1920)
!1925 = !DILocation(line: 148, column: 7, scope: !1926, inlinedAt: !1920)
!1926 = distinct !DILexicalBlock(scope: !1906, file: !1884, line: 148, column: 7)
!1927 = !DILocalVariable(name: "s2", arg: 2, scope: !1928, file: !1884, line: 132, type: !22)
!1928 = distinct !DISubprogram(name: "strcaseeq2", scope: !1884, file: !1884, line: 132, type: !1929, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!45, !22, !22, !13, !13, !13, !13, !13, !13, !13}
!1931 = !{!1932, !1927, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1932 = !DILocalVariable(name: "s1", arg: 1, scope: !1928, file: !1884, line: 132, type: !22)
!1933 = !DILocalVariable(name: "s22", arg: 3, scope: !1928, file: !1884, line: 132, type: !13)
!1934 = !DILocalVariable(name: "s23", arg: 4, scope: !1928, file: !1884, line: 132, type: !13)
!1935 = !DILocalVariable(name: "s24", arg: 5, scope: !1928, file: !1884, line: 132, type: !13)
!1936 = !DILocalVariable(name: "s25", arg: 6, scope: !1928, file: !1884, line: 132, type: !13)
!1937 = !DILocalVariable(name: "s26", arg: 7, scope: !1928, file: !1884, line: 132, type: !13)
!1938 = !DILocalVariable(name: "s27", arg: 8, scope: !1928, file: !1884, line: 132, type: !13)
!1939 = !DILocalVariable(name: "s28", arg: 9, scope: !1928, file: !1884, line: 132, type: !13)
!1940 = !DILocation(line: 132, column: 41, scope: !1928, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 153, column: 16, scope: !1942, inlinedAt: !1920)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1884, line: 150, column: 11)
!1943 = distinct !DILexicalBlock(scope: !1926, file: !1884, line: 149, column: 5)
!1944 = !DILocation(line: 132, column: 100, scope: !1928, inlinedAt: !1941)
!1945 = !DILocation(line: 132, column: 110, scope: !1928, inlinedAt: !1941)
!1946 = !DILocation(line: 134, column: 7, scope: !1947, inlinedAt: !1941)
!1947 = distinct !DILexicalBlock(scope: !1928, file: !1884, line: 134, column: 7)
!1948 = !DILocalVariable(name: "s2", arg: 2, scope: !1949, file: !1884, line: 118, type: !22)
!1949 = distinct !DISubprogram(name: "strcaseeq3", scope: !1884, file: !1884, line: 118, type: !1950, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!45, !22, !22, !13, !13, !13, !13, !13, !13}
!1952 = !{!1953, !1948, !1954, !1955, !1956, !1957, !1958, !1959}
!1953 = !DILocalVariable(name: "s1", arg: 1, scope: !1949, file: !1884, line: 118, type: !22)
!1954 = !DILocalVariable(name: "s23", arg: 3, scope: !1949, file: !1884, line: 118, type: !13)
!1955 = !DILocalVariable(name: "s24", arg: 4, scope: !1949, file: !1884, line: 118, type: !13)
!1956 = !DILocalVariable(name: "s25", arg: 5, scope: !1949, file: !1884, line: 118, type: !13)
!1957 = !DILocalVariable(name: "s26", arg: 6, scope: !1949, file: !1884, line: 118, type: !13)
!1958 = !DILocalVariable(name: "s27", arg: 7, scope: !1949, file: !1884, line: 118, type: !13)
!1959 = !DILocalVariable(name: "s28", arg: 8, scope: !1949, file: !1884, line: 118, type: !13)
!1960 = !DILocation(line: 118, column: 41, scope: !1949, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 139, column: 16, scope: !1962, inlinedAt: !1941)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1884, line: 136, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !1884, line: 135, column: 5)
!1964 = !DILocation(line: 118, column: 90, scope: !1949, inlinedAt: !1961)
!1965 = !DILocation(line: 118, column: 100, scope: !1949, inlinedAt: !1961)
!1966 = !DILocation(line: 120, column: 7, scope: !1967, inlinedAt: !1961)
!1967 = distinct !DILexicalBlock(scope: !1949, file: !1884, line: 120, column: 7)
!1968 = !DILocation(line: 120, column: 7, scope: !1949, inlinedAt: !1961)
!1969 = !DILocalVariable(name: "s2", arg: 2, scope: !1970, file: !1884, line: 104, type: !22)
!1970 = distinct !DISubprogram(name: "strcaseeq4", scope: !1884, file: !1884, line: 104, type: !1971, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!45, !22, !22, !13, !13, !13, !13, !13}
!1973 = !{!1974, !1969, !1975, !1976, !1977, !1978, !1979}
!1974 = !DILocalVariable(name: "s1", arg: 1, scope: !1970, file: !1884, line: 104, type: !22)
!1975 = !DILocalVariable(name: "s24", arg: 3, scope: !1970, file: !1884, line: 104, type: !13)
!1976 = !DILocalVariable(name: "s25", arg: 4, scope: !1970, file: !1884, line: 104, type: !13)
!1977 = !DILocalVariable(name: "s26", arg: 5, scope: !1970, file: !1884, line: 104, type: !13)
!1978 = !DILocalVariable(name: "s27", arg: 6, scope: !1970, file: !1884, line: 104, type: !13)
!1979 = !DILocalVariable(name: "s28", arg: 7, scope: !1970, file: !1884, line: 104, type: !13)
!1980 = !DILocation(line: 104, column: 41, scope: !1970, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 125, column: 16, scope: !1982, inlinedAt: !1961)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1884, line: 122, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1967, file: !1884, line: 121, column: 5)
!1984 = !DILocation(line: 104, column: 80, scope: !1970, inlinedAt: !1981)
!1985 = !DILocation(line: 104, column: 90, scope: !1970, inlinedAt: !1981)
!1986 = !DILocation(line: 106, column: 7, scope: !1987, inlinedAt: !1981)
!1987 = distinct !DILexicalBlock(scope: !1970, file: !1884, line: 106, column: 7)
!1988 = !DILocation(line: 106, column: 7, scope: !1970, inlinedAt: !1981)
!1989 = !DILocalVariable(name: "s2", arg: 2, scope: !1990, file: !1884, line: 90, type: !22)
!1990 = distinct !DISubprogram(name: "strcaseeq5", scope: !1884, file: !1884, line: 90, type: !1991, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!45, !22, !22, !13, !13, !13, !13}
!1993 = !{!1994, !1989, !1995, !1996, !1997, !1998}
!1994 = !DILocalVariable(name: "s1", arg: 1, scope: !1990, file: !1884, line: 90, type: !22)
!1995 = !DILocalVariable(name: "s25", arg: 3, scope: !1990, file: !1884, line: 90, type: !13)
!1996 = !DILocalVariable(name: "s26", arg: 4, scope: !1990, file: !1884, line: 90, type: !13)
!1997 = !DILocalVariable(name: "s27", arg: 5, scope: !1990, file: !1884, line: 90, type: !13)
!1998 = !DILocalVariable(name: "s28", arg: 6, scope: !1990, file: !1884, line: 90, type: !13)
!1999 = !DILocation(line: 90, column: 41, scope: !1990, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 111, column: 16, scope: !2001, inlinedAt: !1981)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !1884, line: 108, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1987, file: !1884, line: 107, column: 5)
!2003 = !DILocation(line: 90, column: 70, scope: !1990, inlinedAt: !2000)
!2004 = !DILocation(line: 90, column: 80, scope: !1990, inlinedAt: !2000)
!2005 = !DILocation(line: 92, column: 7, scope: !2006, inlinedAt: !2000)
!2006 = distinct !DILexicalBlock(scope: !1990, file: !1884, line: 92, column: 7)
!2007 = !DILocation(line: 92, column: 7, scope: !1990, inlinedAt: !2000)
!2008 = !DILocation(line: 227, column: 12, scope: !1900)
!2009 = !DILocation(line: 227, column: 21, scope: !1900)
!2010 = !DILocation(line: 227, column: 5, scope: !1900)
!2011 = !DILocation(line: 146, column: 41, scope: !1906, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 167, column: 16, scope: !1921, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 228, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1865, file: !127, line: 228, column: 7)
!2015 = !DILocation(line: 146, column: 110, scope: !1906, inlinedAt: !2012)
!2016 = !DILocation(line: 146, column: 120, scope: !1906, inlinedAt: !2012)
!2017 = !DILocation(line: 148, column: 7, scope: !1926, inlinedAt: !2012)
!2018 = !DILocation(line: 132, column: 41, scope: !1928, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 153, column: 16, scope: !1942, inlinedAt: !2012)
!2020 = !DILocation(line: 132, column: 100, scope: !1928, inlinedAt: !2019)
!2021 = !DILocation(line: 132, column: 110, scope: !1928, inlinedAt: !2019)
!2022 = !DILocation(line: 134, column: 7, scope: !1947, inlinedAt: !2019)
!2023 = !DILocation(line: 134, column: 7, scope: !1928, inlinedAt: !2019)
!2024 = !DILocation(line: 118, column: 41, scope: !1949, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 139, column: 16, scope: !1962, inlinedAt: !2019)
!2026 = !DILocation(line: 118, column: 90, scope: !1949, inlinedAt: !2025)
!2027 = !DILocation(line: 118, column: 100, scope: !1949, inlinedAt: !2025)
!2028 = !DILocation(line: 120, column: 7, scope: !1967, inlinedAt: !2025)
!2029 = !DILocation(line: 120, column: 7, scope: !1949, inlinedAt: !2025)
!2030 = !DILocation(line: 104, column: 41, scope: !1970, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 125, column: 16, scope: !1982, inlinedAt: !2025)
!2032 = !DILocation(line: 104, column: 80, scope: !1970, inlinedAt: !2031)
!2033 = !DILocation(line: 104, column: 90, scope: !1970, inlinedAt: !2031)
!2034 = !DILocation(line: 106, column: 7, scope: !1987, inlinedAt: !2031)
!2035 = !DILocation(line: 106, column: 7, scope: !1970, inlinedAt: !2031)
!2036 = !DILocation(line: 90, column: 41, scope: !1990, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 111, column: 16, scope: !2001, inlinedAt: !2031)
!2038 = !DILocation(line: 90, column: 70, scope: !1990, inlinedAt: !2037)
!2039 = !DILocation(line: 90, column: 80, scope: !1990, inlinedAt: !2037)
!2040 = !DILocation(line: 92, column: 7, scope: !2006, inlinedAt: !2037)
!2041 = !DILocation(line: 92, column: 7, scope: !1990, inlinedAt: !2037)
!2042 = !DILocalVariable(name: "s2", arg: 2, scope: !2043, file: !1884, line: 76, type: !22)
!2043 = distinct !DISubprogram(name: "strcaseeq6", scope: !1884, file: !1884, line: 76, type: !2044, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!45, !22, !22, !13, !13, !13}
!2046 = !{!2047, !2042, !2048, !2049, !2050}
!2047 = !DILocalVariable(name: "s1", arg: 1, scope: !2043, file: !1884, line: 76, type: !22)
!2048 = !DILocalVariable(name: "s26", arg: 3, scope: !2043, file: !1884, line: 76, type: !13)
!2049 = !DILocalVariable(name: "s27", arg: 4, scope: !2043, file: !1884, line: 76, type: !13)
!2050 = !DILocalVariable(name: "s28", arg: 5, scope: !2043, file: !1884, line: 76, type: !13)
!2051 = !DILocation(line: 76, column: 41, scope: !2043, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 97, column: 16, scope: !2053, inlinedAt: !2037)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1884, line: 94, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2006, file: !1884, line: 93, column: 5)
!2055 = !DILocation(line: 76, column: 60, scope: !2043, inlinedAt: !2052)
!2056 = !DILocation(line: 76, column: 70, scope: !2043, inlinedAt: !2052)
!2057 = !DILocation(line: 78, column: 7, scope: !2058, inlinedAt: !2052)
!2058 = distinct !DILexicalBlock(scope: !2043, file: !1884, line: 78, column: 7)
!2059 = !DILocation(line: 78, column: 7, scope: !2043, inlinedAt: !2052)
!2060 = !DILocalVariable(name: "s2", arg: 2, scope: !2061, file: !1884, line: 62, type: !22)
!2061 = distinct !DISubprogram(name: "strcaseeq7", scope: !1884, file: !1884, line: 62, type: !2062, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!45, !22, !22, !13, !13}
!2064 = !{!2065, !2060, !2066, !2067}
!2065 = !DILocalVariable(name: "s1", arg: 1, scope: !2061, file: !1884, line: 62, type: !22)
!2066 = !DILocalVariable(name: "s27", arg: 3, scope: !2061, file: !1884, line: 62, type: !13)
!2067 = !DILocalVariable(name: "s28", arg: 4, scope: !2061, file: !1884, line: 62, type: !13)
!2068 = !DILocation(line: 62, column: 41, scope: !2061, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 83, column: 16, scope: !2070, inlinedAt: !2052)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !1884, line: 80, column: 11)
!2071 = distinct !DILexicalBlock(scope: !2058, file: !1884, line: 79, column: 5)
!2072 = !DILocation(line: 62, column: 50, scope: !2061, inlinedAt: !2069)
!2073 = !DILocation(line: 62, column: 60, scope: !2061, inlinedAt: !2069)
!2074 = !DILocation(line: 64, column: 7, scope: !2075, inlinedAt: !2069)
!2075 = distinct !DILexicalBlock(scope: !2061, file: !1884, line: 64, column: 7)
!2076 = !DILocation(line: 228, column: 7, scope: !1865)
!2077 = !DILocation(line: 229, column: 12, scope: !2014)
!2078 = !DILocation(line: 229, column: 21, scope: !2014)
!2079 = !DILocation(line: 229, column: 5, scope: !2014)
!2080 = !DILocation(line: 231, column: 13, scope: !1865)
!2081 = !DILocation(line: 231, column: 11, scope: !1865)
!2082 = !DILocation(line: 231, column: 3, scope: !1865)
!2083 = !DILocation(line: 232, column: 1, scope: !1865)
!2084 = distinct !DISubprogram(name: "quotearg_alloc", scope: !127, file: !127, line: 791, type: !2085, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!12, !22, !121, !1209}
!2087 = !{!2088, !2089, !2090}
!2088 = !DILocalVariable(name: "arg", arg: 1, scope: !2084, file: !127, line: 791, type: !22)
!2089 = !DILocalVariable(name: "argsize", arg: 2, scope: !2084, file: !127, line: 791, type: !121)
!2090 = !DILocalVariable(name: "o", arg: 3, scope: !2084, file: !127, line: 792, type: !1209)
!2091 = !DILocation(line: 791, column: 29, scope: !2084)
!2092 = !DILocation(line: 791, column: 41, scope: !2084)
!2093 = !DILocation(line: 792, column: 47, scope: !2084)
!2094 = !DILocalVariable(name: "arg", arg: 1, scope: !2095, file: !127, line: 804, type: !22)
!2095 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !127, file: !127, line: 804, type: !2096, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!12, !22, !121, !762, !1209}
!2098 = !{!2094, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!2099 = !DILocalVariable(name: "argsize", arg: 2, scope: !2095, file: !127, line: 804, type: !121)
!2100 = !DILocalVariable(name: "size", arg: 3, scope: !2095, file: !127, line: 804, type: !762)
!2101 = !DILocalVariable(name: "o", arg: 4, scope: !2095, file: !127, line: 805, type: !1209)
!2102 = !DILocalVariable(name: "p", scope: !2095, file: !127, line: 807, type: !1209)
!2103 = !DILocalVariable(name: "e", scope: !2095, file: !127, line: 808, type: !45)
!2104 = !DILocalVariable(name: "flags", scope: !2095, file: !127, line: 810, type: !45)
!2105 = !DILocalVariable(name: "bufsize", scope: !2095, file: !127, line: 811, type: !121)
!2106 = !DILocalVariable(name: "buf", scope: !2095, file: !127, line: 815, type: !12)
!2107 = !DILocation(line: 804, column: 33, scope: !2095, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 794, column: 10, scope: !2084)
!2109 = !DILocation(line: 804, column: 45, scope: !2095, inlinedAt: !2108)
!2110 = !DILocation(line: 804, column: 62, scope: !2095, inlinedAt: !2108)
!2111 = !DILocation(line: 805, column: 51, scope: !2095, inlinedAt: !2108)
!2112 = !DILocation(line: 807, column: 37, scope: !2095, inlinedAt: !2108)
!2113 = !DILocation(line: 807, column: 33, scope: !2095, inlinedAt: !2108)
!2114 = !DILocation(line: 808, column: 11, scope: !2095, inlinedAt: !2108)
!2115 = !DILocation(line: 808, column: 7, scope: !2095, inlinedAt: !2108)
!2116 = !DILocation(line: 810, column: 18, scope: !2095, inlinedAt: !2108)
!2117 = !DILocation(line: 810, column: 24, scope: !2095, inlinedAt: !2108)
!2118 = !DILocation(line: 810, column: 7, scope: !2095, inlinedAt: !2108)
!2119 = !DILocation(line: 811, column: 69, scope: !2095, inlinedAt: !2108)
!2120 = !DILocation(line: 812, column: 53, scope: !2095, inlinedAt: !2108)
!2121 = !DILocation(line: 813, column: 49, scope: !2095, inlinedAt: !2108)
!2122 = !DILocation(line: 814, column: 49, scope: !2095, inlinedAt: !2108)
!2123 = !DILocation(line: 811, column: 20, scope: !2095, inlinedAt: !2108)
!2124 = !DILocation(line: 814, column: 62, scope: !2095, inlinedAt: !2108)
!2125 = !DILocation(line: 811, column: 10, scope: !2095, inlinedAt: !2108)
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2127, file: !758, line: 220, type: !121)
!2127 = distinct !DISubprogram(name: "xcharalloc", scope: !758, file: !758, line: 220, type: !2128, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!12, !121}
!2130 = !{!2126}
!2131 = !DILocation(line: 220, column: 20, scope: !2127, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 815, column: 15, scope: !2095, inlinedAt: !2108)
!2133 = !DILocation(line: 222, column: 10, scope: !2127, inlinedAt: !2132)
!2134 = !DILocation(line: 815, column: 9, scope: !2095, inlinedAt: !2108)
!2135 = !DILocation(line: 816, column: 60, scope: !2095, inlinedAt: !2108)
!2136 = !DILocation(line: 818, column: 32, scope: !2095, inlinedAt: !2108)
!2137 = !DILocation(line: 818, column: 47, scope: !2095, inlinedAt: !2108)
!2138 = !DILocation(line: 816, column: 3, scope: !2095, inlinedAt: !2108)
!2139 = !DILocation(line: 819, column: 9, scope: !2095, inlinedAt: !2108)
!2140 = !DILocation(line: 794, column: 3, scope: !2084)
!2141 = !DILocation(line: 804, column: 33, scope: !2095)
!2142 = !DILocation(line: 804, column: 45, scope: !2095)
!2143 = !DILocation(line: 804, column: 62, scope: !2095)
!2144 = !DILocation(line: 805, column: 51, scope: !2095)
!2145 = !DILocation(line: 807, column: 37, scope: !2095)
!2146 = !DILocation(line: 807, column: 33, scope: !2095)
!2147 = !DILocation(line: 808, column: 11, scope: !2095)
!2148 = !DILocation(line: 808, column: 7, scope: !2095)
!2149 = !DILocation(line: 810, column: 18, scope: !2095)
!2150 = !DILocation(line: 810, column: 27, scope: !2095)
!2151 = !DILocation(line: 810, column: 24, scope: !2095)
!2152 = !DILocation(line: 810, column: 7, scope: !2095)
!2153 = !DILocation(line: 811, column: 69, scope: !2095)
!2154 = !DILocation(line: 812, column: 53, scope: !2095)
!2155 = !DILocation(line: 813, column: 49, scope: !2095)
!2156 = !DILocation(line: 814, column: 49, scope: !2095)
!2157 = !DILocation(line: 811, column: 20, scope: !2095)
!2158 = !DILocation(line: 814, column: 62, scope: !2095)
!2159 = !DILocation(line: 811, column: 10, scope: !2095)
!2160 = !DILocation(line: 220, column: 20, scope: !2127, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 815, column: 15, scope: !2095)
!2162 = !DILocation(line: 222, column: 10, scope: !2127, inlinedAt: !2161)
!2163 = !DILocation(line: 815, column: 9, scope: !2095)
!2164 = !DILocation(line: 816, column: 60, scope: !2095)
!2165 = !DILocation(line: 818, column: 32, scope: !2095)
!2166 = !DILocation(line: 818, column: 47, scope: !2095)
!2167 = !DILocation(line: 816, column: 3, scope: !2095)
!2168 = !DILocation(line: 819, column: 9, scope: !2095)
!2169 = !DILocation(line: 820, column: 7, scope: !2095)
!2170 = !DILocation(line: 821, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2095, file: !127, line: 820, column: 7)
!2172 = !{!2173, !2173, i64 0}
!2173 = !{!"long", !823, i64 0}
!2174 = !DILocation(line: 821, column: 5, scope: !2171)
!2175 = !DILocation(line: 822, column: 3, scope: !2095)
!2176 = distinct !DISubprogram(name: "quotearg_free", scope: !127, file: !127, line: 840, type: !921, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2177)
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "sv", scope: !2176, file: !127, line: 842, type: !154)
!2179 = !DILocalVariable(name: "i", scope: !2176, file: !127, line: 843, type: !45)
!2180 = !DILocation(line: 842, column: 24, scope: !2176)
!2181 = !DILocation(line: 842, column: 19, scope: !2176)
!2182 = !DILocation(line: 843, column: 7, scope: !2176)
!2183 = !DILocation(line: 844, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !127, line: 844, column: 3)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !127, line: 844, column: 3)
!2186 = !DILocation(line: 844, column: 17, scope: !2184)
!2187 = !DILocation(line: 844, column: 3, scope: !2185)
!2188 = !DILocation(line: 845, column: 17, scope: !2184)
!2189 = !{!2190, !822, i64 8}
!2190 = !{!"slotvec", !2173, i64 0, !822, i64 8}
!2191 = !DILocation(line: 845, column: 5, scope: !2184)
!2192 = !DILocation(line: 844, column: 28, scope: !2184)
!2193 = distinct !{!2193, !2187, !2194}
!2194 = !DILocation(line: 845, column: 20, scope: !2185)
!2195 = !DILocation(line: 846, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2176, file: !127, line: 846, column: 7)
!2197 = !DILocation(line: 846, column: 17, scope: !2196)
!2198 = !DILocation(line: 846, column: 7, scope: !2176)
!2199 = !DILocation(line: 848, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !127, line: 847, column: 5)
!2201 = !DILocation(line: 849, column: 21, scope: !2200)
!2202 = !{!2190, !2173, i64 0}
!2203 = !DILocation(line: 850, column: 20, scope: !2200)
!2204 = !DILocation(line: 851, column: 5, scope: !2200)
!2205 = !DILocation(line: 852, column: 10, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2176, file: !127, line: 852, column: 7)
!2207 = !DILocation(line: 852, column: 7, scope: !2176)
!2208 = !DILocation(line: 854, column: 13, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !127, line: 853, column: 5)
!2210 = !DILocation(line: 854, column: 7, scope: !2209)
!2211 = !DILocation(line: 855, column: 15, scope: !2209)
!2212 = !DILocation(line: 856, column: 5, scope: !2209)
!2213 = !DILocation(line: 857, column: 10, scope: !2176)
!2214 = !DILocation(line: 858, column: 1, scope: !2176)
!2215 = distinct !DISubprogram(name: "quotearg_n", scope: !127, file: !127, line: 922, type: !2216, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!12, !45, !22}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "n", arg: 1, scope: !2215, file: !127, line: 922, type: !45)
!2220 = !DILocalVariable(name: "arg", arg: 2, scope: !2215, file: !127, line: 922, type: !22)
!2221 = !DILocation(line: 922, column: 17, scope: !2215)
!2222 = !DILocation(line: 922, column: 32, scope: !2215)
!2223 = !DILocation(line: 924, column: 10, scope: !2215)
!2224 = !DILocation(line: 924, column: 3, scope: !2215)
!2225 = distinct !DISubprogram(name: "quotearg_n_options", scope: !127, file: !127, line: 869, type: !2226, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!12, !45, !22, !121, !1209}
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2238, !2240, !2241, !2242}
!2229 = !DILocalVariable(name: "n", arg: 1, scope: !2225, file: !127, line: 869, type: !45)
!2230 = !DILocalVariable(name: "arg", arg: 2, scope: !2225, file: !127, line: 869, type: !22)
!2231 = !DILocalVariable(name: "argsize", arg: 3, scope: !2225, file: !127, line: 869, type: !121)
!2232 = !DILocalVariable(name: "options", arg: 4, scope: !2225, file: !127, line: 870, type: !1209)
!2233 = !DILocalVariable(name: "e", scope: !2225, file: !127, line: 872, type: !45)
!2234 = !DILocalVariable(name: "sv", scope: !2225, file: !127, line: 874, type: !154)
!2235 = !DILocalVariable(name: "preallocated", scope: !2236, file: !127, line: 881, type: !65)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !127, line: 880, column: 5)
!2237 = distinct !DILexicalBlock(scope: !2225, file: !127, line: 879, column: 7)
!2238 = !DILocalVariable(name: "size", scope: !2239, file: !127, line: 894, type: !121)
!2239 = distinct !DILexicalBlock(scope: !2225, file: !127, line: 893, column: 3)
!2240 = !DILocalVariable(name: "val", scope: !2239, file: !127, line: 895, type: !12)
!2241 = !DILocalVariable(name: "flags", scope: !2239, file: !127, line: 897, type: !45)
!2242 = !DILocalVariable(name: "qsize", scope: !2239, file: !127, line: 898, type: !121)
!2243 = !DILocation(line: 869, column: 25, scope: !2225)
!2244 = !DILocation(line: 869, column: 40, scope: !2225)
!2245 = !DILocation(line: 869, column: 52, scope: !2225)
!2246 = !DILocation(line: 870, column: 51, scope: !2225)
!2247 = !DILocation(line: 872, column: 11, scope: !2225)
!2248 = !DILocation(line: 872, column: 7, scope: !2225)
!2249 = !DILocation(line: 874, column: 24, scope: !2225)
!2250 = !DILocation(line: 874, column: 19, scope: !2225)
!2251 = !DILocation(line: 876, column: 9, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2225, file: !127, line: 876, column: 7)
!2253 = !DILocation(line: 876, column: 7, scope: !2225)
!2254 = !DILocation(line: 877, column: 5, scope: !2252)
!2255 = !DILocation(line: 879, column: 7, scope: !2237)
!2256 = !DILocation(line: 879, column: 14, scope: !2237)
!2257 = !DILocation(line: 879, column: 7, scope: !2225)
!2258 = !DILocation(line: 881, column: 31, scope: !2236)
!2259 = !DILocation(line: 883, column: 67, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2236, file: !127, line: 883, column: 11)
!2261 = !DILocation(line: 883, column: 11, scope: !2236)
!2262 = !DILocation(line: 884, column: 9, scope: !2260)
!2263 = !DILocation(line: 886, column: 32, scope: !2236)
!2264 = !DILocation(line: 886, column: 61, scope: !2236)
!2265 = !DILocation(line: 886, column: 58, scope: !2236)
!2266 = !DILocation(line: 886, column: 66, scope: !2236)
!2267 = !DILocation(line: 886, column: 22, scope: !2236)
!2268 = !DILocation(line: 886, column: 15, scope: !2236)
!2269 = !DILocation(line: 887, column: 11, scope: !2236)
!2270 = !DILocation(line: 888, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2236, file: !127, line: 887, column: 11)
!2272 = !{i64 0, i64 8, !2172, i64 8, i64 8, !821}
!2273 = !DILocation(line: 888, column: 9, scope: !2271)
!2274 = !DILocation(line: 889, column: 20, scope: !2236)
!2275 = !DILocation(line: 889, column: 18, scope: !2236)
!2276 = !DILocation(line: 889, column: 7, scope: !2236)
!2277 = !DILocation(line: 889, column: 38, scope: !2236)
!2278 = !DILocation(line: 889, column: 31, scope: !2236)
!2279 = !DILocation(line: 889, column: 48, scope: !2236)
!2280 = !DILocation(line: 890, column: 14, scope: !2236)
!2281 = !DILocation(line: 891, column: 5, scope: !2236)
!2282 = !DILocation(line: 894, column: 19, scope: !2239)
!2283 = !DILocation(line: 894, column: 25, scope: !2239)
!2284 = !DILocation(line: 894, column: 12, scope: !2239)
!2285 = !DILocation(line: 895, column: 23, scope: !2239)
!2286 = !DILocation(line: 895, column: 11, scope: !2239)
!2287 = !DILocation(line: 897, column: 26, scope: !2239)
!2288 = !DILocation(line: 897, column: 32, scope: !2239)
!2289 = !DILocation(line: 897, column: 9, scope: !2239)
!2290 = !DILocation(line: 899, column: 55, scope: !2239)
!2291 = !DILocation(line: 900, column: 46, scope: !2239)
!2292 = !DILocation(line: 901, column: 55, scope: !2239)
!2293 = !DILocation(line: 902, column: 55, scope: !2239)
!2294 = !DILocation(line: 898, column: 20, scope: !2239)
!2295 = !DILocation(line: 898, column: 12, scope: !2239)
!2296 = !DILocation(line: 904, column: 14, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2239, file: !127, line: 904, column: 9)
!2298 = !DILocation(line: 904, column: 9, scope: !2239)
!2299 = !DILocation(line: 906, column: 35, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !127, line: 905, column: 7)
!2301 = !DILocation(line: 906, column: 20, scope: !2300)
!2302 = !DILocation(line: 907, column: 17, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !127, line: 907, column: 13)
!2304 = !DILocation(line: 907, column: 13, scope: !2300)
!2305 = !DILocation(line: 908, column: 11, scope: !2303)
!2306 = !DILocation(line: 220, column: 20, scope: !2127, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 909, column: 27, scope: !2300)
!2308 = !DILocation(line: 222, column: 10, scope: !2127, inlinedAt: !2307)
!2309 = !DILocation(line: 909, column: 19, scope: !2300)
!2310 = !DILocation(line: 910, column: 69, scope: !2300)
!2311 = !DILocation(line: 912, column: 44, scope: !2300)
!2312 = !DILocation(line: 913, column: 44, scope: !2300)
!2313 = !DILocation(line: 910, column: 9, scope: !2300)
!2314 = !DILocation(line: 914, column: 7, scope: !2300)
!2315 = !DILocation(line: 916, column: 11, scope: !2239)
!2316 = !DILocation(line: 917, column: 5, scope: !2239)
!2317 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !127, file: !127, line: 928, type: !2318, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!12, !45, !22, !121}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !127, line: 928, type: !45)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !127, line: 928, type: !22)
!2323 = !DILocalVariable(name: "argsize", arg: 3, scope: !2317, file: !127, line: 928, type: !121)
!2324 = !DILocation(line: 928, column: 21, scope: !2317)
!2325 = !DILocation(line: 928, column: 36, scope: !2317)
!2326 = !DILocation(line: 928, column: 48, scope: !2317)
!2327 = !DILocation(line: 930, column: 10, scope: !2317)
!2328 = !DILocation(line: 930, column: 3, scope: !2317)
!2329 = distinct !DISubprogram(name: "quotearg", scope: !127, file: !127, line: 934, type: !2330, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!12, !22}
!2332 = !{!2333}
!2333 = !DILocalVariable(name: "arg", arg: 1, scope: !2329, file: !127, line: 934, type: !22)
!2334 = !DILocation(line: 934, column: 23, scope: !2329)
!2335 = !DILocation(line: 922, column: 17, scope: !2215, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 936, column: 10, scope: !2329)
!2337 = !DILocation(line: 922, column: 32, scope: !2215, inlinedAt: !2336)
!2338 = !DILocation(line: 924, column: 10, scope: !2215, inlinedAt: !2336)
!2339 = !DILocation(line: 936, column: 3, scope: !2329)
!2340 = distinct !DISubprogram(name: "quotearg_mem", scope: !127, file: !127, line: 940, type: !2341, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!12, !22, !121}
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "arg", arg: 1, scope: !2340, file: !127, line: 940, type: !22)
!2345 = !DILocalVariable(name: "argsize", arg: 2, scope: !2340, file: !127, line: 940, type: !121)
!2346 = !DILocation(line: 940, column: 27, scope: !2340)
!2347 = !DILocation(line: 940, column: 39, scope: !2340)
!2348 = !DILocation(line: 928, column: 21, scope: !2317, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 942, column: 10, scope: !2340)
!2350 = !DILocation(line: 928, column: 36, scope: !2317, inlinedAt: !2349)
!2351 = !DILocation(line: 928, column: 48, scope: !2317, inlinedAt: !2349)
!2352 = !DILocation(line: 930, column: 10, scope: !2317, inlinedAt: !2349)
!2353 = !DILocation(line: 942, column: 3, scope: !2340)
!2354 = distinct !DISubprogram(name: "quotearg_n_style", scope: !127, file: !127, line: 946, type: !2355, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!12, !45, !85, !22}
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "n", arg: 1, scope: !2354, file: !127, line: 946, type: !45)
!2359 = !DILocalVariable(name: "s", arg: 2, scope: !2354, file: !127, line: 946, type: !85)
!2360 = !DILocalVariable(name: "arg", arg: 3, scope: !2354, file: !127, line: 946, type: !22)
!2361 = !DILocalVariable(name: "o", scope: !2354, file: !127, line: 948, type: !1210)
!2362 = !DILocalVariable(name: "o", scope: !2363, file: !127, line: 187, type: !134)
!2363 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !127, file: !127, line: 185, type: !2364, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!134, !85}
!2366 = !{!2367, !2362}
!2367 = !DILocalVariable(name: "style", arg: 1, scope: !2363, file: !127, line: 185, type: !85)
!2368 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2369 = !DILocation(line: 187, column: 26, scope: !2363, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 948, column: 36, scope: !2354)
!2371 = !DILocation(line: 946, column: 23, scope: !2354)
!2372 = !DILocation(line: 946, column: 45, scope: !2354)
!2373 = !DILocation(line: 946, column: 60, scope: !2354)
!2374 = !DILocation(line: 948, column: 3, scope: !2354)
!2375 = !DILocation(line: 948, column: 32, scope: !2354)
!2376 = !DILocation(line: 185, column: 48, scope: !2363, inlinedAt: !2370)
!2377 = !DILocation(line: 187, column: 3, scope: !2363, inlinedAt: !2370)
!2378 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2379 = !DILocation(line: 188, column: 13, scope: !2380, inlinedAt: !2370)
!2380 = distinct !DILexicalBlock(scope: !2363, file: !127, line: 188, column: 7)
!2381 = !DILocation(line: 188, column: 7, scope: !2363, inlinedAt: !2370)
!2382 = !DILocation(line: 189, column: 5, scope: !2380, inlinedAt: !2370)
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"quoting_options_from_style: argument 0"}
!2385 = distinct !{!2385, !"quoting_options_from_style"}
!2386 = !DILocation(line: 191, column: 10, scope: !2363, inlinedAt: !2370)
!2387 = !DILocation(line: 192, column: 1, scope: !2363, inlinedAt: !2370)
!2388 = !DILocation(line: 949, column: 10, scope: !2354)
!2389 = !DILocation(line: 950, column: 1, scope: !2354)
!2390 = !DILocation(line: 949, column: 3, scope: !2354)
!2391 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !127, file: !127, line: 953, type: !2392, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!12, !45, !85, !22, !121}
!2394 = !{!2395, !2396, !2397, !2398, !2399}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !127, line: 953, type: !45)
!2396 = !DILocalVariable(name: "s", arg: 2, scope: !2391, file: !127, line: 953, type: !85)
!2397 = !DILocalVariable(name: "arg", arg: 3, scope: !2391, file: !127, line: 954, type: !22)
!2398 = !DILocalVariable(name: "argsize", arg: 4, scope: !2391, file: !127, line: 954, type: !121)
!2399 = !DILocalVariable(name: "o", scope: !2391, file: !127, line: 956, type: !1210)
!2400 = !DILocation(line: 187, column: 26, scope: !2363, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 956, column: 36, scope: !2391)
!2402 = !DILocation(line: 953, column: 27, scope: !2391)
!2403 = !DILocation(line: 953, column: 49, scope: !2391)
!2404 = !DILocation(line: 954, column: 35, scope: !2391)
!2405 = !DILocation(line: 954, column: 47, scope: !2391)
!2406 = !DILocation(line: 956, column: 3, scope: !2391)
!2407 = !DILocation(line: 956, column: 32, scope: !2391)
!2408 = !DILocation(line: 185, column: 48, scope: !2363, inlinedAt: !2401)
!2409 = !DILocation(line: 187, column: 3, scope: !2363, inlinedAt: !2401)
!2410 = !DILocation(line: 188, column: 13, scope: !2380, inlinedAt: !2401)
!2411 = !DILocation(line: 188, column: 7, scope: !2363, inlinedAt: !2401)
!2412 = !DILocation(line: 189, column: 5, scope: !2380, inlinedAt: !2401)
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"quoting_options_from_style: argument 0"}
!2415 = distinct !{!2415, !"quoting_options_from_style"}
!2416 = !DILocation(line: 191, column: 10, scope: !2363, inlinedAt: !2401)
!2417 = !DILocation(line: 192, column: 1, scope: !2363, inlinedAt: !2401)
!2418 = !DILocation(line: 957, column: 10, scope: !2391)
!2419 = !DILocation(line: 958, column: 1, scope: !2391)
!2420 = !DILocation(line: 957, column: 3, scope: !2391)
!2421 = distinct !DISubprogram(name: "quotearg_style", scope: !127, file: !127, line: 961, type: !2422, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!12, !85, !22}
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "s", arg: 1, scope: !2421, file: !127, line: 961, type: !85)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !127, line: 961, type: !22)
!2427 = !DILocation(line: 187, column: 26, scope: !2363, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 948, column: 36, scope: !2354, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 963, column: 10, scope: !2421)
!2430 = !DILocation(line: 961, column: 36, scope: !2421)
!2431 = !DILocation(line: 961, column: 51, scope: !2421)
!2432 = !DILocation(line: 946, column: 23, scope: !2354, inlinedAt: !2429)
!2433 = !DILocation(line: 946, column: 45, scope: !2354, inlinedAt: !2429)
!2434 = !DILocation(line: 946, column: 60, scope: !2354, inlinedAt: !2429)
!2435 = !DILocation(line: 948, column: 3, scope: !2354, inlinedAt: !2429)
!2436 = !DILocation(line: 948, column: 32, scope: !2354, inlinedAt: !2429)
!2437 = !DILocation(line: 185, column: 48, scope: !2363, inlinedAt: !2428)
!2438 = !DILocation(line: 187, column: 3, scope: !2363, inlinedAt: !2428)
!2439 = !DILocation(line: 188, column: 13, scope: !2380, inlinedAt: !2428)
!2440 = !DILocation(line: 188, column: 7, scope: !2363, inlinedAt: !2428)
!2441 = !DILocation(line: 189, column: 5, scope: !2380, inlinedAt: !2428)
!2442 = !{!2443}
!2443 = distinct !{!2443, !2444, !"quoting_options_from_style: argument 0"}
!2444 = distinct !{!2444, !"quoting_options_from_style"}
!2445 = !DILocation(line: 191, column: 10, scope: !2363, inlinedAt: !2428)
!2446 = !DILocation(line: 192, column: 1, scope: !2363, inlinedAt: !2428)
!2447 = !DILocation(line: 949, column: 10, scope: !2354, inlinedAt: !2429)
!2448 = !DILocation(line: 950, column: 1, scope: !2354, inlinedAt: !2429)
!2449 = !DILocation(line: 963, column: 3, scope: !2421)
!2450 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !127, file: !127, line: 967, type: !2451, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!12, !85, !22, !121}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "s", arg: 1, scope: !2450, file: !127, line: 967, type: !85)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !127, line: 967, type: !22)
!2456 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !127, line: 967, type: !121)
!2457 = !DILocation(line: 187, column: 26, scope: !2363, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 956, column: 36, scope: !2391, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 969, column: 10, scope: !2450)
!2460 = !DILocation(line: 967, column: 40, scope: !2450)
!2461 = !DILocation(line: 967, column: 55, scope: !2450)
!2462 = !DILocation(line: 967, column: 67, scope: !2450)
!2463 = !DILocation(line: 953, column: 27, scope: !2391, inlinedAt: !2459)
!2464 = !DILocation(line: 953, column: 49, scope: !2391, inlinedAt: !2459)
!2465 = !DILocation(line: 954, column: 35, scope: !2391, inlinedAt: !2459)
!2466 = !DILocation(line: 954, column: 47, scope: !2391, inlinedAt: !2459)
!2467 = !DILocation(line: 956, column: 3, scope: !2391, inlinedAt: !2459)
!2468 = !DILocation(line: 956, column: 32, scope: !2391, inlinedAt: !2459)
!2469 = !DILocation(line: 185, column: 48, scope: !2363, inlinedAt: !2458)
!2470 = !DILocation(line: 187, column: 3, scope: !2363, inlinedAt: !2458)
!2471 = !DILocation(line: 188, column: 13, scope: !2380, inlinedAt: !2458)
!2472 = !DILocation(line: 188, column: 7, scope: !2363, inlinedAt: !2458)
!2473 = !DILocation(line: 189, column: 5, scope: !2380, inlinedAt: !2458)
!2474 = !{!2475}
!2475 = distinct !{!2475, !2476, !"quoting_options_from_style: argument 0"}
!2476 = distinct !{!2476, !"quoting_options_from_style"}
!2477 = !DILocation(line: 191, column: 10, scope: !2363, inlinedAt: !2458)
!2478 = !DILocation(line: 192, column: 1, scope: !2363, inlinedAt: !2458)
!2479 = !DILocation(line: 957, column: 10, scope: !2391, inlinedAt: !2459)
!2480 = !DILocation(line: 958, column: 1, scope: !2391, inlinedAt: !2459)
!2481 = !DILocation(line: 969, column: 3, scope: !2450)
!2482 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !127, file: !127, line: 973, type: !2483, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!12, !22, !121, !13}
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "arg", arg: 1, scope: !2482, file: !127, line: 973, type: !22)
!2487 = !DILocalVariable(name: "argsize", arg: 2, scope: !2482, file: !127, line: 973, type: !121)
!2488 = !DILocalVariable(name: "ch", arg: 3, scope: !2482, file: !127, line: 973, type: !13)
!2489 = !DILocalVariable(name: "options", scope: !2482, file: !127, line: 975, type: !134)
!2490 = !DILocation(line: 973, column: 32, scope: !2482)
!2491 = !DILocation(line: 973, column: 44, scope: !2482)
!2492 = !DILocation(line: 973, column: 58, scope: !2482)
!2493 = !DILocation(line: 975, column: 3, scope: !2482)
!2494 = !DILocation(line: 976, column: 13, scope: !2482)
!2495 = !{i64 0, i64 4, !990, i64 4, i64 4, !885, i64 8, i64 32, !990, i64 40, i64 8, !821, i64 48, i64 8, !821}
!2496 = !DILocation(line: 975, column: 26, scope: !2482)
!2497 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 977, column: 3, scope: !2482)
!2499 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2498)
!2500 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2498)
!2501 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2498)
!2502 = !DILocation(line: 148, column: 62, scope: !1231, inlinedAt: !2498)
!2503 = !DILocation(line: 148, column: 57, scope: !1231, inlinedAt: !2498)
!2504 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2498)
!2505 = !DILocation(line: 149, column: 18, scope: !1231, inlinedAt: !2498)
!2506 = !DILocation(line: 149, column: 15, scope: !1231, inlinedAt: !2498)
!2507 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2498)
!2508 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2498)
!2509 = !DILocation(line: 150, column: 15, scope: !1231, inlinedAt: !2498)
!2510 = !DILocation(line: 150, column: 25, scope: !1231, inlinedAt: !2498)
!2511 = !DILocation(line: 150, column: 7, scope: !1231, inlinedAt: !2498)
!2512 = !DILocation(line: 151, column: 18, scope: !1231, inlinedAt: !2498)
!2513 = !DILocation(line: 151, column: 23, scope: !1231, inlinedAt: !2498)
!2514 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2498)
!2515 = !DILocation(line: 978, column: 10, scope: !2482)
!2516 = !DILocation(line: 979, column: 1, scope: !2482)
!2517 = !DILocation(line: 978, column: 3, scope: !2482)
!2518 = distinct !DISubprogram(name: "quotearg_char", scope: !127, file: !127, line: 982, type: !2519, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!12, !22, !13}
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2518, file: !127, line: 982, type: !22)
!2523 = !DILocalVariable(name: "ch", arg: 2, scope: !2518, file: !127, line: 982, type: !13)
!2524 = !DILocation(line: 982, column: 28, scope: !2518)
!2525 = !DILocation(line: 982, column: 38, scope: !2518)
!2526 = !DILocation(line: 973, column: 32, scope: !2482, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 984, column: 10, scope: !2518)
!2528 = !DILocation(line: 973, column: 44, scope: !2482, inlinedAt: !2527)
!2529 = !DILocation(line: 973, column: 58, scope: !2482, inlinedAt: !2527)
!2530 = !DILocation(line: 975, column: 3, scope: !2482, inlinedAt: !2527)
!2531 = !DILocation(line: 976, column: 13, scope: !2482, inlinedAt: !2527)
!2532 = !DILocation(line: 975, column: 26, scope: !2482, inlinedAt: !2527)
!2533 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 977, column: 3, scope: !2482, inlinedAt: !2527)
!2535 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2534)
!2536 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2534)
!2537 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2534)
!2538 = !DILocation(line: 148, column: 62, scope: !1231, inlinedAt: !2534)
!2539 = !DILocation(line: 148, column: 57, scope: !1231, inlinedAt: !2534)
!2540 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2534)
!2541 = !DILocation(line: 149, column: 18, scope: !1231, inlinedAt: !2534)
!2542 = !DILocation(line: 149, column: 15, scope: !1231, inlinedAt: !2534)
!2543 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2534)
!2544 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2534)
!2545 = !DILocation(line: 150, column: 15, scope: !1231, inlinedAt: !2534)
!2546 = !DILocation(line: 150, column: 25, scope: !1231, inlinedAt: !2534)
!2547 = !DILocation(line: 150, column: 7, scope: !1231, inlinedAt: !2534)
!2548 = !DILocation(line: 151, column: 18, scope: !1231, inlinedAt: !2534)
!2549 = !DILocation(line: 151, column: 23, scope: !1231, inlinedAt: !2534)
!2550 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2534)
!2551 = !DILocation(line: 978, column: 10, scope: !2482, inlinedAt: !2527)
!2552 = !DILocation(line: 979, column: 1, scope: !2482, inlinedAt: !2527)
!2553 = !DILocation(line: 984, column: 3, scope: !2518)
!2554 = distinct !DISubprogram(name: "quotearg_colon", scope: !127, file: !127, line: 988, type: !2330, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2555)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !127, line: 988, type: !22)
!2557 = !DILocation(line: 988, column: 29, scope: !2554)
!2558 = !DILocation(line: 982, column: 28, scope: !2518, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 990, column: 10, scope: !2554)
!2560 = !DILocation(line: 982, column: 38, scope: !2518, inlinedAt: !2559)
!2561 = !DILocation(line: 973, column: 32, scope: !2482, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 984, column: 10, scope: !2518, inlinedAt: !2559)
!2563 = !DILocation(line: 973, column: 44, scope: !2482, inlinedAt: !2562)
!2564 = !DILocation(line: 973, column: 58, scope: !2482, inlinedAt: !2562)
!2565 = !DILocation(line: 975, column: 3, scope: !2482, inlinedAt: !2562)
!2566 = !DILocation(line: 976, column: 13, scope: !2482, inlinedAt: !2562)
!2567 = !DILocation(line: 975, column: 26, scope: !2482, inlinedAt: !2562)
!2568 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 977, column: 3, scope: !2482, inlinedAt: !2562)
!2570 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2569)
!2571 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2569)
!2572 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2569)
!2573 = !DILocation(line: 148, column: 57, scope: !1231, inlinedAt: !2569)
!2574 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2569)
!2575 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2569)
!2576 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2569)
!2577 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2569)
!2578 = !DILocation(line: 978, column: 10, scope: !2482, inlinedAt: !2562)
!2579 = !DILocation(line: 979, column: 1, scope: !2482, inlinedAt: !2562)
!2580 = !DILocation(line: 990, column: 3, scope: !2554)
!2581 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !127, file: !127, line: 994, type: !2341, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2582)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !127, line: 994, type: !22)
!2584 = !DILocalVariable(name: "argsize", arg: 2, scope: !2581, file: !127, line: 994, type: !121)
!2585 = !DILocation(line: 994, column: 33, scope: !2581)
!2586 = !DILocation(line: 994, column: 45, scope: !2581)
!2587 = !DILocation(line: 973, column: 32, scope: !2482, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 996, column: 10, scope: !2581)
!2589 = !DILocation(line: 973, column: 44, scope: !2482, inlinedAt: !2588)
!2590 = !DILocation(line: 973, column: 58, scope: !2482, inlinedAt: !2588)
!2591 = !DILocation(line: 975, column: 3, scope: !2482, inlinedAt: !2588)
!2592 = !DILocation(line: 976, column: 13, scope: !2482, inlinedAt: !2588)
!2593 = !DILocation(line: 975, column: 26, scope: !2482, inlinedAt: !2588)
!2594 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 977, column: 3, scope: !2482, inlinedAt: !2588)
!2596 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2595)
!2597 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2595)
!2598 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2595)
!2599 = !DILocation(line: 148, column: 57, scope: !1231, inlinedAt: !2595)
!2600 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2595)
!2601 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2595)
!2602 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2595)
!2603 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2595)
!2604 = !DILocation(line: 978, column: 10, scope: !2482, inlinedAt: !2588)
!2605 = !DILocation(line: 979, column: 1, scope: !2482, inlinedAt: !2588)
!2606 = !DILocation(line: 996, column: 3, scope: !2581)
!2607 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !127, file: !127, line: 1000, type: !2355, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2608)
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DILocalVariable(name: "n", arg: 1, scope: !2607, file: !127, line: 1000, type: !45)
!2610 = !DILocalVariable(name: "s", arg: 2, scope: !2607, file: !127, line: 1000, type: !85)
!2611 = !DILocalVariable(name: "arg", arg: 3, scope: !2607, file: !127, line: 1000, type: !22)
!2612 = !DILocalVariable(name: "options", scope: !2607, file: !127, line: 1002, type: !134)
!2613 = !DILocation(line: 187, column: 26, scope: !2363, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1003, column: 13, scope: !2607)
!2615 = !DILocation(line: 1000, column: 29, scope: !2607)
!2616 = !DILocation(line: 1000, column: 51, scope: !2607)
!2617 = !DILocation(line: 1000, column: 66, scope: !2607)
!2618 = !DILocation(line: 1002, column: 3, scope: !2607)
!2619 = !DILocation(line: 185, column: 48, scope: !2363, inlinedAt: !2614)
!2620 = !DILocation(line: 187, column: 3, scope: !2363, inlinedAt: !2614)
!2621 = !DILocation(line: 188, column: 13, scope: !2380, inlinedAt: !2614)
!2622 = !DILocation(line: 188, column: 7, scope: !2363, inlinedAt: !2614)
!2623 = !DILocation(line: 189, column: 5, scope: !2380, inlinedAt: !2614)
!2624 = !{!2625}
!2625 = distinct !{!2625, !2626, !"quoting_options_from_style: argument 0"}
!2626 = distinct !{!2626, !"quoting_options_from_style"}
!2627 = !DILocation(line: 191, column: 10, scope: !2363, inlinedAt: !2614)
!2628 = !DILocation(line: 192, column: 1, scope: !2363, inlinedAt: !2614)
!2629 = !DILocation(line: 1003, column: 13, scope: !2607)
!2630 = !DILocation(line: 1002, column: 26, scope: !2607)
!2631 = !DILocation(line: 144, column: 43, scope: !1231, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1004, column: 3, scope: !2607)
!2633 = !DILocation(line: 144, column: 51, scope: !1231, inlinedAt: !2632)
!2634 = !DILocation(line: 144, column: 58, scope: !1231, inlinedAt: !2632)
!2635 = !DILocation(line: 146, column: 17, scope: !1231, inlinedAt: !2632)
!2636 = !DILocation(line: 148, column: 57, scope: !1231, inlinedAt: !2632)
!2637 = !DILocation(line: 147, column: 17, scope: !1231, inlinedAt: !2632)
!2638 = !DILocation(line: 149, column: 7, scope: !1231, inlinedAt: !2632)
!2639 = !DILocation(line: 150, column: 12, scope: !1231, inlinedAt: !2632)
!2640 = !DILocation(line: 151, column: 6, scope: !1231, inlinedAt: !2632)
!2641 = !DILocation(line: 1005, column: 10, scope: !2607)
!2642 = !DILocation(line: 1006, column: 1, scope: !2607)
!2643 = !DILocation(line: 1005, column: 3, scope: !2607)
!2644 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !127, file: !127, line: 1009, type: !2645, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!12, !45, !22, !22, !22}
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !127, line: 1009, type: !45)
!2649 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2644, file: !127, line: 1009, type: !22)
!2650 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2644, file: !127, line: 1010, type: !22)
!2651 = !DILocalVariable(name: "arg", arg: 4, scope: !2644, file: !127, line: 1010, type: !22)
!2652 = !DILocation(line: 1009, column: 24, scope: !2644)
!2653 = !DILocation(line: 1009, column: 39, scope: !2644)
!2654 = !DILocation(line: 1010, column: 32, scope: !2644)
!2655 = !DILocation(line: 1010, column: 57, scope: !2644)
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !127, line: 1017, type: !45)
!2657 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !127, file: !127, line: 1017, type: !2658, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!12, !45, !22, !22, !22, !121}
!2660 = !{!2656, !2661, !2662, !2663, !2664, !2665}
!2661 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2657, file: !127, line: 1017, type: !22)
!2662 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2657, file: !127, line: 1018, type: !22)
!2663 = !DILocalVariable(name: "arg", arg: 4, scope: !2657, file: !127, line: 1019, type: !22)
!2664 = !DILocalVariable(name: "argsize", arg: 5, scope: !2657, file: !127, line: 1019, type: !121)
!2665 = !DILocalVariable(name: "o", scope: !2657, file: !127, line: 1021, type: !134)
!2666 = !DILocation(line: 1017, column: 28, scope: !2657, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1012, column: 10, scope: !2644)
!2668 = !DILocation(line: 1017, column: 43, scope: !2657, inlinedAt: !2667)
!2669 = !DILocation(line: 1018, column: 36, scope: !2657, inlinedAt: !2667)
!2670 = !DILocation(line: 1019, column: 36, scope: !2657, inlinedAt: !2667)
!2671 = !DILocation(line: 1019, column: 48, scope: !2657, inlinedAt: !2667)
!2672 = !DILocation(line: 1021, column: 3, scope: !2657, inlinedAt: !2667)
!2673 = !DILocation(line: 1021, column: 30, scope: !2657, inlinedAt: !2667)
!2674 = !DILocation(line: 1021, column: 26, scope: !2657, inlinedAt: !2667)
!2675 = !DILocation(line: 171, column: 45, scope: !1280, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1022, column: 3, scope: !2657, inlinedAt: !2667)
!2677 = !DILocation(line: 172, column: 33, scope: !1280, inlinedAt: !2676)
!2678 = !DILocation(line: 172, column: 57, scope: !1280, inlinedAt: !2676)
!2679 = !DILocation(line: 176, column: 6, scope: !1280, inlinedAt: !2676)
!2680 = !DILocation(line: 176, column: 12, scope: !1280, inlinedAt: !2676)
!2681 = !DILocation(line: 177, column: 8, scope: !1296, inlinedAt: !2676)
!2682 = !DILocation(line: 177, column: 23, scope: !1296, inlinedAt: !2676)
!2683 = !DILocation(line: 177, column: 19, scope: !1296, inlinedAt: !2676)
!2684 = !DILocation(line: 178, column: 5, scope: !1296, inlinedAt: !2676)
!2685 = !DILocation(line: 179, column: 6, scope: !1280, inlinedAt: !2676)
!2686 = !DILocation(line: 179, column: 17, scope: !1280, inlinedAt: !2676)
!2687 = !DILocation(line: 180, column: 6, scope: !1280, inlinedAt: !2676)
!2688 = !DILocation(line: 180, column: 18, scope: !1280, inlinedAt: !2676)
!2689 = !DILocation(line: 1023, column: 10, scope: !2657, inlinedAt: !2667)
!2690 = !DILocation(line: 1024, column: 1, scope: !2657, inlinedAt: !2667)
!2691 = !DILocation(line: 1012, column: 3, scope: !2644)
!2692 = !DILocation(line: 1017, column: 28, scope: !2657)
!2693 = !DILocation(line: 1017, column: 43, scope: !2657)
!2694 = !DILocation(line: 1018, column: 36, scope: !2657)
!2695 = !DILocation(line: 1019, column: 36, scope: !2657)
!2696 = !DILocation(line: 1019, column: 48, scope: !2657)
!2697 = !DILocation(line: 1021, column: 3, scope: !2657)
!2698 = !DILocation(line: 1021, column: 30, scope: !2657)
!2699 = !DILocation(line: 1021, column: 26, scope: !2657)
!2700 = !DILocation(line: 171, column: 45, scope: !1280, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 1022, column: 3, scope: !2657)
!2702 = !DILocation(line: 172, column: 33, scope: !1280, inlinedAt: !2701)
!2703 = !DILocation(line: 172, column: 57, scope: !1280, inlinedAt: !2701)
!2704 = !DILocation(line: 176, column: 6, scope: !1280, inlinedAt: !2701)
!2705 = !DILocation(line: 176, column: 12, scope: !1280, inlinedAt: !2701)
!2706 = !DILocation(line: 177, column: 8, scope: !1296, inlinedAt: !2701)
!2707 = !DILocation(line: 177, column: 23, scope: !1296, inlinedAt: !2701)
!2708 = !DILocation(line: 177, column: 19, scope: !1296, inlinedAt: !2701)
!2709 = !DILocation(line: 178, column: 5, scope: !1296, inlinedAt: !2701)
!2710 = !DILocation(line: 179, column: 6, scope: !1280, inlinedAt: !2701)
!2711 = !DILocation(line: 179, column: 17, scope: !1280, inlinedAt: !2701)
!2712 = !DILocation(line: 180, column: 6, scope: !1280, inlinedAt: !2701)
!2713 = !DILocation(line: 180, column: 18, scope: !1280, inlinedAt: !2701)
!2714 = !DILocation(line: 1023, column: 10, scope: !2657)
!2715 = !DILocation(line: 1024, column: 1, scope: !2657)
!2716 = !DILocation(line: 1023, column: 3, scope: !2657)
!2717 = distinct !DISubprogram(name: "quotearg_custom", scope: !127, file: !127, line: 1027, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!12, !22, !22, !22}
!2720 = !{!2721, !2722, !2723}
!2721 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2717, file: !127, line: 1027, type: !22)
!2722 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2717, file: !127, line: 1027, type: !22)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !127, line: 1028, type: !22)
!2724 = !DILocation(line: 1027, column: 30, scope: !2717)
!2725 = !DILocation(line: 1027, column: 54, scope: !2717)
!2726 = !DILocation(line: 1028, column: 30, scope: !2717)
!2727 = !DILocation(line: 1009, column: 24, scope: !2644, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1030, column: 10, scope: !2717)
!2729 = !DILocation(line: 1009, column: 39, scope: !2644, inlinedAt: !2728)
!2730 = !DILocation(line: 1010, column: 32, scope: !2644, inlinedAt: !2728)
!2731 = !DILocation(line: 1010, column: 57, scope: !2644, inlinedAt: !2728)
!2732 = !DILocation(line: 1017, column: 28, scope: !2657, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1012, column: 10, scope: !2644, inlinedAt: !2728)
!2734 = !DILocation(line: 1017, column: 43, scope: !2657, inlinedAt: !2733)
!2735 = !DILocation(line: 1018, column: 36, scope: !2657, inlinedAt: !2733)
!2736 = !DILocation(line: 1019, column: 36, scope: !2657, inlinedAt: !2733)
!2737 = !DILocation(line: 1019, column: 48, scope: !2657, inlinedAt: !2733)
!2738 = !DILocation(line: 1021, column: 3, scope: !2657, inlinedAt: !2733)
!2739 = !DILocation(line: 1021, column: 30, scope: !2657, inlinedAt: !2733)
!2740 = !DILocation(line: 1021, column: 26, scope: !2657, inlinedAt: !2733)
!2741 = !DILocation(line: 171, column: 45, scope: !1280, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1022, column: 3, scope: !2657, inlinedAt: !2733)
!2743 = !DILocation(line: 172, column: 33, scope: !1280, inlinedAt: !2742)
!2744 = !DILocation(line: 172, column: 57, scope: !1280, inlinedAt: !2742)
!2745 = !DILocation(line: 176, column: 6, scope: !1280, inlinedAt: !2742)
!2746 = !DILocation(line: 176, column: 12, scope: !1280, inlinedAt: !2742)
!2747 = !DILocation(line: 177, column: 8, scope: !1296, inlinedAt: !2742)
!2748 = !DILocation(line: 177, column: 23, scope: !1296, inlinedAt: !2742)
!2749 = !DILocation(line: 177, column: 19, scope: !1296, inlinedAt: !2742)
!2750 = !DILocation(line: 178, column: 5, scope: !1296, inlinedAt: !2742)
!2751 = !DILocation(line: 179, column: 6, scope: !1280, inlinedAt: !2742)
!2752 = !DILocation(line: 179, column: 17, scope: !1280, inlinedAt: !2742)
!2753 = !DILocation(line: 180, column: 6, scope: !1280, inlinedAt: !2742)
!2754 = !DILocation(line: 180, column: 18, scope: !1280, inlinedAt: !2742)
!2755 = !DILocation(line: 1023, column: 10, scope: !2657, inlinedAt: !2733)
!2756 = !DILocation(line: 1024, column: 1, scope: !2657, inlinedAt: !2733)
!2757 = !DILocation(line: 1030, column: 3, scope: !2717)
!2758 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !127, file: !127, line: 1034, type: !2759, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!12, !22, !22, !22, !121}
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2758, file: !127, line: 1034, type: !22)
!2763 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2758, file: !127, line: 1034, type: !22)
!2764 = !DILocalVariable(name: "arg", arg: 3, scope: !2758, file: !127, line: 1035, type: !22)
!2765 = !DILocalVariable(name: "argsize", arg: 4, scope: !2758, file: !127, line: 1035, type: !121)
!2766 = !DILocation(line: 1034, column: 34, scope: !2758)
!2767 = !DILocation(line: 1034, column: 58, scope: !2758)
!2768 = !DILocation(line: 1035, column: 34, scope: !2758)
!2769 = !DILocation(line: 1035, column: 46, scope: !2758)
!2770 = !DILocation(line: 1017, column: 28, scope: !2657, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1037, column: 10, scope: !2758)
!2772 = !DILocation(line: 1017, column: 43, scope: !2657, inlinedAt: !2771)
!2773 = !DILocation(line: 1018, column: 36, scope: !2657, inlinedAt: !2771)
!2774 = !DILocation(line: 1019, column: 36, scope: !2657, inlinedAt: !2771)
!2775 = !DILocation(line: 1019, column: 48, scope: !2657, inlinedAt: !2771)
!2776 = !DILocation(line: 1021, column: 3, scope: !2657, inlinedAt: !2771)
!2777 = !DILocation(line: 1021, column: 30, scope: !2657, inlinedAt: !2771)
!2778 = !DILocation(line: 1021, column: 26, scope: !2657, inlinedAt: !2771)
!2779 = !DILocation(line: 171, column: 45, scope: !1280, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1022, column: 3, scope: !2657, inlinedAt: !2771)
!2781 = !DILocation(line: 172, column: 33, scope: !1280, inlinedAt: !2780)
!2782 = !DILocation(line: 172, column: 57, scope: !1280, inlinedAt: !2780)
!2783 = !DILocation(line: 176, column: 6, scope: !1280, inlinedAt: !2780)
!2784 = !DILocation(line: 176, column: 12, scope: !1280, inlinedAt: !2780)
!2785 = !DILocation(line: 177, column: 8, scope: !1296, inlinedAt: !2780)
!2786 = !DILocation(line: 177, column: 23, scope: !1296, inlinedAt: !2780)
!2787 = !DILocation(line: 177, column: 19, scope: !1296, inlinedAt: !2780)
!2788 = !DILocation(line: 178, column: 5, scope: !1296, inlinedAt: !2780)
!2789 = !DILocation(line: 179, column: 6, scope: !1280, inlinedAt: !2780)
!2790 = !DILocation(line: 179, column: 17, scope: !1280, inlinedAt: !2780)
!2791 = !DILocation(line: 180, column: 6, scope: !1280, inlinedAt: !2780)
!2792 = !DILocation(line: 180, column: 18, scope: !1280, inlinedAt: !2780)
!2793 = !DILocation(line: 1023, column: 10, scope: !2657, inlinedAt: !2771)
!2794 = !DILocation(line: 1024, column: 1, scope: !2657, inlinedAt: !2771)
!2795 = !DILocation(line: 1037, column: 3, scope: !2758)
!2796 = distinct !DISubprogram(name: "quote_n_mem", scope: !127, file: !127, line: 1052, type: !2797, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!22, !45, !22, !121}
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !127, line: 1052, type: !45)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !127, line: 1052, type: !22)
!2802 = !DILocalVariable(name: "argsize", arg: 3, scope: !2796, file: !127, line: 1052, type: !121)
!2803 = !DILocation(line: 1052, column: 18, scope: !2796)
!2804 = !DILocation(line: 1052, column: 33, scope: !2796)
!2805 = !DILocation(line: 1052, column: 45, scope: !2796)
!2806 = !DILocation(line: 1054, column: 10, scope: !2796)
!2807 = !DILocation(line: 1054, column: 3, scope: !2796)
!2808 = distinct !DISubprogram(name: "quote_mem", scope: !127, file: !127, line: 1058, type: !2809, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!22, !22, !121}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "arg", arg: 1, scope: !2808, file: !127, line: 1058, type: !22)
!2813 = !DILocalVariable(name: "argsize", arg: 2, scope: !2808, file: !127, line: 1058, type: !121)
!2814 = !DILocation(line: 1058, column: 24, scope: !2808)
!2815 = !DILocation(line: 1058, column: 36, scope: !2808)
!2816 = !DILocation(line: 1052, column: 18, scope: !2796, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1060, column: 10, scope: !2808)
!2818 = !DILocation(line: 1052, column: 33, scope: !2796, inlinedAt: !2817)
!2819 = !DILocation(line: 1052, column: 45, scope: !2796, inlinedAt: !2817)
!2820 = !DILocation(line: 1054, column: 10, scope: !2796, inlinedAt: !2817)
!2821 = !DILocation(line: 1060, column: 3, scope: !2808)
!2822 = distinct !DISubprogram(name: "quote_n", scope: !127, file: !127, line: 1064, type: !2823, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!22, !45, !22}
!2825 = !{!2826, !2827}
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !127, line: 1064, type: !45)
!2827 = !DILocalVariable(name: "arg", arg: 2, scope: !2822, file: !127, line: 1064, type: !22)
!2828 = !DILocation(line: 1064, column: 14, scope: !2822)
!2829 = !DILocation(line: 1064, column: 29, scope: !2822)
!2830 = !DILocation(line: 1052, column: 18, scope: !2796, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1066, column: 10, scope: !2822)
!2832 = !DILocation(line: 1052, column: 33, scope: !2796, inlinedAt: !2831)
!2833 = !DILocation(line: 1052, column: 45, scope: !2796, inlinedAt: !2831)
!2834 = !DILocation(line: 1054, column: 10, scope: !2796, inlinedAt: !2831)
!2835 = !DILocation(line: 1066, column: 3, scope: !2822)
!2836 = distinct !DISubprogram(name: "quote", scope: !127, file: !127, line: 1070, type: !2837, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!22, !22}
!2839 = !{!2840}
!2840 = !DILocalVariable(name: "arg", arg: 1, scope: !2836, file: !127, line: 1070, type: !22)
!2841 = !DILocation(line: 1070, column: 20, scope: !2836)
!2842 = !DILocation(line: 1064, column: 14, scope: !2822, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1072, column: 10, scope: !2836)
!2844 = !DILocation(line: 1064, column: 29, scope: !2822, inlinedAt: !2843)
!2845 = !DILocation(line: 1052, column: 18, scope: !2796, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1066, column: 10, scope: !2822, inlinedAt: !2843)
!2847 = !DILocation(line: 1052, column: 33, scope: !2796, inlinedAt: !2846)
!2848 = !DILocation(line: 1052, column: 45, scope: !2796, inlinedAt: !2846)
!2849 = !DILocation(line: 1054, column: 10, scope: !2796, inlinedAt: !2846)
!2850 = !DILocation(line: 1072, column: 3, scope: !2836)
!2851 = distinct !DISubprogram(name: "version_etc_arn", scope: !751, file: !751, line: 62, type: !2852, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !2909)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2854, !22, !22, !22, !2908, !121}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !2857)
!2856 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !2859)
!2858 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2880, !2881, !2882, !2883, !2886, !2887, !2889, !2893, !2896, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2857, file: !2858, line: 242, baseType: !45, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2857, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2857, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2857, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2857, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2857, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2857, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2857, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2857, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2857, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2857, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2857, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2857, file: !2858, line: 260, baseType: !2873, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !2875)
!2875 = !{!2876, !2877, !2879}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2874, file: !2858, line: 157, baseType: !2873, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2874, file: !2858, line: 158, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2874, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2857, file: !2858, line: 262, baseType: !2878, size: 64, offset: 832)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2857, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2857, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2857, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2885, line: 140, baseType: !1085)
!2885 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2857, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2857, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!2888 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2857, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !2891)
!2891 = !{!2892}
!2892 = !DISubrange(count: 1)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2857, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2858, line: 150, baseType: null)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2857, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2885, line: 141, baseType: !1085)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2857, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2857, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2857, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2857, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2857, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2857, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2857, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !2906)
!2906 = !{!2907}
!2907 = !DISubrange(count: 20)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915}
!2910 = !DILocalVariable(name: "stream", arg: 1, scope: !2851, file: !751, line: 62, type: !2854)
!2911 = !DILocalVariable(name: "command_name", arg: 2, scope: !2851, file: !751, line: 63, type: !22)
!2912 = !DILocalVariable(name: "package", arg: 3, scope: !2851, file: !751, line: 63, type: !22)
!2913 = !DILocalVariable(name: "version", arg: 4, scope: !2851, file: !751, line: 64, type: !22)
!2914 = !DILocalVariable(name: "authors", arg: 5, scope: !2851, file: !751, line: 65, type: !2908)
!2915 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2851, file: !751, line: 65, type: !121)
!2916 = !DILocation(line: 62, column: 24, scope: !2851)
!2917 = !DILocation(line: 63, column: 30, scope: !2851)
!2918 = !DILocation(line: 63, column: 56, scope: !2851)
!2919 = !DILocation(line: 64, column: 30, scope: !2851)
!2920 = !DILocation(line: 65, column: 39, scope: !2851)
!2921 = !DILocation(line: 65, column: 55, scope: !2851)
!2922 = !DILocation(line: 67, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2851, file: !751, line: 67, column: 7)
!2924 = !DILocation(line: 67, column: 7, scope: !2851)
!2925 = !DILocation(line: 68, column: 5, scope: !2923)
!2926 = !DILocation(line: 70, column: 5, scope: !2923)
!2927 = !DILocation(line: 84, column: 3, scope: !2851)
!2928 = !DILocation(line: 86, column: 3, scope: !2851)
!2929 = !DILocation(line: 95, column: 3, scope: !2851)
!2930 = !DILocation(line: 99, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2851, file: !751, line: 96, column: 5)
!2932 = !DILocation(line: 102, column: 7, scope: !2931)
!2933 = !DILocation(line: 103, column: 7, scope: !2931)
!2934 = !DILocation(line: 106, column: 7, scope: !2931)
!2935 = !DILocation(line: 107, column: 7, scope: !2931)
!2936 = !DILocation(line: 110, column: 7, scope: !2931)
!2937 = !DILocation(line: 112, column: 7, scope: !2931)
!2938 = !DILocation(line: 117, column: 7, scope: !2931)
!2939 = !DILocation(line: 119, column: 7, scope: !2931)
!2940 = !DILocation(line: 124, column: 7, scope: !2931)
!2941 = !DILocation(line: 126, column: 7, scope: !2931)
!2942 = !DILocation(line: 131, column: 7, scope: !2931)
!2943 = !DILocation(line: 134, column: 7, scope: !2931)
!2944 = !DILocation(line: 139, column: 7, scope: !2931)
!2945 = !DILocation(line: 142, column: 7, scope: !2931)
!2946 = !DILocation(line: 147, column: 7, scope: !2931)
!2947 = !DILocation(line: 151, column: 7, scope: !2931)
!2948 = !DILocation(line: 156, column: 7, scope: !2931)
!2949 = !DILocation(line: 160, column: 7, scope: !2931)
!2950 = !DILocation(line: 167, column: 7, scope: !2931)
!2951 = !DILocation(line: 171, column: 7, scope: !2931)
!2952 = !DILocation(line: 173, column: 1, scope: !2851)
!2953 = distinct !DISubprogram(name: "version_etc_ar", scope: !751, file: !751, line: 180, type: !2954, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2854, !22, !22, !22, !2908}
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962}
!2957 = !DILocalVariable(name: "stream", arg: 1, scope: !2953, file: !751, line: 180, type: !2854)
!2958 = !DILocalVariable(name: "command_name", arg: 2, scope: !2953, file: !751, line: 181, type: !22)
!2959 = !DILocalVariable(name: "package", arg: 3, scope: !2953, file: !751, line: 181, type: !22)
!2960 = !DILocalVariable(name: "version", arg: 4, scope: !2953, file: !751, line: 182, type: !22)
!2961 = !DILocalVariable(name: "authors", arg: 5, scope: !2953, file: !751, line: 182, type: !2908)
!2962 = !DILocalVariable(name: "n_authors", scope: !2953, file: !751, line: 184, type: !121)
!2963 = !DILocation(line: 180, column: 23, scope: !2953)
!2964 = !DILocation(line: 181, column: 29, scope: !2953)
!2965 = !DILocation(line: 181, column: 55, scope: !2953)
!2966 = !DILocation(line: 182, column: 29, scope: !2953)
!2967 = !DILocation(line: 182, column: 59, scope: !2953)
!2968 = !DILocation(line: 184, column: 10, scope: !2953)
!2969 = !DILocation(line: 186, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2953, file: !751, line: 186, column: 3)
!2971 = !DILocation(line: 186, column: 23, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !751, line: 186, column: 3)
!2973 = !DILocation(line: 186, column: 3, scope: !2970)
!2974 = !DILocation(line: 186, column: 52, scope: !2972)
!2975 = distinct !{!2975, !2973, !2976}
!2976 = !DILocation(line: 187, column: 5, scope: !2970)
!2977 = !DILocation(line: 188, column: 3, scope: !2953)
!2978 = !DILocation(line: 189, column: 1, scope: !2953)
!2979 = distinct !DISubprogram(name: "version_etc_va", scope: !751, file: !751, line: 196, type: !2980, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !2989)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2854, !22, !22, !22, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !748, line: 189, size: 192, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2983, file: !748, line: 189, baseType: !140, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2983, file: !748, line: 189, baseType: !140, size: 32, offset: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2983, file: !748, line: 189, baseType: !14, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2983, file: !748, line: 189, baseType: !14, size: 64, offset: 128)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2990 = !DILocalVariable(name: "stream", arg: 1, scope: !2979, file: !751, line: 196, type: !2854)
!2991 = !DILocalVariable(name: "command_name", arg: 2, scope: !2979, file: !751, line: 197, type: !22)
!2992 = !DILocalVariable(name: "package", arg: 3, scope: !2979, file: !751, line: 197, type: !22)
!2993 = !DILocalVariable(name: "version", arg: 4, scope: !2979, file: !751, line: 198, type: !22)
!2994 = !DILocalVariable(name: "authors", arg: 5, scope: !2979, file: !751, line: 198, type: !2982)
!2995 = !DILocalVariable(name: "n_authors", scope: !2979, file: !751, line: 200, type: !121)
!2996 = !DILocalVariable(name: "authtab", scope: !2979, file: !751, line: 201, type: !2997)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 640, elements: !130)
!2998 = !DILocation(line: 196, column: 23, scope: !2979)
!2999 = !DILocation(line: 197, column: 29, scope: !2979)
!3000 = !DILocation(line: 197, column: 55, scope: !2979)
!3001 = !DILocation(line: 198, column: 29, scope: !2979)
!3002 = !DILocation(line: 198, column: 46, scope: !2979)
!3003 = !DILocation(line: 201, column: 3, scope: !2979)
!3004 = !DILocation(line: 201, column: 15, scope: !2979)
!3005 = !DILocation(line: 200, column: 10, scope: !2979)
!3006 = !DILocation(line: 205, column: 35, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !751, line: 203, column: 3)
!3008 = distinct !DILexicalBlock(scope: !2979, file: !751, line: 203, column: 3)
!3009 = !DILocation(line: 205, column: 14, scope: !3007)
!3010 = !DILocation(line: 205, column: 33, scope: !3007)
!3011 = !DILocation(line: 205, column: 67, scope: !3007)
!3012 = !DILocation(line: 203, column: 3, scope: !3008)
!3013 = !DILocation(line: 208, column: 3, scope: !2979)
!3014 = !DILocation(line: 210, column: 1, scope: !2979)
!3015 = distinct !DISubprogram(name: "version_etc", scope: !751, file: !751, line: 227, type: !3016, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2854, !22, !22, !22, null}
!3018 = !{!3019, !3020, !3021, !3022, !3023}
!3019 = !DILocalVariable(name: "stream", arg: 1, scope: !3015, file: !751, line: 227, type: !2854)
!3020 = !DILocalVariable(name: "command_name", arg: 2, scope: !3015, file: !751, line: 228, type: !22)
!3021 = !DILocalVariable(name: "package", arg: 3, scope: !3015, file: !751, line: 228, type: !22)
!3022 = !DILocalVariable(name: "version", arg: 4, scope: !3015, file: !751, line: 229, type: !22)
!3023 = !DILocalVariable(name: "authors", scope: !3015, file: !751, line: 231, type: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3025, line: 46, baseType: !3026)
!3025 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3027, line: 48, baseType: !3028)
!3027 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !748, line: 231, baseType: !3029)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2983, size: 192, elements: !2891)
!3030 = !DILocation(line: 227, column: 20, scope: !3015)
!3031 = !DILocation(line: 228, column: 26, scope: !3015)
!3032 = !DILocation(line: 228, column: 52, scope: !3015)
!3033 = !DILocation(line: 229, column: 26, scope: !3015)
!3034 = !DILocation(line: 231, column: 3, scope: !3015)
!3035 = !DILocation(line: 231, column: 11, scope: !3015)
!3036 = !DILocation(line: 233, column: 3, scope: !3015)
!3037 = !DILocation(line: 234, column: 3, scope: !3015)
!3038 = !DILocation(line: 235, column: 3, scope: !3015)
!3039 = !DILocation(line: 236, column: 1, scope: !3015)
!3040 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !751, file: !751, line: 239, type: !921, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !55)
!3041 = !DILocation(line: 245, column: 3, scope: !3040)
!3042 = !DILocation(line: 251, column: 3, scope: !3040)
!3043 = !DILocation(line: 256, column: 3, scope: !3040)
!3044 = !DILocation(line: 258, column: 1, scope: !3040)
!3045 = distinct !DISubprogram(name: "xnmalloc", scope: !758, file: !758, line: 105, type: !3046, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!14, !121, !121}
!3048 = !{!3049, !3050}
!3049 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !758, line: 105, type: !121)
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3045, file: !758, line: 105, type: !121)
!3051 = !DILocation(line: 105, column: 18, scope: !3045)
!3052 = !DILocation(line: 105, column: 28, scope: !3045)
!3053 = !DILocation(line: 107, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3045, file: !758, line: 107, column: 7)
!3055 = !DILocation(line: 107, column: 7, scope: !3045)
!3056 = !DILocation(line: 108, column: 5, scope: !3054)
!3057 = !DILocation(line: 109, column: 21, scope: !3045)
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !3060, line: 39, type: !121)
!3059 = distinct !DISubprogram(name: "xmalloc", scope: !3060, file: !3060, line: 39, type: !3061, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3063)
!3060 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!14, !121}
!3063 = !{!3058, !3064}
!3064 = !DILocalVariable(name: "p", scope: !3059, file: !3060, line: 41, type: !14)
!3065 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 109, column: 10, scope: !3045)
!3067 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3066)
!3068 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3066)
!3069 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3066)
!3070 = distinct !DILexicalBlock(scope: !3059, file: !3060, line: 42, column: 7)
!3071 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3066)
!3072 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3066)
!3073 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3066)
!3074 = !DILocation(line: 109, column: 3, scope: !3045)
!3075 = !DILocation(line: 39, column: 17, scope: !3059)
!3076 = !DILocation(line: 41, column: 13, scope: !3059)
!3077 = !DILocation(line: 41, column: 9, scope: !3059)
!3078 = !DILocation(line: 42, column: 8, scope: !3070)
!3079 = !DILocation(line: 42, column: 15, scope: !3070)
!3080 = !DILocation(line: 42, column: 10, scope: !3070)
!3081 = !DILocation(line: 43, column: 5, scope: !3070)
!3082 = !DILocation(line: 44, column: 3, scope: !3059)
!3083 = distinct !DISubprogram(name: "xnrealloc", scope: !758, file: !758, line: 118, type: !3084, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!14, !14, !121, !121}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "p", arg: 1, scope: !3083, file: !758, line: 118, type: !14)
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3083, file: !758, line: 118, type: !121)
!3089 = !DILocalVariable(name: "s", arg: 3, scope: !3083, file: !758, line: 118, type: !121)
!3090 = !DILocation(line: 118, column: 18, scope: !3083)
!3091 = !DILocation(line: 118, column: 28, scope: !3083)
!3092 = !DILocation(line: 118, column: 38, scope: !3083)
!3093 = !DILocation(line: 120, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3083, file: !758, line: 120, column: 7)
!3095 = !DILocation(line: 120, column: 7, scope: !3083)
!3096 = !DILocation(line: 121, column: 5, scope: !3094)
!3097 = !DILocation(line: 122, column: 25, scope: !3083)
!3098 = !DILocalVariable(name: "p", arg: 1, scope: !3099, file: !3060, line: 51, type: !14)
!3099 = distinct !DISubprogram(name: "xrealloc", scope: !3060, file: !3060, line: 51, type: !3100, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!14, !14, !121}
!3102 = !{!3098, !3103}
!3103 = !DILocalVariable(name: "n", arg: 2, scope: !3099, file: !3060, line: 51, type: !121)
!3104 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 122, column: 10, scope: !3083)
!3106 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3105)
!3107 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3105)
!3108 = distinct !DILexicalBlock(scope: !3099, file: !3060, line: 53, column: 7)
!3109 = !DILocation(line: 53, column: 13, scope: !3108, inlinedAt: !3105)
!3110 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3105)
!3111 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3105)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !3060, line: 54, column: 5)
!3113 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3105)
!3114 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3105)
!3115 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3105)
!3116 = distinct !DILexicalBlock(scope: !3099, file: !3060, line: 62, column: 7)
!3117 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3105)
!3118 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3105)
!3119 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3105)
!3120 = !DILocation(line: 122, column: 3, scope: !3083)
!3121 = !DILocation(line: 51, column: 17, scope: !3099)
!3122 = !DILocation(line: 51, column: 27, scope: !3099)
!3123 = !DILocation(line: 53, column: 8, scope: !3108)
!3124 = !DILocation(line: 53, column: 13, scope: !3108)
!3125 = !DILocation(line: 53, column: 10, scope: !3108)
!3126 = !DILocation(line: 57, column: 7, scope: !3112)
!3127 = !DILocation(line: 58, column: 7, scope: !3112)
!3128 = !DILocation(line: 61, column: 7, scope: !3099)
!3129 = !DILocation(line: 62, column: 8, scope: !3116)
!3130 = !DILocation(line: 62, column: 13, scope: !3116)
!3131 = !DILocation(line: 62, column: 10, scope: !3116)
!3132 = !DILocation(line: 63, column: 5, scope: !3116)
!3133 = !DILocation(line: 65, column: 1, scope: !3099)
!3134 = !DILocation(line: 180, column: 19, scope: !759)
!3135 = !DILocation(line: 180, column: 30, scope: !759)
!3136 = !DILocation(line: 180, column: 41, scope: !759)
!3137 = !DILocation(line: 182, column: 14, scope: !759)
!3138 = !DILocation(line: 182, column: 10, scope: !759)
!3139 = !DILocation(line: 184, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !759, file: !758, line: 184, column: 7)
!3141 = !DILocation(line: 184, column: 7, scope: !759)
!3142 = !DILocation(line: 186, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !758, line: 186, column: 11)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !758, line: 185, column: 5)
!3145 = !DILocation(line: 186, column: 11, scope: !3144)
!3146 = !DILocation(line: 194, column: 30, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !758, line: 187, column: 9)
!3148 = !DILocation(line: 195, column: 16, scope: !3147)
!3149 = !DILocation(line: 195, column: 13, scope: !3147)
!3150 = !DILocation(line: 196, column: 9, scope: !3147)
!3151 = !DILocation(line: 204, column: 69, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !758, line: 204, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3140, file: !758, line: 199, column: 5)
!3154 = !DILocation(line: 205, column: 11, scope: !3152)
!3155 = !DILocation(line: 204, column: 11, scope: !3153)
!3156 = !DILocation(line: 206, column: 9, scope: !3152)
!3157 = !DILocation(line: 210, column: 7, scope: !759)
!3158 = !DILocation(line: 211, column: 25, scope: !759)
!3159 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 211, column: 10, scope: !759)
!3161 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3160)
!3162 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3160)
!3163 = !DILocation(line: 207, column: 14, scope: !3153)
!3164 = !DILocation(line: 207, column: 18, scope: !3153)
!3165 = !DILocation(line: 207, column: 9, scope: !3153)
!3166 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3160)
!3167 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3160)
!3168 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3160)
!3169 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3160)
!3170 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3160)
!3171 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3160)
!3172 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3160)
!3173 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3160)
!3174 = !DILocation(line: 211, column: 3, scope: !759)
!3175 = distinct !DISubprogram(name: "xcharalloc", scope: !758, file: !758, line: 220, type: !2128, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3176)
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !758, line: 220, type: !121)
!3178 = !DILocation(line: 220, column: 20, scope: !3175)
!3179 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 222, column: 10, scope: !3175)
!3181 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3180)
!3182 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3180)
!3183 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3180)
!3184 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3180)
!3185 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3180)
!3186 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3180)
!3187 = !DILocation(line: 222, column: 3, scope: !3175)
!3188 = distinct !DISubprogram(name: "x2realloc", scope: !3060, file: !3060, line: 74, type: !3189, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!14, !14, !762}
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "p", arg: 1, scope: !3188, file: !3060, line: 74, type: !14)
!3193 = !DILocalVariable(name: "pn", arg: 2, scope: !3188, file: !3060, line: 74, type: !762)
!3194 = !DILocation(line: 74, column: 18, scope: !3188)
!3195 = !DILocation(line: 74, column: 29, scope: !3188)
!3196 = !DILocation(line: 180, column: 19, scope: !759, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 76, column: 10, scope: !3188)
!3198 = !DILocation(line: 180, column: 30, scope: !759, inlinedAt: !3197)
!3199 = !DILocation(line: 180, column: 41, scope: !759, inlinedAt: !3197)
!3200 = !DILocation(line: 182, column: 14, scope: !759, inlinedAt: !3197)
!3201 = !DILocation(line: 182, column: 10, scope: !759, inlinedAt: !3197)
!3202 = !DILocation(line: 184, column: 9, scope: !3140, inlinedAt: !3197)
!3203 = !DILocation(line: 184, column: 7, scope: !759, inlinedAt: !3197)
!3204 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3197)
!3205 = !DILocation(line: 186, column: 11, scope: !3144, inlinedAt: !3197)
!3206 = !DILocation(line: 210, column: 7, scope: !759, inlinedAt: !3197)
!3207 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 211, column: 10, scope: !759, inlinedAt: !3197)
!3209 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3208)
!3210 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3208)
!3211 = !DILocation(line: 205, column: 11, scope: !3152, inlinedAt: !3197)
!3212 = !DILocation(line: 204, column: 11, scope: !3153, inlinedAt: !3197)
!3213 = !DILocation(line: 206, column: 9, scope: !3152, inlinedAt: !3197)
!3214 = !DILocation(line: 207, column: 14, scope: !3153, inlinedAt: !3197)
!3215 = !DILocation(line: 207, column: 18, scope: !3153, inlinedAt: !3197)
!3216 = !DILocation(line: 207, column: 9, scope: !3153, inlinedAt: !3197)
!3217 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3208)
!3218 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3208)
!3219 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3208)
!3220 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3208)
!3221 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3208)
!3222 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3208)
!3223 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3208)
!3224 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3208)
!3225 = !DILocation(line: 76, column: 3, scope: !3188)
!3226 = distinct !DISubprogram(name: "xzalloc", scope: !3060, file: !3060, line: 84, type: !3061, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "s", arg: 1, scope: !3226, file: !3060, line: 84, type: !121)
!3229 = !DILocation(line: 84, column: 17, scope: !3226)
!3230 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 86, column: 18, scope: !3226)
!3232 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3231)
!3233 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3231)
!3234 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3231)
!3235 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3231)
!3236 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3231)
!3237 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3231)
!3238 = !DILocation(line: 86, column: 10, scope: !3226)
!3239 = !DILocation(line: 86, column: 3, scope: !3226)
!3240 = distinct !DISubprogram(name: "xcalloc", scope: !3060, file: !3060, line: 93, type: !3046, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3241)
!3241 = !{!3242, !3243, !3244}
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !3060, line: 93, type: !121)
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3240, file: !3060, line: 93, type: !121)
!3244 = !DILocalVariable(name: "p", scope: !3240, file: !3060, line: 95, type: !14)
!3245 = !DILocation(line: 93, column: 17, scope: !3240)
!3246 = !DILocation(line: 93, column: 27, scope: !3240)
!3247 = !DILocation(line: 100, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3240, file: !3060, line: 100, column: 7)
!3249 = !DILocation(line: 101, column: 7, scope: !3248)
!3250 = !DILocation(line: 101, column: 18, scope: !3248)
!3251 = !DILocation(line: 95, column: 9, scope: !3240)
!3252 = !DILocation(line: 101, column: 16, scope: !3248)
!3253 = !DILocation(line: 100, column: 7, scope: !3240)
!3254 = !DILocation(line: 102, column: 5, scope: !3248)
!3255 = !DILocation(line: 103, column: 3, scope: !3240)
!3256 = distinct !DISubprogram(name: "xmemdup", scope: !3060, file: !3060, line: 111, type: !3257, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3261)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!14, !3259, !121}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "p", arg: 1, scope: !3256, file: !3060, line: 111, type: !3259)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3256, file: !3060, line: 111, type: !121)
!3264 = !DILocation(line: 111, column: 22, scope: !3256)
!3265 = !DILocation(line: 111, column: 32, scope: !3256)
!3266 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 113, column: 18, scope: !3256)
!3268 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3267)
!3269 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3267)
!3270 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3267)
!3271 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3267)
!3272 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3267)
!3273 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3267)
!3274 = !DILocation(line: 113, column: 10, scope: !3256)
!3275 = !DILocation(line: 113, column: 3, scope: !3256)
!3276 = distinct !DISubprogram(name: "xstrdup", scope: !3060, file: !3060, line: 119, type: !2330, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !3277)
!3277 = !{!3278}
!3278 = !DILocalVariable(name: "string", arg: 1, scope: !3276, file: !3060, line: 119, type: !22)
!3279 = !DILocation(line: 119, column: 22, scope: !3276)
!3280 = !DILocation(line: 121, column: 27, scope: !3276)
!3281 = !DILocation(line: 121, column: 43, scope: !3276)
!3282 = !DILocation(line: 111, column: 22, scope: !3256, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 121, column: 10, scope: !3276)
!3284 = !DILocation(line: 111, column: 32, scope: !3256, inlinedAt: !3283)
!3285 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 113, column: 18, scope: !3256, inlinedAt: !3283)
!3287 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3286)
!3288 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3286)
!3289 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3286)
!3290 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3286)
!3291 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3286)
!3292 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3286)
!3293 = !DILocation(line: 113, column: 10, scope: !3256, inlinedAt: !3283)
!3294 = !DILocation(line: 121, column: 3, scope: !3276)
!3295 = distinct !DISubprogram(name: "xalloc_die", scope: !3296, file: !3296, line: 32, type: !921, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !771, variables: !55)
!3296 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3297 = !DILocation(line: 34, column: 10, scope: !3295)
!3298 = !DILocation(line: 34, column: 33, scope: !3295)
!3299 = !DILocation(line: 34, column: 3, scope: !3295)
!3300 = !DILocation(line: 40, column: 3, scope: !3295)
!3301 = distinct !DISubprogram(name: "xnumtoumax", scope: !3302, file: !3302, line: 36, type: !3303, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !773, variables: !3308)
!3302 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!3305, !22, !45, !3305, !3305, !22, !22, !45}
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3306, line: 112, baseType: !3307)
!3306 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2885, line: 62, baseType: !123)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3318}
!3309 = !DILocalVariable(name: "n_str", arg: 1, scope: !3301, file: !3302, line: 36, type: !22)
!3310 = !DILocalVariable(name: "base", arg: 2, scope: !3301, file: !3302, line: 36, type: !45)
!3311 = !DILocalVariable(name: "min", arg: 3, scope: !3301, file: !3302, line: 36, type: !3305)
!3312 = !DILocalVariable(name: "max", arg: 4, scope: !3301, file: !3302, line: 36, type: !3305)
!3313 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3301, file: !3302, line: 37, type: !22)
!3314 = !DILocalVariable(name: "err", arg: 6, scope: !3301, file: !3302, line: 37, type: !22)
!3315 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3301, file: !3302, line: 37, type: !45)
!3316 = !DILocalVariable(name: "s_err", scope: !3301, file: !3302, line: 39, type: !3317)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !777, line: 39, baseType: !776)
!3318 = !DILocalVariable(name: "tnum", scope: !3301, file: !3302, line: 41, type: !3305)
!3319 = !DILocation(line: 36, column: 26, scope: !3301)
!3320 = !DILocation(line: 36, column: 37, scope: !3301)
!3321 = !DILocation(line: 36, column: 57, scope: !3301)
!3322 = !DILocation(line: 36, column: 76, scope: !3301)
!3323 = !DILocation(line: 37, column: 26, scope: !3301)
!3324 = !DILocation(line: 37, column: 48, scope: !3301)
!3325 = !DILocation(line: 37, column: 57, scope: !3301)
!3326 = !DILocation(line: 41, column: 3, scope: !3301)
!3327 = !DILocation(line: 41, column: 17, scope: !3301)
!3328 = !DILocation(line: 42, column: 11, scope: !3301)
!3329 = !DILocation(line: 39, column: 16, scope: !3301)
!3330 = !DILocation(line: 44, column: 7, scope: !3301)
!3331 = !DILocation(line: 69, column: 50, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3302, line: 67, column: 5)
!3333 = distinct !DILexicalBlock(scope: !3301, file: !3302, line: 66, column: 7)
!3334 = !DILocation(line: 46, column: 11, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !3302, line: 46, column: 11)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !3302, line: 45, column: 5)
!3337 = distinct !DILexicalBlock(scope: !3301, file: !3302, line: 44, column: 7)
!3338 = !DILocation(line: 46, column: 16, scope: !3335)
!3339 = !DILocation(line: 46, column: 29, scope: !3335)
!3340 = !DILocation(line: 46, column: 22, scope: !3335)
!3341 = !DILocation(line: 51, column: 20, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3302, line: 51, column: 15)
!3343 = distinct !DILexicalBlock(scope: !3335, file: !3302, line: 47, column: 9)
!3344 = !DILocation(line: 52, column: 13, scope: !3342)
!3345 = !DILocation(line: 51, column: 15, scope: !3343)
!3346 = !DILocation(line: 59, column: 9, scope: !3343)
!3347 = !DILocation(line: 62, column: 5, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3337, file: !3302, line: 61, column: 12)
!3349 = !DILocation(line: 62, column: 11, scope: !3348)
!3350 = !DILocation(line: 64, column: 5, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !3302, line: 63, column: 12)
!3352 = !DILocation(line: 64, column: 11, scope: !3351)
!3353 = !DILocation(line: 69, column: 14, scope: !3332)
!3354 = !DILocation(line: 69, column: 56, scope: !3332)
!3355 = !DILocation(line: 70, column: 29, scope: !3332)
!3356 = !DILocation(line: 69, column: 7, scope: !3332)
!3357 = !DILocation(line: 73, column: 10, scope: !3301)
!3358 = !DILocation(line: 71, column: 5, scope: !3332)
!3359 = !DILocation(line: 74, column: 1, scope: !3301)
!3360 = !DILocation(line: 73, column: 3, scope: !3301)
!3361 = distinct !DISubprogram(name: "xdectoumax", scope: !3302, file: !3302, line: 82, type: !3362, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !773, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!3305, !22, !3305, !3305, !22, !22, !45}
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370}
!3365 = !DILocalVariable(name: "n_str", arg: 1, scope: !3361, file: !3302, line: 82, type: !22)
!3366 = !DILocalVariable(name: "min", arg: 2, scope: !3361, file: !3302, line: 82, type: !3305)
!3367 = !DILocalVariable(name: "max", arg: 3, scope: !3361, file: !3302, line: 82, type: !3305)
!3368 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3361, file: !3302, line: 83, type: !22)
!3369 = !DILocalVariable(name: "err", arg: 5, scope: !3361, file: !3302, line: 83, type: !22)
!3370 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3361, file: !3302, line: 83, type: !45)
!3371 = !DILocation(line: 82, column: 26, scope: !3361)
!3372 = !DILocation(line: 82, column: 47, scope: !3361)
!3373 = !DILocation(line: 82, column: 66, scope: !3361)
!3374 = !DILocation(line: 83, column: 26, scope: !3361)
!3375 = !DILocation(line: 83, column: 48, scope: !3361)
!3376 = !DILocation(line: 83, column: 57, scope: !3361)
!3377 = !DILocation(line: 85, column: 10, scope: !3361)
!3378 = !DILocation(line: 85, column: 3, scope: !3361)
!3379 = distinct !DISubprogram(name: "xstrtoumax", scope: !3380, file: !3380, line: 88, type: !3381, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !784, variables: !3384)
!3380 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!3317, !22, !850, !45, !3383, !22}
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3397, !3398, !3401, !3402}
!3385 = !DILocalVariable(name: "s", arg: 1, scope: !3379, file: !3380, line: 88, type: !22)
!3386 = !DILocalVariable(name: "ptr", arg: 2, scope: !3379, file: !3380, line: 88, type: !850)
!3387 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3379, file: !3380, line: 88, type: !45)
!3388 = !DILocalVariable(name: "val", arg: 4, scope: !3379, file: !3380, line: 89, type: !3383)
!3389 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3379, file: !3380, line: 89, type: !22)
!3390 = !DILocalVariable(name: "t_ptr", scope: !3379, file: !3380, line: 91, type: !12)
!3391 = !DILocalVariable(name: "p", scope: !3379, file: !3380, line: 92, type: !850)
!3392 = !DILocalVariable(name: "tmp", scope: !3379, file: !3380, line: 93, type: !3305)
!3393 = !DILocalVariable(name: "err", scope: !3379, file: !3380, line: 94, type: !3317)
!3394 = !DILocalVariable(name: "q", scope: !3395, file: !3380, line: 104, type: !22)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3380, line: 103, column: 5)
!3396 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 102, column: 7)
!3397 = !DILocalVariable(name: "ch", scope: !3395, file: !3380, line: 105, type: !521)
!3398 = !DILocalVariable(name: "base", scope: !3399, file: !3380, line: 141, type: !45)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3380, line: 140, column: 5)
!3400 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 139, column: 7)
!3401 = !DILocalVariable(name: "suffixes", scope: !3399, file: !3380, line: 142, type: !45)
!3402 = !DILocalVariable(name: "overflow", scope: !3399, file: !3380, line: 143, type: !3317)
!3403 = !DILocation(line: 88, column: 24, scope: !3379)
!3404 = !DILocation(line: 88, column: 34, scope: !3379)
!3405 = !DILocation(line: 88, column: 43, scope: !3379)
!3406 = !DILocation(line: 89, column: 24, scope: !3379)
!3407 = !DILocation(line: 89, column: 41, scope: !3379)
!3408 = !DILocation(line: 91, column: 3, scope: !3379)
!3409 = !DILocation(line: 94, column: 16, scope: !3379)
!3410 = !DILocation(line: 96, column: 3, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !3380, line: 96, column: 3)
!3412 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 96, column: 3)
!3413 = !DILocation(line: 98, column: 8, scope: !3379)
!3414 = !DILocation(line: 92, column: 10, scope: !3379)
!3415 = !DILocation(line: 100, column: 3, scope: !3379)
!3416 = !DILocation(line: 100, column: 9, scope: !3379)
!3417 = !DILocation(line: 104, column: 19, scope: !3395)
!3418 = !DIExpression(DW_OP_deref)
!3419 = !DILocation(line: 105, column: 21, scope: !3395)
!3420 = !DILocation(line: 106, column: 14, scope: !3395)
!3421 = !DILocation(line: 106, column: 7, scope: !3395)
!3422 = !DILocation(line: 107, column: 15, scope: !3395)
!3423 = distinct !{!3423, !3421, !3424}
!3424 = !DILocation(line: 107, column: 17, scope: !3395)
!3425 = !DILocation(line: 108, column: 14, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3395, file: !3380, line: 108, column: 11)
!3427 = !DILocalVariable(name: "nptr", arg: 1, scope: !3428, file: !3429, line: 336, type: !3432)
!3428 = distinct !DISubprogram(name: "strtoumax", scope: !3429, file: !3429, line: 336, type: !3430, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !784, variables: !3434)
!3429 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!3305, !3432, !3433, !45}
!3432 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!3433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !850)
!3434 = !{!3427, !3435, !3436}
!3435 = !DILocalVariable(name: "endptr", arg: 2, scope: !3428, file: !3429, line: 336, type: !3433)
!3436 = !DILocalVariable(name: "base", arg: 3, scope: !3428, file: !3429, line: 336, type: !45)
!3437 = !DILocation(line: 336, column: 1, scope: !3428, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 112, column: 9, scope: !3379)
!3439 = !DILocation(line: 339, column: 10, scope: !3428, inlinedAt: !3438)
!3440 = !DILocation(line: 93, column: 14, scope: !3379)
!3441 = !DILocation(line: 114, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 114, column: 7)
!3443 = !DILocation(line: 114, column: 10, scope: !3442)
!3444 = !DILocation(line: 114, column: 7, scope: !3379)
!3445 = !DILocation(line: 118, column: 11, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3380, line: 118, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !3380, line: 115, column: 5)
!3448 = !DILocation(line: 118, column: 26, scope: !3446)
!3449 = !DILocation(line: 118, column: 29, scope: !3446)
!3450 = !DILocation(line: 118, column: 33, scope: !3446)
!3451 = !DILocation(line: 118, column: 36, scope: !3446)
!3452 = !DILocation(line: 118, column: 11, scope: !3447)
!3453 = !DILocation(line: 123, column: 12, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3442, file: !3380, line: 123, column: 12)
!3455 = !DILocation(line: 123, column: 12, scope: !3442)
!3456 = !DILocation(line: 128, column: 5, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !3380, line: 124, column: 5)
!3458 = !DILocation(line: 133, column: 8, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 133, column: 7)
!3460 = !DILocation(line: 133, column: 7, scope: !3379)
!3461 = !DILocation(line: 135, column: 12, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !3380, line: 134, column: 5)
!3463 = !DILocation(line: 136, column: 7, scope: !3462)
!3464 = !DILocation(line: 139, column: 7, scope: !3400)
!3465 = !DILocation(line: 139, column: 11, scope: !3400)
!3466 = !DILocation(line: 139, column: 7, scope: !3379)
!3467 = !DILocation(line: 141, column: 11, scope: !3399)
!3468 = !DILocation(line: 142, column: 11, scope: !3399)
!3469 = !DILocation(line: 145, column: 12, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3399, file: !3380, line: 145, column: 11)
!3471 = !DILocation(line: 145, column: 11, scope: !3399)
!3472 = !DILocation(line: 147, column: 16, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3380, line: 146, column: 9)
!3474 = !DILocation(line: 148, column: 22, scope: !3473)
!3475 = !DILocation(line: 148, column: 11, scope: !3473)
!3476 = !DILocation(line: 151, column: 7, scope: !3399)
!3477 = !DILocation(line: 163, column: 15, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3380, line: 163, column: 15)
!3479 = distinct !DILexicalBlock(scope: !3399, file: !3380, line: 152, column: 9)
!3480 = !DILocation(line: 163, column: 15, scope: !3479)
!3481 = !DILocation(line: 164, column: 21, scope: !3478)
!3482 = !DILocation(line: 164, column: 13, scope: !3478)
!3483 = !DILocation(line: 167, column: 21, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3380, line: 167, column: 21)
!3485 = distinct !DILexicalBlock(scope: !3478, file: !3380, line: 165, column: 15)
!3486 = !DILocation(line: 167, column: 29, scope: !3484)
!3487 = !DILocation(line: 167, column: 21, scope: !3485)
!3488 = !DILocation(line: 175, column: 17, scope: !3485)
!3489 = !DILocation(line: 179, column: 7, scope: !3399)
!3490 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3491, file: !3380, line: 60, type: !45)
!3491 = distinct !DISubprogram(name: "bkm_scale", scope: !3380, file: !3380, line: 60, type: !3492, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !784, variables: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!3317, !3383, !45}
!3494 = !{!3495, !3490}
!3495 = !DILocalVariable(name: "x", arg: 1, scope: !3491, file: !3380, line: 60, type: !3383)
!3496 = !DILocation(line: 60, column: 31, scope: !3491, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 182, column: 22, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3399, file: !3380, line: 180, column: 9)
!3499 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3497)
!3500 = distinct !DILexicalBlock(scope: !3491, file: !3380, line: 67, column: 7)
!3501 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3497)
!3502 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3497)
!3503 = !DILocation(line: 143, column: 20, scope: !3399)
!3504 = !DILocation(line: 183, column: 11, scope: !3498)
!3505 = !DILocation(line: 60, column: 31, scope: !3491, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 189, column: 22, scope: !3498)
!3507 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3506)
!3508 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3506)
!3509 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3506)
!3510 = !DILocation(line: 190, column: 11, scope: !3498)
!3511 = !DILocalVariable(name: "power", arg: 3, scope: !3512, file: !3380, line: 77, type: !45)
!3512 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3380, file: !3380, line: 77, type: !3513, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !784, variables: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3317, !3383, !45, !45}
!3515 = !{!3516, !3517, !3511, !3518}
!3516 = !DILocalVariable(name: "x", arg: 1, scope: !3512, file: !3380, line: 77, type: !3383)
!3517 = !DILocalVariable(name: "base", arg: 2, scope: !3512, file: !3380, line: 77, type: !45)
!3518 = !DILocalVariable(name: "err", scope: !3512, file: !3380, line: 79, type: !3317)
!3519 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 197, column: 22, scope: !3498)
!3521 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3520)
!3522 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3520)
!3524 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3523)
!3525 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3523)
!3526 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3520)
!3527 = !DILocation(line: 241, column: 11, scope: !3399)
!3528 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 202, column: 22, scope: !3498)
!3530 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3529)
!3531 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3529)
!3533 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3532)
!3534 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3532)
!3535 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3529)
!3536 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 207, column: 22, scope: !3498)
!3538 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3537)
!3539 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3537)
!3541 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3540)
!3542 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3540)
!3543 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 212, column: 22, scope: !3498)
!3545 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3544)
!3546 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3544)
!3548 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3547)
!3549 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3547)
!3550 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3544)
!3551 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 216, column: 22, scope: !3498)
!3553 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3552)
!3554 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3552)
!3556 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3555)
!3557 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3555)
!3558 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3552)
!3559 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 221, column: 22, scope: !3498)
!3561 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3560)
!3562 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3560)
!3564 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3563)
!3565 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3563)
!3566 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3560)
!3567 = !DILocation(line: 60, column: 31, scope: !3491, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 225, column: 22, scope: !3498)
!3569 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3568)
!3570 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3568)
!3571 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3568)
!3572 = !DILocation(line: 226, column: 11, scope: !3498)
!3573 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 229, column: 22, scope: !3498)
!3575 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3574)
!3576 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3574)
!3578 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3577)
!3579 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3577)
!3580 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3574)
!3581 = !DILocation(line: 77, column: 50, scope: !3512, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 233, column: 22, scope: !3498)
!3583 = !DILocation(line: 79, column: 16, scope: !3512, inlinedAt: !3582)
!3584 = !DILocation(line: 67, column: 39, scope: !3500, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 81, column: 12, scope: !3512, inlinedAt: !3582)
!3586 = !DILocation(line: 72, column: 6, scope: !3491, inlinedAt: !3585)
!3587 = !DILocation(line: 67, column: 7, scope: !3491, inlinedAt: !3585)
!3588 = !DILocation(line: 81, column: 9, scope: !3512, inlinedAt: !3582)
!3589 = !DILocation(line: 237, column: 16, scope: !3498)
!3590 = !DILocation(line: 238, column: 22, scope: !3498)
!3591 = !DILocation(line: 238, column: 11, scope: !3498)
!3592 = !DILocation(line: 242, column: 10, scope: !3399)
!3593 = !DILocation(line: 243, column: 11, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3399, file: !3380, line: 243, column: 11)
!3595 = !DILocation(line: 244, column: 13, scope: !3594)
!3596 = !DILocation(line: 243, column: 11, scope: !3399)
!3597 = !DILocation(line: 247, column: 8, scope: !3379)
!3598 = !DILocation(line: 248, column: 3, scope: !3379)
!3599 = !DILocation(line: 249, column: 1, scope: !3379)
!3600 = distinct !DISubprogram(name: "rpl_calloc", scope: !3601, file: !3601, line: 42, type: !3046, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !788, variables: !3602)
!3601 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3602 = !{!3603, !3604, !3605, !3606}
!3603 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !3601, line: 42, type: !121)
!3604 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !3601, line: 42, type: !121)
!3605 = !DILocalVariable(name: "result", scope: !3600, file: !3601, line: 44, type: !14)
!3606 = !DILocalVariable(name: "bytes", scope: !3607, file: !3601, line: 56, type: !121)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3601, line: 53, column: 5)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !3601, line: 47, column: 7)
!3609 = !DILocation(line: 42, column: 20, scope: !3600)
!3610 = !DILocation(line: 42, column: 30, scope: !3600)
!3611 = !DILocation(line: 47, column: 9, scope: !3608)
!3612 = !DILocation(line: 47, column: 19, scope: !3608)
!3613 = !DILocation(line: 47, column: 14, scope: !3608)
!3614 = !DILocation(line: 56, column: 24, scope: !3607)
!3615 = !DILocation(line: 56, column: 14, scope: !3607)
!3616 = !DILocation(line: 57, column: 17, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3607, file: !3601, line: 57, column: 11)
!3618 = !DILocation(line: 57, column: 21, scope: !3617)
!3619 = !DILocation(line: 57, column: 11, scope: !3607)
!3620 = !DILocation(line: 59, column: 11, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !3601, line: 58, column: 9)
!3622 = !DILocation(line: 59, column: 17, scope: !3621)
!3623 = !DILocation(line: 65, column: 12, scope: !3600)
!3624 = !DILocation(line: 44, column: 9, scope: !3600)
!3625 = !DILocation(line: 72, column: 3, scope: !3600)
!3626 = !DILocation(line: 73, column: 1, scope: !3600)
!3627 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3628, file: !3628, line: 334, type: !3629, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !790, variables: !3643)
!3628 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!121, !3631, !22, !121, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1379, line: 6, baseType: !3634)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1381, line: 21, baseType: !3635)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 13, size: 64, elements: !3636)
!3636 = !{!3637, !3638}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3635, file: !1381, line: 15, baseType: !45, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3635, file: !1381, line: 20, baseType: !3639, size: 32, offset: 32)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3635, file: !1381, line: 16, size: 32, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3639, file: !1381, line: 18, baseType: !140, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3639, file: !1381, line: 19, baseType: !1390, size: 32)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3644 = !DILocalVariable(name: "pwc", arg: 1, scope: !3627, file: !3628, line: 334, type: !3631)
!3645 = !DILocalVariable(name: "s", arg: 2, scope: !3627, file: !3628, line: 334, type: !22)
!3646 = !DILocalVariable(name: "n", arg: 3, scope: !3627, file: !3628, line: 334, type: !121)
!3647 = !DILocalVariable(name: "ps", arg: 4, scope: !3627, file: !3628, line: 334, type: !3632)
!3648 = !DILocalVariable(name: "ret", scope: !3627, file: !3628, line: 336, type: !121)
!3649 = !DILocalVariable(name: "wc", scope: !3627, file: !3628, line: 337, type: !1395)
!3650 = !DILocalVariable(name: "uc", scope: !3651, file: !3628, line: 398, type: !521)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3628, line: 397, column: 5)
!3652 = distinct !DILexicalBlock(scope: !3627, file: !3628, line: 396, column: 7)
!3653 = !DILocation(line: 334, column: 23, scope: !3627)
!3654 = !DILocation(line: 334, column: 40, scope: !3627)
!3655 = !DILocation(line: 334, column: 50, scope: !3627)
!3656 = !DILocation(line: 334, column: 64, scope: !3627)
!3657 = !DILocation(line: 337, column: 3, scope: !3627)
!3658 = !DILocation(line: 353, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3627, file: !3628, line: 353, column: 7)
!3660 = !DILocation(line: 353, column: 7, scope: !3627)
!3661 = !DILocation(line: 388, column: 9, scope: !3627)
!3662 = !DILocation(line: 336, column: 10, scope: !3627)
!3663 = !DILocation(line: 396, column: 19, scope: !3652)
!3664 = !DILocation(line: 396, column: 31, scope: !3652)
!3665 = !DILocation(line: 396, column: 26, scope: !3652)
!3666 = !DILocation(line: 396, column: 41, scope: !3652)
!3667 = !DILocation(line: 396, column: 7, scope: !3627)
!3668 = !DILocation(line: 398, column: 26, scope: !3651)
!3669 = !DILocation(line: 398, column: 21, scope: !3651)
!3670 = !DILocation(line: 399, column: 14, scope: !3651)
!3671 = !DILocation(line: 399, column: 12, scope: !3651)
!3672 = !DILocation(line: 405, column: 1, scope: !3627)
!3673 = distinct !DISubprogram(name: "close_stream", scope: !3674, file: !3674, line: 56, type: !3675, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !793, variables: !3717)
!3674 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!45, !3677}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3679, file: !2858, line: 242, baseType: !45, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3679, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3679, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3679, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3679, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3679, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3679, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3679, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3679, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3679, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3679, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3679, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3679, file: !2858, line: 260, baseType: !3694, size: 64, offset: 768)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !3696)
!3696 = !{!3697, !3698, !3700}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3695, file: !2858, line: 157, baseType: !3694, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3695, file: !2858, line: 158, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3695, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3679, file: !2858, line: 262, baseType: !3699, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3679, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3679, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3679, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3679, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3679, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3679, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3679, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3679, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3679, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3679, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3679, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3679, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3679, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3679, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3679, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!3717 = !{!3718, !3719, !3721, !3722}
!3718 = !DILocalVariable(name: "stream", arg: 1, scope: !3673, file: !3674, line: 56, type: !3677)
!3719 = !DILocalVariable(name: "some_pending", scope: !3673, file: !3674, line: 58, type: !3720)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!3721 = !DILocalVariable(name: "prev_fail", scope: !3673, file: !3674, line: 59, type: !3720)
!3722 = !DILocalVariable(name: "fclose_fail", scope: !3673, file: !3674, line: 60, type: !3720)
!3723 = !DILocation(line: 56, column: 21, scope: !3673)
!3724 = !DILocation(line: 58, column: 30, scope: !3673)
!3725 = !DILocalVariable(name: "__stream", arg: 1, scope: !3726, file: !3727, line: 132, type: !3677)
!3726 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3727, file: !3727, line: 132, type: !3675, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !793, variables: !3728)
!3727 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3728 = !{!3725}
!3729 = !DILocation(line: 132, column: 1, scope: !3726, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 59, column: 27, scope: !3673)
!3731 = !DILocation(line: 134, column: 10, scope: !3726, inlinedAt: !3730)
!3732 = !{!3733, !886, i64 0}
!3733 = !{!"_IO_FILE", !886, i64 0, !822, i64 8, !822, i64 16, !822, i64 24, !822, i64 32, !822, i64 40, !822, i64 48, !822, i64 56, !822, i64 64, !822, i64 72, !822, i64 80, !822, i64 88, !822, i64 96, !822, i64 104, !886, i64 112, !886, i64 116, !2173, i64 120, !1629, i64 128, !823, i64 130, !823, i64 131, !822, i64 136, !2173, i64 144, !822, i64 152, !822, i64 160, !822, i64 168, !822, i64 176, !2173, i64 184, !886, i64 192, !823, i64 196}
!3734 = !DILocation(line: 59, column: 43, scope: !3673)
!3735 = !DILocation(line: 60, column: 29, scope: !3673)
!3736 = !DILocation(line: 60, column: 45, scope: !3673)
!3737 = !DILocation(line: 70, column: 17, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3673, file: !3674, line: 70, column: 7)
!3739 = !DILocation(line: 58, column: 50, scope: !3673)
!3740 = !DILocation(line: 70, column: 33, scope: !3738)
!3741 = !DILocation(line: 70, column: 53, scope: !3738)
!3742 = !DILocation(line: 70, column: 59, scope: !3738)
!3743 = !DILocation(line: 70, column: 7, scope: !3673)
!3744 = !DILocation(line: 72, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3738, file: !3674, line: 71, column: 5)
!3746 = !DILocation(line: 73, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3745, file: !3674, line: 72, column: 11)
!3748 = !DILocation(line: 73, column: 15, scope: !3747)
!3749 = !DILocation(line: 78, column: 1, scope: !3673)
!3750 = distinct !DISubprogram(name: "hard_locale", scope: !3751, file: !3751, line: 38, type: !996, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !3752)
!3751 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "category", arg: 1, scope: !3750, file: !3751, line: 38, type: !45)
!3754 = !DILocalVariable(name: "hard", scope: !3750, file: !3751, line: 40, type: !65)
!3755 = !DILocalVariable(name: "p", scope: !3750, file: !3751, line: 41, type: !22)
!3756 = !DILocation(line: 38, column: 18, scope: !3750)
!3757 = !DILocation(line: 40, column: 8, scope: !3750)
!3758 = !DILocation(line: 41, column: 19, scope: !3750)
!3759 = !DILocation(line: 41, column: 15, scope: !3750)
!3760 = !DILocation(line: 43, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !3751, line: 43, column: 7)
!3762 = !DILocation(line: 43, column: 7, scope: !3750)
!3763 = !DILocation(line: 47, column: 15, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3751, line: 47, column: 15)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3751, line: 46, column: 9)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3751, line: 45, column: 11)
!3767 = distinct !DILexicalBlock(scope: !3761, file: !3751, line: 44, column: 5)
!3768 = !DILocation(line: 47, column: 31, scope: !3764)
!3769 = !DILocation(line: 47, column: 36, scope: !3764)
!3770 = !DILocation(line: 47, column: 39, scope: !3764)
!3771 = !DILocation(line: 47, column: 59, scope: !3764)
!3772 = !DILocation(line: 47, column: 15, scope: !3765)
!3773 = !DILocation(line: 48, column: 13, scope: !3764)
!3774 = !DILocation(line: 71, column: 3, scope: !3750)
!3775 = distinct !DISubprogram(name: "locale_charset", scope: !523, file: !523, line: 393, type: !3776, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!22}
!3778 = !{!3779, !3780}
!3779 = !DILocalVariable(name: "codeset", scope: !3775, file: !523, line: 395, type: !22)
!3780 = !DILocalVariable(name: "aliases", scope: !3775, file: !523, line: 396, type: !22)
!3781 = !DILocalVariable(name: "buf1", scope: !3782, file: !523, line: 196, type: !3849)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !523, line: 194, column: 21)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !523, line: 193, column: 19)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !523, line: 193, column: 19)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !523, line: 188, column: 17)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !523, line: 181, column: 19)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !523, line: 177, column: 13)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !523, line: 173, column: 15)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !523, line: 161, column: 9)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !523, line: 157, column: 11)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !523, line: 130, column: 5)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !523, line: 129, column: 7)
!3793 = distinct !DISubprogram(name: "get_charset_aliases", scope: !523, file: !523, line: 124, type: !3776, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3801, !3802, !3803, !3804, !3845, !3846, !3847, !3781, !3848, !3852, !3853, !3854}
!3795 = !DILocalVariable(name: "cp", scope: !3793, file: !523, line: 126, type: !22)
!3796 = !DILocalVariable(name: "dir", scope: !3791, file: !523, line: 132, type: !22)
!3797 = !DILocalVariable(name: "base", scope: !3791, file: !523, line: 133, type: !22)
!3798 = !DILocalVariable(name: "file_name", scope: !3791, file: !523, line: 134, type: !12)
!3799 = !DILocalVariable(name: "dir_len", scope: !3800, file: !523, line: 144, type: !121)
!3800 = distinct !DILexicalBlock(scope: !3791, file: !523, line: 143, column: 7)
!3801 = !DILocalVariable(name: "base_len", scope: !3800, file: !523, line: 145, type: !121)
!3802 = !DILocalVariable(name: "add_slash", scope: !3800, file: !523, line: 146, type: !45)
!3803 = !DILocalVariable(name: "fd", scope: !3789, file: !523, line: 162, type: !45)
!3804 = !DILocalVariable(name: "fp", scope: !3787, file: !523, line: 178, type: !3805)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3807, file: !2858, line: 242, baseType: !45, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3807, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3807, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3807, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3807, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3807, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3807, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3807, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3807, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3807, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3807, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3807, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3807, file: !2858, line: 260, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !3824)
!3824 = !{!3825, !3826, !3828}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3823, file: !2858, line: 157, baseType: !3822, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3823, file: !2858, line: 158, baseType: !3827, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3823, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3807, file: !2858, line: 262, baseType: !3827, size: 64, offset: 832)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3807, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3807, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3807, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3807, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3807, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3807, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3807, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3807, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3807, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3807, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3807, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3807, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3807, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3807, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3807, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!3845 = !DILocalVariable(name: "res_ptr", scope: !3785, file: !523, line: 190, type: !12)
!3846 = !DILocalVariable(name: "res_size", scope: !3785, file: !523, line: 191, type: !121)
!3847 = !DILocalVariable(name: "c", scope: !3782, file: !523, line: 195, type: !45)
!3848 = !DILocalVariable(name: "buf2", scope: !3782, file: !523, line: 197, type: !3849)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 408, elements: !3850)
!3850 = !{!3851}
!3851 = !DISubrange(count: 51)
!3852 = !DILocalVariable(name: "l1", scope: !3782, file: !523, line: 198, type: !121)
!3853 = !DILocalVariable(name: "l2", scope: !3782, file: !523, line: 198, type: !121)
!3854 = !DILocalVariable(name: "old_res_ptr", scope: !3782, file: !523, line: 199, type: !12)
!3855 = !DILocation(line: 196, column: 28, scope: !3782, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 589, column: 18, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3775, file: !523, line: 589, column: 3)
!3858 = !DILocation(line: 197, column: 28, scope: !3782, inlinedAt: !3856)
!3859 = !DILocation(line: 403, column: 13, scope: !3775)
!3860 = !DILocation(line: 395, column: 15, scope: !3775)
!3861 = !DILocation(line: 584, column: 15, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3775, file: !523, line: 584, column: 7)
!3863 = !DILocation(line: 584, column: 7, scope: !3775)
!3864 = !DILocation(line: 128, column: 8, scope: !3793, inlinedAt: !3856)
!3865 = !DILocation(line: 126, column: 15, scope: !3793, inlinedAt: !3856)
!3866 = !DILocation(line: 129, column: 10, scope: !3792, inlinedAt: !3856)
!3867 = !DILocation(line: 129, column: 7, scope: !3793, inlinedAt: !3856)
!3868 = !DILocation(line: 138, column: 13, scope: !3791, inlinedAt: !3856)
!3869 = !DILocation(line: 132, column: 19, scope: !3791, inlinedAt: !3856)
!3870 = !DILocation(line: 139, column: 15, scope: !3871, inlinedAt: !3856)
!3871 = distinct !DILexicalBlock(scope: !3791, file: !523, line: 139, column: 11)
!3872 = !DILocation(line: 139, column: 23, scope: !3871, inlinedAt: !3856)
!3873 = !DILocation(line: 139, column: 26, scope: !3871, inlinedAt: !3856)
!3874 = !DILocation(line: 139, column: 33, scope: !3871, inlinedAt: !3856)
!3875 = !DILocation(line: 139, column: 11, scope: !3791, inlinedAt: !3856)
!3876 = !DILocation(line: 140, column: 9, scope: !3871, inlinedAt: !3856)
!3877 = !DILocation(line: 144, column: 26, scope: !3800, inlinedAt: !3856)
!3878 = !DILocation(line: 144, column: 16, scope: !3800, inlinedAt: !3856)
!3879 = !DILocation(line: 145, column: 16, scope: !3800, inlinedAt: !3856)
!3880 = !DILocation(line: 146, column: 34, scope: !3800, inlinedAt: !3856)
!3881 = !DILocation(line: 146, column: 38, scope: !3800, inlinedAt: !3856)
!3882 = !DILocation(line: 146, column: 42, scope: !3800, inlinedAt: !3856)
!3883 = !DILocation(line: 147, column: 48, scope: !3800, inlinedAt: !3856)
!3884 = !DILocation(line: 147, column: 46, scope: !3800, inlinedAt: !3856)
!3885 = !DILocation(line: 147, column: 69, scope: !3800, inlinedAt: !3856)
!3886 = !DILocation(line: 147, column: 30, scope: !3800, inlinedAt: !3856)
!3887 = !DILocation(line: 134, column: 13, scope: !3791, inlinedAt: !3856)
!3888 = !DILocation(line: 148, column: 13, scope: !3800, inlinedAt: !3856)
!3889 = !DILocation(line: 150, column: 13, scope: !3890, inlinedAt: !3856)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !523, line: 149, column: 11)
!3891 = distinct !DILexicalBlock(scope: !3800, file: !523, line: 148, column: 13)
!3892 = !DILocation(line: 151, column: 17, scope: !3890, inlinedAt: !3856)
!3893 = !DILocation(line: 152, column: 34, scope: !3894, inlinedAt: !3856)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !523, line: 151, column: 17)
!3895 = !DILocation(line: 153, column: 41, scope: !3890, inlinedAt: !3856)
!3896 = !DILocation(line: 153, column: 13, scope: !3890, inlinedAt: !3856)
!3897 = !DILocation(line: 157, column: 11, scope: !3791, inlinedAt: !3856)
!3898 = !DILocation(line: 171, column: 16, scope: !3789, inlinedAt: !3856)
!3899 = !DILocation(line: 162, column: 15, scope: !3789, inlinedAt: !3856)
!3900 = !DILocation(line: 173, column: 18, scope: !3788, inlinedAt: !3856)
!3901 = !DILocation(line: 173, column: 15, scope: !3789, inlinedAt: !3856)
!3902 = !DILocation(line: 180, column: 20, scope: !3787, inlinedAt: !3856)
!3903 = !DILocation(line: 178, column: 21, scope: !3787, inlinedAt: !3856)
!3904 = !DILocation(line: 181, column: 22, scope: !3786, inlinedAt: !3856)
!3905 = !DILocation(line: 181, column: 19, scope: !3787, inlinedAt: !3856)
!3906 = !DILocation(line: 184, column: 19, scope: !3907, inlinedAt: !3856)
!3907 = distinct !DILexicalBlock(scope: !3786, file: !523, line: 182, column: 17)
!3908 = !DILocation(line: 186, column: 17, scope: !3907, inlinedAt: !3856)
!3909 = !DILocation(line: 190, column: 25, scope: !3785, inlinedAt: !3856)
!3910 = !DILocation(line: 191, column: 26, scope: !3785, inlinedAt: !3856)
!3911 = !DILocation(line: 193, column: 19, scope: !3785, inlinedAt: !3856)
!3912 = !DILocation(line: 196, column: 23, scope: !3782, inlinedAt: !3856)
!3913 = !DILocation(line: 197, column: 23, scope: !3782, inlinedAt: !3856)
!3914 = !DILocalVariable(name: "__fp", arg: 1, scope: !3915, file: !3727, line: 63, type: !3805)
!3915 = distinct !DISubprogram(name: "getc_unlocked", scope: !3727, file: !3727, line: 63, type: !3916, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!45, !3805}
!3918 = !{!3914}
!3919 = !DILocation(line: 63, column: 22, scope: !3915, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 201, column: 27, scope: !3782, inlinedAt: !3856)
!3921 = !DILocation(line: 65, column: 10, scope: !3915, inlinedAt: !3920)
!3922 = !{!3733, !822, i64 8}
!3923 = !{!3733, !822, i64 16}
!3924 = !{!"branch_weights", i32 2000, i32 1}
!3925 = !DILocation(line: 195, column: 27, scope: !3782, inlinedAt: !3856)
!3926 = !DILocation(line: 202, column: 27, scope: !3782, inlinedAt: !3856)
!3927 = distinct !{!3927, !3928, !3931}
!3928 = !DILocation(line: 209, column: 27, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !523, line: 207, column: 25)
!3930 = distinct !DILexicalBlock(scope: !3782, file: !523, line: 206, column: 27)
!3931 = !DILocation(line: 211, column: 58, scope: !3929)
!3932 = !DILocation(line: 65, column: 10, scope: !3915, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 210, column: 33, scope: !3929, inlinedAt: !3856)
!3934 = !DILocation(line: 63, column: 22, scope: !3915, inlinedAt: !3933)
!3935 = !DILocation(line: 210, column: 29, scope: !3929, inlinedAt: !3856)
!3936 = distinct !{!3936, !3937, !3938}
!3937 = !DILocation(line: 193, column: 19, scope: !3784)
!3938 = !DILocation(line: 241, column: 21, scope: !3784)
!3939 = !DILocation(line: 216, column: 23, scope: !3782, inlinedAt: !3856)
!3940 = !DILocation(line: 217, column: 27, scope: !3941, inlinedAt: !3856)
!3941 = distinct !DILexicalBlock(scope: !3782, file: !523, line: 217, column: 27)
!3942 = !DILocation(line: 217, column: 64, scope: !3941, inlinedAt: !3856)
!3943 = !DILocation(line: 217, column: 27, scope: !3782, inlinedAt: !3856)
!3944 = !DILocation(line: 219, column: 28, scope: !3782, inlinedAt: !3856)
!3945 = !DILocation(line: 198, column: 30, scope: !3782, inlinedAt: !3856)
!3946 = !DILocation(line: 220, column: 28, scope: !3782, inlinedAt: !3856)
!3947 = !DILocation(line: 198, column: 34, scope: !3782, inlinedAt: !3856)
!3948 = !DILocation(line: 199, column: 29, scope: !3782, inlinedAt: !3856)
!3949 = !DILocation(line: 222, column: 36, scope: !3950, inlinedAt: !3856)
!3950 = distinct !DILexicalBlock(scope: !3782, file: !523, line: 222, column: 27)
!3951 = !DILocation(line: 222, column: 27, scope: !3782, inlinedAt: !3856)
!3952 = !DILocation(line: 225, column: 63, scope: !3953, inlinedAt: !3856)
!3953 = distinct !DILexicalBlock(scope: !3950, file: !523, line: 223, column: 25)
!3954 = !DILocation(line: 225, column: 46, scope: !3953, inlinedAt: !3856)
!3955 = !DILocation(line: 226, column: 25, scope: !3953, inlinedAt: !3856)
!3956 = !DILocation(line: 229, column: 36, scope: !3957, inlinedAt: !3856)
!3957 = distinct !DILexicalBlock(scope: !3950, file: !523, line: 228, column: 25)
!3958 = !DILocation(line: 230, column: 73, scope: !3957, inlinedAt: !3856)
!3959 = !DILocation(line: 230, column: 46, scope: !3957, inlinedAt: !3856)
!3960 = !DILocation(line: 232, column: 35, scope: !3961, inlinedAt: !3856)
!3961 = distinct !DILexicalBlock(scope: !3782, file: !523, line: 232, column: 27)
!3962 = !DILocation(line: 232, column: 27, scope: !3782, inlinedAt: !3856)
!3963 = !DILocation(line: 236, column: 27, scope: !3964, inlinedAt: !3856)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !523, line: 233, column: 25)
!3965 = !DILocation(line: 237, column: 27, scope: !3964, inlinedAt: !3856)
!3966 = !DILocation(line: 241, column: 21, scope: !3783, inlinedAt: !3856)
!3967 = !DILocation(line: 239, column: 39, scope: !3782, inlinedAt: !3856)
!3968 = !DILocation(line: 239, column: 50, scope: !3782, inlinedAt: !3856)
!3969 = !DILocation(line: 239, column: 61, scope: !3782, inlinedAt: !3856)
!3970 = !DILocalVariable(name: "__dest", arg: 1, scope: !3971, file: !3972, line: 88, type: !3975)
!3971 = distinct !DISubprogram(name: "strcpy", scope: !3972, file: !3972, line: 88, type: !3973, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3976)
!3972 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!12, !3975, !3432}
!3975 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!3976 = !{!3970, !3977}
!3977 = !DILocalVariable(name: "__src", arg: 2, scope: !3971, file: !3972, line: 88, type: !3432)
!3978 = !DILocation(line: 88, column: 1, scope: !3971, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 239, column: 23, scope: !3782, inlinedAt: !3856)
!3980 = !DILocation(line: 90, column: 49, scope: !3971, inlinedAt: !3979)
!3981 = !DILocation(line: 90, column: 10, scope: !3971, inlinedAt: !3979)
!3982 = !DILocation(line: 88, column: 1, scope: !3971, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 240, column: 23, scope: !3782, inlinedAt: !3856)
!3984 = !DILocation(line: 90, column: 49, scope: !3971, inlinedAt: !3983)
!3985 = !DILocation(line: 90, column: 10, scope: !3971, inlinedAt: !3983)
!3986 = !DILocation(line: 193, column: 19, scope: !3783, inlinedAt: !3856)
!3987 = !DILocation(line: 242, column: 19, scope: !3785, inlinedAt: !3856)
!3988 = !DILocation(line: 243, column: 32, scope: !3989, inlinedAt: !3856)
!3989 = distinct !DILexicalBlock(scope: !3785, file: !523, line: 243, column: 23)
!3990 = !DILocation(line: 243, column: 23, scope: !3785, inlinedAt: !3856)
!3991 = !DILocation(line: 247, column: 33, scope: !3992, inlinedAt: !3856)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !523, line: 246, column: 21)
!3993 = !DILocation(line: 247, column: 45, scope: !3992, inlinedAt: !3856)
!3994 = !DILocation(line: 253, column: 11, scope: !3789, inlinedAt: !3856)
!3995 = !DILocation(line: 377, column: 23, scope: !3791, inlinedAt: !3856)
!3996 = !DILocation(line: 378, column: 5, scope: !3791, inlinedAt: !3856)
!3997 = !DILocation(line: 396, column: 15, scope: !3775)
!3998 = !DILocation(line: 590, column: 8, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3857, file: !523, line: 589, column: 3)
!4000 = !DILocation(line: 590, column: 17, scope: !3999)
!4001 = !DILocation(line: 589, column: 3, scope: !3857)
!4002 = !DILocation(line: 592, column: 9, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !523, line: 592, column: 9)
!4004 = !DILocation(line: 592, column: 35, scope: !4003)
!4005 = !DILocation(line: 593, column: 9, scope: !4003)
!4006 = !DILocation(line: 593, column: 24, scope: !4003)
!4007 = !DILocation(line: 593, column: 31, scope: !4003)
!4008 = !DILocation(line: 593, column: 34, scope: !4003)
!4009 = !DILocation(line: 593, column: 45, scope: !4003)
!4010 = !DILocation(line: 592, column: 9, scope: !3999)
!4011 = !DILocation(line: 595, column: 29, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4003, file: !523, line: 594, column: 7)
!4013 = !DILocation(line: 595, column: 27, scope: !4012)
!4014 = !DILocation(line: 595, column: 46, scope: !4012)
!4015 = !DILocation(line: 596, column: 9, scope: !4012)
!4016 = !DILocation(line: 591, column: 19, scope: !3999)
!4017 = !DILocation(line: 591, column: 36, scope: !3999)
!4018 = !DILocation(line: 591, column: 16, scope: !3999)
!4019 = !DILocation(line: 591, column: 52, scope: !3999)
!4020 = !DILocation(line: 591, column: 69, scope: !3999)
!4021 = !DILocation(line: 591, column: 49, scope: !3999)
!4022 = distinct !{!4022, !4001, !4023}
!4023 = !DILocation(line: 597, column: 7, scope: !3857)
!4024 = !DILocation(line: 602, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3775, file: !523, line: 602, column: 7)
!4026 = !DILocation(line: 602, column: 18, scope: !4025)
!4027 = !DILocation(line: 602, column: 7, scope: !3775)
!4028 = !DILocation(line: 612, column: 3, scope: !3775)
!4029 = distinct !DISubprogram(name: "rpl_fclose", scope: !4030, file: !4030, line: 56, type: !4031, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !797, variables: !4073)
!4030 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!45, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4035, file: !2858, line: 242, baseType: !45, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4035, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4035, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4035, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4035, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4035, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4035, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4035, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4035, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4035, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4035, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4035, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4035, file: !2858, line: 260, baseType: !4050, size: 64, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !4052)
!4052 = !{!4053, !4054, !4056}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4051, file: !2858, line: 157, baseType: !4050, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4051, file: !2858, line: 158, baseType: !4055, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4051, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4035, file: !2858, line: 262, baseType: !4055, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4035, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4035, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4035, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4035, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4035, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4035, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4035, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4035, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4035, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4035, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4035, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4035, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4035, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4035, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4035, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DILocalVariable(name: "fp", arg: 1, scope: !4029, file: !4030, line: 56, type: !4033)
!4075 = !DILocalVariable(name: "saved_errno", scope: !4029, file: !4030, line: 58, type: !45)
!4076 = !DILocalVariable(name: "fd", scope: !4029, file: !4030, line: 59, type: !45)
!4077 = !DILocalVariable(name: "result", scope: !4029, file: !4030, line: 60, type: !45)
!4078 = !DILocation(line: 56, column: 19, scope: !4029)
!4079 = !DILocation(line: 58, column: 7, scope: !4029)
!4080 = !DILocation(line: 60, column: 7, scope: !4029)
!4081 = !DILocation(line: 63, column: 8, scope: !4029)
!4082 = !DILocation(line: 59, column: 7, scope: !4029)
!4083 = !DILocation(line: 64, column: 10, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 64, column: 7)
!4085 = !DILocation(line: 64, column: 7, scope: !4029)
!4086 = !DILocation(line: 65, column: 12, scope: !4084)
!4087 = !DILocation(line: 65, column: 5, scope: !4084)
!4088 = !DILocation(line: 70, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 70, column: 7)
!4090 = !DILocation(line: 70, column: 23, scope: !4089)
!4091 = !DILocation(line: 70, column: 33, scope: !4089)
!4092 = !DILocation(line: 70, column: 26, scope: !4089)
!4093 = !DILocation(line: 70, column: 59, scope: !4089)
!4094 = !DILocation(line: 71, column: 7, scope: !4089)
!4095 = !DILocation(line: 71, column: 10, scope: !4089)
!4096 = !DILocation(line: 70, column: 7, scope: !4029)
!4097 = !DILocation(line: 98, column: 12, scope: !4029)
!4098 = !DILocation(line: 103, column: 7, scope: !4029)
!4099 = !DILocation(line: 72, column: 19, scope: !4089)
!4100 = !DILocation(line: 103, column: 19, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 103, column: 7)
!4102 = !DILocation(line: 105, column: 13, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4101, file: !4030, line: 104, column: 5)
!4104 = !DILocation(line: 107, column: 5, scope: !4103)
!4105 = !DILocation(line: 110, column: 1, scope: !4029)
!4106 = distinct !DISubprogram(name: "rpl_fflush", scope: !4107, file: !4107, line: 127, type: !4108, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !799, variables: !4150)
!4107 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!45, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !4112)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4112, file: !2858, line: 242, baseType: !45, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4112, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4112, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4112, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4112, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4112, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4112, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4112, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4112, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4112, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4112, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4112, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4112, file: !2858, line: 260, baseType: !4127, size: 64, offset: 768)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !4129)
!4129 = !{!4130, !4131, !4133}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4128, file: !2858, line: 157, baseType: !4127, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4128, file: !2858, line: 158, baseType: !4132, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4128, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4112, file: !2858, line: 262, baseType: !4132, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4112, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4112, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4112, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4112, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4112, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4112, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4112, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4112, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4112, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4112, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4112, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4112, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4112, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4112, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4112, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!4150 = !{!4151}
!4151 = !DILocalVariable(name: "stream", arg: 1, scope: !4106, file: !4107, line: 127, type: !4110)
!4152 = !DILocation(line: 127, column: 19, scope: !4106)
!4153 = !DILocation(line: 148, column: 14, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4106, file: !4107, line: 148, column: 7)
!4155 = !DILocation(line: 148, column: 22, scope: !4154)
!4156 = !DILocation(line: 148, column: 27, scope: !4154)
!4157 = !DILocation(line: 148, column: 7, scope: !4106)
!4158 = !DILocation(line: 149, column: 12, scope: !4154)
!4159 = !DILocation(line: 149, column: 5, scope: !4154)
!4160 = !DILocalVariable(name: "fp", arg: 1, scope: !4161, file: !4107, line: 40, type: !4110)
!4161 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4107, file: !4107, line: 40, type: !4162, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !799, variables: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !4110}
!4164 = !{!4160}
!4165 = !DILocation(line: 40, column: 48, scope: !4161, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 153, column: 3, scope: !4106)
!4167 = !DILocation(line: 42, column: 11, scope: !4168, inlinedAt: !4166)
!4168 = distinct !DILexicalBlock(scope: !4161, file: !4107, line: 42, column: 7)
!4169 = !DILocation(line: 42, column: 18, scope: !4168, inlinedAt: !4166)
!4170 = !DILocation(line: 42, column: 7, scope: !4161, inlinedAt: !4166)
!4171 = !DILocation(line: 44, column: 5, scope: !4168, inlinedAt: !4166)
!4172 = !DILocation(line: 155, column: 10, scope: !4106)
!4173 = !DILocation(line: 155, column: 3, scope: !4106)
!4174 = !DILocation(line: 229, column: 1, scope: !4106)
!4175 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4176, file: !4176, line: 28, type: !4177, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !801, variables: !4220)
!4176 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!45, !4179, !4219, !45}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !4181)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 241, size: 1728, elements: !4182)
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4181, file: !2858, line: 242, baseType: !45, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4181, file: !2858, line: 247, baseType: !12, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4181, file: !2858, line: 248, baseType: !12, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4181, file: !2858, line: 249, baseType: !12, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4181, file: !2858, line: 250, baseType: !12, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4181, file: !2858, line: 251, baseType: !12, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4181, file: !2858, line: 252, baseType: !12, size: 64, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4181, file: !2858, line: 253, baseType: !12, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4181, file: !2858, line: 254, baseType: !12, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4181, file: !2858, line: 256, baseType: !12, size: 64, offset: 576)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4181, file: !2858, line: 257, baseType: !12, size: 64, offset: 640)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4181, file: !2858, line: 258, baseType: !12, size: 64, offset: 704)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4181, file: !2858, line: 260, baseType: !4196, size: 64, offset: 768)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 156, size: 192, elements: !4198)
!4198 = !{!4199, !4200, !4202}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4197, file: !2858, line: 157, baseType: !4196, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4197, file: !2858, line: 158, baseType: !4201, size: 64, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4197, file: !2858, line: 162, baseType: !45, size: 32, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4181, file: !2858, line: 262, baseType: !4201, size: 64, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4181, file: !2858, line: 264, baseType: !45, size: 32, offset: 896)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4181, file: !2858, line: 268, baseType: !45, size: 32, offset: 928)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4181, file: !2858, line: 270, baseType: !2884, size: 64, offset: 960)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4181, file: !2858, line: 274, baseType: !120, size: 16, offset: 1024)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4181, file: !2858, line: 275, baseType: !2888, size: 8, offset: 1040)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4181, file: !2858, line: 276, baseType: !2890, size: 8, offset: 1048)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4181, file: !2858, line: 280, baseType: !2894, size: 64, offset: 1088)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4181, file: !2858, line: 289, baseType: !2897, size: 64, offset: 1152)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4181, file: !2858, line: 297, baseType: !14, size: 64, offset: 1216)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4181, file: !2858, line: 298, baseType: !14, size: 64, offset: 1280)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4181, file: !2858, line: 299, baseType: !14, size: 64, offset: 1344)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4181, file: !2858, line: 300, baseType: !14, size: 64, offset: 1408)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4181, file: !2858, line: 302, baseType: !121, size: 64, offset: 1472)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4181, file: !2858, line: 303, baseType: !45, size: 32, offset: 1536)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4181, file: !2858, line: 305, baseType: !2905, size: 160, offset: 1568)
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3025, line: 57, baseType: !2884)
!4220 = !{!4221, !4222, !4223, !4224}
!4221 = !DILocalVariable(name: "fp", arg: 1, scope: !4175, file: !4176, line: 28, type: !4179)
!4222 = !DILocalVariable(name: "offset", arg: 2, scope: !4175, file: !4176, line: 28, type: !4219)
!4223 = !DILocalVariable(name: "whence", arg: 3, scope: !4175, file: !4176, line: 28, type: !45)
!4224 = !DILocalVariable(name: "pos", scope: !4225, file: !4176, line: 116, type: !4219)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !4176, line: 112, column: 5)
!4226 = distinct !DILexicalBlock(scope: !4175, file: !4176, line: 51, column: 7)
!4227 = !DILocation(line: 28, column: 15, scope: !4175)
!4228 = !DILocation(line: 28, column: 25, scope: !4175)
!4229 = !DILocation(line: 28, column: 37, scope: !4175)
!4230 = !DILocation(line: 51, column: 11, scope: !4226)
!4231 = !DILocation(line: 51, column: 31, scope: !4226)
!4232 = !DILocation(line: 51, column: 24, scope: !4226)
!4233 = !DILocation(line: 52, column: 7, scope: !4226)
!4234 = !DILocation(line: 52, column: 14, scope: !4226)
!4235 = !{!3733, !822, i64 40}
!4236 = !DILocation(line: 52, column: 35, scope: !4226)
!4237 = !{!3733, !822, i64 32}
!4238 = !DILocation(line: 52, column: 28, scope: !4226)
!4239 = !DILocation(line: 53, column: 7, scope: !4226)
!4240 = !DILocation(line: 53, column: 14, scope: !4226)
!4241 = !{!3733, !822, i64 72}
!4242 = !DILocation(line: 53, column: 28, scope: !4226)
!4243 = !DILocation(line: 51, column: 7, scope: !4175)
!4244 = !DILocation(line: 116, column: 26, scope: !4225)
!4245 = !DILocation(line: 116, column: 19, scope: !4225)
!4246 = !DILocation(line: 116, column: 13, scope: !4225)
!4247 = !DILocation(line: 117, column: 15, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4225, file: !4176, line: 117, column: 11)
!4249 = !DILocation(line: 117, column: 11, scope: !4225)
!4250 = !DILocation(line: 127, column: 11, scope: !4225)
!4251 = !DILocation(line: 127, column: 18, scope: !4225)
!4252 = !DILocation(line: 128, column: 11, scope: !4225)
!4253 = !DILocation(line: 128, column: 19, scope: !4225)
!4254 = !{!3733, !2173, i64 144}
!4255 = !DILocation(line: 159, column: 7, scope: !4225)
!4256 = !DILocation(line: 161, column: 10, scope: !4175)
!4257 = !DILocation(line: 161, column: 3, scope: !4175)
!4258 = !DILocation(line: 162, column: 1, scope: !4175)
