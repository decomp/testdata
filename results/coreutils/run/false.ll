; ModuleID = 'coreutils-8.30/src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !18
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !35
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !81
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !88
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.55 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.56 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.57 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.60 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
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
@.str.18.83 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.84 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.95 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !571 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !576, metadata !DIExpression()), !dbg !577
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !578
  %3 = load i8*, i8** @program_name, align 8, !dbg !578, !tbaa !579
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #11, !dbg !578
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !583
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #11, !dbg !583
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !584
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584, !tbaa !579
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !584
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !585
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585, !tbaa !579
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !585
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !586
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !586
  tail call fastcc void @emit_ancillary_info(), !dbg !587
  tail call void @exit(i32 %0) #14, !dbg !588
  unreachable, !dbg !588
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !589 {
  %1 = alloca [7 x %struct.infomap], align 16
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #11, !dbg !608
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !595, metadata !DIExpression()), !dbg !609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %2, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !609
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !610
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !605, metadata !DIExpression()), !dbg !611
  br label %4, !dbg !612

; <label>:4:                                      ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !605, metadata !DIExpression()), !dbg !611
  %7 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #15, !dbg !612
  %8 = icmp eq i32 %7, 0, !dbg !612
  br i1 %8, label %14, label %9, !dbg !613

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !614
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !605, metadata !DIExpression()), !dbg !611
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !615
  %12 = load i8*, i8** %11, align 8, !dbg !615, !tbaa !616
  %13 = icmp eq i8* %12, null, !dbg !618
  br i1 %13, label %14, label %4, !dbg !619, !llvm.loop !620

; <label>:14:                                     ; preds = %9, %4
  %15 = phi %struct.infomap* [ %10, %9 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !605, metadata !DIExpression()), !dbg !611
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !621
  %17 = load i8*, i8** %16, align 8, !dbg !621, !tbaa !623
  %18 = icmp eq i8* %17, null, !dbg !624
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !625
  call void @llvm.dbg.value(metadata i8* %19, metadata !604, metadata !DIExpression()), !dbg !626
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !627
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !627
  %22 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !628
  call void @llvm.dbg.value(metadata i8* %22, metadata !607, metadata !DIExpression()), !dbg !629
  %23 = icmp eq i8* %22, null, !dbg !630
  br i1 %23, label %30, label %24, !dbg !632

; <label>:24:                                     ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #15, !dbg !633
  %26 = icmp eq i32 %25, 0, !dbg !633
  br i1 %26, label %30, label %27, !dbg !634

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !635
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !635
  br label %30, !dbg !637

; <label>:30:                                     ; preds = %24, %14, %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !638
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !638
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !639
  %34 = icmp eq i8* %19, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !639
  %35 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !639
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* %19, i8* %35) #11, !dbg !639
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #11, !dbg !640
  ret void, !dbg !640
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #6

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #8 !dbg !641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8** %1, metadata !647, metadata !DIExpression()), !dbg !649
  %3 = icmp eq i32 %0, 2, !dbg !650
  br i1 %3, label %4, label %21, !dbg !652

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !653, !tbaa !579
  tail call void @set_program_name(i8* %5) #11, !dbg !655
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !656
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !657
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !658
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !659
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !660
  %11 = load i8*, i8** %10, align 8, !dbg !660, !tbaa !579
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #15, !dbg !660
  %13 = icmp eq i32 %12, 0, !dbg !660
  br i1 %13, label %14, label %15, !dbg !662

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 1) #16, !dbg !663
  unreachable, !dbg !663

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #15, !dbg !664
  %17 = icmp eq i32 %16, 0, !dbg !664
  br i1 %17, label %18, label %21, !dbg !666

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !579
  %20 = load i8*, i8** @Version, align 8, !dbg !668, !tbaa !579
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !669
  br label %21, !dbg !669

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 1, !dbg !670
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #8 !dbg !671 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !673, metadata !DIExpression()), !dbg !674
  store i8* %0, i8** @file_name, align 8, !dbg !675, !tbaa !579
  ret void, !dbg !676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #8 !dbg !677 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !681, metadata !DIExpression()), !dbg !682
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !683, !tbaa !684
  ret void, !dbg !686
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !687 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !579
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !695
  %3 = icmp eq i32 %2, 0, !dbg !696
  br i1 %3, label %22, label %4, !dbg !697

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !698, !tbaa !684, !range !699
  %6 = icmp eq i8 %5, 0, !dbg !698
  br i1 %6, label %11, label %7, !dbg !700

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !701
  %9 = load i32, i32* %8, align 4, !dbg !701, !tbaa !702
  %10 = icmp eq i32 %9, 32, !dbg !704
  br i1 %10, label %22, label %11, !dbg !705

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !706
  call void @llvm.dbg.value(metadata i8* %12, metadata !691, metadata !DIExpression()), !dbg !707
  %13 = load i8*, i8** @file_name, align 8, !dbg !708, !tbaa !579
  %14 = icmp eq i8* %13, null, !dbg !708
  %15 = tail call i32* @__errno_location() #17, !dbg !710
  %16 = load i32, i32* %15, align 4, !dbg !710, !tbaa !702
  br i1 %14, label %19, label %17, !dbg !711

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !712
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !713
  br label %20, !dbg !713

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #11, !dbg !714
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !715, !tbaa !702
  tail call void @_exit(i32 %21) #14, !dbg !716
  unreachable, !dbg !716

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !717, !tbaa !579
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !719
  %25 = icmp eq i32 %24, 0, !dbg !720
  br i1 %25, label %28, label %26, !dbg !721

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !722, !tbaa !702
  tail call void @_exit(i32 %27) #14, !dbg !723
  unreachable, !dbg !723

; <label>:28:                                     ; preds = %22
  ret void, !dbg !724
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #8 !dbg !725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !727, metadata !DIExpression()), !dbg !730
  %2 = icmp eq i8* %0, null, !dbg !731
  br i1 %2, label %3, label %6, !dbg !733

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !734, !tbaa !579
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !736
  tail call void @abort() #14, !dbg !737
  unreachable, !dbg !737

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !738
  call void @llvm.dbg.value(metadata i8* %7, metadata !728, metadata !DIExpression()), !dbg !739
  %8 = icmp eq i8* %7, null, !dbg !740
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !741
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !742
  call void @llvm.dbg.value(metadata i8* %10, metadata !729, metadata !DIExpression()), !dbg !743
  %11 = ptrtoint i8* %10 to i64, !dbg !744
  %12 = ptrtoint i8* %0 to i64, !dbg !744
  %13 = sub i64 %11, %12, !dbg !744
  %14 = icmp sgt i64 %13, 6, !dbg !746
  br i1 %14, label %15, label %24, !dbg !747

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !748
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #15, !dbg !749
  %18 = icmp eq i32 %17, 0, !dbg !750
  br i1 %18, label %19, label %24, !dbg !751

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !727, metadata !DIExpression()), !dbg !730
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #15, !dbg !752
  %21 = icmp eq i32 %20, 0, !dbg !755
  br i1 %21, label %22, label %24, !dbg !756

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !757
  call void @llvm.dbg.value(metadata i8* %23, metadata !727, metadata !DIExpression()), !dbg !730
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !759, !tbaa !579
  br label %24, !dbg !760

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !727, metadata !DIExpression()), !dbg !730
  store i8* %25, i8** @program_name, align 8, !dbg !761, !tbaa !579
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !762, !tbaa !579
  ret void, !dbg !763
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #8 !dbg !764 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !769, metadata !DIExpression()), !dbg !772
  %2 = tail call i32* @__errno_location() #17, !dbg !773
  %3 = load i32, i32* %2, align 4, !dbg !773, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %3, metadata !770, metadata !DIExpression()), !dbg !774
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !775
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !775
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !775
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !776
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !771, metadata !DIExpression()), !dbg !777
  store i32 %3, i32* %2, align 4, !dbg !778, !tbaa !702
  ret %struct.quoting_options* %8, !dbg !779
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !780 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !786, metadata !DIExpression()), !dbg !787
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !788
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !788
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !789
  %5 = load i32, i32* %4, align 8, !dbg !789, !tbaa !790
  ret i32 %5, !dbg !792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #8 !dbg !793 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !797, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 %1, metadata !798, metadata !DIExpression()), !dbg !800
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !801
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !801
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !802
  store i32 %1, i32* %5, align 8, !dbg !803, !tbaa !790
  ret void, !dbg !804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #8 !dbg !805 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !809, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %1, metadata !810, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %2, metadata !811, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i8 %1, metadata !812, metadata !DIExpression()), !dbg !821
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !822
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !822
  %6 = lshr i8 %1, 5, !dbg !823
  %7 = zext i8 %6 to i64, !dbg !823
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !824
  call void @llvm.dbg.value(metadata i32* %8, metadata !814, metadata !DIExpression()), !dbg !825
  %9 = and i8 %1, 31, !dbg !826
  %10 = zext i8 %9 to i32, !dbg !826
  call void @llvm.dbg.value(metadata i32 %10, metadata !816, metadata !DIExpression()), !dbg !827
  %11 = load i32, i32* %8, align 4, !dbg !828, !tbaa !702
  %12 = lshr i32 %11, %10, !dbg !829
  %13 = and i32 %12, 1, !dbg !830
  call void @llvm.dbg.value(metadata i32 %13, metadata !817, metadata !DIExpression()), !dbg !831
  %14 = and i32 %2, 1, !dbg !832
  %15 = xor i32 %13, %14, !dbg !833
  %16 = shl i32 %15, %10, !dbg !834
  %17 = xor i32 %16, %11, !dbg !835
  store i32 %17, i32* %8, align 4, !dbg !835, !tbaa !702
  ret i32 %13, !dbg !836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #8 !dbg !837 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 %1, metadata !842, metadata !DIExpression()), !dbg !845
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !846
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !848
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !841, metadata !DIExpression()), !dbg !844
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !849
  %6 = load i32, i32* %5, align 4, !dbg !849, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !843, metadata !DIExpression()), !dbg !851
  store i32 %1, i32* %5, align 4, !dbg !852, !tbaa !850
  ret i32 %6, !dbg !853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #8 !dbg !854 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !858, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %1, metadata !859, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata i8* %2, metadata !860, metadata !DIExpression()), !dbg !863
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !864
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !858, metadata !DIExpression()), !dbg !861
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !867
  store i32 10, i32* %6, align 8, !dbg !868, !tbaa !790
  %7 = icmp ne i8* %1, null, !dbg !869
  %8 = icmp ne i8* %2, null, !dbg !871
  %9 = and i1 %7, %8, !dbg !872
  br i1 %9, label %11, label %10, !dbg !872

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !873
  unreachable, !dbg !873

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !874
  store i8* %1, i8** %12, align 8, !dbg !875, !tbaa !876
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !877
  store i8* %2, i8** %13, align 8, !dbg !878, !tbaa !879
  ret void, !dbg !880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #8 !dbg !881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !885, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i64 %1, metadata !886, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i8* %2, metadata !887, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i64 %3, metadata !888, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !889, metadata !DIExpression()), !dbg !897
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !898
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !890, metadata !DIExpression()), !dbg !899
  %8 = tail call i32* @__errno_location() #17, !dbg !900
  %9 = load i32, i32* %8, align 4, !dbg !900, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %9, metadata !891, metadata !DIExpression()), !dbg !901
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !902
  %11 = load i32, i32* %10, align 8, !dbg !902, !tbaa !790
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !903
  %13 = load i32, i32* %12, align 4, !dbg !903, !tbaa !850
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !904
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !905
  %16 = load i8*, i8** %15, align 8, !dbg !905, !tbaa !876
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !906
  %18 = load i8*, i8** %17, align 8, !dbg !906, !tbaa !879
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !907
  call void @llvm.dbg.value(metadata i64 %19, metadata !892, metadata !DIExpression()), !dbg !908
  store i32 %9, i32* %8, align 4, !dbg !909, !tbaa !702
  ret i64 %19, !dbg !910
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #8 !dbg !911 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %1, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %3, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %4, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %5, metadata !922, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32* %6, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %7, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %8, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 0, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 0, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* null, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 0, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 0, metadata !931, metadata !DIExpression()), !dbg !994
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !995
  %14 = icmp eq i64 %13, 1, !dbg !996
  %15 = lshr i32 %5, 1, !dbg !997
  %16 = trunc i32 %15 to i8, !dbg !997
  %17 = and i8 %16, 1, !dbg !997
  call void @llvm.dbg.value(metadata i8 %17, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 0, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 0, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 1, metadata !936, metadata !DIExpression()), !dbg !1000
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1001

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !991
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !992
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !993
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !994
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1002
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !998
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !999
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1000
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %39, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %38, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %37, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %36, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %35, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8 %34, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %33, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %32, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %31, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 0, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %30, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %29, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 %28, metadata !921, metadata !DIExpression()), !dbg !985
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
  ], !dbg !1004

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8 1, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %36, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 5, metadata !921, metadata !DIExpression()), !dbg !985
  br label %93, !dbg !1005

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 5, metadata !921, metadata !DIExpression()), !dbg !985
  %43 = and i8 %36, 1, !dbg !1006
  %44 = icmp eq i8 %43, 0, !dbg !1006
  br i1 %44, label %45, label %93, !dbg !1005

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1008
  br i1 %46, label %93, label %47, !dbg !1011

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1008, !tbaa !1012
  br label %93, !dbg !1008

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1013
  call void @llvm.dbg.value(metadata i8* %49, metadata !924, metadata !DIExpression()), !dbg !988
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %28), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %50, metadata !925, metadata !DIExpression()), !dbg !989
  br label %51, !dbg !1018

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %52, metadata !924, metadata !DIExpression()), !dbg !988
  %54 = and i8 %36, 1, !dbg !1019
  %55 = icmp eq i8 %54, 0, !dbg !1019
  br i1 %55, label %56, label %71, !dbg !1021

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 0, metadata !927, metadata !DIExpression()), !dbg !990
  %57 = load i8, i8* %52, align 1, !dbg !1022, !tbaa !1012
  %58 = icmp eq i8 %57, 0, !dbg !1025
  br i1 %58, label %71, label %59, !dbg !1025

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %62, metadata !927, metadata !DIExpression()), !dbg !990
  %63 = icmp ult i64 %62, %40, !dbg !1026
  br i1 %63, label %64, label %66, !dbg !1029

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1026
  store i8 %60, i8* %65, align 1, !dbg !1026, !tbaa !1012
  br label %66, !dbg !1026

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1029
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %68, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %67, metadata !927, metadata !DIExpression()), !dbg !990
  %69 = load i8, i8* %68, align 1, !dbg !1022, !tbaa !1012
  %70 = icmp eq i8 %69, 0, !dbg !1025
  br i1 %70, label %71, label %59, !dbg !1025, !llvm.loop !1031

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !990
  call void @llvm.dbg.value(metadata i64 %72, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8* %53, metadata !929, metadata !DIExpression()), !dbg !992
  %73 = call i64 @strlen(i8* %53) #15, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %73, metadata !930, metadata !DIExpression()), !dbg !993
  br label %93, !dbg !1034

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !931, metadata !DIExpression()), !dbg !994
  br label %75, !dbg !1035

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1002
  call void @llvm.dbg.value(metadata i8 %76, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 1, metadata !933, metadata !DIExpression()), !dbg !997
  br label %77, !dbg !1036

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !994
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1002
  call void @llvm.dbg.value(metadata i8 %79, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %78, metadata !931, metadata !DIExpression()), !dbg !994
  %80 = and i8 %79, 1, !dbg !1037
  %81 = icmp eq i8 %80, 0, !dbg !1037
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1039
  br label %83, !dbg !1039

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1040
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !997
  call void @llvm.dbg.value(metadata i8 %85, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %84, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  %86 = and i8 %85, 1, !dbg !1041
  %87 = icmp eq i8 %86, 0, !dbg !1041
  br i1 %87, label %88, label %93, !dbg !1043

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1044
  br i1 %89, label %93, label %90, !dbg !1047

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1044, !tbaa !1012
  br label %93, !dbg !1044

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !933, metadata !DIExpression()), !dbg !997
  br label %93, !dbg !1048

; <label>:92:                                     ; preds = %27
  call void @abort() #14, !dbg !1049
  unreachable, !dbg !1049

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !990
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], !dbg !1002
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1002
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1002
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %101, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %99, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %97, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !1051
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
  br label %121, !dbg !1052

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1053
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !990
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !991
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !998
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !999
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1000
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %125, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %122, metadata !926, metadata !DIExpression()), !dbg !1051
  %130 = icmp eq i64 %125, -1, !dbg !1054
  br i1 %130, label %131, label %135, !dbg !1055

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1056
  %133 = load i8, i8* %132, align 1, !dbg !1056, !tbaa !1012
  %134 = icmp eq i8 %133, 0, !dbg !1057
  br i1 %134, label %617, label %137, !dbg !1058

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1059
  br i1 %136, label %617, label %137, !dbg !1058

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 0, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 0, metadata !944, metadata !DIExpression()), !dbg !1062
  br i1 %107, label %138, label %153, !dbg !1063

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1065
  %140 = and i1 %108, %130, !dbg !1066
  br i1 %140, label %141, label %143, !dbg !1066

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %142, metadata !920, metadata !DIExpression()), !dbg !984
  br label %143, !dbg !1068

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !920, metadata !DIExpression()), !dbg !984
  %145 = icmp ugt i64 %139, %144, !dbg !1069
  br i1 %145, label %153, label %146, !dbg !1070

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1071
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !1072
  %149 = icmp ne i32 %148, 0, !dbg !1073
  %150 = or i1 %149, %110, !dbg !1074
  %151 = xor i1 %149, true, !dbg !1074
  %152 = zext i1 %151 to i8, !dbg !1074
  br i1 %150, label %153, label %661, !dbg !1074

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1075
  call void @llvm.dbg.value(metadata i8 %155, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %154, metadata !920, metadata !DIExpression()), !dbg !984
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1076
  %157 = load i8, i8* %156, align 1, !dbg !1076, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %157, metadata !937, metadata !DIExpression()), !dbg !1077
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
  ], !dbg !1078

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1079

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1080

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !943, metadata !DIExpression()), !dbg !1061
  %161 = and i8 %126, 1, !dbg !1084
  %162 = icmp eq i8 %161, 0, !dbg !1084
  %163 = and i1 %114, %162, !dbg !1084
  br i1 %163, label %164, label %180, !dbg !1084

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1086
  br i1 %165, label %166, label %168, !dbg !1090

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1086
  store i8 39, i8* %167, align 1, !dbg !1086, !tbaa !1012
  br label %168, !dbg !1086

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %169, metadata !927, metadata !DIExpression()), !dbg !990
  %170 = icmp ult i64 %169, %129, !dbg !1091
  br i1 %170, label %171, label %173, !dbg !1094

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1091
  store i8 36, i8* %172, align 1, !dbg !1091, !tbaa !1012
  br label %173, !dbg !1091

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %174, metadata !927, metadata !DIExpression()), !dbg !990
  %175 = icmp ult i64 %174, %129, !dbg !1095
  br i1 %175, label %176, label %178, !dbg !1098

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1095
  store i8 39, i8* %177, align 1, !dbg !1095, !tbaa !1012
  br label %178, !dbg !1095

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %179, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, metadata !934, metadata !DIExpression()), !dbg !998
  br label %180, !dbg !1099

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1050
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %182, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %181, metadata !927, metadata !DIExpression()), !dbg !990
  %183 = icmp ult i64 %181, %129, !dbg !1100
  br i1 %183, label %184, label %186, !dbg !1103

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1100
  store i8 92, i8* %185, align 1, !dbg !1100, !tbaa !1012
  br label %186, !dbg !1100

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %187, metadata !927, metadata !DIExpression()), !dbg !990
  br i1 %104, label %188, label %478, !dbg !1104

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1106
  %190 = icmp ult i64 %189, %154, !dbg !1107
  br i1 %190, label %191, label %467, !dbg !1108

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1109
  %193 = load i8, i8* %192, align 1, !dbg !1109, !tbaa !1012
  %194 = add i8 %193, -48, !dbg !1110
  %195 = icmp ult i8 %194, 10, !dbg !1110
  br i1 %195, label %196, label %467, !dbg !1110

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1111
  br i1 %197, label %198, label %200, !dbg !1115

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1111
  store i8 48, i8* %199, align 1, !dbg !1111, !tbaa !1012
  br label %200, !dbg !1111

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %201, metadata !927, metadata !DIExpression()), !dbg !990
  %202 = icmp ult i64 %201, %129, !dbg !1116
  br i1 %202, label %203, label %205, !dbg !1119

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1116
  store i8 48, i8* %204, align 1, !dbg !1116, !tbaa !1012
  br label %205, !dbg !1116

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %206, metadata !927, metadata !DIExpression()), !dbg !990
  br label %467, !dbg !1120

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1121

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1122

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1123

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1125

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1127
  %213 = icmp ult i64 %212, %154, !dbg !1128
  br i1 %213, label %214, label %467, !dbg !1129

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1130
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1131
  %217 = load i8, i8* %216, align 1, !dbg !1131, !tbaa !1012
  %218 = icmp eq i8 %217, 63, !dbg !1132
  br i1 %218, label %219, label %467, !dbg !1133

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1134
  %221 = load i8, i8* %220, align 1, !dbg !1134, !tbaa !1012
  %222 = sext i8 %221 to i32, !dbg !1134
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
  ], !dbg !1135

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1136

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %212, metadata !926, metadata !DIExpression()), !dbg !1051
  %225 = icmp ult i64 %123, %129, !dbg !1138
  br i1 %225, label %226, label %228, !dbg !1141

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1138
  store i8 63, i8* %227, align 1, !dbg !1138, !tbaa !1012
  br label %228, !dbg !1138

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %229, metadata !927, metadata !DIExpression()), !dbg !990
  %230 = icmp ult i64 %229, %129, !dbg !1142
  br i1 %230, label %231, label %233, !dbg !1145

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1142
  store i8 34, i8* %232, align 1, !dbg !1142, !tbaa !1012
  br label %233, !dbg !1142

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %234, metadata !927, metadata !DIExpression()), !dbg !990
  %235 = icmp ult i64 %234, %129, !dbg !1146
  br i1 %235, label %236, label %238, !dbg !1149

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1146
  store i8 34, i8* %237, align 1, !dbg !1146, !tbaa !1012
  br label %238, !dbg !1146

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %239, metadata !927, metadata !DIExpression()), !dbg !990
  %240 = icmp ult i64 %239, %129, !dbg !1150
  br i1 %240, label %241, label %243, !dbg !1153

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1150
  store i8 63, i8* %242, align 1, !dbg !1150, !tbaa !1012
  br label %243, !dbg !1150

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %244, metadata !927, metadata !DIExpression()), !dbg !990
  br label %467, !dbg !1154

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !941, metadata !DIExpression()), !dbg !1155
  br label %255, !dbg !1156

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !941, metadata !DIExpression()), !dbg !1155
  br label %255, !dbg !1157

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !941, metadata !DIExpression()), !dbg !1155
  br label %253, !dbg !1158

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !941, metadata !DIExpression()), !dbg !1155
  br label %253, !dbg !1159

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !941, metadata !DIExpression()), !dbg !1155
  br label %255, !dbg !1160

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !941, metadata !DIExpression()), !dbg !1155
  br i1 %114, label %251, label %252, !dbg !1161

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1162

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1165

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1167
  call void @llvm.dbg.value(metadata i8 %254, metadata !941, metadata !DIExpression()), !dbg !1155
  br i1 %113, label %255, label %661, !dbg !1168

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1167
  call void @llvm.dbg.value(metadata i8 %256, metadata !941, metadata !DIExpression()), !dbg !1155
  br i1 %103, label %524, label %478, !dbg !1170

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1171
  br i1 %258, label %259, label %264, !dbg !1173

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1174, !tbaa !1012
  %261 = icmp ne i8 %260, 0, !dbg !1175
  %262 = icmp ne i64 %122, 0, !dbg !1176
  %263 = or i1 %262, %261, !dbg !1178
  br i1 %263, label %467, label %270, !dbg !1178

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1179
  %266 = icmp ne i64 %122, 0, !dbg !1176
  %267 = or i1 %266, %265, !dbg !1173
  br i1 %267, label %467, label %270, !dbg !1173

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1176
  br i1 %269, label %270, label %467, !dbg !1180

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !944, metadata !DIExpression()), !dbg !1062
  br label %271, !dbg !1181

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1167
  call void @llvm.dbg.value(metadata i8 %272, metadata !944, metadata !DIExpression()), !dbg !1062
  br i1 %113, label %467, label %661, !dbg !1182

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 1, metadata !944, metadata !DIExpression()), !dbg !1062
  br i1 %114, label %274, label %467, !dbg !1184

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1185

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1188
  %277 = icmp ne i64 %124, 0, !dbg !1190
  %278 = or i1 %277, %276, !dbg !1191
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1191
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %280, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %279, metadata !928, metadata !DIExpression()), !dbg !991
  %281 = icmp ult i64 %123, %280, !dbg !1192
  br i1 %281, label %282, label %284, !dbg !1195

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1192
  store i8 39, i8* %283, align 1, !dbg !1192, !tbaa !1012
  br label %284, !dbg !1192

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %285, metadata !927, metadata !DIExpression()), !dbg !990
  %286 = icmp ult i64 %285, %280, !dbg !1196
  br i1 %286, label %287, label %289, !dbg !1199

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1196
  store i8 92, i8* %288, align 1, !dbg !1196, !tbaa !1012
  br label %289, !dbg !1196

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %290, metadata !927, metadata !DIExpression()), !dbg !990
  %291 = icmp ult i64 %290, %280, !dbg !1200
  br i1 %291, label %292, label %294, !dbg !1203

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1200
  store i8 39, i8* %293, align 1, !dbg !1200, !tbaa !1012
  br label %294, !dbg !1200

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %295, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 0, metadata !934, metadata !DIExpression()), !dbg !998
  br label %467, !dbg !1204

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1205

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !945, metadata !DIExpression()), !dbg !1206
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1207
  %299 = load i16*, i16** %298, align 8, !dbg !1207, !tbaa !579
  %300 = zext i8 %157 to i64, !dbg !1207
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1207
  %302 = load i16, i16* %301, align 2, !dbg !1207, !tbaa !1209
  %303 = lshr i16 %302, 14, !dbg !1211
  %304 = trunc i16 %303 to i8, !dbg !1211
  %305 = and i8 %304, 1, !dbg !1211
  call void @llvm.dbg.value(metadata i8 %305, metadata !948, metadata !DIExpression()), !dbg !1212
  br label %359, !dbg !1213

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1214
  store i64 0, i64* %10, align 8, !dbg !1215
  call void @llvm.dbg.value(metadata i64 0, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 1, metadata !948, metadata !DIExpression()), !dbg !1212
  %307 = icmp eq i64 %154, -1, !dbg !1216
  br i1 %307, label %308, label %310, !dbg !1218

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %309, metadata !920, metadata !DIExpression()), !dbg !984
  br label %310, !dbg !1220

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1221
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  br label %312, !dbg !1222

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1223
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1224
  call void @llvm.dbg.value(metadata i8 %314, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1225
  %315 = add i64 %313, %122, !dbg !1226
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1227
  %317 = sub i64 %311, %315, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !949, metadata !DIExpression(DW_OP_deref)), !dbg !1229
  call void @llvm.dbg.value(metadata i32* %12, metadata !967, metadata !DIExpression(DW_OP_deref)), !dbg !1230
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %318, metadata !970, metadata !DIExpression()), !dbg !1232
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1233

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  %320 = icmp ugt i64 %311, %315, !dbg !1234
  br i1 %320, label %321, label %344, !dbg !1236

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !945, metadata !DIExpression()), !dbg !1206
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1237
  %325 = load i8, i8* %324, align 1, !dbg !1237, !tbaa !1012
  %326 = icmp eq i8 %325, 0, !dbg !1236
  br i1 %326, label %344, label %327, !dbg !1238

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %328, metadata !945, metadata !DIExpression()), !dbg !1206
  %329 = add i64 %328, %122, !dbg !1240
  %330 = icmp ult i64 %329, %311, !dbg !1234
  br i1 %330, label %321, label %344, !dbg !1236, !llvm.loop !1241

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1242
  %333 = and i1 %116, %332, !dbg !1245
  call void @llvm.dbg.value(metadata i64 1, metadata !971, metadata !DIExpression()), !dbg !1246
  br i1 %333, label %334, label %347, !dbg !1245

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !971, metadata !DIExpression()), !dbg !1246
  %336 = add i64 %335, %315, !dbg !1247
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1248
  %338 = load i8, i8* %337, align 1, !dbg !1248, !tbaa !1012
  %339 = sext i8 %338 to i32, !dbg !1248
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1249

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %341, metadata !971, metadata !DIExpression()), !dbg !1246
  %342 = icmp ult i64 %341, %318, !dbg !1242
  br i1 %342, label %334, label %347, !dbg !1251, !llvm.loop !1252

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 %314, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %313, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 %314, metadata !948, metadata !DIExpression()), !dbg !1212
  br label %344, !dbg !1254

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %352, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1254
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1255, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %348, metadata !967, metadata !DIExpression()), !dbg !1230
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1257
  %350 = icmp eq i32 %349, 0, !dbg !1257
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %351, metadata !948, metadata !DIExpression()), !dbg !1212
  %352 = add i64 %318, %313, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %352, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 %351, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %352, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !949, metadata !DIExpression(DW_OP_deref)), !dbg !1229
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !1260
  %354 = icmp eq i32 %353, 0, !dbg !1261
  br i1 %354, label %312, label %355, !dbg !1262, !llvm.loop !1263

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1265
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 2, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %94, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %100, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %311, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8 %351, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %352, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1265
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1266
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1267
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %362, metadata !948, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 %361, metadata !945, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %360, metadata !920, metadata !DIExpression()), !dbg !984
  %363 = and i8 %362, 1, !dbg !1268
  %364 = icmp ne i8 %363, 0, !dbg !1268
  call void @llvm.dbg.value(metadata i8 %363, metadata !944, metadata !DIExpression()), !dbg !1062
  %365 = icmp ult i64 %361, 2, !dbg !1269
  %366 = or i1 %364, %115, !dbg !1270
  %367 = and i1 %365, %366, !dbg !1271
  br i1 %367, label %467, label %368, !dbg !1271

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %369, metadata !978, metadata !DIExpression()), !dbg !1273
  br label %370, !dbg !1274

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1275
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1279
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !998
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1275
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1281
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1061
  call void @llvm.dbg.value(metadata i8 %376, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %375, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %374, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %373, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %372, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %371, metadata !926, metadata !DIExpression()), !dbg !1051
  br i1 %366, label %423, label %377, !dbg !1285

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1286

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !943, metadata !DIExpression()), !dbg !1061
  %379 = and i8 %373, 1, !dbg !1289
  %380 = icmp eq i8 %379, 0, !dbg !1289
  %381 = and i1 %114, %380, !dbg !1289
  br i1 %381, label %382, label %398, !dbg !1289

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1291
  br i1 %383, label %384, label %386, !dbg !1295

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1291
  store i8 39, i8* %385, align 1, !dbg !1291, !tbaa !1012
  br label %386, !dbg !1291

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %387, metadata !927, metadata !DIExpression()), !dbg !990
  %388 = icmp ult i64 %387, %129, !dbg !1296
  br i1 %388, label %389, label %391, !dbg !1299

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1296
  store i8 36, i8* %390, align 1, !dbg !1296, !tbaa !1012
  br label %391, !dbg !1296

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %392, metadata !927, metadata !DIExpression()), !dbg !990
  %393 = icmp ult i64 %392, %129, !dbg !1300
  br i1 %393, label %394, label %396, !dbg !1303

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1300
  store i8 39, i8* %395, align 1, !dbg !1300, !tbaa !1012
  br label %396, !dbg !1300

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %397, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, metadata !934, metadata !DIExpression()), !dbg !998
  br label %398, !dbg !1304

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1050
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %400, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %399, metadata !927, metadata !DIExpression()), !dbg !990
  %401 = icmp ult i64 %399, %129, !dbg !1305
  br i1 %401, label %402, label %404, !dbg !1308

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1305
  store i8 92, i8* %403, align 1, !dbg !1305, !tbaa !1012
  br label %404, !dbg !1305

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %405, metadata !927, metadata !DIExpression()), !dbg !990
  %406 = icmp ult i64 %405, %129, !dbg !1309
  br i1 %406, label %407, label %411, !dbg !1312

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1309
  %409 = or i8 %408, 48, !dbg !1309
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1309
  store i8 %409, i8* %410, align 1, !dbg !1309, !tbaa !1012
  br label %411, !dbg !1309

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %412, metadata !927, metadata !DIExpression()), !dbg !990
  %413 = icmp ult i64 %412, %129, !dbg !1313
  br i1 %413, label %414, label %419, !dbg !1316

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1313
  %416 = and i8 %415, 7, !dbg !1313
  %417 = or i8 %416, 48, !dbg !1313
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1313
  store i8 %417, i8* %418, align 1, !dbg !1313, !tbaa !1012
  br label %419, !dbg !1313

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %420, metadata !927, metadata !DIExpression()), !dbg !990
  %421 = and i8 %374, 7, !dbg !1317
  %422 = or i8 %421, 48, !dbg !1318
  call void @llvm.dbg.value(metadata i8 %422, metadata !937, metadata !DIExpression()), !dbg !1077
  br label %432, !dbg !1319

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1320
  %425 = icmp eq i8 %424, 0, !dbg !1320
  br i1 %425, label %432, label %426, !dbg !1321

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1322
  br i1 %427, label %428, label %430, !dbg !1325

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1322
  store i8 92, i8* %429, align 1, !dbg !1322, !tbaa !1012
  br label %430, !dbg !1322

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %431, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 0, metadata !942, metadata !DIExpression()), !dbg !1060
  br label %432, !dbg !1326

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1327
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !998
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1328
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1329
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1331
  call void @llvm.dbg.value(metadata i8 %437, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %436, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %435, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %434, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %433, metadata !927, metadata !DIExpression()), !dbg !990
  %438 = add i64 %371, 1, !dbg !1332
  %439 = icmp ugt i64 %369, %438, !dbg !1334
  br i1 %439, label %440, label %562, !dbg !1335

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1336
  %442 = icmp ne i8 %441, 0, !dbg !1336
  %443 = and i8 %437, 1, !dbg !1336
  %444 = icmp eq i8 %443, 0, !dbg !1336
  %445 = and i1 %442, %444, !dbg !1336
  br i1 %445, label %446, label %457, !dbg !1336

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1339
  br i1 %447, label %448, label %450, !dbg !1343

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1339
  store i8 39, i8* %449, align 1, !dbg !1339, !tbaa !1012
  br label %450, !dbg !1339

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %451, metadata !927, metadata !DIExpression()), !dbg !990
  %452 = icmp ult i64 %451, %129, !dbg !1344
  br i1 %452, label %453, label %455, !dbg !1347

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1344
  store i8 39, i8* %454, align 1, !dbg !1344, !tbaa !1012
  br label %455, !dbg !1344

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %456, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 0, metadata !934, metadata !DIExpression()), !dbg !998
  br label %457, !dbg !1348

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1349
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %459, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %458, metadata !927, metadata !DIExpression()), !dbg !990
  %460 = icmp ult i64 %458, %129, !dbg !1350
  br i1 %460, label %461, label %463, !dbg !1352

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1350
  store i8 %435, i8* %462, align 1, !dbg !1350, !tbaa !1012
  br label %463, !dbg !1350

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %464, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %438, metadata !926, metadata !DIExpression()), !dbg !1051
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1353
  %466 = load i8, i8* %465, align 1, !dbg !1353, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %466, metadata !937, metadata !DIExpression()), !dbg !1077
  br label %370, !dbg !1354, !llvm.loop !1355

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1358
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1050
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !991
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1359
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1050
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1050
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1075
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1075
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1075
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %476, metadata !944, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %475, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %155, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %474, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %473, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %472, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %471, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %470, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %469, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %468, metadata !926, metadata !DIExpression()), !dbg !1051
  br i1 %105, label %489, label %478, !dbg !1360

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
  br i1 %112, label %490, label %512, !dbg !1362

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1363

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
  %501 = lshr i8 %494, 5, !dbg !1364
  %502 = zext i8 %501 to i64, !dbg !1364
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1365
  %504 = load i32, i32* %503, align 4, !dbg !1365, !tbaa !702
  %505 = and i8 %494, 31, !dbg !1366
  %506 = zext i8 %505 to i32, !dbg !1366
  %507 = shl i32 1, %506, !dbg !1367
  %508 = and i32 %504, %507, !dbg !1367
  %509 = icmp eq i32 %508, 0, !dbg !1367
  %510 = icmp eq i8 %155, 0, !dbg !1368
  %511 = and i1 %510, %509, !dbg !1369
  br i1 %511, label %562, label %524, !dbg !1369

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
  %523 = icmp eq i8 %155, 0, !dbg !1368
  br i1 %523, label %562, label %524, !dbg !1370

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1371
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1050
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !991
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1359
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !998
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !999
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1372
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1075
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %532, metadata !944, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %531, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %530, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %529, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %528, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %527, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %526, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %525, metadata !926, metadata !DIExpression()), !dbg !1051
  br i1 %110, label %534, label %661, !dbg !1375

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !943, metadata !DIExpression()), !dbg !1061
  %535 = and i8 %529, 1, !dbg !1377
  %536 = icmp eq i8 %535, 0, !dbg !1377
  %537 = and i1 %114, %536, !dbg !1377
  br i1 %537, label %538, label %554, !dbg !1377

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1379
  br i1 %539, label %540, label %542, !dbg !1383

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1379
  store i8 39, i8* %541, align 1, !dbg !1379, !tbaa !1012
  br label %542, !dbg !1379

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %543, metadata !927, metadata !DIExpression()), !dbg !990
  %544 = icmp ult i64 %543, %533, !dbg !1384
  br i1 %544, label %545, label %547, !dbg !1387

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1384
  store i8 36, i8* %546, align 1, !dbg !1384, !tbaa !1012
  br label %547, !dbg !1384

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %548, metadata !927, metadata !DIExpression()), !dbg !990
  %549 = icmp ult i64 %548, %533, !dbg !1388
  br i1 %549, label %550, label %552, !dbg !1391

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1388
  store i8 39, i8* %551, align 1, !dbg !1388, !tbaa !1012
  br label %552, !dbg !1388

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %553, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, metadata !934, metadata !DIExpression()), !dbg !998
  br label %554, !dbg !1392

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1349
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %556, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %555, metadata !927, metadata !DIExpression()), !dbg !990
  %557 = icmp ult i64 %555, %533, !dbg !1393
  br i1 %557, label %558, label %560, !dbg !1396

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1393
  store i8 92, i8* %559, align 1, !dbg !1393, !tbaa !1012
  br label %560, !dbg !1393

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %561, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %572, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %571, metadata !944, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %570, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %569, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %568, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %567, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %566, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %565, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %564, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %563, metadata !926, metadata !DIExpression()), !dbg !1051
  br label %589, !dbg !1397

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1371
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1050
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !991
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1359
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !998
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !999
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1400
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1075
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1075
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %571, metadata !944, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %570, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %569, metadata !937, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %568, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %567, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %566, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %565, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %564, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %563, metadata !926, metadata !DIExpression()), !dbg !1051
  %573 = and i8 %567, 1, !dbg !1397
  %574 = icmp ne i8 %573, 0, !dbg !1397
  %575 = and i8 %570, 1, !dbg !1397
  %576 = icmp eq i8 %575, 0, !dbg !1397
  %577 = and i1 %574, %576, !dbg !1397
  br i1 %577, label %578, label %589, !dbg !1397

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1401
  br i1 %579, label %580, label %582, !dbg !1405

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1401
  store i8 39, i8* %581, align 1, !dbg !1401, !tbaa !1012
  br label %582, !dbg !1401

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %583, metadata !927, metadata !DIExpression()), !dbg !990
  %584 = icmp ult i64 %583, %572, !dbg !1406
  br i1 %584, label %585, label %587, !dbg !1409

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1406
  store i8 39, i8* %586, align 1, !dbg !1406, !tbaa !1012
  br label %587, !dbg !1406

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %588, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 0, metadata !934, metadata !DIExpression()), !dbg !998
  br label %589, !dbg !1410

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1349
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %598, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %597, metadata !927, metadata !DIExpression()), !dbg !990
  %599 = icmp ult i64 %597, %590, !dbg !1411
  br i1 %599, label %600, label %602, !dbg !1414

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1411
  store i8 %592, i8* %601, align 1, !dbg !1411, !tbaa !1012
  br label %602, !dbg !1411

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %603, metadata !927, metadata !DIExpression()), !dbg !990
  %604 = and i8 %591, 1, !dbg !1415
  %605 = icmp eq i8 %604, 0, !dbg !1415
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1417
  call void @llvm.dbg.value(metadata i8 %606, metadata !936, metadata !DIExpression()), !dbg !1000
  br label %607, !dbg !1418

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1371
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1050
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !991
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1359
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !998
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1050
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1000
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8 %614, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %613, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %612, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %611, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %610, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %609, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %608, metadata !926, metadata !DIExpression()), !dbg !1051
  %616 = add i64 %608, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %616, metadata !926, metadata !DIExpression()), !dbg !1051
  br label %121, !dbg !1420, !llvm.loop !1421

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %125, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %125, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %128, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  %619 = icmp eq i64 %123, 0, !dbg !1423
  %620 = and i1 %114, %619, !dbg !1425
  %621 = xor i1 %620, true, !dbg !1425
  %622 = or i1 %110, %621, !dbg !1425
  br i1 %622, label %623, label %661, !dbg !1425

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1426
  %625 = xor i1 %624, true, !dbg !1426
  %626 = and i8 %127, 1, !dbg !1428
  %627 = icmp eq i8 %626, 0, !dbg !1428
  %628 = or i1 %627, %625, !dbg !1426
  br i1 %628, label %638, label %629, !dbg !1426

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1429
  %631 = icmp eq i8 %630, 0, !dbg !1429
  br i1 %631, label %634, label %632, !dbg !1432

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %618, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %125, metadata !920, metadata !DIExpression()), !dbg !984
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1433
  br label %671, !dbg !1434

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1435
  %636 = icmp ne i64 %124, 0, !dbg !1437
  %637 = and i1 %636, %635, !dbg !1438
  br i1 %637, label %27, label %638, !dbg !1438

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !918, metadata !DIExpression()), !dbg !982
  %639 = icmp ne i8* %98, null, !dbg !1439
  %640 = and i1 %639, %110, !dbg !1441
  br i1 %640, label %641, label %656, !dbg !1441

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %123, metadata !927, metadata !DIExpression()), !dbg !990
  %642 = load i8, i8* %98, align 1, !dbg !1442, !tbaa !1012
  %643 = icmp eq i8 %642, 0, !dbg !1445
  br i1 %643, label %656, label %644, !dbg !1445

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %647, metadata !927, metadata !DIExpression()), !dbg !990
  %648 = icmp ult i64 %647, %129, !dbg !1446
  br i1 %648, label %649, label %651, !dbg !1449

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1446
  store i8 %645, i8* %650, align 1, !dbg !1446, !tbaa !1012
  br label %651, !dbg !1446

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1449
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %653, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %652, metadata !927, metadata !DIExpression()), !dbg !990
  %654 = load i8, i8* %653, align 1, !dbg !1442, !tbaa !1012
  %655 = icmp eq i8 %654, 0, !dbg !1445
  br i1 %655, label %656, label %644, !dbg !1445, !llvm.loop !1451

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !990
  call void @llvm.dbg.value(metadata i64 %657, metadata !927, metadata !DIExpression()), !dbg !990
  %658 = icmp ult i64 %657, %129, !dbg !1453
  br i1 %658, label %659, label %671, !dbg !1455

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1456
  store i8 0, i8* %660, align 1, !dbg !1457, !tbaa !1012
  br label %671, !dbg !1456

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %663, metadata !920, metadata !DIExpression()), !dbg !984
  %665 = icmp ne i32 %662, 2, !dbg !1458
  %666 = icmp eq i8 %102, 0, !dbg !1460
  %667 = or i1 %665, %666, !dbg !1461
  call void @llvm.dbg.value(metadata i32 4, metadata !921, metadata !DIExpression()), !dbg !985
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1461
  call void @llvm.dbg.value(metadata i32 %668, metadata !921, metadata !DIExpression()), !dbg !985
  %669 = and i32 %5, -3, !dbg !1462
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1463
  br label %671, !dbg !1464

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1465
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #8 !dbg !1466 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1470, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %1, metadata !1471, metadata !DIExpression()), !dbg !1475
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %3, metadata !1472, metadata !DIExpression()), !dbg !1477
  %4 = icmp eq i8* %3, %0, !dbg !1478
  br i1 %4, label %5, label %71, !dbg !1480

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1481
  call void @llvm.dbg.value(metadata i8* %6, metadata !1473, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %6, metadata !1483, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i8* null, metadata !1489, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 85, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 84, metadata !1491, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 70, metadata !1492, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 45, metadata !1493, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 56, metadata !1494, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1511
  %7 = load i8, i8* %6, align 1, !dbg !1512, !tbaa !1012
  %8 = and i8 %7, -33, !dbg !1512
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1512

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1514, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* null, metadata !1519, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 84, metadata !1520, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 70, metadata !1521, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8 45, metadata !1522, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 56, metadata !1523, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1524, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1525, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 0, metadata !1526, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1527, metadata !DIExpression()), !dbg !1540
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1541
  %11 = load i8, i8* %10, align 1, !dbg !1541, !tbaa !1012
  %12 = and i8 %11, -33, !dbg !1541
  %13 = icmp eq i8 %12, 84, !dbg !1541
  br i1 %13, label %14, label %68, !dbg !1541

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* null, metadata !1548, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 70, metadata !1549, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i8 45, metadata !1550, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8 56, metadata !1551, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8 0, metadata !1552, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1567
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1568
  %16 = load i8, i8* %15, align 1, !dbg !1568, !tbaa !1012
  %17 = and i8 %16, -33, !dbg !1568
  %18 = icmp eq i8 %17, 70, !dbg !1568
  br i1 %18, label %19, label %68, !dbg !1568

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1570, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8* null, metadata !1575, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8 45, metadata !1576, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 56, metadata !1577, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1579, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1593
  %21 = load i8, i8* %20, align 1, !dbg !1593, !tbaa !1012
  %22 = icmp eq i8 %21, 45, !dbg !1593
  br i1 %22, label %23, label %68, !dbg !1595

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1596, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* null, metadata !1601, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 56, metadata !1602, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1616
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1617
  %25 = load i8, i8* %24, align 1, !dbg !1617, !tbaa !1012
  %26 = icmp eq i8 %25, 56, !dbg !1617
  br i1 %26, label %27, label %68, !dbg !1619

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1620, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8* null, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1638
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1639
  %29 = load i8, i8* %28, align 1, !dbg !1639, !tbaa !1012
  %30 = icmp eq i8 %29, 0, !dbg !1639
  br i1 %30, label %31, label %68, !dbg !1641

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1642, !tbaa !1012
  %33 = icmp eq i8 %32, 96, !dbg !1643
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1642
  br label %71, !dbg !1644

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1514, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8* null, metadata !1519, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 66, metadata !1520, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 49, metadata !1521, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 56, metadata !1522, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 48, metadata !1523, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 51, metadata !1524, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 48, metadata !1525, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1526, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 0, metadata !1527, metadata !DIExpression()), !dbg !1657
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1658
  %37 = load i8, i8* %36, align 1, !dbg !1658, !tbaa !1012
  %38 = and i8 %37, -33, !dbg !1658
  %39 = icmp eq i8 %38, 66, !dbg !1658
  br i1 %39, label %40, label %68, !dbg !1658

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1543, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* null, metadata !1548, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 49, metadata !1549, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 56, metadata !1550, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 48, metadata !1551, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 51, metadata !1552, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 48, metadata !1553, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1668
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1669
  %42 = load i8, i8* %41, align 1, !dbg !1669, !tbaa !1012
  %43 = icmp eq i8 %42, 49, !dbg !1669
  br i1 %43, label %44, label %68, !dbg !1670

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1570, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* null, metadata !1575, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 56, metadata !1576, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 48, metadata !1577, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 51, metadata !1578, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 48, metadata !1579, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 0, metadata !1581, metadata !DIExpression()), !dbg !1679
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1680
  %46 = load i8, i8* %45, align 1, !dbg !1680, !tbaa !1012
  %47 = icmp eq i8 %46, 56, !dbg !1680
  br i1 %47, label %48, label %68, !dbg !1681

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1596, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* null, metadata !1601, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 48, metadata !1602, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 51, metadata !1603, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 48, metadata !1604, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1689
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1690
  %50 = load i8, i8* %49, align 1, !dbg !1690, !tbaa !1012
  %51 = icmp eq i8 %50, 48, !dbg !1690
  br i1 %51, label %52, label %68, !dbg !1691

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1620, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* null, metadata !1625, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 51, metadata !1626, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 48, metadata !1627, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1698
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1699
  %54 = load i8, i8* %53, align 1, !dbg !1699, !tbaa !1012
  %55 = icmp eq i8 %54, 51, !dbg !1699
  br i1 %55, label %56, label %68, !dbg !1700

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1701, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8* null, metadata !1706, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 48, metadata !1707, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1717
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1718
  %58 = load i8, i8* %57, align 1, !dbg !1718, !tbaa !1012
  %59 = icmp eq i8 %58, 48, !dbg !1718
  br i1 %59, label %60, label %68, !dbg !1720

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1721, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* null, metadata !1726, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1735
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1736
  %62 = load i8, i8* %61, align 1, !dbg !1736, !tbaa !1012
  %63 = icmp eq i8 %62, 0, !dbg !1736
  br i1 %63, label %64, label %68, !dbg !1738

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1739, !tbaa !1012
  %66 = icmp eq i8 %65, 96, !dbg !1740
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !1739
  br label %71, !dbg !1741

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1742
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !1743
  br label %71, !dbg !1744

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1745
  ret i8* %72, !dbg !1746
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #8 !dbg !1747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1751, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %1, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1753, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %0, metadata !1757, metadata !DIExpression()) #11, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %1, metadata !1762, metadata !DIExpression()) #11, !dbg !1772
  call void @llvm.dbg.value(metadata i64* null, metadata !1763, metadata !DIExpression()) #11, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1764, metadata !DIExpression()) #11, !dbg !1774
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1775
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1765, metadata !DIExpression()) #11, !dbg !1776
  %6 = tail call i32* @__errno_location() #17, !dbg !1777
  %7 = load i32, i32* %6, align 4, !dbg !1777, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %7, metadata !1766, metadata !DIExpression()) #11, !dbg !1778
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1779
  %9 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !850
  %10 = or i32 %9, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %10, metadata !1767, metadata !DIExpression()) #11, !dbg !1781
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1782
  %12 = load i32, i32* %11, align 8, !dbg !1782, !tbaa !790
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1783
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1784
  %15 = load i8*, i8** %14, align 8, !dbg !1784, !tbaa !876
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1785
  %17 = load i8*, i8** %16, align 8, !dbg !1785, !tbaa !879
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !1786
  %19 = add i64 %18, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %19, metadata !1768, metadata !DIExpression()) #11, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %19, metadata !1789, metadata !DIExpression()) #11, !dbg !1794
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %20, metadata !1769, metadata !DIExpression()) #11, !dbg !1797
  %21 = load i32, i32* %11, align 8, !dbg !1798, !tbaa !790
  %22 = load i8*, i8** %14, align 8, !dbg !1799, !tbaa !876
  %23 = load i8*, i8** %16, align 8, !dbg !1800, !tbaa !879
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !1801
  store i32 %7, i32* %6, align 4, !dbg !1802, !tbaa !702
  ret i8* %20, !dbg !1803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #8 !dbg !1758 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1757, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %1, metadata !1762, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64* %2, metadata !1763, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1764, metadata !DIExpression()), !dbg !1807
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1808
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1808
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1765, metadata !DIExpression()), !dbg !1809
  %7 = tail call i32* @__errno_location() #17, !dbg !1810
  %8 = load i32, i32* %7, align 4, !dbg !1810, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %8, metadata !1766, metadata !DIExpression()), !dbg !1811
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1812
  %10 = load i32, i32* %9, align 4, !dbg !1812, !tbaa !850
  %11 = icmp ne i64* %2, null, !dbg !1813
  %12 = xor i1 %11, true, !dbg !1813
  %13 = zext i1 %12 to i32, !dbg !1813
  %14 = or i32 %10, %13, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %14, metadata !1767, metadata !DIExpression()), !dbg !1815
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1816
  %16 = load i32, i32* %15, align 8, !dbg !1816, !tbaa !790
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1817
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1818
  %19 = load i8*, i8** %18, align 8, !dbg !1818, !tbaa !876
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1819
  %21 = load i8*, i8** %20, align 8, !dbg !1819, !tbaa !879
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1820
  %23 = add i64 %22, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %23, metadata !1768, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %23, metadata !1789, metadata !DIExpression()) #11, !dbg !1823
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %24, metadata !1769, metadata !DIExpression()), !dbg !1826
  %25 = load i32, i32* %15, align 8, !dbg !1827, !tbaa !790
  %26 = load i8*, i8** %18, align 8, !dbg !1828, !tbaa !876
  %27 = load i8*, i8** %20, align 8, !dbg !1829, !tbaa !879
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1830
  store i32 %8, i32* %7, align 4, !dbg !1831, !tbaa !702
  br i1 %11, label %29, label %30, !dbg !1832

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1833, !tbaa !1835
  br label %30, !dbg !1837

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1839 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1843, !tbaa !579
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 1, metadata !1842, metadata !DIExpression()), !dbg !1845
  %2 = load i32, i32* @nslots, align 4, !dbg !1846, !tbaa !702
  %3 = icmp sgt i32 %2, 1, !dbg !1849
  br i1 %3, label %4, label %12, !dbg !1850

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1842, metadata !DIExpression()), !dbg !1845
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1851
  %7 = load i8*, i8** %6, align 8, !dbg !1851, !tbaa !1852
  tail call void @free(i8* %7) #11, !dbg !1854
  %8 = add nuw nsw i64 %5, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i32 undef, metadata !1842, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1845
  %9 = load i32, i32* @nslots, align 4, !dbg !1846, !tbaa !702
  %10 = sext i32 %9 to i64, !dbg !1849
  %11 = icmp slt i64 %8, %10, !dbg !1849
  br i1 %11, label %4, label %12, !dbg !1850, !llvm.loop !1856

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1858
  %14 = load i8*, i8** %13, align 8, !dbg !1858, !tbaa !1852
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1860
  br i1 %15, label %17, label %16, !dbg !1861

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !1862
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1864, !tbaa !1865
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1866, !tbaa !1852
  br label %17, !dbg !1867

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1868
  br i1 %18, label %21, label %19, !dbg !1870

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1871
  tail call void @free(i8* %20) #11, !dbg !1873
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1874, !tbaa !579
  br label %21, !dbg !1875

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1876, !tbaa !702
  ret void, !dbg !1877
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #8 !dbg !1878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1882, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* %1, metadata !1883, metadata !DIExpression()), !dbg !1885
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1886
  ret i8* %3, !dbg !1887
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #8 !dbg !1888 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1892, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8* %1, metadata !1893, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %2, metadata !1894, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1895, metadata !DIExpression()), !dbg !1910
  %5 = tail call i32* @__errno_location() #17, !dbg !1911
  %6 = load i32, i32* %5, align 4, !dbg !1911, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %6, metadata !1896, metadata !DIExpression()), !dbg !1912
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1913, !tbaa !579
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1897, metadata !DIExpression()), !dbg !1914
  %8 = icmp slt i32 %0, 0, !dbg !1915
  br i1 %8, label %9, label %10, !dbg !1917

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !1918
  unreachable, !dbg !1918

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1919, !tbaa !702
  %12 = icmp sgt i32 %11, %0, !dbg !1920
  br i1 %12, label %34, label %13, !dbg !1921

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1922
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1901, metadata !DIExpression()), !dbg !1923
  %15 = icmp eq i32 %0, 2147483647, !dbg !1924
  br i1 %15, label %16, label %17, !dbg !1926

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !1927
  unreachable, !dbg !1927

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1928
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1928
  %20 = add nsw i32 %0, 1, !dbg !1929
  %21 = sext i32 %20 to i64, !dbg !1930
  %22 = shl nsw i64 %21, 4, !dbg !1931
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !1932
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1932
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1897, metadata !DIExpression()), !dbg !1914
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1933, !tbaa !579
  br i1 %14, label %25, label %26, !dbg !1934

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1935, !tbaa.struct !1937
  br label %26, !dbg !1938

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1939, !tbaa !702
  %28 = sext i32 %27 to i64, !dbg !1940
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1940
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1941
  %31 = sub nsw i32 %20, %27, !dbg !1942
  %32 = sext i32 %31 to i64, !dbg !1943
  %33 = shl nsw i64 %32, 4, !dbg !1944
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !1941
  store i32 %20, i32* @nslots, align 4, !dbg !1945, !tbaa !702
  br label %34, !dbg !1946

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1947
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1897, metadata !DIExpression()), !dbg !1914
  %36 = sext i32 %0 to i64, !dbg !1948
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1949
  %38 = load i64, i64* %37, align 8, !dbg !1949, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %38, metadata !1902, metadata !DIExpression()), !dbg !1950
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1951
  %40 = load i8*, i8** %39, align 8, !dbg !1951, !tbaa !1852
  call void @llvm.dbg.value(metadata i8* %40, metadata !1904, metadata !DIExpression()), !dbg !1952
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1953
  %42 = load i32, i32* %41, align 4, !dbg !1953, !tbaa !850
  %43 = or i32 %42, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %43, metadata !1905, metadata !DIExpression()), !dbg !1955
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1956
  %45 = load i32, i32* %44, align 8, !dbg !1956, !tbaa !790
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1957
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1958
  %48 = load i8*, i8** %47, align 8, !dbg !1958, !tbaa !876
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1959
  %50 = load i8*, i8** %49, align 8, !dbg !1959, !tbaa !879
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %51, metadata !1906, metadata !DIExpression()), !dbg !1961
  %52 = icmp ugt i64 %38, %51, !dbg !1962
  br i1 %52, label %63, label %53, !dbg !1964

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %54, metadata !1902, metadata !DIExpression()), !dbg !1950
  store i64 %54, i64* %37, align 8, !dbg !1967, !tbaa !1865
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1968
  br i1 %55, label %57, label %56, !dbg !1970

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !1971
  br label %57, !dbg !1971

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1789, metadata !DIExpression()) #11, !dbg !1972
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !1974
  call void @llvm.dbg.value(metadata i8* %58, metadata !1904, metadata !DIExpression()), !dbg !1952
  store i8* %58, i8** %39, align 8, !dbg !1975, !tbaa !1852
  %59 = load i32, i32* %44, align 8, !dbg !1976, !tbaa !790
  %60 = load i8*, i8** %47, align 8, !dbg !1977, !tbaa !876
  %61 = load i8*, i8** %49, align 8, !dbg !1978, !tbaa !879
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1979
  br label %63, !dbg !1980

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1981
  call void @llvm.dbg.value(metadata i8* %64, metadata !1904, metadata !DIExpression()), !dbg !1952
  store i32 %6, i32* %5, align 4, !dbg !1982, !tbaa !702
  ret i8* %64, !dbg !1983
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !1984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %1, metadata !1989, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %2, metadata !1990, metadata !DIExpression()), !dbg !1993
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1994
  ret i8* %4, !dbg !1995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #8 !dbg !1996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()) #11, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %0, metadata !1883, metadata !DIExpression()) #11, !dbg !2004
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2005
  ret i8* %2, !dbg !2006
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #8 !dbg !2007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !1988, metadata !DIExpression()) #11, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %0, metadata !1989, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %1, metadata !1990, metadata !DIExpression()) #11, !dbg !2018
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2019
  ret i8* %3, !dbg !2020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #8 !dbg !2021 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !2026, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8* %2, metadata !2027, metadata !DIExpression()), !dbg !2031
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2032
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %1, metadata !2034, metadata !DIExpression()) #11, !dbg !2040
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2042, !alias.scope !2043
  %6 = icmp eq i32 %1, 10, !dbg !2046
  br i1 %6, label %7, label %8, !dbg !2048

; <label>:7:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2049, !noalias !2043
  unreachable, !dbg !2049

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2050
  store i32 %1, i32* %9, align 8, !dbg !2051, !tbaa !790, !alias.scope !2043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2033
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2039, metadata !DIExpression(DW_OP_deref)), !dbg !2042
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2053
  ret i8* %10, !dbg !2054
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #8 !dbg !2055 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %2, metadata !2061, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64 %3, metadata !2062, metadata !DIExpression()), !dbg !2067
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2063, metadata !DIExpression(DW_OP_deref)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %1, metadata !2034, metadata !DIExpression()) #11, !dbg !2070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2072, !alias.scope !2073
  %7 = icmp eq i32 %1, 10, !dbg !2076
  br i1 %7, label %8, label %9, !dbg !2077

; <label>:8:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2078, !noalias !2073
  unreachable, !dbg !2078

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2079
  store i32 %1, i32* %10, align 8, !dbg !2080, !tbaa !790, !alias.scope !2073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2063, metadata !DIExpression(DW_OP_deref)), !dbg !2069
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2039, metadata !DIExpression(DW_OP_deref)), !dbg !2072
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2082
  ret i8* %11, !dbg !2083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #8 !dbg !2084 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 0, metadata !2025, metadata !DIExpression()) #11, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %0, metadata !2026, metadata !DIExpression()) #11, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %1, metadata !2027, metadata !DIExpression()) #11, !dbg !2095
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %0, metadata !2034, metadata !DIExpression()) #11, !dbg !2098
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2100, !alias.scope !2101
  %5 = icmp eq i32 %0, 10, !dbg !2104
  br i1 %5, label %6, label %7, !dbg !2105

; <label>:6:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2106, !noalias !2101
  unreachable, !dbg !2106

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2107
  store i32 %0, i32* %8, align 8, !dbg !2108, !tbaa !790, !alias.scope !2101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2039, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2100
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2110
  ret i8* %9, !dbg !2111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !2112 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2116, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %1, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %2, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()) #11, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()) #11, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %1, metadata !2061, metadata !DIExpression()) #11, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %2, metadata !2062, metadata !DIExpression()) #11, !dbg !2126
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2063, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %0, metadata !2034, metadata !DIExpression()) #11, !dbg !2129
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2131, !alias.scope !2132
  %6 = icmp eq i32 %0, 10, !dbg !2135
  br i1 %6, label %7, label %8, !dbg !2136

; <label>:7:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2137, !noalias !2132
  unreachable, !dbg !2137

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2138
  store i32 %0, i32* %9, align 8, !dbg !2139, !tbaa !790, !alias.scope !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2063, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2039, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2131
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2141
  ret i8* %10, !dbg !2142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #8 !dbg !2143 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %2, metadata !2149, metadata !DIExpression()), !dbg !2153
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2154
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2155, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2157
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !809, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 %2, metadata !810, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %2, metadata !812, metadata !DIExpression()), !dbg !2162
  %6 = lshr i8 %2, 5, !dbg !2163
  %7 = zext i8 %6 to i64, !dbg !2163
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2164
  call void @llvm.dbg.value(metadata i32* %8, metadata !814, metadata !DIExpression()), !dbg !2165
  %9 = and i8 %2, 31, !dbg !2166
  %10 = zext i8 %9 to i32, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %10, metadata !816, metadata !DIExpression()), !dbg !2167
  %11 = load i32, i32* %8, align 4, !dbg !2168, !tbaa !702
  %12 = lshr i32 %11, %10, !dbg !2169
  %13 = and i32 %12, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %13, metadata !817, metadata !DIExpression()), !dbg !2171
  %14 = xor i32 %13, 1, !dbg !2172
  %15 = shl i32 %14, %10, !dbg !2173
  %16 = xor i32 %15, %11, !dbg !2174
  store i32 %16, i32* %8, align 4, !dbg !2174, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2157
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2175
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2176
  ret i8* %17, !dbg !2177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #8 !dbg !2178 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 %1, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #11, !dbg !2186
  call void @llvm.dbg.value(metadata i64 -1, metadata !2148, metadata !DIExpression()) #11, !dbg !2188
  call void @llvm.dbg.value(metadata i8 %1, metadata !2149, metadata !DIExpression()) #11, !dbg !2189
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2191, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !809, metadata !DIExpression()) #11, !dbg !2193
  call void @llvm.dbg.value(metadata i8 %1, metadata !810, metadata !DIExpression()) #11, !dbg !2195
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()) #11, !dbg !2196
  call void @llvm.dbg.value(metadata i8 %1, metadata !812, metadata !DIExpression()) #11, !dbg !2197
  %5 = lshr i8 %1, 5, !dbg !2198
  %6 = zext i8 %5 to i64, !dbg !2198
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2199
  call void @llvm.dbg.value(metadata i32* %7, metadata !814, metadata !DIExpression()) #11, !dbg !2200
  %8 = and i8 %1, 31, !dbg !2201
  %9 = zext i8 %8 to i32, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %9, metadata !816, metadata !DIExpression()) #11, !dbg !2202
  %10 = load i32, i32* %7, align 4, !dbg !2203, !tbaa !702
  %11 = lshr i32 %10, %9, !dbg !2204
  %12 = and i32 %11, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %12, metadata !817, metadata !DIExpression()) #11, !dbg !2206
  %13 = xor i32 %12, 1, !dbg !2207
  %14 = shl i32 %13, %9, !dbg !2208
  %15 = xor i32 %14, %10, !dbg !2209
  store i32 %15, i32* %7, align 4, !dbg !2209, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2192
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2211
  ret i8* %16, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #8 !dbg !2213 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()) #11, !dbg !2217
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()) #11, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #11, !dbg !2220
  call void @llvm.dbg.value(metadata i64 -1, metadata !2148, metadata !DIExpression()) #11, !dbg !2222
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #11, !dbg !2223
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2225, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !809, metadata !DIExpression()) #11, !dbg !2227
  call void @llvm.dbg.value(metadata i8 58, metadata !810, metadata !DIExpression()) #11, !dbg !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()) #11, !dbg !2230
  call void @llvm.dbg.value(metadata i8 58, metadata !812, metadata !DIExpression()) #11, !dbg !2231
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32* %4, metadata !814, metadata !DIExpression()) #11, !dbg !2233
  call void @llvm.dbg.value(metadata i32 26, metadata !816, metadata !DIExpression()) #11, !dbg !2234
  %5 = load i32, i32* %4, align 4, !dbg !2235, !tbaa !702
  %6 = or i32 %5, 67108864, !dbg !2236
  store i32 %6, i32* %4, align 4, !dbg !2236, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2226
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2238
  ret i8* %7, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #8 !dbg !2240 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #11, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %1, metadata !2148, metadata !DIExpression()) #11, !dbg !2248
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #11, !dbg !2249
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2251, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !809, metadata !DIExpression()) #11, !dbg !2253
  call void @llvm.dbg.value(metadata i8 58, metadata !810, metadata !DIExpression()) #11, !dbg !2255
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()) #11, !dbg !2256
  call void @llvm.dbg.value(metadata i8 58, metadata !812, metadata !DIExpression()) #11, !dbg !2257
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2258
  call void @llvm.dbg.value(metadata i32* %5, metadata !814, metadata !DIExpression()) #11, !dbg !2259
  call void @llvm.dbg.value(metadata i32 26, metadata !816, metadata !DIExpression()) #11, !dbg !2260
  %6 = load i32, i32* %5, align 4, !dbg !2261, !tbaa !702
  %7 = or i32 %6, 67108864, !dbg !2262
  store i32 %7, i32* %5, align 4, !dbg !2262, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2252
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2264
  ret i8* %8, !dbg !2265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #8 !dbg !2266 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2039, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %2, metadata !2270, metadata !DIExpression()), !dbg !2276
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2277
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2278
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %1, metadata !2034, metadata !DIExpression()) #11, !dbg !2279
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2272
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2272, !alias.scope !2280
  %8 = icmp eq i32 %1, 10, !dbg !2283
  br i1 %8, label %9, label %10, !dbg !2284

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2285, !noalias !2280
  unreachable, !dbg !2285

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2039, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2272
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2278
  store i32 %1, i32* %11, align 8, !dbg !2278
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2278
  %13 = bitcast i32* %12 to i8*, !dbg !2278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2278
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !809, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 58, metadata !810, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 58, metadata !812, metadata !DIExpression()), !dbg !2291
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2292
  call void @llvm.dbg.value(metadata i32* %14, metadata !814, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 26, metadata !816, metadata !DIExpression()), !dbg !2294
  %15 = load i32, i32* %14, align 4, !dbg !2295, !tbaa !702
  %16 = or i32 %15, 67108864, !dbg !2296
  store i32 %16, i32* %14, align 4, !dbg !2296, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2286
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2298
  ret i8* %17, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #8 !dbg !2300 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %1, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %2, metadata !2306, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %3, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()) #11, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %1, metadata !2317, metadata !DIExpression()) #11, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()) #11, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %3, metadata !2319, metadata !DIExpression()) #11, !dbg !2326
  call void @llvm.dbg.value(metadata i64 -1, metadata !2320, metadata !DIExpression()) #11, !dbg !2327
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2329, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !858, metadata !DIExpression()) #11, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %1, metadata !859, metadata !DIExpression()) #11, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %2, metadata !860, metadata !DIExpression()) #11, !dbg !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !858, metadata !DIExpression()) #11, !dbg !2331
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2335
  store i32 10, i32* %7, align 8, !dbg !2336, !tbaa !790
  %8 = icmp ne i8* %1, null, !dbg !2337
  %9 = icmp ne i8* %2, null, !dbg !2338
  %10 = and i1 %8, %9, !dbg !2339
  br i1 %10, label %12, label %11, !dbg !2339

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2340
  unreachable, !dbg !2340

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2341
  store i8* %1, i8** %13, align 8, !dbg !2342, !tbaa !876
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2343
  store i8* %2, i8** %14, align 8, !dbg !2344, !tbaa !879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2330
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2346
  ret i8* %15, !dbg !2347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #8 !dbg !2313 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8* %1, metadata !2317, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %3, metadata !2319, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %4, metadata !2320, metadata !DIExpression()), !dbg !2352
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2353
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2354, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2321, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !858, metadata !DIExpression()) #11, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !859, metadata !DIExpression()) #11, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %2, metadata !860, metadata !DIExpression()) #11, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !858, metadata !DIExpression()) #11, !dbg !2356
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2360
  store i32 10, i32* %8, align 8, !dbg !2361, !tbaa !790
  %9 = icmp ne i8* %1, null, !dbg !2362
  %10 = icmp ne i8* %2, null, !dbg !2363
  %11 = and i1 %9, %10, !dbg !2364
  br i1 %11, label %13, label %12, !dbg !2364

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2365
  unreachable, !dbg !2365

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2366
  store i8* %1, i8** %14, align 8, !dbg !2367, !tbaa !876
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2368
  store i8* %2, i8** %15, align 8, !dbg !2369, !tbaa !879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2321, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2370
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2371
  ret i8* %16, !dbg !2372
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #8 !dbg !2373 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* %1, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %2, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2304, metadata !DIExpression()) #11, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %0, metadata !2305, metadata !DIExpression()) #11, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !2306, metadata !DIExpression()) #11, !dbg !2386
  call void @llvm.dbg.value(metadata i8* %2, metadata !2307, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2312, metadata !DIExpression()) #11, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()) #11, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2318, metadata !DIExpression()) #11, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %2, metadata !2319, metadata !DIExpression()) #11, !dbg !2392
  call void @llvm.dbg.value(metadata i64 -1, metadata !2320, metadata !DIExpression()) #11, !dbg !2393
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2394
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2395, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !858, metadata !DIExpression()) #11, !dbg !2397
  call void @llvm.dbg.value(metadata i8* %0, metadata !859, metadata !DIExpression()) #11, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %1, metadata !860, metadata !DIExpression()) #11, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !858, metadata !DIExpression()) #11, !dbg !2397
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2401
  store i32 10, i32* %6, align 8, !dbg !2402, !tbaa !790
  %7 = icmp ne i8* %0, null, !dbg !2403
  %8 = icmp ne i8* %1, null, !dbg !2404
  %9 = and i1 %7, %8, !dbg !2405
  br i1 %9, label %11, label %10, !dbg !2405

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2406
  unreachable, !dbg !2406

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2407
  store i8* %0, i8** %12, align 8, !dbg !2408, !tbaa !876
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2409
  store i8* %1, i8** %13, align 8, !dbg !2410, !tbaa !879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2396
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2412
  ret i8* %14, !dbg !2413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #8 !dbg !2414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %3, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2312, metadata !DIExpression()) #11, !dbg !2426
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()) #11, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !2318, metadata !DIExpression()) #11, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %2, metadata !2319, metadata !DIExpression()) #11, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %3, metadata !2320, metadata !DIExpression()) #11, !dbg !2431
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2433, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !858, metadata !DIExpression()) #11, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %0, metadata !859, metadata !DIExpression()) #11, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %1, metadata !860, metadata !DIExpression()) #11, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !858, metadata !DIExpression()) #11, !dbg !2435
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2439
  store i32 10, i32* %7, align 8, !dbg !2440, !tbaa !790
  %8 = icmp ne i8* %0, null, !dbg !2441
  %9 = icmp ne i8* %1, null, !dbg !2442
  %10 = and i1 %8, %9, !dbg !2443
  br i1 %10, label %12, label %11, !dbg !2443

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2444
  unreachable, !dbg !2444

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2445
  store i8* %0, i8** %13, align 8, !dbg !2446, !tbaa !876
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2447
  store i8* %1, i8** %14, align 8, !dbg !2448, !tbaa !879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2434
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2450
  ret i8* %15, !dbg !2451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !2452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %2, metadata !2458, metadata !DIExpression()), !dbg !2461
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2462
  ret i8* %4, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #8 !dbg !2464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %1, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 0, metadata !2456, metadata !DIExpression()) #11, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %0, metadata !2457, metadata !DIExpression()) #11, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %1, metadata !2458, metadata !DIExpression()) #11, !dbg !2475
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2476
  ret i8* %3, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #8 !dbg !2478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %0, metadata !2456, metadata !DIExpression()) #11, !dbg !2486
  call void @llvm.dbg.value(metadata i8* %1, metadata !2457, metadata !DIExpression()) #11, !dbg !2488
  call void @llvm.dbg.value(metadata i64 -1, metadata !2458, metadata !DIExpression()) #11, !dbg !2489
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2490
  ret i8* %3, !dbg !2491
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #8 !dbg !2492 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2482, metadata !DIExpression()) #11, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %0, metadata !2483, metadata !DIExpression()) #11, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2456, metadata !DIExpression()) #11, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !2457, metadata !DIExpression()) #11, !dbg !2503
  call void @llvm.dbg.value(metadata i64 -1, metadata !2458, metadata !DIExpression()) #11, !dbg !2504
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2505
  ret i8* %2, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #8 !dbg !2507 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2567, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %3, metadata !2570, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8** %4, metadata !2571, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %5, metadata !2572, metadata !DIExpression()), !dbg !2578
  %7 = icmp eq i8* %1, null, !dbg !2579
  br i1 %7, label %10, label %8, !dbg !2581

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2582
  br label %12, !dbg !2582

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2583
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #11, !dbg !2584
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !2584
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #11, !dbg !2585
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2585
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
  ], !dbg !2586

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2587
  unreachable, !dbg !2587

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #11, !dbg !2589
  %20 = load i8*, i8** %4, align 8, !dbg !2589, !tbaa !579
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2589
  br label %146, !dbg !2590

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #11, !dbg !2591
  %24 = load i8*, i8** %4, align 8, !dbg !2591, !tbaa !579
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2591
  %26 = load i8*, i8** %25, align 8, !dbg !2591, !tbaa !579
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2591
  br label %146, !dbg !2592

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #11, !dbg !2593
  %30 = load i8*, i8** %4, align 8, !dbg !2593, !tbaa !579
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2593
  %32 = load i8*, i8** %31, align 8, !dbg !2593, !tbaa !579
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2593
  %34 = load i8*, i8** %33, align 8, !dbg !2593, !tbaa !579
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2593
  br label %146, !dbg !2594

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #11, !dbg !2595
  %38 = load i8*, i8** %4, align 8, !dbg !2595, !tbaa !579
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2595
  %40 = load i8*, i8** %39, align 8, !dbg !2595, !tbaa !579
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2595
  %42 = load i8*, i8** %41, align 8, !dbg !2595, !tbaa !579
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2595
  %44 = load i8*, i8** %43, align 8, !dbg !2595, !tbaa !579
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2595
  br label %146, !dbg !2596

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #11, !dbg !2597
  %48 = load i8*, i8** %4, align 8, !dbg !2597, !tbaa !579
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2597
  %50 = load i8*, i8** %49, align 8, !dbg !2597, !tbaa !579
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2597
  %52 = load i8*, i8** %51, align 8, !dbg !2597, !tbaa !579
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2597
  %54 = load i8*, i8** %53, align 8, !dbg !2597, !tbaa !579
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2597
  %56 = load i8*, i8** %55, align 8, !dbg !2597, !tbaa !579
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2597
  br label %146, !dbg !2598

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #11, !dbg !2599
  %60 = load i8*, i8** %4, align 8, !dbg !2599, !tbaa !579
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2599
  %62 = load i8*, i8** %61, align 8, !dbg !2599, !tbaa !579
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2599
  %64 = load i8*, i8** %63, align 8, !dbg !2599, !tbaa !579
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2599
  %66 = load i8*, i8** %65, align 8, !dbg !2599, !tbaa !579
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2599
  %68 = load i8*, i8** %67, align 8, !dbg !2599, !tbaa !579
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2599
  %70 = load i8*, i8** %69, align 8, !dbg !2599, !tbaa !579
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2599
  br label %146, !dbg !2600

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #11, !dbg !2601
  %74 = load i8*, i8** %4, align 8, !dbg !2601, !tbaa !579
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2601
  %76 = load i8*, i8** %75, align 8, !dbg !2601, !tbaa !579
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2601
  %78 = load i8*, i8** %77, align 8, !dbg !2601, !tbaa !579
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2601
  %80 = load i8*, i8** %79, align 8, !dbg !2601, !tbaa !579
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2601
  %82 = load i8*, i8** %81, align 8, !dbg !2601, !tbaa !579
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2601
  %84 = load i8*, i8** %83, align 8, !dbg !2601, !tbaa !579
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2601
  %86 = load i8*, i8** %85, align 8, !dbg !2601, !tbaa !579
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2601
  br label %146, !dbg !2602

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #11, !dbg !2603
  %90 = load i8*, i8** %4, align 8, !dbg !2603, !tbaa !579
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2603
  %92 = load i8*, i8** %91, align 8, !dbg !2603, !tbaa !579
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2603
  %94 = load i8*, i8** %93, align 8, !dbg !2603, !tbaa !579
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2603
  %96 = load i8*, i8** %95, align 8, !dbg !2603, !tbaa !579
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2603
  %98 = load i8*, i8** %97, align 8, !dbg !2603, !tbaa !579
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2603
  %100 = load i8*, i8** %99, align 8, !dbg !2603, !tbaa !579
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2603
  %102 = load i8*, i8** %101, align 8, !dbg !2603, !tbaa !579
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2603
  %104 = load i8*, i8** %103, align 8, !dbg !2603, !tbaa !579
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2603
  br label %146, !dbg !2604

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #11, !dbg !2605
  %108 = load i8*, i8** %4, align 8, !dbg !2605, !tbaa !579
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2605
  %110 = load i8*, i8** %109, align 8, !dbg !2605, !tbaa !579
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2605
  %112 = load i8*, i8** %111, align 8, !dbg !2605, !tbaa !579
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2605
  %114 = load i8*, i8** %113, align 8, !dbg !2605, !tbaa !579
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2605
  %116 = load i8*, i8** %115, align 8, !dbg !2605, !tbaa !579
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2605
  %118 = load i8*, i8** %117, align 8, !dbg !2605, !tbaa !579
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2605
  %120 = load i8*, i8** %119, align 8, !dbg !2605, !tbaa !579
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2605
  %122 = load i8*, i8** %121, align 8, !dbg !2605, !tbaa !579
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2605
  %124 = load i8*, i8** %123, align 8, !dbg !2605, !tbaa !579
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2605
  br label %146, !dbg !2606

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #11, !dbg !2607
  %128 = load i8*, i8** %4, align 8, !dbg !2607, !tbaa !579
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2607
  %130 = load i8*, i8** %129, align 8, !dbg !2607, !tbaa !579
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2607
  %132 = load i8*, i8** %131, align 8, !dbg !2607, !tbaa !579
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2607
  %134 = load i8*, i8** %133, align 8, !dbg !2607, !tbaa !579
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2607
  %136 = load i8*, i8** %135, align 8, !dbg !2607, !tbaa !579
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2607
  %138 = load i8*, i8** %137, align 8, !dbg !2607, !tbaa !579
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2607
  %140 = load i8*, i8** %139, align 8, !dbg !2607, !tbaa !579
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2607
  %142 = load i8*, i8** %141, align 8, !dbg !2607, !tbaa !579
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2607
  %144 = load i8*, i8** %143, align 8, !dbg !2607, !tbaa !579
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2607
  br label %146, !dbg !2608

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2609
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #8 !dbg !2610 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !2615, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2616, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8* %3, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8** %4, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 0, metadata !2619, metadata !DIExpression()), !dbg !2625
  br label %6, !dbg !2626

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2628
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2630
  %9 = load i8*, i8** %8, align 8, !dbg !2630, !tbaa !579
  %10 = icmp eq i8* %9, null, !dbg !2631
  %11 = add i64 %7, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %11, metadata !2619, metadata !DIExpression()), !dbg !2625
  br i1 %10, label %12, label %6, !dbg !2631, !llvm.loop !2633

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %7, metadata !2619, metadata !DIExpression()), !dbg !2625
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2635
  ret void, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #8 !dbg !2637 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2648, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2649, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %2, metadata !2650, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %3, metadata !2651, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2652, metadata !DIExpression()), !dbg !2660
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2661
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2654, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2663
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2663
  %11 = load i32, i32* %8, align 8, !dbg !2664
  %12 = icmp ult i32 %11, 41, !dbg !2664
  br i1 %12, label %13, label %18, !dbg !2664

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2664
  %15 = sext i32 %11 to i64, !dbg !2664
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2664
  %17 = add i32 %11, 8, !dbg !2664
  store i32 %17, i32* %8, align 8, !dbg !2664
  br label %21, !dbg !2664

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2664
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2664
  store i8* %20, i8** %10, align 8, !dbg !2664
  br label %21, !dbg !2664

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2664
  %25 = load i8*, i8** %24, align 8, !dbg !2664
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2667
  store i8* %25, i8** %26, align 16, !dbg !2668, !tbaa !579
  %27 = icmp eq i8* %25, null, !dbg !2669
  br i1 %27, label %30, label %28, !dbg !2670

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 1, metadata !2653, metadata !DIExpression()), !dbg !2663
  %29 = icmp ult i32 %22, 41, !dbg !2664
  br i1 %29, label %35, label %32, !dbg !2664

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2671
  call void @llvm.dbg.value(metadata i64 %31, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %31, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2673
  ret void, !dbg !2673

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2664
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2664
  store i8* %34, i8** %10, align 8, !dbg !2664
  br label %40, !dbg !2664

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2664
  %37 = sext i32 %22 to i64, !dbg !2664
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2664
  %39 = add i32 %22, 8, !dbg !2664
  store i32 %39, i32* %8, align 8, !dbg !2664
  br label %40, !dbg !2664

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2664
  %44 = load i8*, i8** %43, align 8, !dbg !2664
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2667
  store i8* %44, i8** %45, align 8, !dbg !2668, !tbaa !579
  %46 = icmp eq i8* %44, null, !dbg !2669
  br i1 %46, label %30, label %47, !dbg !2670

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 2, metadata !2653, metadata !DIExpression()), !dbg !2663
  %48 = icmp ult i32 %41, 41, !dbg !2664
  br i1 %48, label %52, label %49, !dbg !2664

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2664
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2664
  store i8* %51, i8** %10, align 8, !dbg !2664
  br label %57, !dbg !2664

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2664
  %54 = sext i32 %41 to i64, !dbg !2664
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2664
  %56 = add i32 %41, 8, !dbg !2664
  store i32 %56, i32* %8, align 8, !dbg !2664
  br label %57, !dbg !2664

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2664
  %61 = load i8*, i8** %60, align 8, !dbg !2664
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2667
  store i8* %61, i8** %62, align 16, !dbg !2668, !tbaa !579
  %63 = icmp eq i8* %61, null, !dbg !2669
  br i1 %63, label %30, label %64, !dbg !2670

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 3, metadata !2653, metadata !DIExpression()), !dbg !2663
  %65 = icmp ult i32 %58, 41, !dbg !2664
  br i1 %65, label %69, label %66, !dbg !2664

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2664
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2664
  store i8* %68, i8** %10, align 8, !dbg !2664
  br label %74, !dbg !2664

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2664
  %71 = sext i32 %58 to i64, !dbg !2664
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2664
  %73 = add i32 %58, 8, !dbg !2664
  store i32 %73, i32* %8, align 8, !dbg !2664
  br label %74, !dbg !2664

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2664
  %78 = load i8*, i8** %77, align 8, !dbg !2664
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2667
  store i8* %78, i8** %79, align 8, !dbg !2668, !tbaa !579
  %80 = icmp eq i8* %78, null, !dbg !2669
  br i1 %80, label %30, label %81, !dbg !2670

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 4, metadata !2653, metadata !DIExpression()), !dbg !2663
  %82 = icmp ult i32 %75, 41, !dbg !2664
  br i1 %82, label %86, label %83, !dbg !2664

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2664
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2664
  store i8* %85, i8** %10, align 8, !dbg !2664
  br label %91, !dbg !2664

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2664
  %88 = sext i32 %75 to i64, !dbg !2664
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2664
  %90 = add i32 %75, 8, !dbg !2664
  store i32 %90, i32* %8, align 8, !dbg !2664
  br label %91, !dbg !2664

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2664
  %95 = load i8*, i8** %94, align 8, !dbg !2664
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2667
  store i8* %95, i8** %96, align 16, !dbg !2668, !tbaa !579
  %97 = icmp eq i8* %95, null, !dbg !2669
  br i1 %97, label %30, label %98, !dbg !2670

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 5, metadata !2653, metadata !DIExpression()), !dbg !2663
  %99 = icmp ult i32 %92, 41, !dbg !2664
  br i1 %99, label %103, label %100, !dbg !2664

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2664
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2664
  store i8* %102, i8** %10, align 8, !dbg !2664
  br label %108, !dbg !2664

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2664
  %105 = sext i32 %92 to i64, !dbg !2664
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2664
  %107 = add i32 %92, 8, !dbg !2664
  store i32 %107, i32* %8, align 8, !dbg !2664
  br label %108, !dbg !2664

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2664
  %111 = load i8*, i8** %110, align 8, !dbg !2664
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2667
  store i8* %111, i8** %112, align 8, !dbg !2668, !tbaa !579
  %113 = icmp eq i8* %111, null, !dbg !2669
  br i1 %113, label %30, label %114, !dbg !2670

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 6, metadata !2653, metadata !DIExpression()), !dbg !2663
  %115 = load i8*, i8** %10, align 8, !dbg !2664
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2664
  store i8* %116, i8** %10, align 8, !dbg !2664
  %117 = bitcast i8* %115 to i8**, !dbg !2664
  %118 = load i8*, i8** %117, align 8, !dbg !2664
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2667
  store i8* %118, i8** %119, align 16, !dbg !2668, !tbaa !579
  %120 = icmp eq i8* %118, null, !dbg !2669
  br i1 %120, label %30, label %121, !dbg !2670

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 7, metadata !2653, metadata !DIExpression()), !dbg !2663
  %122 = load i8*, i8** %10, align 8, !dbg !2664
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2664
  store i8* %123, i8** %10, align 8, !dbg !2664
  %124 = bitcast i8* %122 to i8**, !dbg !2664
  %125 = load i8*, i8** %124, align 8, !dbg !2664
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2667
  store i8* %125, i8** %126, align 8, !dbg !2668, !tbaa !579
  %127 = icmp eq i8* %125, null, !dbg !2669
  br i1 %127, label %30, label %128, !dbg !2670

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 8, metadata !2653, metadata !DIExpression()), !dbg !2663
  %129 = load i8*, i8** %10, align 8, !dbg !2664
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2664
  store i8* %130, i8** %10, align 8, !dbg !2664
  %131 = bitcast i8* %129 to i8**, !dbg !2664
  %132 = load i8*, i8** %131, align 8, !dbg !2664
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2667
  store i8* %132, i8** %133, align 16, !dbg !2668, !tbaa !579
  %134 = icmp eq i8* %132, null, !dbg !2669
  br i1 %134, label %30, label %135, !dbg !2670

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 9, metadata !2653, metadata !DIExpression()), !dbg !2663
  %136 = load i8*, i8** %10, align 8, !dbg !2664
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2664
  store i8* %137, i8** %10, align 8, !dbg !2664
  %138 = bitcast i8* %136 to i8**, !dbg !2664
  %139 = load i8*, i8** %138, align 8, !dbg !2664
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2667
  store i8* %139, i8** %140, align 8, !dbg !2668, !tbaa !579
  %141 = icmp eq i8* %139, null, !dbg !2669
  %142 = select i1 %141, i64 9, i64 10, !dbg !2670
  br label %30, !dbg !2670
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #8 !dbg !2674 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2678, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %1, metadata !2679, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %3, metadata !2681, metadata !DIExpression()), !dbg !2692
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2693
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2682, metadata !DIExpression()), !dbg !2694
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2695
  call void @llvm.va_start(i8* nonnull %6), !dbg !2695
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2696
  call void @llvm.va_end(i8* nonnull %6), !dbg !2697
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2698
  ret void, !dbg !2698
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2699 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #11, !dbg !2700
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #11, !dbg !2700
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #11, !dbg !2701
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.83, i64 0, i64 0)) #11, !dbg !2701
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.84, i64 0, i64 0), i32 5) #11, !dbg !2702
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2702, !tbaa !579
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2702
  ret void, !dbg !2703
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #4 !dbg !2704 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2711
  %3 = udiv i64 9223372036854775807, %1, !dbg !2712
  %4 = icmp ult i64 %3, %0, !dbg !2712
  br i1 %4, label %5, label %6, !dbg !2714

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2715
  unreachable, !dbg !2715

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %7, metadata !2717, metadata !DIExpression()) #11, !dbg !2724
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %8, metadata !2723, metadata !DIExpression()) #11, !dbg !2727
  %9 = icmp eq i8* %8, null, !dbg !2728
  %10 = icmp ne i64 %7, 0, !dbg !2730
  %11 = and i1 %10, %9, !dbg !2731
  br i1 %11, label %12, label %13, !dbg !2731

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !2732
  unreachable, !dbg !2732

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2733
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #8 !dbg !2718 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2717, metadata !DIExpression()), !dbg !2734
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2736
  %3 = icmp eq i8* %2, null, !dbg !2737
  %4 = icmp ne i64 %0, 0, !dbg !2738
  %5 = and i1 %4, %3, !dbg !2739
  br i1 %5, label %6, label %7, !dbg !2739

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2740
  unreachable, !dbg !2740

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2741
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #4 !dbg !2742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 %2, metadata !2748, metadata !DIExpression()), !dbg !2751
  %4 = udiv i64 9223372036854775807, %2, !dbg !2752
  %5 = icmp ult i64 %4, %1, !dbg !2752
  br i1 %5, label %6, label %7, !dbg !2754

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !2755
  unreachable, !dbg !2755

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #11, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %8, metadata !2762, metadata !DIExpression()) #11, !dbg !2765
  %9 = icmp eq i64 %8, 0, !dbg !2766
  %10 = icmp ne i8* %0, null, !dbg !2768
  %11 = and i1 %10, %9, !dbg !2769
  br i1 %11, label %12, label %13, !dbg !2769

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !2770
  br label %19, !dbg !2772

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %14, metadata !2757, metadata !DIExpression()) #11, !dbg !2763
  %15 = icmp eq i8* %14, null, !dbg !2774
  %16 = icmp ne i64 %8, 0, !dbg !2776
  %17 = and i1 %16, %15, !dbg !2777
  br i1 %17, label %18, label %19, !dbg !2777

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2778
  unreachable, !dbg !2778

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2779
  ret i8* %20, !dbg !2780
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #8 !dbg !2758 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %1, metadata !2762, metadata !DIExpression()), !dbg !2782
  %3 = icmp eq i64 %1, 0, !dbg !2783
  %4 = icmp ne i8* %0, null, !dbg !2784
  %5 = and i1 %4, %3, !dbg !2785
  br i1 %5, label %6, label %7, !dbg !2785

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !2786
  br label %13, !dbg !2787

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %8, metadata !2757, metadata !DIExpression()), !dbg !2781
  %9 = icmp eq i8* %8, null, !dbg !2789
  %10 = icmp ne i64 %1, 0, !dbg !2790
  %11 = and i1 %10, %9, !dbg !2791
  br i1 %11, label %12, label %13, !dbg !2791

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !2792
  unreachable, !dbg !2792

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2793
  ret i8* %14, !dbg !2794
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #4 !dbg !147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !152, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64* %1, metadata !153, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %2, metadata !154, metadata !DIExpression()), !dbg !2797
  %4 = load i64, i64* %1, align 8, !dbg !2798, !tbaa !1835
  call void @llvm.dbg.value(metadata i64 %4, metadata !155, metadata !DIExpression()), !dbg !2799
  %5 = icmp eq i8* %0, null, !dbg !2800
  br i1 %5, label %6, label %20, !dbg !2802

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2803
  br i1 %7, label %8, label %13, !dbg !2806

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %9, metadata !155, metadata !DIExpression()), !dbg !2799
  %10 = icmp ugt i64 %2, 128, !dbg !2809
  %11 = zext i1 %10 to i64, !dbg !2809
  %12 = add nuw nsw i64 %9, %11, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %12, metadata !155, metadata !DIExpression()), !dbg !2799
  br label %13, !dbg !2811

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2812
  call void @llvm.dbg.value(metadata i64 %14, metadata !155, metadata !DIExpression()), !dbg !2799
  %15 = udiv i64 9223372036854775807, %2, !dbg !2813
  %16 = icmp ult i64 %15, %14, !dbg !2813
  br i1 %16, label %19, label %17, !dbg !2815

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2799
  store i64 %14, i64* %1, align 8, !dbg !2816, !tbaa !1835
  %18 = mul i64 %14, %2, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #11, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %28, metadata !2762, metadata !DIExpression()) #11, !dbg !2820
  br label %31, !dbg !2821

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2822
  unreachable, !dbg !2822

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2823
  %22 = icmp ugt i64 %21, %4, !dbg !2826
  br i1 %22, label %24, label %23, !dbg !2827

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #14, !dbg !2828
  unreachable, !dbg !2828

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2829
  %26 = add i64 %4, 1, !dbg !2830
  %27 = add i64 %26, %25, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2799
  store i64 %27, i64* %1, align 8, !dbg !2816, !tbaa !1835
  %28 = mul i64 %27, %2, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #11, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %28, metadata !2762, metadata !DIExpression()) #11, !dbg !2820
  %29 = icmp eq i64 %28, 0, !dbg !2832
  br i1 %29, label %30, label %31, !dbg !2821

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !2833
  br label %38, !dbg !2834

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %33, metadata !2757, metadata !DIExpression()) #11, !dbg !2818
  %34 = icmp eq i8* %33, null, !dbg !2836
  %35 = icmp ne i64 %32, 0, !dbg !2837
  %36 = and i1 %35, %34, !dbg !2838
  br i1 %36, label %37, label %38, !dbg !2838

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #14, !dbg !2839
  unreachable, !dbg !2839

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2840
  ret i8* %39, !dbg !2841
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #4 !dbg !2842 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %0, metadata !2717, metadata !DIExpression()) #11, !dbg !2846
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()) #11, !dbg !2849
  %3 = icmp eq i8* %2, null, !dbg !2850
  %4 = icmp ne i64 %0, 0, !dbg !2851
  %5 = and i1 %4, %3, !dbg !2852
  br i1 %5, label %6, label %7, !dbg !2852

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2853
  unreachable, !dbg !2853

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #8 !dbg !2855 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64* %1, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !152, metadata !DIExpression()) #11, !dbg !2863
  call void @llvm.dbg.value(metadata i64* %1, metadata !153, metadata !DIExpression()) #11, !dbg !2865
  call void @llvm.dbg.value(metadata i64 1, metadata !154, metadata !DIExpression()) #11, !dbg !2866
  %3 = load i64, i64* %1, align 8, !dbg !2867, !tbaa !1835
  call void @llvm.dbg.value(metadata i64 %3, metadata !155, metadata !DIExpression()) #11, !dbg !2868
  %4 = icmp eq i8* %0, null, !dbg !2869
  br i1 %4, label %5, label %12, !dbg !2870

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2871
  br i1 %6, label %9, label %7, !dbg !2872

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !155, metadata !DIExpression()) #11, !dbg !2868
  %8 = icmp slt i64 %3, 0, !dbg !2873
  br i1 %8, label %11, label %9, !dbg !2874

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2868
  store i64 %10, i64* %1, align 8, !dbg !2875, !tbaa !1835
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #11, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %18, metadata !2762, metadata !DIExpression()) #11, !dbg !2878
  br label %21, !dbg !2879

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !2880
  unreachable, !dbg !2880

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2881
  br i1 %13, label %15, label %14, !dbg !2882

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #14, !dbg !2883
  unreachable, !dbg !2883

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2884
  %17 = add i64 %3, 1, !dbg !2885
  %18 = add i64 %17, %16, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2868
  store i64 %18, i64* %1, align 8, !dbg !2875, !tbaa !1835
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #11, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %18, metadata !2762, metadata !DIExpression()) #11, !dbg !2878
  %19 = icmp eq i64 %18, 0, !dbg !2887
  br i1 %19, label %20, label %21, !dbg !2879

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !2888
  br label %28, !dbg !2889

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %23, metadata !2757, metadata !DIExpression()) #11, !dbg !2876
  %24 = icmp eq i8* %23, null, !dbg !2891
  %25 = icmp ne i64 %22, 0, !dbg !2892
  %26 = and i1 %25, %24, !dbg !2893
  br i1 %26, label %27, label %28, !dbg !2893

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #14, !dbg !2894
  unreachable, !dbg !2894

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2895
  ret i8* %29, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #8 !dbg !2897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %0, metadata !2717, metadata !DIExpression()) #11, !dbg !2901
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()) #11, !dbg !2904
  %3 = icmp eq i8* %2, null, !dbg !2905
  %4 = icmp ne i64 %0, 0, !dbg !2906
  %5 = and i1 %4, %3, !dbg !2907
  br i1 %5, label %6, label %7, !dbg !2907

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2908
  unreachable, !dbg !2908

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !2909
  ret i8* %2, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #8 !dbg !2911 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2917
  %3 = udiv i64 9223372036854775807, %1, !dbg !2918
  %4 = icmp ult i64 %3, %0, !dbg !2918
  br i1 %4, label %8, label %5, !dbg !2920

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %6, metadata !2915, metadata !DIExpression()), !dbg !2922
  %7 = icmp eq i8* %6, null, !dbg !2923
  br i1 %7, label %8, label %9, !dbg !2924

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !2925
  unreachable, !dbg !2925

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #8 !dbg !2927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()) #11, !dbg !2937
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %3, metadata !2723, metadata !DIExpression()) #11, !dbg !2940
  %4 = icmp eq i8* %3, null, !dbg !2941
  %5 = icmp ne i64 %1, 0, !dbg !2942
  %6 = and i1 %5, %4, !dbg !2943
  br i1 %6, label %7, label %8, !dbg !2943

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2944
  unreachable, !dbg !2944

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !2945
  ret i8* %3, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()), !dbg !2950
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !2951
  %3 = add i64 %2, 1, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()) #11, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %3, metadata !2934, metadata !DIExpression()) #11, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %3, metadata !2717, metadata !DIExpression()) #11, !dbg !2956
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %4, metadata !2723, metadata !DIExpression()) #11, !dbg !2959
  %5 = icmp eq i8* %4, null, !dbg !2960
  %6 = icmp ne i64 %3, 0, !dbg !2961
  %7 = and i1 %6, %5, !dbg !2962
  br i1 %7, label %8, label %9, !dbg !2962

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2963
  unreachable, !dbg !2963

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !2964
  ret i8* %4, !dbg !2965
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2966 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2968, !tbaa !702
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.95, i64 0, i64 0), i32 5) #11, !dbg !2969
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* %2) #11, !dbg !2970
  tail call void @abort() #14, !dbg !2971
  unreachable, !dbg !2971
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #8 !dbg !2972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2976, metadata !DIExpression()), !dbg !2982
  %3 = icmp eq i64 %0, 0, !dbg !2983
  %4 = icmp eq i64 %1, 0, !dbg !2984
  %5 = or i1 %3, %4, !dbg !2985
  br i1 %5, label %12, label %6, !dbg !2985

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %7, metadata !2978, metadata !DIExpression()), !dbg !2987
  %8 = udiv i64 %7, %1, !dbg !2988
  %9 = icmp eq i64 %8, %0, !dbg !2990
  br i1 %9, label %12, label %10, !dbg !2991

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2992
  store i32 12, i32* %11, align 4, !dbg !2994, !tbaa !702
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2975, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %13, metadata !2976, metadata !DIExpression()), !dbg !2982
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %15, metadata !2977, metadata !DIExpression()), !dbg !2996
  br label %16, !dbg !2997

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !2998
  ret i8* %17, !dbg !2999
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #8 !dbg !3000 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3017, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %1, metadata !3018, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %2, metadata !3019, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3020, metadata !DIExpression()), !dbg !3029
  %6 = bitcast i32* %5 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3030
  %7 = icmp eq i32* %0, null, !dbg !3031
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3033
  call void @llvm.dbg.value(metadata i32* %8, metadata !3017, metadata !DIExpression()), !dbg !3026
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %9, metadata !3021, metadata !DIExpression()), !dbg !3035
  %10 = icmp ugt i64 %9, -3, !dbg !3036
  %11 = icmp ne i64 %2, 0, !dbg !3037
  %12 = and i1 %11, %10, !dbg !3038
  br i1 %12, label %13, label %18, !dbg !3038

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3039
  br i1 %14, label %18, label %15, !dbg !3040

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3041, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %16, metadata !3023, metadata !DIExpression()), !dbg !3042
  %17 = zext i8 %16 to i32, !dbg !3043
  store i32 %17, i32* %8, align 4, !dbg !3044, !tbaa !702
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3045
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3046
  ret i64 %19, !dbg !3046
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #8 !dbg !3047 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3086, metadata !DIExpression()), !dbg !3091
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3092
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3093, metadata !DIExpression()), !dbg !3097
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3099
  %4 = load i32, i32* %3, align 8, !dbg !3099, !tbaa !3100
  %5 = and i32 %4, 32, !dbg !3099
  %6 = icmp eq i32 %5, 0, !dbg !3102
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3103
  %8 = icmp ne i32 %7, 0, !dbg !3104
  br i1 %6, label %9, label %19, !dbg !3105

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3107
  %11 = xor i1 %8, true, !dbg !3108
  %12 = or i1 %10, %11, !dbg !3108
  %13 = sext i1 %8 to i32, !dbg !3108
  br i1 %12, label %22, label %14, !dbg !3108

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3109
  %16 = load i32, i32* %15, align 4, !dbg !3109, !tbaa !702
  %17 = icmp ne i32 %16, 9, !dbg !3110
  %18 = sext i1 %17 to i32, !dbg !3111
  br label %22, !dbg !3111

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3112

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3114
  store i32 0, i32* %21, align 4, !dbg !3116, !tbaa !702
  br label %22, !dbg !3114

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3117
  ret i32 %23, !dbg !3118
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #8 !dbg !3119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8 1, metadata !3125, metadata !DIExpression()), !dbg !3128
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()), !dbg !3130
  %3 = icmp eq i8* %2, null, !dbg !3131
  br i1 %3, label %11, label %4, !dbg !3133

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i64 0, i64 0)) #15, !dbg !3134
  %6 = icmp eq i32 %5, 0, !dbg !3139
  br i1 %6, label %10, label %7, !dbg !3140

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0)) #15, !dbg !3141
  %9 = icmp eq i32 %8, 0, !dbg !3142
  br i1 %9, label %10, label %11, !dbg !3143

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3125, metadata !DIExpression()), !dbg !3128
  br label %11, !dbg !3144

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3145
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3146 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  %2 = icmp eq i8* %1, null, !dbg !3154
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), i8* %1, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %3, metadata !3151, metadata !DIExpression()), !dbg !3153
  %4 = load i8, i8* %3, align 1, !dbg !3157, !tbaa !1012
  %5 = icmp eq i8 %4, 0, !dbg !3161
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0), i8* %3, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %6, metadata !3151, metadata !DIExpression()), !dbg !3153
  ret i8* %6, !dbg !3163
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #8 !dbg !3164 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()), !dbg !3209
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %2, metadata !3205, metadata !DIExpression()), !dbg !3211
  %3 = icmp slt i32 %2, 0, !dbg !3212
  br i1 %3, label %4, label %6, !dbg !3214

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3215
  br label %24, !dbg !3216

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3217
  %8 = icmp eq i32 %7, 0, !dbg !3217
  br i1 %8, label %13, label %9, !dbg !3219

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3220
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3221
  %12 = icmp eq i64 %11, -1, !dbg !3222
  br i1 %12, label %16, label %13, !dbg !3223

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3224
  %15 = icmp eq i32 %14, 0, !dbg !3224
  br i1 %15, label %16, label %18, !dbg !3225

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3204, metadata !DIExpression()), !dbg !3208
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %21, metadata !3206, metadata !DIExpression()), !dbg !3209
  br label %24, !dbg !3227

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3228
  %20 = load i32, i32* %19, align 4, !dbg !3228, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %20, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %20, metadata !3204, metadata !DIExpression()), !dbg !3208
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %21, metadata !3206, metadata !DIExpression()), !dbg !3209
  %22 = icmp eq i32 %20, 0, !dbg !3229
  br i1 %22, label %24, label %23, !dbg !3227

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3231, !tbaa !702
  call void @llvm.dbg.value(metadata i32 -1, metadata !3206, metadata !DIExpression()), !dbg !3209
  br label %24, !dbg !3233

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3234
  ret i32 %25, !dbg !3235
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #8 !dbg !3236 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3277
  br i1 %2, label %6, label %3, !dbg !3279

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3280
  %5 = icmp eq i32 %4, 0, !dbg !3280
  br i1 %5, label %6, label %8, !dbg !3281

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3282
  br label %17, !dbg !3283

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3284, metadata !DIExpression()) #11, !dbg !3289
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3291
  %10 = load i32, i32* %9, align 8, !dbg !3291, !tbaa !3100
  %11 = and i32 %10, 256, !dbg !3293
  %12 = icmp eq i32 %11, 0, !dbg !3293
  br i1 %12, label %15, label %13, !dbg !3294

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3295
  br label %15, !dbg !3295

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3296
  br label %17, !dbg !3297

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3298
  ret i32 %18, !dbg !3299
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #8 !dbg !3300 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3340, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 %2, metadata !3342, metadata !DIExpression()), !dbg !3348
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3349
  %5 = load i8*, i8** %4, align 8, !dbg !3349, !tbaa !3350
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3351
  %7 = load i8*, i8** %6, align 8, !dbg !3351, !tbaa !3352
  %8 = icmp eq i8* %5, %7, !dbg !3353
  br i1 %8, label %9, label %28, !dbg !3354

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3355
  %11 = load i8*, i8** %10, align 8, !dbg !3355, !tbaa !3356
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3357
  %13 = load i8*, i8** %12, align 8, !dbg !3357, !tbaa !3358
  %14 = icmp eq i8* %11, %13, !dbg !3359
  br i1 %14, label %15, label %28, !dbg !3360

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3361
  %17 = load i8*, i8** %16, align 8, !dbg !3361, !tbaa !3362
  %18 = icmp eq i8* %17, null, !dbg !3363
  br i1 %18, label %19, label %28, !dbg !3364

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3365
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %21, metadata !3343, metadata !DIExpression()), !dbg !3367
  %22 = icmp eq i64 %21, -1, !dbg !3368
  br i1 %22, label %30, label %23, !dbg !3370

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3371
  %25 = load i32, i32* %24, align 8, !dbg !3372, !tbaa !3100
  %26 = and i32 %25, -17, !dbg !3372
  store i32 %26, i32* %24, align 8, !dbg !3372, !tbaa !3100
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3373
  store i64 %21, i64* %27, align 8, !dbg !3374, !tbaa !3375
  br label %30, !dbg !3376

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3377
  br label %30, !dbg !3378

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3379
  ret i32 %31, !dbg !3380
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!131, !2, !11, !20, !28, !37, !134, !124, !142, !159, !161, !163, !166, !168, !170, !559, !561, !563}
!llvm.ident = !{!565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565}
!llvm.module.flags = !{!566, !567, !568, !569, !570}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !16, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13)
!12 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !16, line: 56, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !23, line: 24, type: !24, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22)
!21 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!18}
!23 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "program_name", scope: !28, file: !34, line: 33, type: !6, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !33)
!29 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !{!26}
!34 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !37, file: !83, line: 85, type: !118, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !75, globals: !80)
!38 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!39 = !{!40, !55, !60}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !41, line: 32, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!44 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!53 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!54 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !41, line: 242, baseType: !42, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 46, baseType: !42, size: 32, elements: !62)
!61 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!70 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!75 = !{!25, !76, !77, !32}
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 62, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !{!35, !81, !88, !100, !102, !107, !114, !116}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !37, file: !83, line: 101, type: !84, isLocal: false, isDefinition: true)
!83 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 320, elements: !86)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!86 = !{!87}
!87 = !DISubrange(count: 10)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !37, file: !83, line: 1052, type: !90, isLocal: false, isDefinition: true)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !83, line: 65, size: 448, elements: !91)
!91 = !{!92, !93, !94, !98, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !90, file: !83, line: 68, baseType: !40, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !83, line: 71, baseType: !25, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !90, file: !83, line: 75, baseType: !95, size: 256, offset: 64)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !90, file: !83, line: 78, baseType: !6, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !90, file: !83, line: 81, baseType: !6, size: 64, offset: 384)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !37, file: !83, line: 116, type: !90, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "slot0", scope: !37, file: !83, line: 842, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 256)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "slotvec", scope: !37, file: !83, line: 845, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !83, line: 834, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !83, line: 836, baseType: !77, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !83, line: 837, baseType: !32, size: 64, offset: 64)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "nslots", scope: !37, file: !83, line: 843, type: !25, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "slotvec0", scope: !37, file: !83, line: 844, type: !110, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 704, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !{!121}
!121 = !DISubrange(count: 11)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !124, file: !127, line: 26, type: !128, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !126)
!125 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!126 = !{!122}
!127 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 47)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133)
!132 = !DIFile(filename: "src/false.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!133 = !{!32, !31}
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !141)
!135 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!136 = !{!137}
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 41, baseType: !42, size: 32, elements: !139)
!138 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!139 = !{!140}
!140 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!141 = !{!31}
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !158)
!143 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!144 = !{!145}
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !147, file: !146, line: 186, baseType: !42, size: 32, elements: !156)
!146 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!147 = distinct !DISubprogram(name: "x2nrealloc", scope: !146, file: !146, line: 174, type: !148, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !151)
!148 = !DISubroutineType(types: !149)
!149 = !{!31, !31, !150, !77}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!151 = !{!152, !153, !154, !155}
!152 = !DILocalVariable(name: "p", arg: 1, scope: !147, file: !146, line: 174, type: !31)
!153 = !DILocalVariable(name: "pn", arg: 2, scope: !147, file: !146, line: 174, type: !150)
!154 = !DILocalVariable(name: "s", arg: 3, scope: !147, file: !146, line: 174, type: !77)
!155 = !DILocalVariable(name: "n", scope: !147, file: !146, line: 176, type: !77)
!156 = !{!157}
!157 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!158 = !{!77, !32, !31}
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!160 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141)
!162 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !165)
!164 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = !{!77}
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!167 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!169 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !172, retainedTypes: !141)
!171 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!172 = !{!173}
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !174, line: 41, baseType: !42, size: 32, elements: !175)
!174 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!176 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!177 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!178 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!179 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!180 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!181 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!182 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!183 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!184 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!185 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!186 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!187 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!188 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!189 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!190 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!191 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!192 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!193 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!194 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!195 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!196 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!197 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!200 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!201 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!202 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!203 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!204 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!205 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!206 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!207 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!208 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!209 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!212 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!213 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!214 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!215 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!216 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!217 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!218 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!219 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!220 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!221 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!222 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!223 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!224 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!225 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!226 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!227 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!228 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!229 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!230 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!231 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!232 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!233 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!284 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!287 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!288 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!289 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!290 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!291 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!292 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!293 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!294 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!297 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!298 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!371 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!444 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!445 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!446 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!447 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!448 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!449 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!450 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!451 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!452 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!453 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!454 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!455 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!456 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!457 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!458 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!460 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!461 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!462 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!464 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!465 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!491 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!492 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!493 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!494 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!495 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!500 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!501 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!502 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!503 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!560 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141)
!562 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141)
!564 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!565 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!566 = !{i32 2, !"Dwarf Version", i32 4}
!567 = !{i32 2, !"Debug Info Version", i32 3}
!568 = !{i32 1, !"wchar_size", i32 4}
!569 = !{i32 7, !"PIC Level", i32 2}
!570 = !{i32 7, !"PIE Level", i32 2}
!571 = distinct !DISubprogram(name: "usage", scope: !572, file: !572, line: 36, type: !573, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !131, retainedNodes: !575)
!572 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!573 = !DISubroutineType(types: !574)
!574 = !{null, !25}
!575 = !{!576}
!576 = !DILocalVariable(name: "status", arg: 1, scope: !571, file: !572, line: 36, type: !25)
!577 = !DILocation(line: 36, column: 12, scope: !571)
!578 = !DILocation(line: 38, column: 3, scope: !571)
!579 = !{!580, !580, i64 0}
!580 = !{!"any pointer", !581, i64 0}
!581 = !{!"omnipotent char", !582, i64 0}
!582 = !{!"Simple C/C++ TBAA"}
!583 = !DILocation(line: 43, column: 3, scope: !571)
!584 = !DILocation(line: 47, column: 3, scope: !571)
!585 = !DILocation(line: 48, column: 3, scope: !571)
!586 = !DILocation(line: 49, column: 3, scope: !571)
!587 = !DILocation(line: 50, column: 3, scope: !571)
!588 = !DILocation(line: 51, column: 3, scope: !571)
!589 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !590, file: !590, line: 630, type: !591, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !593)
!590 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!591 = !DISubroutineType(types: !592)
!592 = !{null, !6}
!593 = !{!594, !595, !604, !605, !607}
!594 = !DILocalVariable(name: "program", arg: 1, scope: !589, file: !590, line: 630, type: !6)
!595 = !DILocalVariable(name: "infomap", scope: !589, file: !590, line: 632, type: !596)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 896, elements: !602)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !589, file: !590, line: 632, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !598, file: !590, line: 632, baseType: !6, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !590, line: 632, baseType: !6, size: 64, offset: 64)
!602 = !{!603}
!603 = !DISubrange(count: 7)
!604 = !DILocalVariable(name: "node", scope: !589, file: !590, line: 642, type: !6)
!605 = !DILocalVariable(name: "map_prog", scope: !589, file: !590, line: 643, type: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!607 = !DILocalVariable(name: "lc_messages", scope: !589, file: !590, line: 655, type: !6)
!608 = !DILocation(line: 632, column: 3, scope: !589)
!609 = !DILocation(line: 632, column: 67, scope: !589)
!610 = !DILocation(line: 643, column: 36, scope: !589)
!611 = !DILocation(line: 643, column: 25, scope: !589)
!612 = !DILocation(line: 645, column: 33, scope: !589)
!613 = !DILocation(line: 645, column: 3, scope: !589)
!614 = !DILocation(line: 646, column: 13, scope: !589)
!615 = !DILocation(line: 645, column: 20, scope: !589)
!616 = !{!617, !580, i64 0}
!617 = !{!"infomap", !580, i64 0, !580, i64 8}
!618 = !DILocation(line: 645, column: 10, scope: !589)
!619 = !DILocation(line: 645, column: 28, scope: !589)
!620 = distinct !{!620, !613, !614}
!621 = !DILocation(line: 648, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !589, file: !590, line: 648, column: 7)
!623 = !{!617, !580, i64 8}
!624 = !DILocation(line: 648, column: 7, scope: !622)
!625 = !DILocation(line: 648, column: 7, scope: !589)
!626 = !DILocation(line: 642, column: 15, scope: !589)
!627 = !DILocation(line: 651, column: 3, scope: !589)
!628 = !DILocation(line: 655, column: 29, scope: !589)
!629 = !DILocation(line: 655, column: 15, scope: !589)
!630 = !DILocation(line: 656, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !589, file: !590, line: 656, column: 7)
!632 = !DILocation(line: 656, column: 19, scope: !631)
!633 = !DILocation(line: 656, column: 22, scope: !631)
!634 = !DILocation(line: 656, column: 7, scope: !589)
!635 = !DILocation(line: 662, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !590, line: 657, column: 5)
!637 = !DILocation(line: 664, column: 5, scope: !636)
!638 = !DILocation(line: 665, column: 3, scope: !589)
!639 = !DILocation(line: 667, column: 3, scope: !589)
!640 = !DILocation(line: 669, column: 1, scope: !589)
!641 = distinct !DISubprogram(name: "main", scope: !572, file: !572, line: 55, type: !642, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!25, !25, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !572, line: 55, type: !25)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !572, line: 55, type: !644)
!648 = !DILocation(line: 55, column: 11, scope: !641)
!649 = !DILocation(line: 55, column: 24, scope: !641)
!650 = !DILocation(line: 59, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !641, file: !572, line: 59, column: 7)
!652 = !DILocation(line: 59, column: 7, scope: !641)
!653 = !DILocation(line: 62, column: 25, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !572, line: 60, column: 5)
!655 = !DILocation(line: 62, column: 7, scope: !654)
!656 = !DILocation(line: 63, column: 7, scope: !654)
!657 = !DILocation(line: 64, column: 7, scope: !654)
!658 = !DILocation(line: 65, column: 7, scope: !654)
!659 = !DILocation(line: 69, column: 7, scope: !654)
!660 = !DILocation(line: 71, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !654, file: !572, line: 71, column: 11)
!662 = !DILocation(line: 71, column: 11, scope: !654)
!663 = !DILocation(line: 72, column: 9, scope: !661)
!664 = !DILocation(line: 74, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !572, line: 74, column: 11)
!666 = !DILocation(line: 74, column: 11, scope: !654)
!667 = !DILocation(line: 75, column: 22, scope: !665)
!668 = !DILocation(line: 75, column: 58, scope: !665)
!669 = !DILocation(line: 75, column: 9, scope: !665)
!670 = !DILocation(line: 79, column: 3, scope: !641)
!671 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 51, type: !591, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !672)
!672 = !{!673}
!673 = !DILocalVariable(name: "file", arg: 1, scope: !671, file: !16, line: 51, type: !6)
!674 = !DILocation(line: 51, column: 41, scope: !671)
!675 = !DILocation(line: 53, column: 13, scope: !671)
!676 = !DILocation(line: 54, column: 1, scope: !671)
!677 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 88, type: !678, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !17}
!680 = !{!681}
!681 = !DILocalVariable(name: "ignore", arg: 1, scope: !677, file: !16, line: 88, type: !17)
!682 = !DILocation(line: 88, column: 37, scope: !677)
!683 = !DILocation(line: 90, column: 16, scope: !677)
!684 = !{!685, !685, i64 0}
!685 = !{!"_Bool", !581, i64 0}
!686 = !DILocation(line: 91, column: 1, scope: !677)
!687 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 117, type: !688, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null}
!690 = !{!691}
!691 = !DILocalVariable(name: "write_error", scope: !692, file: !16, line: 122, type: !6)
!692 = distinct !DILexicalBlock(scope: !693, file: !16, line: 121, column: 5)
!693 = distinct !DILexicalBlock(scope: !687, file: !16, line: 119, column: 7)
!694 = !DILocation(line: 119, column: 21, scope: !693)
!695 = !DILocation(line: 119, column: 7, scope: !693)
!696 = !DILocation(line: 119, column: 29, scope: !693)
!697 = !DILocation(line: 120, column: 7, scope: !693)
!698 = !DILocation(line: 120, column: 12, scope: !693)
!699 = !{i8 0, i8 2}
!700 = !DILocation(line: 120, column: 25, scope: !693)
!701 = !DILocation(line: 120, column: 28, scope: !693)
!702 = !{!703, !703, i64 0}
!703 = !{!"int", !581, i64 0}
!704 = !DILocation(line: 120, column: 34, scope: !693)
!705 = !DILocation(line: 119, column: 7, scope: !687)
!706 = !DILocation(line: 122, column: 33, scope: !692)
!707 = !DILocation(line: 122, column: 19, scope: !692)
!708 = !DILocation(line: 123, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !692, file: !16, line: 123, column: 11)
!710 = !DILocation(line: 0, scope: !709)
!711 = !DILocation(line: 123, column: 11, scope: !692)
!712 = !DILocation(line: 124, column: 36, scope: !709)
!713 = !DILocation(line: 124, column: 9, scope: !709)
!714 = !DILocation(line: 127, column: 9, scope: !709)
!715 = !DILocation(line: 129, column: 14, scope: !692)
!716 = !DILocation(line: 129, column: 7, scope: !692)
!717 = !DILocation(line: 134, column: 42, scope: !718)
!718 = distinct !DILexicalBlock(scope: !687, file: !16, line: 134, column: 7)
!719 = !DILocation(line: 134, column: 28, scope: !718)
!720 = !DILocation(line: 134, column: 50, scope: !718)
!721 = !DILocation(line: 134, column: 7, scope: !687)
!722 = !DILocation(line: 135, column: 12, scope: !718)
!723 = !DILocation(line: 135, column: 5, scope: !718)
!724 = !DILocation(line: 136, column: 1, scope: !687)
!725 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !591, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, retainedNodes: !726)
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "argv0", arg: 1, scope: !725, file: !34, line: 39, type: !6)
!728 = !DILocalVariable(name: "slash", scope: !725, file: !34, line: 46, type: !6)
!729 = !DILocalVariable(name: "base", scope: !725, file: !34, line: 47, type: !6)
!730 = !DILocation(line: 39, column: 31, scope: !725)
!731 = !DILocation(line: 51, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !725, file: !34, line: 51, column: 7)
!733 = !DILocation(line: 51, column: 7, scope: !725)
!734 = !DILocation(line: 55, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !34, line: 52, column: 5)
!736 = !DILocation(line: 54, column: 7, scope: !735)
!737 = !DILocation(line: 56, column: 7, scope: !735)
!738 = !DILocation(line: 59, column: 11, scope: !725)
!739 = !DILocation(line: 46, column: 15, scope: !725)
!740 = !DILocation(line: 60, column: 17, scope: !725)
!741 = !DILocation(line: 60, column: 33, scope: !725)
!742 = !DILocation(line: 60, column: 11, scope: !725)
!743 = !DILocation(line: 47, column: 15, scope: !725)
!744 = !DILocation(line: 61, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !725, file: !34, line: 61, column: 7)
!746 = !DILocation(line: 61, column: 20, scope: !745)
!747 = !DILocation(line: 61, column: 25, scope: !745)
!748 = !DILocation(line: 61, column: 42, scope: !745)
!749 = !DILocation(line: 61, column: 28, scope: !745)
!750 = !DILocation(line: 61, column: 61, scope: !745)
!751 = !DILocation(line: 61, column: 7, scope: !725)
!752 = !DILocation(line: 64, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !34, line: 64, column: 11)
!754 = distinct !DILexicalBlock(scope: !745, file: !34, line: 62, column: 5)
!755 = !DILocation(line: 64, column: 36, scope: !753)
!756 = !DILocation(line: 64, column: 11, scope: !754)
!757 = !DILocation(line: 66, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !34, line: 65, column: 9)
!759 = !DILocation(line: 70, column: 41, scope: !758)
!760 = !DILocation(line: 72, column: 9, scope: !758)
!761 = !DILocation(line: 84, column: 16, scope: !725)
!762 = !DILocation(line: 90, column: 27, scope: !725)
!763 = !DILocation(line: 92, column: 1, scope: !725)
!764 = distinct !DISubprogram(name: "clone_quoting_options", scope: !83, file: !83, line: 122, type: !765, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !768)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!768 = !{!769, !770, !771}
!769 = !DILocalVariable(name: "o", arg: 1, scope: !764, file: !83, line: 122, type: !767)
!770 = !DILocalVariable(name: "e", scope: !764, file: !83, line: 124, type: !25)
!771 = !DILocalVariable(name: "p", scope: !764, file: !83, line: 125, type: !767)
!772 = !DILocation(line: 122, column: 48, scope: !764)
!773 = !DILocation(line: 124, column: 11, scope: !764)
!774 = !DILocation(line: 124, column: 7, scope: !764)
!775 = !DILocation(line: 125, column: 40, scope: !764)
!776 = !DILocation(line: 125, column: 31, scope: !764)
!777 = !DILocation(line: 125, column: 27, scope: !764)
!778 = !DILocation(line: 127, column: 9, scope: !764)
!779 = !DILocation(line: 128, column: 3, scope: !764)
!780 = distinct !DISubprogram(name: "get_quoting_style", scope: !83, file: !83, line: 133, type: !781, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !785)
!781 = !DISubroutineType(types: !782)
!782 = !{!40, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!785 = !{!786}
!786 = !DILocalVariable(name: "o", arg: 1, scope: !780, file: !83, line: 133, type: !783)
!787 = !DILocation(line: 133, column: 50, scope: !780)
!788 = !DILocation(line: 135, column: 11, scope: !780)
!789 = !DILocation(line: 135, column: 46, scope: !780)
!790 = !{!791, !581, i64 0}
!791 = !{!"quoting_options", !581, i64 0, !703, i64 4, !581, i64 8, !580, i64 40, !580, i64 48}
!792 = !DILocation(line: 135, column: 3, scope: !780)
!793 = distinct !DISubprogram(name: "set_quoting_style", scope: !83, file: !83, line: 141, type: !794, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !767, !40}
!796 = !{!797, !798}
!797 = !DILocalVariable(name: "o", arg: 1, scope: !793, file: !83, line: 141, type: !767)
!798 = !DILocalVariable(name: "s", arg: 2, scope: !793, file: !83, line: 141, type: !40)
!799 = !DILocation(line: 141, column: 44, scope: !793)
!800 = !DILocation(line: 141, column: 66, scope: !793)
!801 = !DILocation(line: 143, column: 4, scope: !793)
!802 = !DILocation(line: 143, column: 39, scope: !793)
!803 = !DILocation(line: 143, column: 45, scope: !793)
!804 = !DILocation(line: 144, column: 1, scope: !793)
!805 = distinct !DISubprogram(name: "set_char_quoting", scope: !83, file: !83, line: 152, type: !806, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!25, !767, !8, !25}
!808 = !{!809, !810, !811, !812, !814, !816, !817}
!809 = !DILocalVariable(name: "o", arg: 1, scope: !805, file: !83, line: 152, type: !767)
!810 = !DILocalVariable(name: "c", arg: 2, scope: !805, file: !83, line: 152, type: !8)
!811 = !DILocalVariable(name: "i", arg: 3, scope: !805, file: !83, line: 152, type: !25)
!812 = !DILocalVariable(name: "uc", scope: !805, file: !83, line: 154, type: !813)
!813 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!814 = !DILocalVariable(name: "p", scope: !805, file: !83, line: 155, type: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!816 = !DILocalVariable(name: "shift", scope: !805, file: !83, line: 157, type: !25)
!817 = !DILocalVariable(name: "r", scope: !805, file: !83, line: 158, type: !25)
!818 = !DILocation(line: 152, column: 43, scope: !805)
!819 = !DILocation(line: 152, column: 51, scope: !805)
!820 = !DILocation(line: 152, column: 58, scope: !805)
!821 = !DILocation(line: 154, column: 17, scope: !805)
!822 = !DILocation(line: 156, column: 6, scope: !805)
!823 = !DILocation(line: 156, column: 62, scope: !805)
!824 = !DILocation(line: 156, column: 57, scope: !805)
!825 = !DILocation(line: 155, column: 17, scope: !805)
!826 = !DILocation(line: 157, column: 15, scope: !805)
!827 = !DILocation(line: 157, column: 7, scope: !805)
!828 = !DILocation(line: 158, column: 12, scope: !805)
!829 = !DILocation(line: 158, column: 15, scope: !805)
!830 = !DILocation(line: 158, column: 25, scope: !805)
!831 = !DILocation(line: 158, column: 7, scope: !805)
!832 = !DILocation(line: 159, column: 13, scope: !805)
!833 = !DILocation(line: 159, column: 18, scope: !805)
!834 = !DILocation(line: 159, column: 23, scope: !805)
!835 = !DILocation(line: 159, column: 6, scope: !805)
!836 = !DILocation(line: 160, column: 3, scope: !805)
!837 = distinct !DISubprogram(name: "set_quoting_flags", scope: !83, file: !83, line: 168, type: !838, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!25, !767, !25}
!840 = !{!841, !842, !843}
!841 = !DILocalVariable(name: "o", arg: 1, scope: !837, file: !83, line: 168, type: !767)
!842 = !DILocalVariable(name: "i", arg: 2, scope: !837, file: !83, line: 168, type: !25)
!843 = !DILocalVariable(name: "r", scope: !837, file: !83, line: 170, type: !25)
!844 = !DILocation(line: 168, column: 44, scope: !837)
!845 = !DILocation(line: 168, column: 51, scope: !837)
!846 = !DILocation(line: 171, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !83, line: 171, column: 7)
!848 = !DILocation(line: 171, column: 7, scope: !837)
!849 = !DILocation(line: 173, column: 10, scope: !837)
!850 = !{!791, !703, i64 4}
!851 = !DILocation(line: 170, column: 7, scope: !837)
!852 = !DILocation(line: 174, column: 12, scope: !837)
!853 = !DILocation(line: 175, column: 3, scope: !837)
!854 = distinct !DISubprogram(name: "set_custom_quoting", scope: !83, file: !83, line: 179, type: !855, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !767, !6, !6}
!857 = !{!858, !859, !860}
!858 = !DILocalVariable(name: "o", arg: 1, scope: !854, file: !83, line: 179, type: !767)
!859 = !DILocalVariable(name: "left_quote", arg: 2, scope: !854, file: !83, line: 180, type: !6)
!860 = !DILocalVariable(name: "right_quote", arg: 3, scope: !854, file: !83, line: 180, type: !6)
!861 = !DILocation(line: 179, column: 45, scope: !854)
!862 = !DILocation(line: 180, column: 33, scope: !854)
!863 = !DILocation(line: 180, column: 57, scope: !854)
!864 = !DILocation(line: 182, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !854, file: !83, line: 182, column: 7)
!866 = !DILocation(line: 182, column: 7, scope: !854)
!867 = !DILocation(line: 184, column: 6, scope: !854)
!868 = !DILocation(line: 184, column: 12, scope: !854)
!869 = !DILocation(line: 185, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !854, file: !83, line: 185, column: 7)
!871 = !DILocation(line: 185, column: 23, scope: !870)
!872 = !DILocation(line: 185, column: 19, scope: !870)
!873 = !DILocation(line: 186, column: 5, scope: !870)
!874 = !DILocation(line: 187, column: 6, scope: !854)
!875 = !DILocation(line: 187, column: 17, scope: !854)
!876 = !{!791, !580, i64 40}
!877 = !DILocation(line: 188, column: 6, scope: !854)
!878 = !DILocation(line: 188, column: 18, scope: !854)
!879 = !{!791, !580, i64 48}
!880 = !DILocation(line: 189, column: 1, scope: !854)
!881 = distinct !DISubprogram(name: "quotearg_buffer", scope: !83, file: !83, line: 784, type: !882, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!77, !32, !77, !6, !77, !783}
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892}
!885 = !DILocalVariable(name: "buffer", arg: 1, scope: !881, file: !83, line: 784, type: !32)
!886 = !DILocalVariable(name: "buffersize", arg: 2, scope: !881, file: !83, line: 784, type: !77)
!887 = !DILocalVariable(name: "arg", arg: 3, scope: !881, file: !83, line: 785, type: !6)
!888 = !DILocalVariable(name: "argsize", arg: 4, scope: !881, file: !83, line: 785, type: !77)
!889 = !DILocalVariable(name: "o", arg: 5, scope: !881, file: !83, line: 786, type: !783)
!890 = !DILocalVariable(name: "p", scope: !881, file: !83, line: 788, type: !783)
!891 = !DILocalVariable(name: "e", scope: !881, file: !83, line: 789, type: !25)
!892 = !DILocalVariable(name: "r", scope: !881, file: !83, line: 790, type: !77)
!893 = !DILocation(line: 784, column: 24, scope: !881)
!894 = !DILocation(line: 784, column: 39, scope: !881)
!895 = !DILocation(line: 785, column: 30, scope: !881)
!896 = !DILocation(line: 785, column: 42, scope: !881)
!897 = !DILocation(line: 786, column: 48, scope: !881)
!898 = !DILocation(line: 788, column: 37, scope: !881)
!899 = !DILocation(line: 788, column: 33, scope: !881)
!900 = !DILocation(line: 789, column: 11, scope: !881)
!901 = !DILocation(line: 789, column: 7, scope: !881)
!902 = !DILocation(line: 791, column: 43, scope: !881)
!903 = !DILocation(line: 791, column: 53, scope: !881)
!904 = !DILocation(line: 791, column: 60, scope: !881)
!905 = !DILocation(line: 792, column: 43, scope: !881)
!906 = !DILocation(line: 792, column: 58, scope: !881)
!907 = !DILocation(line: 790, column: 14, scope: !881)
!908 = !DILocation(line: 790, column: 10, scope: !881)
!909 = !DILocation(line: 793, column: 9, scope: !881)
!910 = !DILocation(line: 794, column: 3, scope: !881)
!911 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !83, file: !83, line: 256, type: !912, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !916)
!912 = !DISubroutineType(types: !913)
!913 = !{!77, !32, !77, !6, !77, !40, !25, !914, !6, !6}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !941, !942, !943, !944, !945, !948, !949, !967, !970, !971, !978}
!917 = !DILocalVariable(name: "buffer", arg: 1, scope: !911, file: !83, line: 256, type: !32)
!918 = !DILocalVariable(name: "buffersize", arg: 2, scope: !911, file: !83, line: 256, type: !77)
!919 = !DILocalVariable(name: "arg", arg: 3, scope: !911, file: !83, line: 257, type: !6)
!920 = !DILocalVariable(name: "argsize", arg: 4, scope: !911, file: !83, line: 257, type: !77)
!921 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !911, file: !83, line: 258, type: !40)
!922 = !DILocalVariable(name: "flags", arg: 6, scope: !911, file: !83, line: 258, type: !25)
!923 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !911, file: !83, line: 259, type: !914)
!924 = !DILocalVariable(name: "left_quote", arg: 8, scope: !911, file: !83, line: 260, type: !6)
!925 = !DILocalVariable(name: "right_quote", arg: 9, scope: !911, file: !83, line: 261, type: !6)
!926 = !DILocalVariable(name: "i", scope: !911, file: !83, line: 263, type: !77)
!927 = !DILocalVariable(name: "len", scope: !911, file: !83, line: 264, type: !77)
!928 = !DILocalVariable(name: "orig_buffersize", scope: !911, file: !83, line: 265, type: !77)
!929 = !DILocalVariable(name: "quote_string", scope: !911, file: !83, line: 266, type: !6)
!930 = !DILocalVariable(name: "quote_string_len", scope: !911, file: !83, line: 267, type: !77)
!931 = !DILocalVariable(name: "backslash_escapes", scope: !911, file: !83, line: 268, type: !17)
!932 = !DILocalVariable(name: "unibyte_locale", scope: !911, file: !83, line: 269, type: !17)
!933 = !DILocalVariable(name: "elide_outer_quotes", scope: !911, file: !83, line: 270, type: !17)
!934 = !DILocalVariable(name: "pending_shell_escape_end", scope: !911, file: !83, line: 271, type: !17)
!935 = !DILocalVariable(name: "encountered_single_quote", scope: !911, file: !83, line: 272, type: !17)
!936 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !911, file: !83, line: 273, type: !17)
!937 = !DILocalVariable(name: "c", scope: !938, file: !83, line: 402, type: !813)
!938 = distinct !DILexicalBlock(scope: !939, file: !83, line: 401, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !83, line: 400, column: 3)
!940 = distinct !DILexicalBlock(scope: !911, file: !83, line: 400, column: 3)
!941 = !DILocalVariable(name: "esc", scope: !938, file: !83, line: 403, type: !813)
!942 = !DILocalVariable(name: "is_right_quote", scope: !938, file: !83, line: 404, type: !17)
!943 = !DILocalVariable(name: "escaping", scope: !938, file: !83, line: 405, type: !17)
!944 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !938, file: !83, line: 406, type: !17)
!945 = !DILocalVariable(name: "m", scope: !946, file: !83, line: 610, type: !77)
!946 = distinct !DILexicalBlock(scope: !947, file: !83, line: 608, column: 11)
!947 = distinct !DILexicalBlock(scope: !938, file: !83, line: 426, column: 9)
!948 = !DILocalVariable(name: "printable", scope: !946, file: !83, line: 612, type: !17)
!949 = !DILocalVariable(name: "mbstate", scope: !950, file: !83, line: 621, type: !952)
!950 = distinct !DILexicalBlock(scope: !951, file: !83, line: 620, column: 15)
!951 = distinct !DILexicalBlock(scope: !946, file: !83, line: 614, column: 17)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !953, line: 6, baseType: !954)
!953 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !955, line: 21, baseType: !956)
!955 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 13, size: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !956, file: !955, line: 15, baseType: !25, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !956, file: !955, line: 20, baseType: !960, size: 32, offset: 32)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !955, line: 16, size: 32, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !960, file: !955, line: 18, baseType: !42, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !960, file: !955, line: 19, baseType: !964, size: 32)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 4)
!967 = !DILocalVariable(name: "w", scope: !968, file: !83, line: 631, type: !969)
!968 = distinct !DILexicalBlock(scope: !950, file: !83, line: 630, column: 19)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 90, baseType: !25)
!970 = !DILocalVariable(name: "bytes", scope: !968, file: !83, line: 632, type: !77)
!971 = !DILocalVariable(name: "j", scope: !972, file: !83, line: 657, type: !77)
!972 = distinct !DILexicalBlock(scope: !973, file: !83, line: 656, column: 27)
!973 = distinct !DILexicalBlock(scope: !974, file: !83, line: 654, column: 29)
!974 = distinct !DILexicalBlock(scope: !975, file: !83, line: 649, column: 23)
!975 = distinct !DILexicalBlock(scope: !976, file: !83, line: 641, column: 30)
!976 = distinct !DILexicalBlock(scope: !977, file: !83, line: 636, column: 30)
!977 = distinct !DILexicalBlock(scope: !968, file: !83, line: 634, column: 25)
!978 = !DILocalVariable(name: "ilim", scope: !979, file: !83, line: 684, type: !77)
!979 = distinct !DILexicalBlock(scope: !980, file: !83, line: 681, column: 15)
!980 = distinct !DILexicalBlock(scope: !946, file: !83, line: 680, column: 17)
!981 = !DILocation(line: 256, column: 33, scope: !911)
!982 = !DILocation(line: 256, column: 48, scope: !911)
!983 = !DILocation(line: 257, column: 39, scope: !911)
!984 = !DILocation(line: 257, column: 51, scope: !911)
!985 = !DILocation(line: 258, column: 46, scope: !911)
!986 = !DILocation(line: 258, column: 65, scope: !911)
!987 = !DILocation(line: 259, column: 47, scope: !911)
!988 = !DILocation(line: 260, column: 39, scope: !911)
!989 = !DILocation(line: 261, column: 39, scope: !911)
!990 = !DILocation(line: 264, column: 10, scope: !911)
!991 = !DILocation(line: 265, column: 10, scope: !911)
!992 = !DILocation(line: 266, column: 15, scope: !911)
!993 = !DILocation(line: 267, column: 10, scope: !911)
!994 = !DILocation(line: 268, column: 8, scope: !911)
!995 = !DILocation(line: 269, column: 25, scope: !911)
!996 = !DILocation(line: 269, column: 36, scope: !911)
!997 = !DILocation(line: 270, column: 8, scope: !911)
!998 = !DILocation(line: 271, column: 8, scope: !911)
!999 = !DILocation(line: 272, column: 8, scope: !911)
!1000 = !DILocation(line: 273, column: 8, scope: !911)
!1001 = !DILocation(line: 273, column: 3, scope: !911)
!1002 = !DILocation(line: 0, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !911, file: !83, line: 317, column: 5)
!1004 = !DILocation(line: 316, column: 3, scope: !911)
!1005 = !DILocation(line: 323, column: 11, scope: !1003)
!1006 = !DILocation(line: 323, column: 12, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !83, line: 323, column: 11)
!1008 = !DILocation(line: 324, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !83, line: 324, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !83, line: 324, column: 9)
!1011 = !DILocation(line: 324, column: 9, scope: !1010)
!1012 = !{!581, !581, i64 0}
!1013 = !DILocation(line: 362, column: 26, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !83, line: 340, column: 11)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !83, line: 339, column: 13)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !83, line: 338, column: 7)
!1017 = !DILocation(line: 363, column: 27, scope: !1014)
!1018 = !DILocation(line: 364, column: 11, scope: !1014)
!1019 = !DILocation(line: 365, column: 14, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !83, line: 365, column: 13)
!1021 = !DILocation(line: 365, column: 13, scope: !1016)
!1022 = !DILocation(line: 366, column: 43, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !83, line: 366, column: 11)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !83, line: 366, column: 11)
!1025 = !DILocation(line: 366, column: 11, scope: !1024)
!1026 = !DILocation(line: 367, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !83, line: 367, column: 13)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !83, line: 367, column: 13)
!1029 = !DILocation(line: 367, column: 13, scope: !1028)
!1030 = !DILocation(line: 366, column: 70, scope: !1023)
!1031 = distinct !{!1031, !1025, !1032}
!1032 = !DILocation(line: 367, column: 13, scope: !1024)
!1033 = !DILocation(line: 370, column: 28, scope: !1016)
!1034 = !DILocation(line: 372, column: 7, scope: !1003)
!1035 = !DILocation(line: 376, column: 7, scope: !1003)
!1036 = !DILocation(line: 379, column: 7, scope: !1003)
!1037 = !DILocation(line: 381, column: 12, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1003, file: !83, line: 381, column: 11)
!1039 = !DILocation(line: 381, column: 11, scope: !1003)
!1040 = !DILocation(line: 0, scope: !1038)
!1041 = !DILocation(line: 386, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1003, file: !83, line: 386, column: 11)
!1043 = !DILocation(line: 386, column: 11, scope: !1003)
!1044 = !DILocation(line: 387, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !83, line: 387, column: 9)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !83, line: 387, column: 9)
!1047 = !DILocation(line: 387, column: 9, scope: !1046)
!1048 = !DILocation(line: 394, column: 7, scope: !1003)
!1049 = !DILocation(line: 397, column: 7, scope: !1003)
!1050 = !DILocation(line: 0, scope: !911)
!1051 = !DILocation(line: 263, column: 10, scope: !911)
!1052 = !DILocation(line: 400, column: 8, scope: !940)
!1053 = !DILocation(line: 0, scope: !939)
!1054 = !DILocation(line: 400, column: 27, scope: !939)
!1055 = !DILocation(line: 400, column: 19, scope: !939)
!1056 = !DILocation(line: 400, column: 41, scope: !939)
!1057 = !DILocation(line: 400, column: 48, scope: !939)
!1058 = !DILocation(line: 400, column: 3, scope: !940)
!1059 = !DILocation(line: 400, column: 60, scope: !939)
!1060 = !DILocation(line: 404, column: 12, scope: !938)
!1061 = !DILocation(line: 405, column: 12, scope: !938)
!1062 = !DILocation(line: 406, column: 12, scope: !938)
!1063 = !DILocation(line: 409, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !938, file: !83, line: 408, column: 11)
!1065 = !DILocation(line: 411, column: 17, scope: !1064)
!1066 = !DILocation(line: 412, column: 39, scope: !1064)
!1067 = !DILocation(line: 416, column: 32, scope: !1064)
!1068 = !DILocation(line: 412, column: 19, scope: !1064)
!1069 = !DILocation(line: 412, column: 15, scope: !1064)
!1070 = !DILocation(line: 417, column: 11, scope: !1064)
!1071 = !DILocation(line: 417, column: 26, scope: !1064)
!1072 = !DILocation(line: 417, column: 14, scope: !1064)
!1073 = !DILocation(line: 417, column: 63, scope: !1064)
!1074 = !DILocation(line: 408, column: 11, scope: !938)
!1075 = !DILocation(line: 0, scope: !938)
!1076 = !DILocation(line: 424, column: 11, scope: !938)
!1077 = !DILocation(line: 402, column: 21, scope: !938)
!1078 = !DILocation(line: 425, column: 7, scope: !938)
!1079 = !DILocation(line: 428, column: 15, scope: !947)
!1080 = !DILocation(line: 430, column: 15, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !83, line: 430, column: 15)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !83, line: 429, column: 13)
!1083 = distinct !DILexicalBlock(scope: !947, file: !83, line: 428, column: 15)
!1084 = !DILocation(line: 430, column: 15, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !83, line: 430, column: 15)
!1086 = !DILocation(line: 430, column: 15, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !83, line: 430, column: 15)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !83, line: 430, column: 15)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !83, line: 430, column: 15)
!1090 = !DILocation(line: 430, column: 15, scope: !1088)
!1091 = !DILocation(line: 430, column: 15, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !83, line: 430, column: 15)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !83, line: 430, column: 15)
!1094 = !DILocation(line: 430, column: 15, scope: !1093)
!1095 = !DILocation(line: 430, column: 15, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !83, line: 430, column: 15)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !83, line: 430, column: 15)
!1098 = !DILocation(line: 430, column: 15, scope: !1097)
!1099 = !DILocation(line: 430, column: 15, scope: !1089)
!1100 = !DILocation(line: 430, column: 15, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !83, line: 430, column: 15)
!1102 = distinct !DILexicalBlock(scope: !1081, file: !83, line: 430, column: 15)
!1103 = !DILocation(line: 430, column: 15, scope: !1102)
!1104 = !DILocation(line: 438, column: 19, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1082, file: !83, line: 437, column: 19)
!1106 = !DILocation(line: 438, column: 24, scope: !1105)
!1107 = !DILocation(line: 438, column: 28, scope: !1105)
!1108 = !DILocation(line: 438, column: 38, scope: !1105)
!1109 = !DILocation(line: 438, column: 48, scope: !1105)
!1110 = !DILocation(line: 438, column: 59, scope: !1105)
!1111 = !DILocation(line: 440, column: 19, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !83, line: 440, column: 19)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !83, line: 440, column: 19)
!1114 = distinct !DILexicalBlock(scope: !1105, file: !83, line: 439, column: 17)
!1115 = !DILocation(line: 440, column: 19, scope: !1113)
!1116 = !DILocation(line: 441, column: 19, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !83, line: 441, column: 19)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !83, line: 441, column: 19)
!1119 = !DILocation(line: 441, column: 19, scope: !1118)
!1120 = !DILocation(line: 442, column: 17, scope: !1114)
!1121 = !DILocation(line: 449, column: 20, scope: !1083)
!1122 = !DILocation(line: 454, column: 11, scope: !947)
!1123 = !DILocation(line: 457, column: 19, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !947, file: !83, line: 455, column: 13)
!1125 = !DILocation(line: 463, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !83, line: 462, column: 19)
!1127 = !DILocation(line: 463, column: 24, scope: !1126)
!1128 = !DILocation(line: 463, column: 28, scope: !1126)
!1129 = !DILocation(line: 463, column: 38, scope: !1126)
!1130 = !DILocation(line: 463, column: 47, scope: !1126)
!1131 = !DILocation(line: 463, column: 41, scope: !1126)
!1132 = !DILocation(line: 463, column: 52, scope: !1126)
!1133 = !DILocation(line: 462, column: 19, scope: !1124)
!1134 = !DILocation(line: 464, column: 25, scope: !1126)
!1135 = !DILocation(line: 464, column: 17, scope: !1126)
!1136 = !DILocation(line: 471, column: 25, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1126, file: !83, line: 465, column: 19)
!1138 = !DILocation(line: 475, column: 21, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !83, line: 475, column: 21)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !83, line: 475, column: 21)
!1141 = !DILocation(line: 475, column: 21, scope: !1140)
!1142 = !DILocation(line: 476, column: 21, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !83, line: 476, column: 21)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !83, line: 476, column: 21)
!1145 = !DILocation(line: 476, column: 21, scope: !1144)
!1146 = !DILocation(line: 477, column: 21, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !83, line: 477, column: 21)
!1148 = distinct !DILexicalBlock(scope: !1137, file: !83, line: 477, column: 21)
!1149 = !DILocation(line: 477, column: 21, scope: !1148)
!1150 = !DILocation(line: 478, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !83, line: 478, column: 21)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !83, line: 478, column: 21)
!1153 = !DILocation(line: 478, column: 21, scope: !1152)
!1154 = !DILocation(line: 479, column: 21, scope: !1137)
!1155 = !DILocation(line: 403, column: 21, scope: !938)
!1156 = !DILocation(line: 492, column: 31, scope: !947)
!1157 = !DILocation(line: 493, column: 31, scope: !947)
!1158 = !DILocation(line: 495, column: 31, scope: !947)
!1159 = !DILocation(line: 496, column: 31, scope: !947)
!1160 = !DILocation(line: 497, column: 31, scope: !947)
!1161 = !DILocation(line: 500, column: 15, scope: !947)
!1162 = !DILocation(line: 502, column: 19, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !83, line: 501, column: 13)
!1164 = distinct !DILexicalBlock(scope: !947, file: !83, line: 500, column: 15)
!1165 = !DILocation(line: 509, column: 33, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !947, file: !83, line: 509, column: 15)
!1167 = !DILocation(line: 0, scope: !947)
!1168 = !DILocation(line: 514, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !947, file: !83, line: 513, column: 15)
!1170 = !DILocation(line: 518, column: 15, scope: !947)
!1171 = !DILocation(line: 526, column: 26, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !947, file: !83, line: 526, column: 15)
!1173 = !DILocation(line: 526, column: 15, scope: !947)
!1174 = !DILocation(line: 526, column: 40, scope: !1172)
!1175 = !DILocation(line: 526, column: 47, scope: !1172)
!1176 = !DILocation(line: 530, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !947, file: !83, line: 530, column: 15)
!1178 = !DILocation(line: 526, column: 18, scope: !1172)
!1179 = !DILocation(line: 526, column: 65, scope: !1172)
!1180 = !DILocation(line: 530, column: 15, scope: !947)
!1181 = !DILocation(line: 535, column: 11, scope: !947)
!1182 = !DILocation(line: 549, column: 15, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !947, file: !83, line: 548, column: 15)
!1184 = !DILocation(line: 556, column: 15, scope: !947)
!1185 = !DILocation(line: 558, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !83, line: 557, column: 13)
!1187 = distinct !DILexicalBlock(scope: !947, file: !83, line: 556, column: 15)
!1188 = !DILocation(line: 561, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 561, column: 19)
!1190 = !DILocation(line: 561, column: 35, scope: !1189)
!1191 = !DILocation(line: 561, column: 30, scope: !1189)
!1192 = !DILocation(line: 570, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !83, line: 570, column: 15)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 570, column: 15)
!1195 = !DILocation(line: 570, column: 15, scope: !1194)
!1196 = !DILocation(line: 571, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !83, line: 571, column: 15)
!1198 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 571, column: 15)
!1199 = !DILocation(line: 571, column: 15, scope: !1198)
!1200 = !DILocation(line: 572, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !83, line: 572, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 572, column: 15)
!1203 = !DILocation(line: 572, column: 15, scope: !1202)
!1204 = !DILocation(line: 574, column: 13, scope: !1186)
!1205 = !DILocation(line: 614, column: 17, scope: !946)
!1206 = !DILocation(line: 610, column: 20, scope: !946)
!1207 = !DILocation(line: 617, column: 29, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !951, file: !83, line: 615, column: 15)
!1209 = !{!1210, !1210, i64 0}
!1210 = !{!"short", !581, i64 0}
!1211 = !DILocation(line: 617, column: 27, scope: !1208)
!1212 = !DILocation(line: 612, column: 18, scope: !946)
!1213 = !DILocation(line: 618, column: 15, scope: !1208)
!1214 = !DILocation(line: 621, column: 17, scope: !950)
!1215 = !DILocation(line: 622, column: 17, scope: !950)
!1216 = !DILocation(line: 626, column: 29, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !950, file: !83, line: 626, column: 21)
!1218 = !DILocation(line: 626, column: 21, scope: !950)
!1219 = !DILocation(line: 627, column: 29, scope: !1217)
!1220 = !DILocation(line: 627, column: 19, scope: !1217)
!1221 = !DILocation(line: 0, scope: !1064)
!1222 = !DILocation(line: 629, column: 17, scope: !950)
!1223 = !DILocation(line: 624, column: 19, scope: !950)
!1224 = !DILocation(line: 625, column: 27, scope: !950)
!1225 = !DILocation(line: 631, column: 21, scope: !968)
!1226 = !DILocation(line: 632, column: 56, scope: !968)
!1227 = !DILocation(line: 632, column: 50, scope: !968)
!1228 = !DILocation(line: 633, column: 53, scope: !968)
!1229 = !DILocation(line: 621, column: 27, scope: !950)
!1230 = !DILocation(line: 631, column: 29, scope: !968)
!1231 = !DILocation(line: 632, column: 36, scope: !968)
!1232 = !DILocation(line: 632, column: 28, scope: !968)
!1233 = !DILocation(line: 634, column: 25, scope: !968)
!1234 = !DILocation(line: 644, column: 38, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !975, file: !83, line: 642, column: 23)
!1236 = !DILocation(line: 644, column: 48, scope: !1235)
!1237 = !DILocation(line: 644, column: 51, scope: !1235)
!1238 = !DILocation(line: 644, column: 25, scope: !1235)
!1239 = !DILocation(line: 645, column: 28, scope: !1235)
!1240 = !DILocation(line: 644, column: 34, scope: !1235)
!1241 = distinct !{!1241, !1238, !1239}
!1242 = !DILocation(line: 658, column: 43, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !83, line: 658, column: 29)
!1244 = distinct !DILexicalBlock(scope: !972, file: !83, line: 658, column: 29)
!1245 = !DILocation(line: 655, column: 29, scope: !973)
!1246 = !DILocation(line: 657, column: 36, scope: !972)
!1247 = !DILocation(line: 659, column: 49, scope: !1243)
!1248 = !DILocation(line: 659, column: 39, scope: !1243)
!1249 = !DILocation(line: 659, column: 31, scope: !1243)
!1250 = !DILocation(line: 658, column: 53, scope: !1243)
!1251 = !DILocation(line: 658, column: 29, scope: !1244)
!1252 = distinct !{!1252, !1251, !1253}
!1253 = !DILocation(line: 667, column: 33, scope: !1244)
!1254 = !DILocation(line: 674, column: 19, scope: !950)
!1255 = !DILocation(line: 670, column: 41, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !974, file: !83, line: 670, column: 29)
!1257 = !DILocation(line: 670, column: 31, scope: !1256)
!1258 = !DILocation(line: 670, column: 29, scope: !974)
!1259 = !DILocation(line: 672, column: 27, scope: !974)
!1260 = !DILocation(line: 675, column: 26, scope: !950)
!1261 = !DILocation(line: 675, column: 24, scope: !950)
!1262 = !DILocation(line: 674, column: 19, scope: !968)
!1263 = distinct !{!1263, !1222, !1264}
!1264 = !DILocation(line: 675, column: 44, scope: !950)
!1265 = !DILocation(line: 676, column: 15, scope: !951)
!1266 = !DILocation(line: 0, scope: !1217)
!1267 = !DILocation(line: 0, scope: !950)
!1268 = !DILocation(line: 678, column: 40, scope: !946)
!1269 = !DILocation(line: 680, column: 19, scope: !980)
!1270 = !DILocation(line: 680, column: 45, scope: !980)
!1271 = !DILocation(line: 680, column: 23, scope: !980)
!1272 = !DILocation(line: 684, column: 33, scope: !979)
!1273 = !DILocation(line: 684, column: 24, scope: !979)
!1274 = !DILocation(line: 686, column: 17, scope: !979)
!1275 = !DILocation(line: 0, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !83, line: 687, column: 19)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !83, line: 686, column: 17)
!1278 = distinct !DILexicalBlock(scope: !979, file: !83, line: 686, column: 17)
!1279 = !DILocation(line: 0, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !83, line: 703, column: 21)
!1281 = !DILocation(line: 0, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !83, line: 696, column: 23)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !83, line: 695, column: 30)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !83, line: 688, column: 25)
!1285 = !DILocation(line: 688, column: 43, scope: !1284)
!1286 = !DILocation(line: 690, column: 25, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !83, line: 690, column: 25)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !83, line: 689, column: 23)
!1289 = !DILocation(line: 690, column: 25, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 690, column: 25)
!1291 = !DILocation(line: 690, column: 25, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !83, line: 690, column: 25)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !83, line: 690, column: 25)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !83, line: 690, column: 25)
!1295 = !DILocation(line: 690, column: 25, scope: !1293)
!1296 = !DILocation(line: 690, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !83, line: 690, column: 25)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !83, line: 690, column: 25)
!1299 = !DILocation(line: 690, column: 25, scope: !1298)
!1300 = !DILocation(line: 690, column: 25, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !83, line: 690, column: 25)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !83, line: 690, column: 25)
!1303 = !DILocation(line: 690, column: 25, scope: !1302)
!1304 = !DILocation(line: 690, column: 25, scope: !1294)
!1305 = !DILocation(line: 690, column: 25, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !83, line: 690, column: 25)
!1307 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 690, column: 25)
!1308 = !DILocation(line: 690, column: 25, scope: !1307)
!1309 = !DILocation(line: 691, column: 25, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !83, line: 691, column: 25)
!1311 = distinct !DILexicalBlock(scope: !1288, file: !83, line: 691, column: 25)
!1312 = !DILocation(line: 691, column: 25, scope: !1311)
!1313 = !DILocation(line: 692, column: 25, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !83, line: 692, column: 25)
!1315 = distinct !DILexicalBlock(scope: !1288, file: !83, line: 692, column: 25)
!1316 = !DILocation(line: 692, column: 25, scope: !1315)
!1317 = !DILocation(line: 693, column: 38, scope: !1288)
!1318 = !DILocation(line: 693, column: 33, scope: !1288)
!1319 = !DILocation(line: 694, column: 23, scope: !1288)
!1320 = !DILocation(line: 695, column: 30, scope: !1283)
!1321 = !DILocation(line: 695, column: 30, scope: !1284)
!1322 = !DILocation(line: 697, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !83, line: 697, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1282, file: !83, line: 697, column: 25)
!1325 = !DILocation(line: 697, column: 25, scope: !1324)
!1326 = !DILocation(line: 699, column: 23, scope: !1282)
!1327 = !DILocation(line: 0, scope: !1315)
!1328 = !DILocation(line: 0, scope: !1288)
!1329 = !DILocation(line: 0, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1064, file: !83, line: 418, column: 9)
!1331 = !DILocation(line: 0, scope: !1287)
!1332 = !DILocation(line: 700, column: 35, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1276, file: !83, line: 700, column: 25)
!1334 = !DILocation(line: 700, column: 30, scope: !1333)
!1335 = !DILocation(line: 700, column: 25, scope: !1276)
!1336 = !DILocation(line: 702, column: 21, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !83, line: 702, column: 21)
!1338 = distinct !DILexicalBlock(scope: !1276, file: !83, line: 702, column: 21)
!1339 = !DILocation(line: 702, column: 21, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !83, line: 702, column: 21)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !83, line: 702, column: 21)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !83, line: 702, column: 21)
!1343 = !DILocation(line: 702, column: 21, scope: !1341)
!1344 = !DILocation(line: 702, column: 21, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !83, line: 702, column: 21)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !83, line: 702, column: 21)
!1347 = !DILocation(line: 702, column: 21, scope: !1346)
!1348 = !DILocation(line: 702, column: 21, scope: !1342)
!1349 = !DILocation(line: 0, scope: !1324)
!1350 = !DILocation(line: 703, column: 21, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1280, file: !83, line: 703, column: 21)
!1352 = !DILocation(line: 703, column: 21, scope: !1280)
!1353 = !DILocation(line: 704, column: 25, scope: !1276)
!1354 = !DILocation(line: 686, column: 17, scope: !1277)
!1355 = distinct !{!1355, !1356, !1357}
!1356 = !DILocation(line: 686, column: 17, scope: !1278)
!1357 = !DILocation(line: 705, column: 19, scope: !1278)
!1358 = !DILocation(line: 0, scope: !940)
!1359 = !DILocation(line: 416, column: 30, scope: !1064)
!1360 = !DILocation(line: 712, column: 34, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !938, file: !83, line: 712, column: 11)
!1362 = !DILocation(line: 714, column: 14, scope: !1361)
!1363 = !DILocation(line: 715, column: 14, scope: !1361)
!1364 = !DILocation(line: 715, column: 35, scope: !1361)
!1365 = !DILocation(line: 715, column: 17, scope: !1361)
!1366 = !DILocation(line: 715, column: 47, scope: !1361)
!1367 = !DILocation(line: 715, column: 65, scope: !1361)
!1368 = !DILocation(line: 716, column: 15, scope: !1361)
!1369 = !DILocation(line: 716, column: 11, scope: !1361)
!1370 = !DILocation(line: 712, column: 11, scope: !938)
!1371 = !DILocation(line: 400, column: 10, scope: !940)
!1372 = !DILocation(line: 0, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !83, line: 519, column: 13)
!1374 = distinct !DILexicalBlock(scope: !947, file: !83, line: 518, column: 15)
!1375 = !DILocation(line: 720, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !938, file: !83, line: 720, column: 7)
!1377 = !DILocation(line: 720, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1376, file: !83, line: 720, column: 7)
!1379 = !DILocation(line: 720, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !83, line: 720, column: 7)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !83, line: 720, column: 7)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !83, line: 720, column: 7)
!1383 = !DILocation(line: 720, column: 7, scope: !1381)
!1384 = !DILocation(line: 720, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !83, line: 720, column: 7)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !83, line: 720, column: 7)
!1387 = !DILocation(line: 720, column: 7, scope: !1386)
!1388 = !DILocation(line: 720, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !83, line: 720, column: 7)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !83, line: 720, column: 7)
!1391 = !DILocation(line: 720, column: 7, scope: !1390)
!1392 = !DILocation(line: 720, column: 7, scope: !1382)
!1393 = !DILocation(line: 720, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !83, line: 720, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1376, file: !83, line: 720, column: 7)
!1396 = !DILocation(line: 720, column: 7, scope: !1395)
!1397 = !DILocation(line: 723, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !83, line: 723, column: 7)
!1399 = distinct !DILexicalBlock(scope: !938, file: !83, line: 723, column: 7)
!1400 = !DILocation(line: 424, column: 9, scope: !938)
!1401 = !DILocation(line: 723, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !83, line: 723, column: 7)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !83, line: 723, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1398, file: !83, line: 723, column: 7)
!1405 = !DILocation(line: 723, column: 7, scope: !1403)
!1406 = !DILocation(line: 723, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !83, line: 723, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !83, line: 723, column: 7)
!1409 = !DILocation(line: 723, column: 7, scope: !1408)
!1410 = !DILocation(line: 723, column: 7, scope: !1404)
!1411 = !DILocation(line: 724, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !83, line: 724, column: 7)
!1413 = distinct !DILexicalBlock(scope: !938, file: !83, line: 724, column: 7)
!1414 = !DILocation(line: 724, column: 7, scope: !1413)
!1415 = !DILocation(line: 726, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !938, file: !83, line: 726, column: 11)
!1417 = !DILocation(line: 726, column: 11, scope: !938)
!1418 = !DILocation(line: 728, column: 5, scope: !939)
!1419 = !DILocation(line: 400, column: 75, scope: !939)
!1420 = !DILocation(line: 400, column: 3, scope: !939)
!1421 = distinct !{!1421, !1058, !1422}
!1422 = !DILocation(line: 728, column: 5, scope: !940)
!1423 = !DILocation(line: 730, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !911, file: !83, line: 730, column: 7)
!1425 = !DILocation(line: 730, column: 16, scope: !1424)
!1426 = !DILocation(line: 738, column: 51, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !911, file: !83, line: 738, column: 7)
!1428 = !DILocation(line: 739, column: 10, scope: !1427)
!1429 = !DILocation(line: 741, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !83, line: 741, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !83, line: 740, column: 5)
!1432 = !DILocation(line: 741, column: 11, scope: !1431)
!1433 = !DILocation(line: 742, column: 16, scope: !1430)
!1434 = !DILocation(line: 742, column: 9, scope: !1430)
!1435 = !DILocation(line: 746, column: 18, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1430, file: !83, line: 746, column: 16)
!1437 = !DILocation(line: 746, column: 32, scope: !1436)
!1438 = !DILocation(line: 746, column: 29, scope: !1436)
!1439 = !DILocation(line: 755, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !911, file: !83, line: 755, column: 7)
!1441 = !DILocation(line: 755, column: 20, scope: !1440)
!1442 = !DILocation(line: 756, column: 12, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !83, line: 756, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !83, line: 756, column: 5)
!1445 = !DILocation(line: 756, column: 5, scope: !1444)
!1446 = !DILocation(line: 757, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !83, line: 757, column: 7)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !83, line: 757, column: 7)
!1449 = !DILocation(line: 757, column: 7, scope: !1448)
!1450 = !DILocation(line: 756, column: 39, scope: !1443)
!1451 = distinct !{!1451, !1445, !1452}
!1452 = !DILocation(line: 757, column: 7, scope: !1444)
!1453 = !DILocation(line: 759, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !911, file: !83, line: 759, column: 7)
!1455 = !DILocation(line: 759, column: 7, scope: !911)
!1456 = !DILocation(line: 760, column: 5, scope: !1454)
!1457 = !DILocation(line: 760, column: 17, scope: !1454)
!1458 = !DILocation(line: 766, column: 21, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !911, file: !83, line: 766, column: 7)
!1460 = !DILocation(line: 766, column: 54, scope: !1459)
!1461 = !DILocation(line: 766, column: 51, scope: !1459)
!1462 = !DILocation(line: 770, column: 42, scope: !911)
!1463 = !DILocation(line: 768, column: 10, scope: !911)
!1464 = !DILocation(line: 768, column: 3, scope: !911)
!1465 = !DILocation(line: 772, column: 1, scope: !911)
!1466 = distinct !DISubprogram(name: "gettext_quote", scope: !83, file: !83, line: 207, type: !1467, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!6, !6, !40}
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DILocalVariable(name: "msgid", arg: 1, scope: !1466, file: !83, line: 207, type: !6)
!1471 = !DILocalVariable(name: "s", arg: 2, scope: !1466, file: !83, line: 207, type: !40)
!1472 = !DILocalVariable(name: "translation", scope: !1466, file: !83, line: 209, type: !6)
!1473 = !DILocalVariable(name: "locale_code", scope: !1466, file: !83, line: 210, type: !6)
!1474 = !DILocation(line: 207, column: 28, scope: !1466)
!1475 = !DILocation(line: 207, column: 54, scope: !1466)
!1476 = !DILocation(line: 209, column: 29, scope: !1466)
!1477 = !DILocation(line: 209, column: 15, scope: !1466)
!1478 = !DILocation(line: 212, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1466, file: !83, line: 212, column: 7)
!1480 = !DILocation(line: 212, column: 7, scope: !1466)
!1481 = !DILocation(line: 233, column: 17, scope: !1466)
!1482 = !DILocation(line: 210, column: 15, scope: !1466)
!1483 = !DILocalVariable(name: "s1", arg: 1, scope: !1484, file: !1485, line: 160, type: !6)
!1484 = distinct !DISubprogram(name: "strcaseeq0", scope: !1485, file: !1485, line: 160, type: !1486, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1488)
!1485 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1488 = !{!1483, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1489 = !DILocalVariable(name: "s2", arg: 2, scope: !1484, file: !1485, line: 160, type: !6)
!1490 = !DILocalVariable(name: "s20", arg: 3, scope: !1484, file: !1485, line: 160, type: !8)
!1491 = !DILocalVariable(name: "s21", arg: 4, scope: !1484, file: !1485, line: 160, type: !8)
!1492 = !DILocalVariable(name: "s22", arg: 5, scope: !1484, file: !1485, line: 160, type: !8)
!1493 = !DILocalVariable(name: "s23", arg: 6, scope: !1484, file: !1485, line: 160, type: !8)
!1494 = !DILocalVariable(name: "s24", arg: 7, scope: !1484, file: !1485, line: 160, type: !8)
!1495 = !DILocalVariable(name: "s25", arg: 8, scope: !1484, file: !1485, line: 160, type: !8)
!1496 = !DILocalVariable(name: "s26", arg: 9, scope: !1484, file: !1485, line: 160, type: !8)
!1497 = !DILocalVariable(name: "s27", arg: 10, scope: !1484, file: !1485, line: 160, type: !8)
!1498 = !DILocalVariable(name: "s28", arg: 11, scope: !1484, file: !1485, line: 160, type: !8)
!1499 = !DILocation(line: 160, column: 25, scope: !1484, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 234, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1466, file: !83, line: 234, column: 7)
!1502 = !DILocation(line: 160, column: 41, scope: !1484, inlinedAt: !1500)
!1503 = !DILocation(line: 160, column: 50, scope: !1484, inlinedAt: !1500)
!1504 = !DILocation(line: 160, column: 60, scope: !1484, inlinedAt: !1500)
!1505 = !DILocation(line: 160, column: 70, scope: !1484, inlinedAt: !1500)
!1506 = !DILocation(line: 160, column: 80, scope: !1484, inlinedAt: !1500)
!1507 = !DILocation(line: 160, column: 90, scope: !1484, inlinedAt: !1500)
!1508 = !DILocation(line: 160, column: 100, scope: !1484, inlinedAt: !1500)
!1509 = !DILocation(line: 160, column: 110, scope: !1484, inlinedAt: !1500)
!1510 = !DILocation(line: 160, column: 120, scope: !1484, inlinedAt: !1500)
!1511 = !DILocation(line: 160, column: 130, scope: !1484, inlinedAt: !1500)
!1512 = !DILocation(line: 162, column: 7, scope: !1513, inlinedAt: !1500)
!1513 = distinct !DILexicalBlock(scope: !1484, file: !1485, line: 162, column: 7)
!1514 = !DILocalVariable(name: "s1", arg: 1, scope: !1515, file: !1485, line: 146, type: !6)
!1515 = distinct !DISubprogram(name: "strcaseeq1", scope: !1485, file: !1485, line: 146, type: !1516, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1518 = !{!1514, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1519 = !DILocalVariable(name: "s2", arg: 2, scope: !1515, file: !1485, line: 146, type: !6)
!1520 = !DILocalVariable(name: "s21", arg: 3, scope: !1515, file: !1485, line: 146, type: !8)
!1521 = !DILocalVariable(name: "s22", arg: 4, scope: !1515, file: !1485, line: 146, type: !8)
!1522 = !DILocalVariable(name: "s23", arg: 5, scope: !1515, file: !1485, line: 146, type: !8)
!1523 = !DILocalVariable(name: "s24", arg: 6, scope: !1515, file: !1485, line: 146, type: !8)
!1524 = !DILocalVariable(name: "s25", arg: 7, scope: !1515, file: !1485, line: 146, type: !8)
!1525 = !DILocalVariable(name: "s26", arg: 8, scope: !1515, file: !1485, line: 146, type: !8)
!1526 = !DILocalVariable(name: "s27", arg: 9, scope: !1515, file: !1485, line: 146, type: !8)
!1527 = !DILocalVariable(name: "s28", arg: 10, scope: !1515, file: !1485, line: 146, type: !8)
!1528 = !DILocation(line: 146, column: 25, scope: !1515, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 167, column: 16, scope: !1530, inlinedAt: !1500)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !1485, line: 164, column: 11)
!1531 = distinct !DILexicalBlock(scope: !1513, file: !1485, line: 163, column: 5)
!1532 = !DILocation(line: 146, column: 41, scope: !1515, inlinedAt: !1529)
!1533 = !DILocation(line: 146, column: 50, scope: !1515, inlinedAt: !1529)
!1534 = !DILocation(line: 146, column: 60, scope: !1515, inlinedAt: !1529)
!1535 = !DILocation(line: 146, column: 70, scope: !1515, inlinedAt: !1529)
!1536 = !DILocation(line: 146, column: 80, scope: !1515, inlinedAt: !1529)
!1537 = !DILocation(line: 146, column: 90, scope: !1515, inlinedAt: !1529)
!1538 = !DILocation(line: 146, column: 100, scope: !1515, inlinedAt: !1529)
!1539 = !DILocation(line: 146, column: 110, scope: !1515, inlinedAt: !1529)
!1540 = !DILocation(line: 146, column: 120, scope: !1515, inlinedAt: !1529)
!1541 = !DILocation(line: 148, column: 7, scope: !1542, inlinedAt: !1529)
!1542 = distinct !DILexicalBlock(scope: !1515, file: !1485, line: 148, column: 7)
!1543 = !DILocalVariable(name: "s1", arg: 1, scope: !1544, file: !1485, line: 132, type: !6)
!1544 = distinct !DISubprogram(name: "strcaseeq2", scope: !1485, file: !1485, line: 132, type: !1545, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1547 = !{!1543, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1548 = !DILocalVariable(name: "s2", arg: 2, scope: !1544, file: !1485, line: 132, type: !6)
!1549 = !DILocalVariable(name: "s22", arg: 3, scope: !1544, file: !1485, line: 132, type: !8)
!1550 = !DILocalVariable(name: "s23", arg: 4, scope: !1544, file: !1485, line: 132, type: !8)
!1551 = !DILocalVariable(name: "s24", arg: 5, scope: !1544, file: !1485, line: 132, type: !8)
!1552 = !DILocalVariable(name: "s25", arg: 6, scope: !1544, file: !1485, line: 132, type: !8)
!1553 = !DILocalVariable(name: "s26", arg: 7, scope: !1544, file: !1485, line: 132, type: !8)
!1554 = !DILocalVariable(name: "s27", arg: 8, scope: !1544, file: !1485, line: 132, type: !8)
!1555 = !DILocalVariable(name: "s28", arg: 9, scope: !1544, file: !1485, line: 132, type: !8)
!1556 = !DILocation(line: 132, column: 25, scope: !1544, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 153, column: 16, scope: !1558, inlinedAt: !1529)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1485, line: 150, column: 11)
!1559 = distinct !DILexicalBlock(scope: !1542, file: !1485, line: 149, column: 5)
!1560 = !DILocation(line: 132, column: 41, scope: !1544, inlinedAt: !1557)
!1561 = !DILocation(line: 132, column: 50, scope: !1544, inlinedAt: !1557)
!1562 = !DILocation(line: 132, column: 60, scope: !1544, inlinedAt: !1557)
!1563 = !DILocation(line: 132, column: 70, scope: !1544, inlinedAt: !1557)
!1564 = !DILocation(line: 132, column: 80, scope: !1544, inlinedAt: !1557)
!1565 = !DILocation(line: 132, column: 90, scope: !1544, inlinedAt: !1557)
!1566 = !DILocation(line: 132, column: 100, scope: !1544, inlinedAt: !1557)
!1567 = !DILocation(line: 132, column: 110, scope: !1544, inlinedAt: !1557)
!1568 = !DILocation(line: 134, column: 7, scope: !1569, inlinedAt: !1557)
!1569 = distinct !DILexicalBlock(scope: !1544, file: !1485, line: 134, column: 7)
!1570 = !DILocalVariable(name: "s1", arg: 1, scope: !1571, file: !1485, line: 118, type: !6)
!1571 = distinct !DISubprogram(name: "strcaseeq3", scope: !1485, file: !1485, line: 118, type: !1572, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1574 = !{!1570, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1575 = !DILocalVariable(name: "s2", arg: 2, scope: !1571, file: !1485, line: 118, type: !6)
!1576 = !DILocalVariable(name: "s23", arg: 3, scope: !1571, file: !1485, line: 118, type: !8)
!1577 = !DILocalVariable(name: "s24", arg: 4, scope: !1571, file: !1485, line: 118, type: !8)
!1578 = !DILocalVariable(name: "s25", arg: 5, scope: !1571, file: !1485, line: 118, type: !8)
!1579 = !DILocalVariable(name: "s26", arg: 6, scope: !1571, file: !1485, line: 118, type: !8)
!1580 = !DILocalVariable(name: "s27", arg: 7, scope: !1571, file: !1485, line: 118, type: !8)
!1581 = !DILocalVariable(name: "s28", arg: 8, scope: !1571, file: !1485, line: 118, type: !8)
!1582 = !DILocation(line: 118, column: 25, scope: !1571, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 139, column: 16, scope: !1584, inlinedAt: !1557)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1485, line: 136, column: 11)
!1585 = distinct !DILexicalBlock(scope: !1569, file: !1485, line: 135, column: 5)
!1586 = !DILocation(line: 118, column: 41, scope: !1571, inlinedAt: !1583)
!1587 = !DILocation(line: 118, column: 50, scope: !1571, inlinedAt: !1583)
!1588 = !DILocation(line: 118, column: 60, scope: !1571, inlinedAt: !1583)
!1589 = !DILocation(line: 118, column: 70, scope: !1571, inlinedAt: !1583)
!1590 = !DILocation(line: 118, column: 80, scope: !1571, inlinedAt: !1583)
!1591 = !DILocation(line: 118, column: 90, scope: !1571, inlinedAt: !1583)
!1592 = !DILocation(line: 118, column: 100, scope: !1571, inlinedAt: !1583)
!1593 = !DILocation(line: 120, column: 7, scope: !1594, inlinedAt: !1583)
!1594 = distinct !DILexicalBlock(scope: !1571, file: !1485, line: 120, column: 7)
!1595 = !DILocation(line: 120, column: 7, scope: !1571, inlinedAt: !1583)
!1596 = !DILocalVariable(name: "s1", arg: 1, scope: !1597, file: !1485, line: 104, type: !6)
!1597 = distinct !DISubprogram(name: "strcaseeq4", scope: !1485, file: !1485, line: 104, type: !1598, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1600 = !{!1596, !1601, !1602, !1603, !1604, !1605, !1606}
!1601 = !DILocalVariable(name: "s2", arg: 2, scope: !1597, file: !1485, line: 104, type: !6)
!1602 = !DILocalVariable(name: "s24", arg: 3, scope: !1597, file: !1485, line: 104, type: !8)
!1603 = !DILocalVariable(name: "s25", arg: 4, scope: !1597, file: !1485, line: 104, type: !8)
!1604 = !DILocalVariable(name: "s26", arg: 5, scope: !1597, file: !1485, line: 104, type: !8)
!1605 = !DILocalVariable(name: "s27", arg: 6, scope: !1597, file: !1485, line: 104, type: !8)
!1606 = !DILocalVariable(name: "s28", arg: 7, scope: !1597, file: !1485, line: 104, type: !8)
!1607 = !DILocation(line: 104, column: 25, scope: !1597, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 125, column: 16, scope: !1609, inlinedAt: !1583)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1485, line: 122, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1594, file: !1485, line: 121, column: 5)
!1611 = !DILocation(line: 104, column: 41, scope: !1597, inlinedAt: !1608)
!1612 = !DILocation(line: 104, column: 50, scope: !1597, inlinedAt: !1608)
!1613 = !DILocation(line: 104, column: 60, scope: !1597, inlinedAt: !1608)
!1614 = !DILocation(line: 104, column: 70, scope: !1597, inlinedAt: !1608)
!1615 = !DILocation(line: 104, column: 80, scope: !1597, inlinedAt: !1608)
!1616 = !DILocation(line: 104, column: 90, scope: !1597, inlinedAt: !1608)
!1617 = !DILocation(line: 106, column: 7, scope: !1618, inlinedAt: !1608)
!1618 = distinct !DILexicalBlock(scope: !1597, file: !1485, line: 106, column: 7)
!1619 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1608)
!1620 = !DILocalVariable(name: "s1", arg: 1, scope: !1621, file: !1485, line: 90, type: !6)
!1621 = distinct !DISubprogram(name: "strcaseeq5", scope: !1485, file: !1485, line: 90, type: !1622, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!25, !6, !6, !8, !8, !8, !8}
!1624 = !{!1620, !1625, !1626, !1627, !1628, !1629}
!1625 = !DILocalVariable(name: "s2", arg: 2, scope: !1621, file: !1485, line: 90, type: !6)
!1626 = !DILocalVariable(name: "s25", arg: 3, scope: !1621, file: !1485, line: 90, type: !8)
!1627 = !DILocalVariable(name: "s26", arg: 4, scope: !1621, file: !1485, line: 90, type: !8)
!1628 = !DILocalVariable(name: "s27", arg: 5, scope: !1621, file: !1485, line: 90, type: !8)
!1629 = !DILocalVariable(name: "s28", arg: 6, scope: !1621, file: !1485, line: 90, type: !8)
!1630 = !DILocation(line: 90, column: 25, scope: !1621, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 111, column: 16, scope: !1632, inlinedAt: !1608)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !1485, line: 108, column: 11)
!1633 = distinct !DILexicalBlock(scope: !1618, file: !1485, line: 107, column: 5)
!1634 = !DILocation(line: 90, column: 41, scope: !1621, inlinedAt: !1631)
!1635 = !DILocation(line: 90, column: 50, scope: !1621, inlinedAt: !1631)
!1636 = !DILocation(line: 90, column: 60, scope: !1621, inlinedAt: !1631)
!1637 = !DILocation(line: 90, column: 70, scope: !1621, inlinedAt: !1631)
!1638 = !DILocation(line: 90, column: 80, scope: !1621, inlinedAt: !1631)
!1639 = !DILocation(line: 92, column: 7, scope: !1640, inlinedAt: !1631)
!1640 = distinct !DILexicalBlock(scope: !1621, file: !1485, line: 92, column: 7)
!1641 = !DILocation(line: 92, column: 7, scope: !1621, inlinedAt: !1631)
!1642 = !DILocation(line: 235, column: 12, scope: !1501)
!1643 = !DILocation(line: 235, column: 21, scope: !1501)
!1644 = !DILocation(line: 235, column: 5, scope: !1501)
!1645 = !DILocation(line: 146, column: 25, scope: !1515, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 167, column: 16, scope: !1530, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 236, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1466, file: !83, line: 236, column: 7)
!1649 = !DILocation(line: 146, column: 41, scope: !1515, inlinedAt: !1646)
!1650 = !DILocation(line: 146, column: 50, scope: !1515, inlinedAt: !1646)
!1651 = !DILocation(line: 146, column: 60, scope: !1515, inlinedAt: !1646)
!1652 = !DILocation(line: 146, column: 70, scope: !1515, inlinedAt: !1646)
!1653 = !DILocation(line: 146, column: 80, scope: !1515, inlinedAt: !1646)
!1654 = !DILocation(line: 146, column: 90, scope: !1515, inlinedAt: !1646)
!1655 = !DILocation(line: 146, column: 100, scope: !1515, inlinedAt: !1646)
!1656 = !DILocation(line: 146, column: 110, scope: !1515, inlinedAt: !1646)
!1657 = !DILocation(line: 146, column: 120, scope: !1515, inlinedAt: !1646)
!1658 = !DILocation(line: 148, column: 7, scope: !1542, inlinedAt: !1646)
!1659 = !DILocation(line: 132, column: 25, scope: !1544, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 153, column: 16, scope: !1558, inlinedAt: !1646)
!1661 = !DILocation(line: 132, column: 41, scope: !1544, inlinedAt: !1660)
!1662 = !DILocation(line: 132, column: 50, scope: !1544, inlinedAt: !1660)
!1663 = !DILocation(line: 132, column: 60, scope: !1544, inlinedAt: !1660)
!1664 = !DILocation(line: 132, column: 70, scope: !1544, inlinedAt: !1660)
!1665 = !DILocation(line: 132, column: 80, scope: !1544, inlinedAt: !1660)
!1666 = !DILocation(line: 132, column: 90, scope: !1544, inlinedAt: !1660)
!1667 = !DILocation(line: 132, column: 100, scope: !1544, inlinedAt: !1660)
!1668 = !DILocation(line: 132, column: 110, scope: !1544, inlinedAt: !1660)
!1669 = !DILocation(line: 134, column: 7, scope: !1569, inlinedAt: !1660)
!1670 = !DILocation(line: 134, column: 7, scope: !1544, inlinedAt: !1660)
!1671 = !DILocation(line: 118, column: 25, scope: !1571, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 139, column: 16, scope: !1584, inlinedAt: !1660)
!1673 = !DILocation(line: 118, column: 41, scope: !1571, inlinedAt: !1672)
!1674 = !DILocation(line: 118, column: 50, scope: !1571, inlinedAt: !1672)
!1675 = !DILocation(line: 118, column: 60, scope: !1571, inlinedAt: !1672)
!1676 = !DILocation(line: 118, column: 70, scope: !1571, inlinedAt: !1672)
!1677 = !DILocation(line: 118, column: 80, scope: !1571, inlinedAt: !1672)
!1678 = !DILocation(line: 118, column: 90, scope: !1571, inlinedAt: !1672)
!1679 = !DILocation(line: 118, column: 100, scope: !1571, inlinedAt: !1672)
!1680 = !DILocation(line: 120, column: 7, scope: !1594, inlinedAt: !1672)
!1681 = !DILocation(line: 120, column: 7, scope: !1571, inlinedAt: !1672)
!1682 = !DILocation(line: 104, column: 25, scope: !1597, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 125, column: 16, scope: !1609, inlinedAt: !1672)
!1684 = !DILocation(line: 104, column: 41, scope: !1597, inlinedAt: !1683)
!1685 = !DILocation(line: 104, column: 50, scope: !1597, inlinedAt: !1683)
!1686 = !DILocation(line: 104, column: 60, scope: !1597, inlinedAt: !1683)
!1687 = !DILocation(line: 104, column: 70, scope: !1597, inlinedAt: !1683)
!1688 = !DILocation(line: 104, column: 80, scope: !1597, inlinedAt: !1683)
!1689 = !DILocation(line: 104, column: 90, scope: !1597, inlinedAt: !1683)
!1690 = !DILocation(line: 106, column: 7, scope: !1618, inlinedAt: !1683)
!1691 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1683)
!1692 = !DILocation(line: 90, column: 25, scope: !1621, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 111, column: 16, scope: !1632, inlinedAt: !1683)
!1694 = !DILocation(line: 90, column: 41, scope: !1621, inlinedAt: !1693)
!1695 = !DILocation(line: 90, column: 50, scope: !1621, inlinedAt: !1693)
!1696 = !DILocation(line: 90, column: 60, scope: !1621, inlinedAt: !1693)
!1697 = !DILocation(line: 90, column: 70, scope: !1621, inlinedAt: !1693)
!1698 = !DILocation(line: 90, column: 80, scope: !1621, inlinedAt: !1693)
!1699 = !DILocation(line: 92, column: 7, scope: !1640, inlinedAt: !1693)
!1700 = !DILocation(line: 92, column: 7, scope: !1621, inlinedAt: !1693)
!1701 = !DILocalVariable(name: "s1", arg: 1, scope: !1702, file: !1485, line: 76, type: !6)
!1702 = distinct !DISubprogram(name: "strcaseeq6", scope: !1485, file: !1485, line: 76, type: !1703, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!25, !6, !6, !8, !8, !8}
!1705 = !{!1701, !1706, !1707, !1708, !1709}
!1706 = !DILocalVariable(name: "s2", arg: 2, scope: !1702, file: !1485, line: 76, type: !6)
!1707 = !DILocalVariable(name: "s26", arg: 3, scope: !1702, file: !1485, line: 76, type: !8)
!1708 = !DILocalVariable(name: "s27", arg: 4, scope: !1702, file: !1485, line: 76, type: !8)
!1709 = !DILocalVariable(name: "s28", arg: 5, scope: !1702, file: !1485, line: 76, type: !8)
!1710 = !DILocation(line: 76, column: 25, scope: !1702, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 97, column: 16, scope: !1712, inlinedAt: !1693)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !1485, line: 94, column: 11)
!1713 = distinct !DILexicalBlock(scope: !1640, file: !1485, line: 93, column: 5)
!1714 = !DILocation(line: 76, column: 41, scope: !1702, inlinedAt: !1711)
!1715 = !DILocation(line: 76, column: 50, scope: !1702, inlinedAt: !1711)
!1716 = !DILocation(line: 76, column: 60, scope: !1702, inlinedAt: !1711)
!1717 = !DILocation(line: 76, column: 70, scope: !1702, inlinedAt: !1711)
!1718 = !DILocation(line: 78, column: 7, scope: !1719, inlinedAt: !1711)
!1719 = distinct !DILexicalBlock(scope: !1702, file: !1485, line: 78, column: 7)
!1720 = !DILocation(line: 78, column: 7, scope: !1702, inlinedAt: !1711)
!1721 = !DILocalVariable(name: "s1", arg: 1, scope: !1722, file: !1485, line: 62, type: !6)
!1722 = distinct !DISubprogram(name: "strcaseeq7", scope: !1485, file: !1485, line: 62, type: !1723, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!25, !6, !6, !8, !8}
!1725 = !{!1721, !1726, !1727, !1728}
!1726 = !DILocalVariable(name: "s2", arg: 2, scope: !1722, file: !1485, line: 62, type: !6)
!1727 = !DILocalVariable(name: "s27", arg: 3, scope: !1722, file: !1485, line: 62, type: !8)
!1728 = !DILocalVariable(name: "s28", arg: 4, scope: !1722, file: !1485, line: 62, type: !8)
!1729 = !DILocation(line: 62, column: 25, scope: !1722, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 83, column: 16, scope: !1731, inlinedAt: !1711)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1485, line: 80, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1719, file: !1485, line: 79, column: 5)
!1733 = !DILocation(line: 62, column: 41, scope: !1722, inlinedAt: !1730)
!1734 = !DILocation(line: 62, column: 50, scope: !1722, inlinedAt: !1730)
!1735 = !DILocation(line: 62, column: 60, scope: !1722, inlinedAt: !1730)
!1736 = !DILocation(line: 64, column: 7, scope: !1737, inlinedAt: !1730)
!1737 = distinct !DILexicalBlock(scope: !1722, file: !1485, line: 64, column: 7)
!1738 = !DILocation(line: 236, column: 7, scope: !1466)
!1739 = !DILocation(line: 237, column: 12, scope: !1648)
!1740 = !DILocation(line: 237, column: 21, scope: !1648)
!1741 = !DILocation(line: 237, column: 5, scope: !1648)
!1742 = !DILocation(line: 239, column: 13, scope: !1466)
!1743 = !DILocation(line: 239, column: 11, scope: !1466)
!1744 = !DILocation(line: 239, column: 3, scope: !1466)
!1745 = !DILocation(line: 0, scope: !1466)
!1746 = !DILocation(line: 240, column: 1, scope: !1466)
!1747 = distinct !DISubprogram(name: "quotearg_alloc", scope: !83, file: !83, line: 799, type: !1748, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!32, !6, !77, !783}
!1750 = !{!1751, !1752, !1753}
!1751 = !DILocalVariable(name: "arg", arg: 1, scope: !1747, file: !83, line: 799, type: !6)
!1752 = !DILocalVariable(name: "argsize", arg: 2, scope: !1747, file: !83, line: 799, type: !77)
!1753 = !DILocalVariable(name: "o", arg: 3, scope: !1747, file: !83, line: 800, type: !783)
!1754 = !DILocation(line: 799, column: 29, scope: !1747)
!1755 = !DILocation(line: 799, column: 41, scope: !1747)
!1756 = !DILocation(line: 800, column: 47, scope: !1747)
!1757 = !DILocalVariable(name: "arg", arg: 1, scope: !1758, file: !83, line: 812, type: !6)
!1758 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !83, file: !83, line: 812, type: !1759, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!32, !6, !77, !150, !783}
!1761 = !{!1757, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1762 = !DILocalVariable(name: "argsize", arg: 2, scope: !1758, file: !83, line: 812, type: !77)
!1763 = !DILocalVariable(name: "size", arg: 3, scope: !1758, file: !83, line: 812, type: !150)
!1764 = !DILocalVariable(name: "o", arg: 4, scope: !1758, file: !83, line: 813, type: !783)
!1765 = !DILocalVariable(name: "p", scope: !1758, file: !83, line: 815, type: !783)
!1766 = !DILocalVariable(name: "e", scope: !1758, file: !83, line: 816, type: !25)
!1767 = !DILocalVariable(name: "flags", scope: !1758, file: !83, line: 818, type: !25)
!1768 = !DILocalVariable(name: "bufsize", scope: !1758, file: !83, line: 819, type: !77)
!1769 = !DILocalVariable(name: "buf", scope: !1758, file: !83, line: 823, type: !32)
!1770 = !DILocation(line: 812, column: 33, scope: !1758, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 802, column: 10, scope: !1747)
!1772 = !DILocation(line: 812, column: 45, scope: !1758, inlinedAt: !1771)
!1773 = !DILocation(line: 812, column: 62, scope: !1758, inlinedAt: !1771)
!1774 = !DILocation(line: 813, column: 51, scope: !1758, inlinedAt: !1771)
!1775 = !DILocation(line: 815, column: 37, scope: !1758, inlinedAt: !1771)
!1776 = !DILocation(line: 815, column: 33, scope: !1758, inlinedAt: !1771)
!1777 = !DILocation(line: 816, column: 11, scope: !1758, inlinedAt: !1771)
!1778 = !DILocation(line: 816, column: 7, scope: !1758, inlinedAt: !1771)
!1779 = !DILocation(line: 818, column: 18, scope: !1758, inlinedAt: !1771)
!1780 = !DILocation(line: 818, column: 24, scope: !1758, inlinedAt: !1771)
!1781 = !DILocation(line: 818, column: 7, scope: !1758, inlinedAt: !1771)
!1782 = !DILocation(line: 819, column: 69, scope: !1758, inlinedAt: !1771)
!1783 = !DILocation(line: 820, column: 53, scope: !1758, inlinedAt: !1771)
!1784 = !DILocation(line: 821, column: 49, scope: !1758, inlinedAt: !1771)
!1785 = !DILocation(line: 822, column: 49, scope: !1758, inlinedAt: !1771)
!1786 = !DILocation(line: 819, column: 20, scope: !1758, inlinedAt: !1771)
!1787 = !DILocation(line: 822, column: 62, scope: !1758, inlinedAt: !1771)
!1788 = !DILocation(line: 819, column: 10, scope: !1758, inlinedAt: !1771)
!1789 = !DILocalVariable(name: "n", arg: 1, scope: !1790, file: !146, line: 216, type: !77)
!1790 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !1791, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!32, !77}
!1793 = !{!1789}
!1794 = !DILocation(line: 216, column: 20, scope: !1790, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 823, column: 15, scope: !1758, inlinedAt: !1771)
!1796 = !DILocation(line: 218, column: 10, scope: !1790, inlinedAt: !1795)
!1797 = !DILocation(line: 823, column: 9, scope: !1758, inlinedAt: !1771)
!1798 = !DILocation(line: 824, column: 60, scope: !1758, inlinedAt: !1771)
!1799 = !DILocation(line: 826, column: 32, scope: !1758, inlinedAt: !1771)
!1800 = !DILocation(line: 826, column: 47, scope: !1758, inlinedAt: !1771)
!1801 = !DILocation(line: 824, column: 3, scope: !1758, inlinedAt: !1771)
!1802 = !DILocation(line: 827, column: 9, scope: !1758, inlinedAt: !1771)
!1803 = !DILocation(line: 802, column: 3, scope: !1747)
!1804 = !DILocation(line: 812, column: 33, scope: !1758)
!1805 = !DILocation(line: 812, column: 45, scope: !1758)
!1806 = !DILocation(line: 812, column: 62, scope: !1758)
!1807 = !DILocation(line: 813, column: 51, scope: !1758)
!1808 = !DILocation(line: 815, column: 37, scope: !1758)
!1809 = !DILocation(line: 815, column: 33, scope: !1758)
!1810 = !DILocation(line: 816, column: 11, scope: !1758)
!1811 = !DILocation(line: 816, column: 7, scope: !1758)
!1812 = !DILocation(line: 818, column: 18, scope: !1758)
!1813 = !DILocation(line: 818, column: 27, scope: !1758)
!1814 = !DILocation(line: 818, column: 24, scope: !1758)
!1815 = !DILocation(line: 818, column: 7, scope: !1758)
!1816 = !DILocation(line: 819, column: 69, scope: !1758)
!1817 = !DILocation(line: 820, column: 53, scope: !1758)
!1818 = !DILocation(line: 821, column: 49, scope: !1758)
!1819 = !DILocation(line: 822, column: 49, scope: !1758)
!1820 = !DILocation(line: 819, column: 20, scope: !1758)
!1821 = !DILocation(line: 822, column: 62, scope: !1758)
!1822 = !DILocation(line: 819, column: 10, scope: !1758)
!1823 = !DILocation(line: 216, column: 20, scope: !1790, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 823, column: 15, scope: !1758)
!1825 = !DILocation(line: 218, column: 10, scope: !1790, inlinedAt: !1824)
!1826 = !DILocation(line: 823, column: 9, scope: !1758)
!1827 = !DILocation(line: 824, column: 60, scope: !1758)
!1828 = !DILocation(line: 826, column: 32, scope: !1758)
!1829 = !DILocation(line: 826, column: 47, scope: !1758)
!1830 = !DILocation(line: 824, column: 3, scope: !1758)
!1831 = !DILocation(line: 827, column: 9, scope: !1758)
!1832 = !DILocation(line: 828, column: 7, scope: !1758)
!1833 = !DILocation(line: 829, column: 11, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1758, file: !83, line: 828, column: 7)
!1835 = !{!1836, !1836, i64 0}
!1836 = !{!"long", !581, i64 0}
!1837 = !DILocation(line: 829, column: 5, scope: !1834)
!1838 = !DILocation(line: 830, column: 3, scope: !1758)
!1839 = distinct !DISubprogram(name: "quotearg_free", scope: !83, file: !83, line: 848, type: !688, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1840)
!1840 = !{!1841, !1842}
!1841 = !DILocalVariable(name: "sv", scope: !1839, file: !83, line: 850, type: !109)
!1842 = !DILocalVariable(name: "i", scope: !1839, file: !83, line: 851, type: !25)
!1843 = !DILocation(line: 850, column: 24, scope: !1839)
!1844 = !DILocation(line: 850, column: 19, scope: !1839)
!1845 = !DILocation(line: 851, column: 7, scope: !1839)
!1846 = !DILocation(line: 852, column: 19, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !83, line: 852, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1839, file: !83, line: 852, column: 3)
!1849 = !DILocation(line: 852, column: 17, scope: !1847)
!1850 = !DILocation(line: 852, column: 3, scope: !1848)
!1851 = !DILocation(line: 853, column: 17, scope: !1847)
!1852 = !{!1853, !580, i64 8}
!1853 = !{!"slotvec", !1836, i64 0, !580, i64 8}
!1854 = !DILocation(line: 853, column: 5, scope: !1847)
!1855 = !DILocation(line: 852, column: 28, scope: !1847)
!1856 = distinct !{!1856, !1850, !1857}
!1857 = !DILocation(line: 853, column: 20, scope: !1848)
!1858 = !DILocation(line: 854, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1839, file: !83, line: 854, column: 7)
!1860 = !DILocation(line: 854, column: 17, scope: !1859)
!1861 = !DILocation(line: 854, column: 7, scope: !1839)
!1862 = !DILocation(line: 856, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !83, line: 855, column: 5)
!1864 = !DILocation(line: 857, column: 21, scope: !1863)
!1865 = !{!1853, !1836, i64 0}
!1866 = !DILocation(line: 858, column: 20, scope: !1863)
!1867 = !DILocation(line: 859, column: 5, scope: !1863)
!1868 = !DILocation(line: 860, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1839, file: !83, line: 860, column: 7)
!1870 = !DILocation(line: 860, column: 7, scope: !1839)
!1871 = !DILocation(line: 862, column: 13, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !83, line: 861, column: 5)
!1873 = !DILocation(line: 862, column: 7, scope: !1872)
!1874 = !DILocation(line: 863, column: 15, scope: !1872)
!1875 = !DILocation(line: 864, column: 5, scope: !1872)
!1876 = !DILocation(line: 865, column: 10, scope: !1839)
!1877 = !DILocation(line: 866, column: 1, scope: !1839)
!1878 = distinct !DISubprogram(name: "quotearg_n", scope: !83, file: !83, line: 931, type: !1879, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!32, !25, !6}
!1881 = !{!1882, !1883}
!1882 = !DILocalVariable(name: "n", arg: 1, scope: !1878, file: !83, line: 931, type: !25)
!1883 = !DILocalVariable(name: "arg", arg: 2, scope: !1878, file: !83, line: 931, type: !6)
!1884 = !DILocation(line: 931, column: 17, scope: !1878)
!1885 = !DILocation(line: 931, column: 32, scope: !1878)
!1886 = !DILocation(line: 933, column: 10, scope: !1878)
!1887 = !DILocation(line: 933, column: 3, scope: !1878)
!1888 = distinct !DISubprogram(name: "quotearg_n_options", scope: !83, file: !83, line: 877, type: !1889, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!32, !25, !6, !77, !783}
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1901, !1902, !1904, !1905, !1906}
!1892 = !DILocalVariable(name: "n", arg: 1, scope: !1888, file: !83, line: 877, type: !25)
!1893 = !DILocalVariable(name: "arg", arg: 2, scope: !1888, file: !83, line: 877, type: !6)
!1894 = !DILocalVariable(name: "argsize", arg: 3, scope: !1888, file: !83, line: 877, type: !77)
!1895 = !DILocalVariable(name: "options", arg: 4, scope: !1888, file: !83, line: 878, type: !783)
!1896 = !DILocalVariable(name: "e", scope: !1888, file: !83, line: 880, type: !25)
!1897 = !DILocalVariable(name: "sv", scope: !1888, file: !83, line: 882, type: !109)
!1898 = !DILocalVariable(name: "preallocated", scope: !1899, file: !83, line: 889, type: !17)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !83, line: 888, column: 5)
!1900 = distinct !DILexicalBlock(scope: !1888, file: !83, line: 887, column: 7)
!1901 = !DILocalVariable(name: "nmax", scope: !1899, file: !83, line: 890, type: !25)
!1902 = !DILocalVariable(name: "size", scope: !1903, file: !83, line: 903, type: !77)
!1903 = distinct !DILexicalBlock(scope: !1888, file: !83, line: 902, column: 3)
!1904 = !DILocalVariable(name: "val", scope: !1903, file: !83, line: 904, type: !32)
!1905 = !DILocalVariable(name: "flags", scope: !1903, file: !83, line: 906, type: !25)
!1906 = !DILocalVariable(name: "qsize", scope: !1903, file: !83, line: 907, type: !77)
!1907 = !DILocation(line: 877, column: 25, scope: !1888)
!1908 = !DILocation(line: 877, column: 40, scope: !1888)
!1909 = !DILocation(line: 877, column: 52, scope: !1888)
!1910 = !DILocation(line: 878, column: 51, scope: !1888)
!1911 = !DILocation(line: 880, column: 11, scope: !1888)
!1912 = !DILocation(line: 880, column: 7, scope: !1888)
!1913 = !DILocation(line: 882, column: 24, scope: !1888)
!1914 = !DILocation(line: 882, column: 19, scope: !1888)
!1915 = !DILocation(line: 884, column: 9, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1888, file: !83, line: 884, column: 7)
!1917 = !DILocation(line: 884, column: 7, scope: !1888)
!1918 = !DILocation(line: 885, column: 5, scope: !1916)
!1919 = !DILocation(line: 887, column: 7, scope: !1900)
!1920 = !DILocation(line: 887, column: 14, scope: !1900)
!1921 = !DILocation(line: 887, column: 7, scope: !1888)
!1922 = !DILocation(line: 889, column: 31, scope: !1899)
!1923 = !DILocation(line: 890, column: 11, scope: !1899)
!1924 = !DILocation(line: 892, column: 16, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1899, file: !83, line: 892, column: 11)
!1926 = !DILocation(line: 892, column: 11, scope: !1899)
!1927 = !DILocation(line: 893, column: 9, scope: !1925)
!1928 = !DILocation(line: 895, column: 32, scope: !1899)
!1929 = !DILocation(line: 895, column: 61, scope: !1899)
!1930 = !DILocation(line: 895, column: 58, scope: !1899)
!1931 = !DILocation(line: 895, column: 66, scope: !1899)
!1932 = !DILocation(line: 895, column: 22, scope: !1899)
!1933 = !DILocation(line: 895, column: 15, scope: !1899)
!1934 = !DILocation(line: 896, column: 11, scope: !1899)
!1935 = !DILocation(line: 897, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1899, file: !83, line: 896, column: 11)
!1937 = !{i64 0, i64 8, !1835, i64 8, i64 8, !579}
!1938 = !DILocation(line: 897, column: 9, scope: !1936)
!1939 = !DILocation(line: 898, column: 20, scope: !1899)
!1940 = !DILocation(line: 898, column: 18, scope: !1899)
!1941 = !DILocation(line: 898, column: 7, scope: !1899)
!1942 = !DILocation(line: 898, column: 38, scope: !1899)
!1943 = !DILocation(line: 898, column: 31, scope: !1899)
!1944 = !DILocation(line: 898, column: 48, scope: !1899)
!1945 = !DILocation(line: 899, column: 14, scope: !1899)
!1946 = !DILocation(line: 900, column: 5, scope: !1899)
!1947 = !DILocation(line: 0, scope: !1888)
!1948 = !DILocation(line: 903, column: 19, scope: !1903)
!1949 = !DILocation(line: 903, column: 25, scope: !1903)
!1950 = !DILocation(line: 903, column: 12, scope: !1903)
!1951 = !DILocation(line: 904, column: 23, scope: !1903)
!1952 = !DILocation(line: 904, column: 11, scope: !1903)
!1953 = !DILocation(line: 906, column: 26, scope: !1903)
!1954 = !DILocation(line: 906, column: 32, scope: !1903)
!1955 = !DILocation(line: 906, column: 9, scope: !1903)
!1956 = !DILocation(line: 908, column: 55, scope: !1903)
!1957 = !DILocation(line: 909, column: 46, scope: !1903)
!1958 = !DILocation(line: 910, column: 55, scope: !1903)
!1959 = !DILocation(line: 911, column: 55, scope: !1903)
!1960 = !DILocation(line: 907, column: 20, scope: !1903)
!1961 = !DILocation(line: 907, column: 12, scope: !1903)
!1962 = !DILocation(line: 913, column: 14, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1903, file: !83, line: 913, column: 9)
!1964 = !DILocation(line: 913, column: 9, scope: !1903)
!1965 = !DILocation(line: 915, column: 35, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !83, line: 914, column: 7)
!1967 = !DILocation(line: 915, column: 20, scope: !1966)
!1968 = !DILocation(line: 916, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !83, line: 916, column: 13)
!1970 = !DILocation(line: 916, column: 13, scope: !1966)
!1971 = !DILocation(line: 917, column: 11, scope: !1969)
!1972 = !DILocation(line: 216, column: 20, scope: !1790, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 918, column: 27, scope: !1966)
!1974 = !DILocation(line: 218, column: 10, scope: !1790, inlinedAt: !1973)
!1975 = !DILocation(line: 918, column: 19, scope: !1966)
!1976 = !DILocation(line: 919, column: 69, scope: !1966)
!1977 = !DILocation(line: 921, column: 44, scope: !1966)
!1978 = !DILocation(line: 922, column: 44, scope: !1966)
!1979 = !DILocation(line: 919, column: 9, scope: !1966)
!1980 = !DILocation(line: 923, column: 7, scope: !1966)
!1981 = !DILocation(line: 0, scope: !1903)
!1982 = !DILocation(line: 925, column: 11, scope: !1903)
!1983 = !DILocation(line: 926, column: 5, scope: !1903)
!1984 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !83, file: !83, line: 937, type: !1985, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!32, !25, !6, !77}
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "n", arg: 1, scope: !1984, file: !83, line: 937, type: !25)
!1989 = !DILocalVariable(name: "arg", arg: 2, scope: !1984, file: !83, line: 937, type: !6)
!1990 = !DILocalVariable(name: "argsize", arg: 3, scope: !1984, file: !83, line: 937, type: !77)
!1991 = !DILocation(line: 937, column: 21, scope: !1984)
!1992 = !DILocation(line: 937, column: 36, scope: !1984)
!1993 = !DILocation(line: 937, column: 48, scope: !1984)
!1994 = !DILocation(line: 939, column: 10, scope: !1984)
!1995 = !DILocation(line: 939, column: 3, scope: !1984)
!1996 = distinct !DISubprogram(name: "quotearg", scope: !83, file: !83, line: 943, type: !1997, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!32, !6}
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "arg", arg: 1, scope: !1996, file: !83, line: 943, type: !6)
!2001 = !DILocation(line: 943, column: 23, scope: !1996)
!2002 = !DILocation(line: 931, column: 17, scope: !1878, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 945, column: 10, scope: !1996)
!2004 = !DILocation(line: 931, column: 32, scope: !1878, inlinedAt: !2003)
!2005 = !DILocation(line: 933, column: 10, scope: !1878, inlinedAt: !2003)
!2006 = !DILocation(line: 945, column: 3, scope: !1996)
!2007 = distinct !DISubprogram(name: "quotearg_mem", scope: !83, file: !83, line: 949, type: !2008, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!32, !6, !77}
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "arg", arg: 1, scope: !2007, file: !83, line: 949, type: !6)
!2012 = !DILocalVariable(name: "argsize", arg: 2, scope: !2007, file: !83, line: 949, type: !77)
!2013 = !DILocation(line: 949, column: 27, scope: !2007)
!2014 = !DILocation(line: 949, column: 39, scope: !2007)
!2015 = !DILocation(line: 937, column: 21, scope: !1984, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 951, column: 10, scope: !2007)
!2017 = !DILocation(line: 937, column: 36, scope: !1984, inlinedAt: !2016)
!2018 = !DILocation(line: 937, column: 48, scope: !1984, inlinedAt: !2016)
!2019 = !DILocation(line: 939, column: 10, scope: !1984, inlinedAt: !2016)
!2020 = !DILocation(line: 951, column: 3, scope: !2007)
!2021 = distinct !DISubprogram(name: "quotearg_n_style", scope: !83, file: !83, line: 955, type: !2022, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!32, !25, !40, !6}
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "n", arg: 1, scope: !2021, file: !83, line: 955, type: !25)
!2026 = !DILocalVariable(name: "s", arg: 2, scope: !2021, file: !83, line: 955, type: !40)
!2027 = !DILocalVariable(name: "arg", arg: 3, scope: !2021, file: !83, line: 955, type: !6)
!2028 = !DILocalVariable(name: "o", scope: !2021, file: !83, line: 957, type: !784)
!2029 = !DILocation(line: 955, column: 23, scope: !2021)
!2030 = !DILocation(line: 955, column: 45, scope: !2021)
!2031 = !DILocation(line: 955, column: 60, scope: !2021)
!2032 = !DILocation(line: 957, column: 3, scope: !2021)
!2033 = !DILocation(line: 957, column: 32, scope: !2021)
!2034 = !DILocalVariable(name: "style", arg: 1, scope: !2035, file: !83, line: 193, type: !40)
!2035 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !83, file: !83, line: 193, type: !2036, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!90, !40}
!2038 = !{!2034, !2039}
!2039 = !DILocalVariable(name: "o", scope: !2035, file: !83, line: 195, type: !90)
!2040 = !DILocation(line: 193, column: 48, scope: !2035, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 957, column: 36, scope: !2021)
!2042 = !DILocation(line: 195, column: 26, scope: !2035, inlinedAt: !2041)
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"quoting_options_from_style: argument 0"}
!2045 = distinct !{!2045, !"quoting_options_from_style"}
!2046 = !DILocation(line: 196, column: 13, scope: !2047, inlinedAt: !2041)
!2047 = distinct !DILexicalBlock(scope: !2035, file: !83, line: 196, column: 7)
!2048 = !DILocation(line: 196, column: 7, scope: !2035, inlinedAt: !2041)
!2049 = !DILocation(line: 197, column: 5, scope: !2047, inlinedAt: !2041)
!2050 = !DILocation(line: 198, column: 5, scope: !2035, inlinedAt: !2041)
!2051 = !DILocation(line: 198, column: 11, scope: !2035, inlinedAt: !2041)
!2052 = !DILocation(line: 958, column: 10, scope: !2021)
!2053 = !DILocation(line: 959, column: 1, scope: !2021)
!2054 = !DILocation(line: 958, column: 3, scope: !2021)
!2055 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !83, file: !83, line: 962, type: !2056, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!32, !25, !40, !6, !77}
!2058 = !{!2059, !2060, !2061, !2062, !2063}
!2059 = !DILocalVariable(name: "n", arg: 1, scope: !2055, file: !83, line: 962, type: !25)
!2060 = !DILocalVariable(name: "s", arg: 2, scope: !2055, file: !83, line: 962, type: !40)
!2061 = !DILocalVariable(name: "arg", arg: 3, scope: !2055, file: !83, line: 963, type: !6)
!2062 = !DILocalVariable(name: "argsize", arg: 4, scope: !2055, file: !83, line: 963, type: !77)
!2063 = !DILocalVariable(name: "o", scope: !2055, file: !83, line: 965, type: !784)
!2064 = !DILocation(line: 962, column: 27, scope: !2055)
!2065 = !DILocation(line: 962, column: 49, scope: !2055)
!2066 = !DILocation(line: 963, column: 35, scope: !2055)
!2067 = !DILocation(line: 963, column: 47, scope: !2055)
!2068 = !DILocation(line: 965, column: 3, scope: !2055)
!2069 = !DILocation(line: 965, column: 32, scope: !2055)
!2070 = !DILocation(line: 193, column: 48, scope: !2035, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 965, column: 36, scope: !2055)
!2072 = !DILocation(line: 195, column: 26, scope: !2035, inlinedAt: !2071)
!2073 = !{!2074}
!2074 = distinct !{!2074, !2075, !"quoting_options_from_style: argument 0"}
!2075 = distinct !{!2075, !"quoting_options_from_style"}
!2076 = !DILocation(line: 196, column: 13, scope: !2047, inlinedAt: !2071)
!2077 = !DILocation(line: 196, column: 7, scope: !2035, inlinedAt: !2071)
!2078 = !DILocation(line: 197, column: 5, scope: !2047, inlinedAt: !2071)
!2079 = !DILocation(line: 198, column: 5, scope: !2035, inlinedAt: !2071)
!2080 = !DILocation(line: 198, column: 11, scope: !2035, inlinedAt: !2071)
!2081 = !DILocation(line: 966, column: 10, scope: !2055)
!2082 = !DILocation(line: 967, column: 1, scope: !2055)
!2083 = !DILocation(line: 966, column: 3, scope: !2055)
!2084 = distinct !DISubprogram(name: "quotearg_style", scope: !83, file: !83, line: 970, type: !2085, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!32, !40, !6}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "s", arg: 1, scope: !2084, file: !83, line: 970, type: !40)
!2089 = !DILocalVariable(name: "arg", arg: 2, scope: !2084, file: !83, line: 970, type: !6)
!2090 = !DILocation(line: 970, column: 36, scope: !2084)
!2091 = !DILocation(line: 970, column: 51, scope: !2084)
!2092 = !DILocation(line: 955, column: 23, scope: !2021, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 972, column: 10, scope: !2084)
!2094 = !DILocation(line: 955, column: 45, scope: !2021, inlinedAt: !2093)
!2095 = !DILocation(line: 955, column: 60, scope: !2021, inlinedAt: !2093)
!2096 = !DILocation(line: 957, column: 3, scope: !2021, inlinedAt: !2093)
!2097 = !DILocation(line: 957, column: 32, scope: !2021, inlinedAt: !2093)
!2098 = !DILocation(line: 193, column: 48, scope: !2035, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 957, column: 36, scope: !2021, inlinedAt: !2093)
!2100 = !DILocation(line: 195, column: 26, scope: !2035, inlinedAt: !2099)
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"quoting_options_from_style: argument 0"}
!2103 = distinct !{!2103, !"quoting_options_from_style"}
!2104 = !DILocation(line: 196, column: 13, scope: !2047, inlinedAt: !2099)
!2105 = !DILocation(line: 196, column: 7, scope: !2035, inlinedAt: !2099)
!2106 = !DILocation(line: 197, column: 5, scope: !2047, inlinedAt: !2099)
!2107 = !DILocation(line: 198, column: 5, scope: !2035, inlinedAt: !2099)
!2108 = !DILocation(line: 198, column: 11, scope: !2035, inlinedAt: !2099)
!2109 = !DILocation(line: 958, column: 10, scope: !2021, inlinedAt: !2093)
!2110 = !DILocation(line: 959, column: 1, scope: !2021, inlinedAt: !2093)
!2111 = !DILocation(line: 972, column: 3, scope: !2084)
!2112 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !83, file: !83, line: 976, type: !2113, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!32, !40, !6, !77}
!2115 = !{!2116, !2117, !2118}
!2116 = !DILocalVariable(name: "s", arg: 1, scope: !2112, file: !83, line: 976, type: !40)
!2117 = !DILocalVariable(name: "arg", arg: 2, scope: !2112, file: !83, line: 976, type: !6)
!2118 = !DILocalVariable(name: "argsize", arg: 3, scope: !2112, file: !83, line: 976, type: !77)
!2119 = !DILocation(line: 976, column: 40, scope: !2112)
!2120 = !DILocation(line: 976, column: 55, scope: !2112)
!2121 = !DILocation(line: 976, column: 67, scope: !2112)
!2122 = !DILocation(line: 962, column: 27, scope: !2055, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 978, column: 10, scope: !2112)
!2124 = !DILocation(line: 962, column: 49, scope: !2055, inlinedAt: !2123)
!2125 = !DILocation(line: 963, column: 35, scope: !2055, inlinedAt: !2123)
!2126 = !DILocation(line: 963, column: 47, scope: !2055, inlinedAt: !2123)
!2127 = !DILocation(line: 965, column: 3, scope: !2055, inlinedAt: !2123)
!2128 = !DILocation(line: 965, column: 32, scope: !2055, inlinedAt: !2123)
!2129 = !DILocation(line: 193, column: 48, scope: !2035, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 965, column: 36, scope: !2055, inlinedAt: !2123)
!2131 = !DILocation(line: 195, column: 26, scope: !2035, inlinedAt: !2130)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 196, column: 13, scope: !2047, inlinedAt: !2130)
!2136 = !DILocation(line: 196, column: 7, scope: !2035, inlinedAt: !2130)
!2137 = !DILocation(line: 197, column: 5, scope: !2047, inlinedAt: !2130)
!2138 = !DILocation(line: 198, column: 5, scope: !2035, inlinedAt: !2130)
!2139 = !DILocation(line: 198, column: 11, scope: !2035, inlinedAt: !2130)
!2140 = !DILocation(line: 966, column: 10, scope: !2055, inlinedAt: !2123)
!2141 = !DILocation(line: 967, column: 1, scope: !2055, inlinedAt: !2123)
!2142 = !DILocation(line: 978, column: 3, scope: !2112)
!2143 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !83, file: !83, line: 982, type: !2144, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!32, !6, !77, !8}
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "arg", arg: 1, scope: !2143, file: !83, line: 982, type: !6)
!2148 = !DILocalVariable(name: "argsize", arg: 2, scope: !2143, file: !83, line: 982, type: !77)
!2149 = !DILocalVariable(name: "ch", arg: 3, scope: !2143, file: !83, line: 982, type: !8)
!2150 = !DILocalVariable(name: "options", scope: !2143, file: !83, line: 984, type: !90)
!2151 = !DILocation(line: 982, column: 32, scope: !2143)
!2152 = !DILocation(line: 982, column: 44, scope: !2143)
!2153 = !DILocation(line: 982, column: 58, scope: !2143)
!2154 = !DILocation(line: 984, column: 3, scope: !2143)
!2155 = !DILocation(line: 985, column: 13, scope: !2143)
!2156 = !{i64 0, i64 4, !1012, i64 4, i64 4, !702, i64 8, i64 32, !1012, i64 40, i64 8, !579, i64 48, i64 8, !579}
!2157 = !DILocation(line: 984, column: 26, scope: !2143)
!2158 = !DILocation(line: 152, column: 43, scope: !805, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 986, column: 3, scope: !2143)
!2160 = !DILocation(line: 152, column: 51, scope: !805, inlinedAt: !2159)
!2161 = !DILocation(line: 152, column: 58, scope: !805, inlinedAt: !2159)
!2162 = !DILocation(line: 154, column: 17, scope: !805, inlinedAt: !2159)
!2163 = !DILocation(line: 156, column: 62, scope: !805, inlinedAt: !2159)
!2164 = !DILocation(line: 156, column: 57, scope: !805, inlinedAt: !2159)
!2165 = !DILocation(line: 155, column: 17, scope: !805, inlinedAt: !2159)
!2166 = !DILocation(line: 157, column: 15, scope: !805, inlinedAt: !2159)
!2167 = !DILocation(line: 157, column: 7, scope: !805, inlinedAt: !2159)
!2168 = !DILocation(line: 158, column: 12, scope: !805, inlinedAt: !2159)
!2169 = !DILocation(line: 158, column: 15, scope: !805, inlinedAt: !2159)
!2170 = !DILocation(line: 158, column: 25, scope: !805, inlinedAt: !2159)
!2171 = !DILocation(line: 158, column: 7, scope: !805, inlinedAt: !2159)
!2172 = !DILocation(line: 159, column: 18, scope: !805, inlinedAt: !2159)
!2173 = !DILocation(line: 159, column: 23, scope: !805, inlinedAt: !2159)
!2174 = !DILocation(line: 159, column: 6, scope: !805, inlinedAt: !2159)
!2175 = !DILocation(line: 987, column: 10, scope: !2143)
!2176 = !DILocation(line: 988, column: 1, scope: !2143)
!2177 = !DILocation(line: 987, column: 3, scope: !2143)
!2178 = distinct !DISubprogram(name: "quotearg_char", scope: !83, file: !83, line: 991, type: !2179, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!32, !6, !8}
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "arg", arg: 1, scope: !2178, file: !83, line: 991, type: !6)
!2183 = !DILocalVariable(name: "ch", arg: 2, scope: !2178, file: !83, line: 991, type: !8)
!2184 = !DILocation(line: 991, column: 28, scope: !2178)
!2185 = !DILocation(line: 991, column: 38, scope: !2178)
!2186 = !DILocation(line: 982, column: 32, scope: !2143, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 993, column: 10, scope: !2178)
!2188 = !DILocation(line: 982, column: 44, scope: !2143, inlinedAt: !2187)
!2189 = !DILocation(line: 982, column: 58, scope: !2143, inlinedAt: !2187)
!2190 = !DILocation(line: 984, column: 3, scope: !2143, inlinedAt: !2187)
!2191 = !DILocation(line: 985, column: 13, scope: !2143, inlinedAt: !2187)
!2192 = !DILocation(line: 984, column: 26, scope: !2143, inlinedAt: !2187)
!2193 = !DILocation(line: 152, column: 43, scope: !805, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 986, column: 3, scope: !2143, inlinedAt: !2187)
!2195 = !DILocation(line: 152, column: 51, scope: !805, inlinedAt: !2194)
!2196 = !DILocation(line: 152, column: 58, scope: !805, inlinedAt: !2194)
!2197 = !DILocation(line: 154, column: 17, scope: !805, inlinedAt: !2194)
!2198 = !DILocation(line: 156, column: 62, scope: !805, inlinedAt: !2194)
!2199 = !DILocation(line: 156, column: 57, scope: !805, inlinedAt: !2194)
!2200 = !DILocation(line: 155, column: 17, scope: !805, inlinedAt: !2194)
!2201 = !DILocation(line: 157, column: 15, scope: !805, inlinedAt: !2194)
!2202 = !DILocation(line: 157, column: 7, scope: !805, inlinedAt: !2194)
!2203 = !DILocation(line: 158, column: 12, scope: !805, inlinedAt: !2194)
!2204 = !DILocation(line: 158, column: 15, scope: !805, inlinedAt: !2194)
!2205 = !DILocation(line: 158, column: 25, scope: !805, inlinedAt: !2194)
!2206 = !DILocation(line: 158, column: 7, scope: !805, inlinedAt: !2194)
!2207 = !DILocation(line: 159, column: 18, scope: !805, inlinedAt: !2194)
!2208 = !DILocation(line: 159, column: 23, scope: !805, inlinedAt: !2194)
!2209 = !DILocation(line: 159, column: 6, scope: !805, inlinedAt: !2194)
!2210 = !DILocation(line: 987, column: 10, scope: !2143, inlinedAt: !2187)
!2211 = !DILocation(line: 988, column: 1, scope: !2143, inlinedAt: !2187)
!2212 = !DILocation(line: 993, column: 3, scope: !2178)
!2213 = distinct !DISubprogram(name: "quotearg_colon", scope: !83, file: !83, line: 997, type: !1997, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "arg", arg: 1, scope: !2213, file: !83, line: 997, type: !6)
!2216 = !DILocation(line: 997, column: 29, scope: !2213)
!2217 = !DILocation(line: 991, column: 28, scope: !2178, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 999, column: 10, scope: !2213)
!2219 = !DILocation(line: 991, column: 38, scope: !2178, inlinedAt: !2218)
!2220 = !DILocation(line: 982, column: 32, scope: !2143, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 993, column: 10, scope: !2178, inlinedAt: !2218)
!2222 = !DILocation(line: 982, column: 44, scope: !2143, inlinedAt: !2221)
!2223 = !DILocation(line: 982, column: 58, scope: !2143, inlinedAt: !2221)
!2224 = !DILocation(line: 984, column: 3, scope: !2143, inlinedAt: !2221)
!2225 = !DILocation(line: 985, column: 13, scope: !2143, inlinedAt: !2221)
!2226 = !DILocation(line: 984, column: 26, scope: !2143, inlinedAt: !2221)
!2227 = !DILocation(line: 152, column: 43, scope: !805, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 986, column: 3, scope: !2143, inlinedAt: !2221)
!2229 = !DILocation(line: 152, column: 51, scope: !805, inlinedAt: !2228)
!2230 = !DILocation(line: 152, column: 58, scope: !805, inlinedAt: !2228)
!2231 = !DILocation(line: 154, column: 17, scope: !805, inlinedAt: !2228)
!2232 = !DILocation(line: 156, column: 57, scope: !805, inlinedAt: !2228)
!2233 = !DILocation(line: 155, column: 17, scope: !805, inlinedAt: !2228)
!2234 = !DILocation(line: 157, column: 7, scope: !805, inlinedAt: !2228)
!2235 = !DILocation(line: 158, column: 12, scope: !805, inlinedAt: !2228)
!2236 = !DILocation(line: 159, column: 6, scope: !805, inlinedAt: !2228)
!2237 = !DILocation(line: 987, column: 10, scope: !2143, inlinedAt: !2221)
!2238 = !DILocation(line: 988, column: 1, scope: !2143, inlinedAt: !2221)
!2239 = !DILocation(line: 999, column: 3, scope: !2213)
!2240 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !83, file: !83, line: 1003, type: !2008, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "arg", arg: 1, scope: !2240, file: !83, line: 1003, type: !6)
!2243 = !DILocalVariable(name: "argsize", arg: 2, scope: !2240, file: !83, line: 1003, type: !77)
!2244 = !DILocation(line: 1003, column: 33, scope: !2240)
!2245 = !DILocation(line: 1003, column: 45, scope: !2240)
!2246 = !DILocation(line: 982, column: 32, scope: !2143, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 1005, column: 10, scope: !2240)
!2248 = !DILocation(line: 982, column: 44, scope: !2143, inlinedAt: !2247)
!2249 = !DILocation(line: 982, column: 58, scope: !2143, inlinedAt: !2247)
!2250 = !DILocation(line: 984, column: 3, scope: !2143, inlinedAt: !2247)
!2251 = !DILocation(line: 985, column: 13, scope: !2143, inlinedAt: !2247)
!2252 = !DILocation(line: 984, column: 26, scope: !2143, inlinedAt: !2247)
!2253 = !DILocation(line: 152, column: 43, scope: !805, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 986, column: 3, scope: !2143, inlinedAt: !2247)
!2255 = !DILocation(line: 152, column: 51, scope: !805, inlinedAt: !2254)
!2256 = !DILocation(line: 152, column: 58, scope: !805, inlinedAt: !2254)
!2257 = !DILocation(line: 154, column: 17, scope: !805, inlinedAt: !2254)
!2258 = !DILocation(line: 156, column: 57, scope: !805, inlinedAt: !2254)
!2259 = !DILocation(line: 155, column: 17, scope: !805, inlinedAt: !2254)
!2260 = !DILocation(line: 157, column: 7, scope: !805, inlinedAt: !2254)
!2261 = !DILocation(line: 158, column: 12, scope: !805, inlinedAt: !2254)
!2262 = !DILocation(line: 159, column: 6, scope: !805, inlinedAt: !2254)
!2263 = !DILocation(line: 987, column: 10, scope: !2143, inlinedAt: !2247)
!2264 = !DILocation(line: 988, column: 1, scope: !2143, inlinedAt: !2247)
!2265 = !DILocation(line: 1005, column: 3, scope: !2240)
!2266 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !83, file: !83, line: 1009, type: !2022, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2267)
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2266, file: !83, line: 1009, type: !25)
!2269 = !DILocalVariable(name: "s", arg: 2, scope: !2266, file: !83, line: 1009, type: !40)
!2270 = !DILocalVariable(name: "arg", arg: 3, scope: !2266, file: !83, line: 1009, type: !6)
!2271 = !DILocalVariable(name: "options", scope: !2266, file: !83, line: 1011, type: !90)
!2272 = !DILocation(line: 195, column: 26, scope: !2035, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 1012, column: 13, scope: !2266)
!2274 = !DILocation(line: 1009, column: 29, scope: !2266)
!2275 = !DILocation(line: 1009, column: 51, scope: !2266)
!2276 = !DILocation(line: 1009, column: 66, scope: !2266)
!2277 = !DILocation(line: 1011, column: 3, scope: !2266)
!2278 = !DILocation(line: 1012, column: 13, scope: !2266)
!2279 = !DILocation(line: 193, column: 48, scope: !2035, inlinedAt: !2273)
!2280 = !{!2281}
!2281 = distinct !{!2281, !2282, !"quoting_options_from_style: argument 0"}
!2282 = distinct !{!2282, !"quoting_options_from_style"}
!2283 = !DILocation(line: 196, column: 13, scope: !2047, inlinedAt: !2273)
!2284 = !DILocation(line: 196, column: 7, scope: !2035, inlinedAt: !2273)
!2285 = !DILocation(line: 197, column: 5, scope: !2047, inlinedAt: !2273)
!2286 = !DILocation(line: 1011, column: 26, scope: !2266)
!2287 = !DILocation(line: 152, column: 43, scope: !805, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1013, column: 3, scope: !2266)
!2289 = !DILocation(line: 152, column: 51, scope: !805, inlinedAt: !2288)
!2290 = !DILocation(line: 152, column: 58, scope: !805, inlinedAt: !2288)
!2291 = !DILocation(line: 154, column: 17, scope: !805, inlinedAt: !2288)
!2292 = !DILocation(line: 156, column: 57, scope: !805, inlinedAt: !2288)
!2293 = !DILocation(line: 155, column: 17, scope: !805, inlinedAt: !2288)
!2294 = !DILocation(line: 157, column: 7, scope: !805, inlinedAt: !2288)
!2295 = !DILocation(line: 158, column: 12, scope: !805, inlinedAt: !2288)
!2296 = !DILocation(line: 159, column: 6, scope: !805, inlinedAt: !2288)
!2297 = !DILocation(line: 1014, column: 10, scope: !2266)
!2298 = !DILocation(line: 1015, column: 1, scope: !2266)
!2299 = !DILocation(line: 1014, column: 3, scope: !2266)
!2300 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !83, file: !83, line: 1018, type: !2301, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!32, !25, !6, !6, !6}
!2303 = !{!2304, !2305, !2306, !2307}
!2304 = !DILocalVariable(name: "n", arg: 1, scope: !2300, file: !83, line: 1018, type: !25)
!2305 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2300, file: !83, line: 1018, type: !6)
!2306 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2300, file: !83, line: 1019, type: !6)
!2307 = !DILocalVariable(name: "arg", arg: 4, scope: !2300, file: !83, line: 1019, type: !6)
!2308 = !DILocation(line: 1018, column: 24, scope: !2300)
!2309 = !DILocation(line: 1018, column: 39, scope: !2300)
!2310 = !DILocation(line: 1019, column: 32, scope: !2300)
!2311 = !DILocation(line: 1019, column: 57, scope: !2300)
!2312 = !DILocalVariable(name: "n", arg: 1, scope: !2313, file: !83, line: 1026, type: !25)
!2313 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !83, file: !83, line: 1026, type: !2314, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!32, !25, !6, !6, !6, !77}
!2316 = !{!2312, !2317, !2318, !2319, !2320, !2321}
!2317 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2313, file: !83, line: 1026, type: !6)
!2318 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2313, file: !83, line: 1027, type: !6)
!2319 = !DILocalVariable(name: "arg", arg: 4, scope: !2313, file: !83, line: 1028, type: !6)
!2320 = !DILocalVariable(name: "argsize", arg: 5, scope: !2313, file: !83, line: 1028, type: !77)
!2321 = !DILocalVariable(name: "o", scope: !2313, file: !83, line: 1030, type: !90)
!2322 = !DILocation(line: 1026, column: 28, scope: !2313, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 1021, column: 10, scope: !2300)
!2324 = !DILocation(line: 1026, column: 43, scope: !2313, inlinedAt: !2323)
!2325 = !DILocation(line: 1027, column: 36, scope: !2313, inlinedAt: !2323)
!2326 = !DILocation(line: 1028, column: 36, scope: !2313, inlinedAt: !2323)
!2327 = !DILocation(line: 1028, column: 48, scope: !2313, inlinedAt: !2323)
!2328 = !DILocation(line: 1030, column: 3, scope: !2313, inlinedAt: !2323)
!2329 = !DILocation(line: 1030, column: 30, scope: !2313, inlinedAt: !2323)
!2330 = !DILocation(line: 1030, column: 26, scope: !2313, inlinedAt: !2323)
!2331 = !DILocation(line: 179, column: 45, scope: !854, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 1031, column: 3, scope: !2313, inlinedAt: !2323)
!2333 = !DILocation(line: 180, column: 33, scope: !854, inlinedAt: !2332)
!2334 = !DILocation(line: 180, column: 57, scope: !854, inlinedAt: !2332)
!2335 = !DILocation(line: 184, column: 6, scope: !854, inlinedAt: !2332)
!2336 = !DILocation(line: 184, column: 12, scope: !854, inlinedAt: !2332)
!2337 = !DILocation(line: 185, column: 8, scope: !870, inlinedAt: !2332)
!2338 = !DILocation(line: 185, column: 23, scope: !870, inlinedAt: !2332)
!2339 = !DILocation(line: 185, column: 19, scope: !870, inlinedAt: !2332)
!2340 = !DILocation(line: 186, column: 5, scope: !870, inlinedAt: !2332)
!2341 = !DILocation(line: 187, column: 6, scope: !854, inlinedAt: !2332)
!2342 = !DILocation(line: 187, column: 17, scope: !854, inlinedAt: !2332)
!2343 = !DILocation(line: 188, column: 6, scope: !854, inlinedAt: !2332)
!2344 = !DILocation(line: 188, column: 18, scope: !854, inlinedAt: !2332)
!2345 = !DILocation(line: 1032, column: 10, scope: !2313, inlinedAt: !2323)
!2346 = !DILocation(line: 1033, column: 1, scope: !2313, inlinedAt: !2323)
!2347 = !DILocation(line: 1021, column: 3, scope: !2300)
!2348 = !DILocation(line: 1026, column: 28, scope: !2313)
!2349 = !DILocation(line: 1026, column: 43, scope: !2313)
!2350 = !DILocation(line: 1027, column: 36, scope: !2313)
!2351 = !DILocation(line: 1028, column: 36, scope: !2313)
!2352 = !DILocation(line: 1028, column: 48, scope: !2313)
!2353 = !DILocation(line: 1030, column: 3, scope: !2313)
!2354 = !DILocation(line: 1030, column: 30, scope: !2313)
!2355 = !DILocation(line: 1030, column: 26, scope: !2313)
!2356 = !DILocation(line: 179, column: 45, scope: !854, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 1031, column: 3, scope: !2313)
!2358 = !DILocation(line: 180, column: 33, scope: !854, inlinedAt: !2357)
!2359 = !DILocation(line: 180, column: 57, scope: !854, inlinedAt: !2357)
!2360 = !DILocation(line: 184, column: 6, scope: !854, inlinedAt: !2357)
!2361 = !DILocation(line: 184, column: 12, scope: !854, inlinedAt: !2357)
!2362 = !DILocation(line: 185, column: 8, scope: !870, inlinedAt: !2357)
!2363 = !DILocation(line: 185, column: 23, scope: !870, inlinedAt: !2357)
!2364 = !DILocation(line: 185, column: 19, scope: !870, inlinedAt: !2357)
!2365 = !DILocation(line: 186, column: 5, scope: !870, inlinedAt: !2357)
!2366 = !DILocation(line: 187, column: 6, scope: !854, inlinedAt: !2357)
!2367 = !DILocation(line: 187, column: 17, scope: !854, inlinedAt: !2357)
!2368 = !DILocation(line: 188, column: 6, scope: !854, inlinedAt: !2357)
!2369 = !DILocation(line: 188, column: 18, scope: !854, inlinedAt: !2357)
!2370 = !DILocation(line: 1032, column: 10, scope: !2313)
!2371 = !DILocation(line: 1033, column: 1, scope: !2313)
!2372 = !DILocation(line: 1032, column: 3, scope: !2313)
!2373 = distinct !DISubprogram(name: "quotearg_custom", scope: !83, file: !83, line: 1036, type: !2374, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!32, !6, !6, !6}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2373, file: !83, line: 1036, type: !6)
!2378 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2373, file: !83, line: 1036, type: !6)
!2379 = !DILocalVariable(name: "arg", arg: 3, scope: !2373, file: !83, line: 1037, type: !6)
!2380 = !DILocation(line: 1036, column: 30, scope: !2373)
!2381 = !DILocation(line: 1036, column: 54, scope: !2373)
!2382 = !DILocation(line: 1037, column: 30, scope: !2373)
!2383 = !DILocation(line: 1018, column: 24, scope: !2300, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1039, column: 10, scope: !2373)
!2385 = !DILocation(line: 1018, column: 39, scope: !2300, inlinedAt: !2384)
!2386 = !DILocation(line: 1019, column: 32, scope: !2300, inlinedAt: !2384)
!2387 = !DILocation(line: 1019, column: 57, scope: !2300, inlinedAt: !2384)
!2388 = !DILocation(line: 1026, column: 28, scope: !2313, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1021, column: 10, scope: !2300, inlinedAt: !2384)
!2390 = !DILocation(line: 1026, column: 43, scope: !2313, inlinedAt: !2389)
!2391 = !DILocation(line: 1027, column: 36, scope: !2313, inlinedAt: !2389)
!2392 = !DILocation(line: 1028, column: 36, scope: !2313, inlinedAt: !2389)
!2393 = !DILocation(line: 1028, column: 48, scope: !2313, inlinedAt: !2389)
!2394 = !DILocation(line: 1030, column: 3, scope: !2313, inlinedAt: !2389)
!2395 = !DILocation(line: 1030, column: 30, scope: !2313, inlinedAt: !2389)
!2396 = !DILocation(line: 1030, column: 26, scope: !2313, inlinedAt: !2389)
!2397 = !DILocation(line: 179, column: 45, scope: !854, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 1031, column: 3, scope: !2313, inlinedAt: !2389)
!2399 = !DILocation(line: 180, column: 33, scope: !854, inlinedAt: !2398)
!2400 = !DILocation(line: 180, column: 57, scope: !854, inlinedAt: !2398)
!2401 = !DILocation(line: 184, column: 6, scope: !854, inlinedAt: !2398)
!2402 = !DILocation(line: 184, column: 12, scope: !854, inlinedAt: !2398)
!2403 = !DILocation(line: 185, column: 8, scope: !870, inlinedAt: !2398)
!2404 = !DILocation(line: 185, column: 23, scope: !870, inlinedAt: !2398)
!2405 = !DILocation(line: 185, column: 19, scope: !870, inlinedAt: !2398)
!2406 = !DILocation(line: 186, column: 5, scope: !870, inlinedAt: !2398)
!2407 = !DILocation(line: 187, column: 6, scope: !854, inlinedAt: !2398)
!2408 = !DILocation(line: 187, column: 17, scope: !854, inlinedAt: !2398)
!2409 = !DILocation(line: 188, column: 6, scope: !854, inlinedAt: !2398)
!2410 = !DILocation(line: 188, column: 18, scope: !854, inlinedAt: !2398)
!2411 = !DILocation(line: 1032, column: 10, scope: !2313, inlinedAt: !2389)
!2412 = !DILocation(line: 1033, column: 1, scope: !2313, inlinedAt: !2389)
!2413 = !DILocation(line: 1039, column: 3, scope: !2373)
!2414 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !83, file: !83, line: 1043, type: !2415, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!32, !6, !6, !6, !77}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2414, file: !83, line: 1043, type: !6)
!2419 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2414, file: !83, line: 1043, type: !6)
!2420 = !DILocalVariable(name: "arg", arg: 3, scope: !2414, file: !83, line: 1044, type: !6)
!2421 = !DILocalVariable(name: "argsize", arg: 4, scope: !2414, file: !83, line: 1044, type: !77)
!2422 = !DILocation(line: 1043, column: 34, scope: !2414)
!2423 = !DILocation(line: 1043, column: 58, scope: !2414)
!2424 = !DILocation(line: 1044, column: 34, scope: !2414)
!2425 = !DILocation(line: 1044, column: 46, scope: !2414)
!2426 = !DILocation(line: 1026, column: 28, scope: !2313, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1046, column: 10, scope: !2414)
!2428 = !DILocation(line: 1026, column: 43, scope: !2313, inlinedAt: !2427)
!2429 = !DILocation(line: 1027, column: 36, scope: !2313, inlinedAt: !2427)
!2430 = !DILocation(line: 1028, column: 36, scope: !2313, inlinedAt: !2427)
!2431 = !DILocation(line: 1028, column: 48, scope: !2313, inlinedAt: !2427)
!2432 = !DILocation(line: 1030, column: 3, scope: !2313, inlinedAt: !2427)
!2433 = !DILocation(line: 1030, column: 30, scope: !2313, inlinedAt: !2427)
!2434 = !DILocation(line: 1030, column: 26, scope: !2313, inlinedAt: !2427)
!2435 = !DILocation(line: 179, column: 45, scope: !854, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1031, column: 3, scope: !2313, inlinedAt: !2427)
!2437 = !DILocation(line: 180, column: 33, scope: !854, inlinedAt: !2436)
!2438 = !DILocation(line: 180, column: 57, scope: !854, inlinedAt: !2436)
!2439 = !DILocation(line: 184, column: 6, scope: !854, inlinedAt: !2436)
!2440 = !DILocation(line: 184, column: 12, scope: !854, inlinedAt: !2436)
!2441 = !DILocation(line: 185, column: 8, scope: !870, inlinedAt: !2436)
!2442 = !DILocation(line: 185, column: 23, scope: !870, inlinedAt: !2436)
!2443 = !DILocation(line: 185, column: 19, scope: !870, inlinedAt: !2436)
!2444 = !DILocation(line: 186, column: 5, scope: !870, inlinedAt: !2436)
!2445 = !DILocation(line: 187, column: 6, scope: !854, inlinedAt: !2436)
!2446 = !DILocation(line: 187, column: 17, scope: !854, inlinedAt: !2436)
!2447 = !DILocation(line: 188, column: 6, scope: !854, inlinedAt: !2436)
!2448 = !DILocation(line: 188, column: 18, scope: !854, inlinedAt: !2436)
!2449 = !DILocation(line: 1032, column: 10, scope: !2313, inlinedAt: !2427)
!2450 = !DILocation(line: 1033, column: 1, scope: !2313, inlinedAt: !2427)
!2451 = !DILocation(line: 1046, column: 3, scope: !2414)
!2452 = distinct !DISubprogram(name: "quote_n_mem", scope: !83, file: !83, line: 1061, type: !2453, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!6, !25, !6, !77}
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "n", arg: 1, scope: !2452, file: !83, line: 1061, type: !25)
!2457 = !DILocalVariable(name: "arg", arg: 2, scope: !2452, file: !83, line: 1061, type: !6)
!2458 = !DILocalVariable(name: "argsize", arg: 3, scope: !2452, file: !83, line: 1061, type: !77)
!2459 = !DILocation(line: 1061, column: 18, scope: !2452)
!2460 = !DILocation(line: 1061, column: 33, scope: !2452)
!2461 = !DILocation(line: 1061, column: 45, scope: !2452)
!2462 = !DILocation(line: 1063, column: 10, scope: !2452)
!2463 = !DILocation(line: 1063, column: 3, scope: !2452)
!2464 = distinct !DISubprogram(name: "quote_mem", scope: !83, file: !83, line: 1067, type: !2465, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!6, !6, !77}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !83, line: 1067, type: !6)
!2469 = !DILocalVariable(name: "argsize", arg: 2, scope: !2464, file: !83, line: 1067, type: !77)
!2470 = !DILocation(line: 1067, column: 24, scope: !2464)
!2471 = !DILocation(line: 1067, column: 36, scope: !2464)
!2472 = !DILocation(line: 1061, column: 18, scope: !2452, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 1069, column: 10, scope: !2464)
!2474 = !DILocation(line: 1061, column: 33, scope: !2452, inlinedAt: !2473)
!2475 = !DILocation(line: 1061, column: 45, scope: !2452, inlinedAt: !2473)
!2476 = !DILocation(line: 1063, column: 10, scope: !2452, inlinedAt: !2473)
!2477 = !DILocation(line: 1069, column: 3, scope: !2464)
!2478 = distinct !DISubprogram(name: "quote_n", scope: !83, file: !83, line: 1073, type: !2479, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!6, !25, !6}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "n", arg: 1, scope: !2478, file: !83, line: 1073, type: !25)
!2483 = !DILocalVariable(name: "arg", arg: 2, scope: !2478, file: !83, line: 1073, type: !6)
!2484 = !DILocation(line: 1073, column: 14, scope: !2478)
!2485 = !DILocation(line: 1073, column: 29, scope: !2478)
!2486 = !DILocation(line: 1061, column: 18, scope: !2452, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 1075, column: 10, scope: !2478)
!2488 = !DILocation(line: 1061, column: 33, scope: !2452, inlinedAt: !2487)
!2489 = !DILocation(line: 1061, column: 45, scope: !2452, inlinedAt: !2487)
!2490 = !DILocation(line: 1063, column: 10, scope: !2452, inlinedAt: !2487)
!2491 = !DILocation(line: 1075, column: 3, scope: !2478)
!2492 = distinct !DISubprogram(name: "quote", scope: !83, file: !83, line: 1079, type: !2493, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!6, !6}
!2495 = !{!2496}
!2496 = !DILocalVariable(name: "arg", arg: 1, scope: !2492, file: !83, line: 1079, type: !6)
!2497 = !DILocation(line: 1079, column: 20, scope: !2492)
!2498 = !DILocation(line: 1073, column: 14, scope: !2478, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1081, column: 10, scope: !2492)
!2500 = !DILocation(line: 1073, column: 29, scope: !2478, inlinedAt: !2499)
!2501 = !DILocation(line: 1061, column: 18, scope: !2452, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 1075, column: 10, scope: !2478, inlinedAt: !2499)
!2503 = !DILocation(line: 1061, column: 33, scope: !2452, inlinedAt: !2502)
!2504 = !DILocation(line: 1061, column: 45, scope: !2452, inlinedAt: !2502)
!2505 = !DILocation(line: 1063, column: 10, scope: !2452, inlinedAt: !2502)
!2506 = !DILocation(line: 1081, column: 3, scope: !2492)
!2507 = distinct !DISubprogram(name: "version_etc_arn", scope: !138, file: !138, line: 62, type: !2508, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2566)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !2510, !6, !6, !6, !2565, !77}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2512, line: 7, baseType: !2513)
!2512 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2514, line: 49, size: 1728, elements: !2515)
!2514 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2531, !2533, !2534, !2535, !2539, !2540, !2542, !2546, !2549, !2551, !2554, !2557, !2558, !2559, !2560, !2561}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2513, file: !2514, line: 51, baseType: !25, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2513, file: !2514, line: 54, baseType: !32, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2513, file: !2514, line: 55, baseType: !32, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2513, file: !2514, line: 56, baseType: !32, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2513, file: !2514, line: 57, baseType: !32, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2513, file: !2514, line: 58, baseType: !32, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2513, file: !2514, line: 59, baseType: !32, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2513, file: !2514, line: 60, baseType: !32, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2513, file: !2514, line: 61, baseType: !32, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2513, file: !2514, line: 64, baseType: !32, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2513, file: !2514, line: 65, baseType: !32, size: 64, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2513, file: !2514, line: 66, baseType: !32, size: 64, offset: 704)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2513, file: !2514, line: 68, baseType: !2529, size: 64, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2514, line: 36, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2513, file: !2514, line: 70, baseType: !2532, size: 64, offset: 832)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2513, file: !2514, line: 72, baseType: !25, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2513, file: !2514, line: 73, baseType: !25, size: 32, offset: 928)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2513, file: !2514, line: 74, baseType: !2536, size: 64, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2537, line: 150, baseType: !2538)
!2537 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2538 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2513, file: !2514, line: 77, baseType: !76, size: 16, offset: 1024)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2513, file: !2514, line: 78, baseType: !2541, size: 8, offset: 1040)
!2541 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2513, file: !2514, line: 79, baseType: !2543, size: 8, offset: 1048)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 1)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2513, file: !2514, line: 81, baseType: !2547, size: 64, offset: 1088)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2514, line: 43, baseType: null)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2513, file: !2514, line: 89, baseType: !2550, size: 64, offset: 1152)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2537, line: 151, baseType: !2538)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2513, file: !2514, line: 91, baseType: !2552, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2514, line: 37, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2513, file: !2514, line: 92, baseType: !2555, size: 64, offset: 1280)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2514, line: 38, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2513, file: !2514, line: 93, baseType: !2532, size: 64, offset: 1344)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2513, file: !2514, line: 94, baseType: !31, size: 64, offset: 1408)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2513, file: !2514, line: 95, baseType: !77, size: 64, offset: 1472)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2513, file: !2514, line: 96, baseType: !25, size: 32, offset: 1536)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2513, file: !2514, line: 98, baseType: !2562, size: 160, offset: 1568)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2563)
!2563 = !{!2564}
!2564 = !DISubrange(count: 20)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572}
!2567 = !DILocalVariable(name: "stream", arg: 1, scope: !2507, file: !138, line: 62, type: !2510)
!2568 = !DILocalVariable(name: "command_name", arg: 2, scope: !2507, file: !138, line: 63, type: !6)
!2569 = !DILocalVariable(name: "package", arg: 3, scope: !2507, file: !138, line: 63, type: !6)
!2570 = !DILocalVariable(name: "version", arg: 4, scope: !2507, file: !138, line: 64, type: !6)
!2571 = !DILocalVariable(name: "authors", arg: 5, scope: !2507, file: !138, line: 65, type: !2565)
!2572 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2507, file: !138, line: 65, type: !77)
!2573 = !DILocation(line: 62, column: 24, scope: !2507)
!2574 = !DILocation(line: 63, column: 30, scope: !2507)
!2575 = !DILocation(line: 63, column: 56, scope: !2507)
!2576 = !DILocation(line: 64, column: 30, scope: !2507)
!2577 = !DILocation(line: 65, column: 39, scope: !2507)
!2578 = !DILocation(line: 65, column: 55, scope: !2507)
!2579 = !DILocation(line: 67, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2507, file: !138, line: 67, column: 7)
!2581 = !DILocation(line: 67, column: 7, scope: !2507)
!2582 = !DILocation(line: 68, column: 5, scope: !2580)
!2583 = !DILocation(line: 70, column: 5, scope: !2580)
!2584 = !DILocation(line: 84, column: 3, scope: !2507)
!2585 = !DILocation(line: 86, column: 3, scope: !2507)
!2586 = !DILocation(line: 95, column: 3, scope: !2507)
!2587 = !DILocation(line: 99, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2507, file: !138, line: 96, column: 5)
!2589 = !DILocation(line: 102, column: 7, scope: !2588)
!2590 = !DILocation(line: 103, column: 7, scope: !2588)
!2591 = !DILocation(line: 106, column: 7, scope: !2588)
!2592 = !DILocation(line: 107, column: 7, scope: !2588)
!2593 = !DILocation(line: 110, column: 7, scope: !2588)
!2594 = !DILocation(line: 112, column: 7, scope: !2588)
!2595 = !DILocation(line: 117, column: 7, scope: !2588)
!2596 = !DILocation(line: 119, column: 7, scope: !2588)
!2597 = !DILocation(line: 124, column: 7, scope: !2588)
!2598 = !DILocation(line: 126, column: 7, scope: !2588)
!2599 = !DILocation(line: 131, column: 7, scope: !2588)
!2600 = !DILocation(line: 134, column: 7, scope: !2588)
!2601 = !DILocation(line: 139, column: 7, scope: !2588)
!2602 = !DILocation(line: 142, column: 7, scope: !2588)
!2603 = !DILocation(line: 147, column: 7, scope: !2588)
!2604 = !DILocation(line: 151, column: 7, scope: !2588)
!2605 = !DILocation(line: 156, column: 7, scope: !2588)
!2606 = !DILocation(line: 160, column: 7, scope: !2588)
!2607 = !DILocation(line: 167, column: 7, scope: !2588)
!2608 = !DILocation(line: 171, column: 7, scope: !2588)
!2609 = !DILocation(line: 173, column: 1, scope: !2507)
!2610 = distinct !DISubprogram(name: "version_etc_ar", scope: !138, file: !138, line: 180, type: !2611, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2510, !6, !6, !6, !2565}
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619}
!2614 = !DILocalVariable(name: "stream", arg: 1, scope: !2610, file: !138, line: 180, type: !2510)
!2615 = !DILocalVariable(name: "command_name", arg: 2, scope: !2610, file: !138, line: 181, type: !6)
!2616 = !DILocalVariable(name: "package", arg: 3, scope: !2610, file: !138, line: 181, type: !6)
!2617 = !DILocalVariable(name: "version", arg: 4, scope: !2610, file: !138, line: 182, type: !6)
!2618 = !DILocalVariable(name: "authors", arg: 5, scope: !2610, file: !138, line: 182, type: !2565)
!2619 = !DILocalVariable(name: "n_authors", scope: !2610, file: !138, line: 184, type: !77)
!2620 = !DILocation(line: 180, column: 23, scope: !2610)
!2621 = !DILocation(line: 181, column: 29, scope: !2610)
!2622 = !DILocation(line: 181, column: 55, scope: !2610)
!2623 = !DILocation(line: 182, column: 29, scope: !2610)
!2624 = !DILocation(line: 182, column: 59, scope: !2610)
!2625 = !DILocation(line: 184, column: 10, scope: !2610)
!2626 = !DILocation(line: 186, column: 8, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2610, file: !138, line: 186, column: 3)
!2628 = !DILocation(line: 0, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2627, file: !138, line: 186, column: 3)
!2630 = !DILocation(line: 186, column: 23, scope: !2629)
!2631 = !DILocation(line: 186, column: 3, scope: !2627)
!2632 = !DILocation(line: 186, column: 52, scope: !2629)
!2633 = distinct !{!2633, !2631, !2634}
!2634 = !DILocation(line: 187, column: 5, scope: !2627)
!2635 = !DILocation(line: 188, column: 3, scope: !2610)
!2636 = !DILocation(line: 189, column: 1, scope: !2610)
!2637 = distinct !DISubprogram(name: "version_etc_va", scope: !138, file: !138, line: 196, type: !2638, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2647)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2510, !6, !6, !6, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !135, line: 189, size: 192, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2641, file: !135, line: 189, baseType: !42, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2641, file: !135, line: 189, baseType: !42, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2641, file: !135, line: 189, baseType: !31, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2641, file: !135, line: 189, baseType: !31, size: 64, offset: 128)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2648 = !DILocalVariable(name: "stream", arg: 1, scope: !2637, file: !138, line: 196, type: !2510)
!2649 = !DILocalVariable(name: "command_name", arg: 2, scope: !2637, file: !138, line: 197, type: !6)
!2650 = !DILocalVariable(name: "package", arg: 3, scope: !2637, file: !138, line: 197, type: !6)
!2651 = !DILocalVariable(name: "version", arg: 4, scope: !2637, file: !138, line: 198, type: !6)
!2652 = !DILocalVariable(name: "authors", arg: 5, scope: !2637, file: !138, line: 198, type: !2640)
!2653 = !DILocalVariable(name: "n_authors", scope: !2637, file: !138, line: 200, type: !77)
!2654 = !DILocalVariable(name: "authtab", scope: !2637, file: !138, line: 201, type: !2655)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !86)
!2656 = !DILocation(line: 196, column: 23, scope: !2637)
!2657 = !DILocation(line: 197, column: 29, scope: !2637)
!2658 = !DILocation(line: 197, column: 55, scope: !2637)
!2659 = !DILocation(line: 198, column: 29, scope: !2637)
!2660 = !DILocation(line: 198, column: 46, scope: !2637)
!2661 = !DILocation(line: 201, column: 3, scope: !2637)
!2662 = !DILocation(line: 201, column: 15, scope: !2637)
!2663 = !DILocation(line: 200, column: 10, scope: !2637)
!2664 = !DILocation(line: 205, column: 35, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !138, line: 203, column: 3)
!2666 = distinct !DILexicalBlock(scope: !2637, file: !138, line: 203, column: 3)
!2667 = !DILocation(line: 205, column: 14, scope: !2665)
!2668 = !DILocation(line: 205, column: 33, scope: !2665)
!2669 = !DILocation(line: 205, column: 67, scope: !2665)
!2670 = !DILocation(line: 203, column: 3, scope: !2666)
!2671 = !DILocation(line: 0, scope: !2665)
!2672 = !DILocation(line: 208, column: 3, scope: !2637)
!2673 = !DILocation(line: 210, column: 1, scope: !2637)
!2674 = distinct !DISubprogram(name: "version_etc", scope: !138, file: !138, line: 227, type: !2675, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !2510, !6, !6, !6, null}
!2677 = !{!2678, !2679, !2680, !2681, !2682}
!2678 = !DILocalVariable(name: "stream", arg: 1, scope: !2674, file: !138, line: 227, type: !2510)
!2679 = !DILocalVariable(name: "command_name", arg: 2, scope: !2674, file: !138, line: 228, type: !6)
!2680 = !DILocalVariable(name: "package", arg: 3, scope: !2674, file: !138, line: 228, type: !6)
!2681 = !DILocalVariable(name: "version", arg: 4, scope: !2674, file: !138, line: 229, type: !6)
!2682 = !DILocalVariable(name: "authors", scope: !2674, file: !138, line: 231, type: !2683)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2684, line: 52, baseType: !2685)
!2684 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2686, line: 48, baseType: !2687)
!2686 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, line: 231, baseType: !2688)
!2688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 192, elements: !2544)
!2689 = !DILocation(line: 227, column: 20, scope: !2674)
!2690 = !DILocation(line: 228, column: 26, scope: !2674)
!2691 = !DILocation(line: 228, column: 52, scope: !2674)
!2692 = !DILocation(line: 229, column: 26, scope: !2674)
!2693 = !DILocation(line: 231, column: 3, scope: !2674)
!2694 = !DILocation(line: 231, column: 11, scope: !2674)
!2695 = !DILocation(line: 233, column: 3, scope: !2674)
!2696 = !DILocation(line: 234, column: 3, scope: !2674)
!2697 = !DILocation(line: 235, column: 3, scope: !2674)
!2698 = !DILocation(line: 236, column: 1, scope: !2674)
!2699 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !138, file: !138, line: 239, type: !688, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !4)
!2700 = !DILocation(line: 245, column: 3, scope: !2699)
!2701 = !DILocation(line: 251, column: 3, scope: !2699)
!2702 = !DILocation(line: 256, column: 3, scope: !2699)
!2703 = !DILocation(line: 258, column: 1, scope: !2699)
!2704 = distinct !DISubprogram(name: "xnmalloc", scope: !146, file: !146, line: 99, type: !2705, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!31, !77, !77}
!2707 = !{!2708, !2709}
!2708 = !DILocalVariable(name: "n", arg: 1, scope: !2704, file: !146, line: 99, type: !77)
!2709 = !DILocalVariable(name: "s", arg: 2, scope: !2704, file: !146, line: 99, type: !77)
!2710 = !DILocation(line: 99, column: 18, scope: !2704)
!2711 = !DILocation(line: 99, column: 28, scope: !2704)
!2712 = !DILocation(line: 101, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2704, file: !146, line: 101, column: 7)
!2714 = !DILocation(line: 101, column: 7, scope: !2704)
!2715 = !DILocation(line: 102, column: 5, scope: !2713)
!2716 = !DILocation(line: 103, column: 21, scope: !2704)
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !2719, line: 39, type: !77)
!2718 = distinct !DISubprogram(name: "xmalloc", scope: !2719, file: !2719, line: 39, type: !2720, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2722)
!2719 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!31, !77}
!2722 = !{!2717, !2723}
!2723 = !DILocalVariable(name: "p", scope: !2718, file: !2719, line: 41, type: !31)
!2724 = !DILocation(line: 39, column: 17, scope: !2718, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 103, column: 10, scope: !2704)
!2726 = !DILocation(line: 41, column: 13, scope: !2718, inlinedAt: !2725)
!2727 = !DILocation(line: 41, column: 9, scope: !2718, inlinedAt: !2725)
!2728 = !DILocation(line: 42, column: 8, scope: !2729, inlinedAt: !2725)
!2729 = distinct !DILexicalBlock(scope: !2718, file: !2719, line: 42, column: 7)
!2730 = !DILocation(line: 42, column: 15, scope: !2729, inlinedAt: !2725)
!2731 = !DILocation(line: 42, column: 10, scope: !2729, inlinedAt: !2725)
!2732 = !DILocation(line: 43, column: 5, scope: !2729, inlinedAt: !2725)
!2733 = !DILocation(line: 103, column: 3, scope: !2704)
!2734 = !DILocation(line: 39, column: 17, scope: !2718)
!2735 = !DILocation(line: 41, column: 13, scope: !2718)
!2736 = !DILocation(line: 41, column: 9, scope: !2718)
!2737 = !DILocation(line: 42, column: 8, scope: !2729)
!2738 = !DILocation(line: 42, column: 15, scope: !2729)
!2739 = !DILocation(line: 42, column: 10, scope: !2729)
!2740 = !DILocation(line: 43, column: 5, scope: !2729)
!2741 = !DILocation(line: 44, column: 3, scope: !2718)
!2742 = distinct !DISubprogram(name: "xnrealloc", scope: !146, file: !146, line: 112, type: !2743, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!31, !31, !77, !77}
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "p", arg: 1, scope: !2742, file: !146, line: 112, type: !31)
!2747 = !DILocalVariable(name: "n", arg: 2, scope: !2742, file: !146, line: 112, type: !77)
!2748 = !DILocalVariable(name: "s", arg: 3, scope: !2742, file: !146, line: 112, type: !77)
!2749 = !DILocation(line: 112, column: 18, scope: !2742)
!2750 = !DILocation(line: 112, column: 28, scope: !2742)
!2751 = !DILocation(line: 112, column: 38, scope: !2742)
!2752 = !DILocation(line: 114, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2742, file: !146, line: 114, column: 7)
!2754 = !DILocation(line: 114, column: 7, scope: !2742)
!2755 = !DILocation(line: 115, column: 5, scope: !2753)
!2756 = !DILocation(line: 116, column: 25, scope: !2742)
!2757 = !DILocalVariable(name: "p", arg: 1, scope: !2758, file: !2719, line: 51, type: !31)
!2758 = distinct !DISubprogram(name: "xrealloc", scope: !2719, file: !2719, line: 51, type: !2759, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!31, !31, !77}
!2761 = !{!2757, !2762}
!2762 = !DILocalVariable(name: "n", arg: 2, scope: !2758, file: !2719, line: 51, type: !77)
!2763 = !DILocation(line: 51, column: 17, scope: !2758, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 116, column: 10, scope: !2742)
!2765 = !DILocation(line: 51, column: 27, scope: !2758, inlinedAt: !2764)
!2766 = !DILocation(line: 53, column: 8, scope: !2767, inlinedAt: !2764)
!2767 = distinct !DILexicalBlock(scope: !2758, file: !2719, line: 53, column: 7)
!2768 = !DILocation(line: 53, column: 13, scope: !2767, inlinedAt: !2764)
!2769 = !DILocation(line: 53, column: 10, scope: !2767, inlinedAt: !2764)
!2770 = !DILocation(line: 57, column: 7, scope: !2771, inlinedAt: !2764)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !2719, line: 54, column: 5)
!2772 = !DILocation(line: 58, column: 7, scope: !2771, inlinedAt: !2764)
!2773 = !DILocation(line: 61, column: 7, scope: !2758, inlinedAt: !2764)
!2774 = !DILocation(line: 62, column: 8, scope: !2775, inlinedAt: !2764)
!2775 = distinct !DILexicalBlock(scope: !2758, file: !2719, line: 62, column: 7)
!2776 = !DILocation(line: 62, column: 13, scope: !2775, inlinedAt: !2764)
!2777 = !DILocation(line: 62, column: 10, scope: !2775, inlinedAt: !2764)
!2778 = !DILocation(line: 63, column: 5, scope: !2775, inlinedAt: !2764)
!2779 = !DILocation(line: 0, scope: !2758, inlinedAt: !2764)
!2780 = !DILocation(line: 116, column: 3, scope: !2742)
!2781 = !DILocation(line: 51, column: 17, scope: !2758)
!2782 = !DILocation(line: 51, column: 27, scope: !2758)
!2783 = !DILocation(line: 53, column: 8, scope: !2767)
!2784 = !DILocation(line: 53, column: 13, scope: !2767)
!2785 = !DILocation(line: 53, column: 10, scope: !2767)
!2786 = !DILocation(line: 57, column: 7, scope: !2771)
!2787 = !DILocation(line: 58, column: 7, scope: !2771)
!2788 = !DILocation(line: 61, column: 7, scope: !2758)
!2789 = !DILocation(line: 62, column: 8, scope: !2775)
!2790 = !DILocation(line: 62, column: 13, scope: !2775)
!2791 = !DILocation(line: 62, column: 10, scope: !2775)
!2792 = !DILocation(line: 63, column: 5, scope: !2775)
!2793 = !DILocation(line: 0, scope: !2758)
!2794 = !DILocation(line: 65, column: 1, scope: !2758)
!2795 = !DILocation(line: 174, column: 19, scope: !147)
!2796 = !DILocation(line: 174, column: 30, scope: !147)
!2797 = !DILocation(line: 174, column: 41, scope: !147)
!2798 = !DILocation(line: 176, column: 14, scope: !147)
!2799 = !DILocation(line: 176, column: 10, scope: !147)
!2800 = !DILocation(line: 178, column: 9, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !147, file: !146, line: 178, column: 7)
!2802 = !DILocation(line: 178, column: 7, scope: !147)
!2803 = !DILocation(line: 180, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !146, line: 180, column: 11)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !146, line: 179, column: 5)
!2806 = !DILocation(line: 180, column: 11, scope: !2805)
!2807 = !DILocation(line: 188, column: 30, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !146, line: 181, column: 9)
!2809 = !DILocation(line: 189, column: 16, scope: !2808)
!2810 = !DILocation(line: 189, column: 13, scope: !2808)
!2811 = !DILocation(line: 190, column: 9, scope: !2808)
!2812 = !DILocation(line: 0, scope: !2808)
!2813 = !DILocation(line: 191, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2805, file: !146, line: 191, column: 11)
!2815 = !DILocation(line: 191, column: 11, scope: !2805)
!2816 = !DILocation(line: 206, column: 7, scope: !147)
!2817 = !DILocation(line: 207, column: 25, scope: !147)
!2818 = !DILocation(line: 51, column: 17, scope: !2758, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 207, column: 10, scope: !147)
!2820 = !DILocation(line: 51, column: 27, scope: !2758, inlinedAt: !2819)
!2821 = !DILocation(line: 53, column: 10, scope: !2767, inlinedAt: !2819)
!2822 = !DILocation(line: 192, column: 9, scope: !2814)
!2823 = !DILocation(line: 200, column: 69, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !146, line: 200, column: 11)
!2825 = distinct !DILexicalBlock(scope: !2801, file: !146, line: 195, column: 5)
!2826 = !DILocation(line: 201, column: 11, scope: !2824)
!2827 = !DILocation(line: 200, column: 11, scope: !2825)
!2828 = !DILocation(line: 202, column: 9, scope: !2824)
!2829 = !DILocation(line: 203, column: 14, scope: !2825)
!2830 = !DILocation(line: 203, column: 18, scope: !2825)
!2831 = !DILocation(line: 203, column: 9, scope: !2825)
!2832 = !DILocation(line: 53, column: 8, scope: !2767, inlinedAt: !2819)
!2833 = !DILocation(line: 57, column: 7, scope: !2771, inlinedAt: !2819)
!2834 = !DILocation(line: 58, column: 7, scope: !2771, inlinedAt: !2819)
!2835 = !DILocation(line: 61, column: 7, scope: !2758, inlinedAt: !2819)
!2836 = !DILocation(line: 62, column: 8, scope: !2775, inlinedAt: !2819)
!2837 = !DILocation(line: 62, column: 13, scope: !2775, inlinedAt: !2819)
!2838 = !DILocation(line: 62, column: 10, scope: !2775, inlinedAt: !2819)
!2839 = !DILocation(line: 63, column: 5, scope: !2775, inlinedAt: !2819)
!2840 = !DILocation(line: 0, scope: !2758, inlinedAt: !2819)
!2841 = !DILocation(line: 207, column: 3, scope: !147)
!2842 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !1791, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2843)
!2843 = !{!2844}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !146, line: 216, type: !77)
!2845 = !DILocation(line: 216, column: 20, scope: !2842)
!2846 = !DILocation(line: 39, column: 17, scope: !2718, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 218, column: 10, scope: !2842)
!2848 = !DILocation(line: 41, column: 13, scope: !2718, inlinedAt: !2847)
!2849 = !DILocation(line: 41, column: 9, scope: !2718, inlinedAt: !2847)
!2850 = !DILocation(line: 42, column: 8, scope: !2729, inlinedAt: !2847)
!2851 = !DILocation(line: 42, column: 15, scope: !2729, inlinedAt: !2847)
!2852 = !DILocation(line: 42, column: 10, scope: !2729, inlinedAt: !2847)
!2853 = !DILocation(line: 43, column: 5, scope: !2729, inlinedAt: !2847)
!2854 = !DILocation(line: 218, column: 3, scope: !2842)
!2855 = distinct !DISubprogram(name: "x2realloc", scope: !2719, file: !2719, line: 74, type: !2856, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!31, !31, !150}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "p", arg: 1, scope: !2855, file: !2719, line: 74, type: !31)
!2860 = !DILocalVariable(name: "pn", arg: 2, scope: !2855, file: !2719, line: 74, type: !150)
!2861 = !DILocation(line: 74, column: 18, scope: !2855)
!2862 = !DILocation(line: 74, column: 29, scope: !2855)
!2863 = !DILocation(line: 174, column: 19, scope: !147, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 76, column: 10, scope: !2855)
!2865 = !DILocation(line: 174, column: 30, scope: !147, inlinedAt: !2864)
!2866 = !DILocation(line: 174, column: 41, scope: !147, inlinedAt: !2864)
!2867 = !DILocation(line: 176, column: 14, scope: !147, inlinedAt: !2864)
!2868 = !DILocation(line: 176, column: 10, scope: !147, inlinedAt: !2864)
!2869 = !DILocation(line: 178, column: 9, scope: !2801, inlinedAt: !2864)
!2870 = !DILocation(line: 178, column: 7, scope: !147, inlinedAt: !2864)
!2871 = !DILocation(line: 180, column: 13, scope: !2804, inlinedAt: !2864)
!2872 = !DILocation(line: 180, column: 11, scope: !2805, inlinedAt: !2864)
!2873 = !DILocation(line: 191, column: 11, scope: !2814, inlinedAt: !2864)
!2874 = !DILocation(line: 191, column: 11, scope: !2805, inlinedAt: !2864)
!2875 = !DILocation(line: 206, column: 7, scope: !147, inlinedAt: !2864)
!2876 = !DILocation(line: 51, column: 17, scope: !2758, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 207, column: 10, scope: !147, inlinedAt: !2864)
!2878 = !DILocation(line: 51, column: 27, scope: !2758, inlinedAt: !2877)
!2879 = !DILocation(line: 53, column: 10, scope: !2767, inlinedAt: !2877)
!2880 = !DILocation(line: 192, column: 9, scope: !2814, inlinedAt: !2864)
!2881 = !DILocation(line: 201, column: 11, scope: !2824, inlinedAt: !2864)
!2882 = !DILocation(line: 200, column: 11, scope: !2825, inlinedAt: !2864)
!2883 = !DILocation(line: 202, column: 9, scope: !2824, inlinedAt: !2864)
!2884 = !DILocation(line: 203, column: 14, scope: !2825, inlinedAt: !2864)
!2885 = !DILocation(line: 203, column: 18, scope: !2825, inlinedAt: !2864)
!2886 = !DILocation(line: 203, column: 9, scope: !2825, inlinedAt: !2864)
!2887 = !DILocation(line: 53, column: 8, scope: !2767, inlinedAt: !2877)
!2888 = !DILocation(line: 57, column: 7, scope: !2771, inlinedAt: !2877)
!2889 = !DILocation(line: 58, column: 7, scope: !2771, inlinedAt: !2877)
!2890 = !DILocation(line: 61, column: 7, scope: !2758, inlinedAt: !2877)
!2891 = !DILocation(line: 62, column: 8, scope: !2775, inlinedAt: !2877)
!2892 = !DILocation(line: 62, column: 13, scope: !2775, inlinedAt: !2877)
!2893 = !DILocation(line: 62, column: 10, scope: !2775, inlinedAt: !2877)
!2894 = !DILocation(line: 63, column: 5, scope: !2775, inlinedAt: !2877)
!2895 = !DILocation(line: 0, scope: !2758, inlinedAt: !2877)
!2896 = !DILocation(line: 76, column: 3, scope: !2855)
!2897 = distinct !DISubprogram(name: "xzalloc", scope: !2719, file: !2719, line: 84, type: !2720, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2898)
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "s", arg: 1, scope: !2897, file: !2719, line: 84, type: !77)
!2900 = !DILocation(line: 84, column: 17, scope: !2897)
!2901 = !DILocation(line: 39, column: 17, scope: !2718, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 86, column: 18, scope: !2897)
!2903 = !DILocation(line: 41, column: 13, scope: !2718, inlinedAt: !2902)
!2904 = !DILocation(line: 41, column: 9, scope: !2718, inlinedAt: !2902)
!2905 = !DILocation(line: 42, column: 8, scope: !2729, inlinedAt: !2902)
!2906 = !DILocation(line: 42, column: 15, scope: !2729, inlinedAt: !2902)
!2907 = !DILocation(line: 42, column: 10, scope: !2729, inlinedAt: !2902)
!2908 = !DILocation(line: 43, column: 5, scope: !2729, inlinedAt: !2902)
!2909 = !DILocation(line: 86, column: 10, scope: !2897)
!2910 = !DILocation(line: 86, column: 3, scope: !2897)
!2911 = distinct !DISubprogram(name: "xcalloc", scope: !2719, file: !2719, line: 93, type: !2705, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2912)
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2911, file: !2719, line: 93, type: !77)
!2914 = !DILocalVariable(name: "s", arg: 2, scope: !2911, file: !2719, line: 93, type: !77)
!2915 = !DILocalVariable(name: "p", scope: !2911, file: !2719, line: 95, type: !31)
!2916 = !DILocation(line: 93, column: 17, scope: !2911)
!2917 = !DILocation(line: 93, column: 27, scope: !2911)
!2918 = !DILocation(line: 100, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2911, file: !2719, line: 100, column: 7)
!2920 = !DILocation(line: 101, column: 7, scope: !2919)
!2921 = !DILocation(line: 101, column: 18, scope: !2919)
!2922 = !DILocation(line: 95, column: 9, scope: !2911)
!2923 = !DILocation(line: 101, column: 16, scope: !2919)
!2924 = !DILocation(line: 100, column: 7, scope: !2911)
!2925 = !DILocation(line: 102, column: 5, scope: !2919)
!2926 = !DILocation(line: 103, column: 3, scope: !2911)
!2927 = distinct !DISubprogram(name: "xmemdup", scope: !2719, file: !2719, line: 111, type: !2928, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2932)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!31, !2930, !77}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "p", arg: 1, scope: !2927, file: !2719, line: 111, type: !2930)
!2934 = !DILocalVariable(name: "s", arg: 2, scope: !2927, file: !2719, line: 111, type: !77)
!2935 = !DILocation(line: 111, column: 22, scope: !2927)
!2936 = !DILocation(line: 111, column: 32, scope: !2927)
!2937 = !DILocation(line: 39, column: 17, scope: !2718, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 113, column: 18, scope: !2927)
!2939 = !DILocation(line: 41, column: 13, scope: !2718, inlinedAt: !2938)
!2940 = !DILocation(line: 41, column: 9, scope: !2718, inlinedAt: !2938)
!2941 = !DILocation(line: 42, column: 8, scope: !2729, inlinedAt: !2938)
!2942 = !DILocation(line: 42, column: 15, scope: !2729, inlinedAt: !2938)
!2943 = !DILocation(line: 42, column: 10, scope: !2729, inlinedAt: !2938)
!2944 = !DILocation(line: 43, column: 5, scope: !2729, inlinedAt: !2938)
!2945 = !DILocation(line: 113, column: 10, scope: !2927)
!2946 = !DILocation(line: 113, column: 3, scope: !2927)
!2947 = distinct !DISubprogram(name: "xstrdup", scope: !2719, file: !2719, line: 119, type: !1997, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2948)
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "string", arg: 1, scope: !2947, file: !2719, line: 119, type: !6)
!2950 = !DILocation(line: 119, column: 22, scope: !2947)
!2951 = !DILocation(line: 121, column: 27, scope: !2947)
!2952 = !DILocation(line: 121, column: 43, scope: !2947)
!2953 = !DILocation(line: 111, column: 22, scope: !2927, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 121, column: 10, scope: !2947)
!2955 = !DILocation(line: 111, column: 32, scope: !2927, inlinedAt: !2954)
!2956 = !DILocation(line: 39, column: 17, scope: !2718, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 113, column: 18, scope: !2927, inlinedAt: !2954)
!2958 = !DILocation(line: 41, column: 13, scope: !2718, inlinedAt: !2957)
!2959 = !DILocation(line: 41, column: 9, scope: !2718, inlinedAt: !2957)
!2960 = !DILocation(line: 42, column: 8, scope: !2729, inlinedAt: !2957)
!2961 = !DILocation(line: 42, column: 15, scope: !2729, inlinedAt: !2957)
!2962 = !DILocation(line: 42, column: 10, scope: !2729, inlinedAt: !2957)
!2963 = !DILocation(line: 43, column: 5, scope: !2729, inlinedAt: !2957)
!2964 = !DILocation(line: 113, column: 10, scope: !2927, inlinedAt: !2954)
!2965 = !DILocation(line: 121, column: 3, scope: !2947)
!2966 = distinct !DISubprogram(name: "xalloc_die", scope: !2967, file: !2967, line: 32, type: !688, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !159, retainedNodes: !4)
!2967 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2968 = !DILocation(line: 34, column: 10, scope: !2966)
!2969 = !DILocation(line: 34, column: 33, scope: !2966)
!2970 = !DILocation(line: 34, column: 3, scope: !2966)
!2971 = !DILocation(line: 40, column: 3, scope: !2966)
!2972 = distinct !DISubprogram(name: "rpl_calloc", scope: !2973, file: !2973, line: 42, type: !2705, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2974)
!2973 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !2973, line: 42, type: !77)
!2976 = !DILocalVariable(name: "s", arg: 2, scope: !2972, file: !2973, line: 42, type: !77)
!2977 = !DILocalVariable(name: "result", scope: !2972, file: !2973, line: 44, type: !31)
!2978 = !DILocalVariable(name: "bytes", scope: !2979, file: !2973, line: 56, type: !77)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !2973, line: 53, column: 5)
!2980 = distinct !DILexicalBlock(scope: !2972, file: !2973, line: 47, column: 7)
!2981 = !DILocation(line: 42, column: 20, scope: !2972)
!2982 = !DILocation(line: 42, column: 30, scope: !2972)
!2983 = !DILocation(line: 47, column: 9, scope: !2980)
!2984 = !DILocation(line: 47, column: 19, scope: !2980)
!2985 = !DILocation(line: 47, column: 14, scope: !2980)
!2986 = !DILocation(line: 56, column: 24, scope: !2979)
!2987 = !DILocation(line: 56, column: 14, scope: !2979)
!2988 = !DILocation(line: 57, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2979, file: !2973, line: 57, column: 11)
!2990 = !DILocation(line: 57, column: 21, scope: !2989)
!2991 = !DILocation(line: 57, column: 11, scope: !2979)
!2992 = !DILocation(line: 59, column: 11, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !2973, line: 58, column: 9)
!2994 = !DILocation(line: 59, column: 17, scope: !2993)
!2995 = !DILocation(line: 65, column: 12, scope: !2972)
!2996 = !DILocation(line: 44, column: 9, scope: !2972)
!2997 = !DILocation(line: 72, column: 3, scope: !2972)
!2998 = !DILocation(line: 0, scope: !2993)
!2999 = !DILocation(line: 73, column: 1, scope: !2972)
!3000 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3001, file: !3001, line: 385, type: !3002, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3016)
!3001 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!77, !3004, !6, !77, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !953, line: 6, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !955, line: 21, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 13, size: 64, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3008, file: !955, line: 15, baseType: !25, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3008, file: !955, line: 20, baseType: !3012, size: 32, offset: 32)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !955, line: 16, size: 32, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3012, file: !955, line: 18, baseType: !42, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3012, file: !955, line: 19, baseType: !964, size: 32)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3017 = !DILocalVariable(name: "pwc", arg: 1, scope: !3000, file: !3001, line: 385, type: !3004)
!3018 = !DILocalVariable(name: "s", arg: 2, scope: !3000, file: !3001, line: 385, type: !6)
!3019 = !DILocalVariable(name: "n", arg: 3, scope: !3000, file: !3001, line: 385, type: !77)
!3020 = !DILocalVariable(name: "ps", arg: 4, scope: !3000, file: !3001, line: 385, type: !3005)
!3021 = !DILocalVariable(name: "ret", scope: !3000, file: !3001, line: 387, type: !77)
!3022 = !DILocalVariable(name: "wc", scope: !3000, file: !3001, line: 388, type: !969)
!3023 = !DILocalVariable(name: "uc", scope: !3024, file: !3001, line: 449, type: !813)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3001, line: 448, column: 5)
!3025 = distinct !DILexicalBlock(scope: !3000, file: !3001, line: 447, column: 7)
!3026 = !DILocation(line: 385, column: 23, scope: !3000)
!3027 = !DILocation(line: 385, column: 40, scope: !3000)
!3028 = !DILocation(line: 385, column: 50, scope: !3000)
!3029 = !DILocation(line: 385, column: 64, scope: !3000)
!3030 = !DILocation(line: 388, column: 3, scope: !3000)
!3031 = !DILocation(line: 404, column: 9, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3000, file: !3001, line: 404, column: 7)
!3033 = !DILocation(line: 404, column: 7, scope: !3000)
!3034 = !DILocation(line: 439, column: 9, scope: !3000)
!3035 = !DILocation(line: 387, column: 10, scope: !3000)
!3036 = !DILocation(line: 447, column: 19, scope: !3025)
!3037 = !DILocation(line: 447, column: 31, scope: !3025)
!3038 = !DILocation(line: 447, column: 26, scope: !3025)
!3039 = !DILocation(line: 447, column: 41, scope: !3025)
!3040 = !DILocation(line: 447, column: 7, scope: !3000)
!3041 = !DILocation(line: 449, column: 26, scope: !3024)
!3042 = !DILocation(line: 449, column: 21, scope: !3024)
!3043 = !DILocation(line: 450, column: 14, scope: !3024)
!3044 = !DILocation(line: 450, column: 12, scope: !3024)
!3045 = !DILocation(line: 0, scope: !3024)
!3046 = !DILocation(line: 456, column: 1, scope: !3000)
!3047 = distinct !DISubprogram(name: "close_stream", scope: !3048, file: !3048, line: 56, type: !3049, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3085)
!3048 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!25, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2512, line: 7, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2514, line: 49, size: 1728, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3053, file: !2514, line: 51, baseType: !25, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3053, file: !2514, line: 54, baseType: !32, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3053, file: !2514, line: 55, baseType: !32, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3053, file: !2514, line: 56, baseType: !32, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3053, file: !2514, line: 57, baseType: !32, size: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3053, file: !2514, line: 58, baseType: !32, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3053, file: !2514, line: 59, baseType: !32, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3053, file: !2514, line: 60, baseType: !32, size: 64, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3053, file: !2514, line: 61, baseType: !32, size: 64, offset: 512)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3053, file: !2514, line: 64, baseType: !32, size: 64, offset: 576)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3053, file: !2514, line: 65, baseType: !32, size: 64, offset: 640)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3053, file: !2514, line: 66, baseType: !32, size: 64, offset: 704)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3053, file: !2514, line: 68, baseType: !2529, size: 64, offset: 768)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3053, file: !2514, line: 70, baseType: !3069, size: 64, offset: 832)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3053, file: !2514, line: 72, baseType: !25, size: 32, offset: 896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3053, file: !2514, line: 73, baseType: !25, size: 32, offset: 928)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3053, file: !2514, line: 74, baseType: !2536, size: 64, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3053, file: !2514, line: 77, baseType: !76, size: 16, offset: 1024)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3053, file: !2514, line: 78, baseType: !2541, size: 8, offset: 1040)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3053, file: !2514, line: 79, baseType: !2543, size: 8, offset: 1048)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3053, file: !2514, line: 81, baseType: !2547, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3053, file: !2514, line: 89, baseType: !2550, size: 64, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3053, file: !2514, line: 91, baseType: !2552, size: 64, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3053, file: !2514, line: 92, baseType: !2555, size: 64, offset: 1280)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3053, file: !2514, line: 93, baseType: !3069, size: 64, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3053, file: !2514, line: 94, baseType: !31, size: 64, offset: 1408)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3053, file: !2514, line: 95, baseType: !77, size: 64, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3053, file: !2514, line: 96, baseType: !25, size: 32, offset: 1536)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3053, file: !2514, line: 98, baseType: !2562, size: 160, offset: 1568)
!3085 = !{!3086, !3087, !3089, !3090}
!3086 = !DILocalVariable(name: "stream", arg: 1, scope: !3047, file: !3048, line: 56, type: !3051)
!3087 = !DILocalVariable(name: "some_pending", scope: !3047, file: !3048, line: 58, type: !3088)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3089 = !DILocalVariable(name: "prev_fail", scope: !3047, file: !3048, line: 59, type: !3088)
!3090 = !DILocalVariable(name: "fclose_fail", scope: !3047, file: !3048, line: 60, type: !3088)
!3091 = !DILocation(line: 56, column: 21, scope: !3047)
!3092 = !DILocation(line: 58, column: 30, scope: !3047)
!3093 = !DILocalVariable(name: "__stream", arg: 1, scope: !3094, file: !3095, line: 135, type: !3051)
!3094 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3095, file: !3095, line: 135, type: !3049, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3096)
!3095 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3096 = !{!3093}
!3097 = !DILocation(line: 135, column: 1, scope: !3094, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 59, column: 27, scope: !3047)
!3099 = !DILocation(line: 137, column: 10, scope: !3094, inlinedAt: !3098)
!3100 = !{!3101, !703, i64 0}
!3101 = !{!"_IO_FILE", !703, i64 0, !580, i64 8, !580, i64 16, !580, i64 24, !580, i64 32, !580, i64 40, !580, i64 48, !580, i64 56, !580, i64 64, !580, i64 72, !580, i64 80, !580, i64 88, !580, i64 96, !580, i64 104, !703, i64 112, !703, i64 116, !1836, i64 120, !1210, i64 128, !581, i64 130, !581, i64 131, !580, i64 136, !1836, i64 144, !580, i64 152, !580, i64 160, !580, i64 168, !580, i64 176, !1836, i64 184, !703, i64 192, !581, i64 196}
!3102 = !DILocation(line: 59, column: 43, scope: !3047)
!3103 = !DILocation(line: 60, column: 29, scope: !3047)
!3104 = !DILocation(line: 60, column: 45, scope: !3047)
!3105 = !DILocation(line: 70, column: 17, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3047, file: !3048, line: 70, column: 7)
!3107 = !DILocation(line: 58, column: 50, scope: !3047)
!3108 = !DILocation(line: 70, column: 33, scope: !3106)
!3109 = !DILocation(line: 70, column: 53, scope: !3106)
!3110 = !DILocation(line: 70, column: 59, scope: !3106)
!3111 = !DILocation(line: 70, column: 7, scope: !3047)
!3112 = !DILocation(line: 72, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3106, file: !3048, line: 71, column: 5)
!3114 = !DILocation(line: 73, column: 9, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3113, file: !3048, line: 72, column: 11)
!3116 = !DILocation(line: 73, column: 15, scope: !3115)
!3117 = !DILocation(line: 0, scope: !3047)
!3118 = !DILocation(line: 78, column: 1, scope: !3047)
!3119 = distinct !DISubprogram(name: "hard_locale", scope: !3120, file: !3120, line: 38, type: !3121, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !168, retainedNodes: !3123)
!3120 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!17, !25}
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "category", arg: 1, scope: !3119, file: !3120, line: 38, type: !25)
!3125 = !DILocalVariable(name: "hard", scope: !3119, file: !3120, line: 40, type: !17)
!3126 = !DILocalVariable(name: "p", scope: !3119, file: !3120, line: 41, type: !6)
!3127 = !DILocation(line: 38, column: 18, scope: !3119)
!3128 = !DILocation(line: 40, column: 8, scope: !3119)
!3129 = !DILocation(line: 41, column: 19, scope: !3119)
!3130 = !DILocation(line: 41, column: 15, scope: !3119)
!3131 = !DILocation(line: 43, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3119, file: !3120, line: 43, column: 7)
!3133 = !DILocation(line: 43, column: 7, scope: !3119)
!3134 = !DILocation(line: 47, column: 15, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3120, line: 47, column: 15)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3120, line: 46, column: 9)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3120, line: 45, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3132, file: !3120, line: 44, column: 5)
!3139 = !DILocation(line: 47, column: 31, scope: !3135)
!3140 = !DILocation(line: 47, column: 36, scope: !3135)
!3141 = !DILocation(line: 47, column: 39, scope: !3135)
!3142 = !DILocation(line: 47, column: 59, scope: !3135)
!3143 = !DILocation(line: 47, column: 15, scope: !3136)
!3144 = !DILocation(line: 48, column: 13, scope: !3135)
!3145 = !DILocation(line: 71, column: 3, scope: !3119)
!3146 = distinct !DISubprogram(name: "locale_charset", scope: !3147, file: !3147, line: 687, type: !3148, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !170, retainedNodes: !3150)
!3147 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!6}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "codeset", scope: !3146, file: !3147, line: 689, type: !6)
!3152 = !DILocation(line: 696, column: 13, scope: !3146)
!3153 = !DILocation(line: 689, column: 15, scope: !3146)
!3154 = !DILocation(line: 754, column: 15, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3146, file: !3147, line: 754, column: 7)
!3156 = !DILocation(line: 754, column: 7, scope: !3146)
!3157 = !DILocation(line: 907, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3147, line: 907, column: 13)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3147, line: 897, column: 7)
!3160 = distinct !DILexicalBlock(scope: !3146, file: !3147, line: 856, column: 3)
!3161 = !DILocation(line: 907, column: 24, scope: !3158)
!3162 = !DILocation(line: 907, column: 13, scope: !3159)
!3163 = !DILocation(line: 995, column: 3, scope: !3146)
!3164 = distinct !DISubprogram(name: "rpl_fclose", scope: !3165, file: !3165, line: 58, type: !3166, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !559, retainedNodes: !3202)
!3165 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!25, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2512, line: 7, baseType: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2514, line: 49, size: 1728, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3170, file: !2514, line: 51, baseType: !25, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3170, file: !2514, line: 54, baseType: !32, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3170, file: !2514, line: 55, baseType: !32, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3170, file: !2514, line: 56, baseType: !32, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3170, file: !2514, line: 57, baseType: !32, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3170, file: !2514, line: 58, baseType: !32, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3170, file: !2514, line: 59, baseType: !32, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3170, file: !2514, line: 60, baseType: !32, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3170, file: !2514, line: 61, baseType: !32, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3170, file: !2514, line: 64, baseType: !32, size: 64, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3170, file: !2514, line: 65, baseType: !32, size: 64, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3170, file: !2514, line: 66, baseType: !32, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3170, file: !2514, line: 68, baseType: !2529, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3170, file: !2514, line: 70, baseType: !3186, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3170, file: !2514, line: 72, baseType: !25, size: 32, offset: 896)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3170, file: !2514, line: 73, baseType: !25, size: 32, offset: 928)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3170, file: !2514, line: 74, baseType: !2536, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3170, file: !2514, line: 77, baseType: !76, size: 16, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3170, file: !2514, line: 78, baseType: !2541, size: 8, offset: 1040)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3170, file: !2514, line: 79, baseType: !2543, size: 8, offset: 1048)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3170, file: !2514, line: 81, baseType: !2547, size: 64, offset: 1088)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3170, file: !2514, line: 89, baseType: !2550, size: 64, offset: 1152)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3170, file: !2514, line: 91, baseType: !2552, size: 64, offset: 1216)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3170, file: !2514, line: 92, baseType: !2555, size: 64, offset: 1280)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3170, file: !2514, line: 93, baseType: !3186, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3170, file: !2514, line: 94, baseType: !31, size: 64, offset: 1408)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3170, file: !2514, line: 95, baseType: !77, size: 64, offset: 1472)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3170, file: !2514, line: 96, baseType: !25, size: 32, offset: 1536)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3170, file: !2514, line: 98, baseType: !2562, size: 160, offset: 1568)
!3202 = !{!3203, !3204, !3205, !3206}
!3203 = !DILocalVariable(name: "fp", arg: 1, scope: !3164, file: !3165, line: 58, type: !3168)
!3204 = !DILocalVariable(name: "saved_errno", scope: !3164, file: !3165, line: 60, type: !25)
!3205 = !DILocalVariable(name: "fd", scope: !3164, file: !3165, line: 61, type: !25)
!3206 = !DILocalVariable(name: "result", scope: !3164, file: !3165, line: 62, type: !25)
!3207 = !DILocation(line: 58, column: 19, scope: !3164)
!3208 = !DILocation(line: 60, column: 7, scope: !3164)
!3209 = !DILocation(line: 62, column: 7, scope: !3164)
!3210 = !DILocation(line: 65, column: 8, scope: !3164)
!3211 = !DILocation(line: 61, column: 7, scope: !3164)
!3212 = !DILocation(line: 66, column: 10, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3164, file: !3165, line: 66, column: 7)
!3214 = !DILocation(line: 66, column: 7, scope: !3164)
!3215 = !DILocation(line: 67, column: 12, scope: !3213)
!3216 = !DILocation(line: 67, column: 5, scope: !3213)
!3217 = !DILocation(line: 72, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3164, file: !3165, line: 72, column: 7)
!3219 = !DILocation(line: 72, column: 23, scope: !3218)
!3220 = !DILocation(line: 72, column: 33, scope: !3218)
!3221 = !DILocation(line: 72, column: 26, scope: !3218)
!3222 = !DILocation(line: 72, column: 59, scope: !3218)
!3223 = !DILocation(line: 73, column: 7, scope: !3218)
!3224 = !DILocation(line: 73, column: 10, scope: !3218)
!3225 = !DILocation(line: 72, column: 7, scope: !3164)
!3226 = !DILocation(line: 100, column: 12, scope: !3164)
!3227 = !DILocation(line: 105, column: 7, scope: !3164)
!3228 = !DILocation(line: 74, column: 19, scope: !3218)
!3229 = !DILocation(line: 105, column: 19, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3164, file: !3165, line: 105, column: 7)
!3231 = !DILocation(line: 107, column: 13, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3230, file: !3165, line: 106, column: 5)
!3233 = !DILocation(line: 109, column: 5, scope: !3232)
!3234 = !DILocation(line: 0, scope: !3164)
!3235 = !DILocation(line: 112, column: 1, scope: !3164)
!3236 = distinct !DISubprogram(name: "rpl_fflush", scope: !3237, file: !3237, line: 129, type: !3238, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !561, retainedNodes: !3274)
!3237 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!25, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2512, line: 7, baseType: !3242)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2514, line: 49, size: 1728, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3242, file: !2514, line: 51, baseType: !25, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3242, file: !2514, line: 54, baseType: !32, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3242, file: !2514, line: 55, baseType: !32, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3242, file: !2514, line: 56, baseType: !32, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3242, file: !2514, line: 57, baseType: !32, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3242, file: !2514, line: 58, baseType: !32, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3242, file: !2514, line: 59, baseType: !32, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3242, file: !2514, line: 60, baseType: !32, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3242, file: !2514, line: 61, baseType: !32, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3242, file: !2514, line: 64, baseType: !32, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3242, file: !2514, line: 65, baseType: !32, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3242, file: !2514, line: 66, baseType: !32, size: 64, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3242, file: !2514, line: 68, baseType: !2529, size: 64, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3242, file: !2514, line: 70, baseType: !3258, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3242, file: !2514, line: 72, baseType: !25, size: 32, offset: 896)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3242, file: !2514, line: 73, baseType: !25, size: 32, offset: 928)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3242, file: !2514, line: 74, baseType: !2536, size: 64, offset: 960)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3242, file: !2514, line: 77, baseType: !76, size: 16, offset: 1024)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3242, file: !2514, line: 78, baseType: !2541, size: 8, offset: 1040)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3242, file: !2514, line: 79, baseType: !2543, size: 8, offset: 1048)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3242, file: !2514, line: 81, baseType: !2547, size: 64, offset: 1088)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3242, file: !2514, line: 89, baseType: !2550, size: 64, offset: 1152)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3242, file: !2514, line: 91, baseType: !2552, size: 64, offset: 1216)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3242, file: !2514, line: 92, baseType: !2555, size: 64, offset: 1280)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3242, file: !2514, line: 93, baseType: !3258, size: 64, offset: 1344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3242, file: !2514, line: 94, baseType: !31, size: 64, offset: 1408)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3242, file: !2514, line: 95, baseType: !77, size: 64, offset: 1472)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3242, file: !2514, line: 96, baseType: !25, size: 32, offset: 1536)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3242, file: !2514, line: 98, baseType: !2562, size: 160, offset: 1568)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "stream", arg: 1, scope: !3236, file: !3237, line: 129, type: !3240)
!3276 = !DILocation(line: 129, column: 19, scope: !3236)
!3277 = !DILocation(line: 150, column: 14, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3236, file: !3237, line: 150, column: 7)
!3279 = !DILocation(line: 150, column: 22, scope: !3278)
!3280 = !DILocation(line: 150, column: 27, scope: !3278)
!3281 = !DILocation(line: 150, column: 7, scope: !3236)
!3282 = !DILocation(line: 151, column: 12, scope: !3278)
!3283 = !DILocation(line: 151, column: 5, scope: !3278)
!3284 = !DILocalVariable(name: "fp", arg: 1, scope: !3285, file: !3237, line: 41, type: !3240)
!3285 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3237, file: !3237, line: 41, type: !3286, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !561, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3240}
!3288 = !{!3284}
!3289 = !DILocation(line: 41, column: 48, scope: !3285, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 156, column: 3, scope: !3236)
!3291 = !DILocation(line: 43, column: 11, scope: !3292, inlinedAt: !3290)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !3237, line: 43, column: 7)
!3293 = !DILocation(line: 43, column: 18, scope: !3292, inlinedAt: !3290)
!3294 = !DILocation(line: 43, column: 7, scope: !3285, inlinedAt: !3290)
!3295 = !DILocation(line: 45, column: 5, scope: !3292, inlinedAt: !3290)
!3296 = !DILocation(line: 158, column: 10, scope: !3236)
!3297 = !DILocation(line: 158, column: 3, scope: !3236)
!3298 = !DILocation(line: 0, scope: !3236)
!3299 = !DILocation(line: 232, column: 1, scope: !3236)
!3300 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3301, file: !3301, line: 28, type: !3302, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !563, retainedNodes: !3339)
!3301 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!25, !3304, !3338, !25}
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2512, line: 7, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2514, line: 49, size: 1728, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3306, file: !2514, line: 51, baseType: !25, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3306, file: !2514, line: 54, baseType: !32, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3306, file: !2514, line: 55, baseType: !32, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3306, file: !2514, line: 56, baseType: !32, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3306, file: !2514, line: 57, baseType: !32, size: 64, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3306, file: !2514, line: 58, baseType: !32, size: 64, offset: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3306, file: !2514, line: 59, baseType: !32, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3306, file: !2514, line: 60, baseType: !32, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3306, file: !2514, line: 61, baseType: !32, size: 64, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3306, file: !2514, line: 64, baseType: !32, size: 64, offset: 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3306, file: !2514, line: 65, baseType: !32, size: 64, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3306, file: !2514, line: 66, baseType: !32, size: 64, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3306, file: !2514, line: 68, baseType: !2529, size: 64, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3306, file: !2514, line: 70, baseType: !3322, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3306, file: !2514, line: 72, baseType: !25, size: 32, offset: 896)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3306, file: !2514, line: 73, baseType: !25, size: 32, offset: 928)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3306, file: !2514, line: 74, baseType: !2536, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3306, file: !2514, line: 77, baseType: !76, size: 16, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3306, file: !2514, line: 78, baseType: !2541, size: 8, offset: 1040)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3306, file: !2514, line: 79, baseType: !2543, size: 8, offset: 1048)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3306, file: !2514, line: 81, baseType: !2547, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3306, file: !2514, line: 89, baseType: !2550, size: 64, offset: 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3306, file: !2514, line: 91, baseType: !2552, size: 64, offset: 1216)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3306, file: !2514, line: 92, baseType: !2555, size: 64, offset: 1280)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3306, file: !2514, line: 93, baseType: !3322, size: 64, offset: 1344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3306, file: !2514, line: 94, baseType: !31, size: 64, offset: 1408)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3306, file: !2514, line: 95, baseType: !77, size: 64, offset: 1472)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3306, file: !2514, line: 96, baseType: !25, size: 32, offset: 1536)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3306, file: !2514, line: 98, baseType: !2562, size: 160, offset: 1568)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2684, line: 63, baseType: !2536)
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DILocalVariable(name: "fp", arg: 1, scope: !3300, file: !3301, line: 28, type: !3304)
!3341 = !DILocalVariable(name: "offset", arg: 2, scope: !3300, file: !3301, line: 28, type: !3338)
!3342 = !DILocalVariable(name: "whence", arg: 3, scope: !3300, file: !3301, line: 28, type: !25)
!3343 = !DILocalVariable(name: "pos", scope: !3344, file: !3301, line: 117, type: !3338)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3301, line: 113, column: 5)
!3345 = distinct !DILexicalBlock(scope: !3300, file: !3301, line: 52, column: 7)
!3346 = !DILocation(line: 28, column: 15, scope: !3300)
!3347 = !DILocation(line: 28, column: 25, scope: !3300)
!3348 = !DILocation(line: 28, column: 37, scope: !3300)
!3349 = !DILocation(line: 52, column: 11, scope: !3345)
!3350 = !{!3101, !580, i64 16}
!3351 = !DILocation(line: 52, column: 31, scope: !3345)
!3352 = !{!3101, !580, i64 8}
!3353 = !DILocation(line: 52, column: 24, scope: !3345)
!3354 = !DILocation(line: 53, column: 7, scope: !3345)
!3355 = !DILocation(line: 53, column: 14, scope: !3345)
!3356 = !{!3101, !580, i64 40}
!3357 = !DILocation(line: 53, column: 35, scope: !3345)
!3358 = !{!3101, !580, i64 32}
!3359 = !DILocation(line: 53, column: 28, scope: !3345)
!3360 = !DILocation(line: 54, column: 7, scope: !3345)
!3361 = !DILocation(line: 54, column: 14, scope: !3345)
!3362 = !{!3101, !580, i64 72}
!3363 = !DILocation(line: 54, column: 28, scope: !3345)
!3364 = !DILocation(line: 52, column: 7, scope: !3300)
!3365 = !DILocation(line: 117, column: 26, scope: !3344)
!3366 = !DILocation(line: 117, column: 19, scope: !3344)
!3367 = !DILocation(line: 117, column: 13, scope: !3344)
!3368 = !DILocation(line: 118, column: 15, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3344, file: !3301, line: 118, column: 11)
!3370 = !DILocation(line: 118, column: 11, scope: !3344)
!3371 = !DILocation(line: 129, column: 11, scope: !3344)
!3372 = !DILocation(line: 129, column: 18, scope: !3344)
!3373 = !DILocation(line: 130, column: 11, scope: !3344)
!3374 = !DILocation(line: 130, column: 19, scope: !3344)
!3375 = !{!3101, !1836, i64 144}
!3376 = !DILocation(line: 161, column: 7, scope: !3344)
!3377 = !DILocation(line: 163, column: 10, scope: !3300)
!3378 = !DILocation(line: 163, column: 3, scope: !3300)
!3379 = !DILocation(line: 0, scope: !3300)
!3380 = !DILocation(line: 164, column: 1, scope: !3300)
