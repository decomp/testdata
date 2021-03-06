; ModuleID = 'coreutils-8.30/src/nproc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
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
@.str.3 = private unnamed_addr constant [117 x i8] c"      --all      print the number of installed processors\0A      --ignore=N  if possible, exclude N processing units\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !32
@.str.34 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !38
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !43
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !47
@.str.44 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.45 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !54
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !61
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !106
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !113
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !125
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !132
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !139
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !127
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !141
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.95 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !147
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.114 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !829 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !834, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !857
  %3 = icmp eq i32 %0, 0, !dbg !858
  br i1 %3, label %9, label %4, !dbg !859

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !860, !tbaa !862
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !860
  %7 = load i8*, i8** @program_name, align 8, !dbg !860, !tbaa !862
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !860
  br label %60, !dbg !860

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !866
  %11 = load i8*, i8** @program_name, align 8, !dbg !866, !tbaa !862
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !866
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !867
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !867, !tbaa !862
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !867
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !868
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868, !tbaa !862
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !868
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !869
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !869, !tbaa !862
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !869
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !870
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !870, !tbaa !862
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !870
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !871
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #10, !dbg !871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %25, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !853
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !872
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !842, metadata !DIExpression()) #10, !dbg !873
  br label %27, !dbg !874

; <label>:27:                                     ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !842, metadata !DIExpression()) #10, !dbg !873
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #14, !dbg !874
  %31 = icmp eq i32 %30, 0, !dbg !874
  br i1 %31, label %37, label %32, !dbg !875

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !842, metadata !DIExpression()) #10, !dbg !873
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !877
  %35 = load i8*, i8** %34, align 8, !dbg !877, !tbaa !878
  %36 = icmp eq i8* %35, null, !dbg !880
  br i1 %36, label %37, label %27, !dbg !881, !llvm.loop !882

; <label>:37:                                     ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !842, metadata !DIExpression()) #10, !dbg !873
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !842, metadata !DIExpression()) #10, !dbg !873
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !885
  %40 = load i8*, i8** %39, align 8, !dbg !885, !tbaa !887
  %41 = icmp eq i8* %40, null, !dbg !888
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !889
  call void @llvm.dbg.value(metadata i8* %42, metadata !841, metadata !DIExpression()) #10, !dbg !890
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !891
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !891
  %45 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !892
  call void @llvm.dbg.value(metadata i8* %45, metadata !849, metadata !DIExpression()) #10, !dbg !893
  %46 = icmp eq i8* %45, null, !dbg !894
  br i1 %46, label %53, label %47, !dbg !896

; <label>:47:                                     ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !897
  %49 = icmp eq i32 %48, 0, !dbg !897
  br i1 %49, label %53, label %50, !dbg !898

; <label>:50:                                     ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !899
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !899
  br label %53, !dbg !901

; <label>:53:                                     ; preds = %37, %47, %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !902
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !902
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !903
  %57 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !903
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !903
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %42, i8* %58) #10, !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #10, !dbg !904
  br label %60

; <label>:60:                                     ; preds = %53, %4
  tail call void @exit(i32 %0) #15, !dbg !905
  unreachable, !dbg !905
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !911, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8** %1, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 0, metadata !914, metadata !DIExpression()), !dbg !920
  %3 = load i8*, i8** %1, align 8, !dbg !921, !tbaa !862
  tail call void @set_program_name(i8* %3) #10, !dbg !922
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !923
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !924
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !925
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !926
  call void @llvm.dbg.value(metadata i32 2, metadata !915, metadata !DIExpression()), !dbg !927
  br label %8, !dbg !928

; <label>:8:                                      ; preds = %18, %2
  %9 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !929

; <label>:11:                                     ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ], !dbg !927
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %9, metadata !914, metadata !DIExpression()), !dbg !920
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 %13, metadata !916, metadata !DIExpression()), !dbg !930
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %11
    i32 129, label %18
  ], !dbg !931

; <label>:14:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !932
  unreachable, !dbg !932

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !934, !tbaa !862
  %17 = load i8*, i8** @Version, align 8, !dbg !934, !tbaa !862
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !934
  tail call void @exit(i32 0) #15, !dbg !934
  unreachable, !dbg !934

; <label>:18:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  %19 = load i8*, i8** @optarg, align 8, !dbg !935, !tbaa !862
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !936
  %21 = tail call i64 @xdectoumax(i8* %19, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 0) #10, !dbg !937
  call void @llvm.dbg.value(metadata i64 %21, metadata !914, metadata !DIExpression()), !dbg !920
  br label %8, !dbg !938

; <label>:22:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !939
  unreachable, !dbg !939

; <label>:23:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %9, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %9, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %9, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %9, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %12, metadata !915, metadata !DIExpression()), !dbg !927
  %24 = load i32, i32* @optind, align 4, !dbg !940, !tbaa !942
  %25 = icmp eq i32 %24, %0, !dbg !944
  br i1 %25, label %33, label %26, !dbg !945

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !946
  %28 = load i32, i32* @optind, align 4, !dbg !948, !tbaa !942
  %29 = sext i32 %28 to i64, !dbg !949
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !949
  %31 = load i8*, i8** %30, align 8, !dbg !949, !tbaa !862
  %32 = tail call i8* @quote(i8* %31) #10, !dbg !950
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %32) #10, !dbg !951
  tail call void @usage(i32 1) #16, !dbg !952
  unreachable, !dbg !952

; <label>:33:                                     ; preds = %23
  %34 = tail call i64 @num_processors(i32 %12) #10, !dbg !953
  call void @llvm.dbg.value(metadata i64 %34, metadata !913, metadata !DIExpression()), !dbg !954
  %35 = icmp ugt i64 %34, %9, !dbg !955
  %36 = sub i64 %34, %9, !dbg !957
  call void @llvm.dbg.value(metadata i64 %36, metadata !913, metadata !DIExpression()), !dbg !954
  %37 = select i1 %35, i64 %36, i64 1, !dbg !958
  call void @llvm.dbg.value(metadata i64 %37, metadata !913, metadata !DIExpression()), !dbg !954
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %37) #10, !dbg !959
  ret i32 0, !dbg !960
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
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !961 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !963, metadata !DIExpression()), !dbg !964
  store i8* %0, i8** @file_name, align 8, !dbg !965, !tbaa !862
  ret void, !dbg !966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !967 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !971, metadata !DIExpression()), !dbg !972
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !973, !tbaa !974
  ret void, !dbg !976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !977 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !984, !tbaa !862
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !985
  %3 = icmp eq i32 %2, 0, !dbg !986
  br i1 %3, label %22, label %4, !dbg !987

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !988, !tbaa !974, !range !989
  %6 = icmp eq i8 %5, 0, !dbg !988
  br i1 %6, label %11, label %7, !dbg !990

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !991
  %9 = load i32, i32* %8, align 4, !dbg !991, !tbaa !942
  %10 = icmp eq i32 %9, 32, !dbg !992
  br i1 %10, label %22, label %11, !dbg !993

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !994
  call void @llvm.dbg.value(metadata i8* %12, metadata !981, metadata !DIExpression()), !dbg !995
  %13 = load i8*, i8** @file_name, align 8, !dbg !996, !tbaa !862
  %14 = icmp eq i8* %13, null, !dbg !996
  %15 = tail call i32* @__errno_location() #17, !dbg !998
  %16 = load i32, i32* %15, align 4, !dbg !998, !tbaa !942
  br i1 %14, label %19, label %17, !dbg !999

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1000
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1001
  br label %20, !dbg !1001

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #10, !dbg !1002
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1003, !tbaa !942
  tail call void @_exit(i32 %21) #15, !dbg !1004
  unreachable, !dbg !1004

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1005, !tbaa !862
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1007
  %25 = icmp eq i32 %24, 0, !dbg !1008
  br i1 %25, label %28, label %26, !dbg !1009

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1010, !tbaa !942
  tail call void @_exit(i32 %27) #15, !dbg !1011
  unreachable, !dbg !1011

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1012
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @num_processors(i32) local_unnamed_addr #7 !dbg !1013 {
  %2 = alloca %struct.cpu_set_t, align 8
  %3 = alloca %struct.cpu_set_t, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1018, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i64 -1, metadata !1019, metadata !DIExpression()), !dbg !1026
  %6 = icmp eq i32 %0, 2, !dbg !1027
  br i1 %6, label %7, label %91, !dbg !1028

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %8, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()) #10, !dbg !1042
  %9 = icmp eq i8* %8, null, !dbg !1043
  br i1 %9, label %45, label %10, !dbg !1045

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %8, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  %11 = load i8, i8* %8, align 1, !dbg !1046, !tbaa !1047
  %12 = icmp eq i8 %11, 0, !dbg !1048
  br i1 %12, label %45, label %13, !dbg !1049

; <label>:13:                                     ; preds = %10, %17
  %14 = phi i8 [ %19, %17 ], [ %11, %10 ]
  %15 = phi i8* [ %18, %17 ], [ %8, %10 ]
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  %16 = sext i8 %14 to i32, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %16, metadata !1050, metadata !DIExpression()) #10, !dbg !1056
  switch i32 %16, label %21 [
    i32 32, label %17
    i32 9, label %17
    i32 10, label %17
    i32 11, label %17
    i32 12, label %17
    i32 13, label %17
  ], !dbg !1058

; <label>:17:                                     ; preds = %13, %13, %13, %13, %13, %13
  %18 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %18, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  %19 = load i8, i8* %18, align 1, !dbg !1046, !tbaa !1047
  %20 = icmp eq i8 %19, 0, !dbg !1048
  br i1 %20, label %45, label %13, !dbg !1049, !llvm.loop !1060

; <label>:21:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %15, metadata !1030, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %16, metadata !1063, metadata !DIExpression()) #10, !dbg !1066
  %22 = add nsw i32 %16, -48, !dbg !1068
  %23 = icmp ult i32 %22, 10, !dbg !1068
  br i1 %23, label %24, label %45, !dbg !1069

; <label>:24:                                     ; preds = %21
  %25 = bitcast i8** %5 to i8*, !dbg !1070
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #10, !dbg !1070
  call void @llvm.dbg.value(metadata i8* null, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  store i8* null, i8** %5, align 8, !dbg !1071, !tbaa !862
  call void @llvm.dbg.value(metadata i8** %5, metadata !1036, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1071
  %26 = call i64 @strtoul(i8* nonnull %15, i8** nonnull %5, i32 10) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %26, metadata !1039, metadata !DIExpression()) #10, !dbg !1073
  %27 = load i8*, i8** %5, align 8, !dbg !1074, !tbaa !862
  call void @llvm.dbg.value(metadata i8* %27, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  %28 = icmp eq i8* %27, null, !dbg !1076
  br i1 %28, label %44, label %29, !dbg !1077

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %27, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  %30 = load i8, i8* %27, align 1, !dbg !1078, !tbaa !1047
  %31 = icmp eq i8 %30, 0, !dbg !1080
  br i1 %31, label %43, label %32, !dbg !1081

; <label>:32:                                     ; preds = %29, %36
  %33 = phi i8* [ %37, %36 ], [ %27, %29 ]
  %34 = phi i8 [ %38, %36 ], [ %30, %29 ]
  %35 = sext i8 %34 to i32, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %35, metadata !1050, metadata !DIExpression()) #10, !dbg !1082
  switch i32 %35, label %40 [
    i32 32, label %36
    i32 9, label %36
    i32 10, label %36
    i32 11, label %36
    i32 12, label %36
    i32 13, label %36
  ], !dbg !1084

; <label>:36:                                     ; preds = %32, %32, %32, %32, %32, %32
  call void @llvm.dbg.value(metadata i8* %33, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  %37 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %37, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %37, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  %38 = load i8, i8* %37, align 1, !dbg !1078, !tbaa !1047
  %39 = icmp eq i8 %38, 0, !dbg !1080
  br i1 %39, label %42, label %32, !dbg !1081, !llvm.loop !1086

; <label>:40:                                     ; preds = %32
  store i8* %33, i8** %5, align 8, !dbg !1085, !tbaa !862
  call void @llvm.dbg.value(metadata i8* undef, metadata !1036, metadata !DIExpression()) #10, !dbg !1071
  %41 = icmp eq i8 %34, 44, !dbg !1089
  br i1 %41, label %43, label %44, !dbg !1089

; <label>:42:                                     ; preds = %36
  store i8* %37, i8** %5, align 8, !dbg !1085, !tbaa !862
  br label %43, !dbg !1081

; <label>:43:                                     ; preds = %42, %40, %29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10, !dbg !1090
  br label %45

; <label>:44:                                     ; preds = %40, %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10, !dbg !1090
  br label %45

; <label>:45:                                     ; preds = %17, %7, %10, %21, %43, %44
  %46 = phi i64 [ %26, %43 ], [ 0, %7 ], [ 0, %44 ], [ 0, %21 ], [ 0, %10 ], [ 0, %17 ], !dbg !1091
  call void @llvm.dbg.value(metadata i64 %46, metadata !1020, metadata !DIExpression()), !dbg !1093
  %47 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.45, i64 0, i64 0)) #10, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %47, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()) #10, !dbg !1097
  %48 = icmp eq i8* %47, null, !dbg !1098
  br i1 %48, label %85, label %49, !dbg !1099

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i8* %47, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  %50 = load i8, i8* %47, align 1, !dbg !1100, !tbaa !1047
  %51 = icmp eq i8 %50, 0, !dbg !1101
  br i1 %51, label %85, label %52, !dbg !1102

; <label>:52:                                     ; preds = %49, %56
  %53 = phi i8 [ %58, %56 ], [ %50, %49 ]
  %54 = phi i8* [ %57, %56 ], [ %47, %49 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  %55 = sext i8 %53 to i32, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %55, metadata !1050, metadata !DIExpression()) #10, !dbg !1103
  switch i32 %55, label %60 [
    i32 32, label %56
    i32 9, label %56
    i32 10, label %56
    i32 11, label %56
    i32 12, label %56
    i32 13, label %56
  ], !dbg !1105

; <label>:56:                                     ; preds = %52, %52, %52, %52, %52, %52
  %57 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %57, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  %58 = load i8, i8* %57, align 1, !dbg !1100, !tbaa !1047
  %59 = icmp eq i8 %58, 0, !dbg !1101
  br i1 %59, label %85, label %52, !dbg !1102, !llvm.loop !1060

; <label>:60:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %54, metadata !1030, metadata !DIExpression()) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i32 %55, metadata !1063, metadata !DIExpression()) #10, !dbg !1107
  %61 = add nsw i32 %55, -48, !dbg !1109
  %62 = icmp ult i32 %61, 10, !dbg !1109
  br i1 %62, label %63, label %85, !dbg !1110

; <label>:63:                                     ; preds = %60
  %64 = bitcast i8** %4 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64) #10, !dbg !1111
  call void @llvm.dbg.value(metadata i8* null, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  store i8* null, i8** %4, align 8, !dbg !1112, !tbaa !862
  call void @llvm.dbg.value(metadata i8** %4, metadata !1036, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1112
  %65 = call i64 @strtoul(i8* nonnull %54, i8** nonnull %4, i32 10) #10, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %65, metadata !1039, metadata !DIExpression()) #10, !dbg !1114
  %66 = load i8*, i8** %4, align 8, !dbg !1115, !tbaa !862
  call void @llvm.dbg.value(metadata i8* %66, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  %67 = icmp eq i8* %66, null, !dbg !1116
  br i1 %67, label %82, label %68, !dbg !1117

; <label>:68:                                     ; preds = %63
  call void @llvm.dbg.value(metadata i8* %66, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  %69 = load i8, i8* %66, align 1, !dbg !1118, !tbaa !1047
  %70 = icmp eq i8 %69, 0, !dbg !1119
  br i1 %70, label %83, label %71, !dbg !1120

; <label>:71:                                     ; preds = %68, %75
  %72 = phi i8* [ %76, %75 ], [ %66, %68 ]
  %73 = phi i8 [ %77, %75 ], [ %69, %68 ]
  %74 = sext i8 %73 to i32, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %74, metadata !1050, metadata !DIExpression()) #10, !dbg !1121
  switch i32 %74, label %79 [
    i32 32, label %75
    i32 9, label %75
    i32 10, label %75
    i32 11, label %75
    i32 12, label %75
    i32 13, label %75
  ], !dbg !1123

; <label>:75:                                     ; preds = %71, %71, %71, %71, %71, %71
  call void @llvm.dbg.value(metadata i8* %72, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  %76 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1124
  call void @llvm.dbg.value(metadata i8* %76, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %76, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  %77 = load i8, i8* %76, align 1, !dbg !1118, !tbaa !1047
  %78 = icmp eq i8 %77, 0, !dbg !1119
  br i1 %78, label %81, label %71, !dbg !1120, !llvm.loop !1086

; <label>:79:                                     ; preds = %71
  store i8* %72, i8** %4, align 8, !dbg !1124, !tbaa !862
  call void @llvm.dbg.value(metadata i8* undef, metadata !1036, metadata !DIExpression()) #10, !dbg !1112
  %80 = icmp eq i8 %73, 44, !dbg !1125
  br i1 %80, label %83, label %82, !dbg !1125

; <label>:81:                                     ; preds = %75
  store i8* %76, i8** %4, align 8, !dbg !1124, !tbaa !862
  br label %83, !dbg !1120

; <label>:82:                                     ; preds = %79, %63
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #10, !dbg !1126
  br label %85

; <label>:83:                                     ; preds = %68, %79, %81
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %65, metadata !1019, metadata !DIExpression()), !dbg !1026
  %84 = icmp eq i64 %65, 0, !dbg !1127
  br i1 %84, label %85, label %86, !dbg !1129

; <label>:85:                                     ; preds = %56, %49, %60, %82, %45, %83
  br label %86, !dbg !1129

; <label>:86:                                     ; preds = %83, %85
  %87 = phi i64 [ -1, %85 ], [ %65, %83 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !1019, metadata !DIExpression()), !dbg !1026
  %88 = icmp eq i64 %46, 0, !dbg !1130
  %89 = icmp ult i64 %46, %87, !dbg !1132
  %90 = select i1 %89, i64 %46, i64 %87, !dbg !1132
  br i1 %88, label %91, label %128

; <label>:91:                                     ; preds = %86, %1
  %92 = phi i64 [ %87, %86 ], [ -1, %1 ], !dbg !1133
  %93 = phi i32 [ 1, %86 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %93, metadata !1018, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %92, metadata !1019, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %93, metadata !1134, metadata !DIExpression()) #10, !dbg !1150
  %94 = icmp eq i32 %93, 1, !dbg !1152
  br i1 %94, label %95, label %107, !dbg !1153

; <label>:95:                                     ; preds = %91
  %96 = bitcast %struct.cpu_set_t* %3 to i8*, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %96) #10, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, metadata !1160, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1174
  %97 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1175
  %98 = icmp eq i32 %97, 0, !dbg !1176
  br i1 %98, label %99, label %102, !dbg !1177

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, metadata !1160, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1174
  %100 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1178
  %101 = icmp eq i32 %100, 0, !dbg !1179
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %99, %95
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10, !dbg !1181
  %103 = call i64 @sysconf(i32 84) #10, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %103, metadata !1141, metadata !DIExpression()) #10, !dbg !1183
  %104 = icmp sgt i64 %103, 0, !dbg !1184
  br i1 %104, label %124, label %123

; <label>:105:                                    ; preds = %99
  %106 = sext i32 %100 to i64, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %106, metadata !1170, metadata !DIExpression()) #10, !dbg !1186
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %96) #10, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %106, metadata !1137, metadata !DIExpression()) #10, !dbg !1187
  br label %124, !dbg !1188

; <label>:107:                                    ; preds = %91
  %108 = tail call i64 @sysconf(i32 83) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %108, metadata !1144, metadata !DIExpression()) #10, !dbg !1190
  %109 = icmp eq i64 %108, 1, !dbg !1191
  br i1 %109, label %110, label %120, !dbg !1192

; <label>:110:                                    ; preds = %107
  %111 = bitcast %struct.cpu_set_t* %2 to i8*, !dbg !1193
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %111) #10, !dbg !1193
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, metadata !1160, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1195
  %112 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1196
  %113 = icmp eq i32 %112, 0, !dbg !1197
  br i1 %113, label %114, label %117, !dbg !1198

; <label>:114:                                    ; preds = %110
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, metadata !1160, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1195
  %115 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1199
  %116 = icmp eq i32 %115, 0, !dbg !1200
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %114, %110
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %111) #10, !dbg !1201
  br label %124, !dbg !1202

; <label>:118:                                    ; preds = %114
  %119 = sext i32 %115 to i64, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %119, metadata !1170, metadata !DIExpression()) #10, !dbg !1203
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %111) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %119, metadata !1147, metadata !DIExpression()) #10, !dbg !1204
  br label %120, !dbg !1202

; <label>:120:                                    ; preds = %118, %107
  %121 = phi i64 [ %108, %107 ], [ %119, %118 ], !dbg !1205
  call void @llvm.dbg.value(metadata i64 %121, metadata !1144, metadata !DIExpression()) #10, !dbg !1190
  %122 = icmp slt i64 %121, 1, !dbg !1206
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %120, %102
  br label %124, !dbg !1208

; <label>:124:                                    ; preds = %102, %105, %117, %120, %123
  %125 = phi i64 [ 1, %123 ], [ %103, %102 ], [ %121, %120 ], [ %106, %105 ], [ 1, %117 ], !dbg !1209
  call void @llvm.dbg.value(metadata i64 %125, metadata !1023, metadata !DIExpression()), !dbg !1210
  %126 = icmp ult i64 %125, %92, !dbg !1211
  %127 = select i1 %126, i64 %125, i64 %92, !dbg !1211
  br label %128

; <label>:128:                                    ; preds = %86, %124
  %129 = phi i64 [ %127, %124 ], [ %90, %86 ], !dbg !1212
  ret i64 %129, !dbg !1213
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()), !dbg !1219
  %2 = icmp eq i8* %0, null, !dbg !1220
  br i1 %2, label %3, label %6, !dbg !1222

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1223, !tbaa !862
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1225
  tail call void @abort() #15, !dbg !1226
  unreachable, !dbg !1226

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %7, metadata !1217, metadata !DIExpression()), !dbg !1228
  %8 = icmp eq i8* %7, null, !dbg !1229
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1230
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %10, metadata !1218, metadata !DIExpression()), !dbg !1232
  %11 = ptrtoint i8* %10 to i64, !dbg !1233
  %12 = ptrtoint i8* %0 to i64, !dbg !1233
  %13 = sub i64 %11, %12, !dbg !1233
  %14 = icmp sgt i64 %13, 6, !dbg !1235
  br i1 %14, label %15, label %24, !dbg !1236

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1237
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #14, !dbg !1238
  %18 = icmp eq i32 %17, 0, !dbg !1239
  br i1 %18, label %19, label %24, !dbg !1240

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1216, metadata !DIExpression()), !dbg !1219
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #14, !dbg !1241
  %21 = icmp eq i32 %20, 0, !dbg !1244
  br i1 %21, label %22, label %24, !dbg !1245

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %23, metadata !1216, metadata !DIExpression()), !dbg !1219
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1248, !tbaa !862
  br label %24, !dbg !1249

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1216, metadata !DIExpression()), !dbg !1219
  store i8* %25, i8** @program_name, align 8, !dbg !1250, !tbaa !862
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1251, !tbaa !862
  ret void, !dbg !1252
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1253 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1258, metadata !DIExpression()), !dbg !1261
  %2 = tail call i32* @__errno_location() #17, !dbg !1262
  %3 = load i32, i32* %2, align 4, !dbg !1262, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1263
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1264
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1264
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1264
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1265
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1260, metadata !DIExpression()), !dbg !1266
  store i32 %3, i32* %2, align 4, !dbg !1267, !tbaa !942
  ret %struct.quoting_options* %8, !dbg !1268
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1269 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1275, metadata !DIExpression()), !dbg !1276
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1277
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1277
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1278
  %5 = load i32, i32* %4, align 8, !dbg !1278, !tbaa !1279
  ret i32 %5, !dbg !1281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1282 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %1, metadata !1287, metadata !DIExpression()), !dbg !1289
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1290
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1290
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1291
  store i32 %1, i32* %5, align 8, !dbg !1292, !tbaa !1279
  ret void, !dbg !1293
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1294 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1298, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %1, metadata !1299, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i32 %2, metadata !1300, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %1, metadata !1301, metadata !DIExpression()), !dbg !1310
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1311
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1311
  %6 = lshr i8 %1, 5, !dbg !1312
  %7 = zext i8 %6 to i64, !dbg !1312
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1313
  call void @llvm.dbg.value(metadata i32* %8, metadata !1303, metadata !DIExpression()), !dbg !1314
  %9 = and i8 %1, 31, !dbg !1315
  %10 = zext i8 %9 to i32, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %10, metadata !1305, metadata !DIExpression()), !dbg !1316
  %11 = load i32, i32* %8, align 4, !dbg !1317, !tbaa !942
  %12 = lshr i32 %11, %10, !dbg !1318
  %13 = and i32 %12, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %13, metadata !1306, metadata !DIExpression()), !dbg !1320
  %14 = and i32 %2, 1, !dbg !1321
  %15 = xor i32 %13, %14, !dbg !1322
  %16 = shl i32 %15, %10, !dbg !1323
  %17 = xor i32 %16, %11, !dbg !1324
  store i32 %17, i32* %8, align 4, !dbg !1324, !tbaa !942
  ret i32 %13, !dbg !1325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1326 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %1, metadata !1331, metadata !DIExpression()), !dbg !1334
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1335
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1337
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1330, metadata !DIExpression()), !dbg !1333
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1338
  %6 = load i32, i32* %5, align 4, !dbg !1338, !tbaa !1339
  call void @llvm.dbg.value(metadata i32 %6, metadata !1332, metadata !DIExpression()), !dbg !1340
  store i32 %1, i32* %5, align 4, !dbg !1341, !tbaa !1339
  ret i32 %6, !dbg !1342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1343 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1347, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()), !dbg !1352
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1353
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()), !dbg !1350
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1356
  store i32 10, i32* %6, align 8, !dbg !1357, !tbaa !1279
  %7 = icmp ne i8* %1, null, !dbg !1358
  %8 = icmp ne i8* %2, null, !dbg !1360
  %9 = and i1 %7, %8, !dbg !1361
  br i1 %9, label %11, label %10, !dbg !1361

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1362
  unreachable, !dbg !1362

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1363
  store i8* %1, i8** %12, align 8, !dbg !1364, !tbaa !1365
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1366
  store i8* %2, i8** %13, align 8, !dbg !1367, !tbaa !1368
  ret void, !dbg !1369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1374, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %1, metadata !1375, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %2, metadata !1376, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %3, metadata !1377, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1378, metadata !DIExpression()), !dbg !1386
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1387
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1379, metadata !DIExpression()), !dbg !1388
  %8 = tail call i32* @__errno_location() #17, !dbg !1389
  %9 = load i32, i32* %8, align 4, !dbg !1389, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %9, metadata !1380, metadata !DIExpression()), !dbg !1390
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1391
  %11 = load i32, i32* %10, align 8, !dbg !1391, !tbaa !1279
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1392
  %13 = load i32, i32* %12, align 4, !dbg !1392, !tbaa !1339
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1393
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1394
  %16 = load i8*, i8** %15, align 8, !dbg !1394, !tbaa !1365
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1395
  %18 = load i8*, i8** %17, align 8, !dbg !1395, !tbaa !1368
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %19, metadata !1381, metadata !DIExpression()), !dbg !1397
  store i32 %9, i32* %8, align 4, !dbg !1398, !tbaa !942
  ret i64 %19, !dbg !1399
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1400 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %1, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %2, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %3, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %4, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %5, metadata !1411, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32* %6, metadata !1412, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %7, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %8, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* null, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1483
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1484
  %14 = icmp eq i64 %13, 1, !dbg !1485
  %15 = lshr i32 %5, 1, !dbg !1486
  %16 = trunc i32 %15 to i8, !dbg !1486
  %17 = and i8 %16, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i8 %17, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 0, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, metadata !1425, metadata !DIExpression()), !dbg !1489
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1490

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1480
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1481
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1482
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1483
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1491
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1487
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1488
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1489
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %39, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %38, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %37, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %35, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %34, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %33, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %32, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %31, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %30, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %29, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %28, metadata !1410, metadata !DIExpression()), !dbg !1474
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1493

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8 1, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  br label %93, !dbg !1494

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  %43 = and i8 %36, 1, !dbg !1495
  %44 = icmp eq i8 %43, 0, !dbg !1495
  br i1 %44, label %45, label %93, !dbg !1494

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1497
  br i1 %46, label %93, label %47, !dbg !1500

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1497, !tbaa !1047
  br label %93, !dbg !1497

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1501
  call void @llvm.dbg.value(metadata i8* %49, metadata !1413, metadata !DIExpression()), !dbg !1477
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %50, metadata !1414, metadata !DIExpression()), !dbg !1478
  br label %51, !dbg !1506

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %52, metadata !1413, metadata !DIExpression()), !dbg !1477
  %54 = and i8 %36, 1, !dbg !1507
  %55 = icmp eq i8 %54, 0, !dbg !1507
  br i1 %55, label %56, label %71, !dbg !1509

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  %57 = load i8, i8* %52, align 1, !dbg !1510, !tbaa !1047
  %58 = icmp eq i8 %57, 0, !dbg !1513
  br i1 %58, label %71, label %59, !dbg !1513

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %62, metadata !1416, metadata !DIExpression()), !dbg !1479
  %63 = icmp ult i64 %62, %40, !dbg !1514
  br i1 %63, label %64, label %66, !dbg !1517

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1514
  store i8 %60, i8* %65, align 1, !dbg !1514, !tbaa !1047
  br label %66, !dbg !1514

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1517
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %68, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %67, metadata !1416, metadata !DIExpression()), !dbg !1479
  %69 = load i8, i8* %68, align 1, !dbg !1510, !tbaa !1047
  %70 = icmp eq i8 %69, 0, !dbg !1513
  br i1 %70, label %71, label %59, !dbg !1513, !llvm.loop !1519

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %72, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %53, metadata !1418, metadata !DIExpression()), !dbg !1481
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %73, metadata !1419, metadata !DIExpression()), !dbg !1482
  br label %93, !dbg !1522

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1483
  br label %75, !dbg !1523

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1491
  call void @llvm.dbg.value(metadata i8 %76, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 1, metadata !1422, metadata !DIExpression()), !dbg !1486
  br label %77, !dbg !1524

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1483
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1491
  call void @llvm.dbg.value(metadata i8 %79, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %78, metadata !1420, metadata !DIExpression()), !dbg !1483
  %80 = and i8 %79, 1, !dbg !1525
  %81 = icmp eq i8 %80, 0, !dbg !1525
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1527
  br label %83, !dbg !1527

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1528
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1486
  call void @llvm.dbg.value(metadata i8 %85, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %84, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  %86 = and i8 %85, 1, !dbg !1529
  %87 = icmp eq i8 %86, 0, !dbg !1529
  br i1 %87, label %88, label %93, !dbg !1531

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1532
  br i1 %89, label %93, label %90, !dbg !1535

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1532, !tbaa !1047
  br label %93, !dbg !1532

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1422, metadata !DIExpression()), !dbg !1486
  br label %93, !dbg !1536

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1537
  unreachable, !dbg !1537

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1479
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], !dbg !1491
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1491
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1491
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %101, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %99, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %97, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 0, metadata !1415, metadata !DIExpression()), !dbg !1539
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1540

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1541
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1479
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1480
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1487
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1488
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1489
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %122, metadata !1415, metadata !DIExpression()), !dbg !1539
  %130 = icmp eq i64 %125, -1, !dbg !1542
  br i1 %130, label %131, label %135, !dbg !1543

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1544
  %133 = load i8, i8* %132, align 1, !dbg !1544, !tbaa !1047
  %134 = icmp eq i8 %133, 0, !dbg !1545
  br i1 %134, label %617, label %137, !dbg !1546

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1547
  br i1 %136, label %617, label %137, !dbg !1546

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %107, label %138, label %153, !dbg !1551

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1553
  %140 = and i1 %108, %130, !dbg !1554
  br i1 %140, label %141, label %143, !dbg !1554

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %142, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %143, !dbg !1556

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1409, metadata !DIExpression()), !dbg !1473
  %145 = icmp ugt i64 %139, %144, !dbg !1557
  br i1 %145, label %153, label %146, !dbg !1558

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1559
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1560
  %149 = icmp ne i32 %148, 0, !dbg !1561
  %150 = or i1 %149, %110, !dbg !1562
  %151 = xor i1 %149, true, !dbg !1562
  %152 = zext i1 %151 to i8, !dbg !1562
  br i1 %150, label %153, label %661, !dbg !1562

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1563
  call void @llvm.dbg.value(metadata i8 %155, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %154, metadata !1409, metadata !DIExpression()), !dbg !1473
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1564
  %157 = load i8, i8* %156, align 1, !dbg !1564, !tbaa !1047
  call void @llvm.dbg.value(metadata i8 %157, metadata !1426, metadata !DIExpression()), !dbg !1565
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1566

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1567

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1568

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %161 = and i8 %126, 1, !dbg !1572
  %162 = icmp eq i8 %161, 0, !dbg !1572
  %163 = and i1 %114, %162, !dbg !1572
  br i1 %163, label %164, label %180, !dbg !1572

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1574
  br i1 %165, label %166, label %168, !dbg !1578

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1574
  store i8 39, i8* %167, align 1, !dbg !1574, !tbaa !1047
  br label %168, !dbg !1574

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %169, metadata !1416, metadata !DIExpression()), !dbg !1479
  %170 = icmp ult i64 %169, %129, !dbg !1579
  br i1 %170, label %171, label %173, !dbg !1582

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1579
  store i8 36, i8* %172, align 1, !dbg !1579, !tbaa !1047
  br label %173, !dbg !1579

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %174, metadata !1416, metadata !DIExpression()), !dbg !1479
  %175 = icmp ult i64 %174, %129, !dbg !1583
  br i1 %175, label %176, label %178, !dbg !1586

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1583
  store i8 39, i8* %177, align 1, !dbg !1583, !tbaa !1047
  br label %178, !dbg !1583

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %179, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %180, !dbg !1587

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1538
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %182, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %181, metadata !1416, metadata !DIExpression()), !dbg !1479
  %183 = icmp ult i64 %181, %129, !dbg !1588
  br i1 %183, label %184, label %186, !dbg !1591

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1588
  store i8 92, i8* %185, align 1, !dbg !1588, !tbaa !1047
  br label %186, !dbg !1588

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %187, metadata !1416, metadata !DIExpression()), !dbg !1479
  br i1 %104, label %188, label %478, !dbg !1592

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1594
  %190 = icmp ult i64 %189, %154, !dbg !1595
  br i1 %190, label %191, label %467, !dbg !1596

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1597
  %193 = load i8, i8* %192, align 1, !dbg !1597, !tbaa !1047
  %194 = add i8 %193, -48, !dbg !1598
  %195 = icmp ult i8 %194, 10, !dbg !1598
  br i1 %195, label %196, label %467, !dbg !1598

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1599
  br i1 %197, label %198, label %200, !dbg !1603

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1599
  store i8 48, i8* %199, align 1, !dbg !1599, !tbaa !1047
  br label %200, !dbg !1599

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %201, metadata !1416, metadata !DIExpression()), !dbg !1479
  %202 = icmp ult i64 %201, %129, !dbg !1604
  br i1 %202, label %203, label %205, !dbg !1607

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1604
  store i8 48, i8* %204, align 1, !dbg !1604, !tbaa !1047
  br label %205, !dbg !1604

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %206, metadata !1416, metadata !DIExpression()), !dbg !1479
  br label %467, !dbg !1608

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1609

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1610

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1611

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1613

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1615
  %213 = icmp ult i64 %212, %154, !dbg !1616
  br i1 %213, label %214, label %467, !dbg !1617

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1618
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1619
  %217 = load i8, i8* %216, align 1, !dbg !1619, !tbaa !1047
  %218 = icmp eq i8 %217, 63, !dbg !1620
  br i1 %218, label %219, label %467, !dbg !1621

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1622
  %221 = load i8, i8* %220, align 1, !dbg !1622, !tbaa !1047
  %222 = sext i8 %221 to i32, !dbg !1622
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1623

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1624

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %212, metadata !1415, metadata !DIExpression()), !dbg !1539
  %225 = icmp ult i64 %123, %129, !dbg !1626
  br i1 %225, label %226, label %228, !dbg !1629

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1626
  store i8 63, i8* %227, align 1, !dbg !1626, !tbaa !1047
  br label %228, !dbg !1626

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %229, metadata !1416, metadata !DIExpression()), !dbg !1479
  %230 = icmp ult i64 %229, %129, !dbg !1630
  br i1 %230, label %231, label %233, !dbg !1633

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1630
  store i8 34, i8* %232, align 1, !dbg !1630, !tbaa !1047
  br label %233, !dbg !1630

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %234, metadata !1416, metadata !DIExpression()), !dbg !1479
  %235 = icmp ult i64 %234, %129, !dbg !1634
  br i1 %235, label %236, label %238, !dbg !1637

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1634
  store i8 34, i8* %237, align 1, !dbg !1634, !tbaa !1047
  br label %238, !dbg !1634

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %239, metadata !1416, metadata !DIExpression()), !dbg !1479
  %240 = icmp ult i64 %239, %129, !dbg !1638
  br i1 %240, label %241, label %243, !dbg !1641

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1638
  store i8 63, i8* %242, align 1, !dbg !1638, !tbaa !1047
  br label %243, !dbg !1638

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %244, metadata !1416, metadata !DIExpression()), !dbg !1479
  br label %467, !dbg !1642

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1644

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1645

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %253, !dbg !1646

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %253, !dbg !1647

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1648

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %114, label %251, label %252, !dbg !1649

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1650

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1653

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %254, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %113, label %255, label %661, !dbg !1656

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %256, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %103, label %524, label %478, !dbg !1658

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1659
  br i1 %258, label %259, label %264, !dbg !1661

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1662, !tbaa !1047
  %261 = icmp ne i8 %260, 0, !dbg !1663
  %262 = icmp ne i64 %122, 0, !dbg !1664
  %263 = or i1 %262, %261, !dbg !1666
  br i1 %263, label %467, label %270, !dbg !1666

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1667
  %266 = icmp ne i64 %122, 0, !dbg !1664
  %267 = or i1 %266, %265, !dbg !1661
  br i1 %267, label %467, label %270, !dbg !1661

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1664
  br i1 %269, label %270, label %467, !dbg !1668

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1433, metadata !DIExpression()), !dbg !1550
  br label %271, !dbg !1669

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %272, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %113, label %467, label %661, !dbg !1670

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %114, label %274, label %467, !dbg !1672

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1673

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1676
  %277 = icmp ne i64 %124, 0, !dbg !1678
  %278 = or i1 %277, %276, !dbg !1679
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1679
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %280, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %279, metadata !1417, metadata !DIExpression()), !dbg !1480
  %281 = icmp ult i64 %123, %280, !dbg !1680
  br i1 %281, label %282, label %284, !dbg !1683

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1680
  store i8 39, i8* %283, align 1, !dbg !1680, !tbaa !1047
  br label %284, !dbg !1680

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %285, metadata !1416, metadata !DIExpression()), !dbg !1479
  %286 = icmp ult i64 %285, %280, !dbg !1684
  br i1 %286, label %287, label %289, !dbg !1687

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1684
  store i8 92, i8* %288, align 1, !dbg !1684, !tbaa !1047
  br label %289, !dbg !1684

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %290, metadata !1416, metadata !DIExpression()), !dbg !1479
  %291 = icmp ult i64 %290, %280, !dbg !1688
  br i1 %291, label %292, label %294, !dbg !1691

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1688
  store i8 39, i8* %293, align 1, !dbg !1688, !tbaa !1047
  br label %294, !dbg !1688

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %295, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %467, !dbg !1692

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1693

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1434, metadata !DIExpression()), !dbg !1694
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1695
  %299 = load i16*, i16** %298, align 8, !dbg !1695, !tbaa !862
  %300 = zext i8 %157 to i64, !dbg !1695
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1695
  %302 = load i16, i16* %301, align 2, !dbg !1695, !tbaa !1697
  %303 = lshr i16 %302, 14, !dbg !1699
  %304 = trunc i16 %303 to i8, !dbg !1699
  %305 = and i8 %304, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i8 %305, metadata !1437, metadata !DIExpression()), !dbg !1700
  br label %359, !dbg !1701

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1702
  store i64 0, i64* %10, align 8, !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 1, metadata !1437, metadata !DIExpression()), !dbg !1700
  %307 = icmp eq i64 %154, -1, !dbg !1704
  br i1 %307, label %308, label %310, !dbg !1706

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %309, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %310, !dbg !1708

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1709
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %312, !dbg !1710

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1711
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1712
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1713
  %315 = add i64 %313, %122, !dbg !1714
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1715
  %317 = sub i64 %311, %315, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1438, metadata !DIExpression(DW_OP_deref)), !dbg !1717
  call void @llvm.dbg.value(metadata i32* %12, metadata !1456, metadata !DIExpression(DW_OP_deref)), !dbg !1718
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %318, metadata !1459, metadata !DIExpression()), !dbg !1720
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1721

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  %320 = icmp ugt i64 %311, %315, !dbg !1722
  br i1 %320, label %321, label %344, !dbg !1724

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1434, metadata !DIExpression()), !dbg !1694
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1725
  %325 = load i8, i8* %324, align 1, !dbg !1725, !tbaa !1047
  %326 = icmp eq i8 %325, 0, !dbg !1724
  br i1 %326, label %344, label %327, !dbg !1726

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %328, metadata !1434, metadata !DIExpression()), !dbg !1694
  %329 = add i64 %328, %122, !dbg !1728
  %330 = icmp ult i64 %329, %311, !dbg !1722
  br i1 %330, label %321, label %344, !dbg !1724, !llvm.loop !1729

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1730
  %333 = and i1 %116, %332, !dbg !1733
  call void @llvm.dbg.value(metadata i64 1, metadata !1460, metadata !DIExpression()), !dbg !1734
  br i1 %333, label %334, label %347, !dbg !1733

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1460, metadata !DIExpression()), !dbg !1734
  %336 = add i64 %335, %315, !dbg !1735
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1736
  %338 = load i8, i8* %337, align 1, !dbg !1736, !tbaa !1047
  %339 = sext i8 %338 to i32, !dbg !1736
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1737

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %341, metadata !1460, metadata !DIExpression()), !dbg !1734
  %342 = icmp ult i64 %341, %318, !dbg !1730
  br i1 %342, label %334, label %347, !dbg !1739, !llvm.loop !1740

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1700
  br label %344, !dbg !1742

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1742
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1743, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %348, metadata !1456, metadata !DIExpression()), !dbg !1718
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1745
  %350 = icmp eq i32 %349, 0, !dbg !1745
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1746
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1700
  %352 = add i64 %318, %313, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1742
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1438, metadata !DIExpression(DW_OP_deref)), !dbg !1717
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1748
  %354 = icmp eq i32 %353, 0, !dbg !1749
  br i1 %354, label %312, label %355, !dbg !1750, !llvm.loop !1751

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1753
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1753
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1754
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1755
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1755
  call void @llvm.dbg.value(metadata i8 %362, metadata !1437, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %361, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %360, metadata !1409, metadata !DIExpression()), !dbg !1473
  %363 = and i8 %362, 1, !dbg !1756
  %364 = icmp ne i8 %363, 0, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %363, metadata !1433, metadata !DIExpression()), !dbg !1550
  %365 = icmp ult i64 %361, 2, !dbg !1757
  %366 = or i1 %364, %115, !dbg !1758
  %367 = and i1 %365, %366, !dbg !1759
  br i1 %367, label %467, label %368, !dbg !1759

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %369, metadata !1467, metadata !DIExpression()), !dbg !1761
  br label %370, !dbg !1762

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1763
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1767
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1487
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1763
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1769
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %376, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %375, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %374, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %373, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %372, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %371, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %366, label %423, label %377, !dbg !1773

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1774

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %379 = and i8 %373, 1, !dbg !1777
  %380 = icmp eq i8 %379, 0, !dbg !1777
  %381 = and i1 %114, %380, !dbg !1777
  br i1 %381, label %382, label %398, !dbg !1777

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1779
  br i1 %383, label %384, label %386, !dbg !1783

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1779
  store i8 39, i8* %385, align 1, !dbg !1779, !tbaa !1047
  br label %386, !dbg !1779

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %387, metadata !1416, metadata !DIExpression()), !dbg !1479
  %388 = icmp ult i64 %387, %129, !dbg !1784
  br i1 %388, label %389, label %391, !dbg !1787

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1784
  store i8 36, i8* %390, align 1, !dbg !1784, !tbaa !1047
  br label %391, !dbg !1784

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %392, metadata !1416, metadata !DIExpression()), !dbg !1479
  %393 = icmp ult i64 %392, %129, !dbg !1788
  br i1 %393, label %394, label %396, !dbg !1791

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1788
  store i8 39, i8* %395, align 1, !dbg !1788, !tbaa !1047
  br label %396, !dbg !1788

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %397, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %398, !dbg !1792

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1538
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %400, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %399, metadata !1416, metadata !DIExpression()), !dbg !1479
  %401 = icmp ult i64 %399, %129, !dbg !1793
  br i1 %401, label %402, label %404, !dbg !1796

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1793
  store i8 92, i8* %403, align 1, !dbg !1793, !tbaa !1047
  br label %404, !dbg !1793

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %405, metadata !1416, metadata !DIExpression()), !dbg !1479
  %406 = icmp ult i64 %405, %129, !dbg !1797
  br i1 %406, label %407, label %411, !dbg !1800

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1797
  %409 = or i8 %408, 48, !dbg !1797
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1797
  store i8 %409, i8* %410, align 1, !dbg !1797, !tbaa !1047
  br label %411, !dbg !1797

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %412, metadata !1416, metadata !DIExpression()), !dbg !1479
  %413 = icmp ult i64 %412, %129, !dbg !1801
  br i1 %413, label %414, label %419, !dbg !1804

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1801
  %416 = and i8 %415, 7, !dbg !1801
  %417 = or i8 %416, 48, !dbg !1801
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1801
  store i8 %417, i8* %418, align 1, !dbg !1801, !tbaa !1047
  br label %419, !dbg !1801

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %420, metadata !1416, metadata !DIExpression()), !dbg !1479
  %421 = and i8 %374, 7, !dbg !1805
  %422 = or i8 %421, 48, !dbg !1806
  call void @llvm.dbg.value(metadata i8 %422, metadata !1426, metadata !DIExpression()), !dbg !1565
  br label %432, !dbg !1807

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1808
  %425 = icmp eq i8 %424, 0, !dbg !1808
  br i1 %425, label %432, label %426, !dbg !1809

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1810
  br i1 %427, label %428, label %430, !dbg !1813

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1810
  store i8 92, i8* %429, align 1, !dbg !1810, !tbaa !1047
  br label %430, !dbg !1810

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %431, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1431, metadata !DIExpression()), !dbg !1548
  br label %432, !dbg !1814

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1815
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1487
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1816
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1817
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1819
  call void @llvm.dbg.value(metadata i8 %437, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %436, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %435, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %434, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %433, metadata !1416, metadata !DIExpression()), !dbg !1479
  %438 = add i64 %371, 1, !dbg !1820
  %439 = icmp ugt i64 %369, %438, !dbg !1822
  br i1 %439, label %440, label %562, !dbg !1823

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1824
  %442 = icmp ne i8 %441, 0, !dbg !1824
  %443 = and i8 %437, 1, !dbg !1824
  %444 = icmp eq i8 %443, 0, !dbg !1824
  %445 = and i1 %442, %444, !dbg !1824
  br i1 %445, label %446, label %457, !dbg !1824

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1827
  br i1 %447, label %448, label %450, !dbg !1831

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1827
  store i8 39, i8* %449, align 1, !dbg !1827, !tbaa !1047
  br label %450, !dbg !1827

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %451, metadata !1416, metadata !DIExpression()), !dbg !1479
  %452 = icmp ult i64 %451, %129, !dbg !1832
  br i1 %452, label %453, label %455, !dbg !1835

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1832
  store i8 39, i8* %454, align 1, !dbg !1832, !tbaa !1047
  br label %455, !dbg !1832

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %456, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %457, !dbg !1836

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1837
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %459, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %458, metadata !1416, metadata !DIExpression()), !dbg !1479
  %460 = icmp ult i64 %458, %129, !dbg !1838
  br i1 %460, label %461, label %463, !dbg !1840

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1838
  store i8 %435, i8* %462, align 1, !dbg !1838, !tbaa !1047
  br label %463, !dbg !1838

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %464, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %438, metadata !1415, metadata !DIExpression()), !dbg !1539
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1841
  %466 = load i8, i8* %465, align 1, !dbg !1841, !tbaa !1047
  call void @llvm.dbg.value(metadata i8 %466, metadata !1426, metadata !DIExpression()), !dbg !1565
  br label %370, !dbg !1842, !llvm.loop !1843

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1846
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1538
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1480
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1847
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1538
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1538
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1563
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1563
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1563
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %476, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %475, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %155, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %474, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %473, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %472, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %471, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %470, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %469, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %468, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %105, label %489, label %478, !dbg !1848

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !1850

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1851

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !1852
  %502 = zext i8 %501 to i64, !dbg !1852
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1853
  %504 = load i32, i32* %503, align 4, !dbg !1853, !tbaa !942
  %505 = and i8 %494, 31, !dbg !1854
  %506 = zext i8 %505 to i32, !dbg !1854
  %507 = shl i32 1, %506, !dbg !1855
  %508 = and i32 %504, %507, !dbg !1855
  %509 = icmp eq i32 %508, 0, !dbg !1855
  %510 = icmp eq i8 %155, 0, !dbg !1856
  %511 = and i1 %510, %509, !dbg !1857
  br i1 %511, label %562, label %524, !dbg !1857

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !1856
  br i1 %523, label %562, label %524, !dbg !1858

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1859
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1538
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1480
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1847
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1487
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1488
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1860
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1563
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %532, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %531, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %530, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %529, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %528, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %527, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %526, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %525, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %110, label %534, label %661, !dbg !1863

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %535 = and i8 %529, 1, !dbg !1865
  %536 = icmp eq i8 %535, 0, !dbg !1865
  %537 = and i1 %114, %536, !dbg !1865
  br i1 %537, label %538, label %554, !dbg !1865

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1867
  br i1 %539, label %540, label %542, !dbg !1871

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1867
  store i8 39, i8* %541, align 1, !dbg !1867, !tbaa !1047
  br label %542, !dbg !1867

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %543, metadata !1416, metadata !DIExpression()), !dbg !1479
  %544 = icmp ult i64 %543, %533, !dbg !1872
  br i1 %544, label %545, label %547, !dbg !1875

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1872
  store i8 36, i8* %546, align 1, !dbg !1872, !tbaa !1047
  br label %547, !dbg !1872

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %548, metadata !1416, metadata !DIExpression()), !dbg !1479
  %549 = icmp ult i64 %548, %533, !dbg !1876
  br i1 %549, label %550, label %552, !dbg !1879

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1876
  store i8 39, i8* %551, align 1, !dbg !1876, !tbaa !1047
  br label %552, !dbg !1876

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %553, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %554, !dbg !1880

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1837
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %556, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %555, metadata !1416, metadata !DIExpression()), !dbg !1479
  %557 = icmp ult i64 %555, %533, !dbg !1881
  br i1 %557, label %558, label %560, !dbg !1884

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1881
  store i8 92, i8* %559, align 1, !dbg !1881, !tbaa !1047
  br label %560, !dbg !1881

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %561, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %572, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %571, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %570, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %569, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %568, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %567, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %566, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %565, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %564, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %563, metadata !1415, metadata !DIExpression()), !dbg !1539
  br label %589, !dbg !1885

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1859
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1538
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1480
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1847
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1487
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1488
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1888
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1563
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1563
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %571, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %570, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %569, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %568, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %567, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %566, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %565, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %564, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %563, metadata !1415, metadata !DIExpression()), !dbg !1539
  %573 = and i8 %567, 1, !dbg !1885
  %574 = icmp ne i8 %573, 0, !dbg !1885
  %575 = and i8 %570, 1, !dbg !1885
  %576 = icmp eq i8 %575, 0, !dbg !1885
  %577 = and i1 %574, %576, !dbg !1885
  br i1 %577, label %578, label %589, !dbg !1885

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1889
  br i1 %579, label %580, label %582, !dbg !1893

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1889
  store i8 39, i8* %581, align 1, !dbg !1889, !tbaa !1047
  br label %582, !dbg !1889

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %583, metadata !1416, metadata !DIExpression()), !dbg !1479
  %584 = icmp ult i64 %583, %572, !dbg !1894
  br i1 %584, label %585, label %587, !dbg !1897

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1894
  store i8 39, i8* %586, align 1, !dbg !1894, !tbaa !1047
  br label %587, !dbg !1894

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %588, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %589, !dbg !1898

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1837
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %598, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %597, metadata !1416, metadata !DIExpression()), !dbg !1479
  %599 = icmp ult i64 %597, %590, !dbg !1899
  br i1 %599, label %600, label %602, !dbg !1902

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1899
  store i8 %592, i8* %601, align 1, !dbg !1899, !tbaa !1047
  br label %602, !dbg !1899

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %603, metadata !1416, metadata !DIExpression()), !dbg !1479
  %604 = and i8 %591, 1, !dbg !1903
  %605 = icmp eq i8 %604, 0, !dbg !1903
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %606, metadata !1425, metadata !DIExpression()), !dbg !1489
  br label %607, !dbg !1906

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1859
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1538
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1480
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1847
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1487
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1538
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1489
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %614, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %613, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %612, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %611, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %610, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %609, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %608, metadata !1415, metadata !DIExpression()), !dbg !1539
  %616 = add i64 %608, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %616, metadata !1415, metadata !DIExpression()), !dbg !1539
  br label %121, !dbg !1908, !llvm.loop !1909

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  %619 = icmp eq i64 %123, 0, !dbg !1911
  %620 = and i1 %114, %619, !dbg !1913
  %621 = xor i1 %620, true, !dbg !1913
  %622 = or i1 %110, %621, !dbg !1913
  br i1 %622, label %623, label %661, !dbg !1913

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1914
  %625 = xor i1 %624, true, !dbg !1914
  %626 = and i8 %127, 1, !dbg !1916
  %627 = icmp eq i8 %626, 0, !dbg !1916
  %628 = or i1 %627, %625, !dbg !1914
  br i1 %628, label %638, label %629, !dbg !1914

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1917
  %631 = icmp eq i8 %630, 0, !dbg !1917
  br i1 %631, label %634, label %632, !dbg !1920

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1921
  br label %671, !dbg !1922

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1923
  %636 = icmp ne i64 %124, 0, !dbg !1925
  %637 = and i1 %636, %635, !dbg !1926
  br i1 %637, label %27, label %638, !dbg !1926

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  %639 = icmp ne i8* %98, null, !dbg !1927
  %640 = and i1 %639, %110, !dbg !1929
  br i1 %640, label %641, label %656, !dbg !1929

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  %642 = load i8, i8* %98, align 1, !dbg !1930, !tbaa !1047
  %643 = icmp eq i8 %642, 0, !dbg !1933
  br i1 %643, label %656, label %644, !dbg !1933

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %647, metadata !1416, metadata !DIExpression()), !dbg !1479
  %648 = icmp ult i64 %647, %129, !dbg !1934
  br i1 %648, label %649, label %651, !dbg !1937

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1934
  store i8 %645, i8* %650, align 1, !dbg !1934, !tbaa !1047
  br label %651, !dbg !1934

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1937
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %653, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %652, metadata !1416, metadata !DIExpression()), !dbg !1479
  %654 = load i8, i8* %653, align 1, !dbg !1930, !tbaa !1047
  %655 = icmp eq i8 %654, 0, !dbg !1933
  br i1 %655, label %656, label %644, !dbg !1933, !llvm.loop !1939

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %657, metadata !1416, metadata !DIExpression()), !dbg !1479
  %658 = icmp ult i64 %657, %129, !dbg !1941
  br i1 %658, label %659, label %671, !dbg !1943

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1944
  store i8 0, i8* %660, align 1, !dbg !1945, !tbaa !1047
  br label %671, !dbg !1944

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %663, metadata !1409, metadata !DIExpression()), !dbg !1473
  %665 = icmp ne i32 %662, 2, !dbg !1946
  %666 = icmp eq i8 %102, 0, !dbg !1948
  %667 = or i1 %665, %666, !dbg !1949
  call void @llvm.dbg.value(metadata i32 4, metadata !1410, metadata !DIExpression()), !dbg !1474
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %668, metadata !1410, metadata !DIExpression()), !dbg !1474
  %669 = and i32 %5, -3, !dbg !1950
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1951
  br label %671, !dbg !1952

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1953
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %1, metadata !1959, metadata !DIExpression()), !dbg !1963
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %3, metadata !1960, metadata !DIExpression()), !dbg !1965
  %4 = icmp eq i8* %3, %0, !dbg !1966
  br i1 %4, label %5, label %71, !dbg !1968

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1969
  call void @llvm.dbg.value(metadata i8* %6, metadata !1961, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %6, metadata !1971, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* null, metadata !1977, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 85, metadata !1978, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 84, metadata !1979, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 70, metadata !1980, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i8 45, metadata !1981, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 56, metadata !1982, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !1999
  %7 = load i8, i8* %6, align 1, !dbg !2000, !tbaa !1047
  %8 = and i8 %7, -33, !dbg !2000
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2000

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2002, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8* null, metadata !2007, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 84, metadata !2008, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 70, metadata !2009, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 45, metadata !2010, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 56, metadata !2011, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2028
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2029
  %11 = load i8, i8* %10, align 1, !dbg !2029, !tbaa !1047
  %12 = and i8 %11, -33, !dbg !2029
  %13 = icmp eq i8 %12, 84, !dbg !2029
  br i1 %13, label %14, label %68, !dbg !2029

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2031, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* null, metadata !2036, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 70, metadata !2037, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 45, metadata !2038, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 56, metadata !2039, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2055
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2056
  %16 = load i8, i8* %15, align 1, !dbg !2056, !tbaa !1047
  %17 = and i8 %16, -33, !dbg !2056
  %18 = icmp eq i8 %17, 70, !dbg !2056
  br i1 %18, label %19, label %68, !dbg !2056

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2058, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* null, metadata !2063, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 45, metadata !2064, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 56, metadata !2065, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2080
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2081
  %21 = load i8, i8* %20, align 1, !dbg !2081, !tbaa !1047
  %22 = icmp eq i8 %21, 45, !dbg !2081
  br i1 %22, label %23, label %68, !dbg !2083

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2084, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* null, metadata !2089, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 56, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2104
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2105
  %25 = load i8, i8* %24, align 1, !dbg !2105, !tbaa !1047
  %26 = icmp eq i8 %25, 56, !dbg !2105
  br i1 %26, label %27, label %68, !dbg !2107

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2108, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* null, metadata !2113, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 0, metadata !2117, metadata !DIExpression()), !dbg !2126
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2127
  %29 = load i8, i8* %28, align 1, !dbg !2127, !tbaa !1047
  %30 = icmp eq i8 %29, 0, !dbg !2127
  br i1 %30, label %31, label %68, !dbg !2129

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2130, !tbaa !1047
  %33 = icmp eq i8 %32, 96, !dbg !2131
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !2130
  br label %71, !dbg !2132

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2002, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* null, metadata !2007, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 66, metadata !2008, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 49, metadata !2009, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 56, metadata !2010, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 48, metadata !2011, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 51, metadata !2012, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 48, metadata !2013, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2145
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2146
  %37 = load i8, i8* %36, align 1, !dbg !2146, !tbaa !1047
  %38 = and i8 %37, -33, !dbg !2146
  %39 = icmp eq i8 %38, 66, !dbg !2146
  br i1 %39, label %40, label %68, !dbg !2146

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2031, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* null, metadata !2036, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 49, metadata !2037, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 56, metadata !2038, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 48, metadata !2039, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 51, metadata !2040, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 48, metadata !2041, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2156
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2157
  %42 = load i8, i8* %41, align 1, !dbg !2157, !tbaa !1047
  %43 = icmp eq i8 %42, 49, !dbg !2157
  br i1 %43, label %44, label %68, !dbg !2158

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2058, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* null, metadata !2063, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 56, metadata !2064, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 48, metadata !2065, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 51, metadata !2066, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2067, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2167
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2168
  %46 = load i8, i8* %45, align 1, !dbg !2168, !tbaa !1047
  %47 = icmp eq i8 %46, 56, !dbg !2168
  br i1 %47, label %48, label %68, !dbg !2169

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2084, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* null, metadata !2089, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 48, metadata !2090, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 51, metadata !2091, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 48, metadata !2092, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2177
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2178
  %50 = load i8, i8* %49, align 1, !dbg !2178, !tbaa !1047
  %51 = icmp eq i8 %50, 48, !dbg !2178
  br i1 %51, label %52, label %68, !dbg !2179

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2108, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* null, metadata !2113, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 51, metadata !2114, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 48, metadata !2115, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 0, metadata !2117, metadata !DIExpression()), !dbg !2186
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2187
  %54 = load i8, i8* %53, align 1, !dbg !2187, !tbaa !1047
  %55 = icmp eq i8 %54, 51, !dbg !2187
  br i1 %55, label %56, label %68, !dbg !2188

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* null, metadata !2194, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 48, metadata !2195, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2205
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2206
  %58 = load i8, i8* %57, align 1, !dbg !2206, !tbaa !1047
  %59 = icmp eq i8 %58, 48, !dbg !2206
  br i1 %59, label %60, label %68, !dbg !2208

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2209, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* null, metadata !2214, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2223
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2224
  %62 = load i8, i8* %61, align 1, !dbg !2224, !tbaa !1047
  %63 = icmp eq i8 %62, 0, !dbg !2224
  br i1 %63, label %64, label %68, !dbg !2226

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2227, !tbaa !1047
  %66 = icmp eq i8 %65, 96, !dbg !2228
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2227
  br label %71, !dbg !2229

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2230
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2231
  br label %71, !dbg !2232

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2233
  ret i8* %72, !dbg !2234
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %1, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %1, metadata !2250, metadata !DIExpression()) #10, !dbg !2260
  call void @llvm.dbg.value(metadata i64* null, metadata !2251, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2252, metadata !DIExpression()) #10, !dbg !2262
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2263
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2253, metadata !DIExpression()) #10, !dbg !2264
  %6 = tail call i32* @__errno_location() #17, !dbg !2265
  %7 = load i32, i32* %6, align 4, !dbg !2265, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %7, metadata !2254, metadata !DIExpression()) #10, !dbg !2266
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2267
  %9 = load i32, i32* %8, align 4, !dbg !2267, !tbaa !1339
  %10 = or i32 %9, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %10, metadata !2255, metadata !DIExpression()) #10, !dbg !2269
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2270
  %12 = load i32, i32* %11, align 8, !dbg !2270, !tbaa !1279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2271
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2272
  %15 = load i8*, i8** %14, align 8, !dbg !2272, !tbaa !1365
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2273
  %17 = load i8*, i8** %16, align 8, !dbg !2273, !tbaa !1368
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2274
  %19 = add i64 %18, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %19, metadata !2256, metadata !DIExpression()) #10, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %19, metadata !2277, metadata !DIExpression()) #10, !dbg !2282
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %20, metadata !2257, metadata !DIExpression()) #10, !dbg !2285
  %21 = load i32, i32* %11, align 8, !dbg !2286, !tbaa !1279
  %22 = load i8*, i8** %14, align 8, !dbg !2287, !tbaa !1365
  %23 = load i8*, i8** %16, align 8, !dbg !2288, !tbaa !1368
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2289
  store i32 %7, i32* %6, align 4, !dbg !2290, !tbaa !942
  ret i8* %20, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2246 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %1, metadata !2250, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64* %2, metadata !2251, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2252, metadata !DIExpression()), !dbg !2295
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2296
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2253, metadata !DIExpression()), !dbg !2297
  %7 = tail call i32* @__errno_location() #17, !dbg !2298
  %8 = load i32, i32* %7, align 4, !dbg !2298, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %8, metadata !2254, metadata !DIExpression()), !dbg !2299
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2300
  %10 = load i32, i32* %9, align 4, !dbg !2300, !tbaa !1339
  %11 = icmp ne i64* %2, null, !dbg !2301
  %12 = xor i1 %11, true, !dbg !2301
  %13 = zext i1 %12 to i32, !dbg !2301
  %14 = or i32 %10, %13, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %14, metadata !2255, metadata !DIExpression()), !dbg !2303
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2304
  %16 = load i32, i32* %15, align 8, !dbg !2304, !tbaa !1279
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2305
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2306
  %19 = load i8*, i8** %18, align 8, !dbg !2306, !tbaa !1365
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2307
  %21 = load i8*, i8** %20, align 8, !dbg !2307, !tbaa !1368
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2308
  %23 = add i64 %22, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %23, metadata !2256, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %23, metadata !2277, metadata !DIExpression()) #10, !dbg !2311
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %24, metadata !2257, metadata !DIExpression()), !dbg !2314
  %25 = load i32, i32* %15, align 8, !dbg !2315, !tbaa !1279
  %26 = load i8*, i8** %18, align 8, !dbg !2316, !tbaa !1365
  %27 = load i8*, i8** %20, align 8, !dbg !2317, !tbaa !1368
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2318
  store i32 %8, i32* %7, align 4, !dbg !2319, !tbaa !942
  br i1 %11, label %29, label %30, !dbg !2320

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2321, !tbaa !2323
  br label %30, !dbg !2325

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2327 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2331, !tbaa !862
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 1, metadata !2330, metadata !DIExpression()), !dbg !2333
  %2 = load i32, i32* @nslots, align 4, !dbg !2334, !tbaa !942
  %3 = icmp sgt i32 %2, 1, !dbg !2337
  br i1 %3, label %4, label %12, !dbg !2338

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2330, metadata !DIExpression()), !dbg !2333
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2339
  %7 = load i8*, i8** %6, align 8, !dbg !2339, !tbaa !2340
  tail call void @free(i8* %7) #10, !dbg !2342
  %8 = add nuw nsw i64 %5, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 undef, metadata !2330, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2333
  %9 = load i32, i32* @nslots, align 4, !dbg !2334, !tbaa !942
  %10 = sext i32 %9 to i64, !dbg !2337
  %11 = icmp slt i64 %8, %10, !dbg !2337
  br i1 %11, label %4, label %12, !dbg !2338, !llvm.loop !2344

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2346
  %14 = load i8*, i8** %13, align 8, !dbg !2346, !tbaa !2340
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2348
  br i1 %15, label %17, label %16, !dbg !2349

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2350
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2352, !tbaa !2353
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2354, !tbaa !2340
  br label %17, !dbg !2355

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2356
  br i1 %18, label %21, label %19, !dbg !2358

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2359
  tail call void @free(i8* %20) #10, !dbg !2361
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2362, !tbaa !862
  br label %21, !dbg !2363

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2364, !tbaa !942
  ret void, !dbg !2365
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()), !dbg !2373
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2374
  ret i8* %3, !dbg !2375
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %1, metadata !2381, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %2, metadata !2382, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2383, metadata !DIExpression()), !dbg !2398
  %5 = tail call i32* @__errno_location() #17, !dbg !2399
  %6 = load i32, i32* %5, align 4, !dbg !2399, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %6, metadata !2384, metadata !DIExpression()), !dbg !2400
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2401, !tbaa !862
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2385, metadata !DIExpression()), !dbg !2402
  %8 = icmp slt i32 %0, 0, !dbg !2403
  br i1 %8, label %9, label %10, !dbg !2405

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2406
  unreachable, !dbg !2406

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2407, !tbaa !942
  %12 = icmp sgt i32 %11, %0, !dbg !2408
  br i1 %12, label %34, label %13, !dbg !2409

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2410
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2389, metadata !DIExpression()), !dbg !2411
  %15 = icmp eq i32 %0, 2147483647, !dbg !2412
  br i1 %15, label %16, label %17, !dbg !2414

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2415
  unreachable, !dbg !2415

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2416
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2416
  %20 = add nsw i32 %0, 1, !dbg !2417
  %21 = sext i32 %20 to i64, !dbg !2418
  %22 = shl nsw i64 %21, 4, !dbg !2419
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2420
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2385, metadata !DIExpression()), !dbg !2402
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2421, !tbaa !862
  br i1 %14, label %25, label %26, !dbg !2422

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2423, !tbaa.struct !2425
  br label %26, !dbg !2426

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2427, !tbaa !942
  %28 = sext i32 %27 to i64, !dbg !2428
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2428
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2429
  %31 = sub nsw i32 %20, %27, !dbg !2430
  %32 = sext i32 %31 to i64, !dbg !2431
  %33 = shl nsw i64 %32, 4, !dbg !2432
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2429
  store i32 %20, i32* @nslots, align 4, !dbg !2433, !tbaa !942
  br label %34, !dbg !2434

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2435
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2385, metadata !DIExpression()), !dbg !2402
  %36 = sext i32 %0 to i64, !dbg !2436
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2437
  %38 = load i64, i64* %37, align 8, !dbg !2437, !tbaa !2353
  call void @llvm.dbg.value(metadata i64 %38, metadata !2390, metadata !DIExpression()), !dbg !2438
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2439
  %40 = load i8*, i8** %39, align 8, !dbg !2439, !tbaa !2340
  call void @llvm.dbg.value(metadata i8* %40, metadata !2392, metadata !DIExpression()), !dbg !2440
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2441
  %42 = load i32, i32* %41, align 4, !dbg !2441, !tbaa !1339
  %43 = or i32 %42, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %43, metadata !2393, metadata !DIExpression()), !dbg !2443
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2444
  %45 = load i32, i32* %44, align 8, !dbg !2444, !tbaa !1279
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2445
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2446
  %48 = load i8*, i8** %47, align 8, !dbg !2446, !tbaa !1365
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2447
  %50 = load i8*, i8** %49, align 8, !dbg !2447, !tbaa !1368
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %51, metadata !2394, metadata !DIExpression()), !dbg !2449
  %52 = icmp ugt i64 %38, %51, !dbg !2450
  br i1 %52, label %63, label %53, !dbg !2452

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %54, metadata !2390, metadata !DIExpression()), !dbg !2438
  store i64 %54, i64* %37, align 8, !dbg !2455, !tbaa !2353
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2456
  br i1 %55, label %57, label %56, !dbg !2458

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2459
  br label %57, !dbg !2459

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2277, metadata !DIExpression()) #10, !dbg !2460
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %58, metadata !2392, metadata !DIExpression()), !dbg !2440
  store i8* %58, i8** %39, align 8, !dbg !2463, !tbaa !2340
  %59 = load i32, i32* %44, align 8, !dbg !2464, !tbaa !1279
  %60 = load i8*, i8** %47, align 8, !dbg !2465, !tbaa !1365
  %61 = load i8*, i8** %49, align 8, !dbg !2466, !tbaa !1368
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2467
  br label %63, !dbg !2468

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2469
  call void @llvm.dbg.value(metadata i8* %64, metadata !2392, metadata !DIExpression()), !dbg !2440
  store i32 %6, i32* %5, align 4, !dbg !2470, !tbaa !942
  ret i8* %64, !dbg !2471
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %2, metadata !2478, metadata !DIExpression()), !dbg !2481
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2482
  ret i8* %4, !dbg !2483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 0, metadata !2370, metadata !DIExpression()) #10, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()) #10, !dbg !2492
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2493
  ret i8* %2, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2495 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2499, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %1, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2476, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %0, metadata !2477, metadata !DIExpression()) #10, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %1, metadata !2478, metadata !DIExpression()) #10, !dbg !2506
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2507
  ret i8* %3, !dbg !2508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2509 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2513, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %2, metadata !2515, metadata !DIExpression()), !dbg !2519
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2516, metadata !DIExpression(DW_OP_deref)), !dbg !2521
  call void @llvm.dbg.value(metadata i32 %1, metadata !2522, metadata !DIExpression()) #10, !dbg !2528
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2530, !alias.scope !2531
  %6 = icmp eq i32 %1, 10, !dbg !2534
  br i1 %6, label %7, label %8, !dbg !2536

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2537, !noalias !2531
  unreachable, !dbg !2537

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2538
  store i32 %1, i32* %9, align 8, !dbg !2539, !tbaa !1279, !alias.scope !2531
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2516, metadata !DIExpression(DW_OP_deref)), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2527, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2541
  ret i8* %10, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2543 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1, metadata !2548, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %2, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %3, metadata !2550, metadata !DIExpression()), !dbg !2555
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2551, metadata !DIExpression(DW_OP_deref)), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1, metadata !2522, metadata !DIExpression()) #10, !dbg !2558
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2560, !alias.scope !2561
  %7 = icmp eq i32 %1, 10, !dbg !2564
  br i1 %7, label %8, label %9, !dbg !2565

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2566, !noalias !2561
  unreachable, !dbg !2566

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2567
  store i32 %1, i32* %10, align 8, !dbg !2568, !tbaa !1279, !alias.scope !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2551, metadata !DIExpression(DW_OP_deref)), !dbg !2557
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2527, metadata !DIExpression(DW_OP_deref)), !dbg !2560
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2570
  ret i8* %11, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2572 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %1, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()) #10, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()) #10, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %1, metadata !2515, metadata !DIExpression()) #10, !dbg !2583
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2516, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()) #10, !dbg !2586
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2588, !alias.scope !2589
  %5 = icmp eq i32 %0, 10, !dbg !2592
  br i1 %5, label %6, label %7, !dbg !2593

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2594, !noalias !2589
  unreachable, !dbg !2594

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2595
  store i32 %0, i32* %8, align 8, !dbg !2596, !tbaa !1279, !alias.scope !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2516, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2527, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2588
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2598
  ret i8* %9, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2600 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %2, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2547, metadata !DIExpression()) #10, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %2, metadata !2550, metadata !DIExpression()) #10, !dbg !2614
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2551, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()) #10, !dbg !2617
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2619, !alias.scope !2620
  %6 = icmp eq i32 %0, 10, !dbg !2623
  br i1 %6, label %7, label %8, !dbg !2624

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2625, !noalias !2620
  unreachable, !dbg !2625

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2626
  store i32 %0, i32* %9, align 8, !dbg !2627, !tbaa !1279, !alias.scope !2620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2551, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2527, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2619
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2628
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2629
  ret i8* %10, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2631 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %2, metadata !2637, metadata !DIExpression()), !dbg !2641
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2643, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1298, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %2, metadata !1299, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 %2, metadata !1301, metadata !DIExpression()), !dbg !2650
  %6 = lshr i8 %2, 5, !dbg !2651
  %7 = zext i8 %6 to i64, !dbg !2651
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2652
  call void @llvm.dbg.value(metadata i32* %8, metadata !1303, metadata !DIExpression()), !dbg !2653
  %9 = and i8 %2, 31, !dbg !2654
  %10 = zext i8 %9 to i32, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %10, metadata !1305, metadata !DIExpression()), !dbg !2655
  %11 = load i32, i32* %8, align 4, !dbg !2656, !tbaa !942
  %12 = lshr i32 %11, %10, !dbg !2657
  %13 = and i32 %12, 1, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %13, metadata !1306, metadata !DIExpression()), !dbg !2659
  %14 = xor i32 %13, 1, !dbg !2660
  %15 = shl i32 %14, %10, !dbg !2661
  %16 = xor i32 %15, %11, !dbg !2662
  store i32 %16, i32* %8, align 4, !dbg !2662, !tbaa !942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2664
  ret i8* %17, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2666 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #10, !dbg !2674
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()) #10, !dbg !2676
  call void @llvm.dbg.value(metadata i8 %1, metadata !2637, metadata !DIExpression()) #10, !dbg !2677
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2679, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1298, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata i8 %1, metadata !1299, metadata !DIExpression()) #10, !dbg !2683
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #10, !dbg !2684
  call void @llvm.dbg.value(metadata i8 %1, metadata !1301, metadata !DIExpression()) #10, !dbg !2685
  %5 = lshr i8 %1, 5, !dbg !2686
  %6 = zext i8 %5 to i64, !dbg !2686
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2687
  call void @llvm.dbg.value(metadata i32* %7, metadata !1303, metadata !DIExpression()) #10, !dbg !2688
  %8 = and i8 %1, 31, !dbg !2689
  %9 = zext i8 %8 to i32, !dbg !2689
  call void @llvm.dbg.value(metadata i32 %9, metadata !1305, metadata !DIExpression()) #10, !dbg !2690
  %10 = load i32, i32* %7, align 4, !dbg !2691, !tbaa !942
  %11 = lshr i32 %10, %9, !dbg !2692
  %12 = and i32 %11, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %12, metadata !1306, metadata !DIExpression()) #10, !dbg !2694
  %13 = xor i32 %12, 1, !dbg !2695
  %14 = shl i32 %13, %9, !dbg !2696
  %15 = xor i32 %14, %10, !dbg !2697
  store i32 %15, i32* %7, align 4, !dbg !2697, !tbaa !942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2680
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2698
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2699
  ret i8* %16, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2701 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #10, !dbg !2705
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()) #10, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #10, !dbg !2708
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()) #10, !dbg !2710
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()) #10, !dbg !2711
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2713, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1298, metadata !DIExpression()) #10, !dbg !2715
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()) #10, !dbg !2717
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()) #10, !dbg !2719
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2720
  call void @llvm.dbg.value(metadata i32* %4, metadata !1303, metadata !DIExpression()) #10, !dbg !2721
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()) #10, !dbg !2722
  %5 = load i32, i32* %4, align 4, !dbg !2723, !tbaa !942
  %6 = or i32 %5, 67108864, !dbg !2724
  store i32 %6, i32* %4, align 4, !dbg !2724, !tbaa !942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2714
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2725
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2726
  ret i8* %7, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2728 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %1, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #10, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()) #10, !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()) #10, !dbg !2737
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2739, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1298, metadata !DIExpression()) #10, !dbg !2741
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()) #10, !dbg !2743
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #10, !dbg !2744
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()) #10, !dbg !2745
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2746
  call void @llvm.dbg.value(metadata i32* %5, metadata !1303, metadata !DIExpression()) #10, !dbg !2747
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()) #10, !dbg !2748
  %6 = load i32, i32* %5, align 4, !dbg !2749, !tbaa !942
  %7 = or i32 %6, 67108864, !dbg !2750
  store i32 %7, i32* %5, align 4, !dbg !2750, !tbaa !942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2740
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2752
  ret i8* %8, !dbg !2753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2754 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2527, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %1, metadata !2757, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* %2, metadata !2758, metadata !DIExpression()), !dbg !2764
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2765
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2765
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2766
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2522, metadata !DIExpression()) #10, !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2527, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2760
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2760, !alias.scope !2768
  %8 = icmp eq i32 %1, 10, !dbg !2771
  br i1 %8, label %9, label %10, !dbg !2772

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2773, !noalias !2768
  unreachable, !dbg !2773

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2527, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2760
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2766
  store i32 %1, i32* %11, align 8, !dbg !2766
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2766
  %13 = bitcast i32* %12 to i8*, !dbg !2766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1298, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()), !dbg !2779
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2780
  call void @llvm.dbg.value(metadata i32* %14, metadata !1303, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()), !dbg !2782
  %15 = load i32, i32* %14, align 4, !dbg !2783, !tbaa !942
  %16 = or i32 %15, 67108864, !dbg !2784
  store i32 %16, i32* %14, align 4, !dbg !2784, !tbaa !942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2774
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2786
  ret i8* %17, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2788 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %2, metadata !2794, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %3, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()) #10, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2805, metadata !DIExpression()) #10, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %2, metadata !2806, metadata !DIExpression()) #10, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %3, metadata !2807, metadata !DIExpression()) #10, !dbg !2814
  call void @llvm.dbg.value(metadata i64 -1, metadata !2808, metadata !DIExpression()) #10, !dbg !2815
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2817, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()) #10, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()) #10, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #10, !dbg !2819
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2823
  store i32 10, i32* %7, align 8, !dbg !2824, !tbaa !1279
  %8 = icmp ne i8* %1, null, !dbg !2825
  %9 = icmp ne i8* %2, null, !dbg !2826
  %10 = and i1 %8, %9, !dbg !2827
  br i1 %10, label %12, label %11, !dbg !2827

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2828
  unreachable, !dbg !2828

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2829
  store i8* %1, i8** %13, align 8, !dbg !2830, !tbaa !1365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2831
  store i8* %2, i8** %14, align 8, !dbg !2832, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2818
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2834
  ret i8* %15, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2801 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2805, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !2806, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %3, metadata !2807, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %4, metadata !2808, metadata !DIExpression()), !dbg !2840
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2842, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2809, metadata !DIExpression(DW_OP_deref)), !dbg !2843
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1347, metadata !DIExpression()) #10, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()) #10, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()) #10, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1347, metadata !DIExpression()) #10, !dbg !2844
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2848
  store i32 10, i32* %8, align 8, !dbg !2849, !tbaa !1279
  %9 = icmp ne i8* %1, null, !dbg !2850
  %10 = icmp ne i8* %2, null, !dbg !2851
  %11 = and i1 %9, %10, !dbg !2852
  br i1 %11, label %13, label %12, !dbg !2852

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2853
  unreachable, !dbg !2853

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2854
  store i8* %1, i8** %14, align 8, !dbg !2855, !tbaa !1365
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2856
  store i8* %2, i8** %15, align 8, !dbg !2857, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2809, metadata !DIExpression(DW_OP_deref)), !dbg !2843
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2858
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2859
  ret i8* %16, !dbg !2860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2861 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %2, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()) #10, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #10, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %1, metadata !2794, metadata !DIExpression()) #10, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %2, metadata !2795, metadata !DIExpression()) #10, !dbg !2875
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #10, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()) #10, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2806, metadata !DIExpression()) #10, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2807, metadata !DIExpression()) #10, !dbg !2880
  call void @llvm.dbg.value(metadata i64 -1, metadata !2808, metadata !DIExpression()) #10, !dbg !2881
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2883, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1347, metadata !DIExpression()) #10, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %0, metadata !1348, metadata !DIExpression()) #10, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !1349, metadata !DIExpression()) #10, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1347, metadata !DIExpression()) #10, !dbg !2885
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2889
  store i32 10, i32* %6, align 8, !dbg !2890, !tbaa !1279
  %7 = icmp ne i8* %0, null, !dbg !2891
  %8 = icmp ne i8* %1, null, !dbg !2892
  %9 = and i1 %7, %8, !dbg !2893
  br i1 %9, label %11, label %10, !dbg !2893

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2894
  unreachable, !dbg !2894

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2895
  store i8* %0, i8** %12, align 8, !dbg !2896, !tbaa !1365
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2897
  store i8* %1, i8** %13, align 8, !dbg !2898, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2884
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2900
  ret i8* %14, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2902 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 %3, metadata !2909, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #10, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !2806, metadata !DIExpression()) #10, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2807, metadata !DIExpression()) #10, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %3, metadata !2808, metadata !DIExpression()) #10, !dbg !2919
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2921, !tbaa.struct !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #10, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !1348, metadata !DIExpression()) #10, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !1349, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #10, !dbg !2923
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2927
  store i32 10, i32* %7, align 8, !dbg !2928, !tbaa !1279
  %8 = icmp ne i8* %0, null, !dbg !2929
  %9 = icmp ne i8* %1, null, !dbg !2930
  %10 = and i1 %8, %9, !dbg !2931
  br i1 %10, label %12, label %11, !dbg !2931

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2932
  unreachable, !dbg !2932

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2933
  store i8* %0, i8** %13, align 8, !dbg !2934, !tbaa !1365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2935
  store i8* %1, i8** %14, align 8, !dbg !2936, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2809, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2922
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2937
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2938
  ret i8* %15, !dbg !2939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2946, metadata !DIExpression()), !dbg !2949
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2950
  ret i8* %4, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 0, metadata !2944, metadata !DIExpression()) #10, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()) #10, !dbg !2963
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2964
  ret i8* %3, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %0, metadata !2944, metadata !DIExpression()) #10, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2945, metadata !DIExpression()) #10, !dbg !2976
  call void @llvm.dbg.value(metadata i64 -1, metadata !2946, metadata !DIExpression()) #10, !dbg !2977
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2978
  ret i8* %3, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2970, metadata !DIExpression()) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i32 0, metadata !2944, metadata !DIExpression()) #10, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i64 -1, metadata !2946, metadata !DIExpression()) #10, !dbg !2992
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2993
  ret i8* %2, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2995 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %1, metadata !3055, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8* %2, metadata !3056, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %3, metadata !3057, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8** %4, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %5, metadata !3059, metadata !DIExpression()), !dbg !3065
  %7 = icmp eq i8* %1, null, !dbg !3066
  br i1 %7, label %10, label %8, !dbg !3068

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3069
  br label %12, !dbg !3069

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3070
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #10, !dbg !3071
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3071
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.77, i64 0, i64 0), i32 5) #10, !dbg !3072
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3072
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
  ], !dbg !3073

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3074
  unreachable, !dbg !3074

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #10, !dbg !3076
  %20 = load i8*, i8** %4, align 8, !dbg !3076, !tbaa !862
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3076
  br label %146, !dbg !3077

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.79, i64 0, i64 0), i32 5) #10, !dbg !3078
  %24 = load i8*, i8** %4, align 8, !dbg !3078, !tbaa !862
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3078
  %26 = load i8*, i8** %25, align 8, !dbg !3078, !tbaa !862
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3078
  br label %146, !dbg !3079

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #10, !dbg !3080
  %30 = load i8*, i8** %4, align 8, !dbg !3080, !tbaa !862
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3080
  %32 = load i8*, i8** %31, align 8, !dbg !3080, !tbaa !862
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3080
  %34 = load i8*, i8** %33, align 8, !dbg !3080, !tbaa !862
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3080
  br label %146, !dbg !3081

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #10, !dbg !3082
  %38 = load i8*, i8** %4, align 8, !dbg !3082, !tbaa !862
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3082
  %40 = load i8*, i8** %39, align 8, !dbg !3082, !tbaa !862
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3082
  %42 = load i8*, i8** %41, align 8, !dbg !3082, !tbaa !862
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3082
  %44 = load i8*, i8** %43, align 8, !dbg !3082, !tbaa !862
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3082
  br label %146, !dbg !3083

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #10, !dbg !3084
  %48 = load i8*, i8** %4, align 8, !dbg !3084, !tbaa !862
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3084
  %50 = load i8*, i8** %49, align 8, !dbg !3084, !tbaa !862
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3084
  %52 = load i8*, i8** %51, align 8, !dbg !3084, !tbaa !862
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3084
  %54 = load i8*, i8** %53, align 8, !dbg !3084, !tbaa !862
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3084
  %56 = load i8*, i8** %55, align 8, !dbg !3084, !tbaa !862
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3084
  br label %146, !dbg !3085

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #10, !dbg !3086
  %60 = load i8*, i8** %4, align 8, !dbg !3086, !tbaa !862
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3086
  %62 = load i8*, i8** %61, align 8, !dbg !3086, !tbaa !862
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3086
  %64 = load i8*, i8** %63, align 8, !dbg !3086, !tbaa !862
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3086
  %66 = load i8*, i8** %65, align 8, !dbg !3086, !tbaa !862
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3086
  %68 = load i8*, i8** %67, align 8, !dbg !3086, !tbaa !862
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3086
  %70 = load i8*, i8** %69, align 8, !dbg !3086, !tbaa !862
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3086
  br label %146, !dbg !3087

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #10, !dbg !3088
  %74 = load i8*, i8** %4, align 8, !dbg !3088, !tbaa !862
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3088
  %76 = load i8*, i8** %75, align 8, !dbg !3088, !tbaa !862
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3088
  %78 = load i8*, i8** %77, align 8, !dbg !3088, !tbaa !862
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3088
  %80 = load i8*, i8** %79, align 8, !dbg !3088, !tbaa !862
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3088
  %82 = load i8*, i8** %81, align 8, !dbg !3088, !tbaa !862
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3088
  %84 = load i8*, i8** %83, align 8, !dbg !3088, !tbaa !862
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3088
  %86 = load i8*, i8** %85, align 8, !dbg !3088, !tbaa !862
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3088
  br label %146, !dbg !3089

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #10, !dbg !3090
  %90 = load i8*, i8** %4, align 8, !dbg !3090, !tbaa !862
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3090
  %92 = load i8*, i8** %91, align 8, !dbg !3090, !tbaa !862
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3090
  %94 = load i8*, i8** %93, align 8, !dbg !3090, !tbaa !862
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3090
  %96 = load i8*, i8** %95, align 8, !dbg !3090, !tbaa !862
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3090
  %98 = load i8*, i8** %97, align 8, !dbg !3090, !tbaa !862
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3090
  %100 = load i8*, i8** %99, align 8, !dbg !3090, !tbaa !862
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3090
  %102 = load i8*, i8** %101, align 8, !dbg !3090, !tbaa !862
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3090
  %104 = load i8*, i8** %103, align 8, !dbg !3090, !tbaa !862
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3090
  br label %146, !dbg !3091

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #10, !dbg !3092
  %108 = load i8*, i8** %4, align 8, !dbg !3092, !tbaa !862
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3092
  %110 = load i8*, i8** %109, align 8, !dbg !3092, !tbaa !862
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3092
  %112 = load i8*, i8** %111, align 8, !dbg !3092, !tbaa !862
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3092
  %114 = load i8*, i8** %113, align 8, !dbg !3092, !tbaa !862
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3092
  %116 = load i8*, i8** %115, align 8, !dbg !3092, !tbaa !862
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3092
  %118 = load i8*, i8** %117, align 8, !dbg !3092, !tbaa !862
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3092
  %120 = load i8*, i8** %119, align 8, !dbg !3092, !tbaa !862
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3092
  %122 = load i8*, i8** %121, align 8, !dbg !3092, !tbaa !862
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3092
  %124 = load i8*, i8** %123, align 8, !dbg !3092, !tbaa !862
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3092
  br label %146, !dbg !3093

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #10, !dbg !3094
  %128 = load i8*, i8** %4, align 8, !dbg !3094, !tbaa !862
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3094
  %130 = load i8*, i8** %129, align 8, !dbg !3094, !tbaa !862
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3094
  %132 = load i8*, i8** %131, align 8, !dbg !3094, !tbaa !862
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3094
  %134 = load i8*, i8** %133, align 8, !dbg !3094, !tbaa !862
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3094
  %136 = load i8*, i8** %135, align 8, !dbg !3094, !tbaa !862
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3094
  %138 = load i8*, i8** %137, align 8, !dbg !3094, !tbaa !862
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3094
  %140 = load i8*, i8** %139, align 8, !dbg !3094, !tbaa !862
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3094
  %142 = load i8*, i8** %141, align 8, !dbg !3094, !tbaa !862
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3094
  %144 = load i8*, i8** %143, align 8, !dbg !3094, !tbaa !862
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3094
  br label %146, !dbg !3095

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3097 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3101, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %3, metadata !3104, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8** %4, metadata !3105, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 0, metadata !3106, metadata !DIExpression()), !dbg !3112
  br label %6, !dbg !3113

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3117
  %9 = load i8*, i8** %8, align 8, !dbg !3117, !tbaa !862
  %10 = icmp eq i8* %9, null, !dbg !3118
  %11 = add i64 %7, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %11, metadata !3106, metadata !DIExpression()), !dbg !3112
  br i1 %10, label %12, label %6, !dbg !3118, !llvm.loop !3120

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3106, metadata !DIExpression()), !dbg !3112
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3122
  ret void, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3124 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3135, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %3, metadata !3138, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3139, metadata !DIExpression()), !dbg !3147
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3148
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3141, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 0, metadata !3140, metadata !DIExpression()), !dbg !3150
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3140, metadata !DIExpression()), !dbg !3150
  %11 = load i32, i32* %8, align 8, !dbg !3151
  %12 = icmp ult i32 %11, 41, !dbg !3151
  br i1 %12, label %13, label %18, !dbg !3151

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3151
  %15 = sext i32 %11 to i64, !dbg !3151
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3151
  %17 = add i32 %11, 8, !dbg !3151
  store i32 %17, i32* %8, align 8, !dbg !3151
  br label %21, !dbg !3151

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3151
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3151
  store i8* %20, i8** %10, align 8, !dbg !3151
  br label %21, !dbg !3151

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3151
  %25 = load i8*, i8** %24, align 8, !dbg !3151
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3154
  store i8* %25, i8** %26, align 16, !dbg !3155, !tbaa !862
  %27 = icmp eq i8* %25, null, !dbg !3156
  br i1 %27, label %30, label %28, !dbg !3157

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 1, metadata !3140, metadata !DIExpression()), !dbg !3150
  %29 = icmp ult i32 %22, 41, !dbg !3151
  br i1 %29, label %35, label %32, !dbg !3151

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %31, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %31, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3160
  ret void, !dbg !3160

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3151
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3151
  store i8* %34, i8** %10, align 8, !dbg !3151
  br label %40, !dbg !3151

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3151
  %37 = sext i32 %22 to i64, !dbg !3151
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3151
  %39 = add i32 %22, 8, !dbg !3151
  store i32 %39, i32* %8, align 8, !dbg !3151
  br label %40, !dbg !3151

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3151
  %44 = load i8*, i8** %43, align 8, !dbg !3151
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3154
  store i8* %44, i8** %45, align 8, !dbg !3155, !tbaa !862
  %46 = icmp eq i8* %44, null, !dbg !3156
  br i1 %46, label %30, label %47, !dbg !3157

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 2, metadata !3140, metadata !DIExpression()), !dbg !3150
  %48 = icmp ult i32 %41, 41, !dbg !3151
  br i1 %48, label %52, label %49, !dbg !3151

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3151
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3151
  store i8* %51, i8** %10, align 8, !dbg !3151
  br label %57, !dbg !3151

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3151
  %54 = sext i32 %41 to i64, !dbg !3151
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3151
  %56 = add i32 %41, 8, !dbg !3151
  store i32 %56, i32* %8, align 8, !dbg !3151
  br label %57, !dbg !3151

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3151
  %61 = load i8*, i8** %60, align 8, !dbg !3151
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3154
  store i8* %61, i8** %62, align 16, !dbg !3155, !tbaa !862
  %63 = icmp eq i8* %61, null, !dbg !3156
  br i1 %63, label %30, label %64, !dbg !3157

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 3, metadata !3140, metadata !DIExpression()), !dbg !3150
  %65 = icmp ult i32 %58, 41, !dbg !3151
  br i1 %65, label %69, label %66, !dbg !3151

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3151
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3151
  store i8* %68, i8** %10, align 8, !dbg !3151
  br label %74, !dbg !3151

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3151
  %71 = sext i32 %58 to i64, !dbg !3151
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3151
  %73 = add i32 %58, 8, !dbg !3151
  store i32 %73, i32* %8, align 8, !dbg !3151
  br label %74, !dbg !3151

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3151
  %78 = load i8*, i8** %77, align 8, !dbg !3151
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3154
  store i8* %78, i8** %79, align 8, !dbg !3155, !tbaa !862
  %80 = icmp eq i8* %78, null, !dbg !3156
  br i1 %80, label %30, label %81, !dbg !3157

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 4, metadata !3140, metadata !DIExpression()), !dbg !3150
  %82 = icmp ult i32 %75, 41, !dbg !3151
  br i1 %82, label %86, label %83, !dbg !3151

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3151
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3151
  store i8* %85, i8** %10, align 8, !dbg !3151
  br label %91, !dbg !3151

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3151
  %88 = sext i32 %75 to i64, !dbg !3151
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3151
  %90 = add i32 %75, 8, !dbg !3151
  store i32 %90, i32* %8, align 8, !dbg !3151
  br label %91, !dbg !3151

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3151
  %95 = load i8*, i8** %94, align 8, !dbg !3151
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3154
  store i8* %95, i8** %96, align 16, !dbg !3155, !tbaa !862
  %97 = icmp eq i8* %95, null, !dbg !3156
  br i1 %97, label %30, label %98, !dbg !3157

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 5, metadata !3140, metadata !DIExpression()), !dbg !3150
  %99 = icmp ult i32 %92, 41, !dbg !3151
  br i1 %99, label %103, label %100, !dbg !3151

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3151
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3151
  store i8* %102, i8** %10, align 8, !dbg !3151
  br label %108, !dbg !3151

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3151
  %105 = sext i32 %92 to i64, !dbg !3151
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3151
  %107 = add i32 %92, 8, !dbg !3151
  store i32 %107, i32* %8, align 8, !dbg !3151
  br label %108, !dbg !3151

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3151
  %111 = load i8*, i8** %110, align 8, !dbg !3151
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3154
  store i8* %111, i8** %112, align 8, !dbg !3155, !tbaa !862
  %113 = icmp eq i8* %111, null, !dbg !3156
  br i1 %113, label %30, label %114, !dbg !3157

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 6, metadata !3140, metadata !DIExpression()), !dbg !3150
  %115 = load i8*, i8** %10, align 8, !dbg !3151
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3151
  store i8* %116, i8** %10, align 8, !dbg !3151
  %117 = bitcast i8* %115 to i8**, !dbg !3151
  %118 = load i8*, i8** %117, align 8, !dbg !3151
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3154
  store i8* %118, i8** %119, align 16, !dbg !3155, !tbaa !862
  %120 = icmp eq i8* %118, null, !dbg !3156
  br i1 %120, label %30, label %121, !dbg !3157

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 7, metadata !3140, metadata !DIExpression()), !dbg !3150
  %122 = load i8*, i8** %10, align 8, !dbg !3151
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3151
  store i8* %123, i8** %10, align 8, !dbg !3151
  %124 = bitcast i8* %122 to i8**, !dbg !3151
  %125 = load i8*, i8** %124, align 8, !dbg !3151
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3154
  store i8* %125, i8** %126, align 8, !dbg !3155, !tbaa !862
  %127 = icmp eq i8* %125, null, !dbg !3156
  br i1 %127, label %30, label %128, !dbg !3157

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 8, metadata !3140, metadata !DIExpression()), !dbg !3150
  %129 = load i8*, i8** %10, align 8, !dbg !3151
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3151
  store i8* %130, i8** %10, align 8, !dbg !3151
  %131 = bitcast i8* %129 to i8**, !dbg !3151
  %132 = load i8*, i8** %131, align 8, !dbg !3151
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3154
  store i8* %132, i8** %133, align 16, !dbg !3155, !tbaa !862
  %134 = icmp eq i8* %132, null, !dbg !3156
  br i1 %134, label %30, label %135, !dbg !3157

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 9, metadata !3140, metadata !DIExpression()), !dbg !3150
  %136 = load i8*, i8** %10, align 8, !dbg !3151
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3151
  store i8* %137, i8** %10, align 8, !dbg !3151
  %138 = bitcast i8* %136 to i8**, !dbg !3151
  %139 = load i8*, i8** %138, align 8, !dbg !3151
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3154
  store i8* %139, i8** %140, align 8, !dbg !3155, !tbaa !862
  %141 = icmp eq i8* %139, null, !dbg !3156
  %142 = select i1 %141, i64 9, i64 10, !dbg !3157
  br label %30, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3161 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3165, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3166, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %2, metadata !3167, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8* %3, metadata !3168, metadata !DIExpression()), !dbg !3179
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3180
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3180
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3169, metadata !DIExpression()), !dbg !3181
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3182
  call void @llvm.va_start(i8* nonnull %6), !dbg !3182
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3183
  call void @llvm.va_end(i8* nonnull %6), !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3185
  ret void, !dbg !3185
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3186 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #10, !dbg !3187
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.91, i64 0, i64 0)) #10, !dbg !3187
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #10, !dbg !3188
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.94, i64 0, i64 0)) #10, !dbg !3188
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.95, i64 0, i64 0), i32 5) #10, !dbg !3189
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3189, !tbaa !862
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3189
  ret void, !dbg !3190
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3191 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3198
  %3 = udiv i64 9223372036854775807, %1, !dbg !3199
  %4 = icmp ult i64 %3, %0, !dbg !3199
  br i1 %4, label %5, label %6, !dbg !3201

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3202
  unreachable, !dbg !3202

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %7, metadata !3204, metadata !DIExpression()) #10, !dbg !3211
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %8, metadata !3210, metadata !DIExpression()) #10, !dbg !3214
  %9 = icmp eq i8* %8, null, !dbg !3215
  %10 = icmp ne i64 %7, 0, !dbg !3217
  %11 = and i1 %10, %9, !dbg !3218
  br i1 %11, label %12, label %13, !dbg !3218

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3219
  unreachable, !dbg !3219

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3220
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3205 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3221
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()), !dbg !3223
  %3 = icmp eq i8* %2, null, !dbg !3224
  %4 = icmp ne i64 %0, 0, !dbg !3225
  %5 = and i1 %4, %3, !dbg !3226
  br i1 %5, label %6, label %7, !dbg !3226

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3227
  unreachable, !dbg !3227

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3228
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %2, metadata !3235, metadata !DIExpression()), !dbg !3238
  %4 = udiv i64 9223372036854775807, %2, !dbg !3239
  %5 = icmp ult i64 %4, %1, !dbg !3239
  br i1 %5, label %6, label %7, !dbg !3241

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3242
  unreachable, !dbg !3242

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #10, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %8, metadata !3249, metadata !DIExpression()) #10, !dbg !3252
  %9 = icmp eq i64 %8, 0, !dbg !3253
  %10 = icmp ne i8* %0, null, !dbg !3255
  %11 = and i1 %10, %9, !dbg !3256
  br i1 %11, label %12, label %13, !dbg !3256

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3257
  br label %19, !dbg !3259

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %14, metadata !3244, metadata !DIExpression()) #10, !dbg !3250
  %15 = icmp eq i8* %14, null, !dbg !3261
  %16 = icmp ne i64 %8, 0, !dbg !3263
  %17 = and i1 %16, %15, !dbg !3264
  br i1 %17, label %18, label %19, !dbg !3264

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3265
  unreachable, !dbg !3265

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3266
  ret i8* %20, !dbg !3267
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3245 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3269
  %3 = icmp eq i64 %1, 0, !dbg !3270
  %4 = icmp ne i8* %0, null, !dbg !3271
  %5 = and i1 %4, %3, !dbg !3272
  br i1 %5, label %6, label %7, !dbg !3272

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3273
  br label %13, !dbg !3274

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %8, metadata !3244, metadata !DIExpression()), !dbg !3268
  %9 = icmp eq i8* %8, null, !dbg !3276
  %10 = icmp ne i64 %1, 0, !dbg !3277
  %11 = and i1 %10, %9, !dbg !3278
  br i1 %11, label %12, label %13, !dbg !3278

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3279
  unreachable, !dbg !3279

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3280
  ret i8* %14, !dbg !3281
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64* %1, metadata !396, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %2, metadata !397, metadata !DIExpression()), !dbg !3284
  %4 = load i64, i64* %1, align 8, !dbg !3285, !tbaa !2323
  call void @llvm.dbg.value(metadata i64 %4, metadata !398, metadata !DIExpression()), !dbg !3286
  %5 = icmp eq i8* %0, null, !dbg !3287
  br i1 %5, label %6, label %20, !dbg !3289

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3290
  br i1 %7, label %8, label %13, !dbg !3293

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %9, metadata !398, metadata !DIExpression()), !dbg !3286
  %10 = icmp ugt i64 %2, 128, !dbg !3296
  %11 = zext i1 %10 to i64, !dbg !3296
  %12 = add nuw nsw i64 %9, %11, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %12, metadata !398, metadata !DIExpression()), !dbg !3286
  br label %13, !dbg !3298

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %14, metadata !398, metadata !DIExpression()), !dbg !3286
  %15 = udiv i64 9223372036854775807, %2, !dbg !3300
  %16 = icmp ult i64 %15, %14, !dbg !3300
  br i1 %16, label %19, label %17, !dbg !3302

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !398, metadata !DIExpression()), !dbg !3286
  store i64 %14, i64* %1, align 8, !dbg !3303, !tbaa !2323
  %18 = mul i64 %14, %2, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #10, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %28, metadata !3249, metadata !DIExpression()) #10, !dbg !3307
  br label %31, !dbg !3308

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3309
  unreachable, !dbg !3309

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3310
  %22 = icmp ugt i64 %21, %4, !dbg !3313
  br i1 %22, label %24, label %23, !dbg !3314

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3315
  unreachable, !dbg !3315

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3316
  %26 = add i64 %4, 1, !dbg !3317
  %27 = add i64 %26, %25, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %27, metadata !398, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %27, metadata !398, metadata !DIExpression()), !dbg !3286
  store i64 %27, i64* %1, align 8, !dbg !3303, !tbaa !2323
  %28 = mul i64 %27, %2, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #10, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %28, metadata !3249, metadata !DIExpression()) #10, !dbg !3307
  %29 = icmp eq i64 %28, 0, !dbg !3319
  br i1 %29, label %30, label %31, !dbg !3308

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3320
  br label %38, !dbg !3321

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %33, metadata !3244, metadata !DIExpression()) #10, !dbg !3305
  %34 = icmp eq i8* %33, null, !dbg !3323
  %35 = icmp ne i64 %32, 0, !dbg !3324
  %36 = and i1 %35, %34, !dbg !3325
  br i1 %36, label %37, label %38, !dbg !3325

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3326
  unreachable, !dbg !3326

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3327
  ret i8* %39, !dbg !3328
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3329 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3333
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()) #10, !dbg !3336
  %3 = icmp eq i8* %2, null, !dbg !3337
  %4 = icmp ne i64 %0, 0, !dbg !3338
  %5 = and i1 %4, %3, !dbg !3339
  br i1 %5, label %6, label %7, !dbg !3339

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3340
  unreachable, !dbg !3340

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64* %1, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()) #10, !dbg !3350
  call void @llvm.dbg.value(metadata i64* %1, metadata !396, metadata !DIExpression()) #10, !dbg !3352
  call void @llvm.dbg.value(metadata i64 1, metadata !397, metadata !DIExpression()) #10, !dbg !3353
  %3 = load i64, i64* %1, align 8, !dbg !3354, !tbaa !2323
  call void @llvm.dbg.value(metadata i64 %3, metadata !398, metadata !DIExpression()) #10, !dbg !3355
  %4 = icmp eq i8* %0, null, !dbg !3356
  br i1 %4, label %5, label %12, !dbg !3357

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3358
  br i1 %6, label %9, label %7, !dbg !3359

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !398, metadata !DIExpression()) #10, !dbg !3355
  %8 = icmp slt i64 %3, 0, !dbg !3360
  br i1 %8, label %11, label %9, !dbg !3361

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !398, metadata !DIExpression()) #10, !dbg !3355
  store i64 %10, i64* %1, align 8, !dbg !3362, !tbaa !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #10, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %18, metadata !3249, metadata !DIExpression()) #10, !dbg !3365
  br label %21, !dbg !3366

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3367
  unreachable, !dbg !3367

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3368
  br i1 %13, label %15, label %14, !dbg !3369

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3370
  unreachable, !dbg !3370

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3371
  %17 = add i64 %3, 1, !dbg !3372
  %18 = add i64 %17, %16, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %18, metadata !398, metadata !DIExpression()) #10, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %18, metadata !398, metadata !DIExpression()) #10, !dbg !3355
  store i64 %18, i64* %1, align 8, !dbg !3362, !tbaa !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #10, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %18, metadata !3249, metadata !DIExpression()) #10, !dbg !3365
  %19 = icmp eq i64 %18, 0, !dbg !3374
  br i1 %19, label %20, label %21, !dbg !3366

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3375
  br label %28, !dbg !3376

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %23, metadata !3244, metadata !DIExpression()) #10, !dbg !3363
  %24 = icmp eq i8* %23, null, !dbg !3378
  %25 = icmp ne i64 %22, 0, !dbg !3379
  %26 = and i1 %25, %24, !dbg !3380
  br i1 %26, label %27, label %28, !dbg !3380

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3381
  unreachable, !dbg !3381

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3382
  ret i8* %29, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3384 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3388
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()) #10, !dbg !3391
  %3 = icmp eq i8* %2, null, !dbg !3392
  %4 = icmp ne i64 %0, 0, !dbg !3393
  %5 = and i1 %4, %3, !dbg !3394
  br i1 %5, label %6, label %7, !dbg !3394

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3395
  unreachable, !dbg !3395

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3396
  ret i8* %2, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3398 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3404
  %3 = udiv i64 9223372036854775807, %1, !dbg !3405
  %4 = icmp ult i64 %3, %0, !dbg !3405
  br i1 %4, label %8, label %5, !dbg !3407

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %6, metadata !3402, metadata !DIExpression()), !dbg !3409
  %7 = icmp eq i8* %6, null, !dbg !3410
  br i1 %7, label %8, label %9, !dbg !3411

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3412
  unreachable, !dbg !3412

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()) #10, !dbg !3424
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %3, metadata !3210, metadata !DIExpression()) #10, !dbg !3427
  %4 = icmp eq i8* %3, null, !dbg !3428
  %5 = icmp ne i64 %1, 0, !dbg !3429
  %6 = and i1 %5, %4, !dbg !3430
  br i1 %6, label %7, label %8, !dbg !3430

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3431
  unreachable, !dbg !3431

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3432
  ret i8* %3, !dbg !3433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3436, metadata !DIExpression()), !dbg !3437
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3438
  %3 = add i64 %2, 1, !dbg !3439
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %3, metadata !3421, metadata !DIExpression()) #10, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %3, metadata !3204, metadata !DIExpression()) #10, !dbg !3443
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %4, metadata !3210, metadata !DIExpression()) #10, !dbg !3446
  %5 = icmp eq i8* %4, null, !dbg !3447
  %6 = icmp ne i64 %3, 0, !dbg !3448
  %7 = and i1 %6, %5, !dbg !3449
  br i1 %7, label %8, label %9, !dbg !3449

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3450
  unreachable, !dbg !3450

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3451
  ret i8* %4, !dbg !3452
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3453 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3455, !tbaa !942
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #10, !dbg !3456
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #10, !dbg !3457
  tail call void @abort() #15, !dbg !3458
  unreachable, !dbg !3458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3459 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 %1, metadata !3468, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %2, metadata !3469, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %3, metadata !3470, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %4, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %5, metadata !3472, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %6, metadata !3473, metadata !DIExpression()), !dbg !3483
  %9 = bitcast i64* %8 to i8*, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3484
  call void @llvm.dbg.value(metadata i64* %8, metadata !3476, metadata !DIExpression(DW_OP_deref)), !dbg !3485
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %10, metadata !3474, metadata !DIExpression()), !dbg !3487
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3488

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3489
  br label %27, !dbg !3488

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3492, !tbaa !2323
  call void @llvm.dbg.value(metadata i64 %14, metadata !3476, metadata !DIExpression()), !dbg !3485
  %15 = icmp ult i64 %14, %2, !dbg !3496
  %16 = icmp ugt i64 %14, %3, !dbg !3497
  %17 = or i1 %15, %16, !dbg !3498
  br i1 %17, label %18, label %36, !dbg !3498

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3474, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %14, metadata !3476, metadata !DIExpression()), !dbg !3485
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3499
  %20 = tail call i32* @__errno_location() #17, !dbg !3502
  br i1 %19, label %21, label %22, !dbg !3503

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3504, !tbaa !942
  br label %27, !dbg !3505

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3506, !tbaa !942
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #17, !dbg !3507
  store i32 75, i32* %24, align 4, !dbg !3509, !tbaa !942
  br label %27, !dbg !3507

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #17, !dbg !3510
  store i32 0, i32* %26, align 4, !dbg !3512, !tbaa !942
  br label %27, !dbg !3510

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !3489
  %29 = icmp eq i32 %6, 0, !dbg !3513
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3513
  %31 = load i32, i32* %28, align 4, !dbg !3489, !tbaa !942
  %32 = icmp eq i32 %31, 22, !dbg !3514
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3489
  %34 = call i8* @quote(i8* %0) #10, !dbg !3515
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0), i8* %5, i8* %34) #10, !dbg !3516
  %35 = load i64, i64* %8, align 8, !dbg !3517, !tbaa !2323
  br label %36, !dbg !3518

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3517
  call void @llvm.dbg.value(metadata i64 %37, metadata !3476, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3519
  ret i64 %37, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %1, metadata !3526, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %2, metadata !3527, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %3, metadata !3528, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %4, metadata !3529, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32 %5, metadata !3530, metadata !DIExpression()), !dbg !3536
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3537
  ret i64 %7, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3539 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8** %1, metadata !3546, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 %2, metadata !3547, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64* %3, metadata !3548, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %4, metadata !3549, metadata !DIExpression()), !dbg !3567
  %7 = bitcast i8** %6 to i8*, !dbg !3568
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3568
  call void @llvm.dbg.value(metadata i32 0, metadata !3553, metadata !DIExpression()), !dbg !3569
  %8 = icmp ult i32 %2, 37, !dbg !3570
  br i1 %8, label %10, label %9, !dbg !3570

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.114, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3570
  unreachable, !dbg !3570

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3573
  call void @llvm.dbg.value(metadata i8** %25, metadata !3551, metadata !DIExpression()), !dbg !3574
  %12 = tail call i32* @__errno_location() #17, !dbg !3575
  store i32 0, i32* %12, align 4, !dbg !3576, !tbaa !942
  call void @llvm.dbg.value(metadata i8* %0, metadata !3554, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %0, metadata !3557, metadata !DIExpression(DW_OP_deref)), !dbg !3578
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3579
  %14 = load i16*, i16** %13, align 8, !tbaa !862
  br label %15, !dbg !3580

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3581
  %17 = load i8, i8* %16, align 1, !dbg !3581, !tbaa !1047
  call void @llvm.dbg.value(metadata i8 %17, metadata !3557, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i8* %16, metadata !3554, metadata !DIExpression()), !dbg !3577
  %18 = zext i8 %17 to i64, !dbg !3579
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3579
  %20 = load i16, i16* %19, align 2, !dbg !3579, !tbaa !1697
  %21 = and i16 %20, 8192, !dbg !3579
  %22 = icmp eq i16 %21, 0, !dbg !3580
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3582
  call void @llvm.dbg.value(metadata i8* %23, metadata !3554, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %23, metadata !3557, metadata !DIExpression(DW_OP_deref)), !dbg !3578
  br i1 %22, label %24, label %15, !dbg !3580, !llvm.loop !3583

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3573
  %26 = icmp eq i8 %17, 45, !dbg !3585
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i8** %25, metadata !3595, metadata !DIExpression()) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %2, metadata !3596, metadata !DIExpression()) #10, !dbg !3597
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %28, metadata !3552, metadata !DIExpression()), !dbg !3600
  %29 = load i8*, i8** %25, align 8, !dbg !3601, !tbaa !862
  %30 = icmp eq i8* %29, %0, !dbg !3603
  br i1 %30, label %31, label %40, !dbg !3604

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3605
  br i1 %32, label %265, label %33, !dbg !3608

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3609, !tbaa !1047
  %35 = icmp eq i8 %34, 0, !dbg !3609
  br i1 %35, label %265, label %36, !dbg !3610

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3609
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3611
  %39 = icmp eq i8* %38, null, !dbg !3611
  br i1 %39, label %265, label %47, !dbg !3612

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3613, !tbaa !942
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3615

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3553, metadata !DIExpression()), !dbg !3569
  br label %43, !dbg !3616

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3618
  call void @llvm.dbg.value(metadata i32 %44, metadata !3553, metadata !DIExpression()), !dbg !3569
  %45 = icmp eq i8* %4, null, !dbg !3619
  br i1 %45, label %46, label %47, !dbg !3621

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3552, metadata !DIExpression()), !dbg !3600
  store i64 %28, i64* %3, align 8, !dbg !3622, !tbaa !2323
  br label %265, !dbg !3624

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3625, !tbaa !1047
  %51 = sext i8 %50 to i32, !dbg !3625
  %52 = icmp eq i8 %50, 0, !dbg !3626
  br i1 %52, label %262, label %53, !dbg !3627

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3558, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 1, metadata !3561, metadata !DIExpression()), !dbg !3629
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3630
  %55 = icmp eq i8* %54, null, !dbg !3630
  br i1 %55, label %56, label %58, !dbg !3632

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3552, metadata !DIExpression()), !dbg !3600
  store i64 %49, i64* %3, align 8, !dbg !3633, !tbaa !2323
  %57 = or i32 %48, 2, !dbg !3635
  br label %265, !dbg !3636

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
  ], !dbg !3637

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3638
  %61 = icmp eq i8* %60, null, !dbg !3638
  br i1 %61, label %72, label %62, !dbg !3641

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3642
  %64 = load i8, i8* %63, align 1, !dbg !3642, !tbaa !1047
  %65 = sext i8 %64 to i32, !dbg !3642
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3643

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3644
  %68 = load i8, i8* %67, align 1, !dbg !3644, !tbaa !1047
  %69 = icmp eq i8 %68, 66, !dbg !3647
  %70 = select i1 %69, i64 3, i64 1, !dbg !3648
  br label %72, !dbg !3648

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3558, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 2, metadata !3561, metadata !DIExpression()), !dbg !3629
  br label %72, !dbg !3649

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
  ], !dbg !3650

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3651, metadata !DIExpression()), !dbg !3657
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3660
  %77 = shl i64 %49, 9, !dbg !3662
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3663
  %79 = zext i1 %76 to i32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 %79, metadata !3562, metadata !DIExpression()), !dbg !3664
  br label %253, !dbg !3665

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3651, metadata !DIExpression()), !dbg !3666
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3668
  %82 = shl i64 %49, 10, !dbg !3669
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3670
  %84 = zext i1 %81 to i32, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %84, metadata !3562, metadata !DIExpression()), !dbg !3664
  br label %253, !dbg !3671

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3682
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3680
  %87 = icmp ult i64 %86, %49, !dbg !3683
  %88 = mul i64 %49, %73, !dbg !3685
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3686
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3680
  %90 = icmp ult i64 %86, %89, !dbg !3683
  %91 = mul i64 %89, %73, !dbg !3685
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3686
  %93 = or i1 %87, %90, !dbg !3687
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3680
  %94 = icmp ult i64 %86, %92, !dbg !3683
  %95 = mul i64 %92, %73, !dbg !3685
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3686
  %97 = or i1 %93, %94, !dbg !3687
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3680
  %98 = icmp ult i64 %86, %96, !dbg !3683
  %99 = mul i64 %96, %73, !dbg !3685
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3686
  %101 = or i1 %97, %98, !dbg !3687
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3680
  %102 = icmp ult i64 %86, %100, !dbg !3683
  %103 = mul i64 %100, %73, !dbg !3685
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3686
  %105 = or i1 %101, %102, !dbg !3687
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3680
  %106 = icmp ult i64 %86, %104, !dbg !3683
  %107 = mul i64 %104, %73, !dbg !3685
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3686
  %109 = or i1 %105, %106, !dbg !3687
  %110 = zext i1 %109 to i32, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %110, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3680
  br label %253, !dbg !3688

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3691
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3689
  %113 = icmp ult i64 %112, %49, !dbg !3692
  %114 = mul i64 %49, %73, !dbg !3694
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3695
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3689
  %116 = icmp ult i64 %112, %115, !dbg !3692
  %117 = mul i64 %115, %73, !dbg !3694
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3695
  %119 = or i1 %113, %116, !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3689
  %120 = icmp ult i64 %112, %118, !dbg !3692
  %121 = mul i64 %118, %73, !dbg !3694
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3695
  %123 = or i1 %119, %120, !dbg !3696
  %124 = zext i1 %123 to i32, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %124, metadata !3679, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3689
  br label %253, !dbg !3688

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3699
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 undef, metadata !3672, metadata !DIExpression()), !dbg !3697
  %127 = icmp ult i64 %126, %49, !dbg !3700
  %128 = mul i64 %49, %73, !dbg !3702
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3703
  %130 = zext i1 %127 to i32, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %130, metadata !3679, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 undef, metadata !3672, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3697
  br label %253, !dbg !3688

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3706
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3704
  %133 = icmp ult i64 %132, %49, !dbg !3707
  %134 = mul i64 %49, %73, !dbg !3709
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3710
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3704
  %136 = icmp ult i64 %132, %135, !dbg !3707
  %137 = mul i64 %135, %73, !dbg !3709
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3710
  %139 = or i1 %133, %136, !dbg !3711
  %140 = zext i1 %139 to i32, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %140, metadata !3679, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3704
  br label %253, !dbg !3688

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3714
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3712
  %143 = icmp ult i64 %142, %49, !dbg !3715
  %144 = mul i64 %49, %73, !dbg !3717
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3718
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3712
  %146 = icmp ult i64 %142, %145, !dbg !3715
  %147 = mul i64 %145, %73, !dbg !3717
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3718
  %149 = or i1 %143, %146, !dbg !3719
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3712
  %150 = icmp ult i64 %142, %148, !dbg !3715
  %151 = mul i64 %148, %73, !dbg !3717
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3718
  %153 = or i1 %149, %150, !dbg !3719
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3712
  %154 = icmp ult i64 %142, %152, !dbg !3715
  %155 = mul i64 %152, %73, !dbg !3717
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3718
  %157 = or i1 %153, %154, !dbg !3719
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3712
  %158 = icmp ult i64 %142, %156, !dbg !3715
  %159 = mul i64 %156, %73, !dbg !3717
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3718
  %161 = or i1 %157, %158, !dbg !3719
  %162 = zext i1 %161 to i32, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %162, metadata !3679, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3712
  br label %253, !dbg !3688

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3722
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3720
  %165 = icmp ult i64 %164, %49, !dbg !3723
  %166 = mul i64 %49, %73, !dbg !3725
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3726
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3720
  %168 = icmp ult i64 %164, %167, !dbg !3723
  %169 = mul i64 %167, %73, !dbg !3725
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3726
  %171 = or i1 %165, %168, !dbg !3727
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3720
  %172 = icmp ult i64 %164, %170, !dbg !3723
  %173 = mul i64 %170, %73, !dbg !3725
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3726
  %175 = or i1 %171, %172, !dbg !3727
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3720
  %176 = icmp ult i64 %164, %174, !dbg !3723
  %177 = mul i64 %174, %73, !dbg !3725
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3726
  %179 = or i1 %175, %176, !dbg !3727
  %180 = zext i1 %179 to i32, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %180, metadata !3679, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3720
  br label %253, !dbg !3688

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3651, metadata !DIExpression()), !dbg !3728
  %182 = icmp slt i64 %49, 0, !dbg !3730
  %183 = shl i64 %49, 1, !dbg !3731
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3732
  %185 = lshr i64 %49, 63, !dbg !3732
  %186 = trunc i64 %185 to i32, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %186, metadata !3562, metadata !DIExpression()), !dbg !3664
  br label %253, !dbg !3733

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3736
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 8, metadata !3672, metadata !DIExpression()), !dbg !3734
  %189 = icmp ult i64 %188, %49, !dbg !3737
  %190 = mul i64 %49, %73, !dbg !3739
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3740
  call void @llvm.dbg.value(metadata i32 7, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 7, metadata !3672, metadata !DIExpression()), !dbg !3734
  %192 = icmp ult i64 %188, %191, !dbg !3737
  %193 = mul i64 %191, %73, !dbg !3739
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3740
  %195 = or i1 %189, %192, !dbg !3741
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3734
  %196 = icmp ult i64 %188, %194, !dbg !3737
  %197 = mul i64 %194, %73, !dbg !3739
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3740
  %199 = or i1 %195, %196, !dbg !3741
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3734
  %200 = icmp ult i64 %188, %198, !dbg !3737
  %201 = mul i64 %198, %73, !dbg !3739
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3740
  %203 = or i1 %199, %200, !dbg !3741
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3734
  %204 = icmp ult i64 %188, %202, !dbg !3737
  %205 = mul i64 %202, %73, !dbg !3739
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3740
  %207 = or i1 %203, %204, !dbg !3741
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3734
  %208 = icmp ult i64 %188, %206, !dbg !3737
  %209 = mul i64 %206, %73, !dbg !3739
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3740
  %211 = or i1 %207, %208, !dbg !3741
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3734
  %212 = icmp ult i64 %188, %210, !dbg !3737
  %213 = mul i64 %210, %73, !dbg !3739
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3740
  %215 = or i1 %211, %212, !dbg !3741
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3734
  %216 = icmp ult i64 %188, %214, !dbg !3737
  %217 = mul i64 %214, %73, !dbg !3739
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3740
  %219 = or i1 %215, %216, !dbg !3741
  %220 = zext i1 %219 to i32, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %220, metadata !3679, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3734
  br label %253, !dbg !3688

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3744
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 7, metadata !3672, metadata !DIExpression()), !dbg !3742
  %223 = icmp ult i64 %222, %49, !dbg !3745
  %224 = mul i64 %49, %73, !dbg !3747
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3748
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 6, metadata !3672, metadata !DIExpression()), !dbg !3742
  %226 = icmp ult i64 %222, %225, !dbg !3745
  %227 = mul i64 %225, %73, !dbg !3747
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3748
  %229 = or i1 %223, %226, !dbg !3749
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 5, metadata !3672, metadata !DIExpression()), !dbg !3742
  %230 = icmp ult i64 %222, %228, !dbg !3745
  %231 = mul i64 %228, %73, !dbg !3747
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3748
  %233 = or i1 %229, %230, !dbg !3749
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 4, metadata !3672, metadata !DIExpression()), !dbg !3742
  %234 = icmp ult i64 %222, %232, !dbg !3745
  %235 = mul i64 %232, %73, !dbg !3747
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3748
  %237 = or i1 %233, %234, !dbg !3749
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 3, metadata !3672, metadata !DIExpression()), !dbg !3742
  %238 = icmp ult i64 %222, %236, !dbg !3745
  %239 = mul i64 %236, %73, !dbg !3747
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3748
  %241 = or i1 %237, %238, !dbg !3749
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 2, metadata !3672, metadata !DIExpression()), !dbg !3742
  %242 = icmp ult i64 %222, %240, !dbg !3745
  %243 = mul i64 %240, %73, !dbg !3747
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3748
  %245 = or i1 %241, %242, !dbg !3749
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3742
  %246 = icmp ult i64 %222, %244, !dbg !3745
  %247 = mul i64 %244, %73, !dbg !3747
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3748
  %249 = or i1 %245, %246, !dbg !3749
  %250 = zext i1 %249 to i32, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %250, metadata !3679, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3742
  br label %253, !dbg !3688

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3552, metadata !DIExpression()), !dbg !3600
  store i64 %49, i64* %3, align 8, !dbg !3750, !tbaa !2323
  %252 = or i32 %48, 2, !dbg !3751
  br label %265, !dbg !3752

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !3753
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !3754
  call void @llvm.dbg.value(metadata i32 %255, metadata !3562, metadata !DIExpression()), !dbg !3664
  %256 = or i32 %255, %48, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %256, metadata !3553, metadata !DIExpression()), !dbg !3569
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3755
  store i8* %257, i8** %25, align 8, !dbg !3755, !tbaa !862
  %258 = load i8, i8* %257, align 1, !dbg !3756, !tbaa !1047
  %259 = icmp eq i8 %258, 0, !dbg !3756
  %260 = or i32 %256, 2, !dbg !3758
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %261, metadata !3553, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 %261, metadata !3553, metadata !DIExpression()), !dbg !3569
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !3760
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !3569
  call void @llvm.dbg.value(metadata i32 %264, metadata !3553, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %263, metadata !3552, metadata !DIExpression()), !dbg !3600
  store i64 %263, i64* %3, align 8, !dbg !3761, !tbaa !2323
  br label %265, !dbg !3762

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3764
  ret i32 %266, !dbg !3764
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3765 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %1, metadata !3769, metadata !DIExpression()), !dbg !3775
  %3 = icmp eq i64 %0, 0, !dbg !3776
  %4 = icmp eq i64 %1, 0, !dbg !3777
  %5 = or i1 %3, %4, !dbg !3778
  br i1 %5, label %12, label %6, !dbg !3778

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %7, metadata !3771, metadata !DIExpression()), !dbg !3780
  %8 = udiv i64 %7, %1, !dbg !3781
  %9 = icmp eq i64 %8, %0, !dbg !3783
  br i1 %9, label %12, label %10, !dbg !3784

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3785
  store i32 12, i32* %11, align 4, !dbg !3787, !tbaa !942
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %13, metadata !3769, metadata !DIExpression()), !dbg !3775
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %15, metadata !3770, metadata !DIExpression()), !dbg !3789
  br label %16, !dbg !3790

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3791
  ret i8* %17, !dbg !3792
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3793 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3810, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %1, metadata !3811, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %2, metadata !3812, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3813, metadata !DIExpression()), !dbg !3822
  %6 = bitcast i32* %5 to i8*, !dbg !3823
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3823
  %7 = icmp eq i32* %0, null, !dbg !3824
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3826
  call void @llvm.dbg.value(metadata i32* %8, metadata !3810, metadata !DIExpression()), !dbg !3819
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %9, metadata !3814, metadata !DIExpression()), !dbg !3828
  %10 = icmp ugt i64 %9, -3, !dbg !3829
  %11 = icmp ne i64 %2, 0, !dbg !3830
  %12 = and i1 %11, %10, !dbg !3831
  br i1 %12, label %13, label %18, !dbg !3831

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3832
  br i1 %14, label %18, label %15, !dbg !3833

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3834, !tbaa !1047
  call void @llvm.dbg.value(metadata i8 %16, metadata !3816, metadata !DIExpression()), !dbg !3835
  %17 = zext i8 %16 to i32, !dbg !3836
  store i32 %17, i32* %8, align 4, !dbg !3837, !tbaa !942
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3839
  ret i64 %19, !dbg !3839
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3840 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3879, metadata !DIExpression()), !dbg !3884
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3885
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3886, metadata !DIExpression()), !dbg !3890
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3892
  %4 = load i32, i32* %3, align 8, !dbg !3892, !tbaa !3893
  %5 = and i32 %4, 32, !dbg !3892
  %6 = icmp eq i32 %5, 0, !dbg !3895
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3896
  %8 = icmp ne i32 %7, 0, !dbg !3897
  br i1 %6, label %9, label %19, !dbg !3898

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3900
  %11 = xor i1 %8, true, !dbg !3901
  %12 = or i1 %10, %11, !dbg !3901
  %13 = sext i1 %8 to i32, !dbg !3901
  br i1 %12, label %22, label %14, !dbg !3901

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3902
  %16 = load i32, i32* %15, align 4, !dbg !3902, !tbaa !942
  %17 = icmp ne i32 %16, 9, !dbg !3903
  %18 = sext i1 %17 to i32, !dbg !3904
  br label %22, !dbg !3904

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3905

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3907
  store i32 0, i32* %21, align 4, !dbg !3909, !tbaa !942
  br label %22, !dbg !3907

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3910
  ret i32 %23, !dbg !3911
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3915, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i8 1, metadata !3916, metadata !DIExpression()), !dbg !3919
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %2, metadata !3917, metadata !DIExpression()), !dbg !3921
  %3 = icmp eq i8* %2, null, !dbg !3922
  br i1 %3, label %11, label %4, !dbg !3924

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i64 0, i64 0)) #14, !dbg !3925
  %6 = icmp eq i32 %5, 0, !dbg !3930
  br i1 %6, label %10, label %7, !dbg !3931

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0)) #14, !dbg !3932
  %9 = icmp eq i32 %8, 0, !dbg !3933
  br i1 %9, label %10, label %11, !dbg !3934

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3916, metadata !DIExpression()), !dbg !3919
  br label %11, !dbg !3935

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3937 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %1, metadata !3942, metadata !DIExpression()), !dbg !3944
  %2 = icmp eq i8* %1, null, !dbg !3945
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %3, metadata !3942, metadata !DIExpression()), !dbg !3944
  %4 = load i8, i8* %3, align 1, !dbg !3948, !tbaa !1047
  %5 = icmp eq i8 %4, 0, !dbg !3952
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %3, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %6, metadata !3942, metadata !DIExpression()), !dbg !3944
  ret i8* %6, !dbg !3954
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3955 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3994, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 0, metadata !3995, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !4000
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %2, metadata !3996, metadata !DIExpression()), !dbg !4002
  %3 = icmp slt i32 %2, 0, !dbg !4003
  br i1 %3, label %4, label %6, !dbg !4005

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4006
  br label %24, !dbg !4007

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4008
  %8 = icmp eq i32 %7, 0, !dbg !4008
  br i1 %8, label %13, label %9, !dbg !4010

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4011
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4012
  %12 = icmp eq i64 %11, -1, !dbg !4013
  br i1 %12, label %16, label %13, !dbg !4014

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4015
  %15 = icmp eq i32 %14, 0, !dbg !4015
  br i1 %15, label %16, label %18, !dbg !4016

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3995, metadata !DIExpression()), !dbg !3999
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %21, metadata !3997, metadata !DIExpression()), !dbg !4000
  br label %24, !dbg !4018

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4019
  %20 = load i32, i32* %19, align 4, !dbg !4019, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %20, metadata !3995, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 %20, metadata !3995, metadata !DIExpression()), !dbg !3999
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %21, metadata !3997, metadata !DIExpression()), !dbg !4000
  %22 = icmp eq i32 %20, 0, !dbg !4020
  br i1 %22, label %24, label %23, !dbg !4018

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4022, !tbaa !942
  call void @llvm.dbg.value(metadata i32 -1, metadata !3997, metadata !DIExpression()), !dbg !4000
  br label %24, !dbg !4024

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4025
  ret i32 %25, !dbg !4026
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4027 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4066, metadata !DIExpression()), !dbg !4067
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4068
  br i1 %2, label %6, label %3, !dbg !4070

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4071
  %5 = icmp eq i32 %4, 0, !dbg !4071
  br i1 %5, label %6, label %8, !dbg !4072

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4073
  br label %17, !dbg !4074

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4075, metadata !DIExpression()) #10, !dbg !4080
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4082
  %10 = load i32, i32* %9, align 8, !dbg !4082, !tbaa !3893
  %11 = and i32 %10, 256, !dbg !4084
  %12 = icmp eq i32 %11, 0, !dbg !4084
  br i1 %12, label %15, label %13, !dbg !4085

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4086
  br label %15, !dbg !4086

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4087
  br label %17, !dbg !4088

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4089
  ret i32 %18, !dbg !4090
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4091 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4131, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !4132, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 %2, metadata !4133, metadata !DIExpression()), !dbg !4139
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4140
  %5 = load i8*, i8** %4, align 8, !dbg !4140, !tbaa !4141
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4142
  %7 = load i8*, i8** %6, align 8, !dbg !4142, !tbaa !4143
  %8 = icmp eq i8* %5, %7, !dbg !4144
  br i1 %8, label %9, label %28, !dbg !4145

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4146
  %11 = load i8*, i8** %10, align 8, !dbg !4146, !tbaa !4147
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4148
  %13 = load i8*, i8** %12, align 8, !dbg !4148, !tbaa !4149
  %14 = icmp eq i8* %11, %13, !dbg !4150
  br i1 %14, label %15, label %28, !dbg !4151

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4152
  %17 = load i8*, i8** %16, align 8, !dbg !4152, !tbaa !4153
  %18 = icmp eq i8* %17, null, !dbg !4154
  br i1 %18, label %19, label %28, !dbg !4155

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4156
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %21, metadata !4134, metadata !DIExpression()), !dbg !4158
  %22 = icmp eq i64 %21, -1, !dbg !4159
  br i1 %22, label %30, label %23, !dbg !4161

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4162
  %25 = load i32, i32* %24, align 8, !dbg !4163, !tbaa !3893
  %26 = and i32 %25, -17, !dbg !4163
  store i32 %26, i32* %24, align 8, !dbg !4163, !tbaa !3893
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4164
  store i64 %21, i64* %27, align 8, !dbg !4165, !tbaa !4166
  br label %30, !dbg !4167

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4168
  br label %30, !dbg !4169

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4170
  ret i32 %31, !dbg !4171
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !34, !40, !49, !156, !56, !63, !378, !149, !385, !402, !404, !415, !419, !421, !424, !426, !428, !817, !819, !821}
!llvm.ident = !{!823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823, !823}
!llvm.module.flags = !{!824, !825, !826, !827, !828}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !16)
!3 = !DIFile(filename: "src/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NPROC_ALL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NPROC_CURRENT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2, isUnsigned: true)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0}
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1280, elements: !30)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !20, line: 50, size: 256, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!21 = !{!22, !25, !27, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 52, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !19, file: !20, line: 55, baseType: !26, size: 32, offset: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !19, file: !20, line: 56, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !20, line: 57, baseType: !26, size: 32, offset: 192)
!30 = !{!31}
!31 = !DISubrange(count: 5)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "Version", scope: !34, file: !35, line: 2, type: !23, isLocal: false, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !37)
!35 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !{}
!37 = !{!32}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "file_name", scope: !40, file: !45, line: 46, type: !23, isLocal: true, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !42)
!41 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !{!38, !43}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !40, file: !45, line: 56, type: !46, isLocal: true, isDefinition: true)
!45 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "exit_failure", scope: !49, file: !52, line: 24, type: !53, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !51)
!50 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !{!47}
!52 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "program_name", scope: !56, file: !60, line: 33, type: !23, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !58, globals: !59)
!57 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!58 = !{!15, !13}
!59 = !{!54}
!60 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !63, file: !108, line: 85, type: !143, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !100, globals: !105)
!64 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{!66, !80, !85}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !67, line: 32, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!69 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!74 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!75 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!76 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!77 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!78 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!79 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !67, line: 242, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 46, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!88 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!100 = !{!26, !101, !102, !13}
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !{!61, !106, !113, !125, !127, !132, !139, !141}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !63, file: !108, line: 101, type: !109, isLocal: false, isDefinition: true)
!108 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 320, elements: !111)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!111 = !{!112}
!112 = !DISubrange(count: 10)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !63, file: !108, line: 1052, type: !115, isLocal: false, isDefinition: true)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !108, line: 65, size: 448, elements: !116)
!116 = !{!117, !118, !119, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !115, file: !108, line: 68, baseType: !66, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !108, line: 71, baseType: !26, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !115, file: !108, line: 75, baseType: !120, size: 256, offset: 64)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !115, file: !108, line: 78, baseType: !23, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !115, file: !108, line: 81, baseType: !23, size: 64, offset: 384)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !63, file: !108, line: 116, type: !115, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "slot0", scope: !63, file: !108, line: 842, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "slotvec", scope: !63, file: !108, line: 845, type: !134, isLocal: true, isDefinition: true)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !108, line: 834, size: 128, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !135, file: !108, line: 836, baseType: !102, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !108, line: 837, baseType: !13, size: 64, offset: 64)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "nslots", scope: !63, file: !108, line: 843, type: !26, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec0", scope: !63, file: !108, line: 844, type: !135, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 704, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!145 = !{!146}
!146 = !DISubrange(count: 11)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !149, file: !152, line: 26, type: !153, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !151)
!150 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !{!147}
!152 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 376, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 47)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !377)
!157 = !DIFile(filename: "./lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !{!5, !159}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 71, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!162 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!166 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!167 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!168 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!169 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!170 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!171 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!172 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!173 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!174 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!175 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!176 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!177 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!178 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!179 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!180 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!181 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!182 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!183 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!184 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!185 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!186 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!187 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!188 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!189 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!190 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!191 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!192 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!193 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!194 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!195 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!196 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!197 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!198 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!199 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!200 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!201 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!202 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!203 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!204 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!205 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!206 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!207 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!208 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!209 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!210 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!211 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!212 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!213 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!214 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!215 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!216 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!217 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!218 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!219 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!220 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!221 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!222 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!223 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!224 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!225 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!226 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!227 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!228 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!229 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!230 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!231 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!232 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!233 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!234 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!235 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!236 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!237 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!238 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!239 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!240 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!241 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!242 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!243 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!244 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!245 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!246 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!247 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!248 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!249 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!250 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!251 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!252 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!253 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!254 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!255 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!256 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!257 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!258 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!259 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!260 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!261 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!262 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!263 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!264 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!265 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!266 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!267 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!268 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!269 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!270 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!271 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!272 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!273 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!274 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!275 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!276 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!277 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!278 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!279 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!280 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!281 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!282 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!283 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!284 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!285 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!286 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!287 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!288 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!289 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!290 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!291 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!292 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!293 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!294 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!295 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!296 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!297 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!298 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!299 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!300 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!301 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!302 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!303 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!304 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!305 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!306 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!307 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!308 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!309 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!310 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!311 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!312 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!313 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!314 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!315 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!316 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!317 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!318 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!319 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!320 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!321 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!322 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!323 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!324 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!325 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!326 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!327 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!328 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!329 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!330 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!331 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!332 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!333 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!334 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!335 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!336 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!337 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!338 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!339 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!340 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!341 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!342 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!343 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!344 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!345 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!346 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!347 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!348 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!349 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!350 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!351 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!352 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!353 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!354 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!355 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!356 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!357 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!358 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!359 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!360 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!361 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!362 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!363 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!364 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!365 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!366 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!367 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!368 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!369 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!370 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!371 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!372 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!373 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!374 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!375 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!376 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!377 = !{!15}
!378 = distinct !DICompileUnit(language: DW_LANG_C99, file: !379, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !380, retainedTypes: !377)
!379 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!380 = !{!381}
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !382, line: 41, baseType: !7, size: 32, elements: !383)
!382 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!383 = !{!384}
!384 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !387, retainedTypes: !401)
!386 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!387 = !{!388}
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !390, file: !389, line: 186, baseType: !7, size: 32, elements: !399)
!389 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!390 = distinct !DISubprogram(name: "x2nrealloc", scope: !389, file: !389, line: 174, type: !391, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !394)
!391 = !DISubroutineType(types: !392)
!392 = !{!15, !15, !393, !102}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!394 = !{!395, !396, !397, !398}
!395 = !DILocalVariable(name: "p", arg: 1, scope: !390, file: !389, line: 174, type: !15)
!396 = !DILocalVariable(name: "pn", arg: 2, scope: !390, file: !389, line: 174, type: !393)
!397 = !DILocalVariable(name: "s", arg: 3, scope: !390, file: !389, line: 174, type: !102)
!398 = !DILocalVariable(name: "n", scope: !390, file: !389, line: 176, type: !102)
!399 = !{!400}
!400 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!401 = !{!102, !13, !15}
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36)
!403 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !406)
!405 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!406 = !{!407}
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !408, line: 26, baseType: !7, size: 32, elements: !409)
!408 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!409 = !{!410, !411, !412, !413, !414}
!410 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!414 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !417, retainedTypes: !418)
!416 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!417 = !{!407, !85}
!418 = !{!26, !101}
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !377)
!420 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !423)
!422 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!423 = !{!102}
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36)
!425 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36)
!427 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !430, retainedTypes: !377)
!429 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!430 = !{!431}
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 41, baseType: !7, size: 32, elements: !433)
!432 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!434 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!435 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!436 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!437 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!438 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!439 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!440 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!441 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!442 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!443 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!444 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!445 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!446 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!447 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!448 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!449 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!450 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!451 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!452 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!453 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!454 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!455 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!456 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!457 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!458 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!459 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!460 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!461 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!462 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!463 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!464 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!465 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!466 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!467 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!468 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!469 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!470 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!471 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!472 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!473 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!474 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!475 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!476 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!477 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!478 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!479 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!480 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!481 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!482 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!483 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!542 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!545 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!546 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!547 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!548 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!549 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!550 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!551 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!552 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!553 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!554 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!555 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!556 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!629 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!702 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!703 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!704 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!705 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!706 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!707 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!708 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!709 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!710 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!711 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!712 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!713 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!714 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!715 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!716 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!718 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!719 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!720 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!721 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!722 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!723 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!749 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!750 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!751 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!752 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!753 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!758 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!759 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!760 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!761 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!817 = distinct !DICompileUnit(language: DW_LANG_C99, file: !818, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36)
!818 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!819 = distinct !DICompileUnit(language: DW_LANG_C99, file: !820, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !377)
!820 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!821 = distinct !DICompileUnit(language: DW_LANG_C99, file: !822, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !377)
!822 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!823 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!824 = !{i32 2, !"Dwarf Version", i32 4}
!825 = !{i32 2, !"Debug Info Version", i32 3}
!826 = !{i32 1, !"wchar_size", i32 4}
!827 = !{i32 7, !"PIC Level", i32 2}
!828 = !{i32 7, !"PIE Level", i32 2}
!829 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !830, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !26}
!832 = !{!833}
!833 = !DILocalVariable(name: "status", arg: 1, scope: !829, file: !3, line: 51, type: !26)
!834 = !DILocalVariable(name: "infomap", scope: !835, file: !836, line: 632, type: !850)
!835 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !836, file: !836, line: 630, type: !837, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !839)
!836 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!837 = !DISubroutineType(types: !838)
!838 = !{null, !23}
!839 = !{!840, !834, !841, !842, !849}
!840 = !DILocalVariable(name: "program", arg: 1, scope: !835, file: !836, line: 630, type: !23)
!841 = !DILocalVariable(name: "node", scope: !835, file: !836, line: 642, type: !23)
!842 = !DILocalVariable(name: "map_prog", scope: !835, file: !836, line: 643, type: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !835, file: !836, line: 632, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !845, file: !836, line: 632, baseType: !23, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !845, file: !836, line: 632, baseType: !23, size: 64, offset: 64)
!849 = !DILocalVariable(name: "lc_messages", scope: !835, file: !836, line: 655, type: !23)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 896, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 7)
!853 = !DILocation(line: 632, column: 67, scope: !835, inlinedAt: !854)
!854 = distinct !DILocation(line: 70, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 56, column: 5)
!856 = distinct !DILexicalBlock(scope: !829, file: !3, line: 53, column: 7)
!857 = !DILocation(line: 51, column: 12, scope: !829)
!858 = !DILocation(line: 53, column: 14, scope: !856)
!859 = !DILocation(line: 53, column: 7, scope: !829)
!860 = !DILocation(line: 54, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 54, column: 5)
!862 = !{!863, !863, i64 0}
!863 = !{!"any pointer", !864, i64 0}
!864 = !{!"omnipotent char", !865, i64 0}
!865 = !{!"Simple C/C++ TBAA"}
!866 = !DILocation(line: 57, column: 7, scope: !855)
!867 = !DILocation(line: 58, column: 7, scope: !855)
!868 = !DILocation(line: 63, column: 7, scope: !855)
!869 = !DILocation(line: 68, column: 7, scope: !855)
!870 = !DILocation(line: 69, column: 7, scope: !855)
!871 = !DILocation(line: 632, column: 3, scope: !835, inlinedAt: !854)
!872 = !DILocation(line: 643, column: 36, scope: !835, inlinedAt: !854)
!873 = !DILocation(line: 643, column: 25, scope: !835, inlinedAt: !854)
!874 = !DILocation(line: 645, column: 33, scope: !835, inlinedAt: !854)
!875 = !DILocation(line: 645, column: 3, scope: !835, inlinedAt: !854)
!876 = !DILocation(line: 646, column: 13, scope: !835, inlinedAt: !854)
!877 = !DILocation(line: 645, column: 20, scope: !835, inlinedAt: !854)
!878 = !{!879, !863, i64 0}
!879 = !{!"infomap", !863, i64 0, !863, i64 8}
!880 = !DILocation(line: 645, column: 10, scope: !835, inlinedAt: !854)
!881 = !DILocation(line: 645, column: 28, scope: !835, inlinedAt: !854)
!882 = distinct !{!882, !883, !884}
!883 = !DILocation(line: 645, column: 3, scope: !835)
!884 = !DILocation(line: 646, column: 13, scope: !835)
!885 = !DILocation(line: 648, column: 17, scope: !886, inlinedAt: !854)
!886 = distinct !DILexicalBlock(scope: !835, file: !836, line: 648, column: 7)
!887 = !{!879, !863, i64 8}
!888 = !DILocation(line: 648, column: 7, scope: !886, inlinedAt: !854)
!889 = !DILocation(line: 648, column: 7, scope: !835, inlinedAt: !854)
!890 = !DILocation(line: 642, column: 15, scope: !835, inlinedAt: !854)
!891 = !DILocation(line: 651, column: 3, scope: !835, inlinedAt: !854)
!892 = !DILocation(line: 655, column: 29, scope: !835, inlinedAt: !854)
!893 = !DILocation(line: 655, column: 15, scope: !835, inlinedAt: !854)
!894 = !DILocation(line: 656, column: 7, scope: !895, inlinedAt: !854)
!895 = distinct !DILexicalBlock(scope: !835, file: !836, line: 656, column: 7)
!896 = !DILocation(line: 656, column: 19, scope: !895, inlinedAt: !854)
!897 = !DILocation(line: 656, column: 22, scope: !895, inlinedAt: !854)
!898 = !DILocation(line: 656, column: 7, scope: !835, inlinedAt: !854)
!899 = !DILocation(line: 662, column: 7, scope: !900, inlinedAt: !854)
!900 = distinct !DILexicalBlock(scope: !895, file: !836, line: 657, column: 5)
!901 = !DILocation(line: 664, column: 5, scope: !900, inlinedAt: !854)
!902 = !DILocation(line: 665, column: 3, scope: !835, inlinedAt: !854)
!903 = !DILocation(line: 667, column: 3, scope: !835, inlinedAt: !854)
!904 = !DILocation(line: 669, column: 1, scope: !835, inlinedAt: !854)
!905 = !DILocation(line: 72, column: 3, scope: !829)
!906 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !907, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !910)
!907 = !DISubroutineType(types: !908)
!908 = !{!26, !26, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!910 = !{!911, !912, !913, !914, !915, !916}
!911 = !DILocalVariable(name: "argc", arg: 1, scope: !906, file: !3, line: 76, type: !26)
!912 = !DILocalVariable(name: "argv", arg: 2, scope: !906, file: !3, line: 76, type: !909)
!913 = !DILocalVariable(name: "nproc", scope: !906, file: !3, line: 78, type: !104)
!914 = !DILocalVariable(name: "ignore", scope: !906, file: !3, line: 78, type: !104)
!915 = !DILocalVariable(name: "mode", scope: !906, file: !3, line: 87, type: !5)
!916 = !DILocalVariable(name: "c", scope: !917, file: !3, line: 91, type: !26)
!917 = distinct !DILexicalBlock(scope: !906, file: !3, line: 90, column: 5)
!918 = !DILocation(line: 76, column: 11, scope: !906)
!919 = !DILocation(line: 76, column: 24, scope: !906)
!920 = !DILocation(line: 78, column: 24, scope: !906)
!921 = !DILocation(line: 80, column: 21, scope: !906)
!922 = !DILocation(line: 80, column: 3, scope: !906)
!923 = !DILocation(line: 81, column: 3, scope: !906)
!924 = !DILocation(line: 82, column: 3, scope: !906)
!925 = !DILocation(line: 83, column: 3, scope: !906)
!926 = !DILocation(line: 85, column: 3, scope: !906)
!927 = !DILocation(line: 87, column: 20, scope: !906)
!928 = !DILocation(line: 89, column: 3, scope: !906)
!929 = !DILocation(line: 91, column: 15, scope: !917)
!930 = !DILocation(line: 91, column: 11, scope: !917)
!931 = !DILocation(line: 92, column: 11, scope: !917)
!932 = !DILocation(line: 96, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !917, file: !3, line: 95, column: 9)
!934 = !DILocation(line: 98, column: 9, scope: !933)
!935 = !DILocation(line: 105, column: 32, scope: !933)
!936 = !DILocation(line: 105, column: 58, scope: !933)
!937 = !DILocation(line: 105, column: 20, scope: !933)
!938 = !DILocation(line: 106, column: 11, scope: !933)
!939 = !DILocation(line: 109, column: 11, scope: !933)
!940 = !DILocation(line: 113, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !906, file: !3, line: 113, column: 7)
!942 = !{!943, !943, i64 0}
!943 = !{!"int", !864, i64 0}
!944 = !DILocation(line: 113, column: 12, scope: !941)
!945 = !DILocation(line: 113, column: 7, scope: !906)
!946 = !DILocation(line: 115, column: 20, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 114, column: 5)
!948 = !DILocation(line: 115, column: 55, scope: !947)
!949 = !DILocation(line: 115, column: 50, scope: !947)
!950 = !DILocation(line: 115, column: 43, scope: !947)
!951 = !DILocation(line: 115, column: 7, scope: !947)
!952 = !DILocation(line: 116, column: 7, scope: !947)
!953 = !DILocation(line: 119, column: 11, scope: !906)
!954 = !DILocation(line: 78, column: 17, scope: !906)
!955 = !DILocation(line: 121, column: 14, scope: !956)
!956 = distinct !DILexicalBlock(scope: !906, file: !3, line: 121, column: 7)
!957 = !DILocation(line: 122, column: 11, scope: !956)
!958 = !DILocation(line: 121, column: 7, scope: !906)
!959 = !DILocation(line: 126, column: 3, scope: !906)
!960 = !DILocation(line: 129, column: 1, scope: !906)
!961 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !45, file: !45, line: 51, type: !837, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !40, retainedNodes: !962)
!962 = !{!963}
!963 = !DILocalVariable(name: "file", arg: 1, scope: !961, file: !45, line: 51, type: !23)
!964 = !DILocation(line: 51, column: 41, scope: !961)
!965 = !DILocation(line: 53, column: 13, scope: !961)
!966 = !DILocation(line: 54, column: 1, scope: !961)
!967 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !45, file: !45, line: 88, type: !968, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !40, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !46}
!970 = !{!971}
!971 = !DILocalVariable(name: "ignore", arg: 1, scope: !967, file: !45, line: 88, type: !46)
!972 = !DILocation(line: 88, column: 37, scope: !967)
!973 = !DILocation(line: 90, column: 16, scope: !967)
!974 = !{!975, !975, i64 0}
!975 = !{!"_Bool", !864, i64 0}
!976 = !DILocation(line: 91, column: 1, scope: !967)
!977 = distinct !DISubprogram(name: "close_stdout", scope: !45, file: !45, line: 117, type: !978, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !40, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null}
!980 = !{!981}
!981 = !DILocalVariable(name: "write_error", scope: !982, file: !45, line: 122, type: !23)
!982 = distinct !DILexicalBlock(scope: !983, file: !45, line: 121, column: 5)
!983 = distinct !DILexicalBlock(scope: !977, file: !45, line: 119, column: 7)
!984 = !DILocation(line: 119, column: 21, scope: !983)
!985 = !DILocation(line: 119, column: 7, scope: !983)
!986 = !DILocation(line: 119, column: 29, scope: !983)
!987 = !DILocation(line: 120, column: 7, scope: !983)
!988 = !DILocation(line: 120, column: 12, scope: !983)
!989 = !{i8 0, i8 2}
!990 = !DILocation(line: 120, column: 25, scope: !983)
!991 = !DILocation(line: 120, column: 28, scope: !983)
!992 = !DILocation(line: 120, column: 34, scope: !983)
!993 = !DILocation(line: 119, column: 7, scope: !977)
!994 = !DILocation(line: 122, column: 33, scope: !982)
!995 = !DILocation(line: 122, column: 19, scope: !982)
!996 = !DILocation(line: 123, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !982, file: !45, line: 123, column: 11)
!998 = !DILocation(line: 0, scope: !997)
!999 = !DILocation(line: 123, column: 11, scope: !982)
!1000 = !DILocation(line: 124, column: 36, scope: !997)
!1001 = !DILocation(line: 124, column: 9, scope: !997)
!1002 = !DILocation(line: 127, column: 9, scope: !997)
!1003 = !DILocation(line: 129, column: 14, scope: !982)
!1004 = !DILocation(line: 129, column: 7, scope: !982)
!1005 = !DILocation(line: 134, column: 42, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !977, file: !45, line: 134, column: 7)
!1007 = !DILocation(line: 134, column: 28, scope: !1006)
!1008 = !DILocation(line: 134, column: 50, scope: !1006)
!1009 = !DILocation(line: 134, column: 7, scope: !977)
!1010 = !DILocation(line: 135, column: 12, scope: !1006)
!1011 = !DILocation(line: 135, column: 5, scope: !1006)
!1012 = !DILocation(line: 136, column: 1, scope: !977)
!1013 = distinct !DISubprogram(name: "num_processors", scope: !1014, file: !1014, line: 371, type: !1015, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1017)
!1014 = !DIFile(filename: "lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!104, !5}
!1017 = !{!1018, !1019, !1020, !1023}
!1018 = !DILocalVariable(name: "query", arg: 1, scope: !1013, file: !1014, line: 371, type: !5)
!1019 = !DILocalVariable(name: "omp_env_limit", scope: !1013, file: !1014, line: 373, type: !104)
!1020 = !DILocalVariable(name: "omp_env_threads", scope: !1021, file: !1014, line: 377, type: !104)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1014, line: 376, column: 5)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !1014, line: 375, column: 7)
!1023 = !DILocalVariable(name: "nprocs", scope: !1024, file: !1014, line: 392, type: !104)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !1014, line: 391, column: 3)
!1025 = !DILocation(line: 371, column: 34, scope: !1013)
!1026 = !DILocation(line: 373, column: 21, scope: !1013)
!1027 = !DILocation(line: 375, column: 13, scope: !1022)
!1028 = !DILocation(line: 375, column: 7, scope: !1013)
!1029 = !DILocation(line: 380, column: 44, scope: !1021)
!1030 = !DILocalVariable(name: "threads", arg: 1, scope: !1031, file: !1014, line: 336, type: !23)
!1031 = distinct !DISubprogram(name: "parse_omp_threads", scope: !1014, file: !1014, line: 336, type: !1032, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!104, !23}
!1034 = !{!1030, !1035, !1036, !1039}
!1035 = !DILocalVariable(name: "ret", scope: !1031, file: !1014, line: 338, type: !104)
!1036 = !DILocalVariable(name: "endptr", scope: !1037, file: !1014, line: 351, type: !13)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1014, line: 350, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !1014, line: 349, column: 7)
!1039 = !DILocalVariable(name: "value", scope: !1037, file: !1014, line: 352, type: !104)
!1040 = !DILocation(line: 336, column: 32, scope: !1031, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 380, column: 25, scope: !1021)
!1042 = !DILocation(line: 338, column: 21, scope: !1031, inlinedAt: !1041)
!1043 = !DILocation(line: 340, column: 15, scope: !1044, inlinedAt: !1041)
!1044 = distinct !DILexicalBlock(scope: !1031, file: !1014, line: 340, column: 7)
!1045 = !DILocation(line: 340, column: 7, scope: !1031, inlinedAt: !1041)
!1046 = !DILocation(line: 345, column: 10, scope: !1031, inlinedAt: !1041)
!1047 = !{!864, !864, i64 0}
!1048 = !DILocation(line: 345, column: 19, scope: !1031, inlinedAt: !1041)
!1049 = !DILocation(line: 345, column: 27, scope: !1031, inlinedAt: !1041)
!1050 = !DILocalVariable(name: "c", arg: 1, scope: !1051, file: !1052, line: 300, type: !26)
!1051 = distinct !DISubprogram(name: "c_isspace", scope: !1052, file: !1052, line: 300, type: !1053, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1055)
!1052 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!46, !26}
!1055 = !{!1050}
!1056 = !DILocation(line: 300, column: 16, scope: !1051, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 345, column: 30, scope: !1031, inlinedAt: !1041)
!1058 = !DILocation(line: 302, column: 3, scope: !1051, inlinedAt: !1057)
!1059 = !DILocation(line: 346, column: 12, scope: !1031, inlinedAt: !1041)
!1060 = distinct !{!1060, !1061, !1062}
!1061 = !DILocation(line: 345, column: 3, scope: !1031)
!1062 = !DILocation(line: 346, column: 12, scope: !1031)
!1063 = !DILocalVariable(name: "c", arg: 1, scope: !1064, file: !1052, line: 233, type: !26)
!1064 = distinct !DISubprogram(name: "c_isdigit", scope: !1052, file: !1052, line: 233, type: !1053, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1065)
!1065 = !{!1063}
!1066 = !DILocation(line: 233, column: 16, scope: !1064, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 349, column: 7, scope: !1038, inlinedAt: !1041)
!1068 = !DILocation(line: 235, column: 3, scope: !1064, inlinedAt: !1067)
!1069 = !DILocation(line: 349, column: 7, scope: !1031, inlinedAt: !1041)
!1070 = !DILocation(line: 351, column: 7, scope: !1037, inlinedAt: !1041)
!1071 = !DILocation(line: 351, column: 13, scope: !1037, inlinedAt: !1041)
!1072 = !DILocation(line: 352, column: 33, scope: !1037, inlinedAt: !1041)
!1073 = !DILocation(line: 352, column: 25, scope: !1037, inlinedAt: !1041)
!1074 = !DILocation(line: 354, column: 11, scope: !1075, inlinedAt: !1041)
!1075 = distinct !DILexicalBlock(scope: !1037, file: !1014, line: 354, column: 11)
!1076 = !DILocation(line: 354, column: 18, scope: !1075, inlinedAt: !1041)
!1077 = !DILocation(line: 354, column: 11, scope: !1037, inlinedAt: !1041)
!1078 = !DILocation(line: 356, column: 18, scope: !1079, inlinedAt: !1041)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !1014, line: 355, column: 9)
!1080 = !DILocation(line: 356, column: 26, scope: !1079, inlinedAt: !1041)
!1081 = !DILocation(line: 356, column: 34, scope: !1079, inlinedAt: !1041)
!1082 = !DILocation(line: 300, column: 16, scope: !1051, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 356, column: 37, scope: !1079, inlinedAt: !1041)
!1084 = !DILocation(line: 302, column: 3, scope: !1051, inlinedAt: !1083)
!1085 = !DILocation(line: 357, column: 19, scope: !1079, inlinedAt: !1041)
!1086 = distinct !{!1086, !1087, !1088}
!1087 = !DILocation(line: 356, column: 11, scope: !1079)
!1088 = !DILocation(line: 357, column: 19, scope: !1079)
!1089 = !DILocation(line: 358, column: 15, scope: !1079, inlinedAt: !1041)
!1090 = !DILocation(line: 365, column: 5, scope: !1038, inlinedAt: !1041)
!1091 = !DILocation(line: 0, scope: !1092, inlinedAt: !1041)
!1092 = distinct !DILexicalBlock(scope: !1079, file: !1014, line: 358, column: 15)
!1093 = !DILocation(line: 377, column: 25, scope: !1021)
!1094 = !DILocation(line: 381, column: 42, scope: !1021)
!1095 = !DILocation(line: 336, column: 32, scope: !1031, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 381, column: 23, scope: !1021)
!1097 = !DILocation(line: 338, column: 21, scope: !1031, inlinedAt: !1096)
!1098 = !DILocation(line: 340, column: 15, scope: !1044, inlinedAt: !1096)
!1099 = !DILocation(line: 340, column: 7, scope: !1031, inlinedAt: !1096)
!1100 = !DILocation(line: 345, column: 10, scope: !1031, inlinedAt: !1096)
!1101 = !DILocation(line: 345, column: 19, scope: !1031, inlinedAt: !1096)
!1102 = !DILocation(line: 345, column: 27, scope: !1031, inlinedAt: !1096)
!1103 = !DILocation(line: 300, column: 16, scope: !1051, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 345, column: 30, scope: !1031, inlinedAt: !1096)
!1105 = !DILocation(line: 302, column: 3, scope: !1051, inlinedAt: !1104)
!1106 = !DILocation(line: 346, column: 12, scope: !1031, inlinedAt: !1096)
!1107 = !DILocation(line: 233, column: 16, scope: !1064, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 349, column: 7, scope: !1038, inlinedAt: !1096)
!1109 = !DILocation(line: 235, column: 3, scope: !1064, inlinedAt: !1108)
!1110 = !DILocation(line: 349, column: 7, scope: !1031, inlinedAt: !1096)
!1111 = !DILocation(line: 351, column: 7, scope: !1037, inlinedAt: !1096)
!1112 = !DILocation(line: 351, column: 13, scope: !1037, inlinedAt: !1096)
!1113 = !DILocation(line: 352, column: 33, scope: !1037, inlinedAt: !1096)
!1114 = !DILocation(line: 352, column: 25, scope: !1037, inlinedAt: !1096)
!1115 = !DILocation(line: 354, column: 11, scope: !1075, inlinedAt: !1096)
!1116 = !DILocation(line: 354, column: 18, scope: !1075, inlinedAt: !1096)
!1117 = !DILocation(line: 354, column: 11, scope: !1037, inlinedAt: !1096)
!1118 = !DILocation(line: 356, column: 18, scope: !1079, inlinedAt: !1096)
!1119 = !DILocation(line: 356, column: 26, scope: !1079, inlinedAt: !1096)
!1120 = !DILocation(line: 356, column: 34, scope: !1079, inlinedAt: !1096)
!1121 = !DILocation(line: 300, column: 16, scope: !1051, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 356, column: 37, scope: !1079, inlinedAt: !1096)
!1123 = !DILocation(line: 302, column: 3, scope: !1051, inlinedAt: !1122)
!1124 = !DILocation(line: 357, column: 19, scope: !1079, inlinedAt: !1096)
!1125 = !DILocation(line: 358, column: 15, scope: !1079, inlinedAt: !1096)
!1126 = !DILocation(line: 365, column: 5, scope: !1038, inlinedAt: !1096)
!1127 = !DILocation(line: 382, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1021, file: !1014, line: 382, column: 11)
!1129 = !DILocation(line: 382, column: 11, scope: !1021)
!1130 = !DILocation(line: 385, column: 11, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1021, file: !1014, line: 385, column: 11)
!1132 = !DILocation(line: 386, column: 16, scope: !1131)
!1133 = !DILocation(line: 0, scope: !1013)
!1134 = !DILocalVariable(name: "query", arg: 1, scope: !1135, file: !1014, line: 206, type: !5)
!1135 = distinct !DISubprogram(name: "num_processors_ignoring_omp", scope: !1014, file: !1014, line: 206, type: !1015, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1136)
!1136 = !{!1134, !1137, !1141, !1144, !1147}
!1137 = !DILocalVariable(name: "nprocs", scope: !1138, file: !1014, line: 226, type: !104)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !1014, line: 225, column: 7)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !1014, line: 223, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !1014, line: 222, column: 7)
!1141 = !DILocalVariable(name: "nprocs", scope: !1142, file: !1014, line: 235, type: !1143)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !1014, line: 233, column: 7)
!1143 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1144 = !DILocalVariable(name: "nprocs", scope: !1145, file: !1014, line: 246, type: !1143)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1014, line: 244, column: 7)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !1014, line: 242, column: 5)
!1147 = !DILocalVariable(name: "nprocs_current", scope: !1148, file: !1014, line: 256, type: !104)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1014, line: 255, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !1014, line: 254, column: 13)
!1150 = !DILocation(line: 206, column: 47, scope: !1135, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 392, column: 28, scope: !1024)
!1152 = !DILocation(line: 222, column: 13, scope: !1140, inlinedAt: !1151)
!1153 = !DILocation(line: 222, column: 7, scope: !1135, inlinedAt: !1151)
!1154 = !DILocation(line: 129, column: 5, scope: !1155, inlinedAt: !1173)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1014, line: 128, column: 3)
!1156 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !1014, file: !1014, line: 69, type: !1157, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!104}
!1159 = !{!1160, !1170}
!1160 = !DILocalVariable(name: "set", scope: !1155, file: !1014, line: 129, type: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1162, line: 42, baseType: !1163)
!1162 = !DIFile(filename: "/usr/include/bits/cpu-set.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 39, size: 1024, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1163, file: !1162, line: 41, baseType: !1166, size: 1024)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 1024, elements: !1168)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1162, line: 32, baseType: !104)
!1168 = !{!1169}
!1169 = !DISubrange(count: 16)
!1170 = !DILocalVariable(name: "count", scope: !1171, file: !1014, line: 133, type: !104)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !1014, line: 132, column: 7)
!1172 = distinct !DILexicalBlock(scope: !1155, file: !1014, line: 131, column: 9)
!1173 = distinct !DILocation(line: 226, column: 32, scope: !1138, inlinedAt: !1151)
!1174 = !DILocation(line: 129, column: 15, scope: !1155, inlinedAt: !1173)
!1175 = !DILocation(line: 131, column: 9, scope: !1172, inlinedAt: !1173)
!1176 = !DILocation(line: 131, column: 51, scope: !1172, inlinedAt: !1173)
!1177 = !DILocation(line: 131, column: 9, scope: !1155, inlinedAt: !1173)
!1178 = !DILocation(line: 137, column: 17, scope: !1171, inlinedAt: !1173)
!1179 = !DILocation(line: 146, column: 19, scope: !1180, inlinedAt: !1173)
!1180 = distinct !DILexicalBlock(scope: !1171, file: !1014, line: 146, column: 13)
!1181 = !DILocation(line: 149, column: 3, scope: !1156, inlinedAt: !1173)
!1182 = !DILocation(line: 235, column: 27, scope: !1142, inlinedAt: !1151)
!1183 = !DILocation(line: 235, column: 18, scope: !1142, inlinedAt: !1151)
!1184 = !DILocation(line: 236, column: 20, scope: !1185, inlinedAt: !1151)
!1185 = distinct !DILexicalBlock(scope: !1142, file: !1014, line: 236, column: 13)
!1186 = !DILocation(line: 133, column: 23, scope: !1171, inlinedAt: !1173)
!1187 = !DILocation(line: 226, column: 23, scope: !1138, inlinedAt: !1151)
!1188 = !DILocation(line: 230, column: 7, scope: !1139, inlinedAt: !1151)
!1189 = !DILocation(line: 246, column: 27, scope: !1145, inlinedAt: !1151)
!1190 = !DILocation(line: 246, column: 18, scope: !1145, inlinedAt: !1151)
!1191 = !DILocation(line: 254, column: 20, scope: !1149, inlinedAt: !1151)
!1192 = !DILocation(line: 254, column: 13, scope: !1145, inlinedAt: !1151)
!1193 = !DILocation(line: 129, column: 5, scope: !1155, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 256, column: 44, scope: !1148, inlinedAt: !1151)
!1195 = !DILocation(line: 129, column: 15, scope: !1155, inlinedAt: !1194)
!1196 = !DILocation(line: 131, column: 9, scope: !1172, inlinedAt: !1194)
!1197 = !DILocation(line: 131, column: 51, scope: !1172, inlinedAt: !1194)
!1198 = !DILocation(line: 131, column: 9, scope: !1155, inlinedAt: !1194)
!1199 = !DILocation(line: 137, column: 17, scope: !1171, inlinedAt: !1194)
!1200 = !DILocation(line: 146, column: 19, scope: !1180, inlinedAt: !1194)
!1201 = !DILocation(line: 149, column: 3, scope: !1156, inlinedAt: !1194)
!1202 = !DILocation(line: 258, column: 17, scope: !1148, inlinedAt: !1151)
!1203 = !DILocation(line: 133, column: 23, scope: !1171, inlinedAt: !1194)
!1204 = !DILocation(line: 256, column: 27, scope: !1148, inlinedAt: !1151)
!1205 = !DILocation(line: 0, scope: !1145, inlinedAt: !1151)
!1206 = !DILocation(line: 263, column: 20, scope: !1207, inlinedAt: !1151)
!1207 = distinct !DILexicalBlock(scope: !1145, file: !1014, line: 263, column: 13)
!1208 = !DILocation(line: 330, column: 3, scope: !1135, inlinedAt: !1151)
!1209 = !DILocation(line: 0, scope: !1207, inlinedAt: !1151)
!1210 = !DILocation(line: 392, column: 19, scope: !1024)
!1211 = !DILocation(line: 393, column: 12, scope: !1024)
!1212 = !DILocation(line: 0, scope: !1131)
!1213 = !DILocation(line: 395, column: 1, scope: !1013)
!1214 = distinct !DISubprogram(name: "set_program_name", scope: !60, file: !60, line: 39, type: !837, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DILocalVariable(name: "argv0", arg: 1, scope: !1214, file: !60, line: 39, type: !23)
!1217 = !DILocalVariable(name: "slash", scope: !1214, file: !60, line: 46, type: !23)
!1218 = !DILocalVariable(name: "base", scope: !1214, file: !60, line: 47, type: !23)
!1219 = !DILocation(line: 39, column: 31, scope: !1214)
!1220 = !DILocation(line: 51, column: 13, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !60, line: 51, column: 7)
!1222 = !DILocation(line: 51, column: 7, scope: !1214)
!1223 = !DILocation(line: 55, column: 14, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !60, line: 52, column: 5)
!1225 = !DILocation(line: 54, column: 7, scope: !1224)
!1226 = !DILocation(line: 56, column: 7, scope: !1224)
!1227 = !DILocation(line: 59, column: 11, scope: !1214)
!1228 = !DILocation(line: 46, column: 15, scope: !1214)
!1229 = !DILocation(line: 60, column: 17, scope: !1214)
!1230 = !DILocation(line: 60, column: 33, scope: !1214)
!1231 = !DILocation(line: 60, column: 11, scope: !1214)
!1232 = !DILocation(line: 47, column: 15, scope: !1214)
!1233 = !DILocation(line: 61, column: 12, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1214, file: !60, line: 61, column: 7)
!1235 = !DILocation(line: 61, column: 20, scope: !1234)
!1236 = !DILocation(line: 61, column: 25, scope: !1234)
!1237 = !DILocation(line: 61, column: 42, scope: !1234)
!1238 = !DILocation(line: 61, column: 28, scope: !1234)
!1239 = !DILocation(line: 61, column: 61, scope: !1234)
!1240 = !DILocation(line: 61, column: 7, scope: !1214)
!1241 = !DILocation(line: 64, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !60, line: 64, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1234, file: !60, line: 62, column: 5)
!1244 = !DILocation(line: 64, column: 36, scope: !1242)
!1245 = !DILocation(line: 64, column: 11, scope: !1243)
!1246 = !DILocation(line: 66, column: 24, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !60, line: 65, column: 9)
!1248 = !DILocation(line: 70, column: 41, scope: !1247)
!1249 = !DILocation(line: 72, column: 9, scope: !1247)
!1250 = !DILocation(line: 84, column: 16, scope: !1214)
!1251 = !DILocation(line: 90, column: 27, scope: !1214)
!1252 = !DILocation(line: 92, column: 1, scope: !1214)
!1253 = distinct !DISubprogram(name: "clone_quoting_options", scope: !108, file: !108, line: 122, type: !1254, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !108, line: 122, type: !1256)
!1259 = !DILocalVariable(name: "e", scope: !1253, file: !108, line: 124, type: !26)
!1260 = !DILocalVariable(name: "p", scope: !1253, file: !108, line: 125, type: !1256)
!1261 = !DILocation(line: 122, column: 48, scope: !1253)
!1262 = !DILocation(line: 124, column: 11, scope: !1253)
!1263 = !DILocation(line: 124, column: 7, scope: !1253)
!1264 = !DILocation(line: 125, column: 40, scope: !1253)
!1265 = !DILocation(line: 125, column: 31, scope: !1253)
!1266 = !DILocation(line: 125, column: 27, scope: !1253)
!1267 = !DILocation(line: 127, column: 9, scope: !1253)
!1268 = !DILocation(line: 128, column: 3, scope: !1253)
!1269 = distinct !DISubprogram(name: "get_quoting_style", scope: !108, file: !108, line: 133, type: !1270, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1274)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!66, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "o", arg: 1, scope: !1269, file: !108, line: 133, type: !1272)
!1276 = !DILocation(line: 133, column: 50, scope: !1269)
!1277 = !DILocation(line: 135, column: 11, scope: !1269)
!1278 = !DILocation(line: 135, column: 46, scope: !1269)
!1279 = !{!1280, !864, i64 0}
!1280 = !{!"quoting_options", !864, i64 0, !943, i64 4, !864, i64 8, !863, i64 40, !863, i64 48}
!1281 = !DILocation(line: 135, column: 3, scope: !1269)
!1282 = distinct !DISubprogram(name: "set_quoting_style", scope: !108, file: !108, line: 141, type: !1283, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1256, !66}
!1285 = !{!1286, !1287}
!1286 = !DILocalVariable(name: "o", arg: 1, scope: !1282, file: !108, line: 141, type: !1256)
!1287 = !DILocalVariable(name: "s", arg: 2, scope: !1282, file: !108, line: 141, type: !66)
!1288 = !DILocation(line: 141, column: 44, scope: !1282)
!1289 = !DILocation(line: 141, column: 66, scope: !1282)
!1290 = !DILocation(line: 143, column: 4, scope: !1282)
!1291 = !DILocation(line: 143, column: 39, scope: !1282)
!1292 = !DILocation(line: 143, column: 45, scope: !1282)
!1293 = !DILocation(line: 144, column: 1, scope: !1282)
!1294 = distinct !DISubprogram(name: "set_char_quoting", scope: !108, file: !108, line: 152, type: !1295, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!26, !1256, !14, !26}
!1297 = !{!1298, !1299, !1300, !1301, !1303, !1305, !1306}
!1298 = !DILocalVariable(name: "o", arg: 1, scope: !1294, file: !108, line: 152, type: !1256)
!1299 = !DILocalVariable(name: "c", arg: 2, scope: !1294, file: !108, line: 152, type: !14)
!1300 = !DILocalVariable(name: "i", arg: 3, scope: !1294, file: !108, line: 152, type: !26)
!1301 = !DILocalVariable(name: "uc", scope: !1294, file: !108, line: 154, type: !1302)
!1302 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1303 = !DILocalVariable(name: "p", scope: !1294, file: !108, line: 155, type: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1305 = !DILocalVariable(name: "shift", scope: !1294, file: !108, line: 157, type: !26)
!1306 = !DILocalVariable(name: "r", scope: !1294, file: !108, line: 158, type: !26)
!1307 = !DILocation(line: 152, column: 43, scope: !1294)
!1308 = !DILocation(line: 152, column: 51, scope: !1294)
!1309 = !DILocation(line: 152, column: 58, scope: !1294)
!1310 = !DILocation(line: 154, column: 17, scope: !1294)
!1311 = !DILocation(line: 156, column: 6, scope: !1294)
!1312 = !DILocation(line: 156, column: 62, scope: !1294)
!1313 = !DILocation(line: 156, column: 57, scope: !1294)
!1314 = !DILocation(line: 155, column: 17, scope: !1294)
!1315 = !DILocation(line: 157, column: 15, scope: !1294)
!1316 = !DILocation(line: 157, column: 7, scope: !1294)
!1317 = !DILocation(line: 158, column: 12, scope: !1294)
!1318 = !DILocation(line: 158, column: 15, scope: !1294)
!1319 = !DILocation(line: 158, column: 25, scope: !1294)
!1320 = !DILocation(line: 158, column: 7, scope: !1294)
!1321 = !DILocation(line: 159, column: 13, scope: !1294)
!1322 = !DILocation(line: 159, column: 18, scope: !1294)
!1323 = !DILocation(line: 159, column: 23, scope: !1294)
!1324 = !DILocation(line: 159, column: 6, scope: !1294)
!1325 = !DILocation(line: 160, column: 3, scope: !1294)
!1326 = distinct !DISubprogram(name: "set_quoting_flags", scope: !108, file: !108, line: 168, type: !1327, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!26, !1256, !26}
!1329 = !{!1330, !1331, !1332}
!1330 = !DILocalVariable(name: "o", arg: 1, scope: !1326, file: !108, line: 168, type: !1256)
!1331 = !DILocalVariable(name: "i", arg: 2, scope: !1326, file: !108, line: 168, type: !26)
!1332 = !DILocalVariable(name: "r", scope: !1326, file: !108, line: 170, type: !26)
!1333 = !DILocation(line: 168, column: 44, scope: !1326)
!1334 = !DILocation(line: 168, column: 51, scope: !1326)
!1335 = !DILocation(line: 171, column: 8, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1326, file: !108, line: 171, column: 7)
!1337 = !DILocation(line: 171, column: 7, scope: !1326)
!1338 = !DILocation(line: 173, column: 10, scope: !1326)
!1339 = !{!1280, !943, i64 4}
!1340 = !DILocation(line: 170, column: 7, scope: !1326)
!1341 = !DILocation(line: 174, column: 12, scope: !1326)
!1342 = !DILocation(line: 175, column: 3, scope: !1326)
!1343 = distinct !DISubprogram(name: "set_custom_quoting", scope: !108, file: !108, line: 179, type: !1344, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1256, !23, !23}
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "o", arg: 1, scope: !1343, file: !108, line: 179, type: !1256)
!1348 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1343, file: !108, line: 180, type: !23)
!1349 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1343, file: !108, line: 180, type: !23)
!1350 = !DILocation(line: 179, column: 45, scope: !1343)
!1351 = !DILocation(line: 180, column: 33, scope: !1343)
!1352 = !DILocation(line: 180, column: 57, scope: !1343)
!1353 = !DILocation(line: 182, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1343, file: !108, line: 182, column: 7)
!1355 = !DILocation(line: 182, column: 7, scope: !1343)
!1356 = !DILocation(line: 184, column: 6, scope: !1343)
!1357 = !DILocation(line: 184, column: 12, scope: !1343)
!1358 = !DILocation(line: 185, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1343, file: !108, line: 185, column: 7)
!1360 = !DILocation(line: 185, column: 23, scope: !1359)
!1361 = !DILocation(line: 185, column: 19, scope: !1359)
!1362 = !DILocation(line: 186, column: 5, scope: !1359)
!1363 = !DILocation(line: 187, column: 6, scope: !1343)
!1364 = !DILocation(line: 187, column: 17, scope: !1343)
!1365 = !{!1280, !863, i64 40}
!1366 = !DILocation(line: 188, column: 6, scope: !1343)
!1367 = !DILocation(line: 188, column: 18, scope: !1343)
!1368 = !{!1280, !863, i64 48}
!1369 = !DILocation(line: 189, column: 1, scope: !1343)
!1370 = distinct !DISubprogram(name: "quotearg_buffer", scope: !108, file: !108, line: 784, type: !1371, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!102, !13, !102, !23, !102, !1272}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1374 = !DILocalVariable(name: "buffer", arg: 1, scope: !1370, file: !108, line: 784, type: !13)
!1375 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1370, file: !108, line: 784, type: !102)
!1376 = !DILocalVariable(name: "arg", arg: 3, scope: !1370, file: !108, line: 785, type: !23)
!1377 = !DILocalVariable(name: "argsize", arg: 4, scope: !1370, file: !108, line: 785, type: !102)
!1378 = !DILocalVariable(name: "o", arg: 5, scope: !1370, file: !108, line: 786, type: !1272)
!1379 = !DILocalVariable(name: "p", scope: !1370, file: !108, line: 788, type: !1272)
!1380 = !DILocalVariable(name: "e", scope: !1370, file: !108, line: 789, type: !26)
!1381 = !DILocalVariable(name: "r", scope: !1370, file: !108, line: 790, type: !102)
!1382 = !DILocation(line: 784, column: 24, scope: !1370)
!1383 = !DILocation(line: 784, column: 39, scope: !1370)
!1384 = !DILocation(line: 785, column: 30, scope: !1370)
!1385 = !DILocation(line: 785, column: 42, scope: !1370)
!1386 = !DILocation(line: 786, column: 48, scope: !1370)
!1387 = !DILocation(line: 788, column: 37, scope: !1370)
!1388 = !DILocation(line: 788, column: 33, scope: !1370)
!1389 = !DILocation(line: 789, column: 11, scope: !1370)
!1390 = !DILocation(line: 789, column: 7, scope: !1370)
!1391 = !DILocation(line: 791, column: 43, scope: !1370)
!1392 = !DILocation(line: 791, column: 53, scope: !1370)
!1393 = !DILocation(line: 791, column: 60, scope: !1370)
!1394 = !DILocation(line: 792, column: 43, scope: !1370)
!1395 = !DILocation(line: 792, column: 58, scope: !1370)
!1396 = !DILocation(line: 790, column: 14, scope: !1370)
!1397 = !DILocation(line: 790, column: 10, scope: !1370)
!1398 = !DILocation(line: 793, column: 9, scope: !1370)
!1399 = !DILocation(line: 794, column: 3, scope: !1370)
!1400 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !108, file: !108, line: 256, type: !1401, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1405)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!102, !13, !102, !23, !102, !66, !26, !1403, !23, !23}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1430, !1431, !1432, !1433, !1434, !1437, !1438, !1456, !1459, !1460, !1467}
!1406 = !DILocalVariable(name: "buffer", arg: 1, scope: !1400, file: !108, line: 256, type: !13)
!1407 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1400, file: !108, line: 256, type: !102)
!1408 = !DILocalVariable(name: "arg", arg: 3, scope: !1400, file: !108, line: 257, type: !23)
!1409 = !DILocalVariable(name: "argsize", arg: 4, scope: !1400, file: !108, line: 257, type: !102)
!1410 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1400, file: !108, line: 258, type: !66)
!1411 = !DILocalVariable(name: "flags", arg: 6, scope: !1400, file: !108, line: 258, type: !26)
!1412 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1400, file: !108, line: 259, type: !1403)
!1413 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1400, file: !108, line: 260, type: !23)
!1414 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1400, file: !108, line: 261, type: !23)
!1415 = !DILocalVariable(name: "i", scope: !1400, file: !108, line: 263, type: !102)
!1416 = !DILocalVariable(name: "len", scope: !1400, file: !108, line: 264, type: !102)
!1417 = !DILocalVariable(name: "orig_buffersize", scope: !1400, file: !108, line: 265, type: !102)
!1418 = !DILocalVariable(name: "quote_string", scope: !1400, file: !108, line: 266, type: !23)
!1419 = !DILocalVariable(name: "quote_string_len", scope: !1400, file: !108, line: 267, type: !102)
!1420 = !DILocalVariable(name: "backslash_escapes", scope: !1400, file: !108, line: 268, type: !46)
!1421 = !DILocalVariable(name: "unibyte_locale", scope: !1400, file: !108, line: 269, type: !46)
!1422 = !DILocalVariable(name: "elide_outer_quotes", scope: !1400, file: !108, line: 270, type: !46)
!1423 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1400, file: !108, line: 271, type: !46)
!1424 = !DILocalVariable(name: "encountered_single_quote", scope: !1400, file: !108, line: 272, type: !46)
!1425 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1400, file: !108, line: 273, type: !46)
!1426 = !DILocalVariable(name: "c", scope: !1427, file: !108, line: 402, type: !1302)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !108, line: 401, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !108, line: 400, column: 3)
!1429 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 400, column: 3)
!1430 = !DILocalVariable(name: "esc", scope: !1427, file: !108, line: 403, type: !1302)
!1431 = !DILocalVariable(name: "is_right_quote", scope: !1427, file: !108, line: 404, type: !46)
!1432 = !DILocalVariable(name: "escaping", scope: !1427, file: !108, line: 405, type: !46)
!1433 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1427, file: !108, line: 406, type: !46)
!1434 = !DILocalVariable(name: "m", scope: !1435, file: !108, line: 610, type: !102)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 608, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 426, column: 9)
!1437 = !DILocalVariable(name: "printable", scope: !1435, file: !108, line: 612, type: !46)
!1438 = !DILocalVariable(name: "mbstate", scope: !1439, file: !108, line: 621, type: !1441)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !108, line: 620, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !108, line: 614, column: 17)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1442, line: 6, baseType: !1443)
!1442 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1444, line: 21, baseType: !1445)
!1444 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 13, size: 64, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1445, file: !1444, line: 15, baseType: !26, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1445, file: !1444, line: 20, baseType: !1449, size: 32, offset: 32)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1444, line: 16, size: 32, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1449, file: !1444, line: 18, baseType: !7, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1449, file: !1444, line: 19, baseType: !1453, size: 32)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DISubrange(count: 4)
!1456 = !DILocalVariable(name: "w", scope: !1457, file: !108, line: 631, type: !1458)
!1457 = distinct !DILexicalBlock(scope: !1439, file: !108, line: 630, column: 19)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 90, baseType: !26)
!1459 = !DILocalVariable(name: "bytes", scope: !1457, file: !108, line: 632, type: !102)
!1460 = !DILocalVariable(name: "j", scope: !1461, file: !108, line: 657, type: !102)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !108, line: 656, column: 27)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !108, line: 654, column: 29)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !108, line: 649, column: 23)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !108, line: 641, column: 30)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !108, line: 636, column: 30)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !108, line: 634, column: 25)
!1467 = !DILocalVariable(name: "ilim", scope: !1468, file: !108, line: 684, type: !102)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !108, line: 681, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1435, file: !108, line: 680, column: 17)
!1470 = !DILocation(line: 256, column: 33, scope: !1400)
!1471 = !DILocation(line: 256, column: 48, scope: !1400)
!1472 = !DILocation(line: 257, column: 39, scope: !1400)
!1473 = !DILocation(line: 257, column: 51, scope: !1400)
!1474 = !DILocation(line: 258, column: 46, scope: !1400)
!1475 = !DILocation(line: 258, column: 65, scope: !1400)
!1476 = !DILocation(line: 259, column: 47, scope: !1400)
!1477 = !DILocation(line: 260, column: 39, scope: !1400)
!1478 = !DILocation(line: 261, column: 39, scope: !1400)
!1479 = !DILocation(line: 264, column: 10, scope: !1400)
!1480 = !DILocation(line: 265, column: 10, scope: !1400)
!1481 = !DILocation(line: 266, column: 15, scope: !1400)
!1482 = !DILocation(line: 267, column: 10, scope: !1400)
!1483 = !DILocation(line: 268, column: 8, scope: !1400)
!1484 = !DILocation(line: 269, column: 25, scope: !1400)
!1485 = !DILocation(line: 269, column: 36, scope: !1400)
!1486 = !DILocation(line: 270, column: 8, scope: !1400)
!1487 = !DILocation(line: 271, column: 8, scope: !1400)
!1488 = !DILocation(line: 272, column: 8, scope: !1400)
!1489 = !DILocation(line: 273, column: 8, scope: !1400)
!1490 = !DILocation(line: 273, column: 3, scope: !1400)
!1491 = !DILocation(line: 0, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 317, column: 5)
!1493 = !DILocation(line: 316, column: 3, scope: !1400)
!1494 = !DILocation(line: 323, column: 11, scope: !1492)
!1495 = !DILocation(line: 323, column: 12, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !108, line: 323, column: 11)
!1497 = !DILocation(line: 324, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !108, line: 324, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !108, line: 324, column: 9)
!1500 = !DILocation(line: 324, column: 9, scope: !1499)
!1501 = !DILocation(line: 362, column: 26, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !108, line: 340, column: 11)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !108, line: 339, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !108, line: 338, column: 7)
!1505 = !DILocation(line: 363, column: 27, scope: !1502)
!1506 = !DILocation(line: 364, column: 11, scope: !1502)
!1507 = !DILocation(line: 365, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !108, line: 365, column: 13)
!1509 = !DILocation(line: 365, column: 13, scope: !1504)
!1510 = !DILocation(line: 366, column: 43, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !108, line: 366, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !108, line: 366, column: 11)
!1513 = !DILocation(line: 366, column: 11, scope: !1512)
!1514 = !DILocation(line: 367, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !108, line: 367, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !108, line: 367, column: 13)
!1517 = !DILocation(line: 367, column: 13, scope: !1516)
!1518 = !DILocation(line: 366, column: 70, scope: !1511)
!1519 = distinct !{!1519, !1513, !1520}
!1520 = !DILocation(line: 367, column: 13, scope: !1512)
!1521 = !DILocation(line: 370, column: 28, scope: !1504)
!1522 = !DILocation(line: 372, column: 7, scope: !1492)
!1523 = !DILocation(line: 376, column: 7, scope: !1492)
!1524 = !DILocation(line: 379, column: 7, scope: !1492)
!1525 = !DILocation(line: 381, column: 12, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1492, file: !108, line: 381, column: 11)
!1527 = !DILocation(line: 381, column: 11, scope: !1492)
!1528 = !DILocation(line: 0, scope: !1526)
!1529 = !DILocation(line: 386, column: 12, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1492, file: !108, line: 386, column: 11)
!1531 = !DILocation(line: 386, column: 11, scope: !1492)
!1532 = !DILocation(line: 387, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !108, line: 387, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !108, line: 387, column: 9)
!1535 = !DILocation(line: 387, column: 9, scope: !1534)
!1536 = !DILocation(line: 394, column: 7, scope: !1492)
!1537 = !DILocation(line: 397, column: 7, scope: !1492)
!1538 = !DILocation(line: 0, scope: !1400)
!1539 = !DILocation(line: 263, column: 10, scope: !1400)
!1540 = !DILocation(line: 400, column: 8, scope: !1429)
!1541 = !DILocation(line: 0, scope: !1428)
!1542 = !DILocation(line: 400, column: 27, scope: !1428)
!1543 = !DILocation(line: 400, column: 19, scope: !1428)
!1544 = !DILocation(line: 400, column: 41, scope: !1428)
!1545 = !DILocation(line: 400, column: 48, scope: !1428)
!1546 = !DILocation(line: 400, column: 3, scope: !1429)
!1547 = !DILocation(line: 400, column: 60, scope: !1428)
!1548 = !DILocation(line: 404, column: 12, scope: !1427)
!1549 = !DILocation(line: 405, column: 12, scope: !1427)
!1550 = !DILocation(line: 406, column: 12, scope: !1427)
!1551 = !DILocation(line: 409, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 408, column: 11)
!1553 = !DILocation(line: 411, column: 17, scope: !1552)
!1554 = !DILocation(line: 412, column: 39, scope: !1552)
!1555 = !DILocation(line: 416, column: 32, scope: !1552)
!1556 = !DILocation(line: 412, column: 19, scope: !1552)
!1557 = !DILocation(line: 412, column: 15, scope: !1552)
!1558 = !DILocation(line: 417, column: 11, scope: !1552)
!1559 = !DILocation(line: 417, column: 26, scope: !1552)
!1560 = !DILocation(line: 417, column: 14, scope: !1552)
!1561 = !DILocation(line: 417, column: 63, scope: !1552)
!1562 = !DILocation(line: 408, column: 11, scope: !1427)
!1563 = !DILocation(line: 0, scope: !1427)
!1564 = !DILocation(line: 424, column: 11, scope: !1427)
!1565 = !DILocation(line: 402, column: 21, scope: !1427)
!1566 = !DILocation(line: 425, column: 7, scope: !1427)
!1567 = !DILocation(line: 428, column: 15, scope: !1436)
!1568 = !DILocation(line: 430, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !108, line: 430, column: 15)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !108, line: 429, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 428, column: 15)
!1572 = !DILocation(line: 430, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !108, line: 430, column: 15)
!1574 = !DILocation(line: 430, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !108, line: 430, column: 15)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !108, line: 430, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !108, line: 430, column: 15)
!1578 = !DILocation(line: 430, column: 15, scope: !1576)
!1579 = !DILocation(line: 430, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !108, line: 430, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !108, line: 430, column: 15)
!1582 = !DILocation(line: 430, column: 15, scope: !1581)
!1583 = !DILocation(line: 430, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !108, line: 430, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !108, line: 430, column: 15)
!1586 = !DILocation(line: 430, column: 15, scope: !1585)
!1587 = !DILocation(line: 430, column: 15, scope: !1577)
!1588 = !DILocation(line: 430, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !108, line: 430, column: 15)
!1590 = distinct !DILexicalBlock(scope: !1569, file: !108, line: 430, column: 15)
!1591 = !DILocation(line: 430, column: 15, scope: !1590)
!1592 = !DILocation(line: 438, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1570, file: !108, line: 437, column: 19)
!1594 = !DILocation(line: 438, column: 24, scope: !1593)
!1595 = !DILocation(line: 438, column: 28, scope: !1593)
!1596 = !DILocation(line: 438, column: 38, scope: !1593)
!1597 = !DILocation(line: 438, column: 48, scope: !1593)
!1598 = !DILocation(line: 438, column: 59, scope: !1593)
!1599 = !DILocation(line: 440, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !108, line: 440, column: 19)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !108, line: 440, column: 19)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !108, line: 439, column: 17)
!1603 = !DILocation(line: 440, column: 19, scope: !1601)
!1604 = !DILocation(line: 441, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !108, line: 441, column: 19)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !108, line: 441, column: 19)
!1607 = !DILocation(line: 441, column: 19, scope: !1606)
!1608 = !DILocation(line: 442, column: 17, scope: !1602)
!1609 = !DILocation(line: 449, column: 20, scope: !1571)
!1610 = !DILocation(line: 454, column: 11, scope: !1436)
!1611 = !DILocation(line: 457, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 455, column: 13)
!1613 = !DILocation(line: 463, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !108, line: 462, column: 19)
!1615 = !DILocation(line: 463, column: 24, scope: !1614)
!1616 = !DILocation(line: 463, column: 28, scope: !1614)
!1617 = !DILocation(line: 463, column: 38, scope: !1614)
!1618 = !DILocation(line: 463, column: 47, scope: !1614)
!1619 = !DILocation(line: 463, column: 41, scope: !1614)
!1620 = !DILocation(line: 463, column: 52, scope: !1614)
!1621 = !DILocation(line: 462, column: 19, scope: !1612)
!1622 = !DILocation(line: 464, column: 25, scope: !1614)
!1623 = !DILocation(line: 464, column: 17, scope: !1614)
!1624 = !DILocation(line: 471, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !108, line: 465, column: 19)
!1626 = !DILocation(line: 475, column: 21, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !108, line: 475, column: 21)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !108, line: 475, column: 21)
!1629 = !DILocation(line: 475, column: 21, scope: !1628)
!1630 = !DILocation(line: 476, column: 21, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !108, line: 476, column: 21)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !108, line: 476, column: 21)
!1633 = !DILocation(line: 476, column: 21, scope: !1632)
!1634 = !DILocation(line: 477, column: 21, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !108, line: 477, column: 21)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !108, line: 477, column: 21)
!1637 = !DILocation(line: 477, column: 21, scope: !1636)
!1638 = !DILocation(line: 478, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !108, line: 478, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1625, file: !108, line: 478, column: 21)
!1641 = !DILocation(line: 478, column: 21, scope: !1640)
!1642 = !DILocation(line: 479, column: 21, scope: !1625)
!1643 = !DILocation(line: 403, column: 21, scope: !1427)
!1644 = !DILocation(line: 492, column: 31, scope: !1436)
!1645 = !DILocation(line: 493, column: 31, scope: !1436)
!1646 = !DILocation(line: 495, column: 31, scope: !1436)
!1647 = !DILocation(line: 496, column: 31, scope: !1436)
!1648 = !DILocation(line: 497, column: 31, scope: !1436)
!1649 = !DILocation(line: 500, column: 15, scope: !1436)
!1650 = !DILocation(line: 502, column: 19, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !108, line: 501, column: 13)
!1652 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 500, column: 15)
!1653 = !DILocation(line: 509, column: 33, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 509, column: 15)
!1655 = !DILocation(line: 0, scope: !1436)
!1656 = !DILocation(line: 514, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 513, column: 15)
!1658 = !DILocation(line: 518, column: 15, scope: !1436)
!1659 = !DILocation(line: 526, column: 26, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 526, column: 15)
!1661 = !DILocation(line: 526, column: 15, scope: !1436)
!1662 = !DILocation(line: 526, column: 40, scope: !1660)
!1663 = !DILocation(line: 526, column: 47, scope: !1660)
!1664 = !DILocation(line: 530, column: 17, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 530, column: 15)
!1666 = !DILocation(line: 526, column: 18, scope: !1660)
!1667 = !DILocation(line: 526, column: 65, scope: !1660)
!1668 = !DILocation(line: 530, column: 15, scope: !1436)
!1669 = !DILocation(line: 535, column: 11, scope: !1436)
!1670 = !DILocation(line: 549, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 548, column: 15)
!1672 = !DILocation(line: 556, column: 15, scope: !1436)
!1673 = !DILocation(line: 558, column: 19, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !108, line: 557, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 556, column: 15)
!1676 = !DILocation(line: 561, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !108, line: 561, column: 19)
!1678 = !DILocation(line: 561, column: 35, scope: !1677)
!1679 = !DILocation(line: 561, column: 30, scope: !1677)
!1680 = !DILocation(line: 570, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !108, line: 570, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1674, file: !108, line: 570, column: 15)
!1683 = !DILocation(line: 570, column: 15, scope: !1682)
!1684 = !DILocation(line: 571, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !108, line: 571, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !108, line: 571, column: 15)
!1687 = !DILocation(line: 571, column: 15, scope: !1686)
!1688 = !DILocation(line: 572, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !108, line: 572, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1674, file: !108, line: 572, column: 15)
!1691 = !DILocation(line: 572, column: 15, scope: !1690)
!1692 = !DILocation(line: 574, column: 13, scope: !1674)
!1693 = !DILocation(line: 614, column: 17, scope: !1435)
!1694 = !DILocation(line: 610, column: 20, scope: !1435)
!1695 = !DILocation(line: 617, column: 29, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1440, file: !108, line: 615, column: 15)
!1697 = !{!1698, !1698, i64 0}
!1698 = !{!"short", !864, i64 0}
!1699 = !DILocation(line: 617, column: 27, scope: !1696)
!1700 = !DILocation(line: 612, column: 18, scope: !1435)
!1701 = !DILocation(line: 618, column: 15, scope: !1696)
!1702 = !DILocation(line: 621, column: 17, scope: !1439)
!1703 = !DILocation(line: 622, column: 17, scope: !1439)
!1704 = !DILocation(line: 626, column: 29, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1439, file: !108, line: 626, column: 21)
!1706 = !DILocation(line: 626, column: 21, scope: !1439)
!1707 = !DILocation(line: 627, column: 29, scope: !1705)
!1708 = !DILocation(line: 627, column: 19, scope: !1705)
!1709 = !DILocation(line: 0, scope: !1552)
!1710 = !DILocation(line: 629, column: 17, scope: !1439)
!1711 = !DILocation(line: 624, column: 19, scope: !1439)
!1712 = !DILocation(line: 625, column: 27, scope: !1439)
!1713 = !DILocation(line: 631, column: 21, scope: !1457)
!1714 = !DILocation(line: 632, column: 56, scope: !1457)
!1715 = !DILocation(line: 632, column: 50, scope: !1457)
!1716 = !DILocation(line: 633, column: 53, scope: !1457)
!1717 = !DILocation(line: 621, column: 27, scope: !1439)
!1718 = !DILocation(line: 631, column: 29, scope: !1457)
!1719 = !DILocation(line: 632, column: 36, scope: !1457)
!1720 = !DILocation(line: 632, column: 28, scope: !1457)
!1721 = !DILocation(line: 634, column: 25, scope: !1457)
!1722 = !DILocation(line: 644, column: 38, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1464, file: !108, line: 642, column: 23)
!1724 = !DILocation(line: 644, column: 48, scope: !1723)
!1725 = !DILocation(line: 644, column: 51, scope: !1723)
!1726 = !DILocation(line: 644, column: 25, scope: !1723)
!1727 = !DILocation(line: 645, column: 28, scope: !1723)
!1728 = !DILocation(line: 644, column: 34, scope: !1723)
!1729 = distinct !{!1729, !1726, !1727}
!1730 = !DILocation(line: 658, column: 43, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !108, line: 658, column: 29)
!1732 = distinct !DILexicalBlock(scope: !1461, file: !108, line: 658, column: 29)
!1733 = !DILocation(line: 655, column: 29, scope: !1462)
!1734 = !DILocation(line: 657, column: 36, scope: !1461)
!1735 = !DILocation(line: 659, column: 49, scope: !1731)
!1736 = !DILocation(line: 659, column: 39, scope: !1731)
!1737 = !DILocation(line: 659, column: 31, scope: !1731)
!1738 = !DILocation(line: 658, column: 53, scope: !1731)
!1739 = !DILocation(line: 658, column: 29, scope: !1732)
!1740 = distinct !{!1740, !1739, !1741}
!1741 = !DILocation(line: 667, column: 33, scope: !1732)
!1742 = !DILocation(line: 674, column: 19, scope: !1439)
!1743 = !DILocation(line: 670, column: 41, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1463, file: !108, line: 670, column: 29)
!1745 = !DILocation(line: 670, column: 31, scope: !1744)
!1746 = !DILocation(line: 670, column: 29, scope: !1463)
!1747 = !DILocation(line: 672, column: 27, scope: !1463)
!1748 = !DILocation(line: 675, column: 26, scope: !1439)
!1749 = !DILocation(line: 675, column: 24, scope: !1439)
!1750 = !DILocation(line: 674, column: 19, scope: !1457)
!1751 = distinct !{!1751, !1710, !1752}
!1752 = !DILocation(line: 675, column: 44, scope: !1439)
!1753 = !DILocation(line: 676, column: 15, scope: !1440)
!1754 = !DILocation(line: 0, scope: !1705)
!1755 = !DILocation(line: 0, scope: !1439)
!1756 = !DILocation(line: 678, column: 40, scope: !1435)
!1757 = !DILocation(line: 680, column: 19, scope: !1469)
!1758 = !DILocation(line: 680, column: 45, scope: !1469)
!1759 = !DILocation(line: 680, column: 23, scope: !1469)
!1760 = !DILocation(line: 684, column: 33, scope: !1468)
!1761 = !DILocation(line: 684, column: 24, scope: !1468)
!1762 = !DILocation(line: 686, column: 17, scope: !1468)
!1763 = !DILocation(line: 0, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !108, line: 687, column: 19)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !108, line: 686, column: 17)
!1766 = distinct !DILexicalBlock(scope: !1468, file: !108, line: 686, column: 17)
!1767 = !DILocation(line: 0, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !108, line: 703, column: 21)
!1769 = !DILocation(line: 0, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !108, line: 696, column: 23)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !108, line: 695, column: 30)
!1772 = distinct !DILexicalBlock(scope: !1764, file: !108, line: 688, column: 25)
!1773 = !DILocation(line: 688, column: 43, scope: !1772)
!1774 = !DILocation(line: 690, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !108, line: 690, column: 25)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !108, line: 689, column: 23)
!1777 = !DILocation(line: 690, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !108, line: 690, column: 25)
!1779 = !DILocation(line: 690, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !108, line: 690, column: 25)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !108, line: 690, column: 25)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !108, line: 690, column: 25)
!1783 = !DILocation(line: 690, column: 25, scope: !1781)
!1784 = !DILocation(line: 690, column: 25, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !108, line: 690, column: 25)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !108, line: 690, column: 25)
!1787 = !DILocation(line: 690, column: 25, scope: !1786)
!1788 = !DILocation(line: 690, column: 25, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !108, line: 690, column: 25)
!1790 = distinct !DILexicalBlock(scope: !1782, file: !108, line: 690, column: 25)
!1791 = !DILocation(line: 690, column: 25, scope: !1790)
!1792 = !DILocation(line: 690, column: 25, scope: !1782)
!1793 = !DILocation(line: 690, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !108, line: 690, column: 25)
!1795 = distinct !DILexicalBlock(scope: !1775, file: !108, line: 690, column: 25)
!1796 = !DILocation(line: 690, column: 25, scope: !1795)
!1797 = !DILocation(line: 691, column: 25, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !108, line: 691, column: 25)
!1799 = distinct !DILexicalBlock(scope: !1776, file: !108, line: 691, column: 25)
!1800 = !DILocation(line: 691, column: 25, scope: !1799)
!1801 = !DILocation(line: 692, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !108, line: 692, column: 25)
!1803 = distinct !DILexicalBlock(scope: !1776, file: !108, line: 692, column: 25)
!1804 = !DILocation(line: 692, column: 25, scope: !1803)
!1805 = !DILocation(line: 693, column: 38, scope: !1776)
!1806 = !DILocation(line: 693, column: 33, scope: !1776)
!1807 = !DILocation(line: 694, column: 23, scope: !1776)
!1808 = !DILocation(line: 695, column: 30, scope: !1771)
!1809 = !DILocation(line: 695, column: 30, scope: !1772)
!1810 = !DILocation(line: 697, column: 25, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !108, line: 697, column: 25)
!1812 = distinct !DILexicalBlock(scope: !1770, file: !108, line: 697, column: 25)
!1813 = !DILocation(line: 697, column: 25, scope: !1812)
!1814 = !DILocation(line: 699, column: 23, scope: !1770)
!1815 = !DILocation(line: 0, scope: !1803)
!1816 = !DILocation(line: 0, scope: !1776)
!1817 = !DILocation(line: 0, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1552, file: !108, line: 418, column: 9)
!1819 = !DILocation(line: 0, scope: !1775)
!1820 = !DILocation(line: 700, column: 35, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1764, file: !108, line: 700, column: 25)
!1822 = !DILocation(line: 700, column: 30, scope: !1821)
!1823 = !DILocation(line: 700, column: 25, scope: !1764)
!1824 = !DILocation(line: 702, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !108, line: 702, column: 21)
!1826 = distinct !DILexicalBlock(scope: !1764, file: !108, line: 702, column: 21)
!1827 = !DILocation(line: 702, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !108, line: 702, column: 21)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !108, line: 702, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !108, line: 702, column: 21)
!1831 = !DILocation(line: 702, column: 21, scope: !1829)
!1832 = !DILocation(line: 702, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !108, line: 702, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !108, line: 702, column: 21)
!1835 = !DILocation(line: 702, column: 21, scope: !1834)
!1836 = !DILocation(line: 702, column: 21, scope: !1830)
!1837 = !DILocation(line: 0, scope: !1812)
!1838 = !DILocation(line: 703, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1768, file: !108, line: 703, column: 21)
!1840 = !DILocation(line: 703, column: 21, scope: !1768)
!1841 = !DILocation(line: 704, column: 25, scope: !1764)
!1842 = !DILocation(line: 686, column: 17, scope: !1765)
!1843 = distinct !{!1843, !1844, !1845}
!1844 = !DILocation(line: 686, column: 17, scope: !1766)
!1845 = !DILocation(line: 705, column: 19, scope: !1766)
!1846 = !DILocation(line: 0, scope: !1429)
!1847 = !DILocation(line: 416, column: 30, scope: !1552)
!1848 = !DILocation(line: 712, column: 34, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 712, column: 11)
!1850 = !DILocation(line: 714, column: 14, scope: !1849)
!1851 = !DILocation(line: 715, column: 14, scope: !1849)
!1852 = !DILocation(line: 715, column: 35, scope: !1849)
!1853 = !DILocation(line: 715, column: 17, scope: !1849)
!1854 = !DILocation(line: 715, column: 47, scope: !1849)
!1855 = !DILocation(line: 715, column: 65, scope: !1849)
!1856 = !DILocation(line: 716, column: 15, scope: !1849)
!1857 = !DILocation(line: 716, column: 11, scope: !1849)
!1858 = !DILocation(line: 712, column: 11, scope: !1427)
!1859 = !DILocation(line: 400, column: 10, scope: !1429)
!1860 = !DILocation(line: 0, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !108, line: 519, column: 13)
!1862 = distinct !DILexicalBlock(scope: !1436, file: !108, line: 518, column: 15)
!1863 = !DILocation(line: 720, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 720, column: 7)
!1865 = !DILocation(line: 720, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !108, line: 720, column: 7)
!1867 = !DILocation(line: 720, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !108, line: 720, column: 7)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !108, line: 720, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !108, line: 720, column: 7)
!1871 = !DILocation(line: 720, column: 7, scope: !1869)
!1872 = !DILocation(line: 720, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !108, line: 720, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !108, line: 720, column: 7)
!1875 = !DILocation(line: 720, column: 7, scope: !1874)
!1876 = !DILocation(line: 720, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !108, line: 720, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1870, file: !108, line: 720, column: 7)
!1879 = !DILocation(line: 720, column: 7, scope: !1878)
!1880 = !DILocation(line: 720, column: 7, scope: !1870)
!1881 = !DILocation(line: 720, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !108, line: 720, column: 7)
!1883 = distinct !DILexicalBlock(scope: !1864, file: !108, line: 720, column: 7)
!1884 = !DILocation(line: 720, column: 7, scope: !1883)
!1885 = !DILocation(line: 723, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !108, line: 723, column: 7)
!1887 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 723, column: 7)
!1888 = !DILocation(line: 424, column: 9, scope: !1427)
!1889 = !DILocation(line: 723, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !108, line: 723, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !108, line: 723, column: 7)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !108, line: 723, column: 7)
!1893 = !DILocation(line: 723, column: 7, scope: !1891)
!1894 = !DILocation(line: 723, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !108, line: 723, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !108, line: 723, column: 7)
!1897 = !DILocation(line: 723, column: 7, scope: !1896)
!1898 = !DILocation(line: 723, column: 7, scope: !1892)
!1899 = !DILocation(line: 724, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !108, line: 724, column: 7)
!1901 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 724, column: 7)
!1902 = !DILocation(line: 724, column: 7, scope: !1901)
!1903 = !DILocation(line: 726, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 726, column: 11)
!1905 = !DILocation(line: 726, column: 11, scope: !1427)
!1906 = !DILocation(line: 728, column: 5, scope: !1428)
!1907 = !DILocation(line: 400, column: 75, scope: !1428)
!1908 = !DILocation(line: 400, column: 3, scope: !1428)
!1909 = distinct !{!1909, !1546, !1910}
!1910 = !DILocation(line: 728, column: 5, scope: !1429)
!1911 = !DILocation(line: 730, column: 11, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 730, column: 7)
!1913 = !DILocation(line: 730, column: 16, scope: !1912)
!1914 = !DILocation(line: 738, column: 51, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 738, column: 7)
!1916 = !DILocation(line: 739, column: 10, scope: !1915)
!1917 = !DILocation(line: 741, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !108, line: 741, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !108, line: 740, column: 5)
!1920 = !DILocation(line: 741, column: 11, scope: !1919)
!1921 = !DILocation(line: 742, column: 16, scope: !1918)
!1922 = !DILocation(line: 742, column: 9, scope: !1918)
!1923 = !DILocation(line: 746, column: 18, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !108, line: 746, column: 16)
!1925 = !DILocation(line: 746, column: 32, scope: !1924)
!1926 = !DILocation(line: 746, column: 29, scope: !1924)
!1927 = !DILocation(line: 755, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 755, column: 7)
!1929 = !DILocation(line: 755, column: 20, scope: !1928)
!1930 = !DILocation(line: 756, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !108, line: 756, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !108, line: 756, column: 5)
!1933 = !DILocation(line: 756, column: 5, scope: !1932)
!1934 = !DILocation(line: 757, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !108, line: 757, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !108, line: 757, column: 7)
!1937 = !DILocation(line: 757, column: 7, scope: !1936)
!1938 = !DILocation(line: 756, column: 39, scope: !1931)
!1939 = distinct !{!1939, !1933, !1940}
!1940 = !DILocation(line: 757, column: 7, scope: !1932)
!1941 = !DILocation(line: 759, column: 11, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 759, column: 7)
!1943 = !DILocation(line: 759, column: 7, scope: !1400)
!1944 = !DILocation(line: 760, column: 5, scope: !1942)
!1945 = !DILocation(line: 760, column: 17, scope: !1942)
!1946 = !DILocation(line: 766, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 766, column: 7)
!1948 = !DILocation(line: 766, column: 54, scope: !1947)
!1949 = !DILocation(line: 766, column: 51, scope: !1947)
!1950 = !DILocation(line: 770, column: 42, scope: !1400)
!1951 = !DILocation(line: 768, column: 10, scope: !1400)
!1952 = !DILocation(line: 768, column: 3, scope: !1400)
!1953 = !DILocation(line: 772, column: 1, scope: !1400)
!1954 = distinct !DISubprogram(name: "gettext_quote", scope: !108, file: !108, line: 207, type: !1955, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!23, !23, !66}
!1957 = !{!1958, !1959, !1960, !1961}
!1958 = !DILocalVariable(name: "msgid", arg: 1, scope: !1954, file: !108, line: 207, type: !23)
!1959 = !DILocalVariable(name: "s", arg: 2, scope: !1954, file: !108, line: 207, type: !66)
!1960 = !DILocalVariable(name: "translation", scope: !1954, file: !108, line: 209, type: !23)
!1961 = !DILocalVariable(name: "locale_code", scope: !1954, file: !108, line: 210, type: !23)
!1962 = !DILocation(line: 207, column: 28, scope: !1954)
!1963 = !DILocation(line: 207, column: 54, scope: !1954)
!1964 = !DILocation(line: 209, column: 29, scope: !1954)
!1965 = !DILocation(line: 209, column: 15, scope: !1954)
!1966 = !DILocation(line: 212, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1954, file: !108, line: 212, column: 7)
!1968 = !DILocation(line: 212, column: 7, scope: !1954)
!1969 = !DILocation(line: 233, column: 17, scope: !1954)
!1970 = !DILocation(line: 210, column: 15, scope: !1954)
!1971 = !DILocalVariable(name: "s1", arg: 1, scope: !1972, file: !1973, line: 160, type: !23)
!1972 = distinct !DISubprogram(name: "strcaseeq0", scope: !1973, file: !1973, line: 160, type: !1974, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1976)
!1973 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!1976 = !{!1971, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1977 = !DILocalVariable(name: "s2", arg: 2, scope: !1972, file: !1973, line: 160, type: !23)
!1978 = !DILocalVariable(name: "s20", arg: 3, scope: !1972, file: !1973, line: 160, type: !14)
!1979 = !DILocalVariable(name: "s21", arg: 4, scope: !1972, file: !1973, line: 160, type: !14)
!1980 = !DILocalVariable(name: "s22", arg: 5, scope: !1972, file: !1973, line: 160, type: !14)
!1981 = !DILocalVariable(name: "s23", arg: 6, scope: !1972, file: !1973, line: 160, type: !14)
!1982 = !DILocalVariable(name: "s24", arg: 7, scope: !1972, file: !1973, line: 160, type: !14)
!1983 = !DILocalVariable(name: "s25", arg: 8, scope: !1972, file: !1973, line: 160, type: !14)
!1984 = !DILocalVariable(name: "s26", arg: 9, scope: !1972, file: !1973, line: 160, type: !14)
!1985 = !DILocalVariable(name: "s27", arg: 10, scope: !1972, file: !1973, line: 160, type: !14)
!1986 = !DILocalVariable(name: "s28", arg: 11, scope: !1972, file: !1973, line: 160, type: !14)
!1987 = !DILocation(line: 160, column: 25, scope: !1972, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 234, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1954, file: !108, line: 234, column: 7)
!1990 = !DILocation(line: 160, column: 41, scope: !1972, inlinedAt: !1988)
!1991 = !DILocation(line: 160, column: 50, scope: !1972, inlinedAt: !1988)
!1992 = !DILocation(line: 160, column: 60, scope: !1972, inlinedAt: !1988)
!1993 = !DILocation(line: 160, column: 70, scope: !1972, inlinedAt: !1988)
!1994 = !DILocation(line: 160, column: 80, scope: !1972, inlinedAt: !1988)
!1995 = !DILocation(line: 160, column: 90, scope: !1972, inlinedAt: !1988)
!1996 = !DILocation(line: 160, column: 100, scope: !1972, inlinedAt: !1988)
!1997 = !DILocation(line: 160, column: 110, scope: !1972, inlinedAt: !1988)
!1998 = !DILocation(line: 160, column: 120, scope: !1972, inlinedAt: !1988)
!1999 = !DILocation(line: 160, column: 130, scope: !1972, inlinedAt: !1988)
!2000 = !DILocation(line: 162, column: 7, scope: !2001, inlinedAt: !1988)
!2001 = distinct !DILexicalBlock(scope: !1972, file: !1973, line: 162, column: 7)
!2002 = !DILocalVariable(name: "s1", arg: 1, scope: !2003, file: !1973, line: 146, type: !23)
!2003 = distinct !DISubprogram(name: "strcaseeq1", scope: !1973, file: !1973, line: 146, type: !2004, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14, !14}
!2006 = !{!2002, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015}
!2007 = !DILocalVariable(name: "s2", arg: 2, scope: !2003, file: !1973, line: 146, type: !23)
!2008 = !DILocalVariable(name: "s21", arg: 3, scope: !2003, file: !1973, line: 146, type: !14)
!2009 = !DILocalVariable(name: "s22", arg: 4, scope: !2003, file: !1973, line: 146, type: !14)
!2010 = !DILocalVariable(name: "s23", arg: 5, scope: !2003, file: !1973, line: 146, type: !14)
!2011 = !DILocalVariable(name: "s24", arg: 6, scope: !2003, file: !1973, line: 146, type: !14)
!2012 = !DILocalVariable(name: "s25", arg: 7, scope: !2003, file: !1973, line: 146, type: !14)
!2013 = !DILocalVariable(name: "s26", arg: 8, scope: !2003, file: !1973, line: 146, type: !14)
!2014 = !DILocalVariable(name: "s27", arg: 9, scope: !2003, file: !1973, line: 146, type: !14)
!2015 = !DILocalVariable(name: "s28", arg: 10, scope: !2003, file: !1973, line: 146, type: !14)
!2016 = !DILocation(line: 146, column: 25, scope: !2003, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 167, column: 16, scope: !2018, inlinedAt: !1988)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !1973, line: 164, column: 11)
!2019 = distinct !DILexicalBlock(scope: !2001, file: !1973, line: 163, column: 5)
!2020 = !DILocation(line: 146, column: 41, scope: !2003, inlinedAt: !2017)
!2021 = !DILocation(line: 146, column: 50, scope: !2003, inlinedAt: !2017)
!2022 = !DILocation(line: 146, column: 60, scope: !2003, inlinedAt: !2017)
!2023 = !DILocation(line: 146, column: 70, scope: !2003, inlinedAt: !2017)
!2024 = !DILocation(line: 146, column: 80, scope: !2003, inlinedAt: !2017)
!2025 = !DILocation(line: 146, column: 90, scope: !2003, inlinedAt: !2017)
!2026 = !DILocation(line: 146, column: 100, scope: !2003, inlinedAt: !2017)
!2027 = !DILocation(line: 146, column: 110, scope: !2003, inlinedAt: !2017)
!2028 = !DILocation(line: 146, column: 120, scope: !2003, inlinedAt: !2017)
!2029 = !DILocation(line: 148, column: 7, scope: !2030, inlinedAt: !2017)
!2030 = distinct !DILexicalBlock(scope: !2003, file: !1973, line: 148, column: 7)
!2031 = !DILocalVariable(name: "s1", arg: 1, scope: !2032, file: !1973, line: 132, type: !23)
!2032 = distinct !DISubprogram(name: "strcaseeq2", scope: !1973, file: !1973, line: 132, type: !2033, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14}
!2035 = !{!2031, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2036 = !DILocalVariable(name: "s2", arg: 2, scope: !2032, file: !1973, line: 132, type: !23)
!2037 = !DILocalVariable(name: "s22", arg: 3, scope: !2032, file: !1973, line: 132, type: !14)
!2038 = !DILocalVariable(name: "s23", arg: 4, scope: !2032, file: !1973, line: 132, type: !14)
!2039 = !DILocalVariable(name: "s24", arg: 5, scope: !2032, file: !1973, line: 132, type: !14)
!2040 = !DILocalVariable(name: "s25", arg: 6, scope: !2032, file: !1973, line: 132, type: !14)
!2041 = !DILocalVariable(name: "s26", arg: 7, scope: !2032, file: !1973, line: 132, type: !14)
!2042 = !DILocalVariable(name: "s27", arg: 8, scope: !2032, file: !1973, line: 132, type: !14)
!2043 = !DILocalVariable(name: "s28", arg: 9, scope: !2032, file: !1973, line: 132, type: !14)
!2044 = !DILocation(line: 132, column: 25, scope: !2032, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 153, column: 16, scope: !2046, inlinedAt: !2017)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1973, line: 150, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2030, file: !1973, line: 149, column: 5)
!2048 = !DILocation(line: 132, column: 41, scope: !2032, inlinedAt: !2045)
!2049 = !DILocation(line: 132, column: 50, scope: !2032, inlinedAt: !2045)
!2050 = !DILocation(line: 132, column: 60, scope: !2032, inlinedAt: !2045)
!2051 = !DILocation(line: 132, column: 70, scope: !2032, inlinedAt: !2045)
!2052 = !DILocation(line: 132, column: 80, scope: !2032, inlinedAt: !2045)
!2053 = !DILocation(line: 132, column: 90, scope: !2032, inlinedAt: !2045)
!2054 = !DILocation(line: 132, column: 100, scope: !2032, inlinedAt: !2045)
!2055 = !DILocation(line: 132, column: 110, scope: !2032, inlinedAt: !2045)
!2056 = !DILocation(line: 134, column: 7, scope: !2057, inlinedAt: !2045)
!2057 = distinct !DILexicalBlock(scope: !2032, file: !1973, line: 134, column: 7)
!2058 = !DILocalVariable(name: "s1", arg: 1, scope: !2059, file: !1973, line: 118, type: !23)
!2059 = distinct !DISubprogram(name: "strcaseeq3", scope: !1973, file: !1973, line: 118, type: !2060, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14}
!2062 = !{!2058, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!2063 = !DILocalVariable(name: "s2", arg: 2, scope: !2059, file: !1973, line: 118, type: !23)
!2064 = !DILocalVariable(name: "s23", arg: 3, scope: !2059, file: !1973, line: 118, type: !14)
!2065 = !DILocalVariable(name: "s24", arg: 4, scope: !2059, file: !1973, line: 118, type: !14)
!2066 = !DILocalVariable(name: "s25", arg: 5, scope: !2059, file: !1973, line: 118, type: !14)
!2067 = !DILocalVariable(name: "s26", arg: 6, scope: !2059, file: !1973, line: 118, type: !14)
!2068 = !DILocalVariable(name: "s27", arg: 7, scope: !2059, file: !1973, line: 118, type: !14)
!2069 = !DILocalVariable(name: "s28", arg: 8, scope: !2059, file: !1973, line: 118, type: !14)
!2070 = !DILocation(line: 118, column: 25, scope: !2059, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 139, column: 16, scope: !2072, inlinedAt: !2045)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !1973, line: 136, column: 11)
!2073 = distinct !DILexicalBlock(scope: !2057, file: !1973, line: 135, column: 5)
!2074 = !DILocation(line: 118, column: 41, scope: !2059, inlinedAt: !2071)
!2075 = !DILocation(line: 118, column: 50, scope: !2059, inlinedAt: !2071)
!2076 = !DILocation(line: 118, column: 60, scope: !2059, inlinedAt: !2071)
!2077 = !DILocation(line: 118, column: 70, scope: !2059, inlinedAt: !2071)
!2078 = !DILocation(line: 118, column: 80, scope: !2059, inlinedAt: !2071)
!2079 = !DILocation(line: 118, column: 90, scope: !2059, inlinedAt: !2071)
!2080 = !DILocation(line: 118, column: 100, scope: !2059, inlinedAt: !2071)
!2081 = !DILocation(line: 120, column: 7, scope: !2082, inlinedAt: !2071)
!2082 = distinct !DILexicalBlock(scope: !2059, file: !1973, line: 120, column: 7)
!2083 = !DILocation(line: 120, column: 7, scope: !2059, inlinedAt: !2071)
!2084 = !DILocalVariable(name: "s1", arg: 1, scope: !2085, file: !1973, line: 104, type: !23)
!2085 = distinct !DISubprogram(name: "strcaseeq4", scope: !1973, file: !1973, line: 104, type: !2086, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!26, !23, !23, !14, !14, !14, !14, !14}
!2088 = !{!2084, !2089, !2090, !2091, !2092, !2093, !2094}
!2089 = !DILocalVariable(name: "s2", arg: 2, scope: !2085, file: !1973, line: 104, type: !23)
!2090 = !DILocalVariable(name: "s24", arg: 3, scope: !2085, file: !1973, line: 104, type: !14)
!2091 = !DILocalVariable(name: "s25", arg: 4, scope: !2085, file: !1973, line: 104, type: !14)
!2092 = !DILocalVariable(name: "s26", arg: 5, scope: !2085, file: !1973, line: 104, type: !14)
!2093 = !DILocalVariable(name: "s27", arg: 6, scope: !2085, file: !1973, line: 104, type: !14)
!2094 = !DILocalVariable(name: "s28", arg: 7, scope: !2085, file: !1973, line: 104, type: !14)
!2095 = !DILocation(line: 104, column: 25, scope: !2085, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 125, column: 16, scope: !2097, inlinedAt: !2071)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1973, line: 122, column: 11)
!2098 = distinct !DILexicalBlock(scope: !2082, file: !1973, line: 121, column: 5)
!2099 = !DILocation(line: 104, column: 41, scope: !2085, inlinedAt: !2096)
!2100 = !DILocation(line: 104, column: 50, scope: !2085, inlinedAt: !2096)
!2101 = !DILocation(line: 104, column: 60, scope: !2085, inlinedAt: !2096)
!2102 = !DILocation(line: 104, column: 70, scope: !2085, inlinedAt: !2096)
!2103 = !DILocation(line: 104, column: 80, scope: !2085, inlinedAt: !2096)
!2104 = !DILocation(line: 104, column: 90, scope: !2085, inlinedAt: !2096)
!2105 = !DILocation(line: 106, column: 7, scope: !2106, inlinedAt: !2096)
!2106 = distinct !DILexicalBlock(scope: !2085, file: !1973, line: 106, column: 7)
!2107 = !DILocation(line: 106, column: 7, scope: !2085, inlinedAt: !2096)
!2108 = !DILocalVariable(name: "s1", arg: 1, scope: !2109, file: !1973, line: 90, type: !23)
!2109 = distinct !DISubprogram(name: "strcaseeq5", scope: !1973, file: !1973, line: 90, type: !2110, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!26, !23, !23, !14, !14, !14, !14}
!2112 = !{!2108, !2113, !2114, !2115, !2116, !2117}
!2113 = !DILocalVariable(name: "s2", arg: 2, scope: !2109, file: !1973, line: 90, type: !23)
!2114 = !DILocalVariable(name: "s25", arg: 3, scope: !2109, file: !1973, line: 90, type: !14)
!2115 = !DILocalVariable(name: "s26", arg: 4, scope: !2109, file: !1973, line: 90, type: !14)
!2116 = !DILocalVariable(name: "s27", arg: 5, scope: !2109, file: !1973, line: 90, type: !14)
!2117 = !DILocalVariable(name: "s28", arg: 6, scope: !2109, file: !1973, line: 90, type: !14)
!2118 = !DILocation(line: 90, column: 25, scope: !2109, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 111, column: 16, scope: !2120, inlinedAt: !2096)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !1973, line: 108, column: 11)
!2121 = distinct !DILexicalBlock(scope: !2106, file: !1973, line: 107, column: 5)
!2122 = !DILocation(line: 90, column: 41, scope: !2109, inlinedAt: !2119)
!2123 = !DILocation(line: 90, column: 50, scope: !2109, inlinedAt: !2119)
!2124 = !DILocation(line: 90, column: 60, scope: !2109, inlinedAt: !2119)
!2125 = !DILocation(line: 90, column: 70, scope: !2109, inlinedAt: !2119)
!2126 = !DILocation(line: 90, column: 80, scope: !2109, inlinedAt: !2119)
!2127 = !DILocation(line: 92, column: 7, scope: !2128, inlinedAt: !2119)
!2128 = distinct !DILexicalBlock(scope: !2109, file: !1973, line: 92, column: 7)
!2129 = !DILocation(line: 92, column: 7, scope: !2109, inlinedAt: !2119)
!2130 = !DILocation(line: 235, column: 12, scope: !1989)
!2131 = !DILocation(line: 235, column: 21, scope: !1989)
!2132 = !DILocation(line: 235, column: 5, scope: !1989)
!2133 = !DILocation(line: 146, column: 25, scope: !2003, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 167, column: 16, scope: !2018, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 236, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1954, file: !108, line: 236, column: 7)
!2137 = !DILocation(line: 146, column: 41, scope: !2003, inlinedAt: !2134)
!2138 = !DILocation(line: 146, column: 50, scope: !2003, inlinedAt: !2134)
!2139 = !DILocation(line: 146, column: 60, scope: !2003, inlinedAt: !2134)
!2140 = !DILocation(line: 146, column: 70, scope: !2003, inlinedAt: !2134)
!2141 = !DILocation(line: 146, column: 80, scope: !2003, inlinedAt: !2134)
!2142 = !DILocation(line: 146, column: 90, scope: !2003, inlinedAt: !2134)
!2143 = !DILocation(line: 146, column: 100, scope: !2003, inlinedAt: !2134)
!2144 = !DILocation(line: 146, column: 110, scope: !2003, inlinedAt: !2134)
!2145 = !DILocation(line: 146, column: 120, scope: !2003, inlinedAt: !2134)
!2146 = !DILocation(line: 148, column: 7, scope: !2030, inlinedAt: !2134)
!2147 = !DILocation(line: 132, column: 25, scope: !2032, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 153, column: 16, scope: !2046, inlinedAt: !2134)
!2149 = !DILocation(line: 132, column: 41, scope: !2032, inlinedAt: !2148)
!2150 = !DILocation(line: 132, column: 50, scope: !2032, inlinedAt: !2148)
!2151 = !DILocation(line: 132, column: 60, scope: !2032, inlinedAt: !2148)
!2152 = !DILocation(line: 132, column: 70, scope: !2032, inlinedAt: !2148)
!2153 = !DILocation(line: 132, column: 80, scope: !2032, inlinedAt: !2148)
!2154 = !DILocation(line: 132, column: 90, scope: !2032, inlinedAt: !2148)
!2155 = !DILocation(line: 132, column: 100, scope: !2032, inlinedAt: !2148)
!2156 = !DILocation(line: 132, column: 110, scope: !2032, inlinedAt: !2148)
!2157 = !DILocation(line: 134, column: 7, scope: !2057, inlinedAt: !2148)
!2158 = !DILocation(line: 134, column: 7, scope: !2032, inlinedAt: !2148)
!2159 = !DILocation(line: 118, column: 25, scope: !2059, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 139, column: 16, scope: !2072, inlinedAt: !2148)
!2161 = !DILocation(line: 118, column: 41, scope: !2059, inlinedAt: !2160)
!2162 = !DILocation(line: 118, column: 50, scope: !2059, inlinedAt: !2160)
!2163 = !DILocation(line: 118, column: 60, scope: !2059, inlinedAt: !2160)
!2164 = !DILocation(line: 118, column: 70, scope: !2059, inlinedAt: !2160)
!2165 = !DILocation(line: 118, column: 80, scope: !2059, inlinedAt: !2160)
!2166 = !DILocation(line: 118, column: 90, scope: !2059, inlinedAt: !2160)
!2167 = !DILocation(line: 118, column: 100, scope: !2059, inlinedAt: !2160)
!2168 = !DILocation(line: 120, column: 7, scope: !2082, inlinedAt: !2160)
!2169 = !DILocation(line: 120, column: 7, scope: !2059, inlinedAt: !2160)
!2170 = !DILocation(line: 104, column: 25, scope: !2085, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 125, column: 16, scope: !2097, inlinedAt: !2160)
!2172 = !DILocation(line: 104, column: 41, scope: !2085, inlinedAt: !2171)
!2173 = !DILocation(line: 104, column: 50, scope: !2085, inlinedAt: !2171)
!2174 = !DILocation(line: 104, column: 60, scope: !2085, inlinedAt: !2171)
!2175 = !DILocation(line: 104, column: 70, scope: !2085, inlinedAt: !2171)
!2176 = !DILocation(line: 104, column: 80, scope: !2085, inlinedAt: !2171)
!2177 = !DILocation(line: 104, column: 90, scope: !2085, inlinedAt: !2171)
!2178 = !DILocation(line: 106, column: 7, scope: !2106, inlinedAt: !2171)
!2179 = !DILocation(line: 106, column: 7, scope: !2085, inlinedAt: !2171)
!2180 = !DILocation(line: 90, column: 25, scope: !2109, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 111, column: 16, scope: !2120, inlinedAt: !2171)
!2182 = !DILocation(line: 90, column: 41, scope: !2109, inlinedAt: !2181)
!2183 = !DILocation(line: 90, column: 50, scope: !2109, inlinedAt: !2181)
!2184 = !DILocation(line: 90, column: 60, scope: !2109, inlinedAt: !2181)
!2185 = !DILocation(line: 90, column: 70, scope: !2109, inlinedAt: !2181)
!2186 = !DILocation(line: 90, column: 80, scope: !2109, inlinedAt: !2181)
!2187 = !DILocation(line: 92, column: 7, scope: !2128, inlinedAt: !2181)
!2188 = !DILocation(line: 92, column: 7, scope: !2109, inlinedAt: !2181)
!2189 = !DILocalVariable(name: "s1", arg: 1, scope: !2190, file: !1973, line: 76, type: !23)
!2190 = distinct !DISubprogram(name: "strcaseeq6", scope: !1973, file: !1973, line: 76, type: !2191, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!26, !23, !23, !14, !14, !14}
!2193 = !{!2189, !2194, !2195, !2196, !2197}
!2194 = !DILocalVariable(name: "s2", arg: 2, scope: !2190, file: !1973, line: 76, type: !23)
!2195 = !DILocalVariable(name: "s26", arg: 3, scope: !2190, file: !1973, line: 76, type: !14)
!2196 = !DILocalVariable(name: "s27", arg: 4, scope: !2190, file: !1973, line: 76, type: !14)
!2197 = !DILocalVariable(name: "s28", arg: 5, scope: !2190, file: !1973, line: 76, type: !14)
!2198 = !DILocation(line: 76, column: 25, scope: !2190, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 97, column: 16, scope: !2200, inlinedAt: !2181)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1973, line: 94, column: 11)
!2201 = distinct !DILexicalBlock(scope: !2128, file: !1973, line: 93, column: 5)
!2202 = !DILocation(line: 76, column: 41, scope: !2190, inlinedAt: !2199)
!2203 = !DILocation(line: 76, column: 50, scope: !2190, inlinedAt: !2199)
!2204 = !DILocation(line: 76, column: 60, scope: !2190, inlinedAt: !2199)
!2205 = !DILocation(line: 76, column: 70, scope: !2190, inlinedAt: !2199)
!2206 = !DILocation(line: 78, column: 7, scope: !2207, inlinedAt: !2199)
!2207 = distinct !DILexicalBlock(scope: !2190, file: !1973, line: 78, column: 7)
!2208 = !DILocation(line: 78, column: 7, scope: !2190, inlinedAt: !2199)
!2209 = !DILocalVariable(name: "s1", arg: 1, scope: !2210, file: !1973, line: 62, type: !23)
!2210 = distinct !DISubprogram(name: "strcaseeq7", scope: !1973, file: !1973, line: 62, type: !2211, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!26, !23, !23, !14, !14}
!2213 = !{!2209, !2214, !2215, !2216}
!2214 = !DILocalVariable(name: "s2", arg: 2, scope: !2210, file: !1973, line: 62, type: !23)
!2215 = !DILocalVariable(name: "s27", arg: 3, scope: !2210, file: !1973, line: 62, type: !14)
!2216 = !DILocalVariable(name: "s28", arg: 4, scope: !2210, file: !1973, line: 62, type: !14)
!2217 = !DILocation(line: 62, column: 25, scope: !2210, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 83, column: 16, scope: !2219, inlinedAt: !2199)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !1973, line: 80, column: 11)
!2220 = distinct !DILexicalBlock(scope: !2207, file: !1973, line: 79, column: 5)
!2221 = !DILocation(line: 62, column: 41, scope: !2210, inlinedAt: !2218)
!2222 = !DILocation(line: 62, column: 50, scope: !2210, inlinedAt: !2218)
!2223 = !DILocation(line: 62, column: 60, scope: !2210, inlinedAt: !2218)
!2224 = !DILocation(line: 64, column: 7, scope: !2225, inlinedAt: !2218)
!2225 = distinct !DILexicalBlock(scope: !2210, file: !1973, line: 64, column: 7)
!2226 = !DILocation(line: 236, column: 7, scope: !1954)
!2227 = !DILocation(line: 237, column: 12, scope: !2136)
!2228 = !DILocation(line: 237, column: 21, scope: !2136)
!2229 = !DILocation(line: 237, column: 5, scope: !2136)
!2230 = !DILocation(line: 239, column: 13, scope: !1954)
!2231 = !DILocation(line: 239, column: 11, scope: !1954)
!2232 = !DILocation(line: 239, column: 3, scope: !1954)
!2233 = !DILocation(line: 0, scope: !1954)
!2234 = !DILocation(line: 240, column: 1, scope: !1954)
!2235 = distinct !DISubprogram(name: "quotearg_alloc", scope: !108, file: !108, line: 799, type: !2236, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!13, !23, !102, !1272}
!2238 = !{!2239, !2240, !2241}
!2239 = !DILocalVariable(name: "arg", arg: 1, scope: !2235, file: !108, line: 799, type: !23)
!2240 = !DILocalVariable(name: "argsize", arg: 2, scope: !2235, file: !108, line: 799, type: !102)
!2241 = !DILocalVariable(name: "o", arg: 3, scope: !2235, file: !108, line: 800, type: !1272)
!2242 = !DILocation(line: 799, column: 29, scope: !2235)
!2243 = !DILocation(line: 799, column: 41, scope: !2235)
!2244 = !DILocation(line: 800, column: 47, scope: !2235)
!2245 = !DILocalVariable(name: "arg", arg: 1, scope: !2246, file: !108, line: 812, type: !23)
!2246 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !108, file: !108, line: 812, type: !2247, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!13, !23, !102, !393, !1272}
!2249 = !{!2245, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2250 = !DILocalVariable(name: "argsize", arg: 2, scope: !2246, file: !108, line: 812, type: !102)
!2251 = !DILocalVariable(name: "size", arg: 3, scope: !2246, file: !108, line: 812, type: !393)
!2252 = !DILocalVariable(name: "o", arg: 4, scope: !2246, file: !108, line: 813, type: !1272)
!2253 = !DILocalVariable(name: "p", scope: !2246, file: !108, line: 815, type: !1272)
!2254 = !DILocalVariable(name: "e", scope: !2246, file: !108, line: 816, type: !26)
!2255 = !DILocalVariable(name: "flags", scope: !2246, file: !108, line: 818, type: !26)
!2256 = !DILocalVariable(name: "bufsize", scope: !2246, file: !108, line: 819, type: !102)
!2257 = !DILocalVariable(name: "buf", scope: !2246, file: !108, line: 823, type: !13)
!2258 = !DILocation(line: 812, column: 33, scope: !2246, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 802, column: 10, scope: !2235)
!2260 = !DILocation(line: 812, column: 45, scope: !2246, inlinedAt: !2259)
!2261 = !DILocation(line: 812, column: 62, scope: !2246, inlinedAt: !2259)
!2262 = !DILocation(line: 813, column: 51, scope: !2246, inlinedAt: !2259)
!2263 = !DILocation(line: 815, column: 37, scope: !2246, inlinedAt: !2259)
!2264 = !DILocation(line: 815, column: 33, scope: !2246, inlinedAt: !2259)
!2265 = !DILocation(line: 816, column: 11, scope: !2246, inlinedAt: !2259)
!2266 = !DILocation(line: 816, column: 7, scope: !2246, inlinedAt: !2259)
!2267 = !DILocation(line: 818, column: 18, scope: !2246, inlinedAt: !2259)
!2268 = !DILocation(line: 818, column: 24, scope: !2246, inlinedAt: !2259)
!2269 = !DILocation(line: 818, column: 7, scope: !2246, inlinedAt: !2259)
!2270 = !DILocation(line: 819, column: 69, scope: !2246, inlinedAt: !2259)
!2271 = !DILocation(line: 820, column: 53, scope: !2246, inlinedAt: !2259)
!2272 = !DILocation(line: 821, column: 49, scope: !2246, inlinedAt: !2259)
!2273 = !DILocation(line: 822, column: 49, scope: !2246, inlinedAt: !2259)
!2274 = !DILocation(line: 819, column: 20, scope: !2246, inlinedAt: !2259)
!2275 = !DILocation(line: 822, column: 62, scope: !2246, inlinedAt: !2259)
!2276 = !DILocation(line: 819, column: 10, scope: !2246, inlinedAt: !2259)
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !389, line: 216, type: !102)
!2278 = distinct !DISubprogram(name: "xcharalloc", scope: !389, file: !389, line: 216, type: !2279, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!13, !102}
!2281 = !{!2277}
!2282 = !DILocation(line: 216, column: 20, scope: !2278, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 823, column: 15, scope: !2246, inlinedAt: !2259)
!2284 = !DILocation(line: 218, column: 10, scope: !2278, inlinedAt: !2283)
!2285 = !DILocation(line: 823, column: 9, scope: !2246, inlinedAt: !2259)
!2286 = !DILocation(line: 824, column: 60, scope: !2246, inlinedAt: !2259)
!2287 = !DILocation(line: 826, column: 32, scope: !2246, inlinedAt: !2259)
!2288 = !DILocation(line: 826, column: 47, scope: !2246, inlinedAt: !2259)
!2289 = !DILocation(line: 824, column: 3, scope: !2246, inlinedAt: !2259)
!2290 = !DILocation(line: 827, column: 9, scope: !2246, inlinedAt: !2259)
!2291 = !DILocation(line: 802, column: 3, scope: !2235)
!2292 = !DILocation(line: 812, column: 33, scope: !2246)
!2293 = !DILocation(line: 812, column: 45, scope: !2246)
!2294 = !DILocation(line: 812, column: 62, scope: !2246)
!2295 = !DILocation(line: 813, column: 51, scope: !2246)
!2296 = !DILocation(line: 815, column: 37, scope: !2246)
!2297 = !DILocation(line: 815, column: 33, scope: !2246)
!2298 = !DILocation(line: 816, column: 11, scope: !2246)
!2299 = !DILocation(line: 816, column: 7, scope: !2246)
!2300 = !DILocation(line: 818, column: 18, scope: !2246)
!2301 = !DILocation(line: 818, column: 27, scope: !2246)
!2302 = !DILocation(line: 818, column: 24, scope: !2246)
!2303 = !DILocation(line: 818, column: 7, scope: !2246)
!2304 = !DILocation(line: 819, column: 69, scope: !2246)
!2305 = !DILocation(line: 820, column: 53, scope: !2246)
!2306 = !DILocation(line: 821, column: 49, scope: !2246)
!2307 = !DILocation(line: 822, column: 49, scope: !2246)
!2308 = !DILocation(line: 819, column: 20, scope: !2246)
!2309 = !DILocation(line: 822, column: 62, scope: !2246)
!2310 = !DILocation(line: 819, column: 10, scope: !2246)
!2311 = !DILocation(line: 216, column: 20, scope: !2278, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 823, column: 15, scope: !2246)
!2313 = !DILocation(line: 218, column: 10, scope: !2278, inlinedAt: !2312)
!2314 = !DILocation(line: 823, column: 9, scope: !2246)
!2315 = !DILocation(line: 824, column: 60, scope: !2246)
!2316 = !DILocation(line: 826, column: 32, scope: !2246)
!2317 = !DILocation(line: 826, column: 47, scope: !2246)
!2318 = !DILocation(line: 824, column: 3, scope: !2246)
!2319 = !DILocation(line: 827, column: 9, scope: !2246)
!2320 = !DILocation(line: 828, column: 7, scope: !2246)
!2321 = !DILocation(line: 829, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2246, file: !108, line: 828, column: 7)
!2323 = !{!2324, !2324, i64 0}
!2324 = !{!"long", !864, i64 0}
!2325 = !DILocation(line: 829, column: 5, scope: !2322)
!2326 = !DILocation(line: 830, column: 3, scope: !2246)
!2327 = distinct !DISubprogram(name: "quotearg_free", scope: !108, file: !108, line: 848, type: !978, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2328)
!2328 = !{!2329, !2330}
!2329 = !DILocalVariable(name: "sv", scope: !2327, file: !108, line: 850, type: !134)
!2330 = !DILocalVariable(name: "i", scope: !2327, file: !108, line: 851, type: !26)
!2331 = !DILocation(line: 850, column: 24, scope: !2327)
!2332 = !DILocation(line: 850, column: 19, scope: !2327)
!2333 = !DILocation(line: 851, column: 7, scope: !2327)
!2334 = !DILocation(line: 852, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !108, line: 852, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2327, file: !108, line: 852, column: 3)
!2337 = !DILocation(line: 852, column: 17, scope: !2335)
!2338 = !DILocation(line: 852, column: 3, scope: !2336)
!2339 = !DILocation(line: 853, column: 17, scope: !2335)
!2340 = !{!2341, !863, i64 8}
!2341 = !{!"slotvec", !2324, i64 0, !863, i64 8}
!2342 = !DILocation(line: 853, column: 5, scope: !2335)
!2343 = !DILocation(line: 852, column: 28, scope: !2335)
!2344 = distinct !{!2344, !2338, !2345}
!2345 = !DILocation(line: 853, column: 20, scope: !2336)
!2346 = !DILocation(line: 854, column: 13, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2327, file: !108, line: 854, column: 7)
!2348 = !DILocation(line: 854, column: 17, scope: !2347)
!2349 = !DILocation(line: 854, column: 7, scope: !2327)
!2350 = !DILocation(line: 856, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !108, line: 855, column: 5)
!2352 = !DILocation(line: 857, column: 21, scope: !2351)
!2353 = !{!2341, !2324, i64 0}
!2354 = !DILocation(line: 858, column: 20, scope: !2351)
!2355 = !DILocation(line: 859, column: 5, scope: !2351)
!2356 = !DILocation(line: 860, column: 10, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2327, file: !108, line: 860, column: 7)
!2358 = !DILocation(line: 860, column: 7, scope: !2327)
!2359 = !DILocation(line: 862, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !108, line: 861, column: 5)
!2361 = !DILocation(line: 862, column: 7, scope: !2360)
!2362 = !DILocation(line: 863, column: 15, scope: !2360)
!2363 = !DILocation(line: 864, column: 5, scope: !2360)
!2364 = !DILocation(line: 865, column: 10, scope: !2327)
!2365 = !DILocation(line: 866, column: 1, scope: !2327)
!2366 = distinct !DISubprogram(name: "quotearg_n", scope: !108, file: !108, line: 931, type: !2367, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!13, !26, !23}
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "n", arg: 1, scope: !2366, file: !108, line: 931, type: !26)
!2371 = !DILocalVariable(name: "arg", arg: 2, scope: !2366, file: !108, line: 931, type: !23)
!2372 = !DILocation(line: 931, column: 17, scope: !2366)
!2373 = !DILocation(line: 931, column: 32, scope: !2366)
!2374 = !DILocation(line: 933, column: 10, scope: !2366)
!2375 = !DILocation(line: 933, column: 3, scope: !2366)
!2376 = distinct !DISubprogram(name: "quotearg_n_options", scope: !108, file: !108, line: 877, type: !2377, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!13, !26, !23, !102, !1272}
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2389, !2390, !2392, !2393, !2394}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !108, line: 877, type: !26)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !108, line: 877, type: !23)
!2382 = !DILocalVariable(name: "argsize", arg: 3, scope: !2376, file: !108, line: 877, type: !102)
!2383 = !DILocalVariable(name: "options", arg: 4, scope: !2376, file: !108, line: 878, type: !1272)
!2384 = !DILocalVariable(name: "e", scope: !2376, file: !108, line: 880, type: !26)
!2385 = !DILocalVariable(name: "sv", scope: !2376, file: !108, line: 882, type: !134)
!2386 = !DILocalVariable(name: "preallocated", scope: !2387, file: !108, line: 889, type: !46)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !108, line: 888, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2376, file: !108, line: 887, column: 7)
!2389 = !DILocalVariable(name: "nmax", scope: !2387, file: !108, line: 890, type: !26)
!2390 = !DILocalVariable(name: "size", scope: !2391, file: !108, line: 903, type: !102)
!2391 = distinct !DILexicalBlock(scope: !2376, file: !108, line: 902, column: 3)
!2392 = !DILocalVariable(name: "val", scope: !2391, file: !108, line: 904, type: !13)
!2393 = !DILocalVariable(name: "flags", scope: !2391, file: !108, line: 906, type: !26)
!2394 = !DILocalVariable(name: "qsize", scope: !2391, file: !108, line: 907, type: !102)
!2395 = !DILocation(line: 877, column: 25, scope: !2376)
!2396 = !DILocation(line: 877, column: 40, scope: !2376)
!2397 = !DILocation(line: 877, column: 52, scope: !2376)
!2398 = !DILocation(line: 878, column: 51, scope: !2376)
!2399 = !DILocation(line: 880, column: 11, scope: !2376)
!2400 = !DILocation(line: 880, column: 7, scope: !2376)
!2401 = !DILocation(line: 882, column: 24, scope: !2376)
!2402 = !DILocation(line: 882, column: 19, scope: !2376)
!2403 = !DILocation(line: 884, column: 9, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2376, file: !108, line: 884, column: 7)
!2405 = !DILocation(line: 884, column: 7, scope: !2376)
!2406 = !DILocation(line: 885, column: 5, scope: !2404)
!2407 = !DILocation(line: 887, column: 7, scope: !2388)
!2408 = !DILocation(line: 887, column: 14, scope: !2388)
!2409 = !DILocation(line: 887, column: 7, scope: !2376)
!2410 = !DILocation(line: 889, column: 31, scope: !2387)
!2411 = !DILocation(line: 890, column: 11, scope: !2387)
!2412 = !DILocation(line: 892, column: 16, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2387, file: !108, line: 892, column: 11)
!2414 = !DILocation(line: 892, column: 11, scope: !2387)
!2415 = !DILocation(line: 893, column: 9, scope: !2413)
!2416 = !DILocation(line: 895, column: 32, scope: !2387)
!2417 = !DILocation(line: 895, column: 61, scope: !2387)
!2418 = !DILocation(line: 895, column: 58, scope: !2387)
!2419 = !DILocation(line: 895, column: 66, scope: !2387)
!2420 = !DILocation(line: 895, column: 22, scope: !2387)
!2421 = !DILocation(line: 895, column: 15, scope: !2387)
!2422 = !DILocation(line: 896, column: 11, scope: !2387)
!2423 = !DILocation(line: 897, column: 15, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2387, file: !108, line: 896, column: 11)
!2425 = !{i64 0, i64 8, !2323, i64 8, i64 8, !862}
!2426 = !DILocation(line: 897, column: 9, scope: !2424)
!2427 = !DILocation(line: 898, column: 20, scope: !2387)
!2428 = !DILocation(line: 898, column: 18, scope: !2387)
!2429 = !DILocation(line: 898, column: 7, scope: !2387)
!2430 = !DILocation(line: 898, column: 38, scope: !2387)
!2431 = !DILocation(line: 898, column: 31, scope: !2387)
!2432 = !DILocation(line: 898, column: 48, scope: !2387)
!2433 = !DILocation(line: 899, column: 14, scope: !2387)
!2434 = !DILocation(line: 900, column: 5, scope: !2387)
!2435 = !DILocation(line: 0, scope: !2376)
!2436 = !DILocation(line: 903, column: 19, scope: !2391)
!2437 = !DILocation(line: 903, column: 25, scope: !2391)
!2438 = !DILocation(line: 903, column: 12, scope: !2391)
!2439 = !DILocation(line: 904, column: 23, scope: !2391)
!2440 = !DILocation(line: 904, column: 11, scope: !2391)
!2441 = !DILocation(line: 906, column: 26, scope: !2391)
!2442 = !DILocation(line: 906, column: 32, scope: !2391)
!2443 = !DILocation(line: 906, column: 9, scope: !2391)
!2444 = !DILocation(line: 908, column: 55, scope: !2391)
!2445 = !DILocation(line: 909, column: 46, scope: !2391)
!2446 = !DILocation(line: 910, column: 55, scope: !2391)
!2447 = !DILocation(line: 911, column: 55, scope: !2391)
!2448 = !DILocation(line: 907, column: 20, scope: !2391)
!2449 = !DILocation(line: 907, column: 12, scope: !2391)
!2450 = !DILocation(line: 913, column: 14, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2391, file: !108, line: 913, column: 9)
!2452 = !DILocation(line: 913, column: 9, scope: !2391)
!2453 = !DILocation(line: 915, column: 35, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !108, line: 914, column: 7)
!2455 = !DILocation(line: 915, column: 20, scope: !2454)
!2456 = !DILocation(line: 916, column: 17, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !108, line: 916, column: 13)
!2458 = !DILocation(line: 916, column: 13, scope: !2454)
!2459 = !DILocation(line: 917, column: 11, scope: !2457)
!2460 = !DILocation(line: 216, column: 20, scope: !2278, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 918, column: 27, scope: !2454)
!2462 = !DILocation(line: 218, column: 10, scope: !2278, inlinedAt: !2461)
!2463 = !DILocation(line: 918, column: 19, scope: !2454)
!2464 = !DILocation(line: 919, column: 69, scope: !2454)
!2465 = !DILocation(line: 921, column: 44, scope: !2454)
!2466 = !DILocation(line: 922, column: 44, scope: !2454)
!2467 = !DILocation(line: 919, column: 9, scope: !2454)
!2468 = !DILocation(line: 923, column: 7, scope: !2454)
!2469 = !DILocation(line: 0, scope: !2391)
!2470 = !DILocation(line: 925, column: 11, scope: !2391)
!2471 = !DILocation(line: 926, column: 5, scope: !2391)
!2472 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !108, file: !108, line: 937, type: !2473, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!13, !26, !23, !102}
!2475 = !{!2476, !2477, !2478}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !108, line: 937, type: !26)
!2477 = !DILocalVariable(name: "arg", arg: 2, scope: !2472, file: !108, line: 937, type: !23)
!2478 = !DILocalVariable(name: "argsize", arg: 3, scope: !2472, file: !108, line: 937, type: !102)
!2479 = !DILocation(line: 937, column: 21, scope: !2472)
!2480 = !DILocation(line: 937, column: 36, scope: !2472)
!2481 = !DILocation(line: 937, column: 48, scope: !2472)
!2482 = !DILocation(line: 939, column: 10, scope: !2472)
!2483 = !DILocation(line: 939, column: 3, scope: !2472)
!2484 = distinct !DISubprogram(name: "quotearg", scope: !108, file: !108, line: 943, type: !2485, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!13, !23}
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2484, file: !108, line: 943, type: !23)
!2489 = !DILocation(line: 943, column: 23, scope: !2484)
!2490 = !DILocation(line: 931, column: 17, scope: !2366, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 945, column: 10, scope: !2484)
!2492 = !DILocation(line: 931, column: 32, scope: !2366, inlinedAt: !2491)
!2493 = !DILocation(line: 933, column: 10, scope: !2366, inlinedAt: !2491)
!2494 = !DILocation(line: 945, column: 3, scope: !2484)
!2495 = distinct !DISubprogram(name: "quotearg_mem", scope: !108, file: !108, line: 949, type: !2496, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!13, !23, !102}
!2498 = !{!2499, !2500}
!2499 = !DILocalVariable(name: "arg", arg: 1, scope: !2495, file: !108, line: 949, type: !23)
!2500 = !DILocalVariable(name: "argsize", arg: 2, scope: !2495, file: !108, line: 949, type: !102)
!2501 = !DILocation(line: 949, column: 27, scope: !2495)
!2502 = !DILocation(line: 949, column: 39, scope: !2495)
!2503 = !DILocation(line: 937, column: 21, scope: !2472, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 951, column: 10, scope: !2495)
!2505 = !DILocation(line: 937, column: 36, scope: !2472, inlinedAt: !2504)
!2506 = !DILocation(line: 937, column: 48, scope: !2472, inlinedAt: !2504)
!2507 = !DILocation(line: 939, column: 10, scope: !2472, inlinedAt: !2504)
!2508 = !DILocation(line: 951, column: 3, scope: !2495)
!2509 = distinct !DISubprogram(name: "quotearg_n_style", scope: !108, file: !108, line: 955, type: !2510, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!13, !26, !66, !23}
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DILocalVariable(name: "n", arg: 1, scope: !2509, file: !108, line: 955, type: !26)
!2514 = !DILocalVariable(name: "s", arg: 2, scope: !2509, file: !108, line: 955, type: !66)
!2515 = !DILocalVariable(name: "arg", arg: 3, scope: !2509, file: !108, line: 955, type: !23)
!2516 = !DILocalVariable(name: "o", scope: !2509, file: !108, line: 957, type: !1273)
!2517 = !DILocation(line: 955, column: 23, scope: !2509)
!2518 = !DILocation(line: 955, column: 45, scope: !2509)
!2519 = !DILocation(line: 955, column: 60, scope: !2509)
!2520 = !DILocation(line: 957, column: 3, scope: !2509)
!2521 = !DILocation(line: 957, column: 32, scope: !2509)
!2522 = !DILocalVariable(name: "style", arg: 1, scope: !2523, file: !108, line: 193, type: !66)
!2523 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !108, file: !108, line: 193, type: !2524, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!115, !66}
!2526 = !{!2522, !2527}
!2527 = !DILocalVariable(name: "o", scope: !2523, file: !108, line: 195, type: !115)
!2528 = !DILocation(line: 193, column: 48, scope: !2523, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 957, column: 36, scope: !2509)
!2530 = !DILocation(line: 195, column: 26, scope: !2523, inlinedAt: !2529)
!2531 = !{!2532}
!2532 = distinct !{!2532, !2533, !"quoting_options_from_style: argument 0"}
!2533 = distinct !{!2533, !"quoting_options_from_style"}
!2534 = !DILocation(line: 196, column: 13, scope: !2535, inlinedAt: !2529)
!2535 = distinct !DILexicalBlock(scope: !2523, file: !108, line: 196, column: 7)
!2536 = !DILocation(line: 196, column: 7, scope: !2523, inlinedAt: !2529)
!2537 = !DILocation(line: 197, column: 5, scope: !2535, inlinedAt: !2529)
!2538 = !DILocation(line: 198, column: 5, scope: !2523, inlinedAt: !2529)
!2539 = !DILocation(line: 198, column: 11, scope: !2523, inlinedAt: !2529)
!2540 = !DILocation(line: 958, column: 10, scope: !2509)
!2541 = !DILocation(line: 959, column: 1, scope: !2509)
!2542 = !DILocation(line: 958, column: 3, scope: !2509)
!2543 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !108, file: !108, line: 962, type: !2544, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!13, !26, !66, !23, !102}
!2546 = !{!2547, !2548, !2549, !2550, !2551}
!2547 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !108, line: 962, type: !26)
!2548 = !DILocalVariable(name: "s", arg: 2, scope: !2543, file: !108, line: 962, type: !66)
!2549 = !DILocalVariable(name: "arg", arg: 3, scope: !2543, file: !108, line: 963, type: !23)
!2550 = !DILocalVariable(name: "argsize", arg: 4, scope: !2543, file: !108, line: 963, type: !102)
!2551 = !DILocalVariable(name: "o", scope: !2543, file: !108, line: 965, type: !1273)
!2552 = !DILocation(line: 962, column: 27, scope: !2543)
!2553 = !DILocation(line: 962, column: 49, scope: !2543)
!2554 = !DILocation(line: 963, column: 35, scope: !2543)
!2555 = !DILocation(line: 963, column: 47, scope: !2543)
!2556 = !DILocation(line: 965, column: 3, scope: !2543)
!2557 = !DILocation(line: 965, column: 32, scope: !2543)
!2558 = !DILocation(line: 193, column: 48, scope: !2523, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 965, column: 36, scope: !2543)
!2560 = !DILocation(line: 195, column: 26, scope: !2523, inlinedAt: !2559)
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"quoting_options_from_style: argument 0"}
!2563 = distinct !{!2563, !"quoting_options_from_style"}
!2564 = !DILocation(line: 196, column: 13, scope: !2535, inlinedAt: !2559)
!2565 = !DILocation(line: 196, column: 7, scope: !2523, inlinedAt: !2559)
!2566 = !DILocation(line: 197, column: 5, scope: !2535, inlinedAt: !2559)
!2567 = !DILocation(line: 198, column: 5, scope: !2523, inlinedAt: !2559)
!2568 = !DILocation(line: 198, column: 11, scope: !2523, inlinedAt: !2559)
!2569 = !DILocation(line: 966, column: 10, scope: !2543)
!2570 = !DILocation(line: 967, column: 1, scope: !2543)
!2571 = !DILocation(line: 966, column: 3, scope: !2543)
!2572 = distinct !DISubprogram(name: "quotearg_style", scope: !108, file: !108, line: 970, type: !2573, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!13, !66, !23}
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "s", arg: 1, scope: !2572, file: !108, line: 970, type: !66)
!2577 = !DILocalVariable(name: "arg", arg: 2, scope: !2572, file: !108, line: 970, type: !23)
!2578 = !DILocation(line: 970, column: 36, scope: !2572)
!2579 = !DILocation(line: 970, column: 51, scope: !2572)
!2580 = !DILocation(line: 955, column: 23, scope: !2509, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 972, column: 10, scope: !2572)
!2582 = !DILocation(line: 955, column: 45, scope: !2509, inlinedAt: !2581)
!2583 = !DILocation(line: 955, column: 60, scope: !2509, inlinedAt: !2581)
!2584 = !DILocation(line: 957, column: 3, scope: !2509, inlinedAt: !2581)
!2585 = !DILocation(line: 957, column: 32, scope: !2509, inlinedAt: !2581)
!2586 = !DILocation(line: 193, column: 48, scope: !2523, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 957, column: 36, scope: !2509, inlinedAt: !2581)
!2588 = !DILocation(line: 195, column: 26, scope: !2523, inlinedAt: !2587)
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"quoting_options_from_style: argument 0"}
!2591 = distinct !{!2591, !"quoting_options_from_style"}
!2592 = !DILocation(line: 196, column: 13, scope: !2535, inlinedAt: !2587)
!2593 = !DILocation(line: 196, column: 7, scope: !2523, inlinedAt: !2587)
!2594 = !DILocation(line: 197, column: 5, scope: !2535, inlinedAt: !2587)
!2595 = !DILocation(line: 198, column: 5, scope: !2523, inlinedAt: !2587)
!2596 = !DILocation(line: 198, column: 11, scope: !2523, inlinedAt: !2587)
!2597 = !DILocation(line: 958, column: 10, scope: !2509, inlinedAt: !2581)
!2598 = !DILocation(line: 959, column: 1, scope: !2509, inlinedAt: !2581)
!2599 = !DILocation(line: 972, column: 3, scope: !2572)
!2600 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !108, file: !108, line: 976, type: !2601, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!13, !66, !23, !102}
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "s", arg: 1, scope: !2600, file: !108, line: 976, type: !66)
!2605 = !DILocalVariable(name: "arg", arg: 2, scope: !2600, file: !108, line: 976, type: !23)
!2606 = !DILocalVariable(name: "argsize", arg: 3, scope: !2600, file: !108, line: 976, type: !102)
!2607 = !DILocation(line: 976, column: 40, scope: !2600)
!2608 = !DILocation(line: 976, column: 55, scope: !2600)
!2609 = !DILocation(line: 976, column: 67, scope: !2600)
!2610 = !DILocation(line: 962, column: 27, scope: !2543, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 978, column: 10, scope: !2600)
!2612 = !DILocation(line: 962, column: 49, scope: !2543, inlinedAt: !2611)
!2613 = !DILocation(line: 963, column: 35, scope: !2543, inlinedAt: !2611)
!2614 = !DILocation(line: 963, column: 47, scope: !2543, inlinedAt: !2611)
!2615 = !DILocation(line: 965, column: 3, scope: !2543, inlinedAt: !2611)
!2616 = !DILocation(line: 965, column: 32, scope: !2543, inlinedAt: !2611)
!2617 = !DILocation(line: 193, column: 48, scope: !2523, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 965, column: 36, scope: !2543, inlinedAt: !2611)
!2619 = !DILocation(line: 195, column: 26, scope: !2523, inlinedAt: !2618)
!2620 = !{!2621}
!2621 = distinct !{!2621, !2622, !"quoting_options_from_style: argument 0"}
!2622 = distinct !{!2622, !"quoting_options_from_style"}
!2623 = !DILocation(line: 196, column: 13, scope: !2535, inlinedAt: !2618)
!2624 = !DILocation(line: 196, column: 7, scope: !2523, inlinedAt: !2618)
!2625 = !DILocation(line: 197, column: 5, scope: !2535, inlinedAt: !2618)
!2626 = !DILocation(line: 198, column: 5, scope: !2523, inlinedAt: !2618)
!2627 = !DILocation(line: 198, column: 11, scope: !2523, inlinedAt: !2618)
!2628 = !DILocation(line: 966, column: 10, scope: !2543, inlinedAt: !2611)
!2629 = !DILocation(line: 967, column: 1, scope: !2543, inlinedAt: !2611)
!2630 = !DILocation(line: 978, column: 3, scope: !2600)
!2631 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !108, file: !108, line: 982, type: !2632, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!13, !23, !102, !14}
!2634 = !{!2635, !2636, !2637, !2638}
!2635 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !108, line: 982, type: !23)
!2636 = !DILocalVariable(name: "argsize", arg: 2, scope: !2631, file: !108, line: 982, type: !102)
!2637 = !DILocalVariable(name: "ch", arg: 3, scope: !2631, file: !108, line: 982, type: !14)
!2638 = !DILocalVariable(name: "options", scope: !2631, file: !108, line: 984, type: !115)
!2639 = !DILocation(line: 982, column: 32, scope: !2631)
!2640 = !DILocation(line: 982, column: 44, scope: !2631)
!2641 = !DILocation(line: 982, column: 58, scope: !2631)
!2642 = !DILocation(line: 984, column: 3, scope: !2631)
!2643 = !DILocation(line: 985, column: 13, scope: !2631)
!2644 = !{i64 0, i64 4, !1047, i64 4, i64 4, !942, i64 8, i64 32, !1047, i64 40, i64 8, !862, i64 48, i64 8, !862}
!2645 = !DILocation(line: 984, column: 26, scope: !2631)
!2646 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 986, column: 3, scope: !2631)
!2648 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2647)
!2649 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2647)
!2650 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2647)
!2651 = !DILocation(line: 156, column: 62, scope: !1294, inlinedAt: !2647)
!2652 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2647)
!2653 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2647)
!2654 = !DILocation(line: 157, column: 15, scope: !1294, inlinedAt: !2647)
!2655 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2647)
!2656 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2647)
!2657 = !DILocation(line: 158, column: 15, scope: !1294, inlinedAt: !2647)
!2658 = !DILocation(line: 158, column: 25, scope: !1294, inlinedAt: !2647)
!2659 = !DILocation(line: 158, column: 7, scope: !1294, inlinedAt: !2647)
!2660 = !DILocation(line: 159, column: 18, scope: !1294, inlinedAt: !2647)
!2661 = !DILocation(line: 159, column: 23, scope: !1294, inlinedAt: !2647)
!2662 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2647)
!2663 = !DILocation(line: 987, column: 10, scope: !2631)
!2664 = !DILocation(line: 988, column: 1, scope: !2631)
!2665 = !DILocation(line: 987, column: 3, scope: !2631)
!2666 = distinct !DISubprogram(name: "quotearg_char", scope: !108, file: !108, line: 991, type: !2667, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!13, !23, !14}
!2669 = !{!2670, !2671}
!2670 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !108, line: 991, type: !23)
!2671 = !DILocalVariable(name: "ch", arg: 2, scope: !2666, file: !108, line: 991, type: !14)
!2672 = !DILocation(line: 991, column: 28, scope: !2666)
!2673 = !DILocation(line: 991, column: 38, scope: !2666)
!2674 = !DILocation(line: 982, column: 32, scope: !2631, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 993, column: 10, scope: !2666)
!2676 = !DILocation(line: 982, column: 44, scope: !2631, inlinedAt: !2675)
!2677 = !DILocation(line: 982, column: 58, scope: !2631, inlinedAt: !2675)
!2678 = !DILocation(line: 984, column: 3, scope: !2631, inlinedAt: !2675)
!2679 = !DILocation(line: 985, column: 13, scope: !2631, inlinedAt: !2675)
!2680 = !DILocation(line: 984, column: 26, scope: !2631, inlinedAt: !2675)
!2681 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 986, column: 3, scope: !2631, inlinedAt: !2675)
!2683 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2682)
!2684 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2682)
!2685 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2682)
!2686 = !DILocation(line: 156, column: 62, scope: !1294, inlinedAt: !2682)
!2687 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2682)
!2688 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2682)
!2689 = !DILocation(line: 157, column: 15, scope: !1294, inlinedAt: !2682)
!2690 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2682)
!2691 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2682)
!2692 = !DILocation(line: 158, column: 15, scope: !1294, inlinedAt: !2682)
!2693 = !DILocation(line: 158, column: 25, scope: !1294, inlinedAt: !2682)
!2694 = !DILocation(line: 158, column: 7, scope: !1294, inlinedAt: !2682)
!2695 = !DILocation(line: 159, column: 18, scope: !1294, inlinedAt: !2682)
!2696 = !DILocation(line: 159, column: 23, scope: !1294, inlinedAt: !2682)
!2697 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2682)
!2698 = !DILocation(line: 987, column: 10, scope: !2631, inlinedAt: !2675)
!2699 = !DILocation(line: 988, column: 1, scope: !2631, inlinedAt: !2675)
!2700 = !DILocation(line: 993, column: 3, scope: !2666)
!2701 = distinct !DISubprogram(name: "quotearg_colon", scope: !108, file: !108, line: 997, type: !2485, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2702)
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "arg", arg: 1, scope: !2701, file: !108, line: 997, type: !23)
!2704 = !DILocation(line: 997, column: 29, scope: !2701)
!2705 = !DILocation(line: 991, column: 28, scope: !2666, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 999, column: 10, scope: !2701)
!2707 = !DILocation(line: 991, column: 38, scope: !2666, inlinedAt: !2706)
!2708 = !DILocation(line: 982, column: 32, scope: !2631, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 993, column: 10, scope: !2666, inlinedAt: !2706)
!2710 = !DILocation(line: 982, column: 44, scope: !2631, inlinedAt: !2709)
!2711 = !DILocation(line: 982, column: 58, scope: !2631, inlinedAt: !2709)
!2712 = !DILocation(line: 984, column: 3, scope: !2631, inlinedAt: !2709)
!2713 = !DILocation(line: 985, column: 13, scope: !2631, inlinedAt: !2709)
!2714 = !DILocation(line: 984, column: 26, scope: !2631, inlinedAt: !2709)
!2715 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 986, column: 3, scope: !2631, inlinedAt: !2709)
!2717 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2716)
!2718 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2716)
!2719 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2716)
!2720 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2716)
!2721 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2716)
!2722 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2716)
!2723 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2716)
!2724 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2716)
!2725 = !DILocation(line: 987, column: 10, scope: !2631, inlinedAt: !2709)
!2726 = !DILocation(line: 988, column: 1, scope: !2631, inlinedAt: !2709)
!2727 = !DILocation(line: 999, column: 3, scope: !2701)
!2728 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !108, file: !108, line: 1003, type: !2496, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2729)
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2728, file: !108, line: 1003, type: !23)
!2731 = !DILocalVariable(name: "argsize", arg: 2, scope: !2728, file: !108, line: 1003, type: !102)
!2732 = !DILocation(line: 1003, column: 33, scope: !2728)
!2733 = !DILocation(line: 1003, column: 45, scope: !2728)
!2734 = !DILocation(line: 982, column: 32, scope: !2631, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1005, column: 10, scope: !2728)
!2736 = !DILocation(line: 982, column: 44, scope: !2631, inlinedAt: !2735)
!2737 = !DILocation(line: 982, column: 58, scope: !2631, inlinedAt: !2735)
!2738 = !DILocation(line: 984, column: 3, scope: !2631, inlinedAt: !2735)
!2739 = !DILocation(line: 985, column: 13, scope: !2631, inlinedAt: !2735)
!2740 = !DILocation(line: 984, column: 26, scope: !2631, inlinedAt: !2735)
!2741 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 986, column: 3, scope: !2631, inlinedAt: !2735)
!2743 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2742)
!2744 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2742)
!2745 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2742)
!2746 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2742)
!2747 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2742)
!2748 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2742)
!2749 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2742)
!2750 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2742)
!2751 = !DILocation(line: 987, column: 10, scope: !2631, inlinedAt: !2735)
!2752 = !DILocation(line: 988, column: 1, scope: !2631, inlinedAt: !2735)
!2753 = !DILocation(line: 1005, column: 3, scope: !2728)
!2754 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !108, file: !108, line: 1009, type: !2510, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2755)
!2755 = !{!2756, !2757, !2758, !2759}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !108, line: 1009, type: !26)
!2757 = !DILocalVariable(name: "s", arg: 2, scope: !2754, file: !108, line: 1009, type: !66)
!2758 = !DILocalVariable(name: "arg", arg: 3, scope: !2754, file: !108, line: 1009, type: !23)
!2759 = !DILocalVariable(name: "options", scope: !2754, file: !108, line: 1011, type: !115)
!2760 = !DILocation(line: 195, column: 26, scope: !2523, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1012, column: 13, scope: !2754)
!2762 = !DILocation(line: 1009, column: 29, scope: !2754)
!2763 = !DILocation(line: 1009, column: 51, scope: !2754)
!2764 = !DILocation(line: 1009, column: 66, scope: !2754)
!2765 = !DILocation(line: 1011, column: 3, scope: !2754)
!2766 = !DILocation(line: 1012, column: 13, scope: !2754)
!2767 = !DILocation(line: 193, column: 48, scope: !2523, inlinedAt: !2761)
!2768 = !{!2769}
!2769 = distinct !{!2769, !2770, !"quoting_options_from_style: argument 0"}
!2770 = distinct !{!2770, !"quoting_options_from_style"}
!2771 = !DILocation(line: 196, column: 13, scope: !2535, inlinedAt: !2761)
!2772 = !DILocation(line: 196, column: 7, scope: !2523, inlinedAt: !2761)
!2773 = !DILocation(line: 197, column: 5, scope: !2535, inlinedAt: !2761)
!2774 = !DILocation(line: 1011, column: 26, scope: !2754)
!2775 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1013, column: 3, scope: !2754)
!2777 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2776)
!2778 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2776)
!2779 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2776)
!2780 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2776)
!2781 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2776)
!2782 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2776)
!2783 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2776)
!2784 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2776)
!2785 = !DILocation(line: 1014, column: 10, scope: !2754)
!2786 = !DILocation(line: 1015, column: 1, scope: !2754)
!2787 = !DILocation(line: 1014, column: 3, scope: !2754)
!2788 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !108, file: !108, line: 1018, type: !2789, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!13, !26, !23, !23, !23}
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !108, line: 1018, type: !26)
!2793 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2788, file: !108, line: 1018, type: !23)
!2794 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2788, file: !108, line: 1019, type: !23)
!2795 = !DILocalVariable(name: "arg", arg: 4, scope: !2788, file: !108, line: 1019, type: !23)
!2796 = !DILocation(line: 1018, column: 24, scope: !2788)
!2797 = !DILocation(line: 1018, column: 39, scope: !2788)
!2798 = !DILocation(line: 1019, column: 32, scope: !2788)
!2799 = !DILocation(line: 1019, column: 57, scope: !2788)
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !108, line: 1026, type: !26)
!2801 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !108, file: !108, line: 1026, type: !2802, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!13, !26, !23, !23, !23, !102}
!2804 = !{!2800, !2805, !2806, !2807, !2808, !2809}
!2805 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2801, file: !108, line: 1026, type: !23)
!2806 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2801, file: !108, line: 1027, type: !23)
!2807 = !DILocalVariable(name: "arg", arg: 4, scope: !2801, file: !108, line: 1028, type: !23)
!2808 = !DILocalVariable(name: "argsize", arg: 5, scope: !2801, file: !108, line: 1028, type: !102)
!2809 = !DILocalVariable(name: "o", scope: !2801, file: !108, line: 1030, type: !115)
!2810 = !DILocation(line: 1026, column: 28, scope: !2801, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 1021, column: 10, scope: !2788)
!2812 = !DILocation(line: 1026, column: 43, scope: !2801, inlinedAt: !2811)
!2813 = !DILocation(line: 1027, column: 36, scope: !2801, inlinedAt: !2811)
!2814 = !DILocation(line: 1028, column: 36, scope: !2801, inlinedAt: !2811)
!2815 = !DILocation(line: 1028, column: 48, scope: !2801, inlinedAt: !2811)
!2816 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2811)
!2817 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2811)
!2818 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2811)
!2819 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2811)
!2821 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2820)
!2822 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2820)
!2823 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2820)
!2824 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2820)
!2825 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2820)
!2826 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2820)
!2827 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2820)
!2828 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2820)
!2829 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2820)
!2830 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2820)
!2831 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2820)
!2832 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2820)
!2833 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2811)
!2834 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2811)
!2835 = !DILocation(line: 1021, column: 3, scope: !2788)
!2836 = !DILocation(line: 1026, column: 28, scope: !2801)
!2837 = !DILocation(line: 1026, column: 43, scope: !2801)
!2838 = !DILocation(line: 1027, column: 36, scope: !2801)
!2839 = !DILocation(line: 1028, column: 36, scope: !2801)
!2840 = !DILocation(line: 1028, column: 48, scope: !2801)
!2841 = !DILocation(line: 1030, column: 3, scope: !2801)
!2842 = !DILocation(line: 1030, column: 30, scope: !2801)
!2843 = !DILocation(line: 1030, column: 26, scope: !2801)
!2844 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1031, column: 3, scope: !2801)
!2846 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2845)
!2847 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2845)
!2848 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2845)
!2849 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2845)
!2850 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2845)
!2851 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2845)
!2852 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2845)
!2853 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2845)
!2854 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2845)
!2855 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2845)
!2856 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2845)
!2857 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2845)
!2858 = !DILocation(line: 1032, column: 10, scope: !2801)
!2859 = !DILocation(line: 1033, column: 1, scope: !2801)
!2860 = !DILocation(line: 1032, column: 3, scope: !2801)
!2861 = distinct !DISubprogram(name: "quotearg_custom", scope: !108, file: !108, line: 1036, type: !2862, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!13, !23, !23, !23}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2861, file: !108, line: 1036, type: !23)
!2866 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2861, file: !108, line: 1036, type: !23)
!2867 = !DILocalVariable(name: "arg", arg: 3, scope: !2861, file: !108, line: 1037, type: !23)
!2868 = !DILocation(line: 1036, column: 30, scope: !2861)
!2869 = !DILocation(line: 1036, column: 54, scope: !2861)
!2870 = !DILocation(line: 1037, column: 30, scope: !2861)
!2871 = !DILocation(line: 1018, column: 24, scope: !2788, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1039, column: 10, scope: !2861)
!2873 = !DILocation(line: 1018, column: 39, scope: !2788, inlinedAt: !2872)
!2874 = !DILocation(line: 1019, column: 32, scope: !2788, inlinedAt: !2872)
!2875 = !DILocation(line: 1019, column: 57, scope: !2788, inlinedAt: !2872)
!2876 = !DILocation(line: 1026, column: 28, scope: !2801, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 1021, column: 10, scope: !2788, inlinedAt: !2872)
!2878 = !DILocation(line: 1026, column: 43, scope: !2801, inlinedAt: !2877)
!2879 = !DILocation(line: 1027, column: 36, scope: !2801, inlinedAt: !2877)
!2880 = !DILocation(line: 1028, column: 36, scope: !2801, inlinedAt: !2877)
!2881 = !DILocation(line: 1028, column: 48, scope: !2801, inlinedAt: !2877)
!2882 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2877)
!2883 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2877)
!2884 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2877)
!2885 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2877)
!2887 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2886)
!2888 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2886)
!2889 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2886)
!2890 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2886)
!2891 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2886)
!2892 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2886)
!2893 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2886)
!2894 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2886)
!2895 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2886)
!2896 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2886)
!2897 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2886)
!2898 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2886)
!2899 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2877)
!2900 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2877)
!2901 = !DILocation(line: 1039, column: 3, scope: !2861)
!2902 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !108, file: !108, line: 1043, type: !2903, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!13, !23, !23, !23, !102}
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2902, file: !108, line: 1043, type: !23)
!2907 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2902, file: !108, line: 1043, type: !23)
!2908 = !DILocalVariable(name: "arg", arg: 3, scope: !2902, file: !108, line: 1044, type: !23)
!2909 = !DILocalVariable(name: "argsize", arg: 4, scope: !2902, file: !108, line: 1044, type: !102)
!2910 = !DILocation(line: 1043, column: 34, scope: !2902)
!2911 = !DILocation(line: 1043, column: 58, scope: !2902)
!2912 = !DILocation(line: 1044, column: 34, scope: !2902)
!2913 = !DILocation(line: 1044, column: 46, scope: !2902)
!2914 = !DILocation(line: 1026, column: 28, scope: !2801, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 1046, column: 10, scope: !2902)
!2916 = !DILocation(line: 1026, column: 43, scope: !2801, inlinedAt: !2915)
!2917 = !DILocation(line: 1027, column: 36, scope: !2801, inlinedAt: !2915)
!2918 = !DILocation(line: 1028, column: 36, scope: !2801, inlinedAt: !2915)
!2919 = !DILocation(line: 1028, column: 48, scope: !2801, inlinedAt: !2915)
!2920 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2915)
!2921 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2915)
!2922 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2915)
!2923 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2915)
!2925 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2924)
!2926 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2924)
!2927 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2924)
!2928 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2924)
!2929 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2924)
!2930 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2924)
!2931 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2924)
!2932 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2924)
!2933 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2924)
!2934 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2924)
!2935 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2924)
!2936 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2924)
!2937 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2915)
!2938 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2915)
!2939 = !DILocation(line: 1046, column: 3, scope: !2902)
!2940 = distinct !DISubprogram(name: "quote_n_mem", scope: !108, file: !108, line: 1061, type: !2941, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!23, !26, !23, !102}
!2943 = !{!2944, !2945, !2946}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !108, line: 1061, type: !26)
!2945 = !DILocalVariable(name: "arg", arg: 2, scope: !2940, file: !108, line: 1061, type: !23)
!2946 = !DILocalVariable(name: "argsize", arg: 3, scope: !2940, file: !108, line: 1061, type: !102)
!2947 = !DILocation(line: 1061, column: 18, scope: !2940)
!2948 = !DILocation(line: 1061, column: 33, scope: !2940)
!2949 = !DILocation(line: 1061, column: 45, scope: !2940)
!2950 = !DILocation(line: 1063, column: 10, scope: !2940)
!2951 = !DILocation(line: 1063, column: 3, scope: !2940)
!2952 = distinct !DISubprogram(name: "quote_mem", scope: !108, file: !108, line: 1067, type: !2953, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!23, !23, !102}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "arg", arg: 1, scope: !2952, file: !108, line: 1067, type: !23)
!2957 = !DILocalVariable(name: "argsize", arg: 2, scope: !2952, file: !108, line: 1067, type: !102)
!2958 = !DILocation(line: 1067, column: 24, scope: !2952)
!2959 = !DILocation(line: 1067, column: 36, scope: !2952)
!2960 = !DILocation(line: 1061, column: 18, scope: !2940, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 1069, column: 10, scope: !2952)
!2962 = !DILocation(line: 1061, column: 33, scope: !2940, inlinedAt: !2961)
!2963 = !DILocation(line: 1061, column: 45, scope: !2940, inlinedAt: !2961)
!2964 = !DILocation(line: 1063, column: 10, scope: !2940, inlinedAt: !2961)
!2965 = !DILocation(line: 1069, column: 3, scope: !2952)
!2966 = distinct !DISubprogram(name: "quote_n", scope: !108, file: !108, line: 1073, type: !2967, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!23, !26, !23}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !108, line: 1073, type: !26)
!2971 = !DILocalVariable(name: "arg", arg: 2, scope: !2966, file: !108, line: 1073, type: !23)
!2972 = !DILocation(line: 1073, column: 14, scope: !2966)
!2973 = !DILocation(line: 1073, column: 29, scope: !2966)
!2974 = !DILocation(line: 1061, column: 18, scope: !2940, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1075, column: 10, scope: !2966)
!2976 = !DILocation(line: 1061, column: 33, scope: !2940, inlinedAt: !2975)
!2977 = !DILocation(line: 1061, column: 45, scope: !2940, inlinedAt: !2975)
!2978 = !DILocation(line: 1063, column: 10, scope: !2940, inlinedAt: !2975)
!2979 = !DILocation(line: 1075, column: 3, scope: !2966)
!2980 = distinct !DISubprogram(name: "quote", scope: !108, file: !108, line: 1079, type: !2981, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!23, !23}
!2983 = !{!2984}
!2984 = !DILocalVariable(name: "arg", arg: 1, scope: !2980, file: !108, line: 1079, type: !23)
!2985 = !DILocation(line: 1079, column: 20, scope: !2980)
!2986 = !DILocation(line: 1073, column: 14, scope: !2966, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 1081, column: 10, scope: !2980)
!2988 = !DILocation(line: 1073, column: 29, scope: !2966, inlinedAt: !2987)
!2989 = !DILocation(line: 1061, column: 18, scope: !2940, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 1075, column: 10, scope: !2966, inlinedAt: !2987)
!2991 = !DILocation(line: 1061, column: 33, scope: !2940, inlinedAt: !2990)
!2992 = !DILocation(line: 1061, column: 45, scope: !2940, inlinedAt: !2990)
!2993 = !DILocation(line: 1063, column: 10, scope: !2940, inlinedAt: !2990)
!2994 = !DILocation(line: 1081, column: 3, scope: !2980)
!2995 = distinct !DISubprogram(name: "version_etc_arn", scope: !382, file: !382, line: 62, type: !2996, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !378, retainedNodes: !3053)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2998, !23, !23, !23, !3052, !102}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3000, line: 7, baseType: !3001)
!3000 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3002, line: 49, size: 1728, elements: !3003)
!3002 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3019, !3021, !3022, !3023, !3026, !3027, !3029, !3033, !3036, !3038, !3041, !3044, !3045, !3046, !3047, !3048}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3001, file: !3002, line: 51, baseType: !26, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3001, file: !3002, line: 54, baseType: !13, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3001, file: !3002, line: 55, baseType: !13, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3001, file: !3002, line: 56, baseType: !13, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3001, file: !3002, line: 57, baseType: !13, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3001, file: !3002, line: 58, baseType: !13, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3001, file: !3002, line: 59, baseType: !13, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3001, file: !3002, line: 60, baseType: !13, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3001, file: !3002, line: 61, baseType: !13, size: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3001, file: !3002, line: 64, baseType: !13, size: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3001, file: !3002, line: 65, baseType: !13, size: 64, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3001, file: !3002, line: 66, baseType: !13, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3001, file: !3002, line: 68, baseType: !3017, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3002, line: 36, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3001, file: !3002, line: 70, baseType: !3020, size: 64, offset: 832)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3001, file: !3002, line: 72, baseType: !26, size: 32, offset: 896)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3001, file: !3002, line: 73, baseType: !26, size: 32, offset: 928)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3001, file: !3002, line: 74, baseType: !3024, size: 64, offset: 960)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3025, line: 150, baseType: !1143)
!3025 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3001, file: !3002, line: 77, baseType: !101, size: 16, offset: 1024)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3001, file: !3002, line: 78, baseType: !3028, size: 8, offset: 1040)
!3028 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3001, file: !3002, line: 79, baseType: !3030, size: 8, offset: 1048)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !3031)
!3031 = !{!3032}
!3032 = !DISubrange(count: 1)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3001, file: !3002, line: 81, baseType: !3034, size: 64, offset: 1088)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3002, line: 43, baseType: null)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3001, file: !3002, line: 89, baseType: !3037, size: 64, offset: 1152)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3025, line: 151, baseType: !1143)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3001, file: !3002, line: 91, baseType: !3039, size: 64, offset: 1216)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3002, line: 37, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3001, file: !3002, line: 92, baseType: !3042, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3002, line: 38, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3001, file: !3002, line: 93, baseType: !3020, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3001, file: !3002, line: 94, baseType: !15, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3001, file: !3002, line: 95, baseType: !102, size: 64, offset: 1472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3001, file: !3002, line: 96, baseType: !26, size: 32, offset: 1536)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3001, file: !3002, line: 98, baseType: !3049, size: 160, offset: 1568)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !3050)
!3050 = !{!3051}
!3051 = !DISubrange(count: 20)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059}
!3054 = !DILocalVariable(name: "stream", arg: 1, scope: !2995, file: !382, line: 62, type: !2998)
!3055 = !DILocalVariable(name: "command_name", arg: 2, scope: !2995, file: !382, line: 63, type: !23)
!3056 = !DILocalVariable(name: "package", arg: 3, scope: !2995, file: !382, line: 63, type: !23)
!3057 = !DILocalVariable(name: "version", arg: 4, scope: !2995, file: !382, line: 64, type: !23)
!3058 = !DILocalVariable(name: "authors", arg: 5, scope: !2995, file: !382, line: 65, type: !3052)
!3059 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2995, file: !382, line: 65, type: !102)
!3060 = !DILocation(line: 62, column: 24, scope: !2995)
!3061 = !DILocation(line: 63, column: 30, scope: !2995)
!3062 = !DILocation(line: 63, column: 56, scope: !2995)
!3063 = !DILocation(line: 64, column: 30, scope: !2995)
!3064 = !DILocation(line: 65, column: 39, scope: !2995)
!3065 = !DILocation(line: 65, column: 55, scope: !2995)
!3066 = !DILocation(line: 67, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2995, file: !382, line: 67, column: 7)
!3068 = !DILocation(line: 67, column: 7, scope: !2995)
!3069 = !DILocation(line: 68, column: 5, scope: !3067)
!3070 = !DILocation(line: 70, column: 5, scope: !3067)
!3071 = !DILocation(line: 84, column: 3, scope: !2995)
!3072 = !DILocation(line: 86, column: 3, scope: !2995)
!3073 = !DILocation(line: 95, column: 3, scope: !2995)
!3074 = !DILocation(line: 99, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2995, file: !382, line: 96, column: 5)
!3076 = !DILocation(line: 102, column: 7, scope: !3075)
!3077 = !DILocation(line: 103, column: 7, scope: !3075)
!3078 = !DILocation(line: 106, column: 7, scope: !3075)
!3079 = !DILocation(line: 107, column: 7, scope: !3075)
!3080 = !DILocation(line: 110, column: 7, scope: !3075)
!3081 = !DILocation(line: 112, column: 7, scope: !3075)
!3082 = !DILocation(line: 117, column: 7, scope: !3075)
!3083 = !DILocation(line: 119, column: 7, scope: !3075)
!3084 = !DILocation(line: 124, column: 7, scope: !3075)
!3085 = !DILocation(line: 126, column: 7, scope: !3075)
!3086 = !DILocation(line: 131, column: 7, scope: !3075)
!3087 = !DILocation(line: 134, column: 7, scope: !3075)
!3088 = !DILocation(line: 139, column: 7, scope: !3075)
!3089 = !DILocation(line: 142, column: 7, scope: !3075)
!3090 = !DILocation(line: 147, column: 7, scope: !3075)
!3091 = !DILocation(line: 151, column: 7, scope: !3075)
!3092 = !DILocation(line: 156, column: 7, scope: !3075)
!3093 = !DILocation(line: 160, column: 7, scope: !3075)
!3094 = !DILocation(line: 167, column: 7, scope: !3075)
!3095 = !DILocation(line: 171, column: 7, scope: !3075)
!3096 = !DILocation(line: 173, column: 1, scope: !2995)
!3097 = distinct !DISubprogram(name: "version_etc_ar", scope: !382, file: !382, line: 180, type: !3098, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !378, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !2998, !23, !23, !23, !3052}
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106}
!3101 = !DILocalVariable(name: "stream", arg: 1, scope: !3097, file: !382, line: 180, type: !2998)
!3102 = !DILocalVariable(name: "command_name", arg: 2, scope: !3097, file: !382, line: 181, type: !23)
!3103 = !DILocalVariable(name: "package", arg: 3, scope: !3097, file: !382, line: 181, type: !23)
!3104 = !DILocalVariable(name: "version", arg: 4, scope: !3097, file: !382, line: 182, type: !23)
!3105 = !DILocalVariable(name: "authors", arg: 5, scope: !3097, file: !382, line: 182, type: !3052)
!3106 = !DILocalVariable(name: "n_authors", scope: !3097, file: !382, line: 184, type: !102)
!3107 = !DILocation(line: 180, column: 23, scope: !3097)
!3108 = !DILocation(line: 181, column: 29, scope: !3097)
!3109 = !DILocation(line: 181, column: 55, scope: !3097)
!3110 = !DILocation(line: 182, column: 29, scope: !3097)
!3111 = !DILocation(line: 182, column: 59, scope: !3097)
!3112 = !DILocation(line: 184, column: 10, scope: !3097)
!3113 = !DILocation(line: 186, column: 8, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3097, file: !382, line: 186, column: 3)
!3115 = !DILocation(line: 0, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3114, file: !382, line: 186, column: 3)
!3117 = !DILocation(line: 186, column: 23, scope: !3116)
!3118 = !DILocation(line: 186, column: 3, scope: !3114)
!3119 = !DILocation(line: 186, column: 52, scope: !3116)
!3120 = distinct !{!3120, !3118, !3121}
!3121 = !DILocation(line: 187, column: 5, scope: !3114)
!3122 = !DILocation(line: 188, column: 3, scope: !3097)
!3123 = !DILocation(line: 189, column: 1, scope: !3097)
!3124 = distinct !DISubprogram(name: "version_etc_va", scope: !382, file: !382, line: 196, type: !3125, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !378, retainedNodes: !3134)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !2998, !23, !23, !23, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !379, line: 189, size: 192, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3128, file: !379, line: 189, baseType: !7, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3128, file: !379, line: 189, baseType: !7, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3128, file: !379, line: 189, baseType: !15, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3128, file: !379, line: 189, baseType: !15, size: 64, offset: 128)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3135 = !DILocalVariable(name: "stream", arg: 1, scope: !3124, file: !382, line: 196, type: !2998)
!3136 = !DILocalVariable(name: "command_name", arg: 2, scope: !3124, file: !382, line: 197, type: !23)
!3137 = !DILocalVariable(name: "package", arg: 3, scope: !3124, file: !382, line: 197, type: !23)
!3138 = !DILocalVariable(name: "version", arg: 4, scope: !3124, file: !382, line: 198, type: !23)
!3139 = !DILocalVariable(name: "authors", arg: 5, scope: !3124, file: !382, line: 198, type: !3127)
!3140 = !DILocalVariable(name: "n_authors", scope: !3124, file: !382, line: 200, type: !102)
!3141 = !DILocalVariable(name: "authtab", scope: !3124, file: !382, line: 201, type: !3142)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 640, elements: !111)
!3143 = !DILocation(line: 196, column: 23, scope: !3124)
!3144 = !DILocation(line: 197, column: 29, scope: !3124)
!3145 = !DILocation(line: 197, column: 55, scope: !3124)
!3146 = !DILocation(line: 198, column: 29, scope: !3124)
!3147 = !DILocation(line: 198, column: 46, scope: !3124)
!3148 = !DILocation(line: 201, column: 3, scope: !3124)
!3149 = !DILocation(line: 201, column: 15, scope: !3124)
!3150 = !DILocation(line: 200, column: 10, scope: !3124)
!3151 = !DILocation(line: 205, column: 35, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !382, line: 203, column: 3)
!3153 = distinct !DILexicalBlock(scope: !3124, file: !382, line: 203, column: 3)
!3154 = !DILocation(line: 205, column: 14, scope: !3152)
!3155 = !DILocation(line: 205, column: 33, scope: !3152)
!3156 = !DILocation(line: 205, column: 67, scope: !3152)
!3157 = !DILocation(line: 203, column: 3, scope: !3153)
!3158 = !DILocation(line: 0, scope: !3152)
!3159 = !DILocation(line: 208, column: 3, scope: !3124)
!3160 = !DILocation(line: 210, column: 1, scope: !3124)
!3161 = distinct !DISubprogram(name: "version_etc", scope: !382, file: !382, line: 227, type: !3162, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !378, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !2998, !23, !23, !23, null}
!3164 = !{!3165, !3166, !3167, !3168, !3169}
!3165 = !DILocalVariable(name: "stream", arg: 1, scope: !3161, file: !382, line: 227, type: !2998)
!3166 = !DILocalVariable(name: "command_name", arg: 2, scope: !3161, file: !382, line: 228, type: !23)
!3167 = !DILocalVariable(name: "package", arg: 3, scope: !3161, file: !382, line: 228, type: !23)
!3168 = !DILocalVariable(name: "version", arg: 4, scope: !3161, file: !382, line: 229, type: !23)
!3169 = !DILocalVariable(name: "authors", scope: !3161, file: !382, line: 231, type: !3170)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3171, line: 52, baseType: !3172)
!3171 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3173, line: 48, baseType: !3174)
!3173 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !379, line: 231, baseType: !3175)
!3175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3128, size: 192, elements: !3031)
!3176 = !DILocation(line: 227, column: 20, scope: !3161)
!3177 = !DILocation(line: 228, column: 26, scope: !3161)
!3178 = !DILocation(line: 228, column: 52, scope: !3161)
!3179 = !DILocation(line: 229, column: 26, scope: !3161)
!3180 = !DILocation(line: 231, column: 3, scope: !3161)
!3181 = !DILocation(line: 231, column: 11, scope: !3161)
!3182 = !DILocation(line: 233, column: 3, scope: !3161)
!3183 = !DILocation(line: 234, column: 3, scope: !3161)
!3184 = !DILocation(line: 235, column: 3, scope: !3161)
!3185 = !DILocation(line: 236, column: 1, scope: !3161)
!3186 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !382, file: !382, line: 239, type: !978, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !378, retainedNodes: !36)
!3187 = !DILocation(line: 245, column: 3, scope: !3186)
!3188 = !DILocation(line: 251, column: 3, scope: !3186)
!3189 = !DILocation(line: 256, column: 3, scope: !3186)
!3190 = !DILocation(line: 258, column: 1, scope: !3186)
!3191 = distinct !DISubprogram(name: "xnmalloc", scope: !389, file: !389, line: 99, type: !3192, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!15, !102, !102}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !389, line: 99, type: !102)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !389, line: 99, type: !102)
!3197 = !DILocation(line: 99, column: 18, scope: !3191)
!3198 = !DILocation(line: 99, column: 28, scope: !3191)
!3199 = !DILocation(line: 101, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3191, file: !389, line: 101, column: 7)
!3201 = !DILocation(line: 101, column: 7, scope: !3191)
!3202 = !DILocation(line: 102, column: 5, scope: !3200)
!3203 = !DILocation(line: 103, column: 21, scope: !3191)
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3205, file: !3206, line: 39, type: !102)
!3205 = distinct !DISubprogram(name: "xmalloc", scope: !3206, file: !3206, line: 39, type: !3207, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3209)
!3206 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!15, !102}
!3209 = !{!3204, !3210}
!3210 = !DILocalVariable(name: "p", scope: !3205, file: !3206, line: 41, type: !15)
!3211 = !DILocation(line: 39, column: 17, scope: !3205, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 103, column: 10, scope: !3191)
!3213 = !DILocation(line: 41, column: 13, scope: !3205, inlinedAt: !3212)
!3214 = !DILocation(line: 41, column: 9, scope: !3205, inlinedAt: !3212)
!3215 = !DILocation(line: 42, column: 8, scope: !3216, inlinedAt: !3212)
!3216 = distinct !DILexicalBlock(scope: !3205, file: !3206, line: 42, column: 7)
!3217 = !DILocation(line: 42, column: 15, scope: !3216, inlinedAt: !3212)
!3218 = !DILocation(line: 42, column: 10, scope: !3216, inlinedAt: !3212)
!3219 = !DILocation(line: 43, column: 5, scope: !3216, inlinedAt: !3212)
!3220 = !DILocation(line: 103, column: 3, scope: !3191)
!3221 = !DILocation(line: 39, column: 17, scope: !3205)
!3222 = !DILocation(line: 41, column: 13, scope: !3205)
!3223 = !DILocation(line: 41, column: 9, scope: !3205)
!3224 = !DILocation(line: 42, column: 8, scope: !3216)
!3225 = !DILocation(line: 42, column: 15, scope: !3216)
!3226 = !DILocation(line: 42, column: 10, scope: !3216)
!3227 = !DILocation(line: 43, column: 5, scope: !3216)
!3228 = !DILocation(line: 44, column: 3, scope: !3205)
!3229 = distinct !DISubprogram(name: "xnrealloc", scope: !389, file: !389, line: 112, type: !3230, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!15, !15, !102, !102}
!3232 = !{!3233, !3234, !3235}
!3233 = !DILocalVariable(name: "p", arg: 1, scope: !3229, file: !389, line: 112, type: !15)
!3234 = !DILocalVariable(name: "n", arg: 2, scope: !3229, file: !389, line: 112, type: !102)
!3235 = !DILocalVariable(name: "s", arg: 3, scope: !3229, file: !389, line: 112, type: !102)
!3236 = !DILocation(line: 112, column: 18, scope: !3229)
!3237 = !DILocation(line: 112, column: 28, scope: !3229)
!3238 = !DILocation(line: 112, column: 38, scope: !3229)
!3239 = !DILocation(line: 114, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3229, file: !389, line: 114, column: 7)
!3241 = !DILocation(line: 114, column: 7, scope: !3229)
!3242 = !DILocation(line: 115, column: 5, scope: !3240)
!3243 = !DILocation(line: 116, column: 25, scope: !3229)
!3244 = !DILocalVariable(name: "p", arg: 1, scope: !3245, file: !3206, line: 51, type: !15)
!3245 = distinct !DISubprogram(name: "xrealloc", scope: !3206, file: !3206, line: 51, type: !3246, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!15, !15, !102}
!3248 = !{!3244, !3249}
!3249 = !DILocalVariable(name: "n", arg: 2, scope: !3245, file: !3206, line: 51, type: !102)
!3250 = !DILocation(line: 51, column: 17, scope: !3245, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 116, column: 10, scope: !3229)
!3252 = !DILocation(line: 51, column: 27, scope: !3245, inlinedAt: !3251)
!3253 = !DILocation(line: 53, column: 8, scope: !3254, inlinedAt: !3251)
!3254 = distinct !DILexicalBlock(scope: !3245, file: !3206, line: 53, column: 7)
!3255 = !DILocation(line: 53, column: 13, scope: !3254, inlinedAt: !3251)
!3256 = !DILocation(line: 53, column: 10, scope: !3254, inlinedAt: !3251)
!3257 = !DILocation(line: 57, column: 7, scope: !3258, inlinedAt: !3251)
!3258 = distinct !DILexicalBlock(scope: !3254, file: !3206, line: 54, column: 5)
!3259 = !DILocation(line: 58, column: 7, scope: !3258, inlinedAt: !3251)
!3260 = !DILocation(line: 61, column: 7, scope: !3245, inlinedAt: !3251)
!3261 = !DILocation(line: 62, column: 8, scope: !3262, inlinedAt: !3251)
!3262 = distinct !DILexicalBlock(scope: !3245, file: !3206, line: 62, column: 7)
!3263 = !DILocation(line: 62, column: 13, scope: !3262, inlinedAt: !3251)
!3264 = !DILocation(line: 62, column: 10, scope: !3262, inlinedAt: !3251)
!3265 = !DILocation(line: 63, column: 5, scope: !3262, inlinedAt: !3251)
!3266 = !DILocation(line: 0, scope: !3245, inlinedAt: !3251)
!3267 = !DILocation(line: 116, column: 3, scope: !3229)
!3268 = !DILocation(line: 51, column: 17, scope: !3245)
!3269 = !DILocation(line: 51, column: 27, scope: !3245)
!3270 = !DILocation(line: 53, column: 8, scope: !3254)
!3271 = !DILocation(line: 53, column: 13, scope: !3254)
!3272 = !DILocation(line: 53, column: 10, scope: !3254)
!3273 = !DILocation(line: 57, column: 7, scope: !3258)
!3274 = !DILocation(line: 58, column: 7, scope: !3258)
!3275 = !DILocation(line: 61, column: 7, scope: !3245)
!3276 = !DILocation(line: 62, column: 8, scope: !3262)
!3277 = !DILocation(line: 62, column: 13, scope: !3262)
!3278 = !DILocation(line: 62, column: 10, scope: !3262)
!3279 = !DILocation(line: 63, column: 5, scope: !3262)
!3280 = !DILocation(line: 0, scope: !3245)
!3281 = !DILocation(line: 65, column: 1, scope: !3245)
!3282 = !DILocation(line: 174, column: 19, scope: !390)
!3283 = !DILocation(line: 174, column: 30, scope: !390)
!3284 = !DILocation(line: 174, column: 41, scope: !390)
!3285 = !DILocation(line: 176, column: 14, scope: !390)
!3286 = !DILocation(line: 176, column: 10, scope: !390)
!3287 = !DILocation(line: 178, column: 9, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !390, file: !389, line: 178, column: 7)
!3289 = !DILocation(line: 178, column: 7, scope: !390)
!3290 = !DILocation(line: 180, column: 13, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !389, line: 180, column: 11)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !389, line: 179, column: 5)
!3293 = !DILocation(line: 180, column: 11, scope: !3292)
!3294 = !DILocation(line: 188, column: 30, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !389, line: 181, column: 9)
!3296 = !DILocation(line: 189, column: 16, scope: !3295)
!3297 = !DILocation(line: 189, column: 13, scope: !3295)
!3298 = !DILocation(line: 190, column: 9, scope: !3295)
!3299 = !DILocation(line: 0, scope: !3295)
!3300 = !DILocation(line: 191, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3292, file: !389, line: 191, column: 11)
!3302 = !DILocation(line: 191, column: 11, scope: !3292)
!3303 = !DILocation(line: 206, column: 7, scope: !390)
!3304 = !DILocation(line: 207, column: 25, scope: !390)
!3305 = !DILocation(line: 51, column: 17, scope: !3245, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 207, column: 10, scope: !390)
!3307 = !DILocation(line: 51, column: 27, scope: !3245, inlinedAt: !3306)
!3308 = !DILocation(line: 53, column: 10, scope: !3254, inlinedAt: !3306)
!3309 = !DILocation(line: 192, column: 9, scope: !3301)
!3310 = !DILocation(line: 200, column: 69, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !389, line: 200, column: 11)
!3312 = distinct !DILexicalBlock(scope: !3288, file: !389, line: 195, column: 5)
!3313 = !DILocation(line: 201, column: 11, scope: !3311)
!3314 = !DILocation(line: 200, column: 11, scope: !3312)
!3315 = !DILocation(line: 202, column: 9, scope: !3311)
!3316 = !DILocation(line: 203, column: 14, scope: !3312)
!3317 = !DILocation(line: 203, column: 18, scope: !3312)
!3318 = !DILocation(line: 203, column: 9, scope: !3312)
!3319 = !DILocation(line: 53, column: 8, scope: !3254, inlinedAt: !3306)
!3320 = !DILocation(line: 57, column: 7, scope: !3258, inlinedAt: !3306)
!3321 = !DILocation(line: 58, column: 7, scope: !3258, inlinedAt: !3306)
!3322 = !DILocation(line: 61, column: 7, scope: !3245, inlinedAt: !3306)
!3323 = !DILocation(line: 62, column: 8, scope: !3262, inlinedAt: !3306)
!3324 = !DILocation(line: 62, column: 13, scope: !3262, inlinedAt: !3306)
!3325 = !DILocation(line: 62, column: 10, scope: !3262, inlinedAt: !3306)
!3326 = !DILocation(line: 63, column: 5, scope: !3262, inlinedAt: !3306)
!3327 = !DILocation(line: 0, scope: !3245, inlinedAt: !3306)
!3328 = !DILocation(line: 207, column: 3, scope: !390)
!3329 = distinct !DISubprogram(name: "xcharalloc", scope: !389, file: !389, line: 216, type: !2279, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3330)
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !389, line: 216, type: !102)
!3332 = !DILocation(line: 216, column: 20, scope: !3329)
!3333 = !DILocation(line: 39, column: 17, scope: !3205, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 218, column: 10, scope: !3329)
!3335 = !DILocation(line: 41, column: 13, scope: !3205, inlinedAt: !3334)
!3336 = !DILocation(line: 41, column: 9, scope: !3205, inlinedAt: !3334)
!3337 = !DILocation(line: 42, column: 8, scope: !3216, inlinedAt: !3334)
!3338 = !DILocation(line: 42, column: 15, scope: !3216, inlinedAt: !3334)
!3339 = !DILocation(line: 42, column: 10, scope: !3216, inlinedAt: !3334)
!3340 = !DILocation(line: 43, column: 5, scope: !3216, inlinedAt: !3334)
!3341 = !DILocation(line: 218, column: 3, scope: !3329)
!3342 = distinct !DISubprogram(name: "x2realloc", scope: !3206, file: !3206, line: 74, type: !3343, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!15, !15, !393}
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "p", arg: 1, scope: !3342, file: !3206, line: 74, type: !15)
!3347 = !DILocalVariable(name: "pn", arg: 2, scope: !3342, file: !3206, line: 74, type: !393)
!3348 = !DILocation(line: 74, column: 18, scope: !3342)
!3349 = !DILocation(line: 74, column: 29, scope: !3342)
!3350 = !DILocation(line: 174, column: 19, scope: !390, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 76, column: 10, scope: !3342)
!3352 = !DILocation(line: 174, column: 30, scope: !390, inlinedAt: !3351)
!3353 = !DILocation(line: 174, column: 41, scope: !390, inlinedAt: !3351)
!3354 = !DILocation(line: 176, column: 14, scope: !390, inlinedAt: !3351)
!3355 = !DILocation(line: 176, column: 10, scope: !390, inlinedAt: !3351)
!3356 = !DILocation(line: 178, column: 9, scope: !3288, inlinedAt: !3351)
!3357 = !DILocation(line: 178, column: 7, scope: !390, inlinedAt: !3351)
!3358 = !DILocation(line: 180, column: 13, scope: !3291, inlinedAt: !3351)
!3359 = !DILocation(line: 180, column: 11, scope: !3292, inlinedAt: !3351)
!3360 = !DILocation(line: 191, column: 11, scope: !3301, inlinedAt: !3351)
!3361 = !DILocation(line: 191, column: 11, scope: !3292, inlinedAt: !3351)
!3362 = !DILocation(line: 206, column: 7, scope: !390, inlinedAt: !3351)
!3363 = !DILocation(line: 51, column: 17, scope: !3245, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 207, column: 10, scope: !390, inlinedAt: !3351)
!3365 = !DILocation(line: 51, column: 27, scope: !3245, inlinedAt: !3364)
!3366 = !DILocation(line: 53, column: 10, scope: !3254, inlinedAt: !3364)
!3367 = !DILocation(line: 192, column: 9, scope: !3301, inlinedAt: !3351)
!3368 = !DILocation(line: 201, column: 11, scope: !3311, inlinedAt: !3351)
!3369 = !DILocation(line: 200, column: 11, scope: !3312, inlinedAt: !3351)
!3370 = !DILocation(line: 202, column: 9, scope: !3311, inlinedAt: !3351)
!3371 = !DILocation(line: 203, column: 14, scope: !3312, inlinedAt: !3351)
!3372 = !DILocation(line: 203, column: 18, scope: !3312, inlinedAt: !3351)
!3373 = !DILocation(line: 203, column: 9, scope: !3312, inlinedAt: !3351)
!3374 = !DILocation(line: 53, column: 8, scope: !3254, inlinedAt: !3364)
!3375 = !DILocation(line: 57, column: 7, scope: !3258, inlinedAt: !3364)
!3376 = !DILocation(line: 58, column: 7, scope: !3258, inlinedAt: !3364)
!3377 = !DILocation(line: 61, column: 7, scope: !3245, inlinedAt: !3364)
!3378 = !DILocation(line: 62, column: 8, scope: !3262, inlinedAt: !3364)
!3379 = !DILocation(line: 62, column: 13, scope: !3262, inlinedAt: !3364)
!3380 = !DILocation(line: 62, column: 10, scope: !3262, inlinedAt: !3364)
!3381 = !DILocation(line: 63, column: 5, scope: !3262, inlinedAt: !3364)
!3382 = !DILocation(line: 0, scope: !3245, inlinedAt: !3364)
!3383 = !DILocation(line: 76, column: 3, scope: !3342)
!3384 = distinct !DISubprogram(name: "xzalloc", scope: !3206, file: !3206, line: 84, type: !3207, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3385)
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "s", arg: 1, scope: !3384, file: !3206, line: 84, type: !102)
!3387 = !DILocation(line: 84, column: 17, scope: !3384)
!3388 = !DILocation(line: 39, column: 17, scope: !3205, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 86, column: 18, scope: !3384)
!3390 = !DILocation(line: 41, column: 13, scope: !3205, inlinedAt: !3389)
!3391 = !DILocation(line: 41, column: 9, scope: !3205, inlinedAt: !3389)
!3392 = !DILocation(line: 42, column: 8, scope: !3216, inlinedAt: !3389)
!3393 = !DILocation(line: 42, column: 15, scope: !3216, inlinedAt: !3389)
!3394 = !DILocation(line: 42, column: 10, scope: !3216, inlinedAt: !3389)
!3395 = !DILocation(line: 43, column: 5, scope: !3216, inlinedAt: !3389)
!3396 = !DILocation(line: 86, column: 10, scope: !3384)
!3397 = !DILocation(line: 86, column: 3, scope: !3384)
!3398 = distinct !DISubprogram(name: "xcalloc", scope: !3206, file: !3206, line: 93, type: !3192, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3399)
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !3206, line: 93, type: !102)
!3401 = !DILocalVariable(name: "s", arg: 2, scope: !3398, file: !3206, line: 93, type: !102)
!3402 = !DILocalVariable(name: "p", scope: !3398, file: !3206, line: 95, type: !15)
!3403 = !DILocation(line: 93, column: 17, scope: !3398)
!3404 = !DILocation(line: 93, column: 27, scope: !3398)
!3405 = !DILocation(line: 100, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3398, file: !3206, line: 100, column: 7)
!3407 = !DILocation(line: 101, column: 7, scope: !3406)
!3408 = !DILocation(line: 101, column: 18, scope: !3406)
!3409 = !DILocation(line: 95, column: 9, scope: !3398)
!3410 = !DILocation(line: 101, column: 16, scope: !3406)
!3411 = !DILocation(line: 100, column: 7, scope: !3398)
!3412 = !DILocation(line: 102, column: 5, scope: !3406)
!3413 = !DILocation(line: 103, column: 3, scope: !3398)
!3414 = distinct !DISubprogram(name: "xmemdup", scope: !3206, file: !3206, line: 111, type: !3415, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3419)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!15, !3417, !102}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3419 = !{!3420, !3421}
!3420 = !DILocalVariable(name: "p", arg: 1, scope: !3414, file: !3206, line: 111, type: !3417)
!3421 = !DILocalVariable(name: "s", arg: 2, scope: !3414, file: !3206, line: 111, type: !102)
!3422 = !DILocation(line: 111, column: 22, scope: !3414)
!3423 = !DILocation(line: 111, column: 32, scope: !3414)
!3424 = !DILocation(line: 39, column: 17, scope: !3205, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 113, column: 18, scope: !3414)
!3426 = !DILocation(line: 41, column: 13, scope: !3205, inlinedAt: !3425)
!3427 = !DILocation(line: 41, column: 9, scope: !3205, inlinedAt: !3425)
!3428 = !DILocation(line: 42, column: 8, scope: !3216, inlinedAt: !3425)
!3429 = !DILocation(line: 42, column: 15, scope: !3216, inlinedAt: !3425)
!3430 = !DILocation(line: 42, column: 10, scope: !3216, inlinedAt: !3425)
!3431 = !DILocation(line: 43, column: 5, scope: !3216, inlinedAt: !3425)
!3432 = !DILocation(line: 113, column: 10, scope: !3414)
!3433 = !DILocation(line: 113, column: 3, scope: !3414)
!3434 = distinct !DISubprogram(name: "xstrdup", scope: !3206, file: !3206, line: 119, type: !2485, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !385, retainedNodes: !3435)
!3435 = !{!3436}
!3436 = !DILocalVariable(name: "string", arg: 1, scope: !3434, file: !3206, line: 119, type: !23)
!3437 = !DILocation(line: 119, column: 22, scope: !3434)
!3438 = !DILocation(line: 121, column: 27, scope: !3434)
!3439 = !DILocation(line: 121, column: 43, scope: !3434)
!3440 = !DILocation(line: 111, column: 22, scope: !3414, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 121, column: 10, scope: !3434)
!3442 = !DILocation(line: 111, column: 32, scope: !3414, inlinedAt: !3441)
!3443 = !DILocation(line: 39, column: 17, scope: !3205, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 113, column: 18, scope: !3414, inlinedAt: !3441)
!3445 = !DILocation(line: 41, column: 13, scope: !3205, inlinedAt: !3444)
!3446 = !DILocation(line: 41, column: 9, scope: !3205, inlinedAt: !3444)
!3447 = !DILocation(line: 42, column: 8, scope: !3216, inlinedAt: !3444)
!3448 = !DILocation(line: 42, column: 15, scope: !3216, inlinedAt: !3444)
!3449 = !DILocation(line: 42, column: 10, scope: !3216, inlinedAt: !3444)
!3450 = !DILocation(line: 43, column: 5, scope: !3216, inlinedAt: !3444)
!3451 = !DILocation(line: 113, column: 10, scope: !3414, inlinedAt: !3441)
!3452 = !DILocation(line: 121, column: 3, scope: !3434)
!3453 = distinct !DISubprogram(name: "xalloc_die", scope: !3454, file: !3454, line: 32, type: !978, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !402, retainedNodes: !36)
!3454 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3455 = !DILocation(line: 34, column: 10, scope: !3453)
!3456 = !DILocation(line: 34, column: 33, scope: !3453)
!3457 = !DILocation(line: 34, column: 3, scope: !3453)
!3458 = !DILocation(line: 40, column: 3, scope: !3453)
!3459 = distinct !DISubprogram(name: "xnumtoumax", scope: !3460, file: !3460, line: 36, type: !3461, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !404, retainedNodes: !3466)
!3460 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!3463, !23, !26, !3463, !3463, !23, !23, !26}
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3464, line: 102, baseType: !3465)
!3464 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !3025, line: 72, baseType: !104)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3476}
!3467 = !DILocalVariable(name: "n_str", arg: 1, scope: !3459, file: !3460, line: 36, type: !23)
!3468 = !DILocalVariable(name: "base", arg: 2, scope: !3459, file: !3460, line: 36, type: !26)
!3469 = !DILocalVariable(name: "min", arg: 3, scope: !3459, file: !3460, line: 36, type: !3463)
!3470 = !DILocalVariable(name: "max", arg: 4, scope: !3459, file: !3460, line: 36, type: !3463)
!3471 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3459, file: !3460, line: 37, type: !23)
!3472 = !DILocalVariable(name: "err", arg: 6, scope: !3459, file: !3460, line: 37, type: !23)
!3473 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3459, file: !3460, line: 37, type: !26)
!3474 = !DILocalVariable(name: "s_err", scope: !3459, file: !3460, line: 39, type: !3475)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !408, line: 39, baseType: !407)
!3476 = !DILocalVariable(name: "tnum", scope: !3459, file: !3460, line: 41, type: !3463)
!3477 = !DILocation(line: 36, column: 26, scope: !3459)
!3478 = !DILocation(line: 36, column: 37, scope: !3459)
!3479 = !DILocation(line: 36, column: 57, scope: !3459)
!3480 = !DILocation(line: 36, column: 76, scope: !3459)
!3481 = !DILocation(line: 37, column: 26, scope: !3459)
!3482 = !DILocation(line: 37, column: 48, scope: !3459)
!3483 = !DILocation(line: 37, column: 57, scope: !3459)
!3484 = !DILocation(line: 41, column: 3, scope: !3459)
!3485 = !DILocation(line: 41, column: 17, scope: !3459)
!3486 = !DILocation(line: 42, column: 11, scope: !3459)
!3487 = !DILocation(line: 39, column: 16, scope: !3459)
!3488 = !DILocation(line: 44, column: 7, scope: !3459)
!3489 = !DILocation(line: 69, column: 50, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !3460, line: 67, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3459, file: !3460, line: 66, column: 7)
!3492 = !DILocation(line: 46, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3460, line: 46, column: 11)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3460, line: 45, column: 5)
!3495 = distinct !DILexicalBlock(scope: !3459, file: !3460, line: 44, column: 7)
!3496 = !DILocation(line: 46, column: 16, scope: !3493)
!3497 = !DILocation(line: 46, column: 29, scope: !3493)
!3498 = !DILocation(line: 46, column: 22, scope: !3493)
!3499 = !DILocation(line: 51, column: 20, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !3460, line: 51, column: 15)
!3501 = distinct !DILexicalBlock(scope: !3493, file: !3460, line: 47, column: 9)
!3502 = !DILocation(line: 0, scope: !3500)
!3503 = !DILocation(line: 51, column: 15, scope: !3501)
!3504 = !DILocation(line: 52, column: 19, scope: !3500)
!3505 = !DILocation(line: 52, column: 13, scope: !3500)
!3506 = !DILocation(line: 58, column: 19, scope: !3500)
!3507 = !DILocation(line: 62, column: 5, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3495, file: !3460, line: 61, column: 12)
!3509 = !DILocation(line: 62, column: 11, scope: !3508)
!3510 = !DILocation(line: 64, column: 5, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !3460, line: 63, column: 12)
!3512 = !DILocation(line: 64, column: 11, scope: !3511)
!3513 = !DILocation(line: 69, column: 14, scope: !3490)
!3514 = !DILocation(line: 69, column: 56, scope: !3490)
!3515 = !DILocation(line: 70, column: 29, scope: !3490)
!3516 = !DILocation(line: 69, column: 7, scope: !3490)
!3517 = !DILocation(line: 73, column: 10, scope: !3459)
!3518 = !DILocation(line: 71, column: 5, scope: !3490)
!3519 = !DILocation(line: 74, column: 1, scope: !3459)
!3520 = !DILocation(line: 73, column: 3, scope: !3459)
!3521 = distinct !DISubprogram(name: "xdectoumax", scope: !3460, file: !3460, line: 82, type: !3522, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !404, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3463, !23, !3463, !3463, !23, !23, !26}
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530}
!3525 = !DILocalVariable(name: "n_str", arg: 1, scope: !3521, file: !3460, line: 82, type: !23)
!3526 = !DILocalVariable(name: "min", arg: 2, scope: !3521, file: !3460, line: 82, type: !3463)
!3527 = !DILocalVariable(name: "max", arg: 3, scope: !3521, file: !3460, line: 82, type: !3463)
!3528 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3521, file: !3460, line: 83, type: !23)
!3529 = !DILocalVariable(name: "err", arg: 5, scope: !3521, file: !3460, line: 83, type: !23)
!3530 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3521, file: !3460, line: 83, type: !26)
!3531 = !DILocation(line: 82, column: 26, scope: !3521)
!3532 = !DILocation(line: 82, column: 47, scope: !3521)
!3533 = !DILocation(line: 82, column: 66, scope: !3521)
!3534 = !DILocation(line: 83, column: 26, scope: !3521)
!3535 = !DILocation(line: 83, column: 48, scope: !3521)
!3536 = !DILocation(line: 83, column: 57, scope: !3521)
!3537 = !DILocation(line: 85, column: 10, scope: !3521)
!3538 = !DILocation(line: 85, column: 3, scope: !3521)
!3539 = distinct !DISubprogram(name: "xstrtoumax", scope: !3540, file: !3540, line: 88, type: !3541, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !415, retainedNodes: !3544)
!3540 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!3475, !23, !909, !26, !3543, !23}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3557, !3558, !3561, !3562}
!3545 = !DILocalVariable(name: "s", arg: 1, scope: !3539, file: !3540, line: 88, type: !23)
!3546 = !DILocalVariable(name: "ptr", arg: 2, scope: !3539, file: !3540, line: 88, type: !909)
!3547 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3539, file: !3540, line: 88, type: !26)
!3548 = !DILocalVariable(name: "val", arg: 4, scope: !3539, file: !3540, line: 89, type: !3543)
!3549 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3539, file: !3540, line: 89, type: !23)
!3550 = !DILocalVariable(name: "t_ptr", scope: !3539, file: !3540, line: 91, type: !13)
!3551 = !DILocalVariable(name: "p", scope: !3539, file: !3540, line: 92, type: !909)
!3552 = !DILocalVariable(name: "tmp", scope: !3539, file: !3540, line: 93, type: !3463)
!3553 = !DILocalVariable(name: "err", scope: !3539, file: !3540, line: 94, type: !3475)
!3554 = !DILocalVariable(name: "q", scope: !3555, file: !3540, line: 104, type: !23)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !3540, line: 103, column: 5)
!3556 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 102, column: 7)
!3557 = !DILocalVariable(name: "ch", scope: !3555, file: !3540, line: 105, type: !1302)
!3558 = !DILocalVariable(name: "base", scope: !3559, file: !3540, line: 141, type: !26)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3540, line: 140, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 139, column: 7)
!3561 = !DILocalVariable(name: "suffixes", scope: !3559, file: !3540, line: 142, type: !26)
!3562 = !DILocalVariable(name: "overflow", scope: !3559, file: !3540, line: 143, type: !3475)
!3563 = !DILocation(line: 88, column: 24, scope: !3539)
!3564 = !DILocation(line: 88, column: 34, scope: !3539)
!3565 = !DILocation(line: 88, column: 43, scope: !3539)
!3566 = !DILocation(line: 89, column: 24, scope: !3539)
!3567 = !DILocation(line: 89, column: 41, scope: !3539)
!3568 = !DILocation(line: 91, column: 3, scope: !3539)
!3569 = !DILocation(line: 94, column: 16, scope: !3539)
!3570 = !DILocation(line: 96, column: 3, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3540, line: 96, column: 3)
!3572 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 96, column: 3)
!3573 = !DILocation(line: 98, column: 8, scope: !3539)
!3574 = !DILocation(line: 92, column: 10, scope: !3539)
!3575 = !DILocation(line: 100, column: 3, scope: !3539)
!3576 = !DILocation(line: 100, column: 9, scope: !3539)
!3577 = !DILocation(line: 104, column: 19, scope: !3555)
!3578 = !DILocation(line: 105, column: 21, scope: !3555)
!3579 = !DILocation(line: 106, column: 14, scope: !3555)
!3580 = !DILocation(line: 106, column: 7, scope: !3555)
!3581 = !DILocation(line: 0, scope: !3555)
!3582 = !DILocation(line: 107, column: 15, scope: !3555)
!3583 = distinct !{!3583, !3580, !3584}
!3584 = !DILocation(line: 107, column: 17, scope: !3555)
!3585 = !DILocation(line: 108, column: 14, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3555, file: !3540, line: 108, column: 11)
!3587 = !DILocalVariable(name: "nptr", arg: 1, scope: !3588, file: !3589, line: 336, type: !3592)
!3588 = distinct !DISubprogram(name: "strtoumax", scope: !3589, file: !3589, line: 336, type: !3590, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !415, retainedNodes: !3594)
!3589 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!3463, !3592, !3593, !26}
!3592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!3593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !909)
!3594 = !{!3587, !3595, !3596}
!3595 = !DILocalVariable(name: "endptr", arg: 2, scope: !3588, file: !3589, line: 336, type: !3593)
!3596 = !DILocalVariable(name: "base", arg: 3, scope: !3588, file: !3589, line: 336, type: !26)
!3597 = !DILocation(line: 336, column: 1, scope: !3588, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 112, column: 9, scope: !3539)
!3599 = !DILocation(line: 339, column: 10, scope: !3588, inlinedAt: !3598)
!3600 = !DILocation(line: 93, column: 14, scope: !3539)
!3601 = !DILocation(line: 114, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 114, column: 7)
!3603 = !DILocation(line: 114, column: 10, scope: !3602)
!3604 = !DILocation(line: 114, column: 7, scope: !3539)
!3605 = !DILocation(line: 118, column: 11, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3540, line: 118, column: 11)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !3540, line: 115, column: 5)
!3608 = !DILocation(line: 118, column: 26, scope: !3606)
!3609 = !DILocation(line: 118, column: 29, scope: !3606)
!3610 = !DILocation(line: 118, column: 33, scope: !3606)
!3611 = !DILocation(line: 118, column: 36, scope: !3606)
!3612 = !DILocation(line: 118, column: 11, scope: !3607)
!3613 = !DILocation(line: 123, column: 12, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3602, file: !3540, line: 123, column: 12)
!3615 = !DILocation(line: 123, column: 12, scope: !3602)
!3616 = !DILocation(line: 128, column: 5, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !3540, line: 124, column: 5)
!3618 = !DILocation(line: 0, scope: !3539)
!3619 = !DILocation(line: 133, column: 8, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 133, column: 7)
!3621 = !DILocation(line: 133, column: 7, scope: !3539)
!3622 = !DILocation(line: 135, column: 12, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3620, file: !3540, line: 134, column: 5)
!3624 = !DILocation(line: 136, column: 7, scope: !3623)
!3625 = !DILocation(line: 139, column: 7, scope: !3560)
!3626 = !DILocation(line: 139, column: 11, scope: !3560)
!3627 = !DILocation(line: 139, column: 7, scope: !3539)
!3628 = !DILocation(line: 141, column: 11, scope: !3559)
!3629 = !DILocation(line: 142, column: 11, scope: !3559)
!3630 = !DILocation(line: 145, column: 12, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3559, file: !3540, line: 145, column: 11)
!3632 = !DILocation(line: 145, column: 11, scope: !3559)
!3633 = !DILocation(line: 147, column: 16, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !3540, line: 146, column: 9)
!3635 = !DILocation(line: 148, column: 22, scope: !3634)
!3636 = !DILocation(line: 148, column: 11, scope: !3634)
!3637 = !DILocation(line: 151, column: 7, scope: !3559)
!3638 = !DILocation(line: 163, column: 15, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3540, line: 163, column: 15)
!3640 = distinct !DILexicalBlock(scope: !3559, file: !3540, line: 152, column: 9)
!3641 = !DILocation(line: 163, column: 15, scope: !3640)
!3642 = !DILocation(line: 164, column: 21, scope: !3639)
!3643 = !DILocation(line: 164, column: 13, scope: !3639)
!3644 = !DILocation(line: 167, column: 21, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3540, line: 167, column: 21)
!3646 = distinct !DILexicalBlock(scope: !3639, file: !3540, line: 165, column: 15)
!3647 = !DILocation(line: 167, column: 29, scope: !3645)
!3648 = !DILocation(line: 167, column: 21, scope: !3646)
!3649 = !DILocation(line: 175, column: 17, scope: !3646)
!3650 = !DILocation(line: 179, column: 7, scope: !3559)
!3651 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3652, file: !3540, line: 60, type: !26)
!3652 = distinct !DISubprogram(name: "bkm_scale", scope: !3540, file: !3540, line: 60, type: !3653, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !415, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!3475, !3543, !26}
!3655 = !{!3656, !3651}
!3656 = !DILocalVariable(name: "x", arg: 1, scope: !3652, file: !3540, line: 60, type: !3543)
!3657 = !DILocation(line: 60, column: 31, scope: !3652, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 182, column: 22, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3559, file: !3540, line: 180, column: 9)
!3660 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3658)
!3661 = distinct !DILexicalBlock(scope: !3652, file: !3540, line: 67, column: 7)
!3662 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3658)
!3663 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3658)
!3664 = !DILocation(line: 143, column: 20, scope: !3559)
!3665 = !DILocation(line: 183, column: 11, scope: !3659)
!3666 = !DILocation(line: 60, column: 31, scope: !3652, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 189, column: 22, scope: !3659)
!3668 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3667)
!3669 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3667)
!3670 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3667)
!3671 = !DILocation(line: 190, column: 11, scope: !3659)
!3672 = !DILocalVariable(name: "power", arg: 3, scope: !3673, file: !3540, line: 77, type: !26)
!3673 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3540, file: !3540, line: 77, type: !3674, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !415, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3475, !3543, !26, !26}
!3676 = !{!3677, !3678, !3672, !3679}
!3677 = !DILocalVariable(name: "x", arg: 1, scope: !3673, file: !3540, line: 77, type: !3543)
!3678 = !DILocalVariable(name: "base", arg: 2, scope: !3673, file: !3540, line: 77, type: !26)
!3679 = !DILocalVariable(name: "err", scope: !3673, file: !3540, line: 79, type: !3475)
!3680 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 197, column: 22, scope: !3659)
!3682 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3681)
!3683 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3681)
!3685 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3684)
!3686 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3684)
!3687 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3681)
!3688 = !DILocation(line: 241, column: 11, scope: !3559)
!3689 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 202, column: 22, scope: !3659)
!3691 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3690)
!3692 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3690)
!3694 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3693)
!3695 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3693)
!3696 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3690)
!3697 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 207, column: 22, scope: !3659)
!3699 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3698)
!3700 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3698)
!3702 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3701)
!3703 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3701)
!3704 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 212, column: 22, scope: !3659)
!3706 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3705)
!3707 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3705)
!3709 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3708)
!3710 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3708)
!3711 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3705)
!3712 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 216, column: 22, scope: !3659)
!3714 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3713)
!3715 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3713)
!3717 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3716)
!3718 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3716)
!3719 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3713)
!3720 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 221, column: 22, scope: !3659)
!3722 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3721)
!3723 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3721)
!3725 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3724)
!3726 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3724)
!3727 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3721)
!3728 = !DILocation(line: 60, column: 31, scope: !3652, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 225, column: 22, scope: !3659)
!3730 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3729)
!3731 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3729)
!3732 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3729)
!3733 = !DILocation(line: 226, column: 11, scope: !3659)
!3734 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 229, column: 22, scope: !3659)
!3736 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3735)
!3737 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3735)
!3739 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3738)
!3740 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3738)
!3741 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3735)
!3742 = !DILocation(line: 77, column: 50, scope: !3673, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 233, column: 22, scope: !3659)
!3744 = !DILocation(line: 79, column: 16, scope: !3673, inlinedAt: !3743)
!3745 = !DILocation(line: 67, column: 39, scope: !3661, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 81, column: 12, scope: !3673, inlinedAt: !3743)
!3747 = !DILocation(line: 72, column: 6, scope: !3652, inlinedAt: !3746)
!3748 = !DILocation(line: 67, column: 7, scope: !3652, inlinedAt: !3746)
!3749 = !DILocation(line: 81, column: 9, scope: !3673, inlinedAt: !3743)
!3750 = !DILocation(line: 237, column: 16, scope: !3659)
!3751 = !DILocation(line: 238, column: 22, scope: !3659)
!3752 = !DILocation(line: 238, column: 11, scope: !3659)
!3753 = !DILocation(line: 0, scope: !3606)
!3754 = !DILocation(line: 0, scope: !3659)
!3755 = !DILocation(line: 242, column: 10, scope: !3559)
!3756 = !DILocation(line: 243, column: 11, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3559, file: !3540, line: 243, column: 11)
!3758 = !DILocation(line: 244, column: 13, scope: !3757)
!3759 = !DILocation(line: 243, column: 11, scope: !3559)
!3760 = !DILocation(line: 119, column: 13, scope: !3606)
!3761 = !DILocation(line: 247, column: 8, scope: !3539)
!3762 = !DILocation(line: 248, column: 3, scope: !3539)
!3763 = !DILocation(line: 0, scope: !3586)
!3764 = !DILocation(line: 249, column: 1, scope: !3539)
!3765 = distinct !DISubprogram(name: "rpl_calloc", scope: !3766, file: !3766, line: 42, type: !3192, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !419, retainedNodes: !3767)
!3766 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DILocalVariable(name: "n", arg: 1, scope: !3765, file: !3766, line: 42, type: !102)
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3765, file: !3766, line: 42, type: !102)
!3770 = !DILocalVariable(name: "result", scope: !3765, file: !3766, line: 44, type: !15)
!3771 = !DILocalVariable(name: "bytes", scope: !3772, file: !3766, line: 56, type: !102)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3766, line: 53, column: 5)
!3773 = distinct !DILexicalBlock(scope: !3765, file: !3766, line: 47, column: 7)
!3774 = !DILocation(line: 42, column: 20, scope: !3765)
!3775 = !DILocation(line: 42, column: 30, scope: !3765)
!3776 = !DILocation(line: 47, column: 9, scope: !3773)
!3777 = !DILocation(line: 47, column: 19, scope: !3773)
!3778 = !DILocation(line: 47, column: 14, scope: !3773)
!3779 = !DILocation(line: 56, column: 24, scope: !3772)
!3780 = !DILocation(line: 56, column: 14, scope: !3772)
!3781 = !DILocation(line: 57, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3772, file: !3766, line: 57, column: 11)
!3783 = !DILocation(line: 57, column: 21, scope: !3782)
!3784 = !DILocation(line: 57, column: 11, scope: !3772)
!3785 = !DILocation(line: 59, column: 11, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !3766, line: 58, column: 9)
!3787 = !DILocation(line: 59, column: 17, scope: !3786)
!3788 = !DILocation(line: 65, column: 12, scope: !3765)
!3789 = !DILocation(line: 44, column: 9, scope: !3765)
!3790 = !DILocation(line: 72, column: 3, scope: !3765)
!3791 = !DILocation(line: 0, scope: !3786)
!3792 = !DILocation(line: 73, column: 1, scope: !3765)
!3793 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3794, file: !3794, line: 385, type: !3795, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !421, retainedNodes: !3809)
!3794 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!102, !3797, !23, !102, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1442, line: 6, baseType: !3800)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1444, line: 21, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 13, size: 64, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3801, file: !1444, line: 15, baseType: !26, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3801, file: !1444, line: 20, baseType: !3805, size: 32, offset: 32)
!3805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3801, file: !1444, line: 16, size: 32, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3805, file: !1444, line: 18, baseType: !7, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3805, file: !1444, line: 19, baseType: !1453, size: 32)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816}
!3810 = !DILocalVariable(name: "pwc", arg: 1, scope: !3793, file: !3794, line: 385, type: !3797)
!3811 = !DILocalVariable(name: "s", arg: 2, scope: !3793, file: !3794, line: 385, type: !23)
!3812 = !DILocalVariable(name: "n", arg: 3, scope: !3793, file: !3794, line: 385, type: !102)
!3813 = !DILocalVariable(name: "ps", arg: 4, scope: !3793, file: !3794, line: 385, type: !3798)
!3814 = !DILocalVariable(name: "ret", scope: !3793, file: !3794, line: 387, type: !102)
!3815 = !DILocalVariable(name: "wc", scope: !3793, file: !3794, line: 388, type: !1458)
!3816 = !DILocalVariable(name: "uc", scope: !3817, file: !3794, line: 449, type: !1302)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3794, line: 448, column: 5)
!3818 = distinct !DILexicalBlock(scope: !3793, file: !3794, line: 447, column: 7)
!3819 = !DILocation(line: 385, column: 23, scope: !3793)
!3820 = !DILocation(line: 385, column: 40, scope: !3793)
!3821 = !DILocation(line: 385, column: 50, scope: !3793)
!3822 = !DILocation(line: 385, column: 64, scope: !3793)
!3823 = !DILocation(line: 388, column: 3, scope: !3793)
!3824 = !DILocation(line: 404, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3793, file: !3794, line: 404, column: 7)
!3826 = !DILocation(line: 404, column: 7, scope: !3793)
!3827 = !DILocation(line: 439, column: 9, scope: !3793)
!3828 = !DILocation(line: 387, column: 10, scope: !3793)
!3829 = !DILocation(line: 447, column: 19, scope: !3818)
!3830 = !DILocation(line: 447, column: 31, scope: !3818)
!3831 = !DILocation(line: 447, column: 26, scope: !3818)
!3832 = !DILocation(line: 447, column: 41, scope: !3818)
!3833 = !DILocation(line: 447, column: 7, scope: !3793)
!3834 = !DILocation(line: 449, column: 26, scope: !3817)
!3835 = !DILocation(line: 449, column: 21, scope: !3817)
!3836 = !DILocation(line: 450, column: 14, scope: !3817)
!3837 = !DILocation(line: 450, column: 12, scope: !3817)
!3838 = !DILocation(line: 0, scope: !3817)
!3839 = !DILocation(line: 456, column: 1, scope: !3793)
!3840 = distinct !DISubprogram(name: "close_stream", scope: !3841, file: !3841, line: 56, type: !3842, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !424, retainedNodes: !3878)
!3841 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!26, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3000, line: 7, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3002, line: 49, size: 1728, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3846, file: !3002, line: 51, baseType: !26, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3846, file: !3002, line: 54, baseType: !13, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3846, file: !3002, line: 55, baseType: !13, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3846, file: !3002, line: 56, baseType: !13, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3846, file: !3002, line: 57, baseType: !13, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3846, file: !3002, line: 58, baseType: !13, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3846, file: !3002, line: 59, baseType: !13, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3846, file: !3002, line: 60, baseType: !13, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3846, file: !3002, line: 61, baseType: !13, size: 64, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3846, file: !3002, line: 64, baseType: !13, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3846, file: !3002, line: 65, baseType: !13, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3846, file: !3002, line: 66, baseType: !13, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3846, file: !3002, line: 68, baseType: !3017, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3846, file: !3002, line: 70, baseType: !3862, size: 64, offset: 832)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3846, file: !3002, line: 72, baseType: !26, size: 32, offset: 896)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3846, file: !3002, line: 73, baseType: !26, size: 32, offset: 928)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3846, file: !3002, line: 74, baseType: !3024, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3846, file: !3002, line: 77, baseType: !101, size: 16, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3846, file: !3002, line: 78, baseType: !3028, size: 8, offset: 1040)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3846, file: !3002, line: 79, baseType: !3030, size: 8, offset: 1048)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3846, file: !3002, line: 81, baseType: !3034, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3846, file: !3002, line: 89, baseType: !3037, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3846, file: !3002, line: 91, baseType: !3039, size: 64, offset: 1216)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3846, file: !3002, line: 92, baseType: !3042, size: 64, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3846, file: !3002, line: 93, baseType: !3862, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3846, file: !3002, line: 94, baseType: !15, size: 64, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3846, file: !3002, line: 95, baseType: !102, size: 64, offset: 1472)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3846, file: !3002, line: 96, baseType: !26, size: 32, offset: 1536)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3846, file: !3002, line: 98, baseType: !3049, size: 160, offset: 1568)
!3878 = !{!3879, !3880, !3882, !3883}
!3879 = !DILocalVariable(name: "stream", arg: 1, scope: !3840, file: !3841, line: 56, type: !3844)
!3880 = !DILocalVariable(name: "some_pending", scope: !3840, file: !3841, line: 58, type: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!3882 = !DILocalVariable(name: "prev_fail", scope: !3840, file: !3841, line: 59, type: !3881)
!3883 = !DILocalVariable(name: "fclose_fail", scope: !3840, file: !3841, line: 60, type: !3881)
!3884 = !DILocation(line: 56, column: 21, scope: !3840)
!3885 = !DILocation(line: 58, column: 30, scope: !3840)
!3886 = !DILocalVariable(name: "__stream", arg: 1, scope: !3887, file: !3888, line: 135, type: !3844)
!3887 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3888, file: !3888, line: 135, type: !3842, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !424, retainedNodes: !3889)
!3888 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3889 = !{!3886}
!3890 = !DILocation(line: 135, column: 1, scope: !3887, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 59, column: 27, scope: !3840)
!3892 = !DILocation(line: 137, column: 10, scope: !3887, inlinedAt: !3891)
!3893 = !{!3894, !943, i64 0}
!3894 = !{!"_IO_FILE", !943, i64 0, !863, i64 8, !863, i64 16, !863, i64 24, !863, i64 32, !863, i64 40, !863, i64 48, !863, i64 56, !863, i64 64, !863, i64 72, !863, i64 80, !863, i64 88, !863, i64 96, !863, i64 104, !943, i64 112, !943, i64 116, !2324, i64 120, !1698, i64 128, !864, i64 130, !864, i64 131, !863, i64 136, !2324, i64 144, !863, i64 152, !863, i64 160, !863, i64 168, !863, i64 176, !2324, i64 184, !943, i64 192, !864, i64 196}
!3895 = !DILocation(line: 59, column: 43, scope: !3840)
!3896 = !DILocation(line: 60, column: 29, scope: !3840)
!3897 = !DILocation(line: 60, column: 45, scope: !3840)
!3898 = !DILocation(line: 70, column: 17, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 70, column: 7)
!3900 = !DILocation(line: 58, column: 50, scope: !3840)
!3901 = !DILocation(line: 70, column: 33, scope: !3899)
!3902 = !DILocation(line: 70, column: 53, scope: !3899)
!3903 = !DILocation(line: 70, column: 59, scope: !3899)
!3904 = !DILocation(line: 70, column: 7, scope: !3840)
!3905 = !DILocation(line: 72, column: 11, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3899, file: !3841, line: 71, column: 5)
!3907 = !DILocation(line: 73, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !3841, line: 72, column: 11)
!3909 = !DILocation(line: 73, column: 15, scope: !3908)
!3910 = !DILocation(line: 0, scope: !3840)
!3911 = !DILocation(line: 78, column: 1, scope: !3840)
!3912 = distinct !DISubprogram(name: "hard_locale", scope: !3913, file: !3913, line: 38, type: !1053, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !426, retainedNodes: !3914)
!3913 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3914 = !{!3915, !3916, !3917}
!3915 = !DILocalVariable(name: "category", arg: 1, scope: !3912, file: !3913, line: 38, type: !26)
!3916 = !DILocalVariable(name: "hard", scope: !3912, file: !3913, line: 40, type: !46)
!3917 = !DILocalVariable(name: "p", scope: !3912, file: !3913, line: 41, type: !23)
!3918 = !DILocation(line: 38, column: 18, scope: !3912)
!3919 = !DILocation(line: 40, column: 8, scope: !3912)
!3920 = !DILocation(line: 41, column: 19, scope: !3912)
!3921 = !DILocation(line: 41, column: 15, scope: !3912)
!3922 = !DILocation(line: 43, column: 7, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !3913, line: 43, column: 7)
!3924 = !DILocation(line: 43, column: 7, scope: !3912)
!3925 = !DILocation(line: 47, column: 15, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3913, line: 47, column: 15)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !3913, line: 46, column: 9)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3913, line: 45, column: 11)
!3929 = distinct !DILexicalBlock(scope: !3923, file: !3913, line: 44, column: 5)
!3930 = !DILocation(line: 47, column: 31, scope: !3926)
!3931 = !DILocation(line: 47, column: 36, scope: !3926)
!3932 = !DILocation(line: 47, column: 39, scope: !3926)
!3933 = !DILocation(line: 47, column: 59, scope: !3926)
!3934 = !DILocation(line: 47, column: 15, scope: !3927)
!3935 = !DILocation(line: 48, column: 13, scope: !3926)
!3936 = !DILocation(line: 71, column: 3, scope: !3912)
!3937 = distinct !DISubprogram(name: "locale_charset", scope: !3938, file: !3938, line: 687, type: !3939, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !428, retainedNodes: !3941)
!3938 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!23}
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "codeset", scope: !3937, file: !3938, line: 689, type: !23)
!3943 = !DILocation(line: 696, column: 13, scope: !3937)
!3944 = !DILocation(line: 689, column: 15, scope: !3937)
!3945 = !DILocation(line: 754, column: 15, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3937, file: !3938, line: 754, column: 7)
!3947 = !DILocation(line: 754, column: 7, scope: !3937)
!3948 = !DILocation(line: 907, column: 13, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3938, line: 907, column: 13)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !3938, line: 897, column: 7)
!3951 = distinct !DILexicalBlock(scope: !3937, file: !3938, line: 856, column: 3)
!3952 = !DILocation(line: 907, column: 24, scope: !3949)
!3953 = !DILocation(line: 907, column: 13, scope: !3950)
!3954 = !DILocation(line: 995, column: 3, scope: !3937)
!3955 = distinct !DISubprogram(name: "rpl_fclose", scope: !3956, file: !3956, line: 58, type: !3957, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !817, retainedNodes: !3993)
!3956 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!26, !3959}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3000, line: 7, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3002, line: 49, size: 1728, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3961, file: !3002, line: 51, baseType: !26, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3961, file: !3002, line: 54, baseType: !13, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3961, file: !3002, line: 55, baseType: !13, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3961, file: !3002, line: 56, baseType: !13, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3961, file: !3002, line: 57, baseType: !13, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3961, file: !3002, line: 58, baseType: !13, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3961, file: !3002, line: 59, baseType: !13, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3961, file: !3002, line: 60, baseType: !13, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3961, file: !3002, line: 61, baseType: !13, size: 64, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3961, file: !3002, line: 64, baseType: !13, size: 64, offset: 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3961, file: !3002, line: 65, baseType: !13, size: 64, offset: 640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3961, file: !3002, line: 66, baseType: !13, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3961, file: !3002, line: 68, baseType: !3017, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3961, file: !3002, line: 70, baseType: !3977, size: 64, offset: 832)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3961, file: !3002, line: 72, baseType: !26, size: 32, offset: 896)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3961, file: !3002, line: 73, baseType: !26, size: 32, offset: 928)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3961, file: !3002, line: 74, baseType: !3024, size: 64, offset: 960)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3961, file: !3002, line: 77, baseType: !101, size: 16, offset: 1024)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3961, file: !3002, line: 78, baseType: !3028, size: 8, offset: 1040)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3961, file: !3002, line: 79, baseType: !3030, size: 8, offset: 1048)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3961, file: !3002, line: 81, baseType: !3034, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3961, file: !3002, line: 89, baseType: !3037, size: 64, offset: 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3961, file: !3002, line: 91, baseType: !3039, size: 64, offset: 1216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3961, file: !3002, line: 92, baseType: !3042, size: 64, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3961, file: !3002, line: 93, baseType: !3977, size: 64, offset: 1344)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3961, file: !3002, line: 94, baseType: !15, size: 64, offset: 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3961, file: !3002, line: 95, baseType: !102, size: 64, offset: 1472)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3961, file: !3002, line: 96, baseType: !26, size: 32, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3961, file: !3002, line: 98, baseType: !3049, size: 160, offset: 1568)
!3993 = !{!3994, !3995, !3996, !3997}
!3994 = !DILocalVariable(name: "fp", arg: 1, scope: !3955, file: !3956, line: 58, type: !3959)
!3995 = !DILocalVariable(name: "saved_errno", scope: !3955, file: !3956, line: 60, type: !26)
!3996 = !DILocalVariable(name: "fd", scope: !3955, file: !3956, line: 61, type: !26)
!3997 = !DILocalVariable(name: "result", scope: !3955, file: !3956, line: 62, type: !26)
!3998 = !DILocation(line: 58, column: 19, scope: !3955)
!3999 = !DILocation(line: 60, column: 7, scope: !3955)
!4000 = !DILocation(line: 62, column: 7, scope: !3955)
!4001 = !DILocation(line: 65, column: 8, scope: !3955)
!4002 = !DILocation(line: 61, column: 7, scope: !3955)
!4003 = !DILocation(line: 66, column: 10, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 66, column: 7)
!4005 = !DILocation(line: 66, column: 7, scope: !3955)
!4006 = !DILocation(line: 67, column: 12, scope: !4004)
!4007 = !DILocation(line: 67, column: 5, scope: !4004)
!4008 = !DILocation(line: 72, column: 9, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 72, column: 7)
!4010 = !DILocation(line: 72, column: 23, scope: !4009)
!4011 = !DILocation(line: 72, column: 33, scope: !4009)
!4012 = !DILocation(line: 72, column: 26, scope: !4009)
!4013 = !DILocation(line: 72, column: 59, scope: !4009)
!4014 = !DILocation(line: 73, column: 7, scope: !4009)
!4015 = !DILocation(line: 73, column: 10, scope: !4009)
!4016 = !DILocation(line: 72, column: 7, scope: !3955)
!4017 = !DILocation(line: 100, column: 12, scope: !3955)
!4018 = !DILocation(line: 105, column: 7, scope: !3955)
!4019 = !DILocation(line: 74, column: 19, scope: !4009)
!4020 = !DILocation(line: 105, column: 19, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 105, column: 7)
!4022 = !DILocation(line: 107, column: 13, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4021, file: !3956, line: 106, column: 5)
!4024 = !DILocation(line: 109, column: 5, scope: !4023)
!4025 = !DILocation(line: 0, scope: !3955)
!4026 = !DILocation(line: 112, column: 1, scope: !3955)
!4027 = distinct !DISubprogram(name: "rpl_fflush", scope: !4028, file: !4028, line: 129, type: !4029, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !819, retainedNodes: !4065)
!4028 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!26, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3000, line: 7, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3002, line: 49, size: 1728, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4033, file: !3002, line: 51, baseType: !26, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4033, file: !3002, line: 54, baseType: !13, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4033, file: !3002, line: 55, baseType: !13, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4033, file: !3002, line: 56, baseType: !13, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4033, file: !3002, line: 57, baseType: !13, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4033, file: !3002, line: 58, baseType: !13, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4033, file: !3002, line: 59, baseType: !13, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4033, file: !3002, line: 60, baseType: !13, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4033, file: !3002, line: 61, baseType: !13, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4033, file: !3002, line: 64, baseType: !13, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4033, file: !3002, line: 65, baseType: !13, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4033, file: !3002, line: 66, baseType: !13, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4033, file: !3002, line: 68, baseType: !3017, size: 64, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4033, file: !3002, line: 70, baseType: !4049, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4033, file: !3002, line: 72, baseType: !26, size: 32, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4033, file: !3002, line: 73, baseType: !26, size: 32, offset: 928)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4033, file: !3002, line: 74, baseType: !3024, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4033, file: !3002, line: 77, baseType: !101, size: 16, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4033, file: !3002, line: 78, baseType: !3028, size: 8, offset: 1040)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4033, file: !3002, line: 79, baseType: !3030, size: 8, offset: 1048)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4033, file: !3002, line: 81, baseType: !3034, size: 64, offset: 1088)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4033, file: !3002, line: 89, baseType: !3037, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4033, file: !3002, line: 91, baseType: !3039, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4033, file: !3002, line: 92, baseType: !3042, size: 64, offset: 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4033, file: !3002, line: 93, baseType: !4049, size: 64, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4033, file: !3002, line: 94, baseType: !15, size: 64, offset: 1408)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4033, file: !3002, line: 95, baseType: !102, size: 64, offset: 1472)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4033, file: !3002, line: 96, baseType: !26, size: 32, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4033, file: !3002, line: 98, baseType: !3049, size: 160, offset: 1568)
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "stream", arg: 1, scope: !4027, file: !4028, line: 129, type: !4031)
!4067 = !DILocation(line: 129, column: 19, scope: !4027)
!4068 = !DILocation(line: 150, column: 14, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4027, file: !4028, line: 150, column: 7)
!4070 = !DILocation(line: 150, column: 22, scope: !4069)
!4071 = !DILocation(line: 150, column: 27, scope: !4069)
!4072 = !DILocation(line: 150, column: 7, scope: !4027)
!4073 = !DILocation(line: 151, column: 12, scope: !4069)
!4074 = !DILocation(line: 151, column: 5, scope: !4069)
!4075 = !DILocalVariable(name: "fp", arg: 1, scope: !4076, file: !4028, line: 41, type: !4031)
!4076 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4028, file: !4028, line: 41, type: !4077, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !819, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4031}
!4079 = !{!4075}
!4080 = !DILocation(line: 41, column: 48, scope: !4076, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 156, column: 3, scope: !4027)
!4082 = !DILocation(line: 43, column: 11, scope: !4083, inlinedAt: !4081)
!4083 = distinct !DILexicalBlock(scope: !4076, file: !4028, line: 43, column: 7)
!4084 = !DILocation(line: 43, column: 18, scope: !4083, inlinedAt: !4081)
!4085 = !DILocation(line: 43, column: 7, scope: !4076, inlinedAt: !4081)
!4086 = !DILocation(line: 45, column: 5, scope: !4083, inlinedAt: !4081)
!4087 = !DILocation(line: 158, column: 10, scope: !4027)
!4088 = !DILocation(line: 158, column: 3, scope: !4027)
!4089 = !DILocation(line: 0, scope: !4027)
!4090 = !DILocation(line: 232, column: 1, scope: !4027)
!4091 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4092, file: !4092, line: 28, type: !4093, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !821, retainedNodes: !4130)
!4092 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!26, !4095, !4129, !26}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3000, line: 7, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3002, line: 49, size: 1728, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4097, file: !3002, line: 51, baseType: !26, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4097, file: !3002, line: 54, baseType: !13, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4097, file: !3002, line: 55, baseType: !13, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4097, file: !3002, line: 56, baseType: !13, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4097, file: !3002, line: 57, baseType: !13, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4097, file: !3002, line: 58, baseType: !13, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4097, file: !3002, line: 59, baseType: !13, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4097, file: !3002, line: 60, baseType: !13, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4097, file: !3002, line: 61, baseType: !13, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4097, file: !3002, line: 64, baseType: !13, size: 64, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4097, file: !3002, line: 65, baseType: !13, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4097, file: !3002, line: 66, baseType: !13, size: 64, offset: 704)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4097, file: !3002, line: 68, baseType: !3017, size: 64, offset: 768)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4097, file: !3002, line: 70, baseType: !4113, size: 64, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4097, file: !3002, line: 72, baseType: !26, size: 32, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4097, file: !3002, line: 73, baseType: !26, size: 32, offset: 928)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4097, file: !3002, line: 74, baseType: !3024, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4097, file: !3002, line: 77, baseType: !101, size: 16, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4097, file: !3002, line: 78, baseType: !3028, size: 8, offset: 1040)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4097, file: !3002, line: 79, baseType: !3030, size: 8, offset: 1048)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4097, file: !3002, line: 81, baseType: !3034, size: 64, offset: 1088)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4097, file: !3002, line: 89, baseType: !3037, size: 64, offset: 1152)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4097, file: !3002, line: 91, baseType: !3039, size: 64, offset: 1216)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4097, file: !3002, line: 92, baseType: !3042, size: 64, offset: 1280)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4097, file: !3002, line: 93, baseType: !4113, size: 64, offset: 1344)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4097, file: !3002, line: 94, baseType: !15, size: 64, offset: 1408)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4097, file: !3002, line: 95, baseType: !102, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4097, file: !3002, line: 96, baseType: !26, size: 32, offset: 1536)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4097, file: !3002, line: 98, baseType: !3049, size: 160, offset: 1568)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3171, line: 63, baseType: !3024)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "fp", arg: 1, scope: !4091, file: !4092, line: 28, type: !4095)
!4132 = !DILocalVariable(name: "offset", arg: 2, scope: !4091, file: !4092, line: 28, type: !4129)
!4133 = !DILocalVariable(name: "whence", arg: 3, scope: !4091, file: !4092, line: 28, type: !26)
!4134 = !DILocalVariable(name: "pos", scope: !4135, file: !4092, line: 117, type: !4129)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !4092, line: 113, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4091, file: !4092, line: 52, column: 7)
!4137 = !DILocation(line: 28, column: 15, scope: !4091)
!4138 = !DILocation(line: 28, column: 25, scope: !4091)
!4139 = !DILocation(line: 28, column: 37, scope: !4091)
!4140 = !DILocation(line: 52, column: 11, scope: !4136)
!4141 = !{!3894, !863, i64 16}
!4142 = !DILocation(line: 52, column: 31, scope: !4136)
!4143 = !{!3894, !863, i64 8}
!4144 = !DILocation(line: 52, column: 24, scope: !4136)
!4145 = !DILocation(line: 53, column: 7, scope: !4136)
!4146 = !DILocation(line: 53, column: 14, scope: !4136)
!4147 = !{!3894, !863, i64 40}
!4148 = !DILocation(line: 53, column: 35, scope: !4136)
!4149 = !{!3894, !863, i64 32}
!4150 = !DILocation(line: 53, column: 28, scope: !4136)
!4151 = !DILocation(line: 54, column: 7, scope: !4136)
!4152 = !DILocation(line: 54, column: 14, scope: !4136)
!4153 = !{!3894, !863, i64 72}
!4154 = !DILocation(line: 54, column: 28, scope: !4136)
!4155 = !DILocation(line: 52, column: 7, scope: !4091)
!4156 = !DILocation(line: 117, column: 26, scope: !4135)
!4157 = !DILocation(line: 117, column: 19, scope: !4135)
!4158 = !DILocation(line: 117, column: 13, scope: !4135)
!4159 = !DILocation(line: 118, column: 15, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4135, file: !4092, line: 118, column: 11)
!4161 = !DILocation(line: 118, column: 11, scope: !4135)
!4162 = !DILocation(line: 129, column: 11, scope: !4135)
!4163 = !DILocation(line: 129, column: 18, scope: !4135)
!4164 = !DILocation(line: 130, column: 11, scope: !4135)
!4165 = !DILocation(line: 130, column: 19, scope: !4135)
!4166 = !{!3894, !2324, i64 144}
!4167 = !DILocation(line: 161, column: 7, scope: !4135)
!4168 = !DILocation(line: 163, column: 10, scope: !4091)
!4169 = !DILocation(line: 163, column: 3, scope: !4091)
!4170 = !DILocation(line: 0, scope: !4091)
!4171 = !DILocation(line: 164, column: 1, scope: !4091)
