; ModuleID = 'coreutils-8.30/src/pathchk.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Diagnose invalid or unportable file names.\0A\0A  -p                  check for most POSIX systems\0A  -P                  check for empty names and leading \22-\22\0A      --portability   check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"nonportable character %s in file name %s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"limit %lu exceeded by length %lu of file name %s\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"limit %lu exceeded by length %lu of file name component %s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), align 8, !dbg !64
@.str.43 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !70
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !75
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.47 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !79
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !86
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !93
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !124
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !131
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !143
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !150
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !157
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !145
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !159
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !165
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !174
@.str.131 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !630 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !635, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 %0, metadata !634, metadata !DIExpression()), !dbg !658
  %3 = icmp eq i32 %0, 0, !dbg !659
  br i1 %3, label %9, label %4, !dbg !660

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !663
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !661
  %7 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !663
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !661
  br label %57, !dbg !661

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !667
  %11 = load i8*, i8** @program_name, align 8, !dbg !667, !tbaa !663
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !667
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !668
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !663
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !668
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !669
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !663
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !669
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !670
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !663
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !670
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #11, !dbg !671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !654
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !672
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !643, metadata !DIExpression()) #11, !dbg !673
  br label %24, !dbg !674

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !643, metadata !DIExpression()) #11, !dbg !673
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !674
  %28 = icmp eq i32 %27, 0, !dbg !674
  br i1 %28, label %34, label %29, !dbg !675

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !676
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !643, metadata !DIExpression()) #11, !dbg !673
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !677
  %32 = load i8*, i8** %31, align 8, !dbg !677, !tbaa !678
  %33 = icmp eq i8* %32, null, !dbg !680
  br i1 %33, label %34, label %24, !dbg !681, !llvm.loop !682

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !643, metadata !DIExpression()) #11, !dbg !673
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !643, metadata !DIExpression()) #11, !dbg !673
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !685
  %37 = load i8*, i8** %36, align 8, !dbg !685, !tbaa !687
  %38 = icmp eq i8* %37, null, !dbg !688
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !689
  call void @llvm.dbg.value(metadata i8* %39, metadata !642, metadata !DIExpression()) #11, !dbg !690
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !691
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !691
  %42 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !692
  call void @llvm.dbg.value(metadata i8* %42, metadata !650, metadata !DIExpression()) #11, !dbg !693
  %43 = icmp eq i8* %42, null, !dbg !694
  br i1 %43, label %50, label %44, !dbg !696

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !697
  %46 = icmp eq i32 %45, 0, !dbg !697
  br i1 %46, label %50, label %47, !dbg !698

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !699
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !699
  br label %50, !dbg !701

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !702
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !702
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !703
  %54 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !703
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !703
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #11, !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #11, !dbg !704
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !705
  unreachable, !dbg !705
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !706 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !711, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i8** %1, metadata !712, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8 1, metadata !713, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 0, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8 0, metadata !715, metadata !DIExpression()), !dbg !721
  %5 = load i8*, i8** %1, align 8, !dbg !722, !tbaa !663
  tail call void @set_program_name(i8* %5) #11, !dbg !723
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !724
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !725
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !726
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !727
  br label %10, !dbg !728

; <label>:10:                                     ; preds = %17, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %18, %17 ]
  br label %13, !dbg !729

; <label>:13:                                     ; preds = %13, %10
  %14 = phi i8 [ %12, %10 ], [ 1, %13 ], !dbg !730
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %11, metadata !714, metadata !DIExpression()), !dbg !720
  %15 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !729
  call void @llvm.dbg.value(metadata i32 %15, metadata !716, metadata !DIExpression()), !dbg !733
  switch i32 %15, label %23 [
    i32 -1, label %24
    i32 128, label %17
    i32 112, label %16
    i32 80, label %13
    i32 -130, label %19
    i32 -131, label %20
  ], !dbg !728, !llvm.loop !734

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 1, metadata !714, metadata !DIExpression()), !dbg !720
  br label %17, !dbg !736

; <label>:17:                                     ; preds = %13, %16
  %18 = phi i8 [ %14, %16 ], [ 1, %13 ]
  br label %10, !dbg !729, !llvm.loop !734

; <label>:19:                                     ; preds = %13
  tail call void @usage(i32 0) #16, !dbg !737
  unreachable, !dbg !737

; <label>:20:                                     ; preds = %13
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !663
  %22 = load i8*, i8** @Version, align 8, !dbg !738, !tbaa !663
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !738
  tail call void @exit(i32 0) #15, !dbg !738
  unreachable, !dbg !738

; <label>:23:                                     ; preds = %13
  tail call void @usage(i32 1) #16, !dbg !739
  unreachable, !dbg !739

; <label>:24:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %11, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %11, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %11, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8 %11, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8 %14, metadata !715, metadata !DIExpression()), !dbg !721
  %25 = load i32, i32* @optind, align 4, !dbg !740, !tbaa !742
  %26 = icmp eq i32 %25, %0, !dbg !744
  br i1 %26, label %36, label %27, !dbg !745

; <label>:27:                                     ; preds = %24
  %28 = icmp slt i32 %25, %0, !dbg !746
  br i1 %28, label %29, label %177, !dbg !749

; <label>:29:                                     ; preds = %27
  %30 = icmp ne i8 %11, 0
  %31 = icmp ne i8 %14, 0
  %32 = select i1 %30, i64 14, i64 0
  %33 = bitcast %struct.stat* %4 to i8*
  %34 = bitcast i64* %3 to %struct.__mbstate_t*
  %35 = bitcast i64* %3 to i8*
  br label %38, !dbg !749

; <label>:36:                                     ; preds = %24
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !750
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37) #11, !dbg !752
  tail call void @usage(i32 1) #16, !dbg !753
  unreachable, !dbg !753

; <label>:38:                                     ; preds = %29, %168
  %39 = phi i32 [ %25, %29 ], [ %172, %168 ]
  %40 = phi i1 [ true, %29 ], [ %170, %168 ]
  %41 = sext i32 %39 to i64, !dbg !754
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !754
  %43 = load i8*, i8** %42, align 8, !dbg !754, !tbaa !663
  call void @llvm.dbg.value(metadata i8* %43, metadata !755, metadata !DIExpression()) #11, !dbg !843
  call void @llvm.dbg.value(metadata i1 %30, metadata !760, metadata !DIExpression()) #11, !dbg !845
  call void @llvm.dbg.value(metadata i1 %31, metadata !761, metadata !DIExpression()) #11, !dbg !846
  %44 = call i64 @strlen(i8* %43) #14, !dbg !847
  call void @llvm.dbg.value(metadata i64 %44, metadata !762, metadata !DIExpression()) #11, !dbg !848
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  br i1 %31, label %45, label %62, !dbg !850

; <label>:45:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i8* %43, metadata !852, metadata !DIExpression()) #11, !dbg !858
  call void @llvm.dbg.value(metadata i8* %43, metadata !857, metadata !DIExpression()) #11, !dbg !860
  %46 = call i8* @strchr(i8* %43, i32 45) #14, !dbg !861
  call void @llvm.dbg.value(metadata i8* %46, metadata !857, metadata !DIExpression()) #11, !dbg !860
  %47 = icmp eq i8* %46, null, !dbg !864
  br i1 %47, label %62, label %52, !dbg !864

; <label>:48:                                     ; preds = %55
  %49 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !865
  call void @llvm.dbg.value(metadata i8* %49, metadata !857, metadata !DIExpression()) #11, !dbg !860
  call void @llvm.dbg.value(metadata i8* %49, metadata !857, metadata !DIExpression()) #11, !dbg !860
  %50 = call i8* @strchr(i8* nonnull %49, i32 45) #14, !dbg !861
  call void @llvm.dbg.value(metadata i8* %50, metadata !857, metadata !DIExpression()) #11, !dbg !860
  %51 = icmp eq i8* %50, null, !dbg !864
  br i1 %51, label %62, label %52, !dbg !864, !llvm.loop !866

; <label>:52:                                     ; preds = %45, %48
  %53 = phi i8* [ %50, %48 ], [ %46, %45 ]
  %54 = icmp eq i8* %53, %43, !dbg !869
  br i1 %54, label %59, label %55, !dbg !871

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !872
  %57 = load i8, i8* %56, align 1, !dbg !872, !tbaa !873
  %58 = icmp eq i8 %57, 47, !dbg !874
  br i1 %58, label %59, label %48, !dbg !875

; <label>:59:                                     ; preds = %55, %52
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !876
  %61 = call i8* @quotearg_style(i32 4, i8* %43) #11, !dbg !878
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i8* %61) #11, !dbg !879
  br label %168, !dbg !880

; <label>:62:                                     ; preds = %48, %45, %38
  %63 = icmp eq i64 %44, 0, !dbg !881
  br i1 %30, label %66, label %64, !dbg !883

; <label>:64:                                     ; preds = %62
  %65 = and i1 %31, %63, !dbg !884
  br i1 %65, label %67, label %82, !dbg !884

; <label>:66:                                     ; preds = %62
  br i1 %63, label %67, label %69, !dbg !885

; <label>:67:                                     ; preds = %66, %64
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !886
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68) #11, !dbg !888
  br label %168, !dbg !889

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.value(metadata i8* %43, metadata !890, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i64 %44, metadata !895, metadata !DIExpression()) #11, !dbg !916
  %70 = call i64 @strspn(i8* %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !917
  call void @llvm.dbg.value(metadata i64 %70, metadata !896, metadata !DIExpression()) #11, !dbg !918
  %71 = getelementptr inbounds i8, i8* %43, i64 %70, !dbg !919
  call void @llvm.dbg.value(metadata i8* %71, metadata !897, metadata !DIExpression()) #11, !dbg !920
  %72 = load i8, i8* %71, align 1, !dbg !921, !tbaa !873
  %73 = icmp eq i8 %72, 0, !dbg !921
  br i1 %73, label %106, label %74, !dbg !922

; <label>:74:                                     ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #11, !dbg !923
  store i64 0, i64* %3, align 8, !dbg !924
  %75 = sub i64 %44, %70, !dbg !925
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %34, metadata !898, metadata !DIExpression(DW_OP_deref)) #11, !dbg !924
  %76 = call i64 @rpl_mbrlen(i8* %71, i64 %75, %struct.__mbstate_t* nonnull %34) #11, !dbg !926
  call void @llvm.dbg.value(metadata i64 %76, metadata !911, metadata !DIExpression()) #11, !dbg !927
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !928
  %78 = icmp ult i64 %76, 17, !dbg !929
  %79 = select i1 %78, i64 %76, i64 1, !dbg !930
  %80 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %71, i64 %79) #11, !dbg !931
  %81 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %43) #11, !dbg !932
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77, i8* %80, i8* %81) #11, !dbg !933
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #11, !dbg !934
  br label %168, !dbg !935

; <label>:82:                                     ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %33) #11, !dbg !936
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !766, metadata !DIExpression(DW_OP_deref)) #11, !dbg !937
  call void @llvm.dbg.value(metadata i8* %43, metadata !938, metadata !DIExpression()) #11, !dbg !946
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !945, metadata !DIExpression()) #11, !dbg !946
  %83 = call i32 @__lxstat(i32 1, i8* nonnull %43, %struct.stat* nonnull %4) #11, !dbg !949
  %84 = icmp eq i32 %83, 0, !dbg !950
  br i1 %84, label %85, label %86, !dbg !951

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %33) #11, !dbg !952
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  br label %168, !dbg !953

; <label>:86:                                     ; preds = %82
  %87 = tail call i32* @__errno_location() #17, !dbg !954
  %88 = load i32, i32* %87, align 4, !dbg !954, !tbaa !742
  %89 = icmp ne i32 %88, 2, !dbg !956
  %90 = or i1 %63, %89, !dbg !957
  br i1 %90, label %91, label %93, !dbg !957

; <label>:91:                                     ; preds = %86
  %92 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %43) #11, !dbg !958
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %92) #11, !dbg !960
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %33) #11, !dbg !952
  br label %168

; <label>:93:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %33) #11, !dbg !952
  call void @llvm.dbg.value(metadata i8 0, metadata !765, metadata !DIExpression()) #11, !dbg !849
  %94 = icmp ugt i64 %44, 255, !dbg !961
  br i1 %94, label %95, label %114, !dbg !962

; <label>:95:                                     ; preds = %93
  %96 = load i8, i8* %43, align 1, !dbg !963, !tbaa !873
  %97 = icmp eq i8 %96, 47, !dbg !964
  %98 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !963
  call void @llvm.dbg.value(metadata i8* %98, metadata !814, metadata !DIExpression()) #11, !dbg !965
  store i32 0, i32* %87, align 4, !dbg !966, !tbaa !742
  %99 = call i64 @pathconf(i8* %98, i32 4) #11, !dbg !967
  call void @llvm.dbg.value(metadata i64 %99, metadata !811, metadata !DIExpression()) #11, !dbg !968
  %100 = icmp slt i64 %99, 0, !dbg !969
  br i1 %100, label %101, label %106, !dbg !971

; <label>:101:                                    ; preds = %95
  %102 = load i32, i32* %87, align 4, !dbg !972, !tbaa !742
  %103 = icmp eq i32 %102, 0, !dbg !973
  br i1 %103, label %106, label %104, !dbg !974

; <label>:104:                                    ; preds = %101
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !975
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %102, i8* %105, i8* %98) #11, !dbg !977
  call void @llvm.dbg.value(metadata i64 %99, metadata !808, metadata !DIExpression()) #11, !dbg !978
  br label %168

; <label>:106:                                    ; preds = %101, %95, %69
  %107 = phi i64 [ 256, %69 ], [ %99, %101 ], [ %99, %95 ]
  call void @llvm.dbg.value(metadata i64 %107, metadata !808, metadata !DIExpression()) #11, !dbg !978
  %108 = icmp ugt i64 %107, %44, !dbg !979
  br i1 %108, label %113, label %109, !dbg !980

; <label>:109:                                    ; preds = %106
  call void @llvm.dbg.value(metadata i64 %44, metadata !815, metadata !DIExpression()) #11, !dbg !981
  %110 = add i64 %107, -1, !dbg !982
  call void @llvm.dbg.value(metadata i64 %110, metadata !818, metadata !DIExpression()) #11, !dbg !983
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !984
  %112 = call i8* @quotearg_style(i32 4, i8* nonnull %43) #11, !dbg !985
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111, i64 %110, i64 %44, i8* %112) #11, !dbg !986
  br label %168

; <label>:113:                                    ; preds = %106
  br i1 %30, label %130, label %114, !dbg !987

; <label>:114:                                    ; preds = %93, %113
  br label %115, !dbg !988

; <label>:115:                                    ; preds = %119, %114
  %116 = phi i8* [ %43, %114 ], [ %120, %119 ]
  call void @llvm.dbg.value(metadata i8* %116, metadata !993, metadata !DIExpression()) #11, !dbg !995
  %117 = load i8, i8* %116, align 1, !dbg !988, !tbaa !873
  %118 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %118, metadata !993, metadata !DIExpression()) #11, !dbg !995
  switch i8 %117, label %121 [
    i8 47, label %119
    i8 0, label %168
  ], !dbg !997

; <label>:119:                                    ; preds = %115, %127
  %120 = phi i8* [ %118, %115 ], [ %128, %127 ]
  br label %115, !dbg !995, !llvm.loop !998

; <label>:121:                                    ; preds = %115, %125
  %122 = phi i64 [ %126, %125 ], [ 1, %115 ], !dbg !1001
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  %123 = getelementptr inbounds i8, i8* %116, i64 %122, !dbg !1012
  %124 = load i8, i8* %123, align 1, !dbg !1012, !tbaa !873
  switch i8 %124, label %125 [
    i8 47, label %127
    i8 0, label %127
  ], !dbg !1013

; <label>:125:                                    ; preds = %121
  %126 = add i64 %122, 1, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %126, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  br label %121, !dbg !1015, !llvm.loop !1016

; <label>:127:                                    ; preds = %121, %121
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  %128 = getelementptr inbounds i8, i8* %116, i64 %122, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !1009, metadata !DIExpression()) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %122, metadata !819, metadata !DIExpression()) #11, !dbg !1019
  %129 = icmp ugt i64 %122, 14, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %123, metadata !763, metadata !DIExpression()) #11, !dbg !1022
  br i1 %129, label %130, label %119

; <label>:130:                                    ; preds = %127, %113
  br label %131, !dbg !1023

; <label>:131:                                    ; preds = %130, %162
  %132 = phi i64 [ %154, %162 ], [ %32, %130 ], !dbg !1025
  %133 = phi i64 [ %155, %162 ], [ 14, %130 ], !dbg !1026
  %134 = phi i8* [ %163, %162 ], [ %43, %130 ], !dbg !1027
  call void @llvm.dbg.value(metadata i8* %134, metadata !763, metadata !DIExpression()) #11, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %133, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %132, metadata !828, metadata !DIExpression()) #11, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %134, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  br label %135, !dbg !1023

; <label>:135:                                    ; preds = %135, %131
  %136 = phi i8* [ %134, %131 ], [ %138, %135 ]
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  %137 = load i8, i8* %136, align 1, !dbg !1030, !tbaa !873
  %138 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %138, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  switch i8 %137, label %139 [
    i8 47, label %135
    i8 0, label %168
  ], !dbg !1023

; <label>:139:                                    ; preds = %135
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  %140 = icmp eq i64 %132, 0, !dbg !1032
  br i1 %140, label %141, label %153, !dbg !1033

; <label>:141:                                    ; preds = %139
  %142 = icmp eq i8* %136, %43, !dbg !1034
  %143 = select i1 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %43, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %143, metadata !836, metadata !DIExpression()) #11, !dbg !1036
  call void @llvm.dbg.value(metadata i8 %137, metadata !837, metadata !DIExpression()) #11, !dbg !1037
  %144 = tail call i32* @__errno_location() #17, !dbg !1038
  store i32 0, i32* %144, align 4, !dbg !1039, !tbaa !742
  store i8 0, i8* %136, align 1, !dbg !1040, !tbaa !873
  %145 = call i64 @pathconf(i8* %143, i32 3) #11, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %145, metadata !833, metadata !DIExpression()) #11, !dbg !1042
  store i8 %137, i8* %136, align 1, !dbg !1043, !tbaa !873
  %146 = icmp sgt i64 %145, -1, !dbg !1044
  br i1 %146, label %153, label %147, !dbg !1046

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %144, align 4, !dbg !1047, !tbaa !742
  switch i32 %148, label %150 [
    i32 0, label %153
    i32 2, label %149
  ], !dbg !1048

; <label>:149:                                    ; preds = %147
  call void @llvm.dbg.value(metadata i64 %133, metadata !828, metadata !DIExpression()) #11, !dbg !1025
  br label %153, !dbg !1049

; <label>:150:                                    ; preds = %147
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  store i8 0, i8* %136, align 1, !dbg !1051, !tbaa !873
  %151 = load i32, i32* %144, align 4, !dbg !1052, !tbaa !742
  %152 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %143) #11, !dbg !1053
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %152) #11, !dbg !1054
  store i8 %137, i8* %136, align 1, !dbg !1055, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %133, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %132, metadata !828, metadata !DIExpression()) #11, !dbg !1025
  br label %168

; <label>:153:                                    ; preds = %149, %147, %141, %139
  %154 = phi i64 [ %132, %139 ], [ 0, %147 ], [ 0, %141 ], [ %133, %149 ], !dbg !1025
  %155 = phi i64 [ %132, %139 ], [ -1, %147 ], [ %145, %141 ], [ %133, %149 ], !dbg !1056
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %154, metadata !828, metadata !DIExpression()) #11, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %136, metadata !1008, metadata !DIExpression()) #11, !dbg !1057
  call void @llvm.dbg.value(metadata i64 1, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  br label %156, !dbg !1060

; <label>:156:                                    ; preds = %160, %153
  %157 = phi i64 [ 1, %153 ], [ %161, %160 ], !dbg !1061
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  %158 = getelementptr inbounds i8, i8* %136, i64 %157, !dbg !1062
  %159 = load i8, i8* %158, align 1, !dbg !1062, !tbaa !873
  switch i8 %159, label %160 [
    i8 47, label %162
    i8 0, label %162
  ], !dbg !1063

; <label>:160:                                    ; preds = %156
  %161 = add i64 %157, 1, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %161, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  br label %156, !dbg !1065, !llvm.loop !1016

; <label>:162:                                    ; preds = %156, %156
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  %163 = getelementptr inbounds i8, i8* %136, i64 %157, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %157, metadata !829, metadata !DIExpression()) #11, !dbg !1066
  %164 = icmp ult i64 %155, %157, !dbg !1067
  br i1 %164, label %165, label %131, !dbg !1068

; <label>:165:                                    ; preds = %162
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %155, metadata !825, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %157, metadata !1009, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %136, metadata !993, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %157, metadata !838, metadata !DIExpression()) #11, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %155, metadata !841, metadata !DIExpression()) #11, !dbg !1070
  call void @llvm.dbg.value(metadata i8 %159, metadata !842, metadata !DIExpression()) #11, !dbg !1071
  store i8 0, i8* %163, align 1, !dbg !1072, !tbaa !873
  %166 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1073
  %167 = call i8* @quote(i8* nonnull %136) #11, !dbg !1074
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %166, i64 %155, i64 %157, i8* %167) #11, !dbg !1075
  store i8 %159, i8* %163, align 1, !dbg !1076, !tbaa !873
  br label %168

; <label>:168:                                    ; preds = %115, %135, %59, %67, %74, %85, %91, %104, %109, %150, %165
  %169 = phi i1 [ false, %67 ], [ false, %91 ], [ false, %59 ], [ false, %74 ], [ false, %165 ], [ false, %150 ], [ true, %85 ], [ false, %109 ], [ false, %104 ], [ true, %135 ], [ true, %115 ]
  %170 = and i1 %40, %169, !dbg !1077
  %171 = load i32, i32* @optind, align 4, !dbg !1078, !tbaa !742
  %172 = add nsw i32 %171, 1, !dbg !1078
  store i32 %172, i32* @optind, align 4, !dbg !1078, !tbaa !742
  %173 = icmp slt i32 %172, %0, !dbg !746
  br i1 %173, label %38, label %174, !dbg !749, !llvm.loop !1079

; <label>:174:                                    ; preds = %168
  %175 = xor i1 %170, true, !dbg !1081
  %176 = zext i1 %175 to i32, !dbg !1081
  br label %177, !dbg !1081

; <label>:177:                                    ; preds = %174, %27
  %178 = phi i32 [ 0, %27 ], [ %176, %174 ]
  ret i32 %178, !dbg !1082
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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1085, metadata !DIExpression()), !dbg !1086
  store i8* %0, i8** @file_name, align 8, !dbg !1087, !tbaa !663
  ret void, !dbg !1088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1089 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1093, metadata !DIExpression()), !dbg !1094
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1095, !tbaa !1096
  ret void, !dbg !1098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1099 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1106, !tbaa !663
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1107
  %3 = icmp eq i32 %2, 0, !dbg !1108
  br i1 %3, label %22, label %4, !dbg !1109

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1110, !tbaa !1096, !range !1111
  %6 = icmp eq i8 %5, 0, !dbg !1110
  br i1 %6, label %11, label %7, !dbg !1112

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1113
  %9 = load i32, i32* %8, align 4, !dbg !1113, !tbaa !742
  %10 = icmp eq i32 %9, 32, !dbg !1114
  br i1 %10, label %22, label %11, !dbg !1115

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %12, metadata !1103, metadata !DIExpression()), !dbg !1117
  %13 = load i8*, i8** @file_name, align 8, !dbg !1118, !tbaa !663
  %14 = icmp eq i8* %13, null, !dbg !1118
  %15 = tail call i32* @__errno_location() #17, !dbg !1120
  %16 = load i32, i32* %15, align 4, !dbg !1120, !tbaa !742
  br i1 %14, label %19, label %17, !dbg !1121

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1122
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.47, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1123
  br label %20, !dbg !1123

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.48, i64 0, i64 0), i8* %12) #11, !dbg !1124
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1125, !tbaa !742
  tail call void @_exit(i32 %21) #15, !dbg !1126
  unreachable, !dbg !1126

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1127, !tbaa !663
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1129
  %25 = icmp eq i32 %24, 0, !dbg !1130
  br i1 %25, label %28, label %26, !dbg !1131

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1132, !tbaa !742
  tail call void @_exit(i32 %27) #15, !dbg !1133
  unreachable, !dbg !1133

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1134
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1137, metadata !DIExpression()), !dbg !1140
  %2 = icmp eq i8* %0, null, !dbg !1141
  br i1 %2, label %3, label %6, !dbg !1143

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1144, !tbaa !663
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1146
  tail call void @abort() #15, !dbg !1147
  unreachable, !dbg !1147

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %7, metadata !1138, metadata !DIExpression()), !dbg !1149
  %8 = icmp eq i8* %7, null, !dbg !1150
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1151
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1152
  call void @llvm.dbg.value(metadata i8* %10, metadata !1139, metadata !DIExpression()), !dbg !1153
  %11 = ptrtoint i8* %10 to i64, !dbg !1154
  %12 = ptrtoint i8* %0 to i64, !dbg !1154
  %13 = sub i64 %11, %12, !dbg !1154
  %14 = icmp sgt i64 %13, 6, !dbg !1156
  br i1 %14, label %15, label %24, !dbg !1157

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1158
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #14, !dbg !1159
  %18 = icmp eq i32 %17, 0, !dbg !1160
  br i1 %18, label %19, label %24, !dbg !1161

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1137, metadata !DIExpression()), !dbg !1140
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #14, !dbg !1162
  %21 = icmp eq i32 %20, 0, !dbg !1165
  br i1 %21, label %22, label %24, !dbg !1166

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %23, metadata !1137, metadata !DIExpression()), !dbg !1140
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1169, !tbaa !663
  br label %24, !dbg !1170

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1137, metadata !DIExpression()), !dbg !1140
  store i8* %25, i8** @program_name, align 8, !dbg !1171, !tbaa !663
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1172, !tbaa !663
  ret void, !dbg !1173
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1174 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1179, metadata !DIExpression()), !dbg !1182
  %2 = tail call i32* @__errno_location() #17, !dbg !1183
  %3 = load i32, i32* %2, align 4, !dbg !1183, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %3, metadata !1180, metadata !DIExpression()), !dbg !1184
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1185
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1185
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1185
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1186
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1181, metadata !DIExpression()), !dbg !1187
  store i32 %3, i32* %2, align 4, !dbg !1188, !tbaa !742
  ret %struct.quoting_options* %8, !dbg !1189
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1190 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1196, metadata !DIExpression()), !dbg !1197
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1198
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1198
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1199
  %5 = load i32, i32* %4, align 8, !dbg !1199, !tbaa !1200
  ret i32 %5, !dbg !1202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1203 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1207, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %1, metadata !1208, metadata !DIExpression()), !dbg !1210
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1211
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1211
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1212
  store i32 %1, i32* %5, align 8, !dbg !1213, !tbaa !1200
  ret void, !dbg !1214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1215 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1219, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8 %1, metadata !1220, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 %2, metadata !1221, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %1, metadata !1222, metadata !DIExpression()), !dbg !1231
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1232
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1232
  %6 = lshr i8 %1, 5, !dbg !1233
  %7 = zext i8 %6 to i64, !dbg !1233
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1234
  call void @llvm.dbg.value(metadata i32* %8, metadata !1224, metadata !DIExpression()), !dbg !1235
  %9 = and i8 %1, 31, !dbg !1236
  %10 = zext i8 %9 to i32, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %10, metadata !1226, metadata !DIExpression()), !dbg !1237
  %11 = load i32, i32* %8, align 4, !dbg !1238, !tbaa !742
  %12 = lshr i32 %11, %10, !dbg !1239
  %13 = and i32 %12, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %13, metadata !1227, metadata !DIExpression()), !dbg !1241
  %14 = and i32 %2, 1, !dbg !1242
  %15 = xor i32 %13, %14, !dbg !1243
  %16 = shl i32 %15, %10, !dbg !1244
  %17 = xor i32 %16, %11, !dbg !1245
  store i32 %17, i32* %8, align 4, !dbg !1245, !tbaa !742
  ret i32 %13, !dbg !1246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1247 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1251, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %1, metadata !1252, metadata !DIExpression()), !dbg !1255
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1256
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1251, metadata !DIExpression()), !dbg !1254
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1259
  %6 = load i32, i32* %5, align 4, !dbg !1259, !tbaa !1260
  call void @llvm.dbg.value(metadata i32 %6, metadata !1253, metadata !DIExpression()), !dbg !1261
  store i32 %1, i32* %5, align 4, !dbg !1262, !tbaa !1260
  ret i32 %6, !dbg !1263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1264 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1268, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %1, metadata !1269, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %2, metadata !1270, metadata !DIExpression()), !dbg !1273
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1274
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1268, metadata !DIExpression()), !dbg !1271
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1277
  store i32 10, i32* %6, align 8, !dbg !1278, !tbaa !1200
  %7 = icmp ne i8* %1, null, !dbg !1279
  %8 = icmp ne i8* %2, null, !dbg !1281
  %9 = and i1 %7, %8, !dbg !1282
  br i1 %9, label %11, label %10, !dbg !1282

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1283
  unreachable, !dbg !1283

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1284
  store i8* %1, i8** %12, align 8, !dbg !1285, !tbaa !1286
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1287
  store i8* %2, i8** %13, align 8, !dbg !1288, !tbaa !1289
  ret void, !dbg !1290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1291 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1295, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %1, metadata !1296, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %2, metadata !1297, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %3, metadata !1298, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1299, metadata !DIExpression()), !dbg !1307
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1308
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1300, metadata !DIExpression()), !dbg !1309
  %8 = tail call i32* @__errno_location() #17, !dbg !1310
  %9 = load i32, i32* %8, align 4, !dbg !1310, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %9, metadata !1301, metadata !DIExpression()), !dbg !1311
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1312
  %11 = load i32, i32* %10, align 8, !dbg !1312, !tbaa !1200
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1313
  %13 = load i32, i32* %12, align 4, !dbg !1313, !tbaa !1260
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1314
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1315
  %16 = load i8*, i8** %15, align 8, !dbg !1315, !tbaa !1286
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1316
  %18 = load i8*, i8** %17, align 8, !dbg !1316, !tbaa !1289
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %19, metadata !1302, metadata !DIExpression()), !dbg !1318
  store i32 %9, i32* %8, align 4, !dbg !1319, !tbaa !742
  ret i64 %19, !dbg !1320
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1321 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1327, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %1, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %3, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %4, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %5, metadata !1332, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32* %6, metadata !1333, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %7, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %8, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8* null, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1341, metadata !DIExpression()), !dbg !1399
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1400
  %14 = icmp eq i64 %13, 1, !dbg !1401
  %15 = lshr i32 %5, 1, !dbg !1402
  %16 = trunc i32 %15 to i8, !dbg !1402
  %17 = and i8 %16, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %17, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 1, metadata !1346, metadata !DIExpression()), !dbg !1405
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1406

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1396
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1397
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1398
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1399
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1407
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1403
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1404
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1405
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %39, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %38, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %37, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %36, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %35, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %34, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %33, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %32, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %31, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %30, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %29, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %28, metadata !1331, metadata !DIExpression()), !dbg !1390
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
  ], !dbg !1409

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i8 1, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %36, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1390
  br label %93, !dbg !1410

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1390
  %43 = and i8 %36, 1, !dbg !1411
  %44 = icmp eq i8 %43, 0, !dbg !1411
  br i1 %44, label %45, label %93, !dbg !1410

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1413
  br i1 %46, label %93, label %47, !dbg !1416

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1413, !tbaa !873
  br label %93, !dbg !1413

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %49, metadata !1334, metadata !DIExpression()), !dbg !1393
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %50, metadata !1335, metadata !DIExpression()), !dbg !1394
  br label %51, !dbg !1422

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %52, metadata !1334, metadata !DIExpression()), !dbg !1393
  %54 = and i8 %36, 1, !dbg !1423
  %55 = icmp eq i8 %54, 0, !dbg !1423
  br i1 %55, label %56, label %71, !dbg !1425

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1395
  %57 = load i8, i8* %52, align 1, !dbg !1426, !tbaa !873
  %58 = icmp eq i8 %57, 0, !dbg !1429
  br i1 %58, label %71, label %59, !dbg !1429

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %62, metadata !1337, metadata !DIExpression()), !dbg !1395
  %63 = icmp ult i64 %62, %40, !dbg !1430
  br i1 %63, label %64, label %66, !dbg !1433

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1430
  store i8 %60, i8* %65, align 1, !dbg !1430, !tbaa !873
  br label %66, !dbg !1430

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1433
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %68, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %67, metadata !1337, metadata !DIExpression()), !dbg !1395
  %69 = load i8, i8* %68, align 1, !dbg !1426, !tbaa !873
  %70 = icmp eq i8 %69, 0, !dbg !1429
  br i1 %70, label %71, label %59, !dbg !1429, !llvm.loop !1435

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1395
  call void @llvm.dbg.value(metadata i64 %72, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %53, metadata !1339, metadata !DIExpression()), !dbg !1397
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %73, metadata !1340, metadata !DIExpression()), !dbg !1398
  br label %93, !dbg !1438

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1399
  br label %75, !dbg !1439

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1407
  call void @llvm.dbg.value(metadata i8 %76, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 1, metadata !1343, metadata !DIExpression()), !dbg !1402
  br label %77, !dbg !1440

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1399
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1407
  call void @llvm.dbg.value(metadata i8 %79, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %78, metadata !1341, metadata !DIExpression()), !dbg !1399
  %80 = and i8 %79, 1, !dbg !1441
  %81 = icmp eq i8 %80, 0, !dbg !1441
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1443
  br label %83, !dbg !1443

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1444
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1402
  call void @llvm.dbg.value(metadata i8 %85, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %84, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  %86 = and i8 %85, 1, !dbg !1445
  %87 = icmp eq i8 %86, 0, !dbg !1445
  br i1 %87, label %88, label %93, !dbg !1447

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1448
  br i1 %89, label %93, label %90, !dbg !1451

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1448, !tbaa !873
  br label %93, !dbg !1448

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1343, metadata !DIExpression()), !dbg !1402
  br label %93, !dbg !1452

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1453
  unreachable, !dbg !1453

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1395
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], !dbg !1407
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1407
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1407
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %101, metadata !1343, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %99, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %97, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 0, metadata !1336, metadata !DIExpression()), !dbg !1455
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
  br label %121, !dbg !1456

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1457
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1395
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1396
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1403
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1404
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1405
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %125, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %122, metadata !1336, metadata !DIExpression()), !dbg !1455
  %130 = icmp eq i64 %125, -1, !dbg !1458
  br i1 %130, label %131, label %135, !dbg !1459

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1460
  %133 = load i8, i8* %132, align 1, !dbg !1460, !tbaa !873
  %134 = icmp eq i8 %133, 0, !dbg !1461
  br i1 %134, label %617, label %137, !dbg !1462

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1463
  br i1 %136, label %617, label %137, !dbg !1462

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1352, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1466
  br i1 %107, label %138, label %153, !dbg !1467

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1469
  %140 = and i1 %108, %130, !dbg !1470
  br i1 %140, label %141, label %143, !dbg !1470

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %142, metadata !1330, metadata !DIExpression()), !dbg !1389
  br label %143, !dbg !1472

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1330, metadata !DIExpression()), !dbg !1389
  %145 = icmp ugt i64 %139, %144, !dbg !1473
  br i1 %145, label %153, label %146, !dbg !1474

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1475
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1476
  %149 = icmp ne i32 %148, 0, !dbg !1477
  %150 = or i1 %149, %110, !dbg !1478
  %151 = xor i1 %149, true, !dbg !1478
  %152 = zext i1 %151 to i8, !dbg !1478
  br i1 %150, label %153, label %661, !dbg !1478

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %155, metadata !1352, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %154, metadata !1330, metadata !DIExpression()), !dbg !1389
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1480
  %157 = load i8, i8* %156, align 1, !dbg !1480, !tbaa !873
  call void @llvm.dbg.value(metadata i8 %157, metadata !1347, metadata !DIExpression()), !dbg !1481
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
  ], !dbg !1482

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1483

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1484

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1465
  %161 = and i8 %126, 1, !dbg !1488
  %162 = icmp eq i8 %161, 0, !dbg !1488
  %163 = and i1 %114, %162, !dbg !1488
  br i1 %163, label %164, label %180, !dbg !1488

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1490
  br i1 %165, label %166, label %168, !dbg !1494

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1490
  store i8 39, i8* %167, align 1, !dbg !1490, !tbaa !873
  br label %168, !dbg !1490

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %169, metadata !1337, metadata !DIExpression()), !dbg !1395
  %170 = icmp ult i64 %169, %129, !dbg !1495
  br i1 %170, label %171, label %173, !dbg !1498

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1495
  store i8 36, i8* %172, align 1, !dbg !1495, !tbaa !873
  br label %173, !dbg !1495

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %174, metadata !1337, metadata !DIExpression()), !dbg !1395
  %175 = icmp ult i64 %174, %129, !dbg !1499
  br i1 %175, label %176, label %178, !dbg !1502

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1499
  store i8 39, i8* %177, align 1, !dbg !1499, !tbaa !873
  br label %178, !dbg !1499

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %179, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %180, !dbg !1503

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1454
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %182, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %181, metadata !1337, metadata !DIExpression()), !dbg !1395
  %183 = icmp ult i64 %181, %129, !dbg !1504
  br i1 %183, label %184, label %186, !dbg !1507

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1504
  store i8 92, i8* %185, align 1, !dbg !1504, !tbaa !873
  br label %186, !dbg !1504

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %187, metadata !1337, metadata !DIExpression()), !dbg !1395
  br i1 %104, label %188, label %478, !dbg !1508

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1510
  %190 = icmp ult i64 %189, %154, !dbg !1511
  br i1 %190, label %191, label %467, !dbg !1512

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1513
  %193 = load i8, i8* %192, align 1, !dbg !1513, !tbaa !873
  %194 = add i8 %193, -48, !dbg !1514
  %195 = icmp ult i8 %194, 10, !dbg !1514
  br i1 %195, label %196, label %467, !dbg !1514

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1515
  br i1 %197, label %198, label %200, !dbg !1519

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1515
  store i8 48, i8* %199, align 1, !dbg !1515, !tbaa !873
  br label %200, !dbg !1515

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %201, metadata !1337, metadata !DIExpression()), !dbg !1395
  %202 = icmp ult i64 %201, %129, !dbg !1520
  br i1 %202, label %203, label %205, !dbg !1523

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1520
  store i8 48, i8* %204, align 1, !dbg !1520, !tbaa !873
  br label %205, !dbg !1520

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %206, metadata !1337, metadata !DIExpression()), !dbg !1395
  br label %467, !dbg !1524

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1525

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1526

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1527

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1529

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1531
  %213 = icmp ult i64 %212, %154, !dbg !1532
  br i1 %213, label %214, label %467, !dbg !1533

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1534
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1535
  %217 = load i8, i8* %216, align 1, !dbg !1535, !tbaa !873
  %218 = icmp eq i8 %217, 63, !dbg !1536
  br i1 %218, label %219, label %467, !dbg !1537

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1538
  %221 = load i8, i8* %220, align 1, !dbg !1538, !tbaa !873
  %222 = sext i8 %221 to i32, !dbg !1538
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
  ], !dbg !1539

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1540

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %212, metadata !1336, metadata !DIExpression()), !dbg !1455
  %225 = icmp ult i64 %123, %129, !dbg !1542
  br i1 %225, label %226, label %228, !dbg !1545

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1542
  store i8 63, i8* %227, align 1, !dbg !1542, !tbaa !873
  br label %228, !dbg !1542

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %229, metadata !1337, metadata !DIExpression()), !dbg !1395
  %230 = icmp ult i64 %229, %129, !dbg !1546
  br i1 %230, label %231, label %233, !dbg !1549

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1546
  store i8 34, i8* %232, align 1, !dbg !1546, !tbaa !873
  br label %233, !dbg !1546

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %234, metadata !1337, metadata !DIExpression()), !dbg !1395
  %235 = icmp ult i64 %234, %129, !dbg !1550
  br i1 %235, label %236, label %238, !dbg !1553

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1550
  store i8 34, i8* %237, align 1, !dbg !1550, !tbaa !873
  br label %238, !dbg !1550

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %239, metadata !1337, metadata !DIExpression()), !dbg !1395
  %240 = icmp ult i64 %239, %129, !dbg !1554
  br i1 %240, label %241, label %243, !dbg !1557

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1554
  store i8 63, i8* %242, align 1, !dbg !1554, !tbaa !873
  br label %243, !dbg !1554

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %244, metadata !1337, metadata !DIExpression()), !dbg !1395
  br label %467, !dbg !1558

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1351, metadata !DIExpression()), !dbg !1559
  br label %255, !dbg !1560

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1351, metadata !DIExpression()), !dbg !1559
  br label %255, !dbg !1561

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1351, metadata !DIExpression()), !dbg !1559
  br label %253, !dbg !1562

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1351, metadata !DIExpression()), !dbg !1559
  br label %253, !dbg !1563

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1351, metadata !DIExpression()), !dbg !1559
  br label %255, !dbg !1564

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1351, metadata !DIExpression()), !dbg !1559
  br i1 %114, label %251, label %252, !dbg !1565

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1566

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1569

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1571
  call void @llvm.dbg.value(metadata i8 %254, metadata !1351, metadata !DIExpression()), !dbg !1559
  br i1 %113, label %255, label %661, !dbg !1572

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1571
  call void @llvm.dbg.value(metadata i8 %256, metadata !1351, metadata !DIExpression()), !dbg !1559
  br i1 %103, label %524, label %478, !dbg !1574

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1575
  br i1 %258, label %259, label %264, !dbg !1577

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1578, !tbaa !873
  %261 = icmp ne i8 %260, 0, !dbg !1579
  %262 = icmp ne i64 %122, 0, !dbg !1580
  %263 = or i1 %262, %261, !dbg !1582
  br i1 %263, label %467, label %270, !dbg !1582

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1583
  %266 = icmp ne i64 %122, 0, !dbg !1580
  %267 = or i1 %266, %265, !dbg !1577
  br i1 %267, label %467, label %270, !dbg !1577

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1580
  br i1 %269, label %270, label %467, !dbg !1584

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1466
  br label %271, !dbg !1585

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1571
  call void @llvm.dbg.value(metadata i8 %272, metadata !1354, metadata !DIExpression()), !dbg !1466
  br i1 %113, label %467, label %661, !dbg !1586

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1466
  br i1 %114, label %274, label %467, !dbg !1588

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1589

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1592
  %277 = icmp ne i64 %124, 0, !dbg !1594
  %278 = or i1 %277, %276, !dbg !1595
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1595
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %280, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %279, metadata !1338, metadata !DIExpression()), !dbg !1396
  %281 = icmp ult i64 %123, %280, !dbg !1596
  br i1 %281, label %282, label %284, !dbg !1599

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1596
  store i8 39, i8* %283, align 1, !dbg !1596, !tbaa !873
  br label %284, !dbg !1596

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %285, metadata !1337, metadata !DIExpression()), !dbg !1395
  %286 = icmp ult i64 %285, %280, !dbg !1600
  br i1 %286, label %287, label %289, !dbg !1603

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1600
  store i8 92, i8* %288, align 1, !dbg !1600, !tbaa !873
  br label %289, !dbg !1600

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %290, metadata !1337, metadata !DIExpression()), !dbg !1395
  %291 = icmp ult i64 %290, %280, !dbg !1604
  br i1 %291, label %292, label %294, !dbg !1607

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1604
  store i8 39, i8* %293, align 1, !dbg !1604, !tbaa !873
  br label %294, !dbg !1604

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %295, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %467, !dbg !1608

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1609

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1610
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1611
  %299 = load i16*, i16** %298, align 8, !dbg !1611, !tbaa !663
  %300 = zext i8 %157 to i64, !dbg !1611
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1611
  %302 = load i16, i16* %301, align 2, !dbg !1611, !tbaa !1613
  %303 = lshr i16 %302, 14, !dbg !1615
  %304 = trunc i16 %303 to i8, !dbg !1615
  %305 = and i8 %304, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i8 %305, metadata !1358, metadata !DIExpression()), !dbg !1616
  br label %359, !dbg !1617

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1618
  store i64 0, i64* %10, align 8, !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 1, metadata !1358, metadata !DIExpression()), !dbg !1616
  %307 = icmp eq i64 %154, -1, !dbg !1620
  br i1 %307, label %308, label %310, !dbg !1622

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %309, metadata !1330, metadata !DIExpression()), !dbg !1389
  br label %310, !dbg !1624

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1625
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  br label %312, !dbg !1626

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1627
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1628
  call void @llvm.dbg.value(metadata i8 %314, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1629
  %315 = add i64 %313, %122, !dbg !1630
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1631
  %317 = sub i64 %311, %315, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1359, metadata !DIExpression(DW_OP_deref)), !dbg !1633
  call void @llvm.dbg.value(metadata i32* %12, metadata !1372, metadata !DIExpression(DW_OP_deref)), !dbg !1634
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %318, metadata !1375, metadata !DIExpression()), !dbg !1636
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1637

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  %320 = icmp ugt i64 %311, %315, !dbg !1638
  br i1 %320, label %321, label %344, !dbg !1640

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1355, metadata !DIExpression()), !dbg !1610
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1641
  %325 = load i8, i8* %324, align 1, !dbg !1641, !tbaa !873
  %326 = icmp eq i8 %325, 0, !dbg !1640
  br i1 %326, label %344, label %327, !dbg !1642

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %328, metadata !1355, metadata !DIExpression()), !dbg !1610
  %329 = add i64 %328, %122, !dbg !1644
  %330 = icmp ult i64 %329, %311, !dbg !1638
  br i1 %330, label %321, label %344, !dbg !1640, !llvm.loop !1645

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1646
  %333 = and i1 %116, %332, !dbg !1649
  call void @llvm.dbg.value(metadata i64 1, metadata !1376, metadata !DIExpression()), !dbg !1650
  br i1 %333, label %334, label %347, !dbg !1649

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1376, metadata !DIExpression()), !dbg !1650
  %336 = add i64 %335, %315, !dbg !1651
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1652
  %338 = load i8, i8* %337, align 1, !dbg !1652, !tbaa !873
  %339 = sext i8 %338 to i32, !dbg !1652
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1653

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %341, metadata !1376, metadata !DIExpression()), !dbg !1650
  %342 = icmp ult i64 %341, %318, !dbg !1646
  br i1 %342, label %334, label %347, !dbg !1655, !llvm.loop !1656

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %314, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %313, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %314, metadata !1358, metadata !DIExpression()), !dbg !1616
  br label %344, !dbg !1658

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %352, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1658
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1659, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %348, metadata !1372, metadata !DIExpression()), !dbg !1634
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1661
  %350 = icmp eq i32 %349, 0, !dbg !1661
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1662
  call void @llvm.dbg.value(metadata i8 %351, metadata !1358, metadata !DIExpression()), !dbg !1616
  %352 = add i64 %318, %313, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %352, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 %351, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %352, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1359, metadata !DIExpression(DW_OP_deref)), !dbg !1633
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1664
  %354 = icmp eq i32 %353, 0, !dbg !1665
  br i1 %354, label %312, label %355, !dbg !1666, !llvm.loop !1667

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1669
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %94, metadata !1331, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %100, metadata !1341, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %311, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %351, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %352, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1669
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1670
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1671
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1671
  call void @llvm.dbg.value(metadata i8 %362, metadata !1358, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %361, metadata !1355, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %360, metadata !1330, metadata !DIExpression()), !dbg !1389
  %363 = and i8 %362, 1, !dbg !1672
  %364 = icmp ne i8 %363, 0, !dbg !1672
  call void @llvm.dbg.value(metadata i8 %363, metadata !1354, metadata !DIExpression()), !dbg !1466
  %365 = icmp ult i64 %361, 2, !dbg !1673
  %366 = or i1 %364, %115, !dbg !1674
  %367 = and i1 %365, %366, !dbg !1675
  br i1 %367, label %467, label %368, !dbg !1675

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %369, metadata !1383, metadata !DIExpression()), !dbg !1677
  br label %370, !dbg !1678

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1679
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1683
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1403
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1679
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1685
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %376, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %375, metadata !1352, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %374, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %373, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %372, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %371, metadata !1336, metadata !DIExpression()), !dbg !1455
  br i1 %366, label %423, label %377, !dbg !1689

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1690

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1465
  %379 = and i8 %373, 1, !dbg !1693
  %380 = icmp eq i8 %379, 0, !dbg !1693
  %381 = and i1 %114, %380, !dbg !1693
  br i1 %381, label %382, label %398, !dbg !1693

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1695
  br i1 %383, label %384, label %386, !dbg !1699

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1695
  store i8 39, i8* %385, align 1, !dbg !1695, !tbaa !873
  br label %386, !dbg !1695

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %387, metadata !1337, metadata !DIExpression()), !dbg !1395
  %388 = icmp ult i64 %387, %129, !dbg !1700
  br i1 %388, label %389, label %391, !dbg !1703

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1700
  store i8 36, i8* %390, align 1, !dbg !1700, !tbaa !873
  br label %391, !dbg !1700

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %392, metadata !1337, metadata !DIExpression()), !dbg !1395
  %393 = icmp ult i64 %392, %129, !dbg !1704
  br i1 %393, label %394, label %396, !dbg !1707

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1704
  store i8 39, i8* %395, align 1, !dbg !1704, !tbaa !873
  br label %396, !dbg !1704

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %397, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %398, !dbg !1708

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1454
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %400, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %399, metadata !1337, metadata !DIExpression()), !dbg !1395
  %401 = icmp ult i64 %399, %129, !dbg !1709
  br i1 %401, label %402, label %404, !dbg !1712

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1709
  store i8 92, i8* %403, align 1, !dbg !1709, !tbaa !873
  br label %404, !dbg !1709

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %405, metadata !1337, metadata !DIExpression()), !dbg !1395
  %406 = icmp ult i64 %405, %129, !dbg !1713
  br i1 %406, label %407, label %411, !dbg !1716

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1713
  %409 = or i8 %408, 48, !dbg !1713
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1713
  store i8 %409, i8* %410, align 1, !dbg !1713, !tbaa !873
  br label %411, !dbg !1713

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %412, metadata !1337, metadata !DIExpression()), !dbg !1395
  %413 = icmp ult i64 %412, %129, !dbg !1717
  br i1 %413, label %414, label %419, !dbg !1720

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1717
  %416 = and i8 %415, 7, !dbg !1717
  %417 = or i8 %416, 48, !dbg !1717
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1717
  store i8 %417, i8* %418, align 1, !dbg !1717, !tbaa !873
  br label %419, !dbg !1717

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %420, metadata !1337, metadata !DIExpression()), !dbg !1395
  %421 = and i8 %374, 7, !dbg !1721
  %422 = or i8 %421, 48, !dbg !1722
  call void @llvm.dbg.value(metadata i8 %422, metadata !1347, metadata !DIExpression()), !dbg !1481
  br label %432, !dbg !1723

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1724
  %425 = icmp eq i8 %424, 0, !dbg !1724
  br i1 %425, label %432, label %426, !dbg !1725

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1726
  br i1 %427, label %428, label %430, !dbg !1729

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1726
  store i8 92, i8* %429, align 1, !dbg !1726, !tbaa !873
  br label %430, !dbg !1726

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %431, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1352, metadata !DIExpression()), !dbg !1464
  br label %432, !dbg !1730

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1731
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1403
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1732
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1733
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8 %437, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %436, metadata !1352, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %435, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %434, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %433, metadata !1337, metadata !DIExpression()), !dbg !1395
  %438 = add i64 %371, 1, !dbg !1736
  %439 = icmp ugt i64 %369, %438, !dbg !1738
  br i1 %439, label %440, label %562, !dbg !1739

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1740
  %442 = icmp ne i8 %441, 0, !dbg !1740
  %443 = and i8 %437, 1, !dbg !1740
  %444 = icmp eq i8 %443, 0, !dbg !1740
  %445 = and i1 %442, %444, !dbg !1740
  br i1 %445, label %446, label %457, !dbg !1740

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1743
  br i1 %447, label %448, label %450, !dbg !1747

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1743
  store i8 39, i8* %449, align 1, !dbg !1743, !tbaa !873
  br label %450, !dbg !1743

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %451, metadata !1337, metadata !DIExpression()), !dbg !1395
  %452 = icmp ult i64 %451, %129, !dbg !1748
  br i1 %452, label %453, label %455, !dbg !1751

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1748
  store i8 39, i8* %454, align 1, !dbg !1748, !tbaa !873
  br label %455, !dbg !1748

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %456, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %457, !dbg !1752

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1753
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %459, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %458, metadata !1337, metadata !DIExpression()), !dbg !1395
  %460 = icmp ult i64 %458, %129, !dbg !1754
  br i1 %460, label %461, label %463, !dbg !1756

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1754
  store i8 %435, i8* %462, align 1, !dbg !1754, !tbaa !873
  br label %463, !dbg !1754

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %464, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %438, metadata !1336, metadata !DIExpression()), !dbg !1455
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1757
  %466 = load i8, i8* %465, align 1, !dbg !1757, !tbaa !873
  call void @llvm.dbg.value(metadata i8 %466, metadata !1347, metadata !DIExpression()), !dbg !1481
  br label %370, !dbg !1758, !llvm.loop !1759

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1762
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1454
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1396
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1763
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1454
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1454
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1479
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1479
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1479
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %476, metadata !1354, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %475, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %155, metadata !1352, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %474, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %473, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %472, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %471, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %470, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %469, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %468, metadata !1336, metadata !DIExpression()), !dbg !1455
  br i1 %105, label %489, label %478, !dbg !1764

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
  br i1 %112, label %490, label %512, !dbg !1766

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1767

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
  %501 = lshr i8 %494, 5, !dbg !1768
  %502 = zext i8 %501 to i64, !dbg !1768
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1769
  %504 = load i32, i32* %503, align 4, !dbg !1769, !tbaa !742
  %505 = and i8 %494, 31, !dbg !1770
  %506 = zext i8 %505 to i32, !dbg !1770
  %507 = shl i32 1, %506, !dbg !1771
  %508 = and i32 %504, %507, !dbg !1771
  %509 = icmp eq i32 %508, 0, !dbg !1771
  %510 = icmp eq i8 %155, 0, !dbg !1772
  %511 = and i1 %510, %509, !dbg !1773
  br i1 %511, label %562, label %524, !dbg !1773

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
  %523 = icmp eq i8 %155, 0, !dbg !1772
  br i1 %523, label %562, label %524, !dbg !1774

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1775
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1454
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1396
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1763
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1403
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1404
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1776
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1479
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %532, metadata !1354, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %531, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %530, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %529, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %528, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %527, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %526, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %525, metadata !1336, metadata !DIExpression()), !dbg !1455
  br i1 %110, label %534, label %661, !dbg !1779

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1465
  %535 = and i8 %529, 1, !dbg !1781
  %536 = icmp eq i8 %535, 0, !dbg !1781
  %537 = and i1 %114, %536, !dbg !1781
  br i1 %537, label %538, label %554, !dbg !1781

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1783
  br i1 %539, label %540, label %542, !dbg !1787

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1783
  store i8 39, i8* %541, align 1, !dbg !1783, !tbaa !873
  br label %542, !dbg !1783

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %543, metadata !1337, metadata !DIExpression()), !dbg !1395
  %544 = icmp ult i64 %543, %533, !dbg !1788
  br i1 %544, label %545, label %547, !dbg !1791

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1788
  store i8 36, i8* %546, align 1, !dbg !1788, !tbaa !873
  br label %547, !dbg !1788

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %548, metadata !1337, metadata !DIExpression()), !dbg !1395
  %549 = icmp ult i64 %548, %533, !dbg !1792
  br i1 %549, label %550, label %552, !dbg !1795

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1792
  store i8 39, i8* %551, align 1, !dbg !1792, !tbaa !873
  br label %552, !dbg !1792

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %553, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %554, !dbg !1796

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1753
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %556, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %555, metadata !1337, metadata !DIExpression()), !dbg !1395
  %557 = icmp ult i64 %555, %533, !dbg !1797
  br i1 %557, label %558, label %560, !dbg !1800

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1797
  store i8 92, i8* %559, align 1, !dbg !1797, !tbaa !873
  br label %560, !dbg !1797

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %561, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %572, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %571, metadata !1354, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %570, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %569, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %568, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %567, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %566, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %565, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %564, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %563, metadata !1336, metadata !DIExpression()), !dbg !1455
  br label %589, !dbg !1801

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1775
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1454
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1396
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1763
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1403
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1404
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1804
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1479
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1479
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %571, metadata !1354, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %570, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %569, metadata !1347, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %568, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %567, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %566, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %565, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %564, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %563, metadata !1336, metadata !DIExpression()), !dbg !1455
  %573 = and i8 %567, 1, !dbg !1801
  %574 = icmp ne i8 %573, 0, !dbg !1801
  %575 = and i8 %570, 1, !dbg !1801
  %576 = icmp eq i8 %575, 0, !dbg !1801
  %577 = and i1 %574, %576, !dbg !1801
  br i1 %577, label %578, label %589, !dbg !1801

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1805
  br i1 %579, label %580, label %582, !dbg !1809

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1805
  store i8 39, i8* %581, align 1, !dbg !1805, !tbaa !873
  br label %582, !dbg !1805

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %583, metadata !1337, metadata !DIExpression()), !dbg !1395
  %584 = icmp ult i64 %583, %572, !dbg !1810
  br i1 %584, label %585, label %587, !dbg !1813

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1810
  store i8 39, i8* %586, align 1, !dbg !1810, !tbaa !873
  br label %587, !dbg !1810

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %588, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1403
  br label %589, !dbg !1814

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1753
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %598, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %597, metadata !1337, metadata !DIExpression()), !dbg !1395
  %599 = icmp ult i64 %597, %590, !dbg !1815
  br i1 %599, label %600, label %602, !dbg !1818

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1815
  store i8 %592, i8* %601, align 1, !dbg !1815, !tbaa !873
  br label %602, !dbg !1815

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %603, metadata !1337, metadata !DIExpression()), !dbg !1395
  %604 = and i8 %591, 1, !dbg !1819
  %605 = icmp eq i8 %604, 0, !dbg !1819
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1821
  call void @llvm.dbg.value(metadata i8 %606, metadata !1346, metadata !DIExpression()), !dbg !1405
  br label %607, !dbg !1822

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1775
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1454
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1396
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1763
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1403
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1454
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1405
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %614, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %613, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %612, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %611, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %610, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %609, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %608, metadata !1336, metadata !DIExpression()), !dbg !1455
  %616 = add i64 %608, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %616, metadata !1336, metadata !DIExpression()), !dbg !1455
  br label %121, !dbg !1824, !llvm.loop !1825

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %125, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %125, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %126, metadata !1344, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  %619 = icmp eq i64 %123, 0, !dbg !1827
  %620 = and i1 %114, %619, !dbg !1829
  %621 = xor i1 %620, true, !dbg !1829
  %622 = or i1 %110, %621, !dbg !1829
  br i1 %622, label %623, label %661, !dbg !1829

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1830
  %625 = xor i1 %624, true, !dbg !1830
  %626 = and i8 %127, 1, !dbg !1832
  %627 = icmp eq i8 %626, 0, !dbg !1832
  %628 = or i1 %627, %625, !dbg !1830
  br i1 %628, label %638, label %629, !dbg !1830

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1833
  %631 = icmp eq i8 %630, 0, !dbg !1833
  br i1 %631, label %634, label %632, !dbg !1836

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %618, metadata !1330, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8* %95, metadata !1334, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, metadata !1335, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %125, metadata !1330, metadata !DIExpression()), !dbg !1389
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1837
  br label %671, !dbg !1838

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1839
  %636 = icmp ne i64 %124, 0, !dbg !1841
  %637 = and i1 %636, %635, !dbg !1842
  br i1 %637, label %27, label %638, !dbg !1842

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %129, metadata !1328, metadata !DIExpression()), !dbg !1387
  %639 = icmp ne i8* %98, null, !dbg !1843
  %640 = and i1 %639, %110, !dbg !1845
  br i1 %640, label %641, label %656, !dbg !1845

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1395
  %642 = load i8, i8* %98, align 1, !dbg !1846, !tbaa !873
  %643 = icmp eq i8 %642, 0, !dbg !1849
  br i1 %643, label %656, label %644, !dbg !1849

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %647, metadata !1337, metadata !DIExpression()), !dbg !1395
  %648 = icmp ult i64 %647, %129, !dbg !1850
  br i1 %648, label %649, label %651, !dbg !1853

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1850
  store i8 %645, i8* %650, align 1, !dbg !1850, !tbaa !873
  br label %651, !dbg !1850

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1853
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %653, metadata !1339, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %652, metadata !1337, metadata !DIExpression()), !dbg !1395
  %654 = load i8, i8* %653, align 1, !dbg !1846, !tbaa !873
  %655 = icmp eq i8 %654, 0, !dbg !1849
  br i1 %655, label %656, label %644, !dbg !1849, !llvm.loop !1855

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1395
  call void @llvm.dbg.value(metadata i64 %657, metadata !1337, metadata !DIExpression()), !dbg !1395
  %658 = icmp ult i64 %657, %129, !dbg !1857
  br i1 %658, label %659, label %671, !dbg !1859

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1860
  store i8 0, i8* %660, align 1, !dbg !1861, !tbaa !873
  br label %671, !dbg !1860

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1328, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %663, metadata !1330, metadata !DIExpression()), !dbg !1389
  %665 = icmp ne i32 %662, 2, !dbg !1862
  %666 = icmp eq i8 %102, 0, !dbg !1864
  %667 = or i1 %665, %666, !dbg !1865
  call void @llvm.dbg.value(metadata i32 4, metadata !1331, metadata !DIExpression()), !dbg !1390
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %668, metadata !1331, metadata !DIExpression()), !dbg !1390
  %669 = and i32 %5, -3, !dbg !1866
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1867
  br label %671, !dbg !1868

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1869
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1874, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %1, metadata !1875, metadata !DIExpression()), !dbg !1879
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %3, metadata !1876, metadata !DIExpression()), !dbg !1881
  %4 = icmp eq i8* %3, %0, !dbg !1882
  br i1 %4, label %5, label %71, !dbg !1884

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1885
  call void @llvm.dbg.value(metadata i8* %6, metadata !1877, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %6, metadata !1887, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* null, metadata !1893, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 85, metadata !1894, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 84, metadata !1895, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 70, metadata !1896, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 45, metadata !1897, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 56, metadata !1898, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 0, metadata !1901, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1902, metadata !DIExpression()), !dbg !1915
  %7 = load i8, i8* %6, align 1, !dbg !1916, !tbaa !873
  %8 = and i8 %7, -33, !dbg !1916
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1916

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1918, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* null, metadata !1923, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 84, metadata !1924, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 70, metadata !1925, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 45, metadata !1926, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 56, metadata !1927, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1944
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1945
  %11 = load i8, i8* %10, align 1, !dbg !1945, !tbaa !873
  %12 = and i8 %11, -33, !dbg !1945
  %13 = icmp eq i8 %12, 84, !dbg !1945
  br i1 %13, label %14, label %68, !dbg !1945

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1947, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* null, metadata !1952, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 70, metadata !1953, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 45, metadata !1954, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 56, metadata !1955, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 0, metadata !1956, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1957, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1959, metadata !DIExpression()), !dbg !1971
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1972
  %16 = load i8, i8* %15, align 1, !dbg !1972, !tbaa !873
  %17 = and i8 %16, -33, !dbg !1972
  %18 = icmp eq i8 %17, 70, !dbg !1972
  br i1 %18, label %19, label %68, !dbg !1972

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1974, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* null, metadata !1979, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 45, metadata !1980, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 56, metadata !1981, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1996
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1997
  %21 = load i8, i8* %20, align 1, !dbg !1997, !tbaa !873
  %22 = icmp eq i8 %21, 45, !dbg !1997
  br i1 %22, label %23, label %68, !dbg !1999

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2000, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* null, metadata !2005, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 56, metadata !2006, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2008, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 0, metadata !2009, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2020
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2021
  %25 = load i8, i8* %24, align 1, !dbg !2021, !tbaa !873
  %26 = icmp eq i8 %25, 56, !dbg !2021
  br i1 %26, label %27, label %68, !dbg !2023

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2024, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* null, metadata !2029, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, metadata !2033, metadata !DIExpression()), !dbg !2042
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2043
  %29 = load i8, i8* %28, align 1, !dbg !2043, !tbaa !873
  %30 = icmp eq i8 %29, 0, !dbg !2043
  br i1 %30, label %31, label %68, !dbg !2045

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2046, !tbaa !873
  %33 = icmp eq i8 %32, 96, !dbg !2047
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2046
  br label %71, !dbg !2048

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1918, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* null, metadata !1923, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 66, metadata !1924, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 49, metadata !1925, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 56, metadata !1926, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 48, metadata !1927, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 51, metadata !1928, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 48, metadata !1929, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !2061
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2062
  %37 = load i8, i8* %36, align 1, !dbg !2062, !tbaa !873
  %38 = and i8 %37, -33, !dbg !2062
  %39 = icmp eq i8 %38, 66, !dbg !2062
  br i1 %39, label %40, label %68, !dbg !2062

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1947, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* null, metadata !1952, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 49, metadata !1953, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8 56, metadata !1954, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 48, metadata !1955, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8 51, metadata !1956, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 48, metadata !1957, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !1959, metadata !DIExpression()), !dbg !2072
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2073
  %42 = load i8, i8* %41, align 1, !dbg !2073, !tbaa !873
  %43 = icmp eq i8 %42, 49, !dbg !2073
  br i1 %43, label %44, label %68, !dbg !2074

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1974, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* null, metadata !1979, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 56, metadata !1980, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 48, metadata !1981, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 51, metadata !1982, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 48, metadata !1983, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2083
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2084
  %46 = load i8, i8* %45, align 1, !dbg !2084, !tbaa !873
  %47 = icmp eq i8 %46, 56, !dbg !2084
  br i1 %47, label %48, label %68, !dbg !2085

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2000, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* null, metadata !2005, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 48, metadata !2006, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 51, metadata !2007, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 48, metadata !2008, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 0, metadata !2009, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2093
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2094
  %50 = load i8, i8* %49, align 1, !dbg !2094, !tbaa !873
  %51 = icmp eq i8 %50, 48, !dbg !2094
  br i1 %51, label %52, label %68, !dbg !2095

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2024, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* null, metadata !2029, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 51, metadata !2030, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 48, metadata !2031, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2033, metadata !DIExpression()), !dbg !2102
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2103
  %54 = load i8, i8* %53, align 1, !dbg !2103, !tbaa !873
  %55 = icmp eq i8 %54, 51, !dbg !2103
  br i1 %55, label %56, label %68, !dbg !2104

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2105, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8* null, metadata !2110, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 48, metadata !2111, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 0, metadata !2112, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2121
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2122
  %58 = load i8, i8* %57, align 1, !dbg !2122, !tbaa !873
  %59 = icmp eq i8 %58, 48, !dbg !2122
  br i1 %59, label %60, label %68, !dbg !2124

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2125, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* null, metadata !2130, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2139
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2140
  %62 = load i8, i8* %61, align 1, !dbg !2140, !tbaa !873
  %63 = icmp eq i8 %62, 0, !dbg !2140
  br i1 %63, label %64, label %68, !dbg !2142

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2143, !tbaa !873
  %66 = icmp eq i8 %65, 96, !dbg !2144
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2143
  br label %71, !dbg !2145

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2146
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2147
  br label %71, !dbg !2148

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2149
  ret i8* %72, !dbg !2150
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2155, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %1, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %0, metadata !2161, metadata !DIExpression()) #11, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()) #11, !dbg !2176
  call void @llvm.dbg.value(metadata i64* null, metadata !2167, metadata !DIExpression()) #11, !dbg !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2168, metadata !DIExpression()) #11, !dbg !2178
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2179
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2169, metadata !DIExpression()) #11, !dbg !2180
  %6 = tail call i32* @__errno_location() #17, !dbg !2181
  %7 = load i32, i32* %6, align 4, !dbg !2181, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %7, metadata !2170, metadata !DIExpression()) #11, !dbg !2182
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2183
  %9 = load i32, i32* %8, align 4, !dbg !2183, !tbaa !1260
  %10 = or i32 %9, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %10, metadata !2171, metadata !DIExpression()) #11, !dbg !2185
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2186
  %12 = load i32, i32* %11, align 8, !dbg !2186, !tbaa !1200
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2187
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2188
  %15 = load i8*, i8** %14, align 8, !dbg !2188, !tbaa !1286
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2189
  %17 = load i8*, i8** %16, align 8, !dbg !2189, !tbaa !1289
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2190
  %19 = add i64 %18, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %19, metadata !2172, metadata !DIExpression()) #11, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %19, metadata !2193, metadata !DIExpression()) #11, !dbg !2198
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %20, metadata !2173, metadata !DIExpression()) #11, !dbg !2201
  %21 = load i32, i32* %11, align 8, !dbg !2202, !tbaa !1200
  %22 = load i8*, i8** %14, align 8, !dbg !2203, !tbaa !1286
  %23 = load i8*, i8** %16, align 8, !dbg !2204, !tbaa !1289
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2205
  store i32 %7, i32* %6, align 4, !dbg !2206, !tbaa !742
  ret i8* %20, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2161, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64* %2, metadata !2167, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2168, metadata !DIExpression()), !dbg !2211
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2212
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2169, metadata !DIExpression()), !dbg !2213
  %7 = tail call i32* @__errno_location() #17, !dbg !2214
  %8 = load i32, i32* %7, align 4, !dbg !2214, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %8, metadata !2170, metadata !DIExpression()), !dbg !2215
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2216
  %10 = load i32, i32* %9, align 4, !dbg !2216, !tbaa !1260
  %11 = icmp ne i64* %2, null, !dbg !2217
  %12 = xor i1 %11, true, !dbg !2217
  %13 = zext i1 %12 to i32, !dbg !2217
  %14 = or i32 %10, %13, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %14, metadata !2171, metadata !DIExpression()), !dbg !2219
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2220
  %16 = load i32, i32* %15, align 8, !dbg !2220, !tbaa !1200
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2221
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2222
  %19 = load i8*, i8** %18, align 8, !dbg !2222, !tbaa !1286
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2223
  %21 = load i8*, i8** %20, align 8, !dbg !2223, !tbaa !1289
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2224
  %23 = add i64 %22, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %23, metadata !2172, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %23, metadata !2193, metadata !DIExpression()) #11, !dbg !2227
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2229
  call void @llvm.dbg.value(metadata i8* %24, metadata !2173, metadata !DIExpression()), !dbg !2230
  %25 = load i32, i32* %15, align 8, !dbg !2231, !tbaa !1200
  %26 = load i8*, i8** %18, align 8, !dbg !2232, !tbaa !1286
  %27 = load i8*, i8** %20, align 8, !dbg !2233, !tbaa !1289
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2234
  store i32 %8, i32* %7, align 4, !dbg !2235, !tbaa !742
  br i1 %11, label %29, label %30, !dbg !2236

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2237, !tbaa !2239
  br label %30, !dbg !2241

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2243 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2247, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 1, metadata !2246, metadata !DIExpression()), !dbg !2249
  %2 = load i32, i32* @nslots, align 4, !dbg !2250, !tbaa !742
  %3 = icmp sgt i32 %2, 1, !dbg !2253
  br i1 %3, label %4, label %12, !dbg !2254

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2246, metadata !DIExpression()), !dbg !2249
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2255
  %7 = load i8*, i8** %6, align 8, !dbg !2255, !tbaa !2256
  tail call void @free(i8* %7) #11, !dbg !2258
  %8 = add nuw nsw i64 %5, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i32 undef, metadata !2246, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2249
  %9 = load i32, i32* @nslots, align 4, !dbg !2250, !tbaa !742
  %10 = sext i32 %9 to i64, !dbg !2253
  %11 = icmp slt i64 %8, %10, !dbg !2253
  br i1 %11, label %4, label %12, !dbg !2254, !llvm.loop !2260

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2262
  %14 = load i8*, i8** %13, align 8, !dbg !2262, !tbaa !2256
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2264
  br i1 %15, label %17, label %16, !dbg !2265

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2266
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2268, !tbaa !2269
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2270, !tbaa !2256
  br label %17, !dbg !2271

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2272
  br i1 %18, label %21, label %19, !dbg !2274

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2275
  tail call void @free(i8* %20) #11, !dbg !2277
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2278, !tbaa !663
  br label %21, !dbg !2279

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2280, !tbaa !742
  ret void, !dbg !2281
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %1, metadata !2287, metadata !DIExpression()), !dbg !2289
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2290
  ret i8* %3, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %1, metadata !2297, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %2, metadata !2298, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2299, metadata !DIExpression()), !dbg !2314
  %5 = tail call i32* @__errno_location() #17, !dbg !2315
  %6 = load i32, i32* %5, align 4, !dbg !2315, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %6, metadata !2300, metadata !DIExpression()), !dbg !2316
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2317, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2301, metadata !DIExpression()), !dbg !2318
  %8 = icmp slt i32 %0, 0, !dbg !2319
  br i1 %8, label %9, label %10, !dbg !2321

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2322
  unreachable, !dbg !2322

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2323, !tbaa !742
  %12 = icmp sgt i32 %11, %0, !dbg !2324
  br i1 %12, label %34, label %13, !dbg !2325

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2326
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2305, metadata !DIExpression()), !dbg !2327
  %15 = icmp eq i32 %0, 2147483647, !dbg !2328
  br i1 %15, label %16, label %17, !dbg !2330

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2331
  unreachable, !dbg !2331

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2332
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2332
  %20 = add nsw i32 %0, 1, !dbg !2333
  %21 = sext i32 %20 to i64, !dbg !2334
  %22 = shl nsw i64 %21, 4, !dbg !2335
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2336
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2301, metadata !DIExpression()), !dbg !2318
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2337, !tbaa !663
  br i1 %14, label %25, label %26, !dbg !2338

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2339, !tbaa.struct !2341
  br label %26, !dbg !2342

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2343, !tbaa !742
  %28 = sext i32 %27 to i64, !dbg !2344
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2344
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2345
  %31 = sub nsw i32 %20, %27, !dbg !2346
  %32 = sext i32 %31 to i64, !dbg !2347
  %33 = shl nsw i64 %32, 4, !dbg !2348
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2345
  store i32 %20, i32* @nslots, align 4, !dbg !2349, !tbaa !742
  br label %34, !dbg !2350

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2351
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2301, metadata !DIExpression()), !dbg !2318
  %36 = sext i32 %0 to i64, !dbg !2352
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2353
  %38 = load i64, i64* %37, align 8, !dbg !2353, !tbaa !2269
  call void @llvm.dbg.value(metadata i64 %38, metadata !2306, metadata !DIExpression()), !dbg !2354
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2355
  %40 = load i8*, i8** %39, align 8, !dbg !2355, !tbaa !2256
  call void @llvm.dbg.value(metadata i8* %40, metadata !2308, metadata !DIExpression()), !dbg !2356
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2357
  %42 = load i32, i32* %41, align 4, !dbg !2357, !tbaa !1260
  %43 = or i32 %42, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %43, metadata !2309, metadata !DIExpression()), !dbg !2359
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2360
  %45 = load i32, i32* %44, align 8, !dbg !2360, !tbaa !1200
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2361
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2362
  %48 = load i8*, i8** %47, align 8, !dbg !2362, !tbaa !1286
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2363
  %50 = load i8*, i8** %49, align 8, !dbg !2363, !tbaa !1289
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %51, metadata !2310, metadata !DIExpression()), !dbg !2365
  %52 = icmp ugt i64 %38, %51, !dbg !2366
  br i1 %52, label %63, label %53, !dbg !2368

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %54, metadata !2306, metadata !DIExpression()), !dbg !2354
  store i64 %54, i64* %37, align 8, !dbg !2371, !tbaa !2269
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2372
  br i1 %55, label %57, label %56, !dbg !2374

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2375
  br label %57, !dbg !2375

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2193, metadata !DIExpression()) #11, !dbg !2376
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %58, metadata !2308, metadata !DIExpression()), !dbg !2356
  store i8* %58, i8** %39, align 8, !dbg !2379, !tbaa !2256
  %59 = load i32, i32* %44, align 8, !dbg !2380, !tbaa !1200
  %60 = load i8*, i8** %47, align 8, !dbg !2381, !tbaa !1286
  %61 = load i8*, i8** %49, align 8, !dbg !2382, !tbaa !1289
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2383
  br label %63, !dbg !2384

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2385
  call void @llvm.dbg.value(metadata i8* %64, metadata !2308, metadata !DIExpression()), !dbg !2356
  store i32 %6, i32* %5, align 4, !dbg !2386, !tbaa !742
  ret i8* %64, !dbg !2387
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %1, metadata !2393, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %2, metadata !2394, metadata !DIExpression()), !dbg !2397
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2398
  ret i8* %4, !dbg !2399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 0, metadata !2286, metadata !DIExpression()) #11, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %0, metadata !2287, metadata !DIExpression()) #11, !dbg !2408
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2409
  ret i8* %2, !dbg !2410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i64 %1, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()) #11, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %0, metadata !2393, metadata !DIExpression()) #11, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %1, metadata !2394, metadata !DIExpression()) #11, !dbg !2422
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2423
  ret i8* %3, !dbg !2424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2425 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2430, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* %2, metadata !2431, metadata !DIExpression()), !dbg !2435
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2436
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %1, metadata !2438, metadata !DIExpression()) #11, !dbg !2444
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2446, !alias.scope !2447
  %6 = icmp eq i32 %1, 10, !dbg !2450
  br i1 %6, label %7, label %8, !dbg !2452

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2453, !noalias !2447
  unreachable, !dbg !2453

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2454
  store i32 %1, i32* %9, align 8, !dbg !2455, !tbaa !1200, !alias.scope !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2446
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2456
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2457
  ret i8* %10, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2459 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2463, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %1, metadata !2464, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %2, metadata !2465, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %3, metadata !2466, metadata !DIExpression()), !dbg !2471
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2472
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2467, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %1, metadata !2438, metadata !DIExpression()) #11, !dbg !2474
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2476, !alias.scope !2477
  %7 = icmp eq i32 %1, 10, !dbg !2480
  br i1 %7, label %8, label %9, !dbg !2481

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2482, !noalias !2477
  unreachable, !dbg !2482

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2483
  store i32 %1, i32* %10, align 8, !dbg !2484, !tbaa !1200, !alias.scope !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2467, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2476
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2486
  ret i8* %11, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2488 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %1, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 0, metadata !2429, metadata !DIExpression()) #11, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()) #11, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()) #11, !dbg !2499
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2432, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()) #11, !dbg !2502
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2504, !alias.scope !2505
  %5 = icmp eq i32 %0, 10, !dbg !2508
  br i1 %5, label %6, label %7, !dbg !2509

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2510, !noalias !2505
  unreachable, !dbg !2510

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2511
  store i32 %0, i32* %8, align 8, !dbg !2512, !tbaa !1200, !alias.scope !2505
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2432, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2501
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2443, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2504
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2513
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2514
  ret i8* %9, !dbg !2515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2516 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8* %1, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %2, metadata !2522, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 0, metadata !2463, metadata !DIExpression()) #11, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()) #11, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2465, metadata !DIExpression()) #11, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %2, metadata !2466, metadata !DIExpression()) #11, !dbg !2530
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2531
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2467, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()) #11, !dbg !2533
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2535, !alias.scope !2536
  %6 = icmp eq i32 %0, 10, !dbg !2539
  br i1 %6, label %7, label %8, !dbg !2540

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2541, !noalias !2536
  unreachable, !dbg !2541

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2542
  store i32 %0, i32* %9, align 8, !dbg !2543, !tbaa !1200, !alias.scope !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2467, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2535
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2544
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2545
  ret i8* %10, !dbg !2546
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2547 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %2, metadata !2553, metadata !DIExpression()), !dbg !2557
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2559, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2554, metadata !DIExpression(DW_OP_deref)), !dbg !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1219, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 %2, metadata !1220, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 %2, metadata !1222, metadata !DIExpression()), !dbg !2566
  %6 = lshr i8 %2, 5, !dbg !2567
  %7 = zext i8 %6 to i64, !dbg !2567
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2568
  call void @llvm.dbg.value(metadata i32* %8, metadata !1224, metadata !DIExpression()), !dbg !2569
  %9 = and i8 %2, 31, !dbg !2570
  %10 = zext i8 %9 to i32, !dbg !2570
  call void @llvm.dbg.value(metadata i32 %10, metadata !1226, metadata !DIExpression()), !dbg !2571
  %11 = load i32, i32* %8, align 4, !dbg !2572, !tbaa !742
  %12 = lshr i32 %11, %10, !dbg !2573
  %13 = and i32 %12, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %13, metadata !1227, metadata !DIExpression()), !dbg !2575
  %14 = xor i32 %13, 1, !dbg !2576
  %15 = shl i32 %14, %10, !dbg !2577
  %16 = xor i32 %15, %11, !dbg !2578
  store i32 %16, i32* %8, align 4, !dbg !2578, !tbaa !742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2554, metadata !DIExpression(DW_OP_deref)), !dbg !2561
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2579
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2580
  ret i8* %17, !dbg !2581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2582 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #11, !dbg !2590
  call void @llvm.dbg.value(metadata i64 -1, metadata !2552, metadata !DIExpression()) #11, !dbg !2592
  call void @llvm.dbg.value(metadata i8 %1, metadata !2553, metadata !DIExpression()) #11, !dbg !2593
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2595, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2596
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1219, metadata !DIExpression()) #11, !dbg !2597
  call void @llvm.dbg.value(metadata i8 %1, metadata !1220, metadata !DIExpression()) #11, !dbg !2599
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()) #11, !dbg !2600
  call void @llvm.dbg.value(metadata i8 %1, metadata !1222, metadata !DIExpression()) #11, !dbg !2601
  %5 = lshr i8 %1, 5, !dbg !2602
  %6 = zext i8 %5 to i64, !dbg !2602
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2603
  call void @llvm.dbg.value(metadata i32* %7, metadata !1224, metadata !DIExpression()) #11, !dbg !2604
  %8 = and i8 %1, 31, !dbg !2605
  %9 = zext i8 %8 to i32, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %9, metadata !1226, metadata !DIExpression()) #11, !dbg !2606
  %10 = load i32, i32* %7, align 4, !dbg !2607, !tbaa !742
  %11 = lshr i32 %10, %9, !dbg !2608
  %12 = and i32 %11, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %12, metadata !1227, metadata !DIExpression()) #11, !dbg !2610
  %13 = xor i32 %12, 1, !dbg !2611
  %14 = shl i32 %13, %9, !dbg !2612
  %15 = xor i32 %14, %10, !dbg !2613
  store i32 %15, i32* %7, align 4, !dbg !2613, !tbaa !742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2596
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2615
  ret i8* %16, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2617 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !2586, metadata !DIExpression()) #11, !dbg !2621
  call void @llvm.dbg.value(metadata i8 58, metadata !2587, metadata !DIExpression()) #11, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #11, !dbg !2624
  call void @llvm.dbg.value(metadata i64 -1, metadata !2552, metadata !DIExpression()) #11, !dbg !2626
  call void @llvm.dbg.value(metadata i8 58, metadata !2553, metadata !DIExpression()) #11, !dbg !2627
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2628
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2629, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1219, metadata !DIExpression()) #11, !dbg !2631
  call void @llvm.dbg.value(metadata i8 58, metadata !1220, metadata !DIExpression()) #11, !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()) #11, !dbg !2634
  call void @llvm.dbg.value(metadata i8 58, metadata !1222, metadata !DIExpression()) #11, !dbg !2635
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2636
  call void @llvm.dbg.value(metadata i32* %4, metadata !1224, metadata !DIExpression()) #11, !dbg !2637
  call void @llvm.dbg.value(metadata i32 26, metadata !1226, metadata !DIExpression()) #11, !dbg !2638
  %5 = load i32, i32* %4, align 4, !dbg !2639, !tbaa !742
  %6 = or i32 %5, 67108864, !dbg !2640
  store i32 %6, i32* %4, align 4, !dbg !2640, !tbaa !742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2630
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2642
  ret i8* %7, !dbg !2643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2644 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #11, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()) #11, !dbg !2652
  call void @llvm.dbg.value(metadata i8 58, metadata !2553, metadata !DIExpression()) #11, !dbg !2653
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2654
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2655, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2656
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1219, metadata !DIExpression()) #11, !dbg !2657
  call void @llvm.dbg.value(metadata i8 58, metadata !1220, metadata !DIExpression()) #11, !dbg !2659
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()) #11, !dbg !2660
  call void @llvm.dbg.value(metadata i8 58, metadata !1222, metadata !DIExpression()) #11, !dbg !2661
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2662
  call void @llvm.dbg.value(metadata i32* %5, metadata !1224, metadata !DIExpression()) #11, !dbg !2663
  call void @llvm.dbg.value(metadata i32 26, metadata !1226, metadata !DIExpression()) #11, !dbg !2664
  %6 = load i32, i32* %5, align 4, !dbg !2665, !tbaa !742
  %7 = or i32 %6, 67108864, !dbg !2666
  store i32 %7, i32* %5, align 4, !dbg !2666, !tbaa !742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2554, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2656
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2667
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2668
  ret i8* %8, !dbg !2669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2670 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2443, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %2, metadata !2674, metadata !DIExpression()), !dbg !2680
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2681
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2681
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %1, metadata !2438, metadata !DIExpression()) #11, !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2676
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2676, !alias.scope !2684
  %8 = icmp eq i32 %1, 10, !dbg !2687
  br i1 %8, label %9, label %10, !dbg !2688

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2689, !noalias !2684
  unreachable, !dbg !2689

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2676
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2682
  store i32 %1, i32* %11, align 8, !dbg !2682
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2682
  %13 = bitcast i32* %12 to i8*, !dbg !2682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2675, metadata !DIExpression(DW_OP_deref)), !dbg !2690
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1219, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 58, metadata !1220, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8 58, metadata !1222, metadata !DIExpression()), !dbg !2695
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2696
  call void @llvm.dbg.value(metadata i32* %14, metadata !1224, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 26, metadata !1226, metadata !DIExpression()), !dbg !2698
  %15 = load i32, i32* %14, align 4, !dbg !2699, !tbaa !742
  %16 = or i32 %15, 67108864, !dbg !2700
  store i32 %16, i32* %14, align 4, !dbg !2700, !tbaa !742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2675, metadata !DIExpression(DW_OP_deref)), !dbg !2690
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2702
  ret i8* %17, !dbg !2703
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2704 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %2, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %3, metadata !2711, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()) #11, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %1, metadata !2721, metadata !DIExpression()) #11, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()) #11, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %3, metadata !2723, metadata !DIExpression()) #11, !dbg !2730
  call void @llvm.dbg.value(metadata i64 -1, metadata !2724, metadata !DIExpression()) #11, !dbg !2731
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2733, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1268, metadata !DIExpression()) #11, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !1269, metadata !DIExpression()) #11, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %2, metadata !1270, metadata !DIExpression()) #11, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1268, metadata !DIExpression()) #11, !dbg !2735
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2739
  store i32 10, i32* %7, align 8, !dbg !2740, !tbaa !1200
  %8 = icmp ne i8* %1, null, !dbg !2741
  %9 = icmp ne i8* %2, null, !dbg !2742
  %10 = and i1 %8, %9, !dbg !2743
  br i1 %10, label %12, label %11, !dbg !2743

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2744
  unreachable, !dbg !2744

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2745
  store i8* %1, i8** %13, align 8, !dbg !2746, !tbaa !1286
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2747
  store i8* %2, i8** %14, align 8, !dbg !2748, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2734
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2750
  ret i8* %15, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2717 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !2721, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %3, metadata !2723, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %4, metadata !2724, metadata !DIExpression()), !dbg !2756
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2758, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1268, metadata !DIExpression()) #11, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !1269, metadata !DIExpression()) #11, !dbg !2762
  call void @llvm.dbg.value(metadata i8* %2, metadata !1270, metadata !DIExpression()) #11, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1268, metadata !DIExpression()) #11, !dbg !2760
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2764
  store i32 10, i32* %8, align 8, !dbg !2765, !tbaa !1200
  %9 = icmp ne i8* %1, null, !dbg !2766
  %10 = icmp ne i8* %2, null, !dbg !2767
  %11 = and i1 %9, %10, !dbg !2768
  br i1 %11, label %13, label %12, !dbg !2768

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2769
  unreachable, !dbg !2769

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2770
  store i8* %1, i8** %14, align 8, !dbg !2771, !tbaa !1286
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2772
  store i8* %2, i8** %15, align 8, !dbg !2773, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2759
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2775
  ret i8* %16, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2777 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2708, metadata !DIExpression()) #11, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()) #11, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()) #11, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2711, metadata !DIExpression()) #11, !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()) #11, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()) #11, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2722, metadata !DIExpression()) #11, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()) #11, !dbg !2796
  call void @llvm.dbg.value(metadata i64 -1, metadata !2724, metadata !DIExpression()) #11, !dbg !2797
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2799, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1268, metadata !DIExpression()) #11, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %0, metadata !1269, metadata !DIExpression()) #11, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !1270, metadata !DIExpression()) #11, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1268, metadata !DIExpression()) #11, !dbg !2801
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2805
  store i32 10, i32* %6, align 8, !dbg !2806, !tbaa !1200
  %7 = icmp ne i8* %0, null, !dbg !2807
  %8 = icmp ne i8* %1, null, !dbg !2808
  %9 = and i1 %7, %8, !dbg !2809
  br i1 %9, label %11, label %10, !dbg !2809

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2810
  unreachable, !dbg !2810

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2811
  store i8* %0, i8** %12, align 8, !dbg !2812, !tbaa !1286
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2813
  store i8* %1, i8** %13, align 8, !dbg !2814, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2800
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2815
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2816
  ret i8* %14, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2818 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2823, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %3, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()) #11, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()) #11, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2722, metadata !DIExpression()) #11, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()) #11, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %3, metadata !2724, metadata !DIExpression()) #11, !dbg !2835
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2837, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1268, metadata !DIExpression()) #11, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !1269, metadata !DIExpression()) #11, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1270, metadata !DIExpression()) #11, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1268, metadata !DIExpression()) #11, !dbg !2839
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2843
  store i32 10, i32* %7, align 8, !dbg !2844, !tbaa !1200
  %8 = icmp ne i8* %0, null, !dbg !2845
  %9 = icmp ne i8* %1, null, !dbg !2846
  %10 = and i1 %8, %9, !dbg !2847
  br i1 %10, label %12, label %11, !dbg !2847

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2849
  store i8* %0, i8** %13, align 8, !dbg !2850, !tbaa !1286
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2851
  store i8* %1, i8** %14, align 8, !dbg !2852, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2838
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2854
  ret i8* %15, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2856 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %2, metadata !2862, metadata !DIExpression()), !dbg !2865
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2866
  ret i8* %4, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 0, metadata !2860, metadata !DIExpression()) #11, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()) #11, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()) #11, !dbg !2879
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2880
  ret i8* %3, !dbg !2881
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %1, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 %0, metadata !2860, metadata !DIExpression()) #11, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2861, metadata !DIExpression()) #11, !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2862, metadata !DIExpression()) #11, !dbg !2893
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2894
  ret i8* %3, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 0, metadata !2886, metadata !DIExpression()) #11, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()) #11, !dbg !2904
  call void @llvm.dbg.value(metadata i32 0, metadata !2860, metadata !DIExpression()) #11, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()) #11, !dbg !2907
  call void @llvm.dbg.value(metadata i64 -1, metadata !2862, metadata !DIExpression()) #11, !dbg !2908
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2909
  ret i8* %2, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2911 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2968, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2969, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %2, metadata !2970, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %3, metadata !2971, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8** %4, metadata !2972, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %5, metadata !2973, metadata !DIExpression()), !dbg !2979
  %7 = icmp eq i8* %1, null, !dbg !2980
  br i1 %7, label %10, label %8, !dbg !2982

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2983
  br label %12, !dbg !2983

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2984
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #11, !dbg !2985
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !2985
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #11, !dbg !2986
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2986
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
  ], !dbg !2987

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2988
  unreachable, !dbg !2988

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #11, !dbg !2990
  %20 = load i8*, i8** %4, align 8, !dbg !2990, !tbaa !663
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2990
  br label %146, !dbg !2991

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #11, !dbg !2992
  %24 = load i8*, i8** %4, align 8, !dbg !2992, !tbaa !663
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2992
  %26 = load i8*, i8** %25, align 8, !dbg !2992, !tbaa !663
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2992
  br label %146, !dbg !2993

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #11, !dbg !2994
  %30 = load i8*, i8** %4, align 8, !dbg !2994, !tbaa !663
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2994
  %32 = load i8*, i8** %31, align 8, !dbg !2994, !tbaa !663
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2994
  %34 = load i8*, i8** %33, align 8, !dbg !2994, !tbaa !663
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2994
  br label %146, !dbg !2995

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #11, !dbg !2996
  %38 = load i8*, i8** %4, align 8, !dbg !2996, !tbaa !663
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2996
  %40 = load i8*, i8** %39, align 8, !dbg !2996, !tbaa !663
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2996
  %42 = load i8*, i8** %41, align 8, !dbg !2996, !tbaa !663
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2996
  %44 = load i8*, i8** %43, align 8, !dbg !2996, !tbaa !663
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2996
  br label %146, !dbg !2997

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #11, !dbg !2998
  %48 = load i8*, i8** %4, align 8, !dbg !2998, !tbaa !663
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2998
  %50 = load i8*, i8** %49, align 8, !dbg !2998, !tbaa !663
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2998
  %52 = load i8*, i8** %51, align 8, !dbg !2998, !tbaa !663
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2998
  %54 = load i8*, i8** %53, align 8, !dbg !2998, !tbaa !663
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2998
  %56 = load i8*, i8** %55, align 8, !dbg !2998, !tbaa !663
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2998
  br label %146, !dbg !2999

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #11, !dbg !3000
  %60 = load i8*, i8** %4, align 8, !dbg !3000, !tbaa !663
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3000
  %62 = load i8*, i8** %61, align 8, !dbg !3000, !tbaa !663
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3000
  %64 = load i8*, i8** %63, align 8, !dbg !3000, !tbaa !663
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3000
  %66 = load i8*, i8** %65, align 8, !dbg !3000, !tbaa !663
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3000
  %68 = load i8*, i8** %67, align 8, !dbg !3000, !tbaa !663
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3000
  %70 = load i8*, i8** %69, align 8, !dbg !3000, !tbaa !663
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3000
  br label %146, !dbg !3001

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #11, !dbg !3002
  %74 = load i8*, i8** %4, align 8, !dbg !3002, !tbaa !663
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3002
  %76 = load i8*, i8** %75, align 8, !dbg !3002, !tbaa !663
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3002
  %78 = load i8*, i8** %77, align 8, !dbg !3002, !tbaa !663
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3002
  %80 = load i8*, i8** %79, align 8, !dbg !3002, !tbaa !663
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3002
  %82 = load i8*, i8** %81, align 8, !dbg !3002, !tbaa !663
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3002
  %84 = load i8*, i8** %83, align 8, !dbg !3002, !tbaa !663
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3002
  %86 = load i8*, i8** %85, align 8, !dbg !3002, !tbaa !663
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3002
  br label %146, !dbg !3003

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #11, !dbg !3004
  %90 = load i8*, i8** %4, align 8, !dbg !3004, !tbaa !663
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3004
  %92 = load i8*, i8** %91, align 8, !dbg !3004, !tbaa !663
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3004
  %94 = load i8*, i8** %93, align 8, !dbg !3004, !tbaa !663
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3004
  %96 = load i8*, i8** %95, align 8, !dbg !3004, !tbaa !663
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3004
  %98 = load i8*, i8** %97, align 8, !dbg !3004, !tbaa !663
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3004
  %100 = load i8*, i8** %99, align 8, !dbg !3004, !tbaa !663
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3004
  %102 = load i8*, i8** %101, align 8, !dbg !3004, !tbaa !663
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3004
  %104 = load i8*, i8** %103, align 8, !dbg !3004, !tbaa !663
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3004
  br label %146, !dbg !3005

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #11, !dbg !3006
  %108 = load i8*, i8** %4, align 8, !dbg !3006, !tbaa !663
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3006
  %110 = load i8*, i8** %109, align 8, !dbg !3006, !tbaa !663
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3006
  %112 = load i8*, i8** %111, align 8, !dbg !3006, !tbaa !663
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3006
  %114 = load i8*, i8** %113, align 8, !dbg !3006, !tbaa !663
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3006
  %116 = load i8*, i8** %115, align 8, !dbg !3006, !tbaa !663
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3006
  %118 = load i8*, i8** %117, align 8, !dbg !3006, !tbaa !663
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3006
  %120 = load i8*, i8** %119, align 8, !dbg !3006, !tbaa !663
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3006
  %122 = load i8*, i8** %121, align 8, !dbg !3006, !tbaa !663
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3006
  %124 = load i8*, i8** %123, align 8, !dbg !3006, !tbaa !663
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3006
  br label %146, !dbg !3007

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #11, !dbg !3008
  %128 = load i8*, i8** %4, align 8, !dbg !3008, !tbaa !663
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3008
  %130 = load i8*, i8** %129, align 8, !dbg !3008, !tbaa !663
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3008
  %132 = load i8*, i8** %131, align 8, !dbg !3008, !tbaa !663
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3008
  %134 = load i8*, i8** %133, align 8, !dbg !3008, !tbaa !663
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3008
  %136 = load i8*, i8** %135, align 8, !dbg !3008, !tbaa !663
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3008
  %138 = load i8*, i8** %137, align 8, !dbg !3008, !tbaa !663
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3008
  %140 = load i8*, i8** %139, align 8, !dbg !3008, !tbaa !663
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3008
  %142 = load i8*, i8** %141, align 8, !dbg !3008, !tbaa !663
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3008
  %144 = load i8*, i8** %143, align 8, !dbg !3008, !tbaa !663
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3008
  br label %146, !dbg !3009

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3011 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %2, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8** %4, metadata !3019, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 0, metadata !3020, metadata !DIExpression()), !dbg !3026
  br label %6, !dbg !3027

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3029
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3031
  %9 = load i8*, i8** %8, align 8, !dbg !3031, !tbaa !663
  %10 = icmp eq i8* %9, null, !dbg !3032
  %11 = add i64 %7, 1, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %11, metadata !3020, metadata !DIExpression()), !dbg !3026
  br i1 %10, label %12, label %6, !dbg !3032, !llvm.loop !3034

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %7, metadata !3020, metadata !DIExpression()), !dbg !3026
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3038 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3049, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %1, metadata !3050, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %2, metadata !3051, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %3, metadata !3052, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3053, metadata !DIExpression()), !dbg !3061
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3062
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3062
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3055, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 0, metadata !3054, metadata !DIExpression()), !dbg !3064
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3054, metadata !DIExpression()), !dbg !3064
  %11 = load i32, i32* %8, align 8, !dbg !3065
  %12 = icmp ult i32 %11, 41, !dbg !3065
  br i1 %12, label %13, label %18, !dbg !3065

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3065
  %15 = sext i32 %11 to i64, !dbg !3065
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3065
  %17 = add i32 %11, 8, !dbg !3065
  store i32 %17, i32* %8, align 8, !dbg !3065
  br label %21, !dbg !3065

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3065
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3065
  store i8* %20, i8** %10, align 8, !dbg !3065
  br label %21, !dbg !3065

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3065
  %25 = load i8*, i8** %24, align 8, !dbg !3065
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3068
  store i8* %25, i8** %26, align 16, !dbg !3069, !tbaa !663
  %27 = icmp eq i8* %25, null, !dbg !3070
  br i1 %27, label %30, label %28, !dbg !3071

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 1, metadata !3054, metadata !DIExpression()), !dbg !3064
  %29 = icmp ult i32 %22, 41, !dbg !3065
  br i1 %29, label %35, label %32, !dbg !3065

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3072
  call void @llvm.dbg.value(metadata i64 %31, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %31, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3073
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3074
  ret void, !dbg !3074

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3065
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3065
  store i8* %34, i8** %10, align 8, !dbg !3065
  br label %40, !dbg !3065

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3065
  %37 = sext i32 %22 to i64, !dbg !3065
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3065
  %39 = add i32 %22, 8, !dbg !3065
  store i32 %39, i32* %8, align 8, !dbg !3065
  br label %40, !dbg !3065

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3065
  %44 = load i8*, i8** %43, align 8, !dbg !3065
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3068
  store i8* %44, i8** %45, align 8, !dbg !3069, !tbaa !663
  %46 = icmp eq i8* %44, null, !dbg !3070
  br i1 %46, label %30, label %47, !dbg !3071

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 2, metadata !3054, metadata !DIExpression()), !dbg !3064
  %48 = icmp ult i32 %41, 41, !dbg !3065
  br i1 %48, label %52, label %49, !dbg !3065

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3065
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3065
  store i8* %51, i8** %10, align 8, !dbg !3065
  br label %57, !dbg !3065

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3065
  %54 = sext i32 %41 to i64, !dbg !3065
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3065
  %56 = add i32 %41, 8, !dbg !3065
  store i32 %56, i32* %8, align 8, !dbg !3065
  br label %57, !dbg !3065

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3065
  %61 = load i8*, i8** %60, align 8, !dbg !3065
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3068
  store i8* %61, i8** %62, align 16, !dbg !3069, !tbaa !663
  %63 = icmp eq i8* %61, null, !dbg !3070
  br i1 %63, label %30, label %64, !dbg !3071

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 3, metadata !3054, metadata !DIExpression()), !dbg !3064
  %65 = icmp ult i32 %58, 41, !dbg !3065
  br i1 %65, label %69, label %66, !dbg !3065

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3065
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3065
  store i8* %68, i8** %10, align 8, !dbg !3065
  br label %74, !dbg !3065

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3065
  %71 = sext i32 %58 to i64, !dbg !3065
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3065
  %73 = add i32 %58, 8, !dbg !3065
  store i32 %73, i32* %8, align 8, !dbg !3065
  br label %74, !dbg !3065

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3065
  %78 = load i8*, i8** %77, align 8, !dbg !3065
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3068
  store i8* %78, i8** %79, align 8, !dbg !3069, !tbaa !663
  %80 = icmp eq i8* %78, null, !dbg !3070
  br i1 %80, label %30, label %81, !dbg !3071

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 4, metadata !3054, metadata !DIExpression()), !dbg !3064
  %82 = icmp ult i32 %75, 41, !dbg !3065
  br i1 %82, label %86, label %83, !dbg !3065

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3065
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3065
  store i8* %85, i8** %10, align 8, !dbg !3065
  br label %91, !dbg !3065

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3065
  %88 = sext i32 %75 to i64, !dbg !3065
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3065
  %90 = add i32 %75, 8, !dbg !3065
  store i32 %90, i32* %8, align 8, !dbg !3065
  br label %91, !dbg !3065

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3065
  %95 = load i8*, i8** %94, align 8, !dbg !3065
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3068
  store i8* %95, i8** %96, align 16, !dbg !3069, !tbaa !663
  %97 = icmp eq i8* %95, null, !dbg !3070
  br i1 %97, label %30, label %98, !dbg !3071

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 5, metadata !3054, metadata !DIExpression()), !dbg !3064
  %99 = icmp ult i32 %92, 41, !dbg !3065
  br i1 %99, label %103, label %100, !dbg !3065

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3065
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3065
  store i8* %102, i8** %10, align 8, !dbg !3065
  br label %108, !dbg !3065

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3065
  %105 = sext i32 %92 to i64, !dbg !3065
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3065
  %107 = add i32 %92, 8, !dbg !3065
  store i32 %107, i32* %8, align 8, !dbg !3065
  br label %108, !dbg !3065

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3065
  %111 = load i8*, i8** %110, align 8, !dbg !3065
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3068
  store i8* %111, i8** %112, align 8, !dbg !3069, !tbaa !663
  %113 = icmp eq i8* %111, null, !dbg !3070
  br i1 %113, label %30, label %114, !dbg !3071

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 6, metadata !3054, metadata !DIExpression()), !dbg !3064
  %115 = load i8*, i8** %10, align 8, !dbg !3065
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3065
  store i8* %116, i8** %10, align 8, !dbg !3065
  %117 = bitcast i8* %115 to i8**, !dbg !3065
  %118 = load i8*, i8** %117, align 8, !dbg !3065
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3068
  store i8* %118, i8** %119, align 16, !dbg !3069, !tbaa !663
  %120 = icmp eq i8* %118, null, !dbg !3070
  br i1 %120, label %30, label %121, !dbg !3071

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 7, metadata !3054, metadata !DIExpression()), !dbg !3064
  %122 = load i8*, i8** %10, align 8, !dbg !3065
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3065
  store i8* %123, i8** %10, align 8, !dbg !3065
  %124 = bitcast i8* %122 to i8**, !dbg !3065
  %125 = load i8*, i8** %124, align 8, !dbg !3065
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3068
  store i8* %125, i8** %126, align 8, !dbg !3069, !tbaa !663
  %127 = icmp eq i8* %125, null, !dbg !3070
  br i1 %127, label %30, label %128, !dbg !3071

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 8, metadata !3054, metadata !DIExpression()), !dbg !3064
  %129 = load i8*, i8** %10, align 8, !dbg !3065
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3065
  store i8* %130, i8** %10, align 8, !dbg !3065
  %131 = bitcast i8* %129 to i8**, !dbg !3065
  %132 = load i8*, i8** %131, align 8, !dbg !3065
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3068
  store i8* %132, i8** %133, align 16, !dbg !3069, !tbaa !663
  %134 = icmp eq i8* %132, null, !dbg !3070
  br i1 %134, label %30, label %135, !dbg !3071

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 9, metadata !3054, metadata !DIExpression()), !dbg !3064
  %136 = load i8*, i8** %10, align 8, !dbg !3065
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3065
  store i8* %137, i8** %10, align 8, !dbg !3065
  %138 = bitcast i8* %136 to i8**, !dbg !3065
  %139 = load i8*, i8** %138, align 8, !dbg !3065
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3068
  store i8* %139, i8** %140, align 8, !dbg !3069, !tbaa !663
  %141 = icmp eq i8* %139, null, !dbg !3070
  %142 = select i1 %141, i64 9, i64 10, !dbg !3071
  br label %30, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3075 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3079, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !3080, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !3081, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8* %3, metadata !3082, metadata !DIExpression()), !dbg !3093
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3094
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3083, metadata !DIExpression()), !dbg !3095
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3096
  call void @llvm.va_start(i8* nonnull %6), !dbg !3096
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3097
  call void @llvm.va_end(i8* nonnull %6), !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3099
  ret void, !dbg !3099
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3100 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #11, !dbg !3101
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #11, !dbg !3101
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #11, !dbg !3102
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.107, i64 0, i64 0)) #11, !dbg !3102
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #11, !dbg !3103
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3103, !tbaa !663
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3105 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3112
  %3 = udiv i64 9223372036854775807, %1, !dbg !3113
  %4 = icmp ult i64 %3, %0, !dbg !3113
  br i1 %4, label %5, label %6, !dbg !3115

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3116
  unreachable, !dbg !3116

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %7, metadata !3118, metadata !DIExpression()) #11, !dbg !3125
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %8, metadata !3124, metadata !DIExpression()) #11, !dbg !3128
  %9 = icmp eq i8* %8, null, !dbg !3129
  %10 = icmp ne i64 %7, 0, !dbg !3131
  %11 = and i1 %10, %9, !dbg !3132
  br i1 %11, label %12, label %13, !dbg !3132

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3133
  unreachable, !dbg !3133

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3134
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3119 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3135
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %2, metadata !3124, metadata !DIExpression()), !dbg !3137
  %3 = icmp eq i8* %2, null, !dbg !3138
  %4 = icmp ne i64 %0, 0, !dbg !3139
  %5 = and i1 %4, %3, !dbg !3140
  br i1 %5, label %6, label %7, !dbg !3140

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3141
  unreachable, !dbg !3141

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3142
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !3149, metadata !DIExpression()), !dbg !3152
  %4 = udiv i64 9223372036854775807, %2, !dbg !3153
  %5 = icmp ult i64 %4, %1, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3155

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3156
  unreachable, !dbg !3156

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #11, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %8, metadata !3163, metadata !DIExpression()) #11, !dbg !3166
  %9 = icmp eq i64 %8, 0, !dbg !3167
  %10 = icmp ne i8* %0, null, !dbg !3169
  %11 = and i1 %10, %9, !dbg !3170
  br i1 %11, label %12, label %13, !dbg !3170

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3171
  br label %19, !dbg !3173

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %14, metadata !3158, metadata !DIExpression()) #11, !dbg !3164
  %15 = icmp eq i8* %14, null, !dbg !3175
  %16 = icmp ne i64 %8, 0, !dbg !3177
  %17 = and i1 %16, %15, !dbg !3178
  br i1 %17, label %18, label %19, !dbg !3178

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3179
  unreachable, !dbg !3179

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3180
  ret i8* %20, !dbg !3181
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3183
  %3 = icmp eq i64 %1, 0, !dbg !3184
  %4 = icmp ne i8* %0, null, !dbg !3185
  %5 = and i1 %4, %3, !dbg !3186
  br i1 %5, label %6, label %7, !dbg !3186

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3187
  br label %13, !dbg !3188

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3189
  call void @llvm.dbg.value(metadata i8* %8, metadata !3158, metadata !DIExpression()), !dbg !3182
  %9 = icmp eq i8* %8, null, !dbg !3190
  %10 = icmp ne i64 %1, 0, !dbg !3191
  %11 = and i1 %10, %9, !dbg !3192
  br i1 %11, label %12, label %13, !dbg !3192

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3193
  unreachable, !dbg !3193

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3194
  ret i8* %14, !dbg !3195
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %2, metadata !213, metadata !DIExpression()), !dbg !3198
  %4 = load i64, i64* %1, align 8, !dbg !3199, !tbaa !2239
  call void @llvm.dbg.value(metadata i64 %4, metadata !214, metadata !DIExpression()), !dbg !3200
  %5 = icmp eq i8* %0, null, !dbg !3201
  br i1 %5, label %6, label %20, !dbg !3203

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3204
  br i1 %7, label %8, label %13, !dbg !3207

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %9, metadata !214, metadata !DIExpression()), !dbg !3200
  %10 = icmp ugt i64 %2, 128, !dbg !3210
  %11 = zext i1 %10 to i64, !dbg !3210
  %12 = add nuw nsw i64 %9, %11, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %12, metadata !214, metadata !DIExpression()), !dbg !3200
  br label %13, !dbg !3212

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3213
  call void @llvm.dbg.value(metadata i64 %14, metadata !214, metadata !DIExpression()), !dbg !3200
  %15 = udiv i64 9223372036854775807, %2, !dbg !3214
  %16 = icmp ult i64 %15, %14, !dbg !3214
  br i1 %16, label %19, label %17, !dbg !3216

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3200
  store i64 %14, i64* %1, align 8, !dbg !3217, !tbaa !2239
  %18 = mul i64 %14, %2, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #11, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %28, metadata !3163, metadata !DIExpression()) #11, !dbg !3221
  br label %31, !dbg !3222

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3223
  unreachable, !dbg !3223

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3224
  %22 = icmp ugt i64 %21, %4, !dbg !3227
  br i1 %22, label %24, label %23, !dbg !3228

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3229
  unreachable, !dbg !3229

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3230
  %26 = add i64 %4, 1, !dbg !3231
  %27 = add i64 %26, %25, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3200
  store i64 %27, i64* %1, align 8, !dbg !3217, !tbaa !2239
  %28 = mul i64 %27, %2, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #11, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %28, metadata !3163, metadata !DIExpression()) #11, !dbg !3221
  %29 = icmp eq i64 %28, 0, !dbg !3233
  br i1 %29, label %30, label %31, !dbg !3222

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3234
  br label %38, !dbg !3235

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %33, metadata !3158, metadata !DIExpression()) #11, !dbg !3219
  %34 = icmp eq i8* %33, null, !dbg !3237
  %35 = icmp ne i64 %32, 0, !dbg !3238
  %36 = and i1 %35, %34, !dbg !3239
  br i1 %36, label %37, label %38, !dbg !3239

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3240
  unreachable, !dbg !3240

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3241
  ret i8* %39, !dbg !3242
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()) #11, !dbg !3247
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !3124, metadata !DIExpression()) #11, !dbg !3250
  %3 = icmp eq i8* %2, null, !dbg !3251
  %4 = icmp ne i64 %0, 0, !dbg !3252
  %5 = and i1 %4, %3, !dbg !3253
  br i1 %5, label %6, label %7, !dbg !3253

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3254
  unreachable, !dbg !3254

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64* %1, metadata !3261, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()) #11, !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !213, metadata !DIExpression()) #11, !dbg !3267
  %3 = load i64, i64* %1, align 8, !dbg !3268, !tbaa !2239
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #11, !dbg !3269
  %4 = icmp eq i8* %0, null, !dbg !3270
  br i1 %4, label %5, label %12, !dbg !3271

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3272
  br i1 %6, label %9, label %7, !dbg !3273

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #11, !dbg !3269
  %8 = icmp slt i64 %3, 0, !dbg !3274
  br i1 %8, label %11, label %9, !dbg !3275

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #11, !dbg !3269
  store i64 %10, i64* %1, align 8, !dbg !3276, !tbaa !2239
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #11, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %18, metadata !3163, metadata !DIExpression()) #11, !dbg !3279
  br label %21, !dbg !3280

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3281
  unreachable, !dbg !3281

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3282
  br i1 %13, label %15, label %14, !dbg !3283

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3284
  unreachable, !dbg !3284

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3285
  %17 = add i64 %3, 1, !dbg !3286
  %18 = add i64 %17, %16, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #11, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #11, !dbg !3269
  store i64 %18, i64* %1, align 8, !dbg !3276, !tbaa !2239
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #11, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %18, metadata !3163, metadata !DIExpression()) #11, !dbg !3279
  %19 = icmp eq i64 %18, 0, !dbg !3288
  br i1 %19, label %20, label %21, !dbg !3280

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3289
  br label %28, !dbg !3290

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %23, metadata !3158, metadata !DIExpression()) #11, !dbg !3277
  %24 = icmp eq i8* %23, null, !dbg !3292
  %25 = icmp ne i64 %22, 0, !dbg !3293
  %26 = and i1 %25, %24, !dbg !3294
  br i1 %26, label %27, label %28, !dbg !3294

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3295
  unreachable, !dbg !3295

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3296
  ret i8* %29, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3298 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()) #11, !dbg !3302
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %2, metadata !3124, metadata !DIExpression()) #11, !dbg !3305
  %3 = icmp eq i8* %2, null, !dbg !3306
  %4 = icmp ne i64 %0, 0, !dbg !3307
  %5 = and i1 %4, %3, !dbg !3308
  br i1 %5, label %6, label %7, !dbg !3308

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3309
  unreachable, !dbg !3309

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3310
  ret i8* %2, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3312 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3318
  %3 = udiv i64 9223372036854775807, %1, !dbg !3319
  %4 = icmp ult i64 %3, %0, !dbg !3319
  br i1 %4, label %8, label %5, !dbg !3321

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %6, metadata !3316, metadata !DIExpression()), !dbg !3323
  %7 = icmp eq i8* %6, null, !dbg !3324
  br i1 %7, label %8, label %9, !dbg !3325

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3326
  unreachable, !dbg !3326

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()) #11, !dbg !3338
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %3, metadata !3124, metadata !DIExpression()) #11, !dbg !3341
  %4 = icmp eq i8* %3, null, !dbg !3342
  %5 = icmp ne i64 %1, 0, !dbg !3343
  %6 = and i1 %5, %4, !dbg !3344
  br i1 %6, label %7, label %8, !dbg !3344

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3345
  unreachable, !dbg !3345

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3346
  ret i8* %3, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()), !dbg !3351
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3352
  %3 = add i64 %2, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #11, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %3, metadata !3335, metadata !DIExpression()) #11, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3118, metadata !DIExpression()) #11, !dbg !3357
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %4, metadata !3124, metadata !DIExpression()) #11, !dbg !3360
  %5 = icmp eq i8* %4, null, !dbg !3361
  %6 = icmp ne i64 %3, 0, !dbg !3362
  %7 = and i1 %6, %5, !dbg !3363
  br i1 %7, label %8, label %9, !dbg !3363

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3364
  unreachable, !dbg !3364

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3365
  ret i8* %4, !dbg !3366
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3367 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3369, !tbaa !742
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #11, !dbg !3370
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #11, !dbg !3371
  tail call void @abort() #15, !dbg !3372
  unreachable, !dbg !3372
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3373 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %1, metadata !3377, metadata !DIExpression()), !dbg !3383
  %3 = icmp eq i64 %0, 0, !dbg !3384
  %4 = icmp eq i64 %1, 0, !dbg !3385
  %5 = or i1 %3, %4, !dbg !3386
  br i1 %5, label %12, label %6, !dbg !3386

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %7, metadata !3379, metadata !DIExpression()), !dbg !3388
  %8 = udiv i64 %7, %1, !dbg !3389
  %9 = icmp eq i64 %8, %0, !dbg !3391
  br i1 %9, label %12, label %10, !dbg !3392

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3393
  store i32 12, i32* %11, align 4, !dbg !3395, !tbaa !742
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3376, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %13, metadata !3377, metadata !DIExpression()), !dbg !3383
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %15, metadata !3378, metadata !DIExpression()), !dbg !3397
  br label %16, !dbg !3398

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3399
  ret i8* %17, !dbg !3400
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrlen(i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3407, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, metadata !3408, metadata !DIExpression()), !dbg !3411
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !3412
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, metadata !3408, metadata !DIExpression()), !dbg !3411
  %6 = tail call i64 @rpl_mbrtowc(i32* null, i8* %0, i64 %1, %struct.__mbstate_t* %5) #11, !dbg !3415
  ret i64 %6, !dbg !3416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3417 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3434, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3435, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %2, metadata !3436, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3437, metadata !DIExpression()), !dbg !3446
  %6 = bitcast i32* %5 to i8*, !dbg !3447
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3447
  %7 = icmp eq i32* %0, null, !dbg !3448
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3450
  call void @llvm.dbg.value(metadata i32* %8, metadata !3434, metadata !DIExpression()), !dbg !3443
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %9, metadata !3438, metadata !DIExpression()), !dbg !3452
  %10 = icmp ugt i64 %9, -3, !dbg !3453
  %11 = icmp ne i64 %2, 0, !dbg !3454
  %12 = and i1 %11, %10, !dbg !3455
  br i1 %12, label %13, label %18, !dbg !3455

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3456
  br i1 %14, label %18, label %15, !dbg !3457

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3458, !tbaa !873
  call void @llvm.dbg.value(metadata i8 %16, metadata !3440, metadata !DIExpression()), !dbg !3459
  %17 = zext i8 %16 to i32, !dbg !3460
  store i32 %17, i32* %8, align 4, !dbg !3461, !tbaa !742
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3463
  ret i64 %19, !dbg !3463
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3464 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3503, metadata !DIExpression()), !dbg !3508
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3509
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3510, metadata !DIExpression()), !dbg !3514
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3516
  %4 = load i32, i32* %3, align 8, !dbg !3516, !tbaa !3517
  %5 = and i32 %4, 32, !dbg !3516
  %6 = icmp eq i32 %5, 0, !dbg !3519
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3520
  %8 = icmp ne i32 %7, 0, !dbg !3521
  br i1 %6, label %9, label %19, !dbg !3522

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3524
  %11 = xor i1 %8, true, !dbg !3525
  %12 = or i1 %10, %11, !dbg !3525
  %13 = sext i1 %8 to i32, !dbg !3525
  br i1 %12, label %22, label %14, !dbg !3525

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3526
  %16 = load i32, i32* %15, align 4, !dbg !3526, !tbaa !742
  %17 = icmp ne i32 %16, 9, !dbg !3527
  %18 = sext i1 %17 to i32, !dbg !3528
  br label %22, !dbg !3528

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3529

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3531
  store i32 0, i32* %21, align 4, !dbg !3533, !tbaa !742
  br label %22, !dbg !3531

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3534
  ret i32 %23, !dbg !3535
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8 1, metadata !3542, metadata !DIExpression()), !dbg !3545
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %2, metadata !3543, metadata !DIExpression()), !dbg !3547
  %3 = icmp eq i8* %2, null, !dbg !3548
  br i1 %3, label %11, label %4, !dbg !3550

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0)) #14, !dbg !3551
  %6 = icmp eq i32 %5, 0, !dbg !3556
  br i1 %6, label %10, label %7, !dbg !3557

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #14, !dbg !3558
  %9 = icmp eq i32 %8, 0, !dbg !3559
  br i1 %9, label %10, label %11, !dbg !3560

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3542, metadata !DIExpression()), !dbg !3545
  br label %11, !dbg !3561

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3563 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %1, metadata !3568, metadata !DIExpression()), !dbg !3570
  %2 = icmp eq i8* %1, null, !dbg !3571
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %1, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %3, metadata !3568, metadata !DIExpression()), !dbg !3570
  %4 = load i8, i8* %3, align 1, !dbg !3574, !tbaa !873
  %5 = icmp eq i8 %4, 0, !dbg !3578
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i8* %3, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %6, metadata !3568, metadata !DIExpression()), !dbg !3570
  ret i8* %6, !dbg !3580
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3581 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 0, metadata !3621, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 0, metadata !3623, metadata !DIExpression()), !dbg !3626
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %2, metadata !3622, metadata !DIExpression()), !dbg !3628
  %3 = icmp slt i32 %2, 0, !dbg !3629
  br i1 %3, label %4, label %6, !dbg !3631

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3632
  br label %24, !dbg !3633

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3634
  %8 = icmp eq i32 %7, 0, !dbg !3634
  br i1 %8, label %13, label %9, !dbg !3636

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3637
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3638
  %12 = icmp eq i64 %11, -1, !dbg !3639
  br i1 %12, label %16, label %13, !dbg !3640

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3641
  %15 = icmp eq i32 %14, 0, !dbg !3641
  br i1 %15, label %16, label %18, !dbg !3642

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3621, metadata !DIExpression()), !dbg !3625
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %21, metadata !3623, metadata !DIExpression()), !dbg !3626
  br label %24, !dbg !3644

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3645
  %20 = load i32, i32* %19, align 4, !dbg !3645, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %20, metadata !3621, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 %20, metadata !3621, metadata !DIExpression()), !dbg !3625
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %21, metadata !3623, metadata !DIExpression()), !dbg !3626
  %22 = icmp eq i32 %20, 0, !dbg !3646
  br i1 %22, label %24, label %23, !dbg !3644

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3648, !tbaa !742
  call void @llvm.dbg.value(metadata i32 -1, metadata !3623, metadata !DIExpression()), !dbg !3626
  br label %24, !dbg !3650

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3651
  ret i32 %25, !dbg !3652
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3653 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3692, metadata !DIExpression()), !dbg !3693
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3694
  br i1 %2, label %6, label %3, !dbg !3696

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3697
  %5 = icmp eq i32 %4, 0, !dbg !3697
  br i1 %5, label %6, label %8, !dbg !3698

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3699
  br label %17, !dbg !3700

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3701, metadata !DIExpression()) #11, !dbg !3706
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3708
  %10 = load i32, i32* %9, align 8, !dbg !3708, !tbaa !3517
  %11 = and i32 %10, 256, !dbg !3710
  %12 = icmp eq i32 %11, 0, !dbg !3710
  br i1 %12, label %15, label %13, !dbg !3711

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3712
  br label %15, !dbg !3712

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3713
  br label %17, !dbg !3714

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3715
  ret i32 %18, !dbg !3716
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3717 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3757, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 %2, metadata !3759, metadata !DIExpression()), !dbg !3765
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3766
  %5 = load i8*, i8** %4, align 8, !dbg !3766, !tbaa !3767
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3768
  %7 = load i8*, i8** %6, align 8, !dbg !3768, !tbaa !3769
  %8 = icmp eq i8* %5, %7, !dbg !3770
  br i1 %8, label %9, label %28, !dbg !3771

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3772
  %11 = load i8*, i8** %10, align 8, !dbg !3772, !tbaa !3773
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3774
  %13 = load i8*, i8** %12, align 8, !dbg !3774, !tbaa !3775
  %14 = icmp eq i8* %11, %13, !dbg !3776
  br i1 %14, label %15, label %28, !dbg !3777

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3778
  %17 = load i8*, i8** %16, align 8, !dbg !3778, !tbaa !3779
  %18 = icmp eq i8* %17, null, !dbg !3780
  br i1 %18, label %19, label %28, !dbg !3781

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3782
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %21, metadata !3760, metadata !DIExpression()), !dbg !3784
  %22 = icmp eq i64 %21, -1, !dbg !3785
  br i1 %22, label %30, label %23, !dbg !3787

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3788
  %25 = load i32, i32* %24, align 8, !dbg !3789, !tbaa !3517
  %26 = and i32 %25, -17, !dbg !3789
  store i32 %26, i32* %24, align 8, !dbg !3789, !tbaa !3517
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3790
  store i64 %21, i64* %27, align 8, !dbg !3791, !tbaa !3792
  br label %30, !dbg !3793

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3794
  br label %30, !dbg !3795

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3796
  ret i32 %31, !dbg !3797
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !66, !72, !81, !88, !95, !194, !167, !201, !218, !220, !176, !222, !225, !227, !229, !618, !620, !622}
!llvm.ident = !{!624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624}
!llvm.module.flags = !{!625, !626, !627, !628, !629}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !48)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 24, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!23 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "_PC_VDISABLE", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17, isUnsigned: true)
!41 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18, isUnsigned: true)
!42 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19, isUnsigned: true)
!43 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20, isUnsigned: true)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !{!0}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !62)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !52, line: 50, size: 256, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !{!54, !57, !59, !61}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 52, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !51, file: !52, line: 55, baseType: !58, size: 32, offset: 64)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !51, file: !52, line: 56, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !52, line: 57, baseType: !58, size: 32, offset: 192)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "Version", scope: !66, file: !67, line: 2, type: !55, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !69)
!67 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!68 = !{}
!69 = !{!64}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "file_name", scope: !72, file: !77, line: 46, type: !55, isLocal: true, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !74)
!73 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!74 = !{!70, !75}
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !72, file: !77, line: 56, type: !78, isLocal: true, isDefinition: true)
!77 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "exit_failure", scope: !81, file: !84, line: 24, type: !85, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !83)
!82 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!83 = !{!79}
!84 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "program_name", scope: !88, file: !92, line: 33, type: !55, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !90, globals: !91)
!89 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!90 = !{!47, !45}
!91 = !{!86}
!92 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !95, file: !126, line: 85, type: !161, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !118, globals: !123)
!96 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !{!5, !98, !103}
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 46, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!118 = !{!58, !119, !120, !45}
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 62, baseType: !122)
!121 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !{!93, !124, !131, !143, !145, !150, !157, !159}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !95, file: !126, line: 101, type: !127, isLocal: false, isDefinition: true)
!126 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 320, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!129 = !{!130}
!130 = !DISubrange(count: 10)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !95, file: !126, line: 1052, type: !133, isLocal: false, isDefinition: true)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !126, line: 65, size: 448, elements: !134)
!134 = !{!135, !136, !137, !141, !142}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !133, file: !126, line: 68, baseType: !5, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !126, line: 71, baseType: !58, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !133, file: !126, line: 75, baseType: !138, size: 256, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !133, file: !126, line: 78, baseType: !55, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !133, file: !126, line: 81, baseType: !55, size: 64, offset: 384)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !95, file: !126, line: 116, type: !133, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "slot0", scope: !95, file: !126, line: 842, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec", scope: !95, file: !126, line: 845, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !126, line: 834, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !126, line: 836, baseType: !120, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !126, line: 837, baseType: !45, size: 64, offset: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "nslots", scope: !95, file: !126, line: 843, type: !58, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "slotvec0", scope: !95, file: !126, line: 844, type: !153, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !167, file: !170, line: 26, type: !171, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !169)
!168 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{!165}
!170 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "internal_state", scope: !176, file: !180, line: 24, type: !181, isLocal: true, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !178, globals: !179)
!177 = !DIFile(filename: "./lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = !{!47}
!179 = !{!174}
!180 = !DIFile(filename: "lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !182, line: 6, baseType: !183)
!182 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !184, line: 21, baseType: !185)
!184 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 13, size: 64, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !185, file: !184, line: 15, baseType: !58, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !185, file: !184, line: 20, baseType: !189, size: 32, offset: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 16, size: 32, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !189, file: !184, line: 18, baseType: !7, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !189, file: !184, line: 19, baseType: !193, size: 32)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !62)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !178)
!195 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!197}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 41, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !{!200}
!200 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !217)
!202 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !206, file: !205, line: 186, baseType: !7, size: 32, elements: !215)
!205 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = distinct !DISubprogram(name: "x2nrealloc", scope: !205, file: !205, line: 174, type: !207, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!47, !47, !209, !120}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(name: "p", arg: 1, scope: !206, file: !205, line: 174, type: !47)
!212 = !DILocalVariable(name: "pn", arg: 2, scope: !206, file: !205, line: 174, type: !209)
!213 = !DILocalVariable(name: "s", arg: 3, scope: !206, file: !205, line: 174, type: !120)
!214 = !DILocalVariable(name: "n", scope: !206, file: !205, line: 176, type: !120)
!215 = !{!216}
!216 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!217 = !{!120, !45, !47}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!219 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !178)
!221 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !224)
!223 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!224 = !{!120}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!226 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!228 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !231, retainedTypes: !178)
!230 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!231 = !{!232}
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 41, baseType: !7, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!235 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!236 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!237 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!238 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!239 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!240 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!241 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!242 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!244 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!245 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!246 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!247 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!273 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!274 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!275 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!276 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!277 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!278 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!279 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!280 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!281 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!282 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!283 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!284 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!343 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!430 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!504 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!505 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!506 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!507 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!508 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!509 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!511 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!512 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!513 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!514 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!515 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!516 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!517 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!519 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!520 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!522 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!523 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!524 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!550 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!551 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!552 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!553 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!554 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!559 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!560 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!561 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!562 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!619 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !178)
!621 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !178)
!623 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!624 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!625 = !{i32 2, !"Dwarf Version", i32 4}
!626 = !{i32 2, !"Debug Info Version", i32 3}
!627 = !{i32 1, !"wchar_size", i32 4}
!628 = !{i32 7, !"PIC Level", i32 2}
!629 = !{i32 7, !"PIE Level", i32 2}
!630 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !631, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !58}
!633 = !{!634}
!634 = !DILocalVariable(name: "status", arg: 1, scope: !630, file: !3, line: 82, type: !58)
!635 = !DILocalVariable(name: "infomap", scope: !636, file: !637, line: 632, type: !651)
!636 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !637, file: !637, line: 630, type: !638, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!637 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!638 = !DISubroutineType(types: !639)
!639 = !{null, !55}
!640 = !{!641, !635, !642, !643, !650}
!641 = !DILocalVariable(name: "program", arg: 1, scope: !636, file: !637, line: 630, type: !55)
!642 = !DILocalVariable(name: "node", scope: !636, file: !637, line: 642, type: !55)
!643 = !DILocalVariable(name: "map_prog", scope: !636, file: !637, line: 643, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !636, file: !637, line: 632, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !646, file: !637, line: 632, baseType: !55, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !637, line: 632, baseType: !55, size: 64, offset: 64)
!650 = !DILocalVariable(name: "lc_messages", scope: !636, file: !637, line: 655, type: !55)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 896, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 7)
!654 = !DILocation(line: 632, column: 67, scope: !636, inlinedAt: !655)
!655 = distinct !DILocation(line: 98, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 87, column: 5)
!657 = distinct !DILexicalBlock(scope: !630, file: !3, line: 84, column: 7)
!658 = !DILocation(line: 82, column: 12, scope: !630)
!659 = !DILocation(line: 84, column: 14, scope: !657)
!660 = !DILocation(line: 84, column: 7, scope: !630)
!661 = !DILocation(line: 85, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !3, line: 85, column: 5)
!663 = !{!664, !664, i64 0}
!664 = !{!"any pointer", !665, i64 0}
!665 = !{!"omnipotent char", !666, i64 0}
!666 = !{!"Simple C/C++ TBAA"}
!667 = !DILocation(line: 88, column: 7, scope: !656)
!668 = !DILocation(line: 89, column: 7, scope: !656)
!669 = !DILocation(line: 96, column: 7, scope: !656)
!670 = !DILocation(line: 97, column: 7, scope: !656)
!671 = !DILocation(line: 632, column: 3, scope: !636, inlinedAt: !655)
!672 = !DILocation(line: 643, column: 36, scope: !636, inlinedAt: !655)
!673 = !DILocation(line: 643, column: 25, scope: !636, inlinedAt: !655)
!674 = !DILocation(line: 645, column: 33, scope: !636, inlinedAt: !655)
!675 = !DILocation(line: 645, column: 3, scope: !636, inlinedAt: !655)
!676 = !DILocation(line: 646, column: 13, scope: !636, inlinedAt: !655)
!677 = !DILocation(line: 645, column: 20, scope: !636, inlinedAt: !655)
!678 = !{!679, !664, i64 0}
!679 = !{!"infomap", !664, i64 0, !664, i64 8}
!680 = !DILocation(line: 645, column: 10, scope: !636, inlinedAt: !655)
!681 = !DILocation(line: 645, column: 28, scope: !636, inlinedAt: !655)
!682 = distinct !{!682, !683, !684}
!683 = !DILocation(line: 645, column: 3, scope: !636)
!684 = !DILocation(line: 646, column: 13, scope: !636)
!685 = !DILocation(line: 648, column: 17, scope: !686, inlinedAt: !655)
!686 = distinct !DILexicalBlock(scope: !636, file: !637, line: 648, column: 7)
!687 = !{!679, !664, i64 8}
!688 = !DILocation(line: 648, column: 7, scope: !686, inlinedAt: !655)
!689 = !DILocation(line: 648, column: 7, scope: !636, inlinedAt: !655)
!690 = !DILocation(line: 642, column: 15, scope: !636, inlinedAt: !655)
!691 = !DILocation(line: 651, column: 3, scope: !636, inlinedAt: !655)
!692 = !DILocation(line: 655, column: 29, scope: !636, inlinedAt: !655)
!693 = !DILocation(line: 655, column: 15, scope: !636, inlinedAt: !655)
!694 = !DILocation(line: 656, column: 7, scope: !695, inlinedAt: !655)
!695 = distinct !DILexicalBlock(scope: !636, file: !637, line: 656, column: 7)
!696 = !DILocation(line: 656, column: 19, scope: !695, inlinedAt: !655)
!697 = !DILocation(line: 656, column: 22, scope: !695, inlinedAt: !655)
!698 = !DILocation(line: 656, column: 7, scope: !636, inlinedAt: !655)
!699 = !DILocation(line: 662, column: 7, scope: !700, inlinedAt: !655)
!700 = distinct !DILexicalBlock(scope: !695, file: !637, line: 657, column: 5)
!701 = !DILocation(line: 664, column: 5, scope: !700, inlinedAt: !655)
!702 = !DILocation(line: 665, column: 3, scope: !636, inlinedAt: !655)
!703 = !DILocation(line: 667, column: 3, scope: !636, inlinedAt: !655)
!704 = !DILocation(line: 669, column: 1, scope: !636, inlinedAt: !655)
!705 = !DILocation(line: 100, column: 3, scope: !630)
!706 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !707, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!58, !58, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DILocalVariable(name: "argc", arg: 1, scope: !706, file: !3, line: 104, type: !58)
!712 = !DILocalVariable(name: "argv", arg: 2, scope: !706, file: !3, line: 104, type: !709)
!713 = !DILocalVariable(name: "ok", scope: !706, file: !3, line: 106, type: !78)
!714 = !DILocalVariable(name: "check_basic_portability", scope: !706, file: !3, line: 107, type: !78)
!715 = !DILocalVariable(name: "check_extra_portability", scope: !706, file: !3, line: 108, type: !78)
!716 = !DILocalVariable(name: "optc", scope: !706, file: !3, line: 109, type: !58)
!717 = !DILocation(line: 104, column: 11, scope: !706)
!718 = !DILocation(line: 104, column: 24, scope: !706)
!719 = !DILocation(line: 106, column: 8, scope: !706)
!720 = !DILocation(line: 107, column: 8, scope: !706)
!721 = !DILocation(line: 108, column: 8, scope: !706)
!722 = !DILocation(line: 112, column: 21, scope: !706)
!723 = !DILocation(line: 112, column: 3, scope: !706)
!724 = !DILocation(line: 113, column: 3, scope: !706)
!725 = !DILocation(line: 114, column: 3, scope: !706)
!726 = !DILocation(line: 115, column: 3, scope: !706)
!727 = !DILocation(line: 117, column: 3, scope: !706)
!728 = !DILocation(line: 119, column: 3, scope: !706)
!729 = !DILocation(line: 119, column: 18, scope: !706)
!730 = !DILocation(line: 0, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 122, column: 9)
!732 = distinct !DILexicalBlock(scope: !706, file: !3, line: 120, column: 5)
!733 = !DILocation(line: 109, column: 7, scope: !706)
!734 = distinct !{!734, !728, !735}
!735 = !DILocation(line: 143, column: 5, scope: !706)
!736 = !DILocation(line: 130, column: 11, scope: !731)
!737 = !DILocation(line: 136, column: 9, scope: !731)
!738 = !DILocation(line: 138, column: 9, scope: !731)
!739 = !DILocation(line: 141, column: 11, scope: !731)
!740 = !DILocation(line: 145, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !706, file: !3, line: 145, column: 7)
!742 = !{!743, !743, i64 0}
!743 = !{!"int", !665, i64 0}
!744 = !DILocation(line: 145, column: 14, scope: !741)
!745 = !DILocation(line: 145, column: 7, scope: !706)
!746 = !DILocation(line: 151, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 151, column: 3)
!748 = distinct !DILexicalBlock(scope: !706, file: !3, line: 151, column: 3)
!749 = !DILocation(line: 151, column: 3, scope: !748)
!750 = !DILocation(line: 147, column: 20, scope: !751)
!751 = distinct !DILexicalBlock(scope: !741, file: !3, line: 146, column: 5)
!752 = !DILocation(line: 147, column: 7, scope: !751)
!753 = !DILocation(line: 148, column: 7, scope: !751)
!754 = !DILocation(line: 152, column: 31, scope: !747)
!755 = !DILocalVariable(name: "file", arg: 1, scope: !756, file: !3, line: 247, type: !45)
!756 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 247, type: !757, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!78, !45, !78, !78}
!759 = !{!755, !760, !761, !762, !763, !764, !765, !766, !808, !811, !814, !815, !818, !819, !825, !828, !829, !833, !836, !837, !838, !841, !842}
!760 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !756, file: !3, line: 247, type: !78)
!761 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !756, file: !3, line: 248, type: !78)
!762 = !DILocalVariable(name: "filelen", scope: !756, file: !3, line: 250, type: !120)
!763 = !DILocalVariable(name: "start", scope: !756, file: !3, line: 253, type: !45)
!764 = !DILocalVariable(name: "check_component_lengths", scope: !756, file: !3, line: 256, type: !78)
!765 = !DILocalVariable(name: "file_exists", scope: !756, file: !3, line: 259, type: !78)
!766 = !DILocalVariable(name: "st", scope: !767, file: !3, line: 287, type: !769)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 281, column: 5)
!768 = distinct !DILexicalBlock(scope: !756, file: !3, line: 275, column: 7)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !770, line: 46, size: 1152, elements: !771)
!770 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!771 = !{!772, !775, !777, !779, !781, !783, !785, !786, !787, !790, !792, !794, !802, !803, !804}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !769, file: !770, line: 48, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !774, line: 143, baseType: !122)
!774 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !769, file: !770, line: 53, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !774, line: 146, baseType: !122)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !769, file: !770, line: 61, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !774, line: 149, baseType: !122)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !769, file: !770, line: 62, baseType: !780, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !774, line: 148, baseType: !7)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !769, file: !770, line: 64, baseType: !782, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !774, line: 144, baseType: !7)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !769, file: !770, line: 65, baseType: !784, size: 32, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !774, line: 145, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !769, file: !770, line: 67, baseType: !58, size: 32, offset: 288)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !769, file: !770, line: 69, baseType: !773, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !769, file: !770, line: 74, baseType: !788, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !774, line: 150, baseType: !789)
!789 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !769, file: !770, line: 78, baseType: !791, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !774, line: 172, baseType: !789)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !769, file: !770, line: 80, baseType: !793, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !774, line: 177, baseType: !789)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !769, file: !770, line: 91, baseType: !795, size: 128, offset: 576)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !796, line: 9, size: 128, elements: !797)
!796 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!797 = !{!798, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !795, file: !796, line: 11, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !774, line: 158, baseType: !789)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !795, file: !796, line: 12, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !774, line: 194, baseType: !789)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !769, file: !770, line: 92, baseType: !795, size: 128, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !769, file: !770, line: 93, baseType: !795, size: 128, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !769, file: !770, line: 106, baseType: !805, size: 192, offset: 960)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 192, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 3)
!808 = !DILocalVariable(name: "maxsize", scope: !809, file: !3, line: 300, type: !120)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 299, column: 5)
!810 = distinct !DILexicalBlock(scope: !756, file: !3, line: 297, column: 7)
!811 = !DILocalVariable(name: "size", scope: !812, file: !3, line: 306, type: !789)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 305, column: 9)
!813 = distinct !DILexicalBlock(scope: !809, file: !3, line: 302, column: 11)
!814 = !DILocalVariable(name: "dir", scope: !812, file: !3, line: 307, type: !55)
!815 = !DILocalVariable(name: "len", scope: !816, file: !3, line: 322, type: !122)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 321, column: 9)
!817 = distinct !DILexicalBlock(scope: !809, file: !3, line: 320, column: 11)
!818 = !DILocalVariable(name: "maxlen", scope: !816, file: !3, line: 323, type: !122)
!819 = !DILocalVariable(name: "length", scope: !820, file: !3, line: 340, type: !120)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 339, column: 9)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 338, column: 7)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 338, column: 7)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 337, column: 5)
!824 = distinct !DILexicalBlock(scope: !756, file: !3, line: 336, column: 7)
!825 = !DILocalVariable(name: "name_max", scope: !826, file: !3, line: 358, type: !120)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 353, column: 5)
!827 = distinct !DILexicalBlock(scope: !756, file: !3, line: 352, column: 7)
!828 = !DILocalVariable(name: "known_name_max", scope: !826, file: !3, line: 361, type: !120)
!829 = !DILocalVariable(name: "length", scope: !830, file: !3, line: 365, type: !120)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 364, column: 9)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 363, column: 7)
!832 = distinct !DILexicalBlock(scope: !826, file: !3, line: 363, column: 7)
!833 = !DILocalVariable(name: "len", scope: !834, file: !3, line: 371, type: !789)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 370, column: 13)
!835 = distinct !DILexicalBlock(scope: !830, file: !3, line: 367, column: 15)
!836 = !DILocalVariable(name: "dir", scope: !834, file: !3, line: 372, type: !55)
!837 = !DILocalVariable(name: "c", scope: !834, file: !3, line: 373, type: !46)
!838 = !DILocalVariable(name: "len", scope: !839, file: !3, line: 405, type: !122)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 404, column: 13)
!840 = distinct !DILexicalBlock(scope: !830, file: !3, line: 403, column: 15)
!841 = !DILocalVariable(name: "maxlen", scope: !839, file: !3, line: 406, type: !122)
!842 = !DILocalVariable(name: "c", scope: !839, file: !3, line: 407, type: !46)
!843 = !DILocation(line: 247, column: 27, scope: !756, inlinedAt: !844)
!844 = distinct !DILocation(line: 152, column: 11, scope: !747)
!845 = !DILocation(line: 247, column: 38, scope: !756, inlinedAt: !844)
!846 = !DILocation(line: 248, column: 26, scope: !756, inlinedAt: !844)
!847 = !DILocation(line: 250, column: 20, scope: !756, inlinedAt: !844)
!848 = !DILocation(line: 250, column: 10, scope: !756, inlinedAt: !844)
!849 = !DILocation(line: 259, column: 8, scope: !756, inlinedAt: !844)
!850 = !DILocation(line: 261, column: 31, scope: !851, inlinedAt: !844)
!851 = distinct !DILexicalBlock(scope: !756, file: !3, line: 261, column: 7)
!852 = !DILocalVariable(name: "file", arg: 1, scope: !853, file: !3, line: 162, type: !55)
!853 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 162, type: !854, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!78, !55}
!856 = !{!852, !857}
!857 = !DILocalVariable(name: "p", scope: !853, file: !3, line: 164, type: !55)
!858 = !DILocation(line: 162, column: 32, scope: !853, inlinedAt: !859)
!859 = distinct !DILocation(line: 261, column: 36, scope: !851, inlinedAt: !844)
!860 = !DILocation(line: 164, column: 15, scope: !853, inlinedAt: !859)
!861 = !DILocation(line: 166, column: 24, scope: !862, inlinedAt: !859)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 166, column: 3)
!863 = distinct !DILexicalBlock(scope: !853, file: !3, line: 166, column: 3)
!864 = !DILocation(line: 166, column: 3, scope: !863, inlinedAt: !859)
!865 = !DILocation(line: 166, column: 44, scope: !862, inlinedAt: !859)
!866 = distinct !{!866, !867, !868}
!867 = !DILocation(line: 166, column: 3, scope: !863)
!868 = !DILocation(line: 172, column: 7, scope: !863)
!869 = !DILocation(line: 167, column: 11, scope: !870, inlinedAt: !859)
!870 = distinct !DILexicalBlock(scope: !862, file: !3, line: 167, column: 9)
!871 = !DILocation(line: 167, column: 19, scope: !870, inlinedAt: !859)
!872 = !DILocation(line: 167, column: 22, scope: !870, inlinedAt: !859)
!873 = !{!665, !665, i64 0}
!874 = !DILocation(line: 167, column: 28, scope: !870, inlinedAt: !859)
!875 = !DILocation(line: 167, column: 9, scope: !862, inlinedAt: !859)
!876 = !DILocation(line: 169, column: 22, scope: !877, inlinedAt: !859)
!877 = distinct !DILexicalBlock(scope: !870, file: !3, line: 168, column: 7)
!878 = !DILocation(line: 170, column: 16, scope: !877, inlinedAt: !859)
!879 = !DILocation(line: 169, column: 9, scope: !877, inlinedAt: !859)
!880 = !DILocation(line: 261, column: 7, scope: !756, inlinedAt: !844)
!881 = !DILocation(line: 265, column: 18, scope: !882, inlinedAt: !844)
!882 = distinct !DILexicalBlock(scope: !756, file: !3, line: 264, column: 7)
!883 = !DILocation(line: 264, column: 32, scope: !882, inlinedAt: !844)
!884 = !DILocation(line: 265, column: 7, scope: !882, inlinedAt: !844)
!885 = !DILocation(line: 264, column: 7, scope: !756, inlinedAt: !844)
!886 = !DILocation(line: 271, column: 20, scope: !887, inlinedAt: !844)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 266, column: 5)
!888 = !DILocation(line: 271, column: 7, scope: !887, inlinedAt: !844)
!889 = !DILocation(line: 272, column: 7, scope: !887, inlinedAt: !844)
!890 = !DILocalVariable(name: "file", arg: 1, scope: !891, file: !3, line: 181, type: !55)
!891 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 181, type: !892, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!78, !55, !120}
!894 = !{!890, !895, !896, !897, !898, !911}
!895 = !DILocalVariable(name: "filelen", arg: 2, scope: !891, file: !3, line: 181, type: !120)
!896 = !DILocalVariable(name: "validlen", scope: !891, file: !3, line: 183, type: !120)
!897 = !DILocalVariable(name: "invalid", scope: !891, file: !3, line: 188, type: !55)
!898 = !DILocalVariable(name: "mbstate", scope: !899, file: !3, line: 192, type: !901)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 191, column: 5)
!900 = distinct !DILexicalBlock(scope: !891, file: !3, line: 190, column: 7)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !182, line: 6, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !184, line: 21, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 13, size: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !903, file: !184, line: 15, baseType: !58, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !903, file: !184, line: 20, baseType: !907, size: 32, offset: 32)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !184, line: 16, size: 32, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !907, file: !184, line: 18, baseType: !7, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !907, file: !184, line: 19, baseType: !193, size: 32)
!911 = !DILocalVariable(name: "charlen", scope: !899, file: !3, line: 193, type: !120)
!912 = !DILocation(line: 181, column: 34, scope: !891, inlinedAt: !913)
!913 = distinct !DILocation(line: 277, column: 13, scope: !914, inlinedAt: !844)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 277, column: 11)
!915 = distinct !DILexicalBlock(scope: !768, file: !3, line: 276, column: 5)
!916 = !DILocation(line: 181, column: 47, scope: !891, inlinedAt: !913)
!917 = !DILocation(line: 183, column: 21, scope: !891, inlinedAt: !913)
!918 = !DILocation(line: 183, column: 10, scope: !891, inlinedAt: !913)
!919 = !DILocation(line: 188, column: 30, scope: !891, inlinedAt: !913)
!920 = !DILocation(line: 188, column: 15, scope: !891, inlinedAt: !913)
!921 = !DILocation(line: 190, column: 7, scope: !900, inlinedAt: !913)
!922 = !DILocation(line: 190, column: 7, scope: !891, inlinedAt: !913)
!923 = !DILocation(line: 192, column: 7, scope: !899, inlinedAt: !913)
!924 = !DILocation(line: 192, column: 17, scope: !899, inlinedAt: !913)
!925 = !DILocation(line: 193, column: 49, scope: !899, inlinedAt: !913)
!926 = !DILocation(line: 193, column: 24, scope: !899, inlinedAt: !913)
!927 = !DILocation(line: 193, column: 14, scope: !899, inlinedAt: !913)
!928 = !DILocation(line: 195, column: 14, scope: !899, inlinedAt: !913)
!929 = !DILocation(line: 197, column: 45, scope: !899, inlinedAt: !913)
!930 = !DILocation(line: 197, column: 37, scope: !899, inlinedAt: !913)
!931 = !DILocation(line: 196, column: 14, scope: !899, inlinedAt: !913)
!932 = !DILocation(line: 198, column: 14, scope: !899, inlinedAt: !913)
!933 = !DILocation(line: 194, column: 7, scope: !899, inlinedAt: !913)
!934 = !DILocation(line: 200, column: 5, scope: !900, inlinedAt: !913)
!935 = !DILocation(line: 277, column: 11, scope: !915, inlinedAt: !844)
!936 = !DILocation(line: 287, column: 7, scope: !767, inlinedAt: !844)
!937 = !DILocation(line: 287, column: 19, scope: !767, inlinedAt: !844)
!938 = !DILocalVariable(name: "__path", arg: 1, scope: !939, file: !940, line: 460, type: !55)
!939 = distinct !DISubprogram(name: "lstat", scope: !940, file: !940, line: 460, type: !941, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !944)
!940 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!941 = !DISubroutineType(types: !942)
!942 = !{!58, !55, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!944 = !{!938, !945}
!945 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !939, file: !940, line: 460, type: !943)
!946 = !DILocation(line: 460, column: 1, scope: !939, inlinedAt: !947)
!947 = distinct !DILocation(line: 288, column: 11, scope: !948, inlinedAt: !844)
!948 = distinct !DILexicalBlock(scope: !767, file: !3, line: 288, column: 11)
!949 = !DILocation(line: 462, column: 10, scope: !939, inlinedAt: !947)
!950 = !DILocation(line: 288, column: 29, scope: !948, inlinedAt: !844)
!951 = !DILocation(line: 288, column: 11, scope: !767, inlinedAt: !844)
!952 = !DILocation(line: 295, column: 5, scope: !768, inlinedAt: !844)
!953 = !DILocation(line: 352, column: 7, scope: !756, inlinedAt: !844)
!954 = !DILocation(line: 290, column: 16, scope: !955, inlinedAt: !844)
!955 = distinct !DILexicalBlock(scope: !948, file: !3, line: 290, column: 16)
!956 = !DILocation(line: 290, column: 22, scope: !955, inlinedAt: !844)
!957 = !DILocation(line: 290, column: 32, scope: !955, inlinedAt: !844)
!958 = !DILocation(line: 292, column: 34, scope: !959, inlinedAt: !844)
!959 = distinct !DILexicalBlock(scope: !955, file: !3, line: 291, column: 9)
!960 = !DILocation(line: 292, column: 11, scope: !959, inlinedAt: !844)
!961 = !DILocation(line: 298, column: 45, scope: !810, inlinedAt: !844)
!962 = !DILocation(line: 298, column: 25, scope: !810, inlinedAt: !844)
!963 = !DILocation(line: 307, column: 30, scope: !812, inlinedAt: !844)
!964 = !DILocation(line: 307, column: 36, scope: !812, inlinedAt: !844)
!965 = !DILocation(line: 307, column: 23, scope: !812, inlinedAt: !844)
!966 = !DILocation(line: 308, column: 17, scope: !812, inlinedAt: !844)
!967 = !DILocation(line: 309, column: 18, scope: !812, inlinedAt: !844)
!968 = !DILocation(line: 306, column: 20, scope: !812, inlinedAt: !844)
!969 = !DILocation(line: 310, column: 20, scope: !970, inlinedAt: !844)
!970 = distinct !DILexicalBlock(scope: !812, file: !3, line: 310, column: 15)
!971 = !DILocation(line: 310, column: 24, scope: !970, inlinedAt: !844)
!972 = !DILocation(line: 310, column: 27, scope: !970, inlinedAt: !844)
!973 = !DILocation(line: 310, column: 33, scope: !970, inlinedAt: !844)
!974 = !DILocation(line: 310, column: 15, scope: !812, inlinedAt: !844)
!975 = !DILocation(line: 313, column: 22, scope: !976, inlinedAt: !844)
!976 = distinct !DILexicalBlock(scope: !970, file: !3, line: 311, column: 13)
!977 = !DILocation(line: 312, column: 15, scope: !976, inlinedAt: !844)
!978 = !DILocation(line: 300, column: 14, scope: !809, inlinedAt: !844)
!979 = !DILocation(line: 320, column: 19, scope: !817, inlinedAt: !844)
!980 = !DILocation(line: 320, column: 11, scope: !809, inlinedAt: !844)
!981 = !DILocation(line: 322, column: 29, scope: !816, inlinedAt: !844)
!982 = !DILocation(line: 323, column: 46, scope: !816, inlinedAt: !844)
!983 = !DILocation(line: 323, column: 29, scope: !816, inlinedAt: !844)
!984 = !DILocation(line: 324, column: 24, scope: !816, inlinedAt: !844)
!985 = !DILocation(line: 325, column: 31, scope: !816, inlinedAt: !844)
!986 = !DILocation(line: 324, column: 11, scope: !816, inlinedAt: !844)
!987 = !DILocation(line: 336, column: 33, scope: !824, inlinedAt: !844)
!988 = !DILocation(line: 210, column: 10, scope: !989, inlinedAt: !994)
!989 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 208, type: !990, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{!45, !45}
!992 = !{!993}
!993 = !DILocalVariable(name: "f", arg: 1, scope: !989, file: !3, line: 208, type: !45)
!994 = distinct !DILocation(line: 338, column: 36, scope: !821, inlinedAt: !844)
!995 = !DILocation(line: 208, column: 24, scope: !989, inlinedAt: !994)
!996 = !DILocation(line: 211, column: 6, scope: !989, inlinedAt: !994)
!997 = !DILocation(line: 210, column: 3, scope: !989, inlinedAt: !994)
!998 = distinct !{!998, !999, !1000}
!999 = !DILocation(line: 338, column: 7, scope: !822)
!1000 = !DILocation(line: 349, column: 9, scope: !822)
!1001 = !DILocation(line: 0, scope: !1002, inlinedAt: !1010)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 221, column: 3)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 221, column: 3)
!1004 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 218, type: !1005, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!120, !55}
!1007 = !{!1008, !1009}
!1008 = !DILocalVariable(name: "f", arg: 1, scope: !1004, file: !3, line: 218, type: !55)
!1009 = !DILocalVariable(name: "len", scope: !1004, file: !3, line: 220, type: !120)
!1010 = distinct !DILocation(line: 340, column: 27, scope: !820, inlinedAt: !844)
!1011 = !DILocation(line: 220, column: 10, scope: !1004, inlinedAt: !1010)
!1012 = !DILocation(line: 221, column: 17, scope: !1002, inlinedAt: !1010)
!1013 = !DILocation(line: 221, column: 31, scope: !1002, inlinedAt: !1010)
!1014 = !DILocation(line: 221, column: 45, scope: !1002, inlinedAt: !1010)
!1015 = !DILocation(line: 221, column: 3, scope: !1002, inlinedAt: !1010)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 221, column: 3, scope: !1003)
!1018 = !DILocation(line: 222, column: 5, scope: !1003)
!1019 = !DILocation(line: 340, column: 18, scope: !820, inlinedAt: !844)
!1020 = !DILocation(line: 342, column: 32, scope: !1021, inlinedAt: !844)
!1021 = distinct !DILexicalBlock(scope: !820, file: !3, line: 342, column: 15)
!1022 = !DILocation(line: 253, column: 9, scope: !756, inlinedAt: !844)
!1023 = !DILocation(line: 210, column: 3, scope: !989, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 363, column: 36, scope: !831, inlinedAt: !844)
!1025 = !DILocation(line: 361, column: 14, scope: !826, inlinedAt: !844)
!1026 = !DILocation(line: 0, scope: !835, inlinedAt: !844)
!1027 = !DILocation(line: 0, scope: !831, inlinedAt: !844)
!1028 = !DILocation(line: 358, column: 14, scope: !826, inlinedAt: !844)
!1029 = !DILocation(line: 208, column: 24, scope: !989, inlinedAt: !1024)
!1030 = !DILocation(line: 210, column: 10, scope: !989, inlinedAt: !1024)
!1031 = !DILocation(line: 211, column: 6, scope: !989, inlinedAt: !1024)
!1032 = !DILocation(line: 367, column: 15, scope: !835, inlinedAt: !844)
!1033 = !DILocation(line: 367, column: 15, scope: !830, inlinedAt: !844)
!1034 = !DILocation(line: 372, column: 40, scope: !834, inlinedAt: !844)
!1035 = !DILocation(line: 372, column: 34, scope: !834, inlinedAt: !844)
!1036 = !DILocation(line: 372, column: 27, scope: !834, inlinedAt: !844)
!1037 = !DILocation(line: 373, column: 20, scope: !834, inlinedAt: !844)
!1038 = !DILocation(line: 374, column: 15, scope: !834, inlinedAt: !844)
!1039 = !DILocation(line: 374, column: 21, scope: !834, inlinedAt: !844)
!1040 = !DILocation(line: 375, column: 22, scope: !834, inlinedAt: !844)
!1041 = !DILocation(line: 376, column: 21, scope: !834, inlinedAt: !844)
!1042 = !DILocation(line: 371, column: 24, scope: !834, inlinedAt: !844)
!1043 = !DILocation(line: 377, column: 22, scope: !834, inlinedAt: !844)
!1044 = !DILocation(line: 378, column: 21, scope: !1045, inlinedAt: !844)
!1045 = distinct !DILexicalBlock(scope: !834, file: !3, line: 378, column: 19)
!1046 = !DILocation(line: 378, column: 19, scope: !834, inlinedAt: !844)
!1047 = !DILocation(line: 381, column: 25, scope: !1045, inlinedAt: !844)
!1048 = !DILocation(line: 381, column: 17, scope: !1045, inlinedAt: !844)
!1049 = !DILocation(line: 391, column: 21, scope: !1050, inlinedAt: !844)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 382, column: 19)
!1051 = !DILocation(line: 394, column: 28, scope: !1050, inlinedAt: !844)
!1052 = !DILocation(line: 395, column: 31, scope: !1050, inlinedAt: !844)
!1053 = !DILocation(line: 395, column: 44, scope: !1050, inlinedAt: !844)
!1054 = !DILocation(line: 395, column: 21, scope: !1050, inlinedAt: !844)
!1055 = !DILocation(line: 396, column: 28, scope: !1050, inlinedAt: !844)
!1056 = !DILocation(line: 0, scope: !1045, inlinedAt: !844)
!1057 = !DILocation(line: 218, column: 28, scope: !1004, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 401, column: 20, scope: !830, inlinedAt: !844)
!1059 = !DILocation(line: 220, column: 10, scope: !1004, inlinedAt: !1058)
!1060 = !DILocation(line: 221, column: 8, scope: !1003, inlinedAt: !1058)
!1061 = !DILocation(line: 0, scope: !1002, inlinedAt: !1058)
!1062 = !DILocation(line: 221, column: 17, scope: !1002, inlinedAt: !1058)
!1063 = !DILocation(line: 221, column: 31, scope: !1002, inlinedAt: !1058)
!1064 = !DILocation(line: 221, column: 45, scope: !1002, inlinedAt: !1058)
!1065 = !DILocation(line: 221, column: 3, scope: !1002, inlinedAt: !1058)
!1066 = !DILocation(line: 365, column: 18, scope: !830, inlinedAt: !844)
!1067 = !DILocation(line: 403, column: 24, scope: !840, inlinedAt: !844)
!1068 = !DILocation(line: 403, column: 15, scope: !830, inlinedAt: !844)
!1069 = !DILocation(line: 405, column: 33, scope: !839, inlinedAt: !844)
!1070 = !DILocation(line: 406, column: 33, scope: !839, inlinedAt: !844)
!1071 = !DILocation(line: 407, column: 20, scope: !839, inlinedAt: !844)
!1072 = !DILocation(line: 408, column: 26, scope: !839, inlinedAt: !844)
!1073 = !DILocation(line: 410, column: 22, scope: !839, inlinedAt: !844)
!1074 = !DILocation(line: 412, column: 35, scope: !839, inlinedAt: !844)
!1075 = !DILocation(line: 409, column: 15, scope: !839, inlinedAt: !844)
!1076 = !DILocation(line: 413, column: 26, scope: !839, inlinedAt: !844)
!1077 = !DILocation(line: 152, column: 8, scope: !747)
!1078 = !DILocation(line: 151, column: 25, scope: !747)
!1079 = distinct !{!1079, !749, !1080}
!1080 = !DILocation(line: 153, column: 79, scope: !748)
!1081 = !DILocation(line: 155, column: 10, scope: !706)
!1082 = !DILocation(line: 156, column: 1, scope: !706)
!1083 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !77, file: !77, line: 51, type: !638, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1084)
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "file", arg: 1, scope: !1083, file: !77, line: 51, type: !55)
!1086 = !DILocation(line: 51, column: 41, scope: !1083)
!1087 = !DILocation(line: 53, column: 13, scope: !1083)
!1088 = !DILocation(line: 54, column: 1, scope: !1083)
!1089 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !77, file: !77, line: 88, type: !1090, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !78}
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "ignore", arg: 1, scope: !1089, file: !77, line: 88, type: !78)
!1094 = !DILocation(line: 88, column: 37, scope: !1089)
!1095 = !DILocation(line: 90, column: 16, scope: !1089)
!1096 = !{!1097, !1097, i64 0}
!1097 = !{!"_Bool", !665, i64 0}
!1098 = !DILocation(line: 91, column: 1, scope: !1089)
!1099 = distinct !DISubprogram(name: "close_stdout", scope: !77, file: !77, line: 117, type: !1100, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null}
!1102 = !{!1103}
!1103 = !DILocalVariable(name: "write_error", scope: !1104, file: !77, line: 122, type: !55)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !77, line: 121, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !77, line: 119, column: 7)
!1106 = !DILocation(line: 119, column: 21, scope: !1105)
!1107 = !DILocation(line: 119, column: 7, scope: !1105)
!1108 = !DILocation(line: 119, column: 29, scope: !1105)
!1109 = !DILocation(line: 120, column: 7, scope: !1105)
!1110 = !DILocation(line: 120, column: 12, scope: !1105)
!1111 = !{i8 0, i8 2}
!1112 = !DILocation(line: 120, column: 25, scope: !1105)
!1113 = !DILocation(line: 120, column: 28, scope: !1105)
!1114 = !DILocation(line: 120, column: 34, scope: !1105)
!1115 = !DILocation(line: 119, column: 7, scope: !1099)
!1116 = !DILocation(line: 122, column: 33, scope: !1104)
!1117 = !DILocation(line: 122, column: 19, scope: !1104)
!1118 = !DILocation(line: 123, column: 11, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1104, file: !77, line: 123, column: 11)
!1120 = !DILocation(line: 0, scope: !1119)
!1121 = !DILocation(line: 123, column: 11, scope: !1104)
!1122 = !DILocation(line: 124, column: 36, scope: !1119)
!1123 = !DILocation(line: 124, column: 9, scope: !1119)
!1124 = !DILocation(line: 127, column: 9, scope: !1119)
!1125 = !DILocation(line: 129, column: 14, scope: !1104)
!1126 = !DILocation(line: 129, column: 7, scope: !1104)
!1127 = !DILocation(line: 134, column: 42, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1099, file: !77, line: 134, column: 7)
!1129 = !DILocation(line: 134, column: 28, scope: !1128)
!1130 = !DILocation(line: 134, column: 50, scope: !1128)
!1131 = !DILocation(line: 134, column: 7, scope: !1099)
!1132 = !DILocation(line: 135, column: 12, scope: !1128)
!1133 = !DILocation(line: 135, column: 5, scope: !1128)
!1134 = !DILocation(line: 136, column: 1, scope: !1099)
!1135 = distinct !DISubprogram(name: "set_program_name", scope: !92, file: !92, line: 39, type: !638, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !88, retainedNodes: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "argv0", arg: 1, scope: !1135, file: !92, line: 39, type: !55)
!1138 = !DILocalVariable(name: "slash", scope: !1135, file: !92, line: 46, type: !55)
!1139 = !DILocalVariable(name: "base", scope: !1135, file: !92, line: 47, type: !55)
!1140 = !DILocation(line: 39, column: 31, scope: !1135)
!1141 = !DILocation(line: 51, column: 13, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !92, line: 51, column: 7)
!1143 = !DILocation(line: 51, column: 7, scope: !1135)
!1144 = !DILocation(line: 55, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !92, line: 52, column: 5)
!1146 = !DILocation(line: 54, column: 7, scope: !1145)
!1147 = !DILocation(line: 56, column: 7, scope: !1145)
!1148 = !DILocation(line: 59, column: 11, scope: !1135)
!1149 = !DILocation(line: 46, column: 15, scope: !1135)
!1150 = !DILocation(line: 60, column: 17, scope: !1135)
!1151 = !DILocation(line: 60, column: 33, scope: !1135)
!1152 = !DILocation(line: 60, column: 11, scope: !1135)
!1153 = !DILocation(line: 47, column: 15, scope: !1135)
!1154 = !DILocation(line: 61, column: 12, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1135, file: !92, line: 61, column: 7)
!1156 = !DILocation(line: 61, column: 20, scope: !1155)
!1157 = !DILocation(line: 61, column: 25, scope: !1155)
!1158 = !DILocation(line: 61, column: 42, scope: !1155)
!1159 = !DILocation(line: 61, column: 28, scope: !1155)
!1160 = !DILocation(line: 61, column: 61, scope: !1155)
!1161 = !DILocation(line: 61, column: 7, scope: !1135)
!1162 = !DILocation(line: 64, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !92, line: 64, column: 11)
!1164 = distinct !DILexicalBlock(scope: !1155, file: !92, line: 62, column: 5)
!1165 = !DILocation(line: 64, column: 36, scope: !1163)
!1166 = !DILocation(line: 64, column: 11, scope: !1164)
!1167 = !DILocation(line: 66, column: 24, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !92, line: 65, column: 9)
!1169 = !DILocation(line: 70, column: 41, scope: !1168)
!1170 = !DILocation(line: 72, column: 9, scope: !1168)
!1171 = !DILocation(line: 84, column: 16, scope: !1135)
!1172 = !DILocation(line: 90, column: 27, scope: !1135)
!1173 = !DILocation(line: 92, column: 1, scope: !1135)
!1174 = distinct !DISubprogram(name: "clone_quoting_options", scope: !126, file: !126, line: 122, type: !1175, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1178)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1178 = !{!1179, !1180, !1181}
!1179 = !DILocalVariable(name: "o", arg: 1, scope: !1174, file: !126, line: 122, type: !1177)
!1180 = !DILocalVariable(name: "e", scope: !1174, file: !126, line: 124, type: !58)
!1181 = !DILocalVariable(name: "p", scope: !1174, file: !126, line: 125, type: !1177)
!1182 = !DILocation(line: 122, column: 48, scope: !1174)
!1183 = !DILocation(line: 124, column: 11, scope: !1174)
!1184 = !DILocation(line: 124, column: 7, scope: !1174)
!1185 = !DILocation(line: 125, column: 40, scope: !1174)
!1186 = !DILocation(line: 125, column: 31, scope: !1174)
!1187 = !DILocation(line: 125, column: 27, scope: !1174)
!1188 = !DILocation(line: 127, column: 9, scope: !1174)
!1189 = !DILocation(line: 128, column: 3, scope: !1174)
!1190 = distinct !DISubprogram(name: "get_quoting_style", scope: !126, file: !126, line: 133, type: !1191, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1195)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!5, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!1195 = !{!1196}
!1196 = !DILocalVariable(name: "o", arg: 1, scope: !1190, file: !126, line: 133, type: !1193)
!1197 = !DILocation(line: 133, column: 50, scope: !1190)
!1198 = !DILocation(line: 135, column: 11, scope: !1190)
!1199 = !DILocation(line: 135, column: 46, scope: !1190)
!1200 = !{!1201, !665, i64 0}
!1201 = !{!"quoting_options", !665, i64 0, !743, i64 4, !665, i64 8, !664, i64 40, !664, i64 48}
!1202 = !DILocation(line: 135, column: 3, scope: !1190)
!1203 = distinct !DISubprogram(name: "set_quoting_style", scope: !126, file: !126, line: 141, type: !1204, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1177, !5}
!1206 = !{!1207, !1208}
!1207 = !DILocalVariable(name: "o", arg: 1, scope: !1203, file: !126, line: 141, type: !1177)
!1208 = !DILocalVariable(name: "s", arg: 2, scope: !1203, file: !126, line: 141, type: !5)
!1209 = !DILocation(line: 141, column: 44, scope: !1203)
!1210 = !DILocation(line: 141, column: 66, scope: !1203)
!1211 = !DILocation(line: 143, column: 4, scope: !1203)
!1212 = !DILocation(line: 143, column: 39, scope: !1203)
!1213 = !DILocation(line: 143, column: 45, scope: !1203)
!1214 = !DILocation(line: 144, column: 1, scope: !1203)
!1215 = distinct !DISubprogram(name: "set_char_quoting", scope: !126, file: !126, line: 152, type: !1216, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!58, !1177, !46, !58}
!1218 = !{!1219, !1220, !1221, !1222, !1224, !1226, !1227}
!1219 = !DILocalVariable(name: "o", arg: 1, scope: !1215, file: !126, line: 152, type: !1177)
!1220 = !DILocalVariable(name: "c", arg: 2, scope: !1215, file: !126, line: 152, type: !46)
!1221 = !DILocalVariable(name: "i", arg: 3, scope: !1215, file: !126, line: 152, type: !58)
!1222 = !DILocalVariable(name: "uc", scope: !1215, file: !126, line: 154, type: !1223)
!1223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1224 = !DILocalVariable(name: "p", scope: !1215, file: !126, line: 155, type: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1226 = !DILocalVariable(name: "shift", scope: !1215, file: !126, line: 157, type: !58)
!1227 = !DILocalVariable(name: "r", scope: !1215, file: !126, line: 158, type: !58)
!1228 = !DILocation(line: 152, column: 43, scope: !1215)
!1229 = !DILocation(line: 152, column: 51, scope: !1215)
!1230 = !DILocation(line: 152, column: 58, scope: !1215)
!1231 = !DILocation(line: 154, column: 17, scope: !1215)
!1232 = !DILocation(line: 156, column: 6, scope: !1215)
!1233 = !DILocation(line: 156, column: 62, scope: !1215)
!1234 = !DILocation(line: 156, column: 57, scope: !1215)
!1235 = !DILocation(line: 155, column: 17, scope: !1215)
!1236 = !DILocation(line: 157, column: 15, scope: !1215)
!1237 = !DILocation(line: 157, column: 7, scope: !1215)
!1238 = !DILocation(line: 158, column: 12, scope: !1215)
!1239 = !DILocation(line: 158, column: 15, scope: !1215)
!1240 = !DILocation(line: 158, column: 25, scope: !1215)
!1241 = !DILocation(line: 158, column: 7, scope: !1215)
!1242 = !DILocation(line: 159, column: 13, scope: !1215)
!1243 = !DILocation(line: 159, column: 18, scope: !1215)
!1244 = !DILocation(line: 159, column: 23, scope: !1215)
!1245 = !DILocation(line: 159, column: 6, scope: !1215)
!1246 = !DILocation(line: 160, column: 3, scope: !1215)
!1247 = distinct !DISubprogram(name: "set_quoting_flags", scope: !126, file: !126, line: 168, type: !1248, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!58, !1177, !58}
!1250 = !{!1251, !1252, !1253}
!1251 = !DILocalVariable(name: "o", arg: 1, scope: !1247, file: !126, line: 168, type: !1177)
!1252 = !DILocalVariable(name: "i", arg: 2, scope: !1247, file: !126, line: 168, type: !58)
!1253 = !DILocalVariable(name: "r", scope: !1247, file: !126, line: 170, type: !58)
!1254 = !DILocation(line: 168, column: 44, scope: !1247)
!1255 = !DILocation(line: 168, column: 51, scope: !1247)
!1256 = !DILocation(line: 171, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1247, file: !126, line: 171, column: 7)
!1258 = !DILocation(line: 171, column: 7, scope: !1247)
!1259 = !DILocation(line: 173, column: 10, scope: !1247)
!1260 = !{!1201, !743, i64 4}
!1261 = !DILocation(line: 170, column: 7, scope: !1247)
!1262 = !DILocation(line: 174, column: 12, scope: !1247)
!1263 = !DILocation(line: 175, column: 3, scope: !1247)
!1264 = distinct !DISubprogram(name: "set_custom_quoting", scope: !126, file: !126, line: 179, type: !1265, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1177, !55, !55}
!1267 = !{!1268, !1269, !1270}
!1268 = !DILocalVariable(name: "o", arg: 1, scope: !1264, file: !126, line: 179, type: !1177)
!1269 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1264, file: !126, line: 180, type: !55)
!1270 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1264, file: !126, line: 180, type: !55)
!1271 = !DILocation(line: 179, column: 45, scope: !1264)
!1272 = !DILocation(line: 180, column: 33, scope: !1264)
!1273 = !DILocation(line: 180, column: 57, scope: !1264)
!1274 = !DILocation(line: 182, column: 8, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1264, file: !126, line: 182, column: 7)
!1276 = !DILocation(line: 182, column: 7, scope: !1264)
!1277 = !DILocation(line: 184, column: 6, scope: !1264)
!1278 = !DILocation(line: 184, column: 12, scope: !1264)
!1279 = !DILocation(line: 185, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1264, file: !126, line: 185, column: 7)
!1281 = !DILocation(line: 185, column: 23, scope: !1280)
!1282 = !DILocation(line: 185, column: 19, scope: !1280)
!1283 = !DILocation(line: 186, column: 5, scope: !1280)
!1284 = !DILocation(line: 187, column: 6, scope: !1264)
!1285 = !DILocation(line: 187, column: 17, scope: !1264)
!1286 = !{!1201, !664, i64 40}
!1287 = !DILocation(line: 188, column: 6, scope: !1264)
!1288 = !DILocation(line: 188, column: 18, scope: !1264)
!1289 = !{!1201, !664, i64 48}
!1290 = !DILocation(line: 189, column: 1, scope: !1264)
!1291 = distinct !DISubprogram(name: "quotearg_buffer", scope: !126, file: !126, line: 784, type: !1292, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!120, !45, !120, !55, !120, !1193}
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1295 = !DILocalVariable(name: "buffer", arg: 1, scope: !1291, file: !126, line: 784, type: !45)
!1296 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1291, file: !126, line: 784, type: !120)
!1297 = !DILocalVariable(name: "arg", arg: 3, scope: !1291, file: !126, line: 785, type: !55)
!1298 = !DILocalVariable(name: "argsize", arg: 4, scope: !1291, file: !126, line: 785, type: !120)
!1299 = !DILocalVariable(name: "o", arg: 5, scope: !1291, file: !126, line: 786, type: !1193)
!1300 = !DILocalVariable(name: "p", scope: !1291, file: !126, line: 788, type: !1193)
!1301 = !DILocalVariable(name: "e", scope: !1291, file: !126, line: 789, type: !58)
!1302 = !DILocalVariable(name: "r", scope: !1291, file: !126, line: 790, type: !120)
!1303 = !DILocation(line: 784, column: 24, scope: !1291)
!1304 = !DILocation(line: 784, column: 39, scope: !1291)
!1305 = !DILocation(line: 785, column: 30, scope: !1291)
!1306 = !DILocation(line: 785, column: 42, scope: !1291)
!1307 = !DILocation(line: 786, column: 48, scope: !1291)
!1308 = !DILocation(line: 788, column: 37, scope: !1291)
!1309 = !DILocation(line: 788, column: 33, scope: !1291)
!1310 = !DILocation(line: 789, column: 11, scope: !1291)
!1311 = !DILocation(line: 789, column: 7, scope: !1291)
!1312 = !DILocation(line: 791, column: 43, scope: !1291)
!1313 = !DILocation(line: 791, column: 53, scope: !1291)
!1314 = !DILocation(line: 791, column: 60, scope: !1291)
!1315 = !DILocation(line: 792, column: 43, scope: !1291)
!1316 = !DILocation(line: 792, column: 58, scope: !1291)
!1317 = !DILocation(line: 790, column: 14, scope: !1291)
!1318 = !DILocation(line: 790, column: 10, scope: !1291)
!1319 = !DILocation(line: 793, column: 9, scope: !1291)
!1320 = !DILocation(line: 794, column: 3, scope: !1291)
!1321 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !126, file: !126, line: 256, type: !1322, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1326)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!120, !45, !120, !55, !120, !5, !58, !1324, !55, !55}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1351, !1352, !1353, !1354, !1355, !1358, !1359, !1372, !1375, !1376, !1383}
!1327 = !DILocalVariable(name: "buffer", arg: 1, scope: !1321, file: !126, line: 256, type: !45)
!1328 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1321, file: !126, line: 256, type: !120)
!1329 = !DILocalVariable(name: "arg", arg: 3, scope: !1321, file: !126, line: 257, type: !55)
!1330 = !DILocalVariable(name: "argsize", arg: 4, scope: !1321, file: !126, line: 257, type: !120)
!1331 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1321, file: !126, line: 258, type: !5)
!1332 = !DILocalVariable(name: "flags", arg: 6, scope: !1321, file: !126, line: 258, type: !58)
!1333 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1321, file: !126, line: 259, type: !1324)
!1334 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1321, file: !126, line: 260, type: !55)
!1335 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1321, file: !126, line: 261, type: !55)
!1336 = !DILocalVariable(name: "i", scope: !1321, file: !126, line: 263, type: !120)
!1337 = !DILocalVariable(name: "len", scope: !1321, file: !126, line: 264, type: !120)
!1338 = !DILocalVariable(name: "orig_buffersize", scope: !1321, file: !126, line: 265, type: !120)
!1339 = !DILocalVariable(name: "quote_string", scope: !1321, file: !126, line: 266, type: !55)
!1340 = !DILocalVariable(name: "quote_string_len", scope: !1321, file: !126, line: 267, type: !120)
!1341 = !DILocalVariable(name: "backslash_escapes", scope: !1321, file: !126, line: 268, type: !78)
!1342 = !DILocalVariable(name: "unibyte_locale", scope: !1321, file: !126, line: 269, type: !78)
!1343 = !DILocalVariable(name: "elide_outer_quotes", scope: !1321, file: !126, line: 270, type: !78)
!1344 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1321, file: !126, line: 271, type: !78)
!1345 = !DILocalVariable(name: "encountered_single_quote", scope: !1321, file: !126, line: 272, type: !78)
!1346 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1321, file: !126, line: 273, type: !78)
!1347 = !DILocalVariable(name: "c", scope: !1348, file: !126, line: 402, type: !1223)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !126, line: 401, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !126, line: 400, column: 3)
!1350 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 400, column: 3)
!1351 = !DILocalVariable(name: "esc", scope: !1348, file: !126, line: 403, type: !1223)
!1352 = !DILocalVariable(name: "is_right_quote", scope: !1348, file: !126, line: 404, type: !78)
!1353 = !DILocalVariable(name: "escaping", scope: !1348, file: !126, line: 405, type: !78)
!1354 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1348, file: !126, line: 406, type: !78)
!1355 = !DILocalVariable(name: "m", scope: !1356, file: !126, line: 610, type: !120)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 608, column: 11)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 426, column: 9)
!1358 = !DILocalVariable(name: "printable", scope: !1356, file: !126, line: 612, type: !78)
!1359 = !DILocalVariable(name: "mbstate", scope: !1360, file: !126, line: 621, type: !1362)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !126, line: 620, column: 15)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !126, line: 614, column: 17)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !182, line: 6, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !184, line: 21, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 13, size: 64, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1364, file: !184, line: 15, baseType: !58, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1364, file: !184, line: 20, baseType: !1368, size: 32, offset: 32)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !184, line: 16, size: 32, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1368, file: !184, line: 18, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1368, file: !184, line: 19, baseType: !193, size: 32)
!1372 = !DILocalVariable(name: "w", scope: !1373, file: !126, line: 631, type: !1374)
!1373 = distinct !DILexicalBlock(scope: !1360, file: !126, line: 630, column: 19)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !121, line: 90, baseType: !58)
!1375 = !DILocalVariable(name: "bytes", scope: !1373, file: !126, line: 632, type: !120)
!1376 = !DILocalVariable(name: "j", scope: !1377, file: !126, line: 657, type: !120)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !126, line: 656, column: 27)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !126, line: 654, column: 29)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !126, line: 649, column: 23)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !126, line: 641, column: 30)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !126, line: 636, column: 30)
!1382 = distinct !DILexicalBlock(scope: !1373, file: !126, line: 634, column: 25)
!1383 = !DILocalVariable(name: "ilim", scope: !1384, file: !126, line: 684, type: !120)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !126, line: 681, column: 15)
!1385 = distinct !DILexicalBlock(scope: !1356, file: !126, line: 680, column: 17)
!1386 = !DILocation(line: 256, column: 33, scope: !1321)
!1387 = !DILocation(line: 256, column: 48, scope: !1321)
!1388 = !DILocation(line: 257, column: 39, scope: !1321)
!1389 = !DILocation(line: 257, column: 51, scope: !1321)
!1390 = !DILocation(line: 258, column: 46, scope: !1321)
!1391 = !DILocation(line: 258, column: 65, scope: !1321)
!1392 = !DILocation(line: 259, column: 47, scope: !1321)
!1393 = !DILocation(line: 260, column: 39, scope: !1321)
!1394 = !DILocation(line: 261, column: 39, scope: !1321)
!1395 = !DILocation(line: 264, column: 10, scope: !1321)
!1396 = !DILocation(line: 265, column: 10, scope: !1321)
!1397 = !DILocation(line: 266, column: 15, scope: !1321)
!1398 = !DILocation(line: 267, column: 10, scope: !1321)
!1399 = !DILocation(line: 268, column: 8, scope: !1321)
!1400 = !DILocation(line: 269, column: 25, scope: !1321)
!1401 = !DILocation(line: 269, column: 36, scope: !1321)
!1402 = !DILocation(line: 270, column: 8, scope: !1321)
!1403 = !DILocation(line: 271, column: 8, scope: !1321)
!1404 = !DILocation(line: 272, column: 8, scope: !1321)
!1405 = !DILocation(line: 273, column: 8, scope: !1321)
!1406 = !DILocation(line: 273, column: 3, scope: !1321)
!1407 = !DILocation(line: 0, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 317, column: 5)
!1409 = !DILocation(line: 316, column: 3, scope: !1321)
!1410 = !DILocation(line: 323, column: 11, scope: !1408)
!1411 = !DILocation(line: 323, column: 12, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !126, line: 323, column: 11)
!1413 = !DILocation(line: 324, column: 9, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !126, line: 324, column: 9)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !126, line: 324, column: 9)
!1416 = !DILocation(line: 324, column: 9, scope: !1415)
!1417 = !DILocation(line: 362, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !126, line: 340, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !126, line: 339, column: 13)
!1420 = distinct !DILexicalBlock(scope: !1408, file: !126, line: 338, column: 7)
!1421 = !DILocation(line: 363, column: 27, scope: !1418)
!1422 = !DILocation(line: 364, column: 11, scope: !1418)
!1423 = !DILocation(line: 365, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !126, line: 365, column: 13)
!1425 = !DILocation(line: 365, column: 13, scope: !1420)
!1426 = !DILocation(line: 366, column: 43, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !126, line: 366, column: 11)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !126, line: 366, column: 11)
!1429 = !DILocation(line: 366, column: 11, scope: !1428)
!1430 = !DILocation(line: 367, column: 13, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !126, line: 367, column: 13)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !126, line: 367, column: 13)
!1433 = !DILocation(line: 367, column: 13, scope: !1432)
!1434 = !DILocation(line: 366, column: 70, scope: !1427)
!1435 = distinct !{!1435, !1429, !1436}
!1436 = !DILocation(line: 367, column: 13, scope: !1428)
!1437 = !DILocation(line: 370, column: 28, scope: !1420)
!1438 = !DILocation(line: 372, column: 7, scope: !1408)
!1439 = !DILocation(line: 376, column: 7, scope: !1408)
!1440 = !DILocation(line: 379, column: 7, scope: !1408)
!1441 = !DILocation(line: 381, column: 12, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1408, file: !126, line: 381, column: 11)
!1443 = !DILocation(line: 381, column: 11, scope: !1408)
!1444 = !DILocation(line: 0, scope: !1442)
!1445 = !DILocation(line: 386, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1408, file: !126, line: 386, column: 11)
!1447 = !DILocation(line: 386, column: 11, scope: !1408)
!1448 = !DILocation(line: 387, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !126, line: 387, column: 9)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !126, line: 387, column: 9)
!1451 = !DILocation(line: 387, column: 9, scope: !1450)
!1452 = !DILocation(line: 394, column: 7, scope: !1408)
!1453 = !DILocation(line: 397, column: 7, scope: !1408)
!1454 = !DILocation(line: 0, scope: !1321)
!1455 = !DILocation(line: 263, column: 10, scope: !1321)
!1456 = !DILocation(line: 400, column: 8, scope: !1350)
!1457 = !DILocation(line: 0, scope: !1349)
!1458 = !DILocation(line: 400, column: 27, scope: !1349)
!1459 = !DILocation(line: 400, column: 19, scope: !1349)
!1460 = !DILocation(line: 400, column: 41, scope: !1349)
!1461 = !DILocation(line: 400, column: 48, scope: !1349)
!1462 = !DILocation(line: 400, column: 3, scope: !1350)
!1463 = !DILocation(line: 400, column: 60, scope: !1349)
!1464 = !DILocation(line: 404, column: 12, scope: !1348)
!1465 = !DILocation(line: 405, column: 12, scope: !1348)
!1466 = !DILocation(line: 406, column: 12, scope: !1348)
!1467 = !DILocation(line: 409, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 408, column: 11)
!1469 = !DILocation(line: 411, column: 17, scope: !1468)
!1470 = !DILocation(line: 412, column: 39, scope: !1468)
!1471 = !DILocation(line: 416, column: 32, scope: !1468)
!1472 = !DILocation(line: 412, column: 19, scope: !1468)
!1473 = !DILocation(line: 412, column: 15, scope: !1468)
!1474 = !DILocation(line: 417, column: 11, scope: !1468)
!1475 = !DILocation(line: 417, column: 26, scope: !1468)
!1476 = !DILocation(line: 417, column: 14, scope: !1468)
!1477 = !DILocation(line: 417, column: 63, scope: !1468)
!1478 = !DILocation(line: 408, column: 11, scope: !1348)
!1479 = !DILocation(line: 0, scope: !1348)
!1480 = !DILocation(line: 424, column: 11, scope: !1348)
!1481 = !DILocation(line: 402, column: 21, scope: !1348)
!1482 = !DILocation(line: 425, column: 7, scope: !1348)
!1483 = !DILocation(line: 428, column: 15, scope: !1357)
!1484 = !DILocation(line: 430, column: 15, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !126, line: 430, column: 15)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !126, line: 429, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 428, column: 15)
!1488 = !DILocation(line: 430, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !126, line: 430, column: 15)
!1490 = !DILocation(line: 430, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !126, line: 430, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !126, line: 430, column: 15)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !126, line: 430, column: 15)
!1494 = !DILocation(line: 430, column: 15, scope: !1492)
!1495 = !DILocation(line: 430, column: 15, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !126, line: 430, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !126, line: 430, column: 15)
!1498 = !DILocation(line: 430, column: 15, scope: !1497)
!1499 = !DILocation(line: 430, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !126, line: 430, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !126, line: 430, column: 15)
!1502 = !DILocation(line: 430, column: 15, scope: !1501)
!1503 = !DILocation(line: 430, column: 15, scope: !1493)
!1504 = !DILocation(line: 430, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !126, line: 430, column: 15)
!1506 = distinct !DILexicalBlock(scope: !1485, file: !126, line: 430, column: 15)
!1507 = !DILocation(line: 430, column: 15, scope: !1506)
!1508 = !DILocation(line: 438, column: 19, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1486, file: !126, line: 437, column: 19)
!1510 = !DILocation(line: 438, column: 24, scope: !1509)
!1511 = !DILocation(line: 438, column: 28, scope: !1509)
!1512 = !DILocation(line: 438, column: 38, scope: !1509)
!1513 = !DILocation(line: 438, column: 48, scope: !1509)
!1514 = !DILocation(line: 438, column: 59, scope: !1509)
!1515 = !DILocation(line: 440, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 440, column: 19)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !126, line: 440, column: 19)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !126, line: 439, column: 17)
!1519 = !DILocation(line: 440, column: 19, scope: !1517)
!1520 = !DILocation(line: 441, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !126, line: 441, column: 19)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !126, line: 441, column: 19)
!1523 = !DILocation(line: 441, column: 19, scope: !1522)
!1524 = !DILocation(line: 442, column: 17, scope: !1518)
!1525 = !DILocation(line: 449, column: 20, scope: !1487)
!1526 = !DILocation(line: 454, column: 11, scope: !1357)
!1527 = !DILocation(line: 457, column: 19, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 455, column: 13)
!1529 = !DILocation(line: 463, column: 19, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !126, line: 462, column: 19)
!1531 = !DILocation(line: 463, column: 24, scope: !1530)
!1532 = !DILocation(line: 463, column: 28, scope: !1530)
!1533 = !DILocation(line: 463, column: 38, scope: !1530)
!1534 = !DILocation(line: 463, column: 47, scope: !1530)
!1535 = !DILocation(line: 463, column: 41, scope: !1530)
!1536 = !DILocation(line: 463, column: 52, scope: !1530)
!1537 = !DILocation(line: 462, column: 19, scope: !1528)
!1538 = !DILocation(line: 464, column: 25, scope: !1530)
!1539 = !DILocation(line: 464, column: 17, scope: !1530)
!1540 = !DILocation(line: 471, column: 25, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1530, file: !126, line: 465, column: 19)
!1542 = !DILocation(line: 475, column: 21, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !126, line: 475, column: 21)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !126, line: 475, column: 21)
!1545 = !DILocation(line: 475, column: 21, scope: !1544)
!1546 = !DILocation(line: 476, column: 21, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !126, line: 476, column: 21)
!1548 = distinct !DILexicalBlock(scope: !1541, file: !126, line: 476, column: 21)
!1549 = !DILocation(line: 476, column: 21, scope: !1548)
!1550 = !DILocation(line: 477, column: 21, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !126, line: 477, column: 21)
!1552 = distinct !DILexicalBlock(scope: !1541, file: !126, line: 477, column: 21)
!1553 = !DILocation(line: 477, column: 21, scope: !1552)
!1554 = !DILocation(line: 478, column: 21, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !126, line: 478, column: 21)
!1556 = distinct !DILexicalBlock(scope: !1541, file: !126, line: 478, column: 21)
!1557 = !DILocation(line: 478, column: 21, scope: !1556)
!1558 = !DILocation(line: 479, column: 21, scope: !1541)
!1559 = !DILocation(line: 403, column: 21, scope: !1348)
!1560 = !DILocation(line: 492, column: 31, scope: !1357)
!1561 = !DILocation(line: 493, column: 31, scope: !1357)
!1562 = !DILocation(line: 495, column: 31, scope: !1357)
!1563 = !DILocation(line: 496, column: 31, scope: !1357)
!1564 = !DILocation(line: 497, column: 31, scope: !1357)
!1565 = !DILocation(line: 500, column: 15, scope: !1357)
!1566 = !DILocation(line: 502, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !126, line: 501, column: 13)
!1568 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 500, column: 15)
!1569 = !DILocation(line: 509, column: 33, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 509, column: 15)
!1571 = !DILocation(line: 0, scope: !1357)
!1572 = !DILocation(line: 514, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 513, column: 15)
!1574 = !DILocation(line: 518, column: 15, scope: !1357)
!1575 = !DILocation(line: 526, column: 26, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 526, column: 15)
!1577 = !DILocation(line: 526, column: 15, scope: !1357)
!1578 = !DILocation(line: 526, column: 40, scope: !1576)
!1579 = !DILocation(line: 526, column: 47, scope: !1576)
!1580 = !DILocation(line: 530, column: 17, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 530, column: 15)
!1582 = !DILocation(line: 526, column: 18, scope: !1576)
!1583 = !DILocation(line: 526, column: 65, scope: !1576)
!1584 = !DILocation(line: 530, column: 15, scope: !1357)
!1585 = !DILocation(line: 535, column: 11, scope: !1357)
!1586 = !DILocation(line: 549, column: 15, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 548, column: 15)
!1588 = !DILocation(line: 556, column: 15, scope: !1357)
!1589 = !DILocation(line: 558, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !126, line: 557, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 556, column: 15)
!1592 = !DILocation(line: 561, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !126, line: 561, column: 19)
!1594 = !DILocation(line: 561, column: 35, scope: !1593)
!1595 = !DILocation(line: 561, column: 30, scope: !1593)
!1596 = !DILocation(line: 570, column: 15, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !126, line: 570, column: 15)
!1598 = distinct !DILexicalBlock(scope: !1590, file: !126, line: 570, column: 15)
!1599 = !DILocation(line: 570, column: 15, scope: !1598)
!1600 = !DILocation(line: 571, column: 15, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !126, line: 571, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1590, file: !126, line: 571, column: 15)
!1603 = !DILocation(line: 571, column: 15, scope: !1602)
!1604 = !DILocation(line: 572, column: 15, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !126, line: 572, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1590, file: !126, line: 572, column: 15)
!1607 = !DILocation(line: 572, column: 15, scope: !1606)
!1608 = !DILocation(line: 574, column: 13, scope: !1590)
!1609 = !DILocation(line: 614, column: 17, scope: !1356)
!1610 = !DILocation(line: 610, column: 20, scope: !1356)
!1611 = !DILocation(line: 617, column: 29, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1361, file: !126, line: 615, column: 15)
!1613 = !{!1614, !1614, i64 0}
!1614 = !{!"short", !665, i64 0}
!1615 = !DILocation(line: 617, column: 27, scope: !1612)
!1616 = !DILocation(line: 612, column: 18, scope: !1356)
!1617 = !DILocation(line: 618, column: 15, scope: !1612)
!1618 = !DILocation(line: 621, column: 17, scope: !1360)
!1619 = !DILocation(line: 622, column: 17, scope: !1360)
!1620 = !DILocation(line: 626, column: 29, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1360, file: !126, line: 626, column: 21)
!1622 = !DILocation(line: 626, column: 21, scope: !1360)
!1623 = !DILocation(line: 627, column: 29, scope: !1621)
!1624 = !DILocation(line: 627, column: 19, scope: !1621)
!1625 = !DILocation(line: 0, scope: !1468)
!1626 = !DILocation(line: 629, column: 17, scope: !1360)
!1627 = !DILocation(line: 624, column: 19, scope: !1360)
!1628 = !DILocation(line: 625, column: 27, scope: !1360)
!1629 = !DILocation(line: 631, column: 21, scope: !1373)
!1630 = !DILocation(line: 632, column: 56, scope: !1373)
!1631 = !DILocation(line: 632, column: 50, scope: !1373)
!1632 = !DILocation(line: 633, column: 53, scope: !1373)
!1633 = !DILocation(line: 621, column: 27, scope: !1360)
!1634 = !DILocation(line: 631, column: 29, scope: !1373)
!1635 = !DILocation(line: 632, column: 36, scope: !1373)
!1636 = !DILocation(line: 632, column: 28, scope: !1373)
!1637 = !DILocation(line: 634, column: 25, scope: !1373)
!1638 = !DILocation(line: 644, column: 38, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1380, file: !126, line: 642, column: 23)
!1640 = !DILocation(line: 644, column: 48, scope: !1639)
!1641 = !DILocation(line: 644, column: 51, scope: !1639)
!1642 = !DILocation(line: 644, column: 25, scope: !1639)
!1643 = !DILocation(line: 645, column: 28, scope: !1639)
!1644 = !DILocation(line: 644, column: 34, scope: !1639)
!1645 = distinct !{!1645, !1642, !1643}
!1646 = !DILocation(line: 658, column: 43, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !126, line: 658, column: 29)
!1648 = distinct !DILexicalBlock(scope: !1377, file: !126, line: 658, column: 29)
!1649 = !DILocation(line: 655, column: 29, scope: !1378)
!1650 = !DILocation(line: 657, column: 36, scope: !1377)
!1651 = !DILocation(line: 659, column: 49, scope: !1647)
!1652 = !DILocation(line: 659, column: 39, scope: !1647)
!1653 = !DILocation(line: 659, column: 31, scope: !1647)
!1654 = !DILocation(line: 658, column: 53, scope: !1647)
!1655 = !DILocation(line: 658, column: 29, scope: !1648)
!1656 = distinct !{!1656, !1655, !1657}
!1657 = !DILocation(line: 667, column: 33, scope: !1648)
!1658 = !DILocation(line: 674, column: 19, scope: !1360)
!1659 = !DILocation(line: 670, column: 41, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1379, file: !126, line: 670, column: 29)
!1661 = !DILocation(line: 670, column: 31, scope: !1660)
!1662 = !DILocation(line: 670, column: 29, scope: !1379)
!1663 = !DILocation(line: 672, column: 27, scope: !1379)
!1664 = !DILocation(line: 675, column: 26, scope: !1360)
!1665 = !DILocation(line: 675, column: 24, scope: !1360)
!1666 = !DILocation(line: 674, column: 19, scope: !1373)
!1667 = distinct !{!1667, !1626, !1668}
!1668 = !DILocation(line: 675, column: 44, scope: !1360)
!1669 = !DILocation(line: 676, column: 15, scope: !1361)
!1670 = !DILocation(line: 0, scope: !1621)
!1671 = !DILocation(line: 0, scope: !1360)
!1672 = !DILocation(line: 678, column: 40, scope: !1356)
!1673 = !DILocation(line: 680, column: 19, scope: !1385)
!1674 = !DILocation(line: 680, column: 45, scope: !1385)
!1675 = !DILocation(line: 680, column: 23, scope: !1385)
!1676 = !DILocation(line: 684, column: 33, scope: !1384)
!1677 = !DILocation(line: 684, column: 24, scope: !1384)
!1678 = !DILocation(line: 686, column: 17, scope: !1384)
!1679 = !DILocation(line: 0, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !126, line: 687, column: 19)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !126, line: 686, column: 17)
!1682 = distinct !DILexicalBlock(scope: !1384, file: !126, line: 686, column: 17)
!1683 = !DILocation(line: 0, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !126, line: 703, column: 21)
!1685 = !DILocation(line: 0, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !126, line: 696, column: 23)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !126, line: 695, column: 30)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !126, line: 688, column: 25)
!1689 = !DILocation(line: 688, column: 43, scope: !1688)
!1690 = !DILocation(line: 690, column: 25, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !126, line: 690, column: 25)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !126, line: 689, column: 23)
!1693 = !DILocation(line: 690, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !126, line: 690, column: 25)
!1695 = !DILocation(line: 690, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !126, line: 690, column: 25)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !126, line: 690, column: 25)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !126, line: 690, column: 25)
!1699 = !DILocation(line: 690, column: 25, scope: !1697)
!1700 = !DILocation(line: 690, column: 25, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !126, line: 690, column: 25)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !126, line: 690, column: 25)
!1703 = !DILocation(line: 690, column: 25, scope: !1702)
!1704 = !DILocation(line: 690, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !126, line: 690, column: 25)
!1706 = distinct !DILexicalBlock(scope: !1698, file: !126, line: 690, column: 25)
!1707 = !DILocation(line: 690, column: 25, scope: !1706)
!1708 = !DILocation(line: 690, column: 25, scope: !1698)
!1709 = !DILocation(line: 690, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !126, line: 690, column: 25)
!1711 = distinct !DILexicalBlock(scope: !1691, file: !126, line: 690, column: 25)
!1712 = !DILocation(line: 690, column: 25, scope: !1711)
!1713 = !DILocation(line: 691, column: 25, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !126, line: 691, column: 25)
!1715 = distinct !DILexicalBlock(scope: !1692, file: !126, line: 691, column: 25)
!1716 = !DILocation(line: 691, column: 25, scope: !1715)
!1717 = !DILocation(line: 692, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !126, line: 692, column: 25)
!1719 = distinct !DILexicalBlock(scope: !1692, file: !126, line: 692, column: 25)
!1720 = !DILocation(line: 692, column: 25, scope: !1719)
!1721 = !DILocation(line: 693, column: 38, scope: !1692)
!1722 = !DILocation(line: 693, column: 33, scope: !1692)
!1723 = !DILocation(line: 694, column: 23, scope: !1692)
!1724 = !DILocation(line: 695, column: 30, scope: !1687)
!1725 = !DILocation(line: 695, column: 30, scope: !1688)
!1726 = !DILocation(line: 697, column: 25, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !126, line: 697, column: 25)
!1728 = distinct !DILexicalBlock(scope: !1686, file: !126, line: 697, column: 25)
!1729 = !DILocation(line: 697, column: 25, scope: !1728)
!1730 = !DILocation(line: 699, column: 23, scope: !1686)
!1731 = !DILocation(line: 0, scope: !1719)
!1732 = !DILocation(line: 0, scope: !1692)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1468, file: !126, line: 418, column: 9)
!1735 = !DILocation(line: 0, scope: !1691)
!1736 = !DILocation(line: 700, column: 35, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1680, file: !126, line: 700, column: 25)
!1738 = !DILocation(line: 700, column: 30, scope: !1737)
!1739 = !DILocation(line: 700, column: 25, scope: !1680)
!1740 = !DILocation(line: 702, column: 21, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !126, line: 702, column: 21)
!1742 = distinct !DILexicalBlock(scope: !1680, file: !126, line: 702, column: 21)
!1743 = !DILocation(line: 702, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !126, line: 702, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !126, line: 702, column: 21)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !126, line: 702, column: 21)
!1747 = !DILocation(line: 702, column: 21, scope: !1745)
!1748 = !DILocation(line: 702, column: 21, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !126, line: 702, column: 21)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !126, line: 702, column: 21)
!1751 = !DILocation(line: 702, column: 21, scope: !1750)
!1752 = !DILocation(line: 702, column: 21, scope: !1746)
!1753 = !DILocation(line: 0, scope: !1728)
!1754 = !DILocation(line: 703, column: 21, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1684, file: !126, line: 703, column: 21)
!1756 = !DILocation(line: 703, column: 21, scope: !1684)
!1757 = !DILocation(line: 704, column: 25, scope: !1680)
!1758 = !DILocation(line: 686, column: 17, scope: !1681)
!1759 = distinct !{!1759, !1760, !1761}
!1760 = !DILocation(line: 686, column: 17, scope: !1682)
!1761 = !DILocation(line: 705, column: 19, scope: !1682)
!1762 = !DILocation(line: 0, scope: !1350)
!1763 = !DILocation(line: 416, column: 30, scope: !1468)
!1764 = !DILocation(line: 712, column: 34, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 712, column: 11)
!1766 = !DILocation(line: 714, column: 14, scope: !1765)
!1767 = !DILocation(line: 715, column: 14, scope: !1765)
!1768 = !DILocation(line: 715, column: 35, scope: !1765)
!1769 = !DILocation(line: 715, column: 17, scope: !1765)
!1770 = !DILocation(line: 715, column: 47, scope: !1765)
!1771 = !DILocation(line: 715, column: 65, scope: !1765)
!1772 = !DILocation(line: 716, column: 15, scope: !1765)
!1773 = !DILocation(line: 716, column: 11, scope: !1765)
!1774 = !DILocation(line: 712, column: 11, scope: !1348)
!1775 = !DILocation(line: 400, column: 10, scope: !1350)
!1776 = !DILocation(line: 0, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !126, line: 519, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1357, file: !126, line: 518, column: 15)
!1779 = !DILocation(line: 720, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 720, column: 7)
!1781 = !DILocation(line: 720, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !126, line: 720, column: 7)
!1783 = !DILocation(line: 720, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !126, line: 720, column: 7)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !126, line: 720, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !126, line: 720, column: 7)
!1787 = !DILocation(line: 720, column: 7, scope: !1785)
!1788 = !DILocation(line: 720, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !126, line: 720, column: 7)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !126, line: 720, column: 7)
!1791 = !DILocation(line: 720, column: 7, scope: !1790)
!1792 = !DILocation(line: 720, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !126, line: 720, column: 7)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !126, line: 720, column: 7)
!1795 = !DILocation(line: 720, column: 7, scope: !1794)
!1796 = !DILocation(line: 720, column: 7, scope: !1786)
!1797 = !DILocation(line: 720, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !126, line: 720, column: 7)
!1799 = distinct !DILexicalBlock(scope: !1780, file: !126, line: 720, column: 7)
!1800 = !DILocation(line: 720, column: 7, scope: !1799)
!1801 = !DILocation(line: 723, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !126, line: 723, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 723, column: 7)
!1804 = !DILocation(line: 424, column: 9, scope: !1348)
!1805 = !DILocation(line: 723, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !126, line: 723, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !126, line: 723, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1802, file: !126, line: 723, column: 7)
!1809 = !DILocation(line: 723, column: 7, scope: !1807)
!1810 = !DILocation(line: 723, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !126, line: 723, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !126, line: 723, column: 7)
!1813 = !DILocation(line: 723, column: 7, scope: !1812)
!1814 = !DILocation(line: 723, column: 7, scope: !1808)
!1815 = !DILocation(line: 724, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !126, line: 724, column: 7)
!1817 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 724, column: 7)
!1818 = !DILocation(line: 724, column: 7, scope: !1817)
!1819 = !DILocation(line: 726, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 726, column: 11)
!1821 = !DILocation(line: 726, column: 11, scope: !1348)
!1822 = !DILocation(line: 728, column: 5, scope: !1349)
!1823 = !DILocation(line: 400, column: 75, scope: !1349)
!1824 = !DILocation(line: 400, column: 3, scope: !1349)
!1825 = distinct !{!1825, !1462, !1826}
!1826 = !DILocation(line: 728, column: 5, scope: !1350)
!1827 = !DILocation(line: 730, column: 11, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 730, column: 7)
!1829 = !DILocation(line: 730, column: 16, scope: !1828)
!1830 = !DILocation(line: 738, column: 51, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 738, column: 7)
!1832 = !DILocation(line: 739, column: 10, scope: !1831)
!1833 = !DILocation(line: 741, column: 11, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !126, line: 741, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !126, line: 740, column: 5)
!1836 = !DILocation(line: 741, column: 11, scope: !1835)
!1837 = !DILocation(line: 742, column: 16, scope: !1834)
!1838 = !DILocation(line: 742, column: 9, scope: !1834)
!1839 = !DILocation(line: 746, column: 18, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !126, line: 746, column: 16)
!1841 = !DILocation(line: 746, column: 32, scope: !1840)
!1842 = !DILocation(line: 746, column: 29, scope: !1840)
!1843 = !DILocation(line: 755, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 755, column: 7)
!1845 = !DILocation(line: 755, column: 20, scope: !1844)
!1846 = !DILocation(line: 756, column: 12, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !126, line: 756, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !126, line: 756, column: 5)
!1849 = !DILocation(line: 756, column: 5, scope: !1848)
!1850 = !DILocation(line: 757, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !126, line: 757, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !126, line: 757, column: 7)
!1853 = !DILocation(line: 757, column: 7, scope: !1852)
!1854 = !DILocation(line: 756, column: 39, scope: !1847)
!1855 = distinct !{!1855, !1849, !1856}
!1856 = !DILocation(line: 757, column: 7, scope: !1848)
!1857 = !DILocation(line: 759, column: 11, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 759, column: 7)
!1859 = !DILocation(line: 759, column: 7, scope: !1321)
!1860 = !DILocation(line: 760, column: 5, scope: !1858)
!1861 = !DILocation(line: 760, column: 17, scope: !1858)
!1862 = !DILocation(line: 766, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 766, column: 7)
!1864 = !DILocation(line: 766, column: 54, scope: !1863)
!1865 = !DILocation(line: 766, column: 51, scope: !1863)
!1866 = !DILocation(line: 770, column: 42, scope: !1321)
!1867 = !DILocation(line: 768, column: 10, scope: !1321)
!1868 = !DILocation(line: 768, column: 3, scope: !1321)
!1869 = !DILocation(line: 772, column: 1, scope: !1321)
!1870 = distinct !DISubprogram(name: "gettext_quote", scope: !126, file: !126, line: 207, type: !1871, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!55, !55, !5}
!1873 = !{!1874, !1875, !1876, !1877}
!1874 = !DILocalVariable(name: "msgid", arg: 1, scope: !1870, file: !126, line: 207, type: !55)
!1875 = !DILocalVariable(name: "s", arg: 2, scope: !1870, file: !126, line: 207, type: !5)
!1876 = !DILocalVariable(name: "translation", scope: !1870, file: !126, line: 209, type: !55)
!1877 = !DILocalVariable(name: "locale_code", scope: !1870, file: !126, line: 210, type: !55)
!1878 = !DILocation(line: 207, column: 28, scope: !1870)
!1879 = !DILocation(line: 207, column: 54, scope: !1870)
!1880 = !DILocation(line: 209, column: 29, scope: !1870)
!1881 = !DILocation(line: 209, column: 15, scope: !1870)
!1882 = !DILocation(line: 212, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1870, file: !126, line: 212, column: 7)
!1884 = !DILocation(line: 212, column: 7, scope: !1870)
!1885 = !DILocation(line: 233, column: 17, scope: !1870)
!1886 = !DILocation(line: 210, column: 15, scope: !1870)
!1887 = !DILocalVariable(name: "s1", arg: 1, scope: !1888, file: !1889, line: 160, type: !55)
!1888 = distinct !DISubprogram(name: "strcaseeq0", scope: !1889, file: !1889, line: 160, type: !1890, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1892)
!1889 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!1892 = !{!1887, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1893 = !DILocalVariable(name: "s2", arg: 2, scope: !1888, file: !1889, line: 160, type: !55)
!1894 = !DILocalVariable(name: "s20", arg: 3, scope: !1888, file: !1889, line: 160, type: !46)
!1895 = !DILocalVariable(name: "s21", arg: 4, scope: !1888, file: !1889, line: 160, type: !46)
!1896 = !DILocalVariable(name: "s22", arg: 5, scope: !1888, file: !1889, line: 160, type: !46)
!1897 = !DILocalVariable(name: "s23", arg: 6, scope: !1888, file: !1889, line: 160, type: !46)
!1898 = !DILocalVariable(name: "s24", arg: 7, scope: !1888, file: !1889, line: 160, type: !46)
!1899 = !DILocalVariable(name: "s25", arg: 8, scope: !1888, file: !1889, line: 160, type: !46)
!1900 = !DILocalVariable(name: "s26", arg: 9, scope: !1888, file: !1889, line: 160, type: !46)
!1901 = !DILocalVariable(name: "s27", arg: 10, scope: !1888, file: !1889, line: 160, type: !46)
!1902 = !DILocalVariable(name: "s28", arg: 11, scope: !1888, file: !1889, line: 160, type: !46)
!1903 = !DILocation(line: 160, column: 25, scope: !1888, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 234, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1870, file: !126, line: 234, column: 7)
!1906 = !DILocation(line: 160, column: 41, scope: !1888, inlinedAt: !1904)
!1907 = !DILocation(line: 160, column: 50, scope: !1888, inlinedAt: !1904)
!1908 = !DILocation(line: 160, column: 60, scope: !1888, inlinedAt: !1904)
!1909 = !DILocation(line: 160, column: 70, scope: !1888, inlinedAt: !1904)
!1910 = !DILocation(line: 160, column: 80, scope: !1888, inlinedAt: !1904)
!1911 = !DILocation(line: 160, column: 90, scope: !1888, inlinedAt: !1904)
!1912 = !DILocation(line: 160, column: 100, scope: !1888, inlinedAt: !1904)
!1913 = !DILocation(line: 160, column: 110, scope: !1888, inlinedAt: !1904)
!1914 = !DILocation(line: 160, column: 120, scope: !1888, inlinedAt: !1904)
!1915 = !DILocation(line: 160, column: 130, scope: !1888, inlinedAt: !1904)
!1916 = !DILocation(line: 162, column: 7, scope: !1917, inlinedAt: !1904)
!1917 = distinct !DILexicalBlock(scope: !1888, file: !1889, line: 162, column: 7)
!1918 = !DILocalVariable(name: "s1", arg: 1, scope: !1919, file: !1889, line: 146, type: !55)
!1919 = distinct !DISubprogram(name: "strcaseeq1", scope: !1889, file: !1889, line: 146, type: !1920, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46}
!1922 = !{!1918, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1923 = !DILocalVariable(name: "s2", arg: 2, scope: !1919, file: !1889, line: 146, type: !55)
!1924 = !DILocalVariable(name: "s21", arg: 3, scope: !1919, file: !1889, line: 146, type: !46)
!1925 = !DILocalVariable(name: "s22", arg: 4, scope: !1919, file: !1889, line: 146, type: !46)
!1926 = !DILocalVariable(name: "s23", arg: 5, scope: !1919, file: !1889, line: 146, type: !46)
!1927 = !DILocalVariable(name: "s24", arg: 6, scope: !1919, file: !1889, line: 146, type: !46)
!1928 = !DILocalVariable(name: "s25", arg: 7, scope: !1919, file: !1889, line: 146, type: !46)
!1929 = !DILocalVariable(name: "s26", arg: 8, scope: !1919, file: !1889, line: 146, type: !46)
!1930 = !DILocalVariable(name: "s27", arg: 9, scope: !1919, file: !1889, line: 146, type: !46)
!1931 = !DILocalVariable(name: "s28", arg: 10, scope: !1919, file: !1889, line: 146, type: !46)
!1932 = !DILocation(line: 146, column: 25, scope: !1919, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 167, column: 16, scope: !1934, inlinedAt: !1904)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1889, line: 164, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1917, file: !1889, line: 163, column: 5)
!1936 = !DILocation(line: 146, column: 41, scope: !1919, inlinedAt: !1933)
!1937 = !DILocation(line: 146, column: 50, scope: !1919, inlinedAt: !1933)
!1938 = !DILocation(line: 146, column: 60, scope: !1919, inlinedAt: !1933)
!1939 = !DILocation(line: 146, column: 70, scope: !1919, inlinedAt: !1933)
!1940 = !DILocation(line: 146, column: 80, scope: !1919, inlinedAt: !1933)
!1941 = !DILocation(line: 146, column: 90, scope: !1919, inlinedAt: !1933)
!1942 = !DILocation(line: 146, column: 100, scope: !1919, inlinedAt: !1933)
!1943 = !DILocation(line: 146, column: 110, scope: !1919, inlinedAt: !1933)
!1944 = !DILocation(line: 146, column: 120, scope: !1919, inlinedAt: !1933)
!1945 = !DILocation(line: 148, column: 7, scope: !1946, inlinedAt: !1933)
!1946 = distinct !DILexicalBlock(scope: !1919, file: !1889, line: 148, column: 7)
!1947 = !DILocalVariable(name: "s1", arg: 1, scope: !1948, file: !1889, line: 132, type: !55)
!1948 = distinct !DISubprogram(name: "strcaseeq2", scope: !1889, file: !1889, line: 132, type: !1949, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46}
!1951 = !{!1947, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1952 = !DILocalVariable(name: "s2", arg: 2, scope: !1948, file: !1889, line: 132, type: !55)
!1953 = !DILocalVariable(name: "s22", arg: 3, scope: !1948, file: !1889, line: 132, type: !46)
!1954 = !DILocalVariable(name: "s23", arg: 4, scope: !1948, file: !1889, line: 132, type: !46)
!1955 = !DILocalVariable(name: "s24", arg: 5, scope: !1948, file: !1889, line: 132, type: !46)
!1956 = !DILocalVariable(name: "s25", arg: 6, scope: !1948, file: !1889, line: 132, type: !46)
!1957 = !DILocalVariable(name: "s26", arg: 7, scope: !1948, file: !1889, line: 132, type: !46)
!1958 = !DILocalVariable(name: "s27", arg: 8, scope: !1948, file: !1889, line: 132, type: !46)
!1959 = !DILocalVariable(name: "s28", arg: 9, scope: !1948, file: !1889, line: 132, type: !46)
!1960 = !DILocation(line: 132, column: 25, scope: !1948, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 153, column: 16, scope: !1962, inlinedAt: !1933)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1889, line: 150, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1946, file: !1889, line: 149, column: 5)
!1964 = !DILocation(line: 132, column: 41, scope: !1948, inlinedAt: !1961)
!1965 = !DILocation(line: 132, column: 50, scope: !1948, inlinedAt: !1961)
!1966 = !DILocation(line: 132, column: 60, scope: !1948, inlinedAt: !1961)
!1967 = !DILocation(line: 132, column: 70, scope: !1948, inlinedAt: !1961)
!1968 = !DILocation(line: 132, column: 80, scope: !1948, inlinedAt: !1961)
!1969 = !DILocation(line: 132, column: 90, scope: !1948, inlinedAt: !1961)
!1970 = !DILocation(line: 132, column: 100, scope: !1948, inlinedAt: !1961)
!1971 = !DILocation(line: 132, column: 110, scope: !1948, inlinedAt: !1961)
!1972 = !DILocation(line: 134, column: 7, scope: !1973, inlinedAt: !1961)
!1973 = distinct !DILexicalBlock(scope: !1948, file: !1889, line: 134, column: 7)
!1974 = !DILocalVariable(name: "s1", arg: 1, scope: !1975, file: !1889, line: 118, type: !55)
!1975 = distinct !DISubprogram(name: "strcaseeq3", scope: !1889, file: !1889, line: 118, type: !1976, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46}
!1978 = !{!1974, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1979 = !DILocalVariable(name: "s2", arg: 2, scope: !1975, file: !1889, line: 118, type: !55)
!1980 = !DILocalVariable(name: "s23", arg: 3, scope: !1975, file: !1889, line: 118, type: !46)
!1981 = !DILocalVariable(name: "s24", arg: 4, scope: !1975, file: !1889, line: 118, type: !46)
!1982 = !DILocalVariable(name: "s25", arg: 5, scope: !1975, file: !1889, line: 118, type: !46)
!1983 = !DILocalVariable(name: "s26", arg: 6, scope: !1975, file: !1889, line: 118, type: !46)
!1984 = !DILocalVariable(name: "s27", arg: 7, scope: !1975, file: !1889, line: 118, type: !46)
!1985 = !DILocalVariable(name: "s28", arg: 8, scope: !1975, file: !1889, line: 118, type: !46)
!1986 = !DILocation(line: 118, column: 25, scope: !1975, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 139, column: 16, scope: !1988, inlinedAt: !1961)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1889, line: 136, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1973, file: !1889, line: 135, column: 5)
!1990 = !DILocation(line: 118, column: 41, scope: !1975, inlinedAt: !1987)
!1991 = !DILocation(line: 118, column: 50, scope: !1975, inlinedAt: !1987)
!1992 = !DILocation(line: 118, column: 60, scope: !1975, inlinedAt: !1987)
!1993 = !DILocation(line: 118, column: 70, scope: !1975, inlinedAt: !1987)
!1994 = !DILocation(line: 118, column: 80, scope: !1975, inlinedAt: !1987)
!1995 = !DILocation(line: 118, column: 90, scope: !1975, inlinedAt: !1987)
!1996 = !DILocation(line: 118, column: 100, scope: !1975, inlinedAt: !1987)
!1997 = !DILocation(line: 120, column: 7, scope: !1998, inlinedAt: !1987)
!1998 = distinct !DILexicalBlock(scope: !1975, file: !1889, line: 120, column: 7)
!1999 = !DILocation(line: 120, column: 7, scope: !1975, inlinedAt: !1987)
!2000 = !DILocalVariable(name: "s1", arg: 1, scope: !2001, file: !1889, line: 104, type: !55)
!2001 = distinct !DISubprogram(name: "strcaseeq4", scope: !1889, file: !1889, line: 104, type: !2002, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!58, !55, !55, !46, !46, !46, !46, !46}
!2004 = !{!2000, !2005, !2006, !2007, !2008, !2009, !2010}
!2005 = !DILocalVariable(name: "s2", arg: 2, scope: !2001, file: !1889, line: 104, type: !55)
!2006 = !DILocalVariable(name: "s24", arg: 3, scope: !2001, file: !1889, line: 104, type: !46)
!2007 = !DILocalVariable(name: "s25", arg: 4, scope: !2001, file: !1889, line: 104, type: !46)
!2008 = !DILocalVariable(name: "s26", arg: 5, scope: !2001, file: !1889, line: 104, type: !46)
!2009 = !DILocalVariable(name: "s27", arg: 6, scope: !2001, file: !1889, line: 104, type: !46)
!2010 = !DILocalVariable(name: "s28", arg: 7, scope: !2001, file: !1889, line: 104, type: !46)
!2011 = !DILocation(line: 104, column: 25, scope: !2001, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 125, column: 16, scope: !2013, inlinedAt: !1987)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !1889, line: 122, column: 11)
!2014 = distinct !DILexicalBlock(scope: !1998, file: !1889, line: 121, column: 5)
!2015 = !DILocation(line: 104, column: 41, scope: !2001, inlinedAt: !2012)
!2016 = !DILocation(line: 104, column: 50, scope: !2001, inlinedAt: !2012)
!2017 = !DILocation(line: 104, column: 60, scope: !2001, inlinedAt: !2012)
!2018 = !DILocation(line: 104, column: 70, scope: !2001, inlinedAt: !2012)
!2019 = !DILocation(line: 104, column: 80, scope: !2001, inlinedAt: !2012)
!2020 = !DILocation(line: 104, column: 90, scope: !2001, inlinedAt: !2012)
!2021 = !DILocation(line: 106, column: 7, scope: !2022, inlinedAt: !2012)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !1889, line: 106, column: 7)
!2023 = !DILocation(line: 106, column: 7, scope: !2001, inlinedAt: !2012)
!2024 = !DILocalVariable(name: "s1", arg: 1, scope: !2025, file: !1889, line: 90, type: !55)
!2025 = distinct !DISubprogram(name: "strcaseeq5", scope: !1889, file: !1889, line: 90, type: !2026, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!58, !55, !55, !46, !46, !46, !46}
!2028 = !{!2024, !2029, !2030, !2031, !2032, !2033}
!2029 = !DILocalVariable(name: "s2", arg: 2, scope: !2025, file: !1889, line: 90, type: !55)
!2030 = !DILocalVariable(name: "s25", arg: 3, scope: !2025, file: !1889, line: 90, type: !46)
!2031 = !DILocalVariable(name: "s26", arg: 4, scope: !2025, file: !1889, line: 90, type: !46)
!2032 = !DILocalVariable(name: "s27", arg: 5, scope: !2025, file: !1889, line: 90, type: !46)
!2033 = !DILocalVariable(name: "s28", arg: 6, scope: !2025, file: !1889, line: 90, type: !46)
!2034 = !DILocation(line: 90, column: 25, scope: !2025, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 111, column: 16, scope: !2036, inlinedAt: !2012)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1889, line: 108, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2022, file: !1889, line: 107, column: 5)
!2038 = !DILocation(line: 90, column: 41, scope: !2025, inlinedAt: !2035)
!2039 = !DILocation(line: 90, column: 50, scope: !2025, inlinedAt: !2035)
!2040 = !DILocation(line: 90, column: 60, scope: !2025, inlinedAt: !2035)
!2041 = !DILocation(line: 90, column: 70, scope: !2025, inlinedAt: !2035)
!2042 = !DILocation(line: 90, column: 80, scope: !2025, inlinedAt: !2035)
!2043 = !DILocation(line: 92, column: 7, scope: !2044, inlinedAt: !2035)
!2044 = distinct !DILexicalBlock(scope: !2025, file: !1889, line: 92, column: 7)
!2045 = !DILocation(line: 92, column: 7, scope: !2025, inlinedAt: !2035)
!2046 = !DILocation(line: 235, column: 12, scope: !1905)
!2047 = !DILocation(line: 235, column: 21, scope: !1905)
!2048 = !DILocation(line: 235, column: 5, scope: !1905)
!2049 = !DILocation(line: 146, column: 25, scope: !1919, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 167, column: 16, scope: !1934, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 236, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1870, file: !126, line: 236, column: 7)
!2053 = !DILocation(line: 146, column: 41, scope: !1919, inlinedAt: !2050)
!2054 = !DILocation(line: 146, column: 50, scope: !1919, inlinedAt: !2050)
!2055 = !DILocation(line: 146, column: 60, scope: !1919, inlinedAt: !2050)
!2056 = !DILocation(line: 146, column: 70, scope: !1919, inlinedAt: !2050)
!2057 = !DILocation(line: 146, column: 80, scope: !1919, inlinedAt: !2050)
!2058 = !DILocation(line: 146, column: 90, scope: !1919, inlinedAt: !2050)
!2059 = !DILocation(line: 146, column: 100, scope: !1919, inlinedAt: !2050)
!2060 = !DILocation(line: 146, column: 110, scope: !1919, inlinedAt: !2050)
!2061 = !DILocation(line: 146, column: 120, scope: !1919, inlinedAt: !2050)
!2062 = !DILocation(line: 148, column: 7, scope: !1946, inlinedAt: !2050)
!2063 = !DILocation(line: 132, column: 25, scope: !1948, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 153, column: 16, scope: !1962, inlinedAt: !2050)
!2065 = !DILocation(line: 132, column: 41, scope: !1948, inlinedAt: !2064)
!2066 = !DILocation(line: 132, column: 50, scope: !1948, inlinedAt: !2064)
!2067 = !DILocation(line: 132, column: 60, scope: !1948, inlinedAt: !2064)
!2068 = !DILocation(line: 132, column: 70, scope: !1948, inlinedAt: !2064)
!2069 = !DILocation(line: 132, column: 80, scope: !1948, inlinedAt: !2064)
!2070 = !DILocation(line: 132, column: 90, scope: !1948, inlinedAt: !2064)
!2071 = !DILocation(line: 132, column: 100, scope: !1948, inlinedAt: !2064)
!2072 = !DILocation(line: 132, column: 110, scope: !1948, inlinedAt: !2064)
!2073 = !DILocation(line: 134, column: 7, scope: !1973, inlinedAt: !2064)
!2074 = !DILocation(line: 134, column: 7, scope: !1948, inlinedAt: !2064)
!2075 = !DILocation(line: 118, column: 25, scope: !1975, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 139, column: 16, scope: !1988, inlinedAt: !2064)
!2077 = !DILocation(line: 118, column: 41, scope: !1975, inlinedAt: !2076)
!2078 = !DILocation(line: 118, column: 50, scope: !1975, inlinedAt: !2076)
!2079 = !DILocation(line: 118, column: 60, scope: !1975, inlinedAt: !2076)
!2080 = !DILocation(line: 118, column: 70, scope: !1975, inlinedAt: !2076)
!2081 = !DILocation(line: 118, column: 80, scope: !1975, inlinedAt: !2076)
!2082 = !DILocation(line: 118, column: 90, scope: !1975, inlinedAt: !2076)
!2083 = !DILocation(line: 118, column: 100, scope: !1975, inlinedAt: !2076)
!2084 = !DILocation(line: 120, column: 7, scope: !1998, inlinedAt: !2076)
!2085 = !DILocation(line: 120, column: 7, scope: !1975, inlinedAt: !2076)
!2086 = !DILocation(line: 104, column: 25, scope: !2001, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 125, column: 16, scope: !2013, inlinedAt: !2076)
!2088 = !DILocation(line: 104, column: 41, scope: !2001, inlinedAt: !2087)
!2089 = !DILocation(line: 104, column: 50, scope: !2001, inlinedAt: !2087)
!2090 = !DILocation(line: 104, column: 60, scope: !2001, inlinedAt: !2087)
!2091 = !DILocation(line: 104, column: 70, scope: !2001, inlinedAt: !2087)
!2092 = !DILocation(line: 104, column: 80, scope: !2001, inlinedAt: !2087)
!2093 = !DILocation(line: 104, column: 90, scope: !2001, inlinedAt: !2087)
!2094 = !DILocation(line: 106, column: 7, scope: !2022, inlinedAt: !2087)
!2095 = !DILocation(line: 106, column: 7, scope: !2001, inlinedAt: !2087)
!2096 = !DILocation(line: 90, column: 25, scope: !2025, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 111, column: 16, scope: !2036, inlinedAt: !2087)
!2098 = !DILocation(line: 90, column: 41, scope: !2025, inlinedAt: !2097)
!2099 = !DILocation(line: 90, column: 50, scope: !2025, inlinedAt: !2097)
!2100 = !DILocation(line: 90, column: 60, scope: !2025, inlinedAt: !2097)
!2101 = !DILocation(line: 90, column: 70, scope: !2025, inlinedAt: !2097)
!2102 = !DILocation(line: 90, column: 80, scope: !2025, inlinedAt: !2097)
!2103 = !DILocation(line: 92, column: 7, scope: !2044, inlinedAt: !2097)
!2104 = !DILocation(line: 92, column: 7, scope: !2025, inlinedAt: !2097)
!2105 = !DILocalVariable(name: "s1", arg: 1, scope: !2106, file: !1889, line: 76, type: !55)
!2106 = distinct !DISubprogram(name: "strcaseeq6", scope: !1889, file: !1889, line: 76, type: !2107, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!58, !55, !55, !46, !46, !46}
!2109 = !{!2105, !2110, !2111, !2112, !2113}
!2110 = !DILocalVariable(name: "s2", arg: 2, scope: !2106, file: !1889, line: 76, type: !55)
!2111 = !DILocalVariable(name: "s26", arg: 3, scope: !2106, file: !1889, line: 76, type: !46)
!2112 = !DILocalVariable(name: "s27", arg: 4, scope: !2106, file: !1889, line: 76, type: !46)
!2113 = !DILocalVariable(name: "s28", arg: 5, scope: !2106, file: !1889, line: 76, type: !46)
!2114 = !DILocation(line: 76, column: 25, scope: !2106, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 97, column: 16, scope: !2116, inlinedAt: !2097)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !1889, line: 94, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2044, file: !1889, line: 93, column: 5)
!2118 = !DILocation(line: 76, column: 41, scope: !2106, inlinedAt: !2115)
!2119 = !DILocation(line: 76, column: 50, scope: !2106, inlinedAt: !2115)
!2120 = !DILocation(line: 76, column: 60, scope: !2106, inlinedAt: !2115)
!2121 = !DILocation(line: 76, column: 70, scope: !2106, inlinedAt: !2115)
!2122 = !DILocation(line: 78, column: 7, scope: !2123, inlinedAt: !2115)
!2123 = distinct !DILexicalBlock(scope: !2106, file: !1889, line: 78, column: 7)
!2124 = !DILocation(line: 78, column: 7, scope: !2106, inlinedAt: !2115)
!2125 = !DILocalVariable(name: "s1", arg: 1, scope: !2126, file: !1889, line: 62, type: !55)
!2126 = distinct !DISubprogram(name: "strcaseeq7", scope: !1889, file: !1889, line: 62, type: !2127, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!58, !55, !55, !46, !46}
!2129 = !{!2125, !2130, !2131, !2132}
!2130 = !DILocalVariable(name: "s2", arg: 2, scope: !2126, file: !1889, line: 62, type: !55)
!2131 = !DILocalVariable(name: "s27", arg: 3, scope: !2126, file: !1889, line: 62, type: !46)
!2132 = !DILocalVariable(name: "s28", arg: 4, scope: !2126, file: !1889, line: 62, type: !46)
!2133 = !DILocation(line: 62, column: 25, scope: !2126, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 83, column: 16, scope: !2135, inlinedAt: !2115)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !1889, line: 80, column: 11)
!2136 = distinct !DILexicalBlock(scope: !2123, file: !1889, line: 79, column: 5)
!2137 = !DILocation(line: 62, column: 41, scope: !2126, inlinedAt: !2134)
!2138 = !DILocation(line: 62, column: 50, scope: !2126, inlinedAt: !2134)
!2139 = !DILocation(line: 62, column: 60, scope: !2126, inlinedAt: !2134)
!2140 = !DILocation(line: 64, column: 7, scope: !2141, inlinedAt: !2134)
!2141 = distinct !DILexicalBlock(scope: !2126, file: !1889, line: 64, column: 7)
!2142 = !DILocation(line: 236, column: 7, scope: !1870)
!2143 = !DILocation(line: 237, column: 12, scope: !2052)
!2144 = !DILocation(line: 237, column: 21, scope: !2052)
!2145 = !DILocation(line: 237, column: 5, scope: !2052)
!2146 = !DILocation(line: 239, column: 13, scope: !1870)
!2147 = !DILocation(line: 239, column: 11, scope: !1870)
!2148 = !DILocation(line: 239, column: 3, scope: !1870)
!2149 = !DILocation(line: 0, scope: !1870)
!2150 = !DILocation(line: 240, column: 1, scope: !1870)
!2151 = distinct !DISubprogram(name: "quotearg_alloc", scope: !126, file: !126, line: 799, type: !2152, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!45, !55, !120, !1193}
!2154 = !{!2155, !2156, !2157}
!2155 = !DILocalVariable(name: "arg", arg: 1, scope: !2151, file: !126, line: 799, type: !55)
!2156 = !DILocalVariable(name: "argsize", arg: 2, scope: !2151, file: !126, line: 799, type: !120)
!2157 = !DILocalVariable(name: "o", arg: 3, scope: !2151, file: !126, line: 800, type: !1193)
!2158 = !DILocation(line: 799, column: 29, scope: !2151)
!2159 = !DILocation(line: 799, column: 41, scope: !2151)
!2160 = !DILocation(line: 800, column: 47, scope: !2151)
!2161 = !DILocalVariable(name: "arg", arg: 1, scope: !2162, file: !126, line: 812, type: !55)
!2162 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !126, file: !126, line: 812, type: !2163, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!45, !55, !120, !209, !1193}
!2165 = !{!2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2166 = !DILocalVariable(name: "argsize", arg: 2, scope: !2162, file: !126, line: 812, type: !120)
!2167 = !DILocalVariable(name: "size", arg: 3, scope: !2162, file: !126, line: 812, type: !209)
!2168 = !DILocalVariable(name: "o", arg: 4, scope: !2162, file: !126, line: 813, type: !1193)
!2169 = !DILocalVariable(name: "p", scope: !2162, file: !126, line: 815, type: !1193)
!2170 = !DILocalVariable(name: "e", scope: !2162, file: !126, line: 816, type: !58)
!2171 = !DILocalVariable(name: "flags", scope: !2162, file: !126, line: 818, type: !58)
!2172 = !DILocalVariable(name: "bufsize", scope: !2162, file: !126, line: 819, type: !120)
!2173 = !DILocalVariable(name: "buf", scope: !2162, file: !126, line: 823, type: !45)
!2174 = !DILocation(line: 812, column: 33, scope: !2162, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 802, column: 10, scope: !2151)
!2176 = !DILocation(line: 812, column: 45, scope: !2162, inlinedAt: !2175)
!2177 = !DILocation(line: 812, column: 62, scope: !2162, inlinedAt: !2175)
!2178 = !DILocation(line: 813, column: 51, scope: !2162, inlinedAt: !2175)
!2179 = !DILocation(line: 815, column: 37, scope: !2162, inlinedAt: !2175)
!2180 = !DILocation(line: 815, column: 33, scope: !2162, inlinedAt: !2175)
!2181 = !DILocation(line: 816, column: 11, scope: !2162, inlinedAt: !2175)
!2182 = !DILocation(line: 816, column: 7, scope: !2162, inlinedAt: !2175)
!2183 = !DILocation(line: 818, column: 18, scope: !2162, inlinedAt: !2175)
!2184 = !DILocation(line: 818, column: 24, scope: !2162, inlinedAt: !2175)
!2185 = !DILocation(line: 818, column: 7, scope: !2162, inlinedAt: !2175)
!2186 = !DILocation(line: 819, column: 69, scope: !2162, inlinedAt: !2175)
!2187 = !DILocation(line: 820, column: 53, scope: !2162, inlinedAt: !2175)
!2188 = !DILocation(line: 821, column: 49, scope: !2162, inlinedAt: !2175)
!2189 = !DILocation(line: 822, column: 49, scope: !2162, inlinedAt: !2175)
!2190 = !DILocation(line: 819, column: 20, scope: !2162, inlinedAt: !2175)
!2191 = !DILocation(line: 822, column: 62, scope: !2162, inlinedAt: !2175)
!2192 = !DILocation(line: 819, column: 10, scope: !2162, inlinedAt: !2175)
!2193 = !DILocalVariable(name: "n", arg: 1, scope: !2194, file: !205, line: 216, type: !120)
!2194 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !2195, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!45, !120}
!2197 = !{!2193}
!2198 = !DILocation(line: 216, column: 20, scope: !2194, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 823, column: 15, scope: !2162, inlinedAt: !2175)
!2200 = !DILocation(line: 218, column: 10, scope: !2194, inlinedAt: !2199)
!2201 = !DILocation(line: 823, column: 9, scope: !2162, inlinedAt: !2175)
!2202 = !DILocation(line: 824, column: 60, scope: !2162, inlinedAt: !2175)
!2203 = !DILocation(line: 826, column: 32, scope: !2162, inlinedAt: !2175)
!2204 = !DILocation(line: 826, column: 47, scope: !2162, inlinedAt: !2175)
!2205 = !DILocation(line: 824, column: 3, scope: !2162, inlinedAt: !2175)
!2206 = !DILocation(line: 827, column: 9, scope: !2162, inlinedAt: !2175)
!2207 = !DILocation(line: 802, column: 3, scope: !2151)
!2208 = !DILocation(line: 812, column: 33, scope: !2162)
!2209 = !DILocation(line: 812, column: 45, scope: !2162)
!2210 = !DILocation(line: 812, column: 62, scope: !2162)
!2211 = !DILocation(line: 813, column: 51, scope: !2162)
!2212 = !DILocation(line: 815, column: 37, scope: !2162)
!2213 = !DILocation(line: 815, column: 33, scope: !2162)
!2214 = !DILocation(line: 816, column: 11, scope: !2162)
!2215 = !DILocation(line: 816, column: 7, scope: !2162)
!2216 = !DILocation(line: 818, column: 18, scope: !2162)
!2217 = !DILocation(line: 818, column: 27, scope: !2162)
!2218 = !DILocation(line: 818, column: 24, scope: !2162)
!2219 = !DILocation(line: 818, column: 7, scope: !2162)
!2220 = !DILocation(line: 819, column: 69, scope: !2162)
!2221 = !DILocation(line: 820, column: 53, scope: !2162)
!2222 = !DILocation(line: 821, column: 49, scope: !2162)
!2223 = !DILocation(line: 822, column: 49, scope: !2162)
!2224 = !DILocation(line: 819, column: 20, scope: !2162)
!2225 = !DILocation(line: 822, column: 62, scope: !2162)
!2226 = !DILocation(line: 819, column: 10, scope: !2162)
!2227 = !DILocation(line: 216, column: 20, scope: !2194, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 823, column: 15, scope: !2162)
!2229 = !DILocation(line: 218, column: 10, scope: !2194, inlinedAt: !2228)
!2230 = !DILocation(line: 823, column: 9, scope: !2162)
!2231 = !DILocation(line: 824, column: 60, scope: !2162)
!2232 = !DILocation(line: 826, column: 32, scope: !2162)
!2233 = !DILocation(line: 826, column: 47, scope: !2162)
!2234 = !DILocation(line: 824, column: 3, scope: !2162)
!2235 = !DILocation(line: 827, column: 9, scope: !2162)
!2236 = !DILocation(line: 828, column: 7, scope: !2162)
!2237 = !DILocation(line: 829, column: 11, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2162, file: !126, line: 828, column: 7)
!2239 = !{!2240, !2240, i64 0}
!2240 = !{!"long", !665, i64 0}
!2241 = !DILocation(line: 829, column: 5, scope: !2238)
!2242 = !DILocation(line: 830, column: 3, scope: !2162)
!2243 = distinct !DISubprogram(name: "quotearg_free", scope: !126, file: !126, line: 848, type: !1100, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2244)
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "sv", scope: !2243, file: !126, line: 850, type: !152)
!2246 = !DILocalVariable(name: "i", scope: !2243, file: !126, line: 851, type: !58)
!2247 = !DILocation(line: 850, column: 24, scope: !2243)
!2248 = !DILocation(line: 850, column: 19, scope: !2243)
!2249 = !DILocation(line: 851, column: 7, scope: !2243)
!2250 = !DILocation(line: 852, column: 19, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !126, line: 852, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2243, file: !126, line: 852, column: 3)
!2253 = !DILocation(line: 852, column: 17, scope: !2251)
!2254 = !DILocation(line: 852, column: 3, scope: !2252)
!2255 = !DILocation(line: 853, column: 17, scope: !2251)
!2256 = !{!2257, !664, i64 8}
!2257 = !{!"slotvec", !2240, i64 0, !664, i64 8}
!2258 = !DILocation(line: 853, column: 5, scope: !2251)
!2259 = !DILocation(line: 852, column: 28, scope: !2251)
!2260 = distinct !{!2260, !2254, !2261}
!2261 = !DILocation(line: 853, column: 20, scope: !2252)
!2262 = !DILocation(line: 854, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2243, file: !126, line: 854, column: 7)
!2264 = !DILocation(line: 854, column: 17, scope: !2263)
!2265 = !DILocation(line: 854, column: 7, scope: !2243)
!2266 = !DILocation(line: 856, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !126, line: 855, column: 5)
!2268 = !DILocation(line: 857, column: 21, scope: !2267)
!2269 = !{!2257, !2240, i64 0}
!2270 = !DILocation(line: 858, column: 20, scope: !2267)
!2271 = !DILocation(line: 859, column: 5, scope: !2267)
!2272 = !DILocation(line: 860, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2243, file: !126, line: 860, column: 7)
!2274 = !DILocation(line: 860, column: 7, scope: !2243)
!2275 = !DILocation(line: 862, column: 13, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !126, line: 861, column: 5)
!2277 = !DILocation(line: 862, column: 7, scope: !2276)
!2278 = !DILocation(line: 863, column: 15, scope: !2276)
!2279 = !DILocation(line: 864, column: 5, scope: !2276)
!2280 = !DILocation(line: 865, column: 10, scope: !2243)
!2281 = !DILocation(line: 866, column: 1, scope: !2243)
!2282 = distinct !DISubprogram(name: "quotearg_n", scope: !126, file: !126, line: 931, type: !2283, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!45, !58, !55}
!2285 = !{!2286, !2287}
!2286 = !DILocalVariable(name: "n", arg: 1, scope: !2282, file: !126, line: 931, type: !58)
!2287 = !DILocalVariable(name: "arg", arg: 2, scope: !2282, file: !126, line: 931, type: !55)
!2288 = !DILocation(line: 931, column: 17, scope: !2282)
!2289 = !DILocation(line: 931, column: 32, scope: !2282)
!2290 = !DILocation(line: 933, column: 10, scope: !2282)
!2291 = !DILocation(line: 933, column: 3, scope: !2282)
!2292 = distinct !DISubprogram(name: "quotearg_n_options", scope: !126, file: !126, line: 877, type: !2293, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!45, !58, !55, !120, !1193}
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2305, !2306, !2308, !2309, !2310}
!2296 = !DILocalVariable(name: "n", arg: 1, scope: !2292, file: !126, line: 877, type: !58)
!2297 = !DILocalVariable(name: "arg", arg: 2, scope: !2292, file: !126, line: 877, type: !55)
!2298 = !DILocalVariable(name: "argsize", arg: 3, scope: !2292, file: !126, line: 877, type: !120)
!2299 = !DILocalVariable(name: "options", arg: 4, scope: !2292, file: !126, line: 878, type: !1193)
!2300 = !DILocalVariable(name: "e", scope: !2292, file: !126, line: 880, type: !58)
!2301 = !DILocalVariable(name: "sv", scope: !2292, file: !126, line: 882, type: !152)
!2302 = !DILocalVariable(name: "preallocated", scope: !2303, file: !126, line: 889, type: !78)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !126, line: 888, column: 5)
!2304 = distinct !DILexicalBlock(scope: !2292, file: !126, line: 887, column: 7)
!2305 = !DILocalVariable(name: "nmax", scope: !2303, file: !126, line: 890, type: !58)
!2306 = !DILocalVariable(name: "size", scope: !2307, file: !126, line: 903, type: !120)
!2307 = distinct !DILexicalBlock(scope: !2292, file: !126, line: 902, column: 3)
!2308 = !DILocalVariable(name: "val", scope: !2307, file: !126, line: 904, type: !45)
!2309 = !DILocalVariable(name: "flags", scope: !2307, file: !126, line: 906, type: !58)
!2310 = !DILocalVariable(name: "qsize", scope: !2307, file: !126, line: 907, type: !120)
!2311 = !DILocation(line: 877, column: 25, scope: !2292)
!2312 = !DILocation(line: 877, column: 40, scope: !2292)
!2313 = !DILocation(line: 877, column: 52, scope: !2292)
!2314 = !DILocation(line: 878, column: 51, scope: !2292)
!2315 = !DILocation(line: 880, column: 11, scope: !2292)
!2316 = !DILocation(line: 880, column: 7, scope: !2292)
!2317 = !DILocation(line: 882, column: 24, scope: !2292)
!2318 = !DILocation(line: 882, column: 19, scope: !2292)
!2319 = !DILocation(line: 884, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2292, file: !126, line: 884, column: 7)
!2321 = !DILocation(line: 884, column: 7, scope: !2292)
!2322 = !DILocation(line: 885, column: 5, scope: !2320)
!2323 = !DILocation(line: 887, column: 7, scope: !2304)
!2324 = !DILocation(line: 887, column: 14, scope: !2304)
!2325 = !DILocation(line: 887, column: 7, scope: !2292)
!2326 = !DILocation(line: 889, column: 31, scope: !2303)
!2327 = !DILocation(line: 890, column: 11, scope: !2303)
!2328 = !DILocation(line: 892, column: 16, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2303, file: !126, line: 892, column: 11)
!2330 = !DILocation(line: 892, column: 11, scope: !2303)
!2331 = !DILocation(line: 893, column: 9, scope: !2329)
!2332 = !DILocation(line: 895, column: 32, scope: !2303)
!2333 = !DILocation(line: 895, column: 61, scope: !2303)
!2334 = !DILocation(line: 895, column: 58, scope: !2303)
!2335 = !DILocation(line: 895, column: 66, scope: !2303)
!2336 = !DILocation(line: 895, column: 22, scope: !2303)
!2337 = !DILocation(line: 895, column: 15, scope: !2303)
!2338 = !DILocation(line: 896, column: 11, scope: !2303)
!2339 = !DILocation(line: 897, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2303, file: !126, line: 896, column: 11)
!2341 = !{i64 0, i64 8, !2239, i64 8, i64 8, !663}
!2342 = !DILocation(line: 897, column: 9, scope: !2340)
!2343 = !DILocation(line: 898, column: 20, scope: !2303)
!2344 = !DILocation(line: 898, column: 18, scope: !2303)
!2345 = !DILocation(line: 898, column: 7, scope: !2303)
!2346 = !DILocation(line: 898, column: 38, scope: !2303)
!2347 = !DILocation(line: 898, column: 31, scope: !2303)
!2348 = !DILocation(line: 898, column: 48, scope: !2303)
!2349 = !DILocation(line: 899, column: 14, scope: !2303)
!2350 = !DILocation(line: 900, column: 5, scope: !2303)
!2351 = !DILocation(line: 0, scope: !2292)
!2352 = !DILocation(line: 903, column: 19, scope: !2307)
!2353 = !DILocation(line: 903, column: 25, scope: !2307)
!2354 = !DILocation(line: 903, column: 12, scope: !2307)
!2355 = !DILocation(line: 904, column: 23, scope: !2307)
!2356 = !DILocation(line: 904, column: 11, scope: !2307)
!2357 = !DILocation(line: 906, column: 26, scope: !2307)
!2358 = !DILocation(line: 906, column: 32, scope: !2307)
!2359 = !DILocation(line: 906, column: 9, scope: !2307)
!2360 = !DILocation(line: 908, column: 55, scope: !2307)
!2361 = !DILocation(line: 909, column: 46, scope: !2307)
!2362 = !DILocation(line: 910, column: 55, scope: !2307)
!2363 = !DILocation(line: 911, column: 55, scope: !2307)
!2364 = !DILocation(line: 907, column: 20, scope: !2307)
!2365 = !DILocation(line: 907, column: 12, scope: !2307)
!2366 = !DILocation(line: 913, column: 14, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2307, file: !126, line: 913, column: 9)
!2368 = !DILocation(line: 913, column: 9, scope: !2307)
!2369 = !DILocation(line: 915, column: 35, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !126, line: 914, column: 7)
!2371 = !DILocation(line: 915, column: 20, scope: !2370)
!2372 = !DILocation(line: 916, column: 17, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !126, line: 916, column: 13)
!2374 = !DILocation(line: 916, column: 13, scope: !2370)
!2375 = !DILocation(line: 917, column: 11, scope: !2373)
!2376 = !DILocation(line: 216, column: 20, scope: !2194, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 918, column: 27, scope: !2370)
!2378 = !DILocation(line: 218, column: 10, scope: !2194, inlinedAt: !2377)
!2379 = !DILocation(line: 918, column: 19, scope: !2370)
!2380 = !DILocation(line: 919, column: 69, scope: !2370)
!2381 = !DILocation(line: 921, column: 44, scope: !2370)
!2382 = !DILocation(line: 922, column: 44, scope: !2370)
!2383 = !DILocation(line: 919, column: 9, scope: !2370)
!2384 = !DILocation(line: 923, column: 7, scope: !2370)
!2385 = !DILocation(line: 0, scope: !2307)
!2386 = !DILocation(line: 925, column: 11, scope: !2307)
!2387 = !DILocation(line: 926, column: 5, scope: !2307)
!2388 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !126, file: !126, line: 937, type: !2389, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!45, !58, !55, !120}
!2391 = !{!2392, !2393, !2394}
!2392 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !126, line: 937, type: !58)
!2393 = !DILocalVariable(name: "arg", arg: 2, scope: !2388, file: !126, line: 937, type: !55)
!2394 = !DILocalVariable(name: "argsize", arg: 3, scope: !2388, file: !126, line: 937, type: !120)
!2395 = !DILocation(line: 937, column: 21, scope: !2388)
!2396 = !DILocation(line: 937, column: 36, scope: !2388)
!2397 = !DILocation(line: 937, column: 48, scope: !2388)
!2398 = !DILocation(line: 939, column: 10, scope: !2388)
!2399 = !DILocation(line: 939, column: 3, scope: !2388)
!2400 = distinct !DISubprogram(name: "quotearg", scope: !126, file: !126, line: 943, type: !2401, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!45, !55}
!2403 = !{!2404}
!2404 = !DILocalVariable(name: "arg", arg: 1, scope: !2400, file: !126, line: 943, type: !55)
!2405 = !DILocation(line: 943, column: 23, scope: !2400)
!2406 = !DILocation(line: 931, column: 17, scope: !2282, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 945, column: 10, scope: !2400)
!2408 = !DILocation(line: 931, column: 32, scope: !2282, inlinedAt: !2407)
!2409 = !DILocation(line: 933, column: 10, scope: !2282, inlinedAt: !2407)
!2410 = !DILocation(line: 945, column: 3, scope: !2400)
!2411 = distinct !DISubprogram(name: "quotearg_mem", scope: !126, file: !126, line: 949, type: !2412, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!45, !55, !120}
!2414 = !{!2415, !2416}
!2415 = !DILocalVariable(name: "arg", arg: 1, scope: !2411, file: !126, line: 949, type: !55)
!2416 = !DILocalVariable(name: "argsize", arg: 2, scope: !2411, file: !126, line: 949, type: !120)
!2417 = !DILocation(line: 949, column: 27, scope: !2411)
!2418 = !DILocation(line: 949, column: 39, scope: !2411)
!2419 = !DILocation(line: 937, column: 21, scope: !2388, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 951, column: 10, scope: !2411)
!2421 = !DILocation(line: 937, column: 36, scope: !2388, inlinedAt: !2420)
!2422 = !DILocation(line: 937, column: 48, scope: !2388, inlinedAt: !2420)
!2423 = !DILocation(line: 939, column: 10, scope: !2388, inlinedAt: !2420)
!2424 = !DILocation(line: 951, column: 3, scope: !2411)
!2425 = distinct !DISubprogram(name: "quotearg_n_style", scope: !126, file: !126, line: 955, type: !2426, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!45, !58, !5, !55}
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "n", arg: 1, scope: !2425, file: !126, line: 955, type: !58)
!2430 = !DILocalVariable(name: "s", arg: 2, scope: !2425, file: !126, line: 955, type: !5)
!2431 = !DILocalVariable(name: "arg", arg: 3, scope: !2425, file: !126, line: 955, type: !55)
!2432 = !DILocalVariable(name: "o", scope: !2425, file: !126, line: 957, type: !1194)
!2433 = !DILocation(line: 955, column: 23, scope: !2425)
!2434 = !DILocation(line: 955, column: 45, scope: !2425)
!2435 = !DILocation(line: 955, column: 60, scope: !2425)
!2436 = !DILocation(line: 957, column: 3, scope: !2425)
!2437 = !DILocation(line: 957, column: 32, scope: !2425)
!2438 = !DILocalVariable(name: "style", arg: 1, scope: !2439, file: !126, line: 193, type: !5)
!2439 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !126, file: !126, line: 193, type: !2440, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!133, !5}
!2442 = !{!2438, !2443}
!2443 = !DILocalVariable(name: "o", scope: !2439, file: !126, line: 195, type: !133)
!2444 = !DILocation(line: 193, column: 48, scope: !2439, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 957, column: 36, scope: !2425)
!2446 = !DILocation(line: 195, column: 26, scope: !2439, inlinedAt: !2445)
!2447 = !{!2448}
!2448 = distinct !{!2448, !2449, !"quoting_options_from_style: argument 0"}
!2449 = distinct !{!2449, !"quoting_options_from_style"}
!2450 = !DILocation(line: 196, column: 13, scope: !2451, inlinedAt: !2445)
!2451 = distinct !DILexicalBlock(scope: !2439, file: !126, line: 196, column: 7)
!2452 = !DILocation(line: 196, column: 7, scope: !2439, inlinedAt: !2445)
!2453 = !DILocation(line: 197, column: 5, scope: !2451, inlinedAt: !2445)
!2454 = !DILocation(line: 198, column: 5, scope: !2439, inlinedAt: !2445)
!2455 = !DILocation(line: 198, column: 11, scope: !2439, inlinedAt: !2445)
!2456 = !DILocation(line: 958, column: 10, scope: !2425)
!2457 = !DILocation(line: 959, column: 1, scope: !2425)
!2458 = !DILocation(line: 958, column: 3, scope: !2425)
!2459 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !126, file: !126, line: 962, type: !2460, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!45, !58, !5, !55, !120}
!2462 = !{!2463, !2464, !2465, !2466, !2467}
!2463 = !DILocalVariable(name: "n", arg: 1, scope: !2459, file: !126, line: 962, type: !58)
!2464 = !DILocalVariable(name: "s", arg: 2, scope: !2459, file: !126, line: 962, type: !5)
!2465 = !DILocalVariable(name: "arg", arg: 3, scope: !2459, file: !126, line: 963, type: !55)
!2466 = !DILocalVariable(name: "argsize", arg: 4, scope: !2459, file: !126, line: 963, type: !120)
!2467 = !DILocalVariable(name: "o", scope: !2459, file: !126, line: 965, type: !1194)
!2468 = !DILocation(line: 962, column: 27, scope: !2459)
!2469 = !DILocation(line: 962, column: 49, scope: !2459)
!2470 = !DILocation(line: 963, column: 35, scope: !2459)
!2471 = !DILocation(line: 963, column: 47, scope: !2459)
!2472 = !DILocation(line: 965, column: 3, scope: !2459)
!2473 = !DILocation(line: 965, column: 32, scope: !2459)
!2474 = !DILocation(line: 193, column: 48, scope: !2439, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 965, column: 36, scope: !2459)
!2476 = !DILocation(line: 195, column: 26, scope: !2439, inlinedAt: !2475)
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"quoting_options_from_style: argument 0"}
!2479 = distinct !{!2479, !"quoting_options_from_style"}
!2480 = !DILocation(line: 196, column: 13, scope: !2451, inlinedAt: !2475)
!2481 = !DILocation(line: 196, column: 7, scope: !2439, inlinedAt: !2475)
!2482 = !DILocation(line: 197, column: 5, scope: !2451, inlinedAt: !2475)
!2483 = !DILocation(line: 198, column: 5, scope: !2439, inlinedAt: !2475)
!2484 = !DILocation(line: 198, column: 11, scope: !2439, inlinedAt: !2475)
!2485 = !DILocation(line: 966, column: 10, scope: !2459)
!2486 = !DILocation(line: 967, column: 1, scope: !2459)
!2487 = !DILocation(line: 966, column: 3, scope: !2459)
!2488 = distinct !DISubprogram(name: "quotearg_style", scope: !126, file: !126, line: 970, type: !2489, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!45, !5, !55}
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "s", arg: 1, scope: !2488, file: !126, line: 970, type: !5)
!2493 = !DILocalVariable(name: "arg", arg: 2, scope: !2488, file: !126, line: 970, type: !55)
!2494 = !DILocation(line: 970, column: 36, scope: !2488)
!2495 = !DILocation(line: 970, column: 51, scope: !2488)
!2496 = !DILocation(line: 955, column: 23, scope: !2425, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 972, column: 10, scope: !2488)
!2498 = !DILocation(line: 955, column: 45, scope: !2425, inlinedAt: !2497)
!2499 = !DILocation(line: 955, column: 60, scope: !2425, inlinedAt: !2497)
!2500 = !DILocation(line: 957, column: 3, scope: !2425, inlinedAt: !2497)
!2501 = !DILocation(line: 957, column: 32, scope: !2425, inlinedAt: !2497)
!2502 = !DILocation(line: 193, column: 48, scope: !2439, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 957, column: 36, scope: !2425, inlinedAt: !2497)
!2504 = !DILocation(line: 195, column: 26, scope: !2439, inlinedAt: !2503)
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"quoting_options_from_style: argument 0"}
!2507 = distinct !{!2507, !"quoting_options_from_style"}
!2508 = !DILocation(line: 196, column: 13, scope: !2451, inlinedAt: !2503)
!2509 = !DILocation(line: 196, column: 7, scope: !2439, inlinedAt: !2503)
!2510 = !DILocation(line: 197, column: 5, scope: !2451, inlinedAt: !2503)
!2511 = !DILocation(line: 198, column: 5, scope: !2439, inlinedAt: !2503)
!2512 = !DILocation(line: 198, column: 11, scope: !2439, inlinedAt: !2503)
!2513 = !DILocation(line: 958, column: 10, scope: !2425, inlinedAt: !2497)
!2514 = !DILocation(line: 959, column: 1, scope: !2425, inlinedAt: !2497)
!2515 = !DILocation(line: 972, column: 3, scope: !2488)
!2516 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !126, file: !126, line: 976, type: !2517, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!45, !5, !55, !120}
!2519 = !{!2520, !2521, !2522}
!2520 = !DILocalVariable(name: "s", arg: 1, scope: !2516, file: !126, line: 976, type: !5)
!2521 = !DILocalVariable(name: "arg", arg: 2, scope: !2516, file: !126, line: 976, type: !55)
!2522 = !DILocalVariable(name: "argsize", arg: 3, scope: !2516, file: !126, line: 976, type: !120)
!2523 = !DILocation(line: 976, column: 40, scope: !2516)
!2524 = !DILocation(line: 976, column: 55, scope: !2516)
!2525 = !DILocation(line: 976, column: 67, scope: !2516)
!2526 = !DILocation(line: 962, column: 27, scope: !2459, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 978, column: 10, scope: !2516)
!2528 = !DILocation(line: 962, column: 49, scope: !2459, inlinedAt: !2527)
!2529 = !DILocation(line: 963, column: 35, scope: !2459, inlinedAt: !2527)
!2530 = !DILocation(line: 963, column: 47, scope: !2459, inlinedAt: !2527)
!2531 = !DILocation(line: 965, column: 3, scope: !2459, inlinedAt: !2527)
!2532 = !DILocation(line: 965, column: 32, scope: !2459, inlinedAt: !2527)
!2533 = !DILocation(line: 193, column: 48, scope: !2439, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 965, column: 36, scope: !2459, inlinedAt: !2527)
!2535 = !DILocation(line: 195, column: 26, scope: !2439, inlinedAt: !2534)
!2536 = !{!2537}
!2537 = distinct !{!2537, !2538, !"quoting_options_from_style: argument 0"}
!2538 = distinct !{!2538, !"quoting_options_from_style"}
!2539 = !DILocation(line: 196, column: 13, scope: !2451, inlinedAt: !2534)
!2540 = !DILocation(line: 196, column: 7, scope: !2439, inlinedAt: !2534)
!2541 = !DILocation(line: 197, column: 5, scope: !2451, inlinedAt: !2534)
!2542 = !DILocation(line: 198, column: 5, scope: !2439, inlinedAt: !2534)
!2543 = !DILocation(line: 198, column: 11, scope: !2439, inlinedAt: !2534)
!2544 = !DILocation(line: 966, column: 10, scope: !2459, inlinedAt: !2527)
!2545 = !DILocation(line: 967, column: 1, scope: !2459, inlinedAt: !2527)
!2546 = !DILocation(line: 978, column: 3, scope: !2516)
!2547 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !126, file: !126, line: 982, type: !2548, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!45, !55, !120, !46}
!2550 = !{!2551, !2552, !2553, !2554}
!2551 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !126, line: 982, type: !55)
!2552 = !DILocalVariable(name: "argsize", arg: 2, scope: !2547, file: !126, line: 982, type: !120)
!2553 = !DILocalVariable(name: "ch", arg: 3, scope: !2547, file: !126, line: 982, type: !46)
!2554 = !DILocalVariable(name: "options", scope: !2547, file: !126, line: 984, type: !133)
!2555 = !DILocation(line: 982, column: 32, scope: !2547)
!2556 = !DILocation(line: 982, column: 44, scope: !2547)
!2557 = !DILocation(line: 982, column: 58, scope: !2547)
!2558 = !DILocation(line: 984, column: 3, scope: !2547)
!2559 = !DILocation(line: 985, column: 13, scope: !2547)
!2560 = !{i64 0, i64 4, !873, i64 4, i64 4, !742, i64 8, i64 32, !873, i64 40, i64 8, !663, i64 48, i64 8, !663}
!2561 = !DILocation(line: 984, column: 26, scope: !2547)
!2562 = !DILocation(line: 152, column: 43, scope: !1215, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 986, column: 3, scope: !2547)
!2564 = !DILocation(line: 152, column: 51, scope: !1215, inlinedAt: !2563)
!2565 = !DILocation(line: 152, column: 58, scope: !1215, inlinedAt: !2563)
!2566 = !DILocation(line: 154, column: 17, scope: !1215, inlinedAt: !2563)
!2567 = !DILocation(line: 156, column: 62, scope: !1215, inlinedAt: !2563)
!2568 = !DILocation(line: 156, column: 57, scope: !1215, inlinedAt: !2563)
!2569 = !DILocation(line: 155, column: 17, scope: !1215, inlinedAt: !2563)
!2570 = !DILocation(line: 157, column: 15, scope: !1215, inlinedAt: !2563)
!2571 = !DILocation(line: 157, column: 7, scope: !1215, inlinedAt: !2563)
!2572 = !DILocation(line: 158, column: 12, scope: !1215, inlinedAt: !2563)
!2573 = !DILocation(line: 158, column: 15, scope: !1215, inlinedAt: !2563)
!2574 = !DILocation(line: 158, column: 25, scope: !1215, inlinedAt: !2563)
!2575 = !DILocation(line: 158, column: 7, scope: !1215, inlinedAt: !2563)
!2576 = !DILocation(line: 159, column: 18, scope: !1215, inlinedAt: !2563)
!2577 = !DILocation(line: 159, column: 23, scope: !1215, inlinedAt: !2563)
!2578 = !DILocation(line: 159, column: 6, scope: !1215, inlinedAt: !2563)
!2579 = !DILocation(line: 987, column: 10, scope: !2547)
!2580 = !DILocation(line: 988, column: 1, scope: !2547)
!2581 = !DILocation(line: 987, column: 3, scope: !2547)
!2582 = distinct !DISubprogram(name: "quotearg_char", scope: !126, file: !126, line: 991, type: !2583, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!45, !55, !46}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "arg", arg: 1, scope: !2582, file: !126, line: 991, type: !55)
!2587 = !DILocalVariable(name: "ch", arg: 2, scope: !2582, file: !126, line: 991, type: !46)
!2588 = !DILocation(line: 991, column: 28, scope: !2582)
!2589 = !DILocation(line: 991, column: 38, scope: !2582)
!2590 = !DILocation(line: 982, column: 32, scope: !2547, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 993, column: 10, scope: !2582)
!2592 = !DILocation(line: 982, column: 44, scope: !2547, inlinedAt: !2591)
!2593 = !DILocation(line: 982, column: 58, scope: !2547, inlinedAt: !2591)
!2594 = !DILocation(line: 984, column: 3, scope: !2547, inlinedAt: !2591)
!2595 = !DILocation(line: 985, column: 13, scope: !2547, inlinedAt: !2591)
!2596 = !DILocation(line: 984, column: 26, scope: !2547, inlinedAt: !2591)
!2597 = !DILocation(line: 152, column: 43, scope: !1215, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 986, column: 3, scope: !2547, inlinedAt: !2591)
!2599 = !DILocation(line: 152, column: 51, scope: !1215, inlinedAt: !2598)
!2600 = !DILocation(line: 152, column: 58, scope: !1215, inlinedAt: !2598)
!2601 = !DILocation(line: 154, column: 17, scope: !1215, inlinedAt: !2598)
!2602 = !DILocation(line: 156, column: 62, scope: !1215, inlinedAt: !2598)
!2603 = !DILocation(line: 156, column: 57, scope: !1215, inlinedAt: !2598)
!2604 = !DILocation(line: 155, column: 17, scope: !1215, inlinedAt: !2598)
!2605 = !DILocation(line: 157, column: 15, scope: !1215, inlinedAt: !2598)
!2606 = !DILocation(line: 157, column: 7, scope: !1215, inlinedAt: !2598)
!2607 = !DILocation(line: 158, column: 12, scope: !1215, inlinedAt: !2598)
!2608 = !DILocation(line: 158, column: 15, scope: !1215, inlinedAt: !2598)
!2609 = !DILocation(line: 158, column: 25, scope: !1215, inlinedAt: !2598)
!2610 = !DILocation(line: 158, column: 7, scope: !1215, inlinedAt: !2598)
!2611 = !DILocation(line: 159, column: 18, scope: !1215, inlinedAt: !2598)
!2612 = !DILocation(line: 159, column: 23, scope: !1215, inlinedAt: !2598)
!2613 = !DILocation(line: 159, column: 6, scope: !1215, inlinedAt: !2598)
!2614 = !DILocation(line: 987, column: 10, scope: !2547, inlinedAt: !2591)
!2615 = !DILocation(line: 988, column: 1, scope: !2547, inlinedAt: !2591)
!2616 = !DILocation(line: 993, column: 3, scope: !2582)
!2617 = distinct !DISubprogram(name: "quotearg_colon", scope: !126, file: !126, line: 997, type: !2401, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2618)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "arg", arg: 1, scope: !2617, file: !126, line: 997, type: !55)
!2620 = !DILocation(line: 997, column: 29, scope: !2617)
!2621 = !DILocation(line: 991, column: 28, scope: !2582, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 999, column: 10, scope: !2617)
!2623 = !DILocation(line: 991, column: 38, scope: !2582, inlinedAt: !2622)
!2624 = !DILocation(line: 982, column: 32, scope: !2547, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 993, column: 10, scope: !2582, inlinedAt: !2622)
!2626 = !DILocation(line: 982, column: 44, scope: !2547, inlinedAt: !2625)
!2627 = !DILocation(line: 982, column: 58, scope: !2547, inlinedAt: !2625)
!2628 = !DILocation(line: 984, column: 3, scope: !2547, inlinedAt: !2625)
!2629 = !DILocation(line: 985, column: 13, scope: !2547, inlinedAt: !2625)
!2630 = !DILocation(line: 984, column: 26, scope: !2547, inlinedAt: !2625)
!2631 = !DILocation(line: 152, column: 43, scope: !1215, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 986, column: 3, scope: !2547, inlinedAt: !2625)
!2633 = !DILocation(line: 152, column: 51, scope: !1215, inlinedAt: !2632)
!2634 = !DILocation(line: 152, column: 58, scope: !1215, inlinedAt: !2632)
!2635 = !DILocation(line: 154, column: 17, scope: !1215, inlinedAt: !2632)
!2636 = !DILocation(line: 156, column: 57, scope: !1215, inlinedAt: !2632)
!2637 = !DILocation(line: 155, column: 17, scope: !1215, inlinedAt: !2632)
!2638 = !DILocation(line: 157, column: 7, scope: !1215, inlinedAt: !2632)
!2639 = !DILocation(line: 158, column: 12, scope: !1215, inlinedAt: !2632)
!2640 = !DILocation(line: 159, column: 6, scope: !1215, inlinedAt: !2632)
!2641 = !DILocation(line: 987, column: 10, scope: !2547, inlinedAt: !2625)
!2642 = !DILocation(line: 988, column: 1, scope: !2547, inlinedAt: !2625)
!2643 = !DILocation(line: 999, column: 3, scope: !2617)
!2644 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !126, file: !126, line: 1003, type: !2412, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2645)
!2645 = !{!2646, !2647}
!2646 = !DILocalVariable(name: "arg", arg: 1, scope: !2644, file: !126, line: 1003, type: !55)
!2647 = !DILocalVariable(name: "argsize", arg: 2, scope: !2644, file: !126, line: 1003, type: !120)
!2648 = !DILocation(line: 1003, column: 33, scope: !2644)
!2649 = !DILocation(line: 1003, column: 45, scope: !2644)
!2650 = !DILocation(line: 982, column: 32, scope: !2547, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1005, column: 10, scope: !2644)
!2652 = !DILocation(line: 982, column: 44, scope: !2547, inlinedAt: !2651)
!2653 = !DILocation(line: 982, column: 58, scope: !2547, inlinedAt: !2651)
!2654 = !DILocation(line: 984, column: 3, scope: !2547, inlinedAt: !2651)
!2655 = !DILocation(line: 985, column: 13, scope: !2547, inlinedAt: !2651)
!2656 = !DILocation(line: 984, column: 26, scope: !2547, inlinedAt: !2651)
!2657 = !DILocation(line: 152, column: 43, scope: !1215, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 986, column: 3, scope: !2547, inlinedAt: !2651)
!2659 = !DILocation(line: 152, column: 51, scope: !1215, inlinedAt: !2658)
!2660 = !DILocation(line: 152, column: 58, scope: !1215, inlinedAt: !2658)
!2661 = !DILocation(line: 154, column: 17, scope: !1215, inlinedAt: !2658)
!2662 = !DILocation(line: 156, column: 57, scope: !1215, inlinedAt: !2658)
!2663 = !DILocation(line: 155, column: 17, scope: !1215, inlinedAt: !2658)
!2664 = !DILocation(line: 157, column: 7, scope: !1215, inlinedAt: !2658)
!2665 = !DILocation(line: 158, column: 12, scope: !1215, inlinedAt: !2658)
!2666 = !DILocation(line: 159, column: 6, scope: !1215, inlinedAt: !2658)
!2667 = !DILocation(line: 987, column: 10, scope: !2547, inlinedAt: !2651)
!2668 = !DILocation(line: 988, column: 1, scope: !2547, inlinedAt: !2651)
!2669 = !DILocation(line: 1005, column: 3, scope: !2644)
!2670 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !126, file: !126, line: 1009, type: !2426, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2671)
!2671 = !{!2672, !2673, !2674, !2675}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !126, line: 1009, type: !58)
!2673 = !DILocalVariable(name: "s", arg: 2, scope: !2670, file: !126, line: 1009, type: !5)
!2674 = !DILocalVariable(name: "arg", arg: 3, scope: !2670, file: !126, line: 1009, type: !55)
!2675 = !DILocalVariable(name: "options", scope: !2670, file: !126, line: 1011, type: !133)
!2676 = !DILocation(line: 195, column: 26, scope: !2439, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1012, column: 13, scope: !2670)
!2678 = !DILocation(line: 1009, column: 29, scope: !2670)
!2679 = !DILocation(line: 1009, column: 51, scope: !2670)
!2680 = !DILocation(line: 1009, column: 66, scope: !2670)
!2681 = !DILocation(line: 1011, column: 3, scope: !2670)
!2682 = !DILocation(line: 1012, column: 13, scope: !2670)
!2683 = !DILocation(line: 193, column: 48, scope: !2439, inlinedAt: !2677)
!2684 = !{!2685}
!2685 = distinct !{!2685, !2686, !"quoting_options_from_style: argument 0"}
!2686 = distinct !{!2686, !"quoting_options_from_style"}
!2687 = !DILocation(line: 196, column: 13, scope: !2451, inlinedAt: !2677)
!2688 = !DILocation(line: 196, column: 7, scope: !2439, inlinedAt: !2677)
!2689 = !DILocation(line: 197, column: 5, scope: !2451, inlinedAt: !2677)
!2690 = !DILocation(line: 1011, column: 26, scope: !2670)
!2691 = !DILocation(line: 152, column: 43, scope: !1215, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1013, column: 3, scope: !2670)
!2693 = !DILocation(line: 152, column: 51, scope: !1215, inlinedAt: !2692)
!2694 = !DILocation(line: 152, column: 58, scope: !1215, inlinedAt: !2692)
!2695 = !DILocation(line: 154, column: 17, scope: !1215, inlinedAt: !2692)
!2696 = !DILocation(line: 156, column: 57, scope: !1215, inlinedAt: !2692)
!2697 = !DILocation(line: 155, column: 17, scope: !1215, inlinedAt: !2692)
!2698 = !DILocation(line: 157, column: 7, scope: !1215, inlinedAt: !2692)
!2699 = !DILocation(line: 158, column: 12, scope: !1215, inlinedAt: !2692)
!2700 = !DILocation(line: 159, column: 6, scope: !1215, inlinedAt: !2692)
!2701 = !DILocation(line: 1014, column: 10, scope: !2670)
!2702 = !DILocation(line: 1015, column: 1, scope: !2670)
!2703 = !DILocation(line: 1014, column: 3, scope: !2670)
!2704 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !126, file: !126, line: 1018, type: !2705, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!45, !58, !55, !55, !55}
!2707 = !{!2708, !2709, !2710, !2711}
!2708 = !DILocalVariable(name: "n", arg: 1, scope: !2704, file: !126, line: 1018, type: !58)
!2709 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2704, file: !126, line: 1018, type: !55)
!2710 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2704, file: !126, line: 1019, type: !55)
!2711 = !DILocalVariable(name: "arg", arg: 4, scope: !2704, file: !126, line: 1019, type: !55)
!2712 = !DILocation(line: 1018, column: 24, scope: !2704)
!2713 = !DILocation(line: 1018, column: 39, scope: !2704)
!2714 = !DILocation(line: 1019, column: 32, scope: !2704)
!2715 = !DILocation(line: 1019, column: 57, scope: !2704)
!2716 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !126, line: 1026, type: !58)
!2717 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !126, file: !126, line: 1026, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!45, !58, !55, !55, !55, !120}
!2720 = !{!2716, !2721, !2722, !2723, !2724, !2725}
!2721 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2717, file: !126, line: 1026, type: !55)
!2722 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2717, file: !126, line: 1027, type: !55)
!2723 = !DILocalVariable(name: "arg", arg: 4, scope: !2717, file: !126, line: 1028, type: !55)
!2724 = !DILocalVariable(name: "argsize", arg: 5, scope: !2717, file: !126, line: 1028, type: !120)
!2725 = !DILocalVariable(name: "o", scope: !2717, file: !126, line: 1030, type: !133)
!2726 = !DILocation(line: 1026, column: 28, scope: !2717, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1021, column: 10, scope: !2704)
!2728 = !DILocation(line: 1026, column: 43, scope: !2717, inlinedAt: !2727)
!2729 = !DILocation(line: 1027, column: 36, scope: !2717, inlinedAt: !2727)
!2730 = !DILocation(line: 1028, column: 36, scope: !2717, inlinedAt: !2727)
!2731 = !DILocation(line: 1028, column: 48, scope: !2717, inlinedAt: !2727)
!2732 = !DILocation(line: 1030, column: 3, scope: !2717, inlinedAt: !2727)
!2733 = !DILocation(line: 1030, column: 30, scope: !2717, inlinedAt: !2727)
!2734 = !DILocation(line: 1030, column: 26, scope: !2717, inlinedAt: !2727)
!2735 = !DILocation(line: 179, column: 45, scope: !1264, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1031, column: 3, scope: !2717, inlinedAt: !2727)
!2737 = !DILocation(line: 180, column: 33, scope: !1264, inlinedAt: !2736)
!2738 = !DILocation(line: 180, column: 57, scope: !1264, inlinedAt: !2736)
!2739 = !DILocation(line: 184, column: 6, scope: !1264, inlinedAt: !2736)
!2740 = !DILocation(line: 184, column: 12, scope: !1264, inlinedAt: !2736)
!2741 = !DILocation(line: 185, column: 8, scope: !1280, inlinedAt: !2736)
!2742 = !DILocation(line: 185, column: 23, scope: !1280, inlinedAt: !2736)
!2743 = !DILocation(line: 185, column: 19, scope: !1280, inlinedAt: !2736)
!2744 = !DILocation(line: 186, column: 5, scope: !1280, inlinedAt: !2736)
!2745 = !DILocation(line: 187, column: 6, scope: !1264, inlinedAt: !2736)
!2746 = !DILocation(line: 187, column: 17, scope: !1264, inlinedAt: !2736)
!2747 = !DILocation(line: 188, column: 6, scope: !1264, inlinedAt: !2736)
!2748 = !DILocation(line: 188, column: 18, scope: !1264, inlinedAt: !2736)
!2749 = !DILocation(line: 1032, column: 10, scope: !2717, inlinedAt: !2727)
!2750 = !DILocation(line: 1033, column: 1, scope: !2717, inlinedAt: !2727)
!2751 = !DILocation(line: 1021, column: 3, scope: !2704)
!2752 = !DILocation(line: 1026, column: 28, scope: !2717)
!2753 = !DILocation(line: 1026, column: 43, scope: !2717)
!2754 = !DILocation(line: 1027, column: 36, scope: !2717)
!2755 = !DILocation(line: 1028, column: 36, scope: !2717)
!2756 = !DILocation(line: 1028, column: 48, scope: !2717)
!2757 = !DILocation(line: 1030, column: 3, scope: !2717)
!2758 = !DILocation(line: 1030, column: 30, scope: !2717)
!2759 = !DILocation(line: 1030, column: 26, scope: !2717)
!2760 = !DILocation(line: 179, column: 45, scope: !1264, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1031, column: 3, scope: !2717)
!2762 = !DILocation(line: 180, column: 33, scope: !1264, inlinedAt: !2761)
!2763 = !DILocation(line: 180, column: 57, scope: !1264, inlinedAt: !2761)
!2764 = !DILocation(line: 184, column: 6, scope: !1264, inlinedAt: !2761)
!2765 = !DILocation(line: 184, column: 12, scope: !1264, inlinedAt: !2761)
!2766 = !DILocation(line: 185, column: 8, scope: !1280, inlinedAt: !2761)
!2767 = !DILocation(line: 185, column: 23, scope: !1280, inlinedAt: !2761)
!2768 = !DILocation(line: 185, column: 19, scope: !1280, inlinedAt: !2761)
!2769 = !DILocation(line: 186, column: 5, scope: !1280, inlinedAt: !2761)
!2770 = !DILocation(line: 187, column: 6, scope: !1264, inlinedAt: !2761)
!2771 = !DILocation(line: 187, column: 17, scope: !1264, inlinedAt: !2761)
!2772 = !DILocation(line: 188, column: 6, scope: !1264, inlinedAt: !2761)
!2773 = !DILocation(line: 188, column: 18, scope: !1264, inlinedAt: !2761)
!2774 = !DILocation(line: 1032, column: 10, scope: !2717)
!2775 = !DILocation(line: 1033, column: 1, scope: !2717)
!2776 = !DILocation(line: 1032, column: 3, scope: !2717)
!2777 = distinct !DISubprogram(name: "quotearg_custom", scope: !126, file: !126, line: 1036, type: !2778, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!45, !55, !55, !55}
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2777, file: !126, line: 1036, type: !55)
!2782 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2777, file: !126, line: 1036, type: !55)
!2783 = !DILocalVariable(name: "arg", arg: 3, scope: !2777, file: !126, line: 1037, type: !55)
!2784 = !DILocation(line: 1036, column: 30, scope: !2777)
!2785 = !DILocation(line: 1036, column: 54, scope: !2777)
!2786 = !DILocation(line: 1037, column: 30, scope: !2777)
!2787 = !DILocation(line: 1018, column: 24, scope: !2704, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1039, column: 10, scope: !2777)
!2789 = !DILocation(line: 1018, column: 39, scope: !2704, inlinedAt: !2788)
!2790 = !DILocation(line: 1019, column: 32, scope: !2704, inlinedAt: !2788)
!2791 = !DILocation(line: 1019, column: 57, scope: !2704, inlinedAt: !2788)
!2792 = !DILocation(line: 1026, column: 28, scope: !2717, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1021, column: 10, scope: !2704, inlinedAt: !2788)
!2794 = !DILocation(line: 1026, column: 43, scope: !2717, inlinedAt: !2793)
!2795 = !DILocation(line: 1027, column: 36, scope: !2717, inlinedAt: !2793)
!2796 = !DILocation(line: 1028, column: 36, scope: !2717, inlinedAt: !2793)
!2797 = !DILocation(line: 1028, column: 48, scope: !2717, inlinedAt: !2793)
!2798 = !DILocation(line: 1030, column: 3, scope: !2717, inlinedAt: !2793)
!2799 = !DILocation(line: 1030, column: 30, scope: !2717, inlinedAt: !2793)
!2800 = !DILocation(line: 1030, column: 26, scope: !2717, inlinedAt: !2793)
!2801 = !DILocation(line: 179, column: 45, scope: !1264, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1031, column: 3, scope: !2717, inlinedAt: !2793)
!2803 = !DILocation(line: 180, column: 33, scope: !1264, inlinedAt: !2802)
!2804 = !DILocation(line: 180, column: 57, scope: !1264, inlinedAt: !2802)
!2805 = !DILocation(line: 184, column: 6, scope: !1264, inlinedAt: !2802)
!2806 = !DILocation(line: 184, column: 12, scope: !1264, inlinedAt: !2802)
!2807 = !DILocation(line: 185, column: 8, scope: !1280, inlinedAt: !2802)
!2808 = !DILocation(line: 185, column: 23, scope: !1280, inlinedAt: !2802)
!2809 = !DILocation(line: 185, column: 19, scope: !1280, inlinedAt: !2802)
!2810 = !DILocation(line: 186, column: 5, scope: !1280, inlinedAt: !2802)
!2811 = !DILocation(line: 187, column: 6, scope: !1264, inlinedAt: !2802)
!2812 = !DILocation(line: 187, column: 17, scope: !1264, inlinedAt: !2802)
!2813 = !DILocation(line: 188, column: 6, scope: !1264, inlinedAt: !2802)
!2814 = !DILocation(line: 188, column: 18, scope: !1264, inlinedAt: !2802)
!2815 = !DILocation(line: 1032, column: 10, scope: !2717, inlinedAt: !2793)
!2816 = !DILocation(line: 1033, column: 1, scope: !2717, inlinedAt: !2793)
!2817 = !DILocation(line: 1039, column: 3, scope: !2777)
!2818 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !126, file: !126, line: 1043, type: !2819, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!45, !55, !55, !55, !120}
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2818, file: !126, line: 1043, type: !55)
!2823 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2818, file: !126, line: 1043, type: !55)
!2824 = !DILocalVariable(name: "arg", arg: 3, scope: !2818, file: !126, line: 1044, type: !55)
!2825 = !DILocalVariable(name: "argsize", arg: 4, scope: !2818, file: !126, line: 1044, type: !120)
!2826 = !DILocation(line: 1043, column: 34, scope: !2818)
!2827 = !DILocation(line: 1043, column: 58, scope: !2818)
!2828 = !DILocation(line: 1044, column: 34, scope: !2818)
!2829 = !DILocation(line: 1044, column: 46, scope: !2818)
!2830 = !DILocation(line: 1026, column: 28, scope: !2717, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1046, column: 10, scope: !2818)
!2832 = !DILocation(line: 1026, column: 43, scope: !2717, inlinedAt: !2831)
!2833 = !DILocation(line: 1027, column: 36, scope: !2717, inlinedAt: !2831)
!2834 = !DILocation(line: 1028, column: 36, scope: !2717, inlinedAt: !2831)
!2835 = !DILocation(line: 1028, column: 48, scope: !2717, inlinedAt: !2831)
!2836 = !DILocation(line: 1030, column: 3, scope: !2717, inlinedAt: !2831)
!2837 = !DILocation(line: 1030, column: 30, scope: !2717, inlinedAt: !2831)
!2838 = !DILocation(line: 1030, column: 26, scope: !2717, inlinedAt: !2831)
!2839 = !DILocation(line: 179, column: 45, scope: !1264, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1031, column: 3, scope: !2717, inlinedAt: !2831)
!2841 = !DILocation(line: 180, column: 33, scope: !1264, inlinedAt: !2840)
!2842 = !DILocation(line: 180, column: 57, scope: !1264, inlinedAt: !2840)
!2843 = !DILocation(line: 184, column: 6, scope: !1264, inlinedAt: !2840)
!2844 = !DILocation(line: 184, column: 12, scope: !1264, inlinedAt: !2840)
!2845 = !DILocation(line: 185, column: 8, scope: !1280, inlinedAt: !2840)
!2846 = !DILocation(line: 185, column: 23, scope: !1280, inlinedAt: !2840)
!2847 = !DILocation(line: 185, column: 19, scope: !1280, inlinedAt: !2840)
!2848 = !DILocation(line: 186, column: 5, scope: !1280, inlinedAt: !2840)
!2849 = !DILocation(line: 187, column: 6, scope: !1264, inlinedAt: !2840)
!2850 = !DILocation(line: 187, column: 17, scope: !1264, inlinedAt: !2840)
!2851 = !DILocation(line: 188, column: 6, scope: !1264, inlinedAt: !2840)
!2852 = !DILocation(line: 188, column: 18, scope: !1264, inlinedAt: !2840)
!2853 = !DILocation(line: 1032, column: 10, scope: !2717, inlinedAt: !2831)
!2854 = !DILocation(line: 1033, column: 1, scope: !2717, inlinedAt: !2831)
!2855 = !DILocation(line: 1046, column: 3, scope: !2818)
!2856 = distinct !DISubprogram(name: "quote_n_mem", scope: !126, file: !126, line: 1061, type: !2857, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!55, !58, !55, !120}
!2859 = !{!2860, !2861, !2862}
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !126, line: 1061, type: !58)
!2861 = !DILocalVariable(name: "arg", arg: 2, scope: !2856, file: !126, line: 1061, type: !55)
!2862 = !DILocalVariable(name: "argsize", arg: 3, scope: !2856, file: !126, line: 1061, type: !120)
!2863 = !DILocation(line: 1061, column: 18, scope: !2856)
!2864 = !DILocation(line: 1061, column: 33, scope: !2856)
!2865 = !DILocation(line: 1061, column: 45, scope: !2856)
!2866 = !DILocation(line: 1063, column: 10, scope: !2856)
!2867 = !DILocation(line: 1063, column: 3, scope: !2856)
!2868 = distinct !DISubprogram(name: "quote_mem", scope: !126, file: !126, line: 1067, type: !2869, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!55, !55, !120}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "arg", arg: 1, scope: !2868, file: !126, line: 1067, type: !55)
!2873 = !DILocalVariable(name: "argsize", arg: 2, scope: !2868, file: !126, line: 1067, type: !120)
!2874 = !DILocation(line: 1067, column: 24, scope: !2868)
!2875 = !DILocation(line: 1067, column: 36, scope: !2868)
!2876 = !DILocation(line: 1061, column: 18, scope: !2856, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 1069, column: 10, scope: !2868)
!2878 = !DILocation(line: 1061, column: 33, scope: !2856, inlinedAt: !2877)
!2879 = !DILocation(line: 1061, column: 45, scope: !2856, inlinedAt: !2877)
!2880 = !DILocation(line: 1063, column: 10, scope: !2856, inlinedAt: !2877)
!2881 = !DILocation(line: 1069, column: 3, scope: !2868)
!2882 = distinct !DISubprogram(name: "quote_n", scope: !126, file: !126, line: 1073, type: !2883, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!55, !58, !55}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !126, line: 1073, type: !58)
!2887 = !DILocalVariable(name: "arg", arg: 2, scope: !2882, file: !126, line: 1073, type: !55)
!2888 = !DILocation(line: 1073, column: 14, scope: !2882)
!2889 = !DILocation(line: 1073, column: 29, scope: !2882)
!2890 = !DILocation(line: 1061, column: 18, scope: !2856, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1075, column: 10, scope: !2882)
!2892 = !DILocation(line: 1061, column: 33, scope: !2856, inlinedAt: !2891)
!2893 = !DILocation(line: 1061, column: 45, scope: !2856, inlinedAt: !2891)
!2894 = !DILocation(line: 1063, column: 10, scope: !2856, inlinedAt: !2891)
!2895 = !DILocation(line: 1075, column: 3, scope: !2882)
!2896 = distinct !DISubprogram(name: "quote", scope: !126, file: !126, line: 1079, type: !2897, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!55, !55}
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !126, line: 1079, type: !55)
!2901 = !DILocation(line: 1079, column: 20, scope: !2896)
!2902 = !DILocation(line: 1073, column: 14, scope: !2882, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1081, column: 10, scope: !2896)
!2904 = !DILocation(line: 1073, column: 29, scope: !2882, inlinedAt: !2903)
!2905 = !DILocation(line: 1061, column: 18, scope: !2856, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1075, column: 10, scope: !2882, inlinedAt: !2903)
!2907 = !DILocation(line: 1061, column: 33, scope: !2856, inlinedAt: !2906)
!2908 = !DILocation(line: 1061, column: 45, scope: !2856, inlinedAt: !2906)
!2909 = !DILocation(line: 1063, column: 10, scope: !2856, inlinedAt: !2906)
!2910 = !DILocation(line: 1081, column: 3, scope: !2896)
!2911 = distinct !DISubprogram(name: "version_etc_arn", scope: !198, file: !198, line: 62, type: !2912, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !2967)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !2914, !55, !55, !55, !2966, !120}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2916, line: 7, baseType: !2917)
!2916 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2918, line: 49, size: 1728, elements: !2919)
!2918 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2935, !2937, !2938, !2939, !2940, !2941, !2943, !2947, !2950, !2952, !2955, !2958, !2959, !2960, !2961, !2962}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2917, file: !2918, line: 51, baseType: !58, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2917, file: !2918, line: 54, baseType: !45, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2917, file: !2918, line: 55, baseType: !45, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2917, file: !2918, line: 56, baseType: !45, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2917, file: !2918, line: 57, baseType: !45, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2917, file: !2918, line: 58, baseType: !45, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2917, file: !2918, line: 59, baseType: !45, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2917, file: !2918, line: 60, baseType: !45, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2917, file: !2918, line: 61, baseType: !45, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2917, file: !2918, line: 64, baseType: !45, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2917, file: !2918, line: 65, baseType: !45, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2917, file: !2918, line: 66, baseType: !45, size: 64, offset: 704)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2917, file: !2918, line: 68, baseType: !2933, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2918, line: 36, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2917, file: !2918, line: 70, baseType: !2936, size: 64, offset: 832)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2917, file: !2918, line: 72, baseType: !58, size: 32, offset: 896)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2917, file: !2918, line: 73, baseType: !58, size: 32, offset: 928)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2917, file: !2918, line: 74, baseType: !788, size: 64, offset: 960)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2917, file: !2918, line: 77, baseType: !119, size: 16, offset: 1024)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2917, file: !2918, line: 78, baseType: !2942, size: 8, offset: 1040)
!2942 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2917, file: !2918, line: 79, baseType: !2944, size: 8, offset: 1048)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 1)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2917, file: !2918, line: 81, baseType: !2948, size: 64, offset: 1088)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2918, line: 43, baseType: null)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2917, file: !2918, line: 89, baseType: !2951, size: 64, offset: 1152)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !774, line: 151, baseType: !789)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2917, file: !2918, line: 91, baseType: !2953, size: 64, offset: 1216)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2918, line: 37, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2917, file: !2918, line: 92, baseType: !2956, size: 64, offset: 1280)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2918, line: 38, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2917, file: !2918, line: 93, baseType: !2936, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2917, file: !2918, line: 94, baseType: !47, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2917, file: !2918, line: 95, baseType: !120, size: 64, offset: 1472)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2917, file: !2918, line: 96, baseType: !58, size: 32, offset: 1536)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2917, file: !2918, line: 98, baseType: !2963, size: 160, offset: 1568)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !2964)
!2964 = !{!2965}
!2965 = !DISubrange(count: 20)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973}
!2968 = !DILocalVariable(name: "stream", arg: 1, scope: !2911, file: !198, line: 62, type: !2914)
!2969 = !DILocalVariable(name: "command_name", arg: 2, scope: !2911, file: !198, line: 63, type: !55)
!2970 = !DILocalVariable(name: "package", arg: 3, scope: !2911, file: !198, line: 63, type: !55)
!2971 = !DILocalVariable(name: "version", arg: 4, scope: !2911, file: !198, line: 64, type: !55)
!2972 = !DILocalVariable(name: "authors", arg: 5, scope: !2911, file: !198, line: 65, type: !2966)
!2973 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2911, file: !198, line: 65, type: !120)
!2974 = !DILocation(line: 62, column: 24, scope: !2911)
!2975 = !DILocation(line: 63, column: 30, scope: !2911)
!2976 = !DILocation(line: 63, column: 56, scope: !2911)
!2977 = !DILocation(line: 64, column: 30, scope: !2911)
!2978 = !DILocation(line: 65, column: 39, scope: !2911)
!2979 = !DILocation(line: 65, column: 55, scope: !2911)
!2980 = !DILocation(line: 67, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2911, file: !198, line: 67, column: 7)
!2982 = !DILocation(line: 67, column: 7, scope: !2911)
!2983 = !DILocation(line: 68, column: 5, scope: !2981)
!2984 = !DILocation(line: 70, column: 5, scope: !2981)
!2985 = !DILocation(line: 84, column: 3, scope: !2911)
!2986 = !DILocation(line: 86, column: 3, scope: !2911)
!2987 = !DILocation(line: 95, column: 3, scope: !2911)
!2988 = !DILocation(line: 99, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2911, file: !198, line: 96, column: 5)
!2990 = !DILocation(line: 102, column: 7, scope: !2989)
!2991 = !DILocation(line: 103, column: 7, scope: !2989)
!2992 = !DILocation(line: 106, column: 7, scope: !2989)
!2993 = !DILocation(line: 107, column: 7, scope: !2989)
!2994 = !DILocation(line: 110, column: 7, scope: !2989)
!2995 = !DILocation(line: 112, column: 7, scope: !2989)
!2996 = !DILocation(line: 117, column: 7, scope: !2989)
!2997 = !DILocation(line: 119, column: 7, scope: !2989)
!2998 = !DILocation(line: 124, column: 7, scope: !2989)
!2999 = !DILocation(line: 126, column: 7, scope: !2989)
!3000 = !DILocation(line: 131, column: 7, scope: !2989)
!3001 = !DILocation(line: 134, column: 7, scope: !2989)
!3002 = !DILocation(line: 139, column: 7, scope: !2989)
!3003 = !DILocation(line: 142, column: 7, scope: !2989)
!3004 = !DILocation(line: 147, column: 7, scope: !2989)
!3005 = !DILocation(line: 151, column: 7, scope: !2989)
!3006 = !DILocation(line: 156, column: 7, scope: !2989)
!3007 = !DILocation(line: 160, column: 7, scope: !2989)
!3008 = !DILocation(line: 167, column: 7, scope: !2989)
!3009 = !DILocation(line: 171, column: 7, scope: !2989)
!3010 = !DILocation(line: 173, column: 1, scope: !2911)
!3011 = distinct !DISubprogram(name: "version_etc_ar", scope: !198, file: !198, line: 180, type: !3012, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2914, !55, !55, !55, !2966}
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020}
!3015 = !DILocalVariable(name: "stream", arg: 1, scope: !3011, file: !198, line: 180, type: !2914)
!3016 = !DILocalVariable(name: "command_name", arg: 2, scope: !3011, file: !198, line: 181, type: !55)
!3017 = !DILocalVariable(name: "package", arg: 3, scope: !3011, file: !198, line: 181, type: !55)
!3018 = !DILocalVariable(name: "version", arg: 4, scope: !3011, file: !198, line: 182, type: !55)
!3019 = !DILocalVariable(name: "authors", arg: 5, scope: !3011, file: !198, line: 182, type: !2966)
!3020 = !DILocalVariable(name: "n_authors", scope: !3011, file: !198, line: 184, type: !120)
!3021 = !DILocation(line: 180, column: 23, scope: !3011)
!3022 = !DILocation(line: 181, column: 29, scope: !3011)
!3023 = !DILocation(line: 181, column: 55, scope: !3011)
!3024 = !DILocation(line: 182, column: 29, scope: !3011)
!3025 = !DILocation(line: 182, column: 59, scope: !3011)
!3026 = !DILocation(line: 184, column: 10, scope: !3011)
!3027 = !DILocation(line: 186, column: 8, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3011, file: !198, line: 186, column: 3)
!3029 = !DILocation(line: 0, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !198, line: 186, column: 3)
!3031 = !DILocation(line: 186, column: 23, scope: !3030)
!3032 = !DILocation(line: 186, column: 3, scope: !3028)
!3033 = !DILocation(line: 186, column: 52, scope: !3030)
!3034 = distinct !{!3034, !3032, !3035}
!3035 = !DILocation(line: 187, column: 5, scope: !3028)
!3036 = !DILocation(line: 188, column: 3, scope: !3011)
!3037 = !DILocation(line: 189, column: 1, scope: !3011)
!3038 = distinct !DISubprogram(name: "version_etc_va", scope: !198, file: !198, line: 196, type: !3039, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3048)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2914, !55, !55, !55, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !195, line: 189, size: 192, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3042, file: !195, line: 189, baseType: !7, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3042, file: !195, line: 189, baseType: !7, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3042, file: !195, line: 189, baseType: !47, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3042, file: !195, line: 189, baseType: !47, size: 64, offset: 128)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3049 = !DILocalVariable(name: "stream", arg: 1, scope: !3038, file: !198, line: 196, type: !2914)
!3050 = !DILocalVariable(name: "command_name", arg: 2, scope: !3038, file: !198, line: 197, type: !55)
!3051 = !DILocalVariable(name: "package", arg: 3, scope: !3038, file: !198, line: 197, type: !55)
!3052 = !DILocalVariable(name: "version", arg: 4, scope: !3038, file: !198, line: 198, type: !55)
!3053 = !DILocalVariable(name: "authors", arg: 5, scope: !3038, file: !198, line: 198, type: !3041)
!3054 = !DILocalVariable(name: "n_authors", scope: !3038, file: !198, line: 200, type: !120)
!3055 = !DILocalVariable(name: "authtab", scope: !3038, file: !198, line: 201, type: !3056)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !129)
!3057 = !DILocation(line: 196, column: 23, scope: !3038)
!3058 = !DILocation(line: 197, column: 29, scope: !3038)
!3059 = !DILocation(line: 197, column: 55, scope: !3038)
!3060 = !DILocation(line: 198, column: 29, scope: !3038)
!3061 = !DILocation(line: 198, column: 46, scope: !3038)
!3062 = !DILocation(line: 201, column: 3, scope: !3038)
!3063 = !DILocation(line: 201, column: 15, scope: !3038)
!3064 = !DILocation(line: 200, column: 10, scope: !3038)
!3065 = !DILocation(line: 205, column: 35, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !198, line: 203, column: 3)
!3067 = distinct !DILexicalBlock(scope: !3038, file: !198, line: 203, column: 3)
!3068 = !DILocation(line: 205, column: 14, scope: !3066)
!3069 = !DILocation(line: 205, column: 33, scope: !3066)
!3070 = !DILocation(line: 205, column: 67, scope: !3066)
!3071 = !DILocation(line: 203, column: 3, scope: !3067)
!3072 = !DILocation(line: 0, scope: !3066)
!3073 = !DILocation(line: 208, column: 3, scope: !3038)
!3074 = !DILocation(line: 210, column: 1, scope: !3038)
!3075 = distinct !DISubprogram(name: "version_etc", scope: !198, file: !198, line: 227, type: !3076, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !2914, !55, !55, !55, null}
!3078 = !{!3079, !3080, !3081, !3082, !3083}
!3079 = !DILocalVariable(name: "stream", arg: 1, scope: !3075, file: !198, line: 227, type: !2914)
!3080 = !DILocalVariable(name: "command_name", arg: 2, scope: !3075, file: !198, line: 228, type: !55)
!3081 = !DILocalVariable(name: "package", arg: 3, scope: !3075, file: !198, line: 228, type: !55)
!3082 = !DILocalVariable(name: "version", arg: 4, scope: !3075, file: !198, line: 229, type: !55)
!3083 = !DILocalVariable(name: "authors", scope: !3075, file: !198, line: 231, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3085, line: 52, baseType: !3086)
!3085 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3087, line: 48, baseType: !3088)
!3087 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !195, line: 231, baseType: !3089)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3042, size: 192, elements: !2945)
!3090 = !DILocation(line: 227, column: 20, scope: !3075)
!3091 = !DILocation(line: 228, column: 26, scope: !3075)
!3092 = !DILocation(line: 228, column: 52, scope: !3075)
!3093 = !DILocation(line: 229, column: 26, scope: !3075)
!3094 = !DILocation(line: 231, column: 3, scope: !3075)
!3095 = !DILocation(line: 231, column: 11, scope: !3075)
!3096 = !DILocation(line: 233, column: 3, scope: !3075)
!3097 = !DILocation(line: 234, column: 3, scope: !3075)
!3098 = !DILocation(line: 235, column: 3, scope: !3075)
!3099 = !DILocation(line: 236, column: 1, scope: !3075)
!3100 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !198, file: !198, line: 239, type: !1100, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !68)
!3101 = !DILocation(line: 245, column: 3, scope: !3100)
!3102 = !DILocation(line: 251, column: 3, scope: !3100)
!3103 = !DILocation(line: 256, column: 3, scope: !3100)
!3104 = !DILocation(line: 258, column: 1, scope: !3100)
!3105 = distinct !DISubprogram(name: "xnmalloc", scope: !205, file: !205, line: 99, type: !3106, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!47, !120, !120}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !205, line: 99, type: !120)
!3110 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !205, line: 99, type: !120)
!3111 = !DILocation(line: 99, column: 18, scope: !3105)
!3112 = !DILocation(line: 99, column: 28, scope: !3105)
!3113 = !DILocation(line: 101, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3105, file: !205, line: 101, column: 7)
!3115 = !DILocation(line: 101, column: 7, scope: !3105)
!3116 = !DILocation(line: 102, column: 5, scope: !3114)
!3117 = !DILocation(line: 103, column: 21, scope: !3105)
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !3120, line: 39, type: !120)
!3119 = distinct !DISubprogram(name: "xmalloc", scope: !3120, file: !3120, line: 39, type: !3121, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3123)
!3120 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!47, !120}
!3123 = !{!3118, !3124}
!3124 = !DILocalVariable(name: "p", scope: !3119, file: !3120, line: 41, type: !47)
!3125 = !DILocation(line: 39, column: 17, scope: !3119, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 103, column: 10, scope: !3105)
!3127 = !DILocation(line: 41, column: 13, scope: !3119, inlinedAt: !3126)
!3128 = !DILocation(line: 41, column: 9, scope: !3119, inlinedAt: !3126)
!3129 = !DILocation(line: 42, column: 8, scope: !3130, inlinedAt: !3126)
!3130 = distinct !DILexicalBlock(scope: !3119, file: !3120, line: 42, column: 7)
!3131 = !DILocation(line: 42, column: 15, scope: !3130, inlinedAt: !3126)
!3132 = !DILocation(line: 42, column: 10, scope: !3130, inlinedAt: !3126)
!3133 = !DILocation(line: 43, column: 5, scope: !3130, inlinedAt: !3126)
!3134 = !DILocation(line: 103, column: 3, scope: !3105)
!3135 = !DILocation(line: 39, column: 17, scope: !3119)
!3136 = !DILocation(line: 41, column: 13, scope: !3119)
!3137 = !DILocation(line: 41, column: 9, scope: !3119)
!3138 = !DILocation(line: 42, column: 8, scope: !3130)
!3139 = !DILocation(line: 42, column: 15, scope: !3130)
!3140 = !DILocation(line: 42, column: 10, scope: !3130)
!3141 = !DILocation(line: 43, column: 5, scope: !3130)
!3142 = !DILocation(line: 44, column: 3, scope: !3119)
!3143 = distinct !DISubprogram(name: "xnrealloc", scope: !205, file: !205, line: 112, type: !3144, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!47, !47, !120, !120}
!3146 = !{!3147, !3148, !3149}
!3147 = !DILocalVariable(name: "p", arg: 1, scope: !3143, file: !205, line: 112, type: !47)
!3148 = !DILocalVariable(name: "n", arg: 2, scope: !3143, file: !205, line: 112, type: !120)
!3149 = !DILocalVariable(name: "s", arg: 3, scope: !3143, file: !205, line: 112, type: !120)
!3150 = !DILocation(line: 112, column: 18, scope: !3143)
!3151 = !DILocation(line: 112, column: 28, scope: !3143)
!3152 = !DILocation(line: 112, column: 38, scope: !3143)
!3153 = !DILocation(line: 114, column: 7, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3143, file: !205, line: 114, column: 7)
!3155 = !DILocation(line: 114, column: 7, scope: !3143)
!3156 = !DILocation(line: 115, column: 5, scope: !3154)
!3157 = !DILocation(line: 116, column: 25, scope: !3143)
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3159, file: !3120, line: 51, type: !47)
!3159 = distinct !DISubprogram(name: "xrealloc", scope: !3120, file: !3120, line: 51, type: !3160, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!47, !47, !120}
!3162 = !{!3158, !3163}
!3163 = !DILocalVariable(name: "n", arg: 2, scope: !3159, file: !3120, line: 51, type: !120)
!3164 = !DILocation(line: 51, column: 17, scope: !3159, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 116, column: 10, scope: !3143)
!3166 = !DILocation(line: 51, column: 27, scope: !3159, inlinedAt: !3165)
!3167 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3165)
!3168 = distinct !DILexicalBlock(scope: !3159, file: !3120, line: 53, column: 7)
!3169 = !DILocation(line: 53, column: 13, scope: !3168, inlinedAt: !3165)
!3170 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3165)
!3171 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3165)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !3120, line: 54, column: 5)
!3173 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3165)
!3174 = !DILocation(line: 61, column: 7, scope: !3159, inlinedAt: !3165)
!3175 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3165)
!3176 = distinct !DILexicalBlock(scope: !3159, file: !3120, line: 62, column: 7)
!3177 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3165)
!3178 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3165)
!3179 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3165)
!3180 = !DILocation(line: 0, scope: !3159, inlinedAt: !3165)
!3181 = !DILocation(line: 116, column: 3, scope: !3143)
!3182 = !DILocation(line: 51, column: 17, scope: !3159)
!3183 = !DILocation(line: 51, column: 27, scope: !3159)
!3184 = !DILocation(line: 53, column: 8, scope: !3168)
!3185 = !DILocation(line: 53, column: 13, scope: !3168)
!3186 = !DILocation(line: 53, column: 10, scope: !3168)
!3187 = !DILocation(line: 57, column: 7, scope: !3172)
!3188 = !DILocation(line: 58, column: 7, scope: !3172)
!3189 = !DILocation(line: 61, column: 7, scope: !3159)
!3190 = !DILocation(line: 62, column: 8, scope: !3176)
!3191 = !DILocation(line: 62, column: 13, scope: !3176)
!3192 = !DILocation(line: 62, column: 10, scope: !3176)
!3193 = !DILocation(line: 63, column: 5, scope: !3176)
!3194 = !DILocation(line: 0, scope: !3159)
!3195 = !DILocation(line: 65, column: 1, scope: !3159)
!3196 = !DILocation(line: 174, column: 19, scope: !206)
!3197 = !DILocation(line: 174, column: 30, scope: !206)
!3198 = !DILocation(line: 174, column: 41, scope: !206)
!3199 = !DILocation(line: 176, column: 14, scope: !206)
!3200 = !DILocation(line: 176, column: 10, scope: !206)
!3201 = !DILocation(line: 178, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !206, file: !205, line: 178, column: 7)
!3203 = !DILocation(line: 178, column: 7, scope: !206)
!3204 = !DILocation(line: 180, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !205, line: 180, column: 11)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !205, line: 179, column: 5)
!3207 = !DILocation(line: 180, column: 11, scope: !3206)
!3208 = !DILocation(line: 188, column: 30, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !205, line: 181, column: 9)
!3210 = !DILocation(line: 189, column: 16, scope: !3209)
!3211 = !DILocation(line: 189, column: 13, scope: !3209)
!3212 = !DILocation(line: 190, column: 9, scope: !3209)
!3213 = !DILocation(line: 0, scope: !3209)
!3214 = !DILocation(line: 191, column: 11, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !205, line: 191, column: 11)
!3216 = !DILocation(line: 191, column: 11, scope: !3206)
!3217 = !DILocation(line: 206, column: 7, scope: !206)
!3218 = !DILocation(line: 207, column: 25, scope: !206)
!3219 = !DILocation(line: 51, column: 17, scope: !3159, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 207, column: 10, scope: !206)
!3221 = !DILocation(line: 51, column: 27, scope: !3159, inlinedAt: !3220)
!3222 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3220)
!3223 = !DILocation(line: 192, column: 9, scope: !3215)
!3224 = !DILocation(line: 200, column: 69, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !205, line: 200, column: 11)
!3226 = distinct !DILexicalBlock(scope: !3202, file: !205, line: 195, column: 5)
!3227 = !DILocation(line: 201, column: 11, scope: !3225)
!3228 = !DILocation(line: 200, column: 11, scope: !3226)
!3229 = !DILocation(line: 202, column: 9, scope: !3225)
!3230 = !DILocation(line: 203, column: 14, scope: !3226)
!3231 = !DILocation(line: 203, column: 18, scope: !3226)
!3232 = !DILocation(line: 203, column: 9, scope: !3226)
!3233 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3220)
!3234 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3220)
!3235 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3220)
!3236 = !DILocation(line: 61, column: 7, scope: !3159, inlinedAt: !3220)
!3237 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3220)
!3238 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3220)
!3239 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3220)
!3240 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3220)
!3241 = !DILocation(line: 0, scope: !3159, inlinedAt: !3220)
!3242 = !DILocation(line: 207, column: 3, scope: !206)
!3243 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !2195, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !205, line: 216, type: !120)
!3246 = !DILocation(line: 216, column: 20, scope: !3243)
!3247 = !DILocation(line: 39, column: 17, scope: !3119, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 218, column: 10, scope: !3243)
!3249 = !DILocation(line: 41, column: 13, scope: !3119, inlinedAt: !3248)
!3250 = !DILocation(line: 41, column: 9, scope: !3119, inlinedAt: !3248)
!3251 = !DILocation(line: 42, column: 8, scope: !3130, inlinedAt: !3248)
!3252 = !DILocation(line: 42, column: 15, scope: !3130, inlinedAt: !3248)
!3253 = !DILocation(line: 42, column: 10, scope: !3130, inlinedAt: !3248)
!3254 = !DILocation(line: 43, column: 5, scope: !3130, inlinedAt: !3248)
!3255 = !DILocation(line: 218, column: 3, scope: !3243)
!3256 = distinct !DISubprogram(name: "x2realloc", scope: !3120, file: !3120, line: 74, type: !3257, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!47, !47, !209}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3256, file: !3120, line: 74, type: !47)
!3261 = !DILocalVariable(name: "pn", arg: 2, scope: !3256, file: !3120, line: 74, type: !209)
!3262 = !DILocation(line: 74, column: 18, scope: !3256)
!3263 = !DILocation(line: 74, column: 29, scope: !3256)
!3264 = !DILocation(line: 174, column: 19, scope: !206, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 76, column: 10, scope: !3256)
!3266 = !DILocation(line: 174, column: 30, scope: !206, inlinedAt: !3265)
!3267 = !DILocation(line: 174, column: 41, scope: !206, inlinedAt: !3265)
!3268 = !DILocation(line: 176, column: 14, scope: !206, inlinedAt: !3265)
!3269 = !DILocation(line: 176, column: 10, scope: !206, inlinedAt: !3265)
!3270 = !DILocation(line: 178, column: 9, scope: !3202, inlinedAt: !3265)
!3271 = !DILocation(line: 178, column: 7, scope: !206, inlinedAt: !3265)
!3272 = !DILocation(line: 180, column: 13, scope: !3205, inlinedAt: !3265)
!3273 = !DILocation(line: 180, column: 11, scope: !3206, inlinedAt: !3265)
!3274 = !DILocation(line: 191, column: 11, scope: !3215, inlinedAt: !3265)
!3275 = !DILocation(line: 191, column: 11, scope: !3206, inlinedAt: !3265)
!3276 = !DILocation(line: 206, column: 7, scope: !206, inlinedAt: !3265)
!3277 = !DILocation(line: 51, column: 17, scope: !3159, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 207, column: 10, scope: !206, inlinedAt: !3265)
!3279 = !DILocation(line: 51, column: 27, scope: !3159, inlinedAt: !3278)
!3280 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3278)
!3281 = !DILocation(line: 192, column: 9, scope: !3215, inlinedAt: !3265)
!3282 = !DILocation(line: 201, column: 11, scope: !3225, inlinedAt: !3265)
!3283 = !DILocation(line: 200, column: 11, scope: !3226, inlinedAt: !3265)
!3284 = !DILocation(line: 202, column: 9, scope: !3225, inlinedAt: !3265)
!3285 = !DILocation(line: 203, column: 14, scope: !3226, inlinedAt: !3265)
!3286 = !DILocation(line: 203, column: 18, scope: !3226, inlinedAt: !3265)
!3287 = !DILocation(line: 203, column: 9, scope: !3226, inlinedAt: !3265)
!3288 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3278)
!3289 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3278)
!3290 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3278)
!3291 = !DILocation(line: 61, column: 7, scope: !3159, inlinedAt: !3278)
!3292 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3278)
!3293 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3278)
!3294 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3278)
!3295 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3278)
!3296 = !DILocation(line: 0, scope: !3159, inlinedAt: !3278)
!3297 = !DILocation(line: 76, column: 3, scope: !3256)
!3298 = distinct !DISubprogram(name: "xzalloc", scope: !3120, file: !3120, line: 84, type: !3121, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3298, file: !3120, line: 84, type: !120)
!3301 = !DILocation(line: 84, column: 17, scope: !3298)
!3302 = !DILocation(line: 39, column: 17, scope: !3119, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 86, column: 18, scope: !3298)
!3304 = !DILocation(line: 41, column: 13, scope: !3119, inlinedAt: !3303)
!3305 = !DILocation(line: 41, column: 9, scope: !3119, inlinedAt: !3303)
!3306 = !DILocation(line: 42, column: 8, scope: !3130, inlinedAt: !3303)
!3307 = !DILocation(line: 42, column: 15, scope: !3130, inlinedAt: !3303)
!3308 = !DILocation(line: 42, column: 10, scope: !3130, inlinedAt: !3303)
!3309 = !DILocation(line: 43, column: 5, scope: !3130, inlinedAt: !3303)
!3310 = !DILocation(line: 86, column: 10, scope: !3298)
!3311 = !DILocation(line: 86, column: 3, scope: !3298)
!3312 = distinct !DISubprogram(name: "xcalloc", scope: !3120, file: !3120, line: 93, type: !3106, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3313)
!3313 = !{!3314, !3315, !3316}
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3312, file: !3120, line: 93, type: !120)
!3315 = !DILocalVariable(name: "s", arg: 2, scope: !3312, file: !3120, line: 93, type: !120)
!3316 = !DILocalVariable(name: "p", scope: !3312, file: !3120, line: 95, type: !47)
!3317 = !DILocation(line: 93, column: 17, scope: !3312)
!3318 = !DILocation(line: 93, column: 27, scope: !3312)
!3319 = !DILocation(line: 100, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3312, file: !3120, line: 100, column: 7)
!3321 = !DILocation(line: 101, column: 7, scope: !3320)
!3322 = !DILocation(line: 101, column: 18, scope: !3320)
!3323 = !DILocation(line: 95, column: 9, scope: !3312)
!3324 = !DILocation(line: 101, column: 16, scope: !3320)
!3325 = !DILocation(line: 100, column: 7, scope: !3312)
!3326 = !DILocation(line: 102, column: 5, scope: !3320)
!3327 = !DILocation(line: 103, column: 3, scope: !3312)
!3328 = distinct !DISubprogram(name: "xmemdup", scope: !3120, file: !3120, line: 111, type: !3329, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3333)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!47, !3331, !120}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "p", arg: 1, scope: !3328, file: !3120, line: 111, type: !3331)
!3335 = !DILocalVariable(name: "s", arg: 2, scope: !3328, file: !3120, line: 111, type: !120)
!3336 = !DILocation(line: 111, column: 22, scope: !3328)
!3337 = !DILocation(line: 111, column: 32, scope: !3328)
!3338 = !DILocation(line: 39, column: 17, scope: !3119, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 113, column: 18, scope: !3328)
!3340 = !DILocation(line: 41, column: 13, scope: !3119, inlinedAt: !3339)
!3341 = !DILocation(line: 41, column: 9, scope: !3119, inlinedAt: !3339)
!3342 = !DILocation(line: 42, column: 8, scope: !3130, inlinedAt: !3339)
!3343 = !DILocation(line: 42, column: 15, scope: !3130, inlinedAt: !3339)
!3344 = !DILocation(line: 42, column: 10, scope: !3130, inlinedAt: !3339)
!3345 = !DILocation(line: 43, column: 5, scope: !3130, inlinedAt: !3339)
!3346 = !DILocation(line: 113, column: 10, scope: !3328)
!3347 = !DILocation(line: 113, column: 3, scope: !3328)
!3348 = distinct !DISubprogram(name: "xstrdup", scope: !3120, file: !3120, line: 119, type: !2401, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "string", arg: 1, scope: !3348, file: !3120, line: 119, type: !55)
!3351 = !DILocation(line: 119, column: 22, scope: !3348)
!3352 = !DILocation(line: 121, column: 27, scope: !3348)
!3353 = !DILocation(line: 121, column: 43, scope: !3348)
!3354 = !DILocation(line: 111, column: 22, scope: !3328, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 121, column: 10, scope: !3348)
!3356 = !DILocation(line: 111, column: 32, scope: !3328, inlinedAt: !3355)
!3357 = !DILocation(line: 39, column: 17, scope: !3119, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 113, column: 18, scope: !3328, inlinedAt: !3355)
!3359 = !DILocation(line: 41, column: 13, scope: !3119, inlinedAt: !3358)
!3360 = !DILocation(line: 41, column: 9, scope: !3119, inlinedAt: !3358)
!3361 = !DILocation(line: 42, column: 8, scope: !3130, inlinedAt: !3358)
!3362 = !DILocation(line: 42, column: 15, scope: !3130, inlinedAt: !3358)
!3363 = !DILocation(line: 42, column: 10, scope: !3130, inlinedAt: !3358)
!3364 = !DILocation(line: 43, column: 5, scope: !3130, inlinedAt: !3358)
!3365 = !DILocation(line: 113, column: 10, scope: !3328, inlinedAt: !3355)
!3366 = !DILocation(line: 121, column: 3, scope: !3348)
!3367 = distinct !DISubprogram(name: "xalloc_die", scope: !3368, file: !3368, line: 32, type: !1100, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !218, retainedNodes: !68)
!3368 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3369 = !DILocation(line: 34, column: 10, scope: !3367)
!3370 = !DILocation(line: 34, column: 33, scope: !3367)
!3371 = !DILocation(line: 34, column: 3, scope: !3367)
!3372 = !DILocation(line: 40, column: 3, scope: !3367)
!3373 = distinct !DISubprogram(name: "rpl_calloc", scope: !3374, file: !3374, line: 42, type: !3106, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3375)
!3374 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3373, file: !3374, line: 42, type: !120)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3373, file: !3374, line: 42, type: !120)
!3378 = !DILocalVariable(name: "result", scope: !3373, file: !3374, line: 44, type: !47)
!3379 = !DILocalVariable(name: "bytes", scope: !3380, file: !3374, line: 56, type: !120)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3374, line: 53, column: 5)
!3381 = distinct !DILexicalBlock(scope: !3373, file: !3374, line: 47, column: 7)
!3382 = !DILocation(line: 42, column: 20, scope: !3373)
!3383 = !DILocation(line: 42, column: 30, scope: !3373)
!3384 = !DILocation(line: 47, column: 9, scope: !3381)
!3385 = !DILocation(line: 47, column: 19, scope: !3381)
!3386 = !DILocation(line: 47, column: 14, scope: !3381)
!3387 = !DILocation(line: 56, column: 24, scope: !3380)
!3388 = !DILocation(line: 56, column: 14, scope: !3380)
!3389 = !DILocation(line: 57, column: 17, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3380, file: !3374, line: 57, column: 11)
!3391 = !DILocation(line: 57, column: 21, scope: !3390)
!3392 = !DILocation(line: 57, column: 11, scope: !3380)
!3393 = !DILocation(line: 59, column: 11, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3390, file: !3374, line: 58, column: 9)
!3395 = !DILocation(line: 59, column: 17, scope: !3394)
!3396 = !DILocation(line: 65, column: 12, scope: !3373)
!3397 = !DILocation(line: 44, column: 9, scope: !3373)
!3398 = !DILocation(line: 72, column: 3, scope: !3373)
!3399 = !DILocation(line: 0, scope: !3394)
!3400 = !DILocation(line: 73, column: 1, scope: !3373)
!3401 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !180, file: !180, line: 27, type: !3402, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3405)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!120, !55, !120, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3405 = !{!3406, !3407, !3408}
!3406 = !DILocalVariable(name: "s", arg: 1, scope: !3401, file: !180, line: 27, type: !55)
!3407 = !DILocalVariable(name: "n", arg: 2, scope: !3401, file: !180, line: 27, type: !120)
!3408 = !DILocalVariable(name: "ps", arg: 3, scope: !3401, file: !180, line: 27, type: !3404)
!3409 = !DILocation(line: 27, column: 21, scope: !3401)
!3410 = !DILocation(line: 27, column: 31, scope: !3401)
!3411 = !DILocation(line: 27, column: 45, scope: !3401)
!3412 = !DILocation(line: 29, column: 10, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3401, file: !180, line: 29, column: 7)
!3414 = !DILocation(line: 29, column: 7, scope: !3401)
!3415 = !DILocation(line: 31, column: 10, scope: !3401)
!3416 = !DILocation(line: 31, column: 3, scope: !3401)
!3417 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3418, file: !3418, line: 385, type: !3419, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !3433)
!3418 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!120, !3421, !55, !120, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !182, line: 6, baseType: !3424)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !184, line: 21, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 13, size: 64, elements: !3426)
!3426 = !{!3427, !3428}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3425, file: !184, line: 15, baseType: !58, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3425, file: !184, line: 20, baseType: !3429, size: 32, offset: 32)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3425, file: !184, line: 16, size: 32, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3429, file: !184, line: 18, baseType: !7, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3429, file: !184, line: 19, baseType: !193, size: 32)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3434 = !DILocalVariable(name: "pwc", arg: 1, scope: !3417, file: !3418, line: 385, type: !3421)
!3435 = !DILocalVariable(name: "s", arg: 2, scope: !3417, file: !3418, line: 385, type: !55)
!3436 = !DILocalVariable(name: "n", arg: 3, scope: !3417, file: !3418, line: 385, type: !120)
!3437 = !DILocalVariable(name: "ps", arg: 4, scope: !3417, file: !3418, line: 385, type: !3422)
!3438 = !DILocalVariable(name: "ret", scope: !3417, file: !3418, line: 387, type: !120)
!3439 = !DILocalVariable(name: "wc", scope: !3417, file: !3418, line: 388, type: !1374)
!3440 = !DILocalVariable(name: "uc", scope: !3441, file: !3418, line: 449, type: !1223)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3418, line: 448, column: 5)
!3442 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 447, column: 7)
!3443 = !DILocation(line: 385, column: 23, scope: !3417)
!3444 = !DILocation(line: 385, column: 40, scope: !3417)
!3445 = !DILocation(line: 385, column: 50, scope: !3417)
!3446 = !DILocation(line: 385, column: 64, scope: !3417)
!3447 = !DILocation(line: 388, column: 3, scope: !3417)
!3448 = !DILocation(line: 404, column: 9, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 404, column: 7)
!3450 = !DILocation(line: 404, column: 7, scope: !3417)
!3451 = !DILocation(line: 439, column: 9, scope: !3417)
!3452 = !DILocation(line: 387, column: 10, scope: !3417)
!3453 = !DILocation(line: 447, column: 19, scope: !3442)
!3454 = !DILocation(line: 447, column: 31, scope: !3442)
!3455 = !DILocation(line: 447, column: 26, scope: !3442)
!3456 = !DILocation(line: 447, column: 41, scope: !3442)
!3457 = !DILocation(line: 447, column: 7, scope: !3417)
!3458 = !DILocation(line: 449, column: 26, scope: !3441)
!3459 = !DILocation(line: 449, column: 21, scope: !3441)
!3460 = !DILocation(line: 450, column: 14, scope: !3441)
!3461 = !DILocation(line: 450, column: 12, scope: !3441)
!3462 = !DILocation(line: 0, scope: !3441)
!3463 = !DILocation(line: 456, column: 1, scope: !3417)
!3464 = distinct !DISubprogram(name: "close_stream", scope: !3465, file: !3465, line: 56, type: !3466, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !3502)
!3465 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!58, !3468}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2916, line: 7, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2918, line: 49, size: 1728, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3470, file: !2918, line: 51, baseType: !58, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3470, file: !2918, line: 54, baseType: !45, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3470, file: !2918, line: 55, baseType: !45, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3470, file: !2918, line: 56, baseType: !45, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3470, file: !2918, line: 57, baseType: !45, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3470, file: !2918, line: 58, baseType: !45, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3470, file: !2918, line: 59, baseType: !45, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3470, file: !2918, line: 60, baseType: !45, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3470, file: !2918, line: 61, baseType: !45, size: 64, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3470, file: !2918, line: 64, baseType: !45, size: 64, offset: 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3470, file: !2918, line: 65, baseType: !45, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3470, file: !2918, line: 66, baseType: !45, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3470, file: !2918, line: 68, baseType: !2933, size: 64, offset: 768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3470, file: !2918, line: 70, baseType: !3486, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3470, file: !2918, line: 72, baseType: !58, size: 32, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3470, file: !2918, line: 73, baseType: !58, size: 32, offset: 928)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3470, file: !2918, line: 74, baseType: !788, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3470, file: !2918, line: 77, baseType: !119, size: 16, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3470, file: !2918, line: 78, baseType: !2942, size: 8, offset: 1040)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3470, file: !2918, line: 79, baseType: !2944, size: 8, offset: 1048)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3470, file: !2918, line: 81, baseType: !2948, size: 64, offset: 1088)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3470, file: !2918, line: 89, baseType: !2951, size: 64, offset: 1152)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3470, file: !2918, line: 91, baseType: !2953, size: 64, offset: 1216)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3470, file: !2918, line: 92, baseType: !2956, size: 64, offset: 1280)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3470, file: !2918, line: 93, baseType: !3486, size: 64, offset: 1344)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3470, file: !2918, line: 94, baseType: !47, size: 64, offset: 1408)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3470, file: !2918, line: 95, baseType: !120, size: 64, offset: 1472)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3470, file: !2918, line: 96, baseType: !58, size: 32, offset: 1536)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3470, file: !2918, line: 98, baseType: !2963, size: 160, offset: 1568)
!3502 = !{!3503, !3504, !3506, !3507}
!3503 = !DILocalVariable(name: "stream", arg: 1, scope: !3464, file: !3465, line: 56, type: !3468)
!3504 = !DILocalVariable(name: "some_pending", scope: !3464, file: !3465, line: 58, type: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3506 = !DILocalVariable(name: "prev_fail", scope: !3464, file: !3465, line: 59, type: !3505)
!3507 = !DILocalVariable(name: "fclose_fail", scope: !3464, file: !3465, line: 60, type: !3505)
!3508 = !DILocation(line: 56, column: 21, scope: !3464)
!3509 = !DILocation(line: 58, column: 30, scope: !3464)
!3510 = !DILocalVariable(name: "__stream", arg: 1, scope: !3511, file: !3512, line: 135, type: !3468)
!3511 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3512, file: !3512, line: 135, type: !3466, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !3513)
!3512 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3513 = !{!3510}
!3514 = !DILocation(line: 135, column: 1, scope: !3511, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 59, column: 27, scope: !3464)
!3516 = !DILocation(line: 137, column: 10, scope: !3511, inlinedAt: !3515)
!3517 = !{!3518, !743, i64 0}
!3518 = !{!"_IO_FILE", !743, i64 0, !664, i64 8, !664, i64 16, !664, i64 24, !664, i64 32, !664, i64 40, !664, i64 48, !664, i64 56, !664, i64 64, !664, i64 72, !664, i64 80, !664, i64 88, !664, i64 96, !664, i64 104, !743, i64 112, !743, i64 116, !2240, i64 120, !1614, i64 128, !665, i64 130, !665, i64 131, !664, i64 136, !2240, i64 144, !664, i64 152, !664, i64 160, !664, i64 168, !664, i64 176, !2240, i64 184, !743, i64 192, !665, i64 196}
!3519 = !DILocation(line: 59, column: 43, scope: !3464)
!3520 = !DILocation(line: 60, column: 29, scope: !3464)
!3521 = !DILocation(line: 60, column: 45, scope: !3464)
!3522 = !DILocation(line: 70, column: 17, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 70, column: 7)
!3524 = !DILocation(line: 58, column: 50, scope: !3464)
!3525 = !DILocation(line: 70, column: 33, scope: !3523)
!3526 = !DILocation(line: 70, column: 53, scope: !3523)
!3527 = !DILocation(line: 70, column: 59, scope: !3523)
!3528 = !DILocation(line: 70, column: 7, scope: !3464)
!3529 = !DILocation(line: 72, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3523, file: !3465, line: 71, column: 5)
!3531 = !DILocation(line: 73, column: 9, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3530, file: !3465, line: 72, column: 11)
!3533 = !DILocation(line: 73, column: 15, scope: !3532)
!3534 = !DILocation(line: 0, scope: !3464)
!3535 = !DILocation(line: 78, column: 1, scope: !3464)
!3536 = distinct !DISubprogram(name: "hard_locale", scope: !3537, file: !3537, line: 38, type: !3538, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3540)
!3537 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!78, !58}
!3540 = !{!3541, !3542, !3543}
!3541 = !DILocalVariable(name: "category", arg: 1, scope: !3536, file: !3537, line: 38, type: !58)
!3542 = !DILocalVariable(name: "hard", scope: !3536, file: !3537, line: 40, type: !78)
!3543 = !DILocalVariable(name: "p", scope: !3536, file: !3537, line: 41, type: !55)
!3544 = !DILocation(line: 38, column: 18, scope: !3536)
!3545 = !DILocation(line: 40, column: 8, scope: !3536)
!3546 = !DILocation(line: 41, column: 19, scope: !3536)
!3547 = !DILocation(line: 41, column: 15, scope: !3536)
!3548 = !DILocation(line: 43, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3536, file: !3537, line: 43, column: 7)
!3550 = !DILocation(line: 43, column: 7, scope: !3536)
!3551 = !DILocation(line: 47, column: 15, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3537, line: 47, column: 15)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3537, line: 46, column: 9)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3537, line: 45, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3549, file: !3537, line: 44, column: 5)
!3556 = !DILocation(line: 47, column: 31, scope: !3552)
!3557 = !DILocation(line: 47, column: 36, scope: !3552)
!3558 = !DILocation(line: 47, column: 39, scope: !3552)
!3559 = !DILocation(line: 47, column: 59, scope: !3552)
!3560 = !DILocation(line: 47, column: 15, scope: !3553)
!3561 = !DILocation(line: 48, column: 13, scope: !3552)
!3562 = !DILocation(line: 71, column: 3, scope: !3536)
!3563 = distinct !DISubprogram(name: "locale_charset", scope: !3564, file: !3564, line: 687, type: !3565, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !3567)
!3564 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!55}
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "codeset", scope: !3563, file: !3564, line: 689, type: !55)
!3569 = !DILocation(line: 696, column: 13, scope: !3563)
!3570 = !DILocation(line: 689, column: 15, scope: !3563)
!3571 = !DILocation(line: 754, column: 15, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3563, file: !3564, line: 754, column: 7)
!3573 = !DILocation(line: 754, column: 7, scope: !3563)
!3574 = !DILocation(line: 907, column: 13, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3564, line: 907, column: 13)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3564, line: 897, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3563, file: !3564, line: 856, column: 3)
!3578 = !DILocation(line: 907, column: 24, scope: !3575)
!3579 = !DILocation(line: 907, column: 13, scope: !3576)
!3580 = !DILocation(line: 995, column: 3, scope: !3563)
!3581 = distinct !DISubprogram(name: "rpl_fclose", scope: !3582, file: !3582, line: 58, type: !3583, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !618, retainedNodes: !3619)
!3582 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!58, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2916, line: 7, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2918, line: 49, size: 1728, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !2918, line: 51, baseType: !58, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3587, file: !2918, line: 54, baseType: !45, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3587, file: !2918, line: 55, baseType: !45, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3587, file: !2918, line: 56, baseType: !45, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3587, file: !2918, line: 57, baseType: !45, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3587, file: !2918, line: 58, baseType: !45, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3587, file: !2918, line: 59, baseType: !45, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3587, file: !2918, line: 60, baseType: !45, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3587, file: !2918, line: 61, baseType: !45, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3587, file: !2918, line: 64, baseType: !45, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3587, file: !2918, line: 65, baseType: !45, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3587, file: !2918, line: 66, baseType: !45, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3587, file: !2918, line: 68, baseType: !2933, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3587, file: !2918, line: 70, baseType: !3603, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3587, file: !2918, line: 72, baseType: !58, size: 32, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3587, file: !2918, line: 73, baseType: !58, size: 32, offset: 928)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3587, file: !2918, line: 74, baseType: !788, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3587, file: !2918, line: 77, baseType: !119, size: 16, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3587, file: !2918, line: 78, baseType: !2942, size: 8, offset: 1040)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3587, file: !2918, line: 79, baseType: !2944, size: 8, offset: 1048)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3587, file: !2918, line: 81, baseType: !2948, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3587, file: !2918, line: 89, baseType: !2951, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3587, file: !2918, line: 91, baseType: !2953, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3587, file: !2918, line: 92, baseType: !2956, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3587, file: !2918, line: 93, baseType: !3603, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3587, file: !2918, line: 94, baseType: !47, size: 64, offset: 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3587, file: !2918, line: 95, baseType: !120, size: 64, offset: 1472)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3587, file: !2918, line: 96, baseType: !58, size: 32, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3587, file: !2918, line: 98, baseType: !2963, size: 160, offset: 1568)
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DILocalVariable(name: "fp", arg: 1, scope: !3581, file: !3582, line: 58, type: !3585)
!3621 = !DILocalVariable(name: "saved_errno", scope: !3581, file: !3582, line: 60, type: !58)
!3622 = !DILocalVariable(name: "fd", scope: !3581, file: !3582, line: 61, type: !58)
!3623 = !DILocalVariable(name: "result", scope: !3581, file: !3582, line: 62, type: !58)
!3624 = !DILocation(line: 58, column: 19, scope: !3581)
!3625 = !DILocation(line: 60, column: 7, scope: !3581)
!3626 = !DILocation(line: 62, column: 7, scope: !3581)
!3627 = !DILocation(line: 65, column: 8, scope: !3581)
!3628 = !DILocation(line: 61, column: 7, scope: !3581)
!3629 = !DILocation(line: 66, column: 10, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3581, file: !3582, line: 66, column: 7)
!3631 = !DILocation(line: 66, column: 7, scope: !3581)
!3632 = !DILocation(line: 67, column: 12, scope: !3630)
!3633 = !DILocation(line: 67, column: 5, scope: !3630)
!3634 = !DILocation(line: 72, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3581, file: !3582, line: 72, column: 7)
!3636 = !DILocation(line: 72, column: 23, scope: !3635)
!3637 = !DILocation(line: 72, column: 33, scope: !3635)
!3638 = !DILocation(line: 72, column: 26, scope: !3635)
!3639 = !DILocation(line: 72, column: 59, scope: !3635)
!3640 = !DILocation(line: 73, column: 7, scope: !3635)
!3641 = !DILocation(line: 73, column: 10, scope: !3635)
!3642 = !DILocation(line: 72, column: 7, scope: !3581)
!3643 = !DILocation(line: 100, column: 12, scope: !3581)
!3644 = !DILocation(line: 105, column: 7, scope: !3581)
!3645 = !DILocation(line: 74, column: 19, scope: !3635)
!3646 = !DILocation(line: 105, column: 19, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3581, file: !3582, line: 105, column: 7)
!3648 = !DILocation(line: 107, column: 13, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3647, file: !3582, line: 106, column: 5)
!3650 = !DILocation(line: 109, column: 5, scope: !3649)
!3651 = !DILocation(line: 0, scope: !3581)
!3652 = !DILocation(line: 112, column: 1, scope: !3581)
!3653 = distinct !DISubprogram(name: "rpl_fflush", scope: !3654, file: !3654, line: 129, type: !3655, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !620, retainedNodes: !3691)
!3654 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!58, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2916, line: 7, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2918, line: 49, size: 1728, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3659, file: !2918, line: 51, baseType: !58, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3659, file: !2918, line: 54, baseType: !45, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3659, file: !2918, line: 55, baseType: !45, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3659, file: !2918, line: 56, baseType: !45, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3659, file: !2918, line: 57, baseType: !45, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3659, file: !2918, line: 58, baseType: !45, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3659, file: !2918, line: 59, baseType: !45, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3659, file: !2918, line: 60, baseType: !45, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3659, file: !2918, line: 61, baseType: !45, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3659, file: !2918, line: 64, baseType: !45, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3659, file: !2918, line: 65, baseType: !45, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3659, file: !2918, line: 66, baseType: !45, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3659, file: !2918, line: 68, baseType: !2933, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3659, file: !2918, line: 70, baseType: !3675, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3659, file: !2918, line: 72, baseType: !58, size: 32, offset: 896)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3659, file: !2918, line: 73, baseType: !58, size: 32, offset: 928)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3659, file: !2918, line: 74, baseType: !788, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3659, file: !2918, line: 77, baseType: !119, size: 16, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3659, file: !2918, line: 78, baseType: !2942, size: 8, offset: 1040)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3659, file: !2918, line: 79, baseType: !2944, size: 8, offset: 1048)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3659, file: !2918, line: 81, baseType: !2948, size: 64, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3659, file: !2918, line: 89, baseType: !2951, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3659, file: !2918, line: 91, baseType: !2953, size: 64, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3659, file: !2918, line: 92, baseType: !2956, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3659, file: !2918, line: 93, baseType: !3675, size: 64, offset: 1344)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3659, file: !2918, line: 94, baseType: !47, size: 64, offset: 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3659, file: !2918, line: 95, baseType: !120, size: 64, offset: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3659, file: !2918, line: 96, baseType: !58, size: 32, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3659, file: !2918, line: 98, baseType: !2963, size: 160, offset: 1568)
!3691 = !{!3692}
!3692 = !DILocalVariable(name: "stream", arg: 1, scope: !3653, file: !3654, line: 129, type: !3657)
!3693 = !DILocation(line: 129, column: 19, scope: !3653)
!3694 = !DILocation(line: 150, column: 14, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3653, file: !3654, line: 150, column: 7)
!3696 = !DILocation(line: 150, column: 22, scope: !3695)
!3697 = !DILocation(line: 150, column: 27, scope: !3695)
!3698 = !DILocation(line: 150, column: 7, scope: !3653)
!3699 = !DILocation(line: 151, column: 12, scope: !3695)
!3700 = !DILocation(line: 151, column: 5, scope: !3695)
!3701 = !DILocalVariable(name: "fp", arg: 1, scope: !3702, file: !3654, line: 41, type: !3657)
!3702 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3654, file: !3654, line: 41, type: !3703, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !620, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3657}
!3705 = !{!3701}
!3706 = !DILocation(line: 41, column: 48, scope: !3702, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 156, column: 3, scope: !3653)
!3708 = !DILocation(line: 43, column: 11, scope: !3709, inlinedAt: !3707)
!3709 = distinct !DILexicalBlock(scope: !3702, file: !3654, line: 43, column: 7)
!3710 = !DILocation(line: 43, column: 18, scope: !3709, inlinedAt: !3707)
!3711 = !DILocation(line: 43, column: 7, scope: !3702, inlinedAt: !3707)
!3712 = !DILocation(line: 45, column: 5, scope: !3709, inlinedAt: !3707)
!3713 = !DILocation(line: 158, column: 10, scope: !3653)
!3714 = !DILocation(line: 158, column: 3, scope: !3653)
!3715 = !DILocation(line: 0, scope: !3653)
!3716 = !DILocation(line: 232, column: 1, scope: !3653)
!3717 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3718, file: !3718, line: 28, type: !3719, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !622, retainedNodes: !3756)
!3718 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!58, !3721, !3755, !58}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2916, line: 7, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2918, line: 49, size: 1728, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3723, file: !2918, line: 51, baseType: !58, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3723, file: !2918, line: 54, baseType: !45, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3723, file: !2918, line: 55, baseType: !45, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3723, file: !2918, line: 56, baseType: !45, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3723, file: !2918, line: 57, baseType: !45, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3723, file: !2918, line: 58, baseType: !45, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3723, file: !2918, line: 59, baseType: !45, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3723, file: !2918, line: 60, baseType: !45, size: 64, offset: 448)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3723, file: !2918, line: 61, baseType: !45, size: 64, offset: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3723, file: !2918, line: 64, baseType: !45, size: 64, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3723, file: !2918, line: 65, baseType: !45, size: 64, offset: 640)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3723, file: !2918, line: 66, baseType: !45, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3723, file: !2918, line: 68, baseType: !2933, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3723, file: !2918, line: 70, baseType: !3739, size: 64, offset: 832)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3723, file: !2918, line: 72, baseType: !58, size: 32, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3723, file: !2918, line: 73, baseType: !58, size: 32, offset: 928)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3723, file: !2918, line: 74, baseType: !788, size: 64, offset: 960)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3723, file: !2918, line: 77, baseType: !119, size: 16, offset: 1024)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3723, file: !2918, line: 78, baseType: !2942, size: 8, offset: 1040)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3723, file: !2918, line: 79, baseType: !2944, size: 8, offset: 1048)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3723, file: !2918, line: 81, baseType: !2948, size: 64, offset: 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3723, file: !2918, line: 89, baseType: !2951, size: 64, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3723, file: !2918, line: 91, baseType: !2953, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3723, file: !2918, line: 92, baseType: !2956, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3723, file: !2918, line: 93, baseType: !3739, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3723, file: !2918, line: 94, baseType: !47, size: 64, offset: 1408)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3723, file: !2918, line: 95, baseType: !120, size: 64, offset: 1472)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3723, file: !2918, line: 96, baseType: !58, size: 32, offset: 1536)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3723, file: !2918, line: 98, baseType: !2963, size: 160, offset: 1568)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3085, line: 63, baseType: !788)
!3756 = !{!3757, !3758, !3759, !3760}
!3757 = !DILocalVariable(name: "fp", arg: 1, scope: !3717, file: !3718, line: 28, type: !3721)
!3758 = !DILocalVariable(name: "offset", arg: 2, scope: !3717, file: !3718, line: 28, type: !3755)
!3759 = !DILocalVariable(name: "whence", arg: 3, scope: !3717, file: !3718, line: 28, type: !58)
!3760 = !DILocalVariable(name: "pos", scope: !3761, file: !3718, line: 117, type: !3755)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3718, line: 113, column: 5)
!3762 = distinct !DILexicalBlock(scope: !3717, file: !3718, line: 52, column: 7)
!3763 = !DILocation(line: 28, column: 15, scope: !3717)
!3764 = !DILocation(line: 28, column: 25, scope: !3717)
!3765 = !DILocation(line: 28, column: 37, scope: !3717)
!3766 = !DILocation(line: 52, column: 11, scope: !3762)
!3767 = !{!3518, !664, i64 16}
!3768 = !DILocation(line: 52, column: 31, scope: !3762)
!3769 = !{!3518, !664, i64 8}
!3770 = !DILocation(line: 52, column: 24, scope: !3762)
!3771 = !DILocation(line: 53, column: 7, scope: !3762)
!3772 = !DILocation(line: 53, column: 14, scope: !3762)
!3773 = !{!3518, !664, i64 40}
!3774 = !DILocation(line: 53, column: 35, scope: !3762)
!3775 = !{!3518, !664, i64 32}
!3776 = !DILocation(line: 53, column: 28, scope: !3762)
!3777 = !DILocation(line: 54, column: 7, scope: !3762)
!3778 = !DILocation(line: 54, column: 14, scope: !3762)
!3779 = !{!3518, !664, i64 72}
!3780 = !DILocation(line: 54, column: 28, scope: !3762)
!3781 = !DILocation(line: 52, column: 7, scope: !3717)
!3782 = !DILocation(line: 117, column: 26, scope: !3761)
!3783 = !DILocation(line: 117, column: 19, scope: !3761)
!3784 = !DILocation(line: 117, column: 13, scope: !3761)
!3785 = !DILocation(line: 118, column: 15, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3761, file: !3718, line: 118, column: 11)
!3787 = !DILocation(line: 118, column: 11, scope: !3761)
!3788 = !DILocation(line: 129, column: 11, scope: !3761)
!3789 = !DILocation(line: 129, column: 18, scope: !3761)
!3790 = !DILocation(line: 130, column: 11, scope: !3761)
!3791 = !DILocation(line: 130, column: 19, scope: !3761)
!3792 = !{!3518, !2240, i64 144}
!3793 = !DILocation(line: 161, column: 7, scope: !3761)
!3794 = !DILocation(line: 163, column: 10, scope: !3717)
!3795 = !DILocation(line: 163, column: 3, scope: !3717)
!3796 = !DILocation(line: 0, scope: !3717)
!3797 = !DILocation(line: 164, column: 1, scope: !3717)
