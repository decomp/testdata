; ModuleID = 'coreutils-8.30/src/true.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !575, metadata !DIExpression()), !dbg !576
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !577
  %3 = load i8*, i8** @program_name, align 8, !dbg !577, !tbaa !578
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #11, !dbg !577
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !582
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #11, !dbg !582
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !583
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !578
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !583
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !584
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584, !tbaa !578
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !584
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !585
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !585
  tail call fastcc void @emit_ancillary_info(), !dbg !586
  tail call void @exit(i32 %0) #14, !dbg !587
  unreachable, !dbg !587
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !588 {
  %1 = alloca [7 x %struct.infomap], align 16
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #11, !dbg !607
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !594, metadata !DIExpression()), !dbg !608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %2, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !608
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !609
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !604, metadata !DIExpression()), !dbg !610
  br label %4, !dbg !611

; <label>:4:                                      ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !604, metadata !DIExpression()), !dbg !610
  %7 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #15, !dbg !611
  %8 = icmp eq i32 %7, 0, !dbg !611
  br i1 %8, label %14, label %9, !dbg !612

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !613
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !604, metadata !DIExpression()), !dbg !610
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !614
  %12 = load i8*, i8** %11, align 8, !dbg !614, !tbaa !615
  %13 = icmp eq i8* %12, null, !dbg !617
  br i1 %13, label %14, label %4, !dbg !618, !llvm.loop !619

; <label>:14:                                     ; preds = %9, %4
  %15 = phi %struct.infomap* [ %10, %9 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !604, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !604, metadata !DIExpression()), !dbg !610
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !620
  %17 = load i8*, i8** %16, align 8, !dbg !620, !tbaa !622
  %18 = icmp eq i8* %17, null, !dbg !623
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !624
  call void @llvm.dbg.value(metadata i8* %19, metadata !603, metadata !DIExpression()), !dbg !625
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !626
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !626
  %22 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !627
  call void @llvm.dbg.value(metadata i8* %22, metadata !606, metadata !DIExpression()), !dbg !628
  %23 = icmp eq i8* %22, null, !dbg !629
  br i1 %23, label %30, label %24, !dbg !631

; <label>:24:                                     ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #15, !dbg !632
  %26 = icmp eq i32 %25, 0, !dbg !632
  br i1 %26, label %30, label %27, !dbg !633

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !634
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !634
  br label %30, !dbg !636

; <label>:30:                                     ; preds = %24, %14, %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !637
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !637
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !638
  %34 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !638
  %35 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !638
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* %19, i8* %35) #11, !dbg !638
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #11, !dbg !639
  ret void, !dbg !639
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
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #8 !dbg !640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !645, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8** %1, metadata !646, metadata !DIExpression()), !dbg !648
  %3 = icmp eq i32 %0, 2, !dbg !649
  br i1 %3, label %4, label %21, !dbg !651

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !652, !tbaa !578
  tail call void @set_program_name(i8* %5) #11, !dbg !654
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !655
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !656
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !657
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !658
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !659
  %11 = load i8*, i8** %10, align 8, !dbg !659, !tbaa !578
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #15, !dbg !659
  %13 = icmp eq i32 %12, 0, !dbg !659
  br i1 %13, label %14, label %15, !dbg !661

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 0) #16, !dbg !662
  unreachable, !dbg !662

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #15, !dbg !663
  %17 = icmp eq i32 %16, 0, !dbg !663
  br i1 %17, label %18, label %21, !dbg !665

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !578
  %20 = load i8*, i8** @Version, align 8, !dbg !667, !tbaa !578
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !668
  br label %21, !dbg !668

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 0, !dbg !669
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #8 !dbg !670 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !672, metadata !DIExpression()), !dbg !673
  store i8* %0, i8** @file_name, align 8, !dbg !674, !tbaa !578
  ret void, !dbg !675
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #8 !dbg !676 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !680, metadata !DIExpression()), !dbg !681
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !682, !tbaa !683
  ret void, !dbg !685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !686 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !578
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !694
  %3 = icmp eq i32 %2, 0, !dbg !695
  br i1 %3, label %22, label %4, !dbg !696

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !697, !tbaa !683, !range !698
  %6 = icmp eq i8 %5, 0, !dbg !697
  br i1 %6, label %11, label %7, !dbg !699

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !700
  %9 = load i32, i32* %8, align 4, !dbg !700, !tbaa !701
  %10 = icmp eq i32 %9, 32, !dbg !703
  br i1 %10, label %22, label %11, !dbg !704

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !705
  call void @llvm.dbg.value(metadata i8* %12, metadata !690, metadata !DIExpression()), !dbg !706
  %13 = load i8*, i8** @file_name, align 8, !dbg !707, !tbaa !578
  %14 = icmp eq i8* %13, null, !dbg !707
  %15 = tail call i32* @__errno_location() #17, !dbg !709
  %16 = load i32, i32* %15, align 4, !dbg !709, !tbaa !701
  br i1 %14, label %19, label %17, !dbg !710

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !711
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !712
  br label %20, !dbg !712

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #11, !dbg !713
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !714, !tbaa !701
  tail call void @_exit(i32 %21) #14, !dbg !715
  unreachable, !dbg !715

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !578
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !718
  %25 = icmp eq i32 %24, 0, !dbg !719
  br i1 %25, label %28, label %26, !dbg !720

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !721, !tbaa !701
  tail call void @_exit(i32 %27) #14, !dbg !722
  unreachable, !dbg !722

; <label>:28:                                     ; preds = %22
  ret void, !dbg !723
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #8 !dbg !724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !726, metadata !DIExpression()), !dbg !729
  %2 = icmp eq i8* %0, null, !dbg !730
  br i1 %2, label %3, label %6, !dbg !732

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !733, !tbaa !578
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !735
  tail call void @abort() #14, !dbg !736
  unreachable, !dbg !736

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !737
  call void @llvm.dbg.value(metadata i8* %7, metadata !727, metadata !DIExpression()), !dbg !738
  %8 = icmp eq i8* %7, null, !dbg !739
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !740
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !741
  call void @llvm.dbg.value(metadata i8* %10, metadata !728, metadata !DIExpression()), !dbg !742
  %11 = ptrtoint i8* %10 to i64, !dbg !743
  %12 = ptrtoint i8* %0 to i64, !dbg !743
  %13 = sub i64 %11, %12, !dbg !743
  %14 = icmp sgt i64 %13, 6, !dbg !745
  br i1 %14, label %15, label %24, !dbg !746

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !747
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #15, !dbg !748
  %18 = icmp eq i32 %17, 0, !dbg !749
  br i1 %18, label %19, label %24, !dbg !750

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !726, metadata !DIExpression()), !dbg !729
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #15, !dbg !751
  %21 = icmp eq i32 %20, 0, !dbg !754
  br i1 %21, label %22, label %24, !dbg !755

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !756
  call void @llvm.dbg.value(metadata i8* %23, metadata !726, metadata !DIExpression()), !dbg !729
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !758, !tbaa !578
  br label %24, !dbg !759

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !726, metadata !DIExpression()), !dbg !729
  store i8* %25, i8** @program_name, align 8, !dbg !760, !tbaa !578
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !761, !tbaa !578
  ret void, !dbg !762
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #8 !dbg !763 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !768, metadata !DIExpression()), !dbg !771
  %2 = tail call i32* @__errno_location() #17, !dbg !772
  %3 = load i32, i32* %2, align 4, !dbg !772, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %3, metadata !769, metadata !DIExpression()), !dbg !773
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !774
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !774
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !774
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !775
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !770, metadata !DIExpression()), !dbg !776
  store i32 %3, i32* %2, align 4, !dbg !777, !tbaa !701
  ret %struct.quoting_options* %8, !dbg !778
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !779 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !785, metadata !DIExpression()), !dbg !786
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !787
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !787
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !788
  %5 = load i32, i32* %4, align 8, !dbg !788, !tbaa !789
  ret i32 %5, !dbg !791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #8 !dbg !792 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %1, metadata !797, metadata !DIExpression()), !dbg !799
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !800
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !800
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !801
  store i32 %1, i32* %5, align 8, !dbg !802, !tbaa !789
  ret void, !dbg !803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #8 !dbg !804 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !808, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i8 %1, metadata !809, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %2, metadata !810, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %1, metadata !811, metadata !DIExpression()), !dbg !820
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !821
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !821
  %6 = lshr i8 %1, 5, !dbg !822
  %7 = zext i8 %6 to i64, !dbg !822
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !823
  call void @llvm.dbg.value(metadata i32* %8, metadata !813, metadata !DIExpression()), !dbg !824
  %9 = and i8 %1, 31, !dbg !825
  %10 = zext i8 %9 to i32, !dbg !825
  call void @llvm.dbg.value(metadata i32 %10, metadata !815, metadata !DIExpression()), !dbg !826
  %11 = load i32, i32* %8, align 4, !dbg !827, !tbaa !701
  %12 = lshr i32 %11, %10, !dbg !828
  %13 = and i32 %12, 1, !dbg !829
  call void @llvm.dbg.value(metadata i32 %13, metadata !816, metadata !DIExpression()), !dbg !830
  %14 = and i32 %2, 1, !dbg !831
  %15 = xor i32 %13, %14, !dbg !832
  %16 = shl i32 %15, %10, !dbg !833
  %17 = xor i32 %16, %11, !dbg !834
  store i32 %17, i32* %8, align 4, !dbg !834, !tbaa !701
  ret i32 %13, !dbg !835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #8 !dbg !836 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !840, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %1, metadata !841, metadata !DIExpression()), !dbg !844
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !845
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !840, metadata !DIExpression()), !dbg !843
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !848
  %6 = load i32, i32* %5, align 4, !dbg !848, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %6, metadata !842, metadata !DIExpression()), !dbg !850
  store i32 %1, i32* %5, align 4, !dbg !851, !tbaa !849
  ret i32 %6, !dbg !852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #8 !dbg !853 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !857, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i8* %1, metadata !858, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %2, metadata !859, metadata !DIExpression()), !dbg !862
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !863
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !857, metadata !DIExpression()), !dbg !860
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !866
  store i32 10, i32* %6, align 8, !dbg !867, !tbaa !789
  %7 = icmp ne i8* %1, null, !dbg !868
  %8 = icmp ne i8* %2, null, !dbg !870
  %9 = and i1 %7, %8, !dbg !871
  br i1 %9, label %11, label %10, !dbg !871

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !872
  unreachable, !dbg !872

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !873
  store i8* %1, i8** %12, align 8, !dbg !874, !tbaa !875
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !876
  store i8* %2, i8** %13, align 8, !dbg !877, !tbaa !878
  ret void, !dbg !879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #8 !dbg !880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !884, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i64 %1, metadata !885, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %2, metadata !886, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %3, metadata !887, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !888, metadata !DIExpression()), !dbg !896
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !897
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !889, metadata !DIExpression()), !dbg !898
  %8 = tail call i32* @__errno_location() #17, !dbg !899
  %9 = load i32, i32* %8, align 4, !dbg !899, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %9, metadata !890, metadata !DIExpression()), !dbg !900
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !901
  %11 = load i32, i32* %10, align 8, !dbg !901, !tbaa !789
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !902
  %13 = load i32, i32* %12, align 4, !dbg !902, !tbaa !849
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !903
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !904
  %16 = load i8*, i8** %15, align 8, !dbg !904, !tbaa !875
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !905
  %18 = load i8*, i8** %17, align 8, !dbg !905, !tbaa !878
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !906
  call void @llvm.dbg.value(metadata i64 %19, metadata !891, metadata !DIExpression()), !dbg !907
  store i32 %9, i32* %8, align 4, !dbg !908, !tbaa !701
  ret i64 %19, !dbg !909
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #8 !dbg !910 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !916, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %2, metadata !918, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 %3, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 %4, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %5, metadata !921, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32* %6, metadata !922, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8* %7, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %8, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 0, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* null, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8 0, metadata !930, metadata !DIExpression()), !dbg !993
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !994
  %14 = icmp eq i64 %13, 1, !dbg !995
  %15 = lshr i32 %5, 1, !dbg !996
  %16 = trunc i32 %15 to i8, !dbg !996
  %17 = and i8 %16, 1, !dbg !996
  call void @llvm.dbg.value(metadata i8 %17, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 0, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 0, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 1, metadata !935, metadata !DIExpression()), !dbg !999
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1000

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !990
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !991
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !992
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !993
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1001
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !997
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !998
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !999
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %39, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %38, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %37, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %36, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i64 %35, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %34, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i64 %33, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %32, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %31, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %30, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %29, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %28, metadata !920, metadata !DIExpression()), !dbg !984
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
  ], !dbg !1003

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8 1, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 %36, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 5, metadata !920, metadata !DIExpression()), !dbg !984
  br label %93, !dbg !1004

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 5, metadata !920, metadata !DIExpression()), !dbg !984
  %43 = and i8 %36, 1, !dbg !1005
  %44 = icmp eq i8 %43, 0, !dbg !1005
  br i1 %44, label %45, label %93, !dbg !1004

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1007
  br i1 %46, label %93, label %47, !dbg !1010

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1007, !tbaa !1011
  br label %93, !dbg !1007

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1012
  call void @llvm.dbg.value(metadata i8* %49, metadata !923, metadata !DIExpression()), !dbg !987
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %28), !dbg !1016
  call void @llvm.dbg.value(metadata i8* %50, metadata !924, metadata !DIExpression()), !dbg !988
  br label %51, !dbg !1017

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %52, metadata !923, metadata !DIExpression()), !dbg !987
  %54 = and i8 %36, 1, !dbg !1018
  %55 = icmp eq i8 %54, 0, !dbg !1018
  br i1 %55, label %56, label %71, !dbg !1020

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !989
  %57 = load i8, i8* %52, align 1, !dbg !1021, !tbaa !1011
  %58 = icmp eq i8 %57, 0, !dbg !1024
  br i1 %58, label %71, label %59, !dbg !1024

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %62, metadata !926, metadata !DIExpression()), !dbg !989
  %63 = icmp ult i64 %62, %40, !dbg !1025
  br i1 %63, label %64, label %66, !dbg !1028

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1025
  store i8 %60, i8* %65, align 1, !dbg !1025, !tbaa !1011
  br label %66, !dbg !1025

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1028
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %68, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %67, metadata !926, metadata !DIExpression()), !dbg !989
  %69 = load i8, i8* %68, align 1, !dbg !1021, !tbaa !1011
  %70 = icmp eq i8 %69, 0, !dbg !1024
  br i1 %70, label %71, label %59, !dbg !1024, !llvm.loop !1030

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !989
  call void @llvm.dbg.value(metadata i64 %72, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %53, metadata !928, metadata !DIExpression()), !dbg !991
  %73 = call i64 @strlen(i8* %53) #15, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %73, metadata !929, metadata !DIExpression()), !dbg !992
  br label %93, !dbg !1033

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !930, metadata !DIExpression()), !dbg !993
  br label %75, !dbg !1034

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1001
  call void @llvm.dbg.value(metadata i8 %76, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 1, metadata !932, metadata !DIExpression()), !dbg !996
  br label %77, !dbg !1035

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !993
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1001
  call void @llvm.dbg.value(metadata i8 %79, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 %78, metadata !930, metadata !DIExpression()), !dbg !993
  %80 = and i8 %79, 1, !dbg !1036
  %81 = icmp eq i8 %80, 0, !dbg !1036
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1038
  br label %83, !dbg !1038

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1039
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !996
  call void @llvm.dbg.value(metadata i8 %85, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 %84, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  %86 = and i8 %85, 1, !dbg !1040
  %87 = icmp eq i8 %86, 0, !dbg !1040
  br i1 %87, label %88, label %93, !dbg !1042

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1043
  br i1 %89, label %93, label %90, !dbg !1046

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1043, !tbaa !1011
  br label %93, !dbg !1043

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !932, metadata !DIExpression()), !dbg !996
  br label %93, !dbg !1047

; <label>:92:                                     ; preds = %27
  call void @abort() #14, !dbg !1048
  unreachable, !dbg !1048

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !989
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], !dbg !1001
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1001
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1001
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %101, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i64 %99, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %97, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()), !dbg !1050
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
  br label %121, !dbg !1051

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1052
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !989
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !990
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !997
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !998
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !999
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %125, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %122, metadata !925, metadata !DIExpression()), !dbg !1050
  %130 = icmp eq i64 %125, -1, !dbg !1053
  br i1 %130, label %131, label %135, !dbg !1054

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1055
  %133 = load i8, i8* %132, align 1, !dbg !1055, !tbaa !1011
  %134 = icmp eq i8 %133, 0, !dbg !1056
  br i1 %134, label %617, label %137, !dbg !1057

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1058
  br i1 %136, label %617, label %137, !dbg !1057

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !941, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 0, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 0, metadata !943, metadata !DIExpression()), !dbg !1061
  br i1 %107, label %138, label %153, !dbg !1062

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1064
  %140 = and i1 %108, %130, !dbg !1065
  br i1 %140, label %141, label %143, !dbg !1065

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %142, metadata !919, metadata !DIExpression()), !dbg !983
  br label %143, !dbg !1067

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !919, metadata !DIExpression()), !dbg !983
  %145 = icmp ugt i64 %139, %144, !dbg !1068
  br i1 %145, label %153, label %146, !dbg !1069

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1070
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !1071
  %149 = icmp ne i32 %148, 0, !dbg !1072
  %150 = or i1 %149, %110, !dbg !1073
  %151 = xor i1 %149, true, !dbg !1073
  %152 = zext i1 %151 to i8, !dbg !1073
  br i1 %150, label %153, label %661, !dbg !1073

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1074
  call void @llvm.dbg.value(metadata i8 %155, metadata !941, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %154, metadata !919, metadata !DIExpression()), !dbg !983
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1075
  %157 = load i8, i8* %156, align 1, !dbg !1075, !tbaa !1011
  call void @llvm.dbg.value(metadata i8 %157, metadata !936, metadata !DIExpression()), !dbg !1076
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
  ], !dbg !1077

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1078

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1079

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !942, metadata !DIExpression()), !dbg !1060
  %161 = and i8 %126, 1, !dbg !1083
  %162 = icmp eq i8 %161, 0, !dbg !1083
  %163 = and i1 %114, %162, !dbg !1083
  br i1 %163, label %164, label %180, !dbg !1083

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1085
  br i1 %165, label %166, label %168, !dbg !1089

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1085
  store i8 39, i8* %167, align 1, !dbg !1085, !tbaa !1011
  br label %168, !dbg !1085

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %169, metadata !926, metadata !DIExpression()), !dbg !989
  %170 = icmp ult i64 %169, %129, !dbg !1090
  br i1 %170, label %171, label %173, !dbg !1093

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1090
  store i8 36, i8* %172, align 1, !dbg !1090, !tbaa !1011
  br label %173, !dbg !1090

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %174, metadata !926, metadata !DIExpression()), !dbg !989
  %175 = icmp ult i64 %174, %129, !dbg !1094
  br i1 %175, label %176, label %178, !dbg !1097

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1094
  store i8 39, i8* %177, align 1, !dbg !1094, !tbaa !1011
  br label %178, !dbg !1094

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %179, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !933, metadata !DIExpression()), !dbg !997
  br label %180, !dbg !1098

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1049
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %182, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %181, metadata !926, metadata !DIExpression()), !dbg !989
  %183 = icmp ult i64 %181, %129, !dbg !1099
  br i1 %183, label %184, label %186, !dbg !1102

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1099
  store i8 92, i8* %185, align 1, !dbg !1099, !tbaa !1011
  br label %186, !dbg !1099

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %187, metadata !926, metadata !DIExpression()), !dbg !989
  br i1 %104, label %188, label %478, !dbg !1103

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1105
  %190 = icmp ult i64 %189, %154, !dbg !1106
  br i1 %190, label %191, label %467, !dbg !1107

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1108
  %193 = load i8, i8* %192, align 1, !dbg !1108, !tbaa !1011
  %194 = add i8 %193, -48, !dbg !1109
  %195 = icmp ult i8 %194, 10, !dbg !1109
  br i1 %195, label %196, label %467, !dbg !1109

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1110
  br i1 %197, label %198, label %200, !dbg !1114

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1110
  store i8 48, i8* %199, align 1, !dbg !1110, !tbaa !1011
  br label %200, !dbg !1110

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %201, metadata !926, metadata !DIExpression()), !dbg !989
  %202 = icmp ult i64 %201, %129, !dbg !1115
  br i1 %202, label %203, label %205, !dbg !1118

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1115
  store i8 48, i8* %204, align 1, !dbg !1115, !tbaa !1011
  br label %205, !dbg !1115

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %206, metadata !926, metadata !DIExpression()), !dbg !989
  br label %467, !dbg !1119

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1120

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1121

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1122

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1124

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1126
  %213 = icmp ult i64 %212, %154, !dbg !1127
  br i1 %213, label %214, label %467, !dbg !1128

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1129
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1130
  %217 = load i8, i8* %216, align 1, !dbg !1130, !tbaa !1011
  %218 = icmp eq i8 %217, 63, !dbg !1131
  br i1 %218, label %219, label %467, !dbg !1132

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1133
  %221 = load i8, i8* %220, align 1, !dbg !1133, !tbaa !1011
  %222 = sext i8 %221 to i32, !dbg !1133
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
  ], !dbg !1134

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1135

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %212, metadata !925, metadata !DIExpression()), !dbg !1050
  %225 = icmp ult i64 %123, %129, !dbg !1137
  br i1 %225, label %226, label %228, !dbg !1140

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1137
  store i8 63, i8* %227, align 1, !dbg !1137, !tbaa !1011
  br label %228, !dbg !1137

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %229, metadata !926, metadata !DIExpression()), !dbg !989
  %230 = icmp ult i64 %229, %129, !dbg !1141
  br i1 %230, label %231, label %233, !dbg !1144

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1141
  store i8 34, i8* %232, align 1, !dbg !1141, !tbaa !1011
  br label %233, !dbg !1141

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %234, metadata !926, metadata !DIExpression()), !dbg !989
  %235 = icmp ult i64 %234, %129, !dbg !1145
  br i1 %235, label %236, label %238, !dbg !1148

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1145
  store i8 34, i8* %237, align 1, !dbg !1145, !tbaa !1011
  br label %238, !dbg !1145

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %239, metadata !926, metadata !DIExpression()), !dbg !989
  %240 = icmp ult i64 %239, %129, !dbg !1149
  br i1 %240, label %241, label %243, !dbg !1152

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1149
  store i8 63, i8* %242, align 1, !dbg !1149, !tbaa !1011
  br label %243, !dbg !1149

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %244, metadata !926, metadata !DIExpression()), !dbg !989
  br label %467, !dbg !1153

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !940, metadata !DIExpression()), !dbg !1154
  br label %255, !dbg !1155

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !940, metadata !DIExpression()), !dbg !1154
  br label %255, !dbg !1156

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !940, metadata !DIExpression()), !dbg !1154
  br label %253, !dbg !1157

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !940, metadata !DIExpression()), !dbg !1154
  br label %253, !dbg !1158

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !940, metadata !DIExpression()), !dbg !1154
  br label %255, !dbg !1159

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !940, metadata !DIExpression()), !dbg !1154
  br i1 %114, label %251, label %252, !dbg !1160

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1161

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1164

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1166
  call void @llvm.dbg.value(metadata i8 %254, metadata !940, metadata !DIExpression()), !dbg !1154
  br i1 %113, label %255, label %661, !dbg !1167

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1166
  call void @llvm.dbg.value(metadata i8 %256, metadata !940, metadata !DIExpression()), !dbg !1154
  br i1 %103, label %524, label %478, !dbg !1169

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1170
  br i1 %258, label %259, label %264, !dbg !1172

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1173, !tbaa !1011
  %261 = icmp ne i8 %260, 0, !dbg !1174
  %262 = icmp ne i64 %122, 0, !dbg !1175
  %263 = or i1 %262, %261, !dbg !1177
  br i1 %263, label %467, label %270, !dbg !1177

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1178
  %266 = icmp ne i64 %122, 0, !dbg !1175
  %267 = or i1 %266, %265, !dbg !1172
  br i1 %267, label %467, label %270, !dbg !1172

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1175
  br i1 %269, label %270, label %467, !dbg !1179

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !943, metadata !DIExpression()), !dbg !1061
  br label %271, !dbg !1180

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1166
  call void @llvm.dbg.value(metadata i8 %272, metadata !943, metadata !DIExpression()), !dbg !1061
  br i1 %113, label %467, label %661, !dbg !1181

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 1, metadata !943, metadata !DIExpression()), !dbg !1061
  br i1 %114, label %274, label %467, !dbg !1183

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1184

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1187
  %277 = icmp ne i64 %124, 0, !dbg !1189
  %278 = or i1 %277, %276, !dbg !1190
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1190
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %280, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %279, metadata !927, metadata !DIExpression()), !dbg !990
  %281 = icmp ult i64 %123, %280, !dbg !1191
  br i1 %281, label %282, label %284, !dbg !1194

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1191
  store i8 39, i8* %283, align 1, !dbg !1191, !tbaa !1011
  br label %284, !dbg !1191

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %285, metadata !926, metadata !DIExpression()), !dbg !989
  %286 = icmp ult i64 %285, %280, !dbg !1195
  br i1 %286, label %287, label %289, !dbg !1198

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1195
  store i8 92, i8* %288, align 1, !dbg !1195, !tbaa !1011
  br label %289, !dbg !1195

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %290, metadata !926, metadata !DIExpression()), !dbg !989
  %291 = icmp ult i64 %290, %280, !dbg !1199
  br i1 %291, label %292, label %294, !dbg !1202

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1199
  store i8 39, i8* %293, align 1, !dbg !1199, !tbaa !1011
  br label %294, !dbg !1199

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %295, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 0, metadata !933, metadata !DIExpression()), !dbg !997
  br label %467, !dbg !1203

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1204

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !944, metadata !DIExpression()), !dbg !1205
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1206
  %299 = load i16*, i16** %298, align 8, !dbg !1206, !tbaa !578
  %300 = zext i8 %157 to i64, !dbg !1206
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1206
  %302 = load i16, i16* %301, align 2, !dbg !1206, !tbaa !1208
  %303 = lshr i16 %302, 14, !dbg !1210
  %304 = trunc i16 %303 to i8, !dbg !1210
  %305 = and i8 %304, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i8 %305, metadata !947, metadata !DIExpression()), !dbg !1211
  br label %359, !dbg !1212

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1213
  store i64 0, i64* %10, align 8, !dbg !1214
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 1, metadata !947, metadata !DIExpression()), !dbg !1211
  %307 = icmp eq i64 %154, -1, !dbg !1215
  br i1 %307, label %308, label %310, !dbg !1217

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %309, metadata !919, metadata !DIExpression()), !dbg !983
  br label %310, !dbg !1219

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1220
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  br label %312, !dbg !1221

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1222
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1223
  call void @llvm.dbg.value(metadata i8 %314, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1224
  %315 = add i64 %313, %122, !dbg !1225
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1226
  %317 = sub i64 %311, %315, !dbg !1227
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !948, metadata !DIExpression(DW_OP_deref)), !dbg !1228
  call void @llvm.dbg.value(metadata i32* %12, metadata !966, metadata !DIExpression(DW_OP_deref)), !dbg !1229
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %318, metadata !969, metadata !DIExpression()), !dbg !1231
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1232

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  %320 = icmp ugt i64 %311, %315, !dbg !1233
  br i1 %320, label %321, label %344, !dbg !1235

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !944, metadata !DIExpression()), !dbg !1205
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1236
  %325 = load i8, i8* %324, align 1, !dbg !1236, !tbaa !1011
  %326 = icmp eq i8 %325, 0, !dbg !1235
  br i1 %326, label %344, label %327, !dbg !1237

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %328, metadata !944, metadata !DIExpression()), !dbg !1205
  %329 = add i64 %328, %122, !dbg !1239
  %330 = icmp ult i64 %329, %311, !dbg !1233
  br i1 %330, label %321, label %344, !dbg !1235, !llvm.loop !1240

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1241
  %333 = and i1 %116, %332, !dbg !1244
  call void @llvm.dbg.value(metadata i64 1, metadata !970, metadata !DIExpression()), !dbg !1245
  br i1 %333, label %334, label %347, !dbg !1244

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !970, metadata !DIExpression()), !dbg !1245
  %336 = add i64 %335, %315, !dbg !1246
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1247
  %338 = load i8, i8* %337, align 1, !dbg !1247, !tbaa !1011
  %339 = sext i8 %338 to i32, !dbg !1247
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1248

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %341, metadata !970, metadata !DIExpression()), !dbg !1245
  %342 = icmp ult i64 %341, %318, !dbg !1241
  br i1 %342, label %334, label %347, !dbg !1250, !llvm.loop !1251

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %314, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %313, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %314, metadata !947, metadata !DIExpression()), !dbg !1211
  br label %344, !dbg !1253

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %352, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1253
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1254, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %348, metadata !966, metadata !DIExpression()), !dbg !1229
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1256
  %350 = icmp eq i32 %349, 0, !dbg !1256
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %351, metadata !947, metadata !DIExpression()), !dbg !1211
  %352 = add i64 %318, %313, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %352, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %351, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %352, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1253
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !948, metadata !DIExpression(DW_OP_deref)), !dbg !1228
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !1259
  %354 = icmp eq i32 %353, 0, !dbg !1260
  br i1 %354, label %312, label %355, !dbg !1261, !llvm.loop !1262

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1264
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %94, metadata !920, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 %100, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %311, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %351, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %352, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1264
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1265
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1266
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8 %362, metadata !947, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %361, metadata !944, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %360, metadata !919, metadata !DIExpression()), !dbg !983
  %363 = and i8 %362, 1, !dbg !1267
  %364 = icmp ne i8 %363, 0, !dbg !1267
  call void @llvm.dbg.value(metadata i8 %363, metadata !943, metadata !DIExpression()), !dbg !1061
  %365 = icmp ult i64 %361, 2, !dbg !1268
  %366 = or i1 %364, %115, !dbg !1269
  %367 = and i1 %365, %366, !dbg !1270
  br i1 %367, label %467, label %368, !dbg !1270

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %369, metadata !977, metadata !DIExpression()), !dbg !1272
  br label %370, !dbg !1273

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1274
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1278
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !997
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1274
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1280
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1060
  call void @llvm.dbg.value(metadata i8 %376, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %375, metadata !941, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %374, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %373, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %372, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %371, metadata !925, metadata !DIExpression()), !dbg !1050
  br i1 %366, label %423, label %377, !dbg !1284

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1285

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !942, metadata !DIExpression()), !dbg !1060
  %379 = and i8 %373, 1, !dbg !1288
  %380 = icmp eq i8 %379, 0, !dbg !1288
  %381 = and i1 %114, %380, !dbg !1288
  br i1 %381, label %382, label %398, !dbg !1288

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1290
  br i1 %383, label %384, label %386, !dbg !1294

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1290
  store i8 39, i8* %385, align 1, !dbg !1290, !tbaa !1011
  br label %386, !dbg !1290

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %387, metadata !926, metadata !DIExpression()), !dbg !989
  %388 = icmp ult i64 %387, %129, !dbg !1295
  br i1 %388, label %389, label %391, !dbg !1298

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1295
  store i8 36, i8* %390, align 1, !dbg !1295, !tbaa !1011
  br label %391, !dbg !1295

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %392, metadata !926, metadata !DIExpression()), !dbg !989
  %393 = icmp ult i64 %392, %129, !dbg !1299
  br i1 %393, label %394, label %396, !dbg !1302

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1299
  store i8 39, i8* %395, align 1, !dbg !1299, !tbaa !1011
  br label %396, !dbg !1299

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %397, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !933, metadata !DIExpression()), !dbg !997
  br label %398, !dbg !1303

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1049
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %400, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %399, metadata !926, metadata !DIExpression()), !dbg !989
  %401 = icmp ult i64 %399, %129, !dbg !1304
  br i1 %401, label %402, label %404, !dbg !1307

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1304
  store i8 92, i8* %403, align 1, !dbg !1304, !tbaa !1011
  br label %404, !dbg !1304

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %405, metadata !926, metadata !DIExpression()), !dbg !989
  %406 = icmp ult i64 %405, %129, !dbg !1308
  br i1 %406, label %407, label %411, !dbg !1311

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1308
  %409 = or i8 %408, 48, !dbg !1308
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1308
  store i8 %409, i8* %410, align 1, !dbg !1308, !tbaa !1011
  br label %411, !dbg !1308

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %412, metadata !926, metadata !DIExpression()), !dbg !989
  %413 = icmp ult i64 %412, %129, !dbg !1312
  br i1 %413, label %414, label %419, !dbg !1315

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1312
  %416 = and i8 %415, 7, !dbg !1312
  %417 = or i8 %416, 48, !dbg !1312
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1312
  store i8 %417, i8* %418, align 1, !dbg !1312, !tbaa !1011
  br label %419, !dbg !1312

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %420, metadata !926, metadata !DIExpression()), !dbg !989
  %421 = and i8 %374, 7, !dbg !1316
  %422 = or i8 %421, 48, !dbg !1317
  call void @llvm.dbg.value(metadata i8 %422, metadata !936, metadata !DIExpression()), !dbg !1076
  br label %432, !dbg !1318

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1319
  %425 = icmp eq i8 %424, 0, !dbg !1319
  br i1 %425, label %432, label %426, !dbg !1320

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1321
  br i1 %427, label %428, label %430, !dbg !1324

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1321
  store i8 92, i8* %429, align 1, !dbg !1321, !tbaa !1011
  br label %430, !dbg !1321

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %431, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 0, metadata !941, metadata !DIExpression()), !dbg !1059
  br label %432, !dbg !1325

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1326
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !997
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1327
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1328
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %437, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %436, metadata !941, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %435, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %434, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %433, metadata !926, metadata !DIExpression()), !dbg !989
  %438 = add i64 %371, 1, !dbg !1331
  %439 = icmp ugt i64 %369, %438, !dbg !1333
  br i1 %439, label %440, label %562, !dbg !1334

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1335
  %442 = icmp ne i8 %441, 0, !dbg !1335
  %443 = and i8 %437, 1, !dbg !1335
  %444 = icmp eq i8 %443, 0, !dbg !1335
  %445 = and i1 %442, %444, !dbg !1335
  br i1 %445, label %446, label %457, !dbg !1335

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1338
  br i1 %447, label %448, label %450, !dbg !1342

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1338
  store i8 39, i8* %449, align 1, !dbg !1338, !tbaa !1011
  br label %450, !dbg !1338

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %451, metadata !926, metadata !DIExpression()), !dbg !989
  %452 = icmp ult i64 %451, %129, !dbg !1343
  br i1 %452, label %453, label %455, !dbg !1346

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1343
  store i8 39, i8* %454, align 1, !dbg !1343, !tbaa !1011
  br label %455, !dbg !1343

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %456, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 0, metadata !933, metadata !DIExpression()), !dbg !997
  br label %457, !dbg !1347

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1348
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %459, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %458, metadata !926, metadata !DIExpression()), !dbg !989
  %460 = icmp ult i64 %458, %129, !dbg !1349
  br i1 %460, label %461, label %463, !dbg !1351

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1349
  store i8 %435, i8* %462, align 1, !dbg !1349, !tbaa !1011
  br label %463, !dbg !1349

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %464, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %438, metadata !925, metadata !DIExpression()), !dbg !1050
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1352
  %466 = load i8, i8* %465, align 1, !dbg !1352, !tbaa !1011
  call void @llvm.dbg.value(metadata i8 %466, metadata !936, metadata !DIExpression()), !dbg !1076
  br label %370, !dbg !1353, !llvm.loop !1354

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1357
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1049
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !990
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1358
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1049
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1049
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1074
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1074
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1074
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %476, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %475, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %155, metadata !941, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %474, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %473, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %472, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %471, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %470, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %469, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %468, metadata !925, metadata !DIExpression()), !dbg !1050
  br i1 %105, label %489, label %478, !dbg !1359

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
  br i1 %112, label %490, label %512, !dbg !1361

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1362

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
  %501 = lshr i8 %494, 5, !dbg !1363
  %502 = zext i8 %501 to i64, !dbg !1363
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1364
  %504 = load i32, i32* %503, align 4, !dbg !1364, !tbaa !701
  %505 = and i8 %494, 31, !dbg !1365
  %506 = zext i8 %505 to i32, !dbg !1365
  %507 = shl i32 1, %506, !dbg !1366
  %508 = and i32 %504, %507, !dbg !1366
  %509 = icmp eq i32 %508, 0, !dbg !1366
  %510 = icmp eq i8 %155, 0, !dbg !1367
  %511 = and i1 %510, %509, !dbg !1368
  br i1 %511, label %562, label %524, !dbg !1368

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
  %523 = icmp eq i8 %155, 0, !dbg !1367
  br i1 %523, label %562, label %524, !dbg !1369

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1370
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1049
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !990
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1358
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !997
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !998
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1371
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1074
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %532, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %531, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %530, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %529, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %528, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %527, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %526, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %525, metadata !925, metadata !DIExpression()), !dbg !1050
  br i1 %110, label %534, label %661, !dbg !1374

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !942, metadata !DIExpression()), !dbg !1060
  %535 = and i8 %529, 1, !dbg !1376
  %536 = icmp eq i8 %535, 0, !dbg !1376
  %537 = and i1 %114, %536, !dbg !1376
  br i1 %537, label %538, label %554, !dbg !1376

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1378
  br i1 %539, label %540, label %542, !dbg !1382

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1378
  store i8 39, i8* %541, align 1, !dbg !1378, !tbaa !1011
  br label %542, !dbg !1378

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %543, metadata !926, metadata !DIExpression()), !dbg !989
  %544 = icmp ult i64 %543, %533, !dbg !1383
  br i1 %544, label %545, label %547, !dbg !1386

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1383
  store i8 36, i8* %546, align 1, !dbg !1383, !tbaa !1011
  br label %547, !dbg !1383

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %548, metadata !926, metadata !DIExpression()), !dbg !989
  %549 = icmp ult i64 %548, %533, !dbg !1387
  br i1 %549, label %550, label %552, !dbg !1390

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1387
  store i8 39, i8* %551, align 1, !dbg !1387, !tbaa !1011
  br label %552, !dbg !1387

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %553, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !933, metadata !DIExpression()), !dbg !997
  br label %554, !dbg !1391

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1348
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %556, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %555, metadata !926, metadata !DIExpression()), !dbg !989
  %557 = icmp ult i64 %555, %533, !dbg !1392
  br i1 %557, label %558, label %560, !dbg !1395

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1392
  store i8 92, i8* %559, align 1, !dbg !1392, !tbaa !1011
  br label %560, !dbg !1392

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %561, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %572, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %571, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %570, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %569, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %568, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %567, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %566, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %565, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %564, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %563, metadata !925, metadata !DIExpression()), !dbg !1050
  br label %589, !dbg !1396

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1370
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1049
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !990
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1358
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !997
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !998
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1399
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1074
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1074
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %571, metadata !943, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %570, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %569, metadata !936, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %568, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %567, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %566, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %565, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %564, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %563, metadata !925, metadata !DIExpression()), !dbg !1050
  %573 = and i8 %567, 1, !dbg !1396
  %574 = icmp ne i8 %573, 0, !dbg !1396
  %575 = and i8 %570, 1, !dbg !1396
  %576 = icmp eq i8 %575, 0, !dbg !1396
  %577 = and i1 %574, %576, !dbg !1396
  br i1 %577, label %578, label %589, !dbg !1396

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1400
  br i1 %579, label %580, label %582, !dbg !1404

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1400
  store i8 39, i8* %581, align 1, !dbg !1400, !tbaa !1011
  br label %582, !dbg !1400

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %583, metadata !926, metadata !DIExpression()), !dbg !989
  %584 = icmp ult i64 %583, %572, !dbg !1405
  br i1 %584, label %585, label %587, !dbg !1408

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1405
  store i8 39, i8* %586, align 1, !dbg !1405, !tbaa !1011
  br label %587, !dbg !1405

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %588, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 0, metadata !933, metadata !DIExpression()), !dbg !997
  br label %589, !dbg !1409

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1348
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8 %598, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %597, metadata !926, metadata !DIExpression()), !dbg !989
  %599 = icmp ult i64 %597, %590, !dbg !1410
  br i1 %599, label %600, label %602, !dbg !1413

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1410
  store i8 %592, i8* %601, align 1, !dbg !1410, !tbaa !1011
  br label %602, !dbg !1410

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %603, metadata !926, metadata !DIExpression()), !dbg !989
  %604 = and i8 %591, 1, !dbg !1414
  %605 = icmp eq i8 %604, 0, !dbg !1414
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1416
  call void @llvm.dbg.value(metadata i8 %606, metadata !935, metadata !DIExpression()), !dbg !999
  br label %607, !dbg !1417

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1370
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1049
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !990
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1358
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !997
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1049
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !999
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 %614, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %613, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %612, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %611, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %610, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %609, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %608, metadata !925, metadata !DIExpression()), !dbg !1050
  %616 = add i64 %608, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %616, metadata !925, metadata !DIExpression()), !dbg !1050
  br label %121, !dbg !1419, !llvm.loop !1420

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %125, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %125, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %126, metadata !933, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %127, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %128, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  %619 = icmp eq i64 %123, 0, !dbg !1422
  %620 = and i1 %114, %619, !dbg !1424
  %621 = xor i1 %620, true, !dbg !1424
  %622 = or i1 %110, %621, !dbg !1424
  br i1 %622, label %623, label %661, !dbg !1424

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1425
  %625 = xor i1 %624, true, !dbg !1425
  %626 = and i8 %127, 1, !dbg !1427
  %627 = icmp eq i8 %626, 0, !dbg !1427
  %628 = or i1 %627, %625, !dbg !1425
  br i1 %628, label %638, label %629, !dbg !1425

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1428
  %631 = icmp eq i8 %630, 0, !dbg !1428
  br i1 %631, label %634, label %632, !dbg !1431

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %618, metadata !919, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %95, metadata !923, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %96, metadata !924, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, metadata !927, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %125, metadata !919, metadata !DIExpression()), !dbg !983
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1432
  br label %671, !dbg !1433

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1434
  %636 = icmp ne i64 %124, 0, !dbg !1436
  %637 = and i1 %636, %635, !dbg !1437
  br i1 %637, label %27, label %638, !dbg !1437

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %129, metadata !917, metadata !DIExpression()), !dbg !981
  %639 = icmp ne i8* %98, null, !dbg !1438
  %640 = and i1 %639, %110, !dbg !1440
  br i1 %640, label %641, label %656, !dbg !1440

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %123, metadata !926, metadata !DIExpression()), !dbg !989
  %642 = load i8, i8* %98, align 1, !dbg !1441, !tbaa !1011
  %643 = icmp eq i8 %642, 0, !dbg !1444
  br i1 %643, label %656, label %644, !dbg !1444

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %647, metadata !926, metadata !DIExpression()), !dbg !989
  %648 = icmp ult i64 %647, %129, !dbg !1445
  br i1 %648, label %649, label %651, !dbg !1448

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1445
  store i8 %645, i8* %650, align 1, !dbg !1445, !tbaa !1011
  br label %651, !dbg !1445

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1448
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %653, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %652, metadata !926, metadata !DIExpression()), !dbg !989
  %654 = load i8, i8* %653, align 1, !dbg !1441, !tbaa !1011
  %655 = icmp eq i8 %654, 0, !dbg !1444
  br i1 %655, label %656, label %644, !dbg !1444, !llvm.loop !1450

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !989
  call void @llvm.dbg.value(metadata i64 %657, metadata !926, metadata !DIExpression()), !dbg !989
  %658 = icmp ult i64 %657, %129, !dbg !1452
  br i1 %658, label %659, label %671, !dbg !1454

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1455
  store i8 0, i8* %660, align 1, !dbg !1456, !tbaa !1011
  br label %671, !dbg !1455

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !917, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %663, metadata !919, metadata !DIExpression()), !dbg !983
  %665 = icmp ne i32 %662, 2, !dbg !1457
  %666 = icmp eq i8 %102, 0, !dbg !1459
  %667 = or i1 %665, %666, !dbg !1460
  call void @llvm.dbg.value(metadata i32 4, metadata !920, metadata !DIExpression()), !dbg !984
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %668, metadata !920, metadata !DIExpression()), !dbg !984
  %669 = and i32 %5, -3, !dbg !1461
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1462
  br label %671, !dbg !1463

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1464
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #8 !dbg !1465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1469, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %1, metadata !1470, metadata !DIExpression()), !dbg !1474
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %3, metadata !1471, metadata !DIExpression()), !dbg !1476
  %4 = icmp eq i8* %3, %0, !dbg !1477
  br i1 %4, label %5, label %71, !dbg !1479

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %6, metadata !1472, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %6, metadata !1482, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8* null, metadata !1488, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 85, metadata !1489, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 84, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 70, metadata !1491, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 45, metadata !1492, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 56, metadata !1493, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 0, metadata !1494, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1510
  %7 = load i8, i8* %6, align 1, !dbg !1511, !tbaa !1011
  %8 = and i8 %7, -33, !dbg !1511
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1511

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1513, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* null, metadata !1518, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 84, metadata !1519, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 70, metadata !1520, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 45, metadata !1521, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8 56, metadata !1522, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1524, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1525, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 0, metadata !1526, metadata !DIExpression()), !dbg !1539
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1540
  %11 = load i8, i8* %10, align 1, !dbg !1540, !tbaa !1011
  %12 = and i8 %11, -33, !dbg !1540
  %13 = icmp eq i8 %12, 84, !dbg !1540
  br i1 %13, label %14, label %68, !dbg !1540

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1542, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8* null, metadata !1547, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8 70, metadata !1548, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 45, metadata !1549, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i8 56, metadata !1550, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8 0, metadata !1552, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1566
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1567
  %16 = load i8, i8* %15, align 1, !dbg !1567, !tbaa !1011
  %17 = and i8 %16, -33, !dbg !1567
  %18 = icmp eq i8 %17, 70, !dbg !1567
  br i1 %18, label %19, label %68, !dbg !1567

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1569, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* null, metadata !1574, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 45, metadata !1575, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8 56, metadata !1576, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1579, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1591
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1592
  %21 = load i8, i8* %20, align 1, !dbg !1592, !tbaa !1011
  %22 = icmp eq i8 %21, 45, !dbg !1592
  br i1 %22, label %23, label %68, !dbg !1594

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1595, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* null, metadata !1600, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 56, metadata !1601, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1615
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1616
  %25 = load i8, i8* %24, align 1, !dbg !1616, !tbaa !1011
  %26 = icmp eq i8 %25, 56, !dbg !1616
  br i1 %26, label %27, label %68, !dbg !1618

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1619, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8* null, metadata !1624, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1637
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1638
  %29 = load i8, i8* %28, align 1, !dbg !1638, !tbaa !1011
  %30 = icmp eq i8 %29, 0, !dbg !1638
  br i1 %30, label %31, label %68, !dbg !1640

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1641, !tbaa !1011
  %33 = icmp eq i8 %32, 96, !dbg !1642
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1641
  br label %71, !dbg !1643

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1513, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* null, metadata !1518, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 66, metadata !1519, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 49, metadata !1520, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 56, metadata !1521, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 48, metadata !1522, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 51, metadata !1523, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 48, metadata !1524, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1525, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1526, metadata !DIExpression()), !dbg !1656
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1657
  %37 = load i8, i8* %36, align 1, !dbg !1657, !tbaa !1011
  %38 = and i8 %37, -33, !dbg !1657
  %39 = icmp eq i8 %38, 66, !dbg !1657
  br i1 %39, label %40, label %68, !dbg !1657

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1542, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* null, metadata !1547, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 49, metadata !1548, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 56, metadata !1549, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 48, metadata !1550, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 51, metadata !1551, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 48, metadata !1552, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1667
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1668
  %42 = load i8, i8* %41, align 1, !dbg !1668, !tbaa !1011
  %43 = icmp eq i8 %42, 49, !dbg !1668
  br i1 %43, label %44, label %68, !dbg !1669

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1569, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* null, metadata !1574, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 56, metadata !1575, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 48, metadata !1576, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 51, metadata !1577, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 48, metadata !1578, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1579, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1678
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1679
  %46 = load i8, i8* %45, align 1, !dbg !1679, !tbaa !1011
  %47 = icmp eq i8 %46, 56, !dbg !1679
  br i1 %47, label %48, label %68, !dbg !1680

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1595, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8* null, metadata !1600, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 48, metadata !1601, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 51, metadata !1602, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 48, metadata !1603, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1688
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1689
  %50 = load i8, i8* %49, align 1, !dbg !1689, !tbaa !1011
  %51 = icmp eq i8 %50, 48, !dbg !1689
  br i1 %51, label %52, label %68, !dbg !1690

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1619, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* null, metadata !1624, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8 51, metadata !1625, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 48, metadata !1626, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1697
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1698
  %54 = load i8, i8* %53, align 1, !dbg !1698, !tbaa !1011
  %55 = icmp eq i8 %54, 51, !dbg !1698
  br i1 %55, label %56, label %68, !dbg !1699

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1700, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8* null, metadata !1705, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 48, metadata !1706, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1716
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1717
  %58 = load i8, i8* %57, align 1, !dbg !1717, !tbaa !1011
  %59 = icmp eq i8 %58, 48, !dbg !1717
  br i1 %59, label %60, label %68, !dbg !1719

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1720, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* null, metadata !1725, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1734
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1735
  %62 = load i8, i8* %61, align 1, !dbg !1735, !tbaa !1011
  %63 = icmp eq i8 %62, 0, !dbg !1735
  br i1 %63, label %64, label %68, !dbg !1737

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1738, !tbaa !1011
  %66 = icmp eq i8 %65, 96, !dbg !1739
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !1738
  br label %71, !dbg !1740

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1741
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !1742
  br label %71, !dbg !1743

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1744
  ret i8* %72, !dbg !1745
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #8 !dbg !1746 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %1, metadata !1751, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()) #11, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()) #11, !dbg !1771
  call void @llvm.dbg.value(metadata i64* null, metadata !1762, metadata !DIExpression()) #11, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1763, metadata !DIExpression()) #11, !dbg !1773
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1774
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1764, metadata !DIExpression()) #11, !dbg !1775
  %6 = tail call i32* @__errno_location() #17, !dbg !1776
  %7 = load i32, i32* %6, align 4, !dbg !1776, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %7, metadata !1765, metadata !DIExpression()) #11, !dbg !1777
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1778
  %9 = load i32, i32* %8, align 4, !dbg !1778, !tbaa !849
  %10 = or i32 %9, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %10, metadata !1766, metadata !DIExpression()) #11, !dbg !1780
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1781
  %12 = load i32, i32* %11, align 8, !dbg !1781, !tbaa !789
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1782
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1783
  %15 = load i8*, i8** %14, align 8, !dbg !1783, !tbaa !875
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1784
  %17 = load i8*, i8** %16, align 8, !dbg !1784, !tbaa !878
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !1785
  %19 = add i64 %18, 1, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %19, metadata !1767, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %19, metadata !1788, metadata !DIExpression()) #11, !dbg !1793
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !1795
  call void @llvm.dbg.value(metadata i8* %20, metadata !1768, metadata !DIExpression()) #11, !dbg !1796
  %21 = load i32, i32* %11, align 8, !dbg !1797, !tbaa !789
  %22 = load i8*, i8** %14, align 8, !dbg !1798, !tbaa !875
  %23 = load i8*, i8** %16, align 8, !dbg !1799, !tbaa !878
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !1800
  store i32 %7, i32* %6, align 4, !dbg !1801, !tbaa !701
  ret i8* %20, !dbg !1802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #8 !dbg !1757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64* %2, metadata !1762, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1763, metadata !DIExpression()), !dbg !1806
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1807
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1764, metadata !DIExpression()), !dbg !1808
  %7 = tail call i32* @__errno_location() #17, !dbg !1809
  %8 = load i32, i32* %7, align 4, !dbg !1809, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %8, metadata !1765, metadata !DIExpression()), !dbg !1810
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1811
  %10 = load i32, i32* %9, align 4, !dbg !1811, !tbaa !849
  %11 = icmp ne i64* %2, null, !dbg !1812
  %12 = xor i1 %11, true, !dbg !1812
  %13 = zext i1 %12 to i32, !dbg !1812
  %14 = or i32 %10, %13, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %14, metadata !1766, metadata !DIExpression()), !dbg !1814
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1815
  %16 = load i32, i32* %15, align 8, !dbg !1815, !tbaa !789
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1816
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1817
  %19 = load i8*, i8** %18, align 8, !dbg !1817, !tbaa !875
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1818
  %21 = load i8*, i8** %20, align 8, !dbg !1818, !tbaa !878
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1819
  %23 = add i64 %22, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %23, metadata !1767, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %23, metadata !1788, metadata !DIExpression()) #11, !dbg !1822
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %24, metadata !1768, metadata !DIExpression()), !dbg !1825
  %25 = load i32, i32* %15, align 8, !dbg !1826, !tbaa !789
  %26 = load i8*, i8** %18, align 8, !dbg !1827, !tbaa !875
  %27 = load i8*, i8** %20, align 8, !dbg !1828, !tbaa !878
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1829
  store i32 %8, i32* %7, align 4, !dbg !1830, !tbaa !701
  br i1 %11, label %29, label %30, !dbg !1831

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1832, !tbaa !1834
  br label %30, !dbg !1836

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1837
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1838 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1842, !tbaa !578
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1840, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 1, metadata !1841, metadata !DIExpression()), !dbg !1844
  %2 = load i32, i32* @nslots, align 4, !dbg !1845, !tbaa !701
  %3 = icmp sgt i32 %2, 1, !dbg !1848
  br i1 %3, label %4, label %12, !dbg !1849

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1841, metadata !DIExpression()), !dbg !1844
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1850
  %7 = load i8*, i8** %6, align 8, !dbg !1850, !tbaa !1851
  tail call void @free(i8* %7) #11, !dbg !1853
  %8 = add nuw nsw i64 %5, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i32 undef, metadata !1841, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1844
  %9 = load i32, i32* @nslots, align 4, !dbg !1845, !tbaa !701
  %10 = sext i32 %9 to i64, !dbg !1848
  %11 = icmp slt i64 %8, %10, !dbg !1848
  br i1 %11, label %4, label %12, !dbg !1849, !llvm.loop !1855

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1857
  %14 = load i8*, i8** %13, align 8, !dbg !1857, !tbaa !1851
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1859
  br i1 %15, label %17, label %16, !dbg !1860

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !1861
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1863, !tbaa !1864
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1865, !tbaa !1851
  br label %17, !dbg !1866

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1867
  br i1 %18, label %21, label %19, !dbg !1869

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1870
  tail call void @free(i8* %20) #11, !dbg !1872
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1873, !tbaa !578
  br label %21, !dbg !1874

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1875, !tbaa !701
  ret void, !dbg !1876
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #8 !dbg !1877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1881, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %1, metadata !1882, metadata !DIExpression()), !dbg !1884
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1885
  ret i8* %3, !dbg !1886
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #8 !dbg !1887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %1, metadata !1892, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %2, metadata !1893, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1894, metadata !DIExpression()), !dbg !1909
  %5 = tail call i32* @__errno_location() #17, !dbg !1910
  %6 = load i32, i32* %5, align 4, !dbg !1910, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %6, metadata !1895, metadata !DIExpression()), !dbg !1911
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1912, !tbaa !578
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1896, metadata !DIExpression()), !dbg !1913
  %8 = icmp slt i32 %0, 0, !dbg !1914
  br i1 %8, label %9, label %10, !dbg !1916

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !1917
  unreachable, !dbg !1917

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1918, !tbaa !701
  %12 = icmp sgt i32 %11, %0, !dbg !1919
  br i1 %12, label %34, label %13, !dbg !1920

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1921
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1900, metadata !DIExpression()), !dbg !1922
  %15 = icmp eq i32 %0, 2147483647, !dbg !1923
  br i1 %15, label %16, label %17, !dbg !1925

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !1926
  unreachable, !dbg !1926

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1927
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1927
  %20 = add nsw i32 %0, 1, !dbg !1928
  %21 = sext i32 %20 to i64, !dbg !1929
  %22 = shl nsw i64 %21, 4, !dbg !1930
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !1931
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1896, metadata !DIExpression()), !dbg !1913
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1932, !tbaa !578
  br i1 %14, label %25, label %26, !dbg !1933

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1934, !tbaa.struct !1936
  br label %26, !dbg !1937

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1938, !tbaa !701
  %28 = sext i32 %27 to i64, !dbg !1939
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1939
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1940
  %31 = sub nsw i32 %20, %27, !dbg !1941
  %32 = sext i32 %31 to i64, !dbg !1942
  %33 = shl nsw i64 %32, 4, !dbg !1943
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !1940
  store i32 %20, i32* @nslots, align 4, !dbg !1944, !tbaa !701
  br label %34, !dbg !1945

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1946
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1896, metadata !DIExpression()), !dbg !1913
  %36 = sext i32 %0 to i64, !dbg !1947
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1948
  %38 = load i64, i64* %37, align 8, !dbg !1948, !tbaa !1864
  call void @llvm.dbg.value(metadata i64 %38, metadata !1901, metadata !DIExpression()), !dbg !1949
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1950
  %40 = load i8*, i8** %39, align 8, !dbg !1950, !tbaa !1851
  call void @llvm.dbg.value(metadata i8* %40, metadata !1903, metadata !DIExpression()), !dbg !1951
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1952
  %42 = load i32, i32* %41, align 4, !dbg !1952, !tbaa !849
  %43 = or i32 %42, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %43, metadata !1904, metadata !DIExpression()), !dbg !1954
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1955
  %45 = load i32, i32* %44, align 8, !dbg !1955, !tbaa !789
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1956
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1957
  %48 = load i8*, i8** %47, align 8, !dbg !1957, !tbaa !875
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1958
  %50 = load i8*, i8** %49, align 8, !dbg !1958, !tbaa !878
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %51, metadata !1905, metadata !DIExpression()), !dbg !1960
  %52 = icmp ugt i64 %38, %51, !dbg !1961
  br i1 %52, label %63, label %53, !dbg !1963

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %54, metadata !1901, metadata !DIExpression()), !dbg !1949
  store i64 %54, i64* %37, align 8, !dbg !1966, !tbaa !1864
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1967
  br i1 %55, label %57, label %56, !dbg !1969

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !1970
  br label %57, !dbg !1970

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1788, metadata !DIExpression()) #11, !dbg !1971
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %58, metadata !1903, metadata !DIExpression()), !dbg !1951
  store i8* %58, i8** %39, align 8, !dbg !1974, !tbaa !1851
  %59 = load i32, i32* %44, align 8, !dbg !1975, !tbaa !789
  %60 = load i8*, i8** %47, align 8, !dbg !1976, !tbaa !875
  %61 = load i8*, i8** %49, align 8, !dbg !1977, !tbaa !878
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1978
  br label %63, !dbg !1979

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8* %64, metadata !1903, metadata !DIExpression()), !dbg !1951
  store i32 %6, i32* %5, align 4, !dbg !1981, !tbaa !701
  ret i8* %64, !dbg !1982
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !1983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1987, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8* %1, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %2, metadata !1989, metadata !DIExpression()), !dbg !1992
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1993
  ret i8* %4, !dbg !1994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #8 !dbg !1995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1999, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !1881, metadata !DIExpression()) #11, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %0, metadata !1882, metadata !DIExpression()) #11, !dbg !2003
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2004
  ret i8* %2, !dbg !2005
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #8 !dbg !2006 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !1987, metadata !DIExpression()) #11, !dbg !2014
  call void @llvm.dbg.value(metadata i8* %0, metadata !1988, metadata !DIExpression()) #11, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %1, metadata !1989, metadata !DIExpression()) #11, !dbg !2017
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2018
  ret i8* %3, !dbg !2019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #8 !dbg !2020 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i32 %1, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %2, metadata !2026, metadata !DIExpression()), !dbg !2030
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2031
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #11, !dbg !2039
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2041, !alias.scope !2042
  %6 = icmp eq i32 %1, 10, !dbg !2045
  br i1 %6, label %7, label %8, !dbg !2047

; <label>:7:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2048, !noalias !2042
  unreachable, !dbg !2048

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2049
  store i32 %1, i32* %9, align 8, !dbg !2050, !tbaa !789, !alias.scope !2042
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2038, metadata !DIExpression(DW_OP_deref)), !dbg !2041
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2052
  ret i8* %10, !dbg !2053
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #8 !dbg !2054 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2058, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %2, metadata !2060, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %3, metadata !2061, metadata !DIExpression()), !dbg !2066
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2067
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2067
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2062, metadata !DIExpression(DW_OP_deref)), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #11, !dbg !2069
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2071, !alias.scope !2072
  %7 = icmp eq i32 %1, 10, !dbg !2075
  br i1 %7, label %8, label %9, !dbg !2076

; <label>:8:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2077, !noalias !2072
  unreachable, !dbg !2077

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2078
  store i32 %1, i32* %10, align 8, !dbg !2079, !tbaa !789, !alias.scope !2072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2062, metadata !DIExpression(DW_OP_deref)), !dbg !2068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2038, metadata !DIExpression(DW_OP_deref)), !dbg !2071
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2081
  ret i8* %11, !dbg !2082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #8 !dbg !2083 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %1, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 0, metadata !2024, metadata !DIExpression()) #11, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %0, metadata !2025, metadata !DIExpression()) #11, !dbg !2093
  call void @llvm.dbg.value(metadata i8* %1, metadata !2026, metadata !DIExpression()) #11, !dbg !2094
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2027, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()) #11, !dbg !2097
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2099, !alias.scope !2100
  %5 = icmp eq i32 %0, 10, !dbg !2103
  br i1 %5, label %6, label %7, !dbg !2104

; <label>:6:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2105, !noalias !2100
  unreachable, !dbg !2105

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2106
  store i32 %0, i32* %8, align 8, !dbg !2107, !tbaa !789, !alias.scope !2100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2027, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2038, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2099
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2109
  ret i8* %9, !dbg !2110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !2111 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %2, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2058, metadata !DIExpression()) #11, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %0, metadata !2059, metadata !DIExpression()) #11, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %1, metadata !2060, metadata !DIExpression()) #11, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %2, metadata !2061, metadata !DIExpression()) #11, !dbg !2125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2062, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()) #11, !dbg !2128
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2130, !alias.scope !2131
  %6 = icmp eq i32 %0, 10, !dbg !2134
  br i1 %6, label %7, label %8, !dbg !2135

; <label>:7:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2136, !noalias !2131
  unreachable, !dbg !2136

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2137
  store i32 %0, i32* %9, align 8, !dbg !2138, !tbaa !789, !alias.scope !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2062, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2038, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2130
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2139
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2140
  ret i8* %10, !dbg !2141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #8 !dbg !2142 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %1, metadata !2147, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 %2, metadata !2148, metadata !DIExpression()), !dbg !2152
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2153
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2154, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2149, metadata !DIExpression(DW_OP_deref)), !dbg !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !808, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %2, metadata !809, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !811, metadata !DIExpression()), !dbg !2161
  %6 = lshr i8 %2, 5, !dbg !2162
  %7 = zext i8 %6 to i64, !dbg !2162
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2163
  call void @llvm.dbg.value(metadata i32* %8, metadata !813, metadata !DIExpression()), !dbg !2164
  %9 = and i8 %2, 31, !dbg !2165
  %10 = zext i8 %9 to i32, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %10, metadata !815, metadata !DIExpression()), !dbg !2166
  %11 = load i32, i32* %8, align 4, !dbg !2167, !tbaa !701
  %12 = lshr i32 %11, %10, !dbg !2168
  %13 = and i32 %12, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %13, metadata !816, metadata !DIExpression()), !dbg !2170
  %14 = xor i32 %13, 1, !dbg !2171
  %15 = shl i32 %14, %10, !dbg !2172
  %16 = xor i32 %15, %11, !dbg !2173
  store i32 %16, i32* %8, align 4, !dbg !2173, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2149, metadata !DIExpression(DW_OP_deref)), !dbg !2156
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2175
  ret i8* %17, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #8 !dbg !2177 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %1, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %0, metadata !2146, metadata !DIExpression()) #11, !dbg !2185
  call void @llvm.dbg.value(metadata i64 -1, metadata !2147, metadata !DIExpression()) #11, !dbg !2187
  call void @llvm.dbg.value(metadata i8 %1, metadata !2148, metadata !DIExpression()) #11, !dbg !2188
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2190, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !808, metadata !DIExpression()) #11, !dbg !2192
  call void @llvm.dbg.value(metadata i8 %1, metadata !809, metadata !DIExpression()) #11, !dbg !2194
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()) #11, !dbg !2195
  call void @llvm.dbg.value(metadata i8 %1, metadata !811, metadata !DIExpression()) #11, !dbg !2196
  %5 = lshr i8 %1, 5, !dbg !2197
  %6 = zext i8 %5 to i64, !dbg !2197
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2198
  call void @llvm.dbg.value(metadata i32* %7, metadata !813, metadata !DIExpression()) #11, !dbg !2199
  %8 = and i8 %1, 31, !dbg !2200
  %9 = zext i8 %8 to i32, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %9, metadata !815, metadata !DIExpression()) #11, !dbg !2201
  %10 = load i32, i32* %7, align 4, !dbg !2202, !tbaa !701
  %11 = lshr i32 %10, %9, !dbg !2203
  %12 = and i32 %11, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %12, metadata !816, metadata !DIExpression()) #11, !dbg !2205
  %13 = xor i32 %12, 1, !dbg !2206
  %14 = shl i32 %13, %9, !dbg !2207
  %15 = xor i32 %14, %10, !dbg !2208
  store i32 %15, i32* %7, align 4, !dbg !2208, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2191
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2210
  ret i8* %16, !dbg !2211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #8 !dbg !2212 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()) #11, !dbg !2216
  call void @llvm.dbg.value(metadata i8 58, metadata !2182, metadata !DIExpression()) #11, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %0, metadata !2146, metadata !DIExpression()) #11, !dbg !2219
  call void @llvm.dbg.value(metadata i64 -1, metadata !2147, metadata !DIExpression()) #11, !dbg !2221
  call void @llvm.dbg.value(metadata i8 58, metadata !2148, metadata !DIExpression()) #11, !dbg !2222
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2224, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !808, metadata !DIExpression()) #11, !dbg !2226
  call void @llvm.dbg.value(metadata i8 58, metadata !809, metadata !DIExpression()) #11, !dbg !2228
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()) #11, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !811, metadata !DIExpression()) #11, !dbg !2230
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2231
  call void @llvm.dbg.value(metadata i32* %4, metadata !813, metadata !DIExpression()) #11, !dbg !2232
  call void @llvm.dbg.value(metadata i32 26, metadata !815, metadata !DIExpression()) #11, !dbg !2233
  %5 = load i32, i32* %4, align 4, !dbg !2234, !tbaa !701
  %6 = or i32 %5, 67108864, !dbg !2235
  store i32 %6, i32* %4, align 4, !dbg !2235, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2225
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2237
  ret i8* %7, !dbg !2238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #8 !dbg !2239 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2241, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %1, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %0, metadata !2146, metadata !DIExpression()) #11, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2147, metadata !DIExpression()) #11, !dbg !2247
  call void @llvm.dbg.value(metadata i8 58, metadata !2148, metadata !DIExpression()) #11, !dbg !2248
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2249
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2250, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !808, metadata !DIExpression()) #11, !dbg !2252
  call void @llvm.dbg.value(metadata i8 58, metadata !809, metadata !DIExpression()) #11, !dbg !2254
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()) #11, !dbg !2255
  call void @llvm.dbg.value(metadata i8 58, metadata !811, metadata !DIExpression()) #11, !dbg !2256
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2257
  call void @llvm.dbg.value(metadata i32* %5, metadata !813, metadata !DIExpression()) #11, !dbg !2258
  call void @llvm.dbg.value(metadata i32 26, metadata !815, metadata !DIExpression()) #11, !dbg !2259
  %6 = load i32, i32* %5, align 4, !dbg !2260, !tbaa !701
  %7 = or i32 %6, 67108864, !dbg !2261
  store i32 %7, i32* %5, align 4, !dbg !2261, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2251
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2263
  ret i8* %8, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #8 !dbg !2265 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2038, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2271
  call void @llvm.dbg.value(metadata i32 %0, metadata !2267, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %2, metadata !2269, metadata !DIExpression()), !dbg !2275
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2276
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2276
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #11, !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2271
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2271, !alias.scope !2279
  %8 = icmp eq i32 %1, 10, !dbg !2282
  br i1 %8, label %9, label %10, !dbg !2283

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2284, !noalias !2279
  unreachable, !dbg !2284

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2271
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2277
  store i32 %1, i32* %11, align 8, !dbg !2277
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2277
  %13 = bitcast i32* %12 to i8*, !dbg !2277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2270, metadata !DIExpression(DW_OP_deref)), !dbg !2285
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !808, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 58, metadata !809, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 58, metadata !811, metadata !DIExpression()), !dbg !2290
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2291
  call void @llvm.dbg.value(metadata i32* %14, metadata !813, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 26, metadata !815, metadata !DIExpression()), !dbg !2293
  %15 = load i32, i32* %14, align 4, !dbg !2294, !tbaa !701
  %16 = or i32 %15, 67108864, !dbg !2295
  store i32 %16, i32* %14, align 4, !dbg !2295, !tbaa !701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2270, metadata !DIExpression(DW_OP_deref)), !dbg !2285
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2297
  ret i8* %17, !dbg !2298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #8 !dbg !2299 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %1, metadata !2304, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %2, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %3, metadata !2306, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()) #11, !dbg !2321
  call void @llvm.dbg.value(metadata i8* %1, metadata !2316, metadata !DIExpression()) #11, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %2, metadata !2317, metadata !DIExpression()) #11, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %3, metadata !2318, metadata !DIExpression()) #11, !dbg !2325
  call void @llvm.dbg.value(metadata i64 -1, metadata !2319, metadata !DIExpression()) #11, !dbg !2326
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2328, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !857, metadata !DIExpression()) #11, !dbg !2330
  call void @llvm.dbg.value(metadata i8* %1, metadata !858, metadata !DIExpression()) #11, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !859, metadata !DIExpression()) #11, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !857, metadata !DIExpression()) #11, !dbg !2330
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2334
  store i32 10, i32* %7, align 8, !dbg !2335, !tbaa !789
  %8 = icmp ne i8* %1, null, !dbg !2336
  %9 = icmp ne i8* %2, null, !dbg !2337
  %10 = and i1 %8, %9, !dbg !2338
  br i1 %10, label %12, label %11, !dbg !2338

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2339
  unreachable, !dbg !2339

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2340
  store i8* %1, i8** %13, align 8, !dbg !2341, !tbaa !875
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2342
  store i8* %2, i8** %14, align 8, !dbg !2343, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2329
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2345
  ret i8* %15, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #8 !dbg !2312 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %1, metadata !2316, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8* %2, metadata !2317, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %3, metadata !2318, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %4, metadata !2319, metadata !DIExpression()), !dbg !2351
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2352
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2353, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2320, metadata !DIExpression(DW_OP_deref)), !dbg !2354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !857, metadata !DIExpression()) #11, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1, metadata !858, metadata !DIExpression()) #11, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %2, metadata !859, metadata !DIExpression()) #11, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !857, metadata !DIExpression()) #11, !dbg !2355
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2359
  store i32 10, i32* %8, align 8, !dbg !2360, !tbaa !789
  %9 = icmp ne i8* %1, null, !dbg !2361
  %10 = icmp ne i8* %2, null, !dbg !2362
  %11 = and i1 %9, %10, !dbg !2363
  br i1 %11, label %13, label %12, !dbg !2363

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2364
  unreachable, !dbg !2364

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2365
  store i8* %1, i8** %14, align 8, !dbg !2366, !tbaa !875
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2367
  store i8* %2, i8** %15, align 8, !dbg !2368, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2320, metadata !DIExpression(DW_OP_deref)), !dbg !2354
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2370
  ret i8* %16, !dbg !2371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #8 !dbg !2372 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %1, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* %2, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2303, metadata !DIExpression()) #11, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()) #11, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %1, metadata !2305, metadata !DIExpression()) #11, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %2, metadata !2306, metadata !DIExpression()) #11, !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %0, metadata !2316, metadata !DIExpression()) #11, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2317, metadata !DIExpression()) #11, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()) #11, !dbg !2391
  call void @llvm.dbg.value(metadata i64 -1, metadata !2319, metadata !DIExpression()) #11, !dbg !2392
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2394, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !857, metadata !DIExpression()) #11, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %0, metadata !858, metadata !DIExpression()) #11, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %1, metadata !859, metadata !DIExpression()) #11, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !857, metadata !DIExpression()) #11, !dbg !2396
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2400
  store i32 10, i32* %6, align 8, !dbg !2401, !tbaa !789
  %7 = icmp ne i8* %0, null, !dbg !2402
  %8 = icmp ne i8* %1, null, !dbg !2403
  %9 = and i1 %7, %8, !dbg !2404
  br i1 %9, label %11, label %10, !dbg !2404

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2405
  unreachable, !dbg !2405

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2406
  store i8* %0, i8** %12, align 8, !dbg !2407, !tbaa !875
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2408
  store i8* %1, i8** %13, align 8, !dbg !2409, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2395
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2411
  ret i8* %14, !dbg !2412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #8 !dbg !2413 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2417, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %2, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %3, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()) #11, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %0, metadata !2316, metadata !DIExpression()) #11, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %1, metadata !2317, metadata !DIExpression()) #11, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()) #11, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %3, metadata !2319, metadata !DIExpression()) #11, !dbg !2430
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2431
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2432, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !857, metadata !DIExpression()) #11, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %0, metadata !858, metadata !DIExpression()) #11, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !859, metadata !DIExpression()) #11, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !857, metadata !DIExpression()) #11, !dbg !2434
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2438
  store i32 10, i32* %7, align 8, !dbg !2439, !tbaa !789
  %8 = icmp ne i8* %0, null, !dbg !2440
  %9 = icmp ne i8* %1, null, !dbg !2441
  %10 = and i1 %8, %9, !dbg !2442
  br i1 %10, label %12, label %11, !dbg !2442

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2443
  unreachable, !dbg !2443

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2444
  store i8* %0, i8** %13, align 8, !dbg !2445, !tbaa !875
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2446
  store i8* %1, i8** %14, align 8, !dbg !2447, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2320, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2433
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2449
  ret i8* %15, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #8 !dbg !2451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i64 %2, metadata !2457, metadata !DIExpression()), !dbg !2460
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2461
  ret i8* %4, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #8 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %1, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()) #11, !dbg !2471
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()) #11, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()) #11, !dbg !2474
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2475
  ret i8* %3, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #8 !dbg !2477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()) #11, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()) #11, !dbg !2487
  call void @llvm.dbg.value(metadata i64 -1, metadata !2457, metadata !DIExpression()) #11, !dbg !2488
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2489
  ret i8* %3, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #8 !dbg !2491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 0, metadata !2481, metadata !DIExpression()) #11, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %0, metadata !2482, metadata !DIExpression()) #11, !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()) #11, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()) #11, !dbg !2502
  call void @llvm.dbg.value(metadata i64 -1, metadata !2457, metadata !DIExpression()) #11, !dbg !2503
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2504
  ret i8* %2, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #8 !dbg !2506 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2566, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %3, metadata !2569, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8** %4, metadata !2570, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %5, metadata !2571, metadata !DIExpression()), !dbg !2577
  %7 = icmp eq i8* %1, null, !dbg !2578
  br i1 %7, label %10, label %8, !dbg !2580

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2581
  br label %12, !dbg !2581

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2582
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #11, !dbg !2583
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !2583
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #11, !dbg !2584
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2584
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
  ], !dbg !2585

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2586
  unreachable, !dbg !2586

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #11, !dbg !2588
  %20 = load i8*, i8** %4, align 8, !dbg !2588, !tbaa !578
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2588
  br label %146, !dbg !2589

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #11, !dbg !2590
  %24 = load i8*, i8** %4, align 8, !dbg !2590, !tbaa !578
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2590
  %26 = load i8*, i8** %25, align 8, !dbg !2590, !tbaa !578
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2590
  br label %146, !dbg !2591

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #11, !dbg !2592
  %30 = load i8*, i8** %4, align 8, !dbg !2592, !tbaa !578
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2592
  %32 = load i8*, i8** %31, align 8, !dbg !2592, !tbaa !578
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2592
  %34 = load i8*, i8** %33, align 8, !dbg !2592, !tbaa !578
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2592
  br label %146, !dbg !2593

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #11, !dbg !2594
  %38 = load i8*, i8** %4, align 8, !dbg !2594, !tbaa !578
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2594
  %40 = load i8*, i8** %39, align 8, !dbg !2594, !tbaa !578
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2594
  %42 = load i8*, i8** %41, align 8, !dbg !2594, !tbaa !578
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2594
  %44 = load i8*, i8** %43, align 8, !dbg !2594, !tbaa !578
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2594
  br label %146, !dbg !2595

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #11, !dbg !2596
  %48 = load i8*, i8** %4, align 8, !dbg !2596, !tbaa !578
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2596
  %50 = load i8*, i8** %49, align 8, !dbg !2596, !tbaa !578
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2596
  %52 = load i8*, i8** %51, align 8, !dbg !2596, !tbaa !578
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2596
  %54 = load i8*, i8** %53, align 8, !dbg !2596, !tbaa !578
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2596
  %56 = load i8*, i8** %55, align 8, !dbg !2596, !tbaa !578
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2596
  br label %146, !dbg !2597

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #11, !dbg !2598
  %60 = load i8*, i8** %4, align 8, !dbg !2598, !tbaa !578
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2598
  %62 = load i8*, i8** %61, align 8, !dbg !2598, !tbaa !578
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2598
  %64 = load i8*, i8** %63, align 8, !dbg !2598, !tbaa !578
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2598
  %66 = load i8*, i8** %65, align 8, !dbg !2598, !tbaa !578
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2598
  %68 = load i8*, i8** %67, align 8, !dbg !2598, !tbaa !578
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2598
  %70 = load i8*, i8** %69, align 8, !dbg !2598, !tbaa !578
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2598
  br label %146, !dbg !2599

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #11, !dbg !2600
  %74 = load i8*, i8** %4, align 8, !dbg !2600, !tbaa !578
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2600
  %76 = load i8*, i8** %75, align 8, !dbg !2600, !tbaa !578
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2600
  %78 = load i8*, i8** %77, align 8, !dbg !2600, !tbaa !578
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2600
  %80 = load i8*, i8** %79, align 8, !dbg !2600, !tbaa !578
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2600
  %82 = load i8*, i8** %81, align 8, !dbg !2600, !tbaa !578
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2600
  %84 = load i8*, i8** %83, align 8, !dbg !2600, !tbaa !578
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2600
  %86 = load i8*, i8** %85, align 8, !dbg !2600, !tbaa !578
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2600
  br label %146, !dbg !2601

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #11, !dbg !2602
  %90 = load i8*, i8** %4, align 8, !dbg !2602, !tbaa !578
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2602
  %92 = load i8*, i8** %91, align 8, !dbg !2602, !tbaa !578
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2602
  %94 = load i8*, i8** %93, align 8, !dbg !2602, !tbaa !578
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2602
  %96 = load i8*, i8** %95, align 8, !dbg !2602, !tbaa !578
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2602
  %98 = load i8*, i8** %97, align 8, !dbg !2602, !tbaa !578
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2602
  %100 = load i8*, i8** %99, align 8, !dbg !2602, !tbaa !578
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2602
  %102 = load i8*, i8** %101, align 8, !dbg !2602, !tbaa !578
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2602
  %104 = load i8*, i8** %103, align 8, !dbg !2602, !tbaa !578
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2602
  br label %146, !dbg !2603

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #11, !dbg !2604
  %108 = load i8*, i8** %4, align 8, !dbg !2604, !tbaa !578
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2604
  %110 = load i8*, i8** %109, align 8, !dbg !2604, !tbaa !578
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2604
  %112 = load i8*, i8** %111, align 8, !dbg !2604, !tbaa !578
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2604
  %114 = load i8*, i8** %113, align 8, !dbg !2604, !tbaa !578
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2604
  %116 = load i8*, i8** %115, align 8, !dbg !2604, !tbaa !578
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2604
  %118 = load i8*, i8** %117, align 8, !dbg !2604, !tbaa !578
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2604
  %120 = load i8*, i8** %119, align 8, !dbg !2604, !tbaa !578
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2604
  %122 = load i8*, i8** %121, align 8, !dbg !2604, !tbaa !578
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2604
  %124 = load i8*, i8** %123, align 8, !dbg !2604, !tbaa !578
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2604
  br label %146, !dbg !2605

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #11, !dbg !2606
  %128 = load i8*, i8** %4, align 8, !dbg !2606, !tbaa !578
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2606
  %130 = load i8*, i8** %129, align 8, !dbg !2606, !tbaa !578
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2606
  %132 = load i8*, i8** %131, align 8, !dbg !2606, !tbaa !578
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2606
  %134 = load i8*, i8** %133, align 8, !dbg !2606, !tbaa !578
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2606
  %136 = load i8*, i8** %135, align 8, !dbg !2606, !tbaa !578
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2606
  %138 = load i8*, i8** %137, align 8, !dbg !2606, !tbaa !578
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2606
  %140 = load i8*, i8** %139, align 8, !dbg !2606, !tbaa !578
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2606
  %142 = load i8*, i8** %141, align 8, !dbg !2606, !tbaa !578
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2606
  %144 = load i8*, i8** %143, align 8, !dbg !2606, !tbaa !578
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2606
  br label %146, !dbg !2607

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2608
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #8 !dbg !2609 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2613, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %2, metadata !2615, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %3, metadata !2616, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8** %4, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 0, metadata !2618, metadata !DIExpression()), !dbg !2624
  br label %6, !dbg !2625

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2627
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2629
  %9 = load i8*, i8** %8, align 8, !dbg !2629, !tbaa !578
  %10 = icmp eq i8* %9, null, !dbg !2630
  %11 = add i64 %7, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %11, metadata !2618, metadata !DIExpression()), !dbg !2624
  br i1 %10, label %12, label %6, !dbg !2630, !llvm.loop !2632

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %7, metadata !2618, metadata !DIExpression()), !dbg !2624
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2634
  ret void, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #8 !dbg !2636 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2647, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %3, metadata !2650, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2651, metadata !DIExpression()), !dbg !2659
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2660
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2653, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2662
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2662
  %11 = load i32, i32* %8, align 8, !dbg !2663
  %12 = icmp ult i32 %11, 41, !dbg !2663
  br i1 %12, label %13, label %18, !dbg !2663

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2663
  %15 = sext i32 %11 to i64, !dbg !2663
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2663
  %17 = add i32 %11, 8, !dbg !2663
  store i32 %17, i32* %8, align 8, !dbg !2663
  br label %21, !dbg !2663

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2663
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2663
  store i8* %20, i8** %10, align 8, !dbg !2663
  br label %21, !dbg !2663

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2663
  %25 = load i8*, i8** %24, align 8, !dbg !2663
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2666
  store i8* %25, i8** %26, align 16, !dbg !2667, !tbaa !578
  %27 = icmp eq i8* %25, null, !dbg !2668
  br i1 %27, label %30, label %28, !dbg !2669

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 1, metadata !2652, metadata !DIExpression()), !dbg !2662
  %29 = icmp ult i32 %22, 41, !dbg !2663
  br i1 %29, label %35, label %32, !dbg !2663

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2670
  call void @llvm.dbg.value(metadata i64 %31, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %31, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2672
  ret void, !dbg !2672

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2663
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2663
  store i8* %34, i8** %10, align 8, !dbg !2663
  br label %40, !dbg !2663

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2663
  %37 = sext i32 %22 to i64, !dbg !2663
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2663
  %39 = add i32 %22, 8, !dbg !2663
  store i32 %39, i32* %8, align 8, !dbg !2663
  br label %40, !dbg !2663

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2663
  %44 = load i8*, i8** %43, align 8, !dbg !2663
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2666
  store i8* %44, i8** %45, align 8, !dbg !2667, !tbaa !578
  %46 = icmp eq i8* %44, null, !dbg !2668
  br i1 %46, label %30, label %47, !dbg !2669

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 2, metadata !2652, metadata !DIExpression()), !dbg !2662
  %48 = icmp ult i32 %41, 41, !dbg !2663
  br i1 %48, label %52, label %49, !dbg !2663

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2663
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2663
  store i8* %51, i8** %10, align 8, !dbg !2663
  br label %57, !dbg !2663

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2663
  %54 = sext i32 %41 to i64, !dbg !2663
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2663
  %56 = add i32 %41, 8, !dbg !2663
  store i32 %56, i32* %8, align 8, !dbg !2663
  br label %57, !dbg !2663

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2663
  %61 = load i8*, i8** %60, align 8, !dbg !2663
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2666
  store i8* %61, i8** %62, align 16, !dbg !2667, !tbaa !578
  %63 = icmp eq i8* %61, null, !dbg !2668
  br i1 %63, label %30, label %64, !dbg !2669

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 3, metadata !2652, metadata !DIExpression()), !dbg !2662
  %65 = icmp ult i32 %58, 41, !dbg !2663
  br i1 %65, label %69, label %66, !dbg !2663

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2663
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2663
  store i8* %68, i8** %10, align 8, !dbg !2663
  br label %74, !dbg !2663

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2663
  %71 = sext i32 %58 to i64, !dbg !2663
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2663
  %73 = add i32 %58, 8, !dbg !2663
  store i32 %73, i32* %8, align 8, !dbg !2663
  br label %74, !dbg !2663

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2663
  %78 = load i8*, i8** %77, align 8, !dbg !2663
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2666
  store i8* %78, i8** %79, align 8, !dbg !2667, !tbaa !578
  %80 = icmp eq i8* %78, null, !dbg !2668
  br i1 %80, label %30, label %81, !dbg !2669

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 4, metadata !2652, metadata !DIExpression()), !dbg !2662
  %82 = icmp ult i32 %75, 41, !dbg !2663
  br i1 %82, label %86, label %83, !dbg !2663

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2663
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2663
  store i8* %85, i8** %10, align 8, !dbg !2663
  br label %91, !dbg !2663

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2663
  %88 = sext i32 %75 to i64, !dbg !2663
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2663
  %90 = add i32 %75, 8, !dbg !2663
  store i32 %90, i32* %8, align 8, !dbg !2663
  br label %91, !dbg !2663

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2663
  %95 = load i8*, i8** %94, align 8, !dbg !2663
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2666
  store i8* %95, i8** %96, align 16, !dbg !2667, !tbaa !578
  %97 = icmp eq i8* %95, null, !dbg !2668
  br i1 %97, label %30, label %98, !dbg !2669

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 5, metadata !2652, metadata !DIExpression()), !dbg !2662
  %99 = icmp ult i32 %92, 41, !dbg !2663
  br i1 %99, label %103, label %100, !dbg !2663

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2663
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2663
  store i8* %102, i8** %10, align 8, !dbg !2663
  br label %108, !dbg !2663

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2663
  %105 = sext i32 %92 to i64, !dbg !2663
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2663
  %107 = add i32 %92, 8, !dbg !2663
  store i32 %107, i32* %8, align 8, !dbg !2663
  br label %108, !dbg !2663

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2663
  %111 = load i8*, i8** %110, align 8, !dbg !2663
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2666
  store i8* %111, i8** %112, align 8, !dbg !2667, !tbaa !578
  %113 = icmp eq i8* %111, null, !dbg !2668
  br i1 %113, label %30, label %114, !dbg !2669

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 6, metadata !2652, metadata !DIExpression()), !dbg !2662
  %115 = load i8*, i8** %10, align 8, !dbg !2663
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2663
  store i8* %116, i8** %10, align 8, !dbg !2663
  %117 = bitcast i8* %115 to i8**, !dbg !2663
  %118 = load i8*, i8** %117, align 8, !dbg !2663
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2666
  store i8* %118, i8** %119, align 16, !dbg !2667, !tbaa !578
  %120 = icmp eq i8* %118, null, !dbg !2668
  br i1 %120, label %30, label %121, !dbg !2669

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 7, metadata !2652, metadata !DIExpression()), !dbg !2662
  %122 = load i8*, i8** %10, align 8, !dbg !2663
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2663
  store i8* %123, i8** %10, align 8, !dbg !2663
  %124 = bitcast i8* %122 to i8**, !dbg !2663
  %125 = load i8*, i8** %124, align 8, !dbg !2663
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2666
  store i8* %125, i8** %126, align 8, !dbg !2667, !tbaa !578
  %127 = icmp eq i8* %125, null, !dbg !2668
  br i1 %127, label %30, label %128, !dbg !2669

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 8, metadata !2652, metadata !DIExpression()), !dbg !2662
  %129 = load i8*, i8** %10, align 8, !dbg !2663
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2663
  store i8* %130, i8** %10, align 8, !dbg !2663
  %131 = bitcast i8* %129 to i8**, !dbg !2663
  %132 = load i8*, i8** %131, align 8, !dbg !2663
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2666
  store i8* %132, i8** %133, align 16, !dbg !2667, !tbaa !578
  %134 = icmp eq i8* %132, null, !dbg !2668
  br i1 %134, label %30, label %135, !dbg !2669

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2652, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 9, metadata !2652, metadata !DIExpression()), !dbg !2662
  %136 = load i8*, i8** %10, align 8, !dbg !2663
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2663
  store i8* %137, i8** %10, align 8, !dbg !2663
  %138 = bitcast i8* %136 to i8**, !dbg !2663
  %139 = load i8*, i8** %138, align 8, !dbg !2663
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2666
  store i8* %139, i8** %140, align 8, !dbg !2667, !tbaa !578
  %141 = icmp eq i8* %139, null, !dbg !2668
  %142 = select i1 %141, i64 9, i64 10, !dbg !2669
  br label %30, !dbg !2669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #8 !dbg !2673 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2677, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %2, metadata !2679, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %3, metadata !2680, metadata !DIExpression()), !dbg !2691
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2692
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2681, metadata !DIExpression()), !dbg !2693
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2694
  call void @llvm.va_start(i8* nonnull %6), !dbg !2694
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2695
  call void @llvm.va_end(i8* nonnull %6), !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2697
  ret void, !dbg !2697
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2698 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #11, !dbg !2699
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #11, !dbg !2699
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #11, !dbg !2700
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.83, i64 0, i64 0)) #11, !dbg !2700
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.84, i64 0, i64 0), i32 5) #11, !dbg !2701
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2701, !tbaa !578
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2701
  ret void, !dbg !2702
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #4 !dbg !2703 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  %3 = udiv i64 9223372036854775807, %1, !dbg !2711
  %4 = icmp ult i64 %3, %0, !dbg !2711
  br i1 %4, label %5, label %6, !dbg !2713

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2714
  unreachable, !dbg !2714

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()) #11, !dbg !2723
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %8, metadata !2722, metadata !DIExpression()) #11, !dbg !2726
  %9 = icmp eq i8* %8, null, !dbg !2727
  %10 = icmp ne i64 %7, 0, !dbg !2729
  %11 = and i1 %10, %9, !dbg !2730
  br i1 %11, label %12, label %13, !dbg !2730

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !2731
  unreachable, !dbg !2731

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2732
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #8 !dbg !2717 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2716, metadata !DIExpression()), !dbg !2733
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()), !dbg !2735
  %3 = icmp eq i8* %2, null, !dbg !2736
  %4 = icmp ne i64 %0, 0, !dbg !2737
  %5 = and i1 %4, %3, !dbg !2738
  br i1 %5, label %6, label %7, !dbg !2738

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2739
  unreachable, !dbg !2739

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2740
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #4 !dbg !2741 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %2, metadata !2747, metadata !DIExpression()), !dbg !2750
  %4 = udiv i64 9223372036854775807, %2, !dbg !2751
  %5 = icmp ult i64 %4, %1, !dbg !2751
  br i1 %5, label %6, label %7, !dbg !2753

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !2754
  unreachable, !dbg !2754

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #11, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %8, metadata !2761, metadata !DIExpression()) #11, !dbg !2764
  %9 = icmp eq i64 %8, 0, !dbg !2765
  %10 = icmp ne i8* %0, null, !dbg !2767
  %11 = and i1 %10, %9, !dbg !2768
  br i1 %11, label %12, label %13, !dbg !2768

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !2769
  br label %19, !dbg !2771

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %14, metadata !2756, metadata !DIExpression()) #11, !dbg !2762
  %15 = icmp eq i8* %14, null, !dbg !2773
  %16 = icmp ne i64 %8, 0, !dbg !2775
  %17 = and i1 %16, %15, !dbg !2776
  br i1 %17, label %18, label %19, !dbg !2776

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2777
  unreachable, !dbg !2777

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2778
  ret i8* %20, !dbg !2779
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #8 !dbg !2757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %1, metadata !2761, metadata !DIExpression()), !dbg !2781
  %3 = icmp eq i64 %1, 0, !dbg !2782
  %4 = icmp ne i8* %0, null, !dbg !2783
  %5 = and i1 %4, %3, !dbg !2784
  br i1 %5, label %6, label %7, !dbg !2784

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !2785
  br label %13, !dbg !2786

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %8, metadata !2756, metadata !DIExpression()), !dbg !2780
  %9 = icmp eq i8* %8, null, !dbg !2788
  %10 = icmp ne i64 %1, 0, !dbg !2789
  %11 = and i1 %10, %9, !dbg !2790
  br i1 %11, label %12, label %13, !dbg !2790

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !2791
  unreachable, !dbg !2791

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2792
  ret i8* %14, !dbg !2793
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #4 !dbg !147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !152, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64* %1, metadata !153, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %2, metadata !154, metadata !DIExpression()), !dbg !2796
  %4 = load i64, i64* %1, align 8, !dbg !2797, !tbaa !1834
  call void @llvm.dbg.value(metadata i64 %4, metadata !155, metadata !DIExpression()), !dbg !2798
  %5 = icmp eq i8* %0, null, !dbg !2799
  br i1 %5, label %6, label %20, !dbg !2801

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2802
  br i1 %7, label %8, label %13, !dbg !2805

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %9, metadata !155, metadata !DIExpression()), !dbg !2798
  %10 = icmp ugt i64 %2, 128, !dbg !2808
  %11 = zext i1 %10 to i64, !dbg !2808
  %12 = add nuw nsw i64 %9, %11, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %12, metadata !155, metadata !DIExpression()), !dbg !2798
  br label %13, !dbg !2810

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2811
  call void @llvm.dbg.value(metadata i64 %14, metadata !155, metadata !DIExpression()), !dbg !2798
  %15 = udiv i64 9223372036854775807, %2, !dbg !2812
  %16 = icmp ult i64 %15, %14, !dbg !2812
  br i1 %16, label %19, label %17, !dbg !2814

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2798
  store i64 %14, i64* %1, align 8, !dbg !2815, !tbaa !1834
  %18 = mul i64 %14, %2, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #11, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %28, metadata !2761, metadata !DIExpression()) #11, !dbg !2819
  br label %31, !dbg !2820

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2821
  unreachable, !dbg !2821

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2822
  %22 = icmp ugt i64 %21, %4, !dbg !2825
  br i1 %22, label %24, label %23, !dbg !2826

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #14, !dbg !2827
  unreachable, !dbg !2827

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2828
  %26 = add i64 %4, 1, !dbg !2829
  %27 = add i64 %26, %25, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 %27, metadata !155, metadata !DIExpression()), !dbg !2798
  store i64 %27, i64* %1, align 8, !dbg !2815, !tbaa !1834
  %28 = mul i64 %27, %2, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #11, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %28, metadata !2761, metadata !DIExpression()) #11, !dbg !2819
  %29 = icmp eq i64 %28, 0, !dbg !2831
  br i1 %29, label %30, label %31, !dbg !2820

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !2832
  br label %38, !dbg !2833

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %33, metadata !2756, metadata !DIExpression()) #11, !dbg !2817
  %34 = icmp eq i8* %33, null, !dbg !2835
  %35 = icmp ne i64 %32, 0, !dbg !2836
  %36 = and i1 %35, %34, !dbg !2837
  br i1 %36, label %37, label %38, !dbg !2837

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #14, !dbg !2838
  unreachable, !dbg !2838

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2839
  ret i8* %39, !dbg !2840
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #4 !dbg !2841 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %0, metadata !2716, metadata !DIExpression()) #11, !dbg !2845
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()) #11, !dbg !2848
  %3 = icmp eq i8* %2, null, !dbg !2849
  %4 = icmp ne i64 %0, 0, !dbg !2850
  %5 = and i1 %4, %3, !dbg !2851
  br i1 %5, label %6, label %7, !dbg !2851

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2852
  unreachable, !dbg !2852

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #8 !dbg !2854 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64* %1, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %0, metadata !152, metadata !DIExpression()) #11, !dbg !2862
  call void @llvm.dbg.value(metadata i64* %1, metadata !153, metadata !DIExpression()) #11, !dbg !2864
  call void @llvm.dbg.value(metadata i64 1, metadata !154, metadata !DIExpression()) #11, !dbg !2865
  %3 = load i64, i64* %1, align 8, !dbg !2866, !tbaa !1834
  call void @llvm.dbg.value(metadata i64 %3, metadata !155, metadata !DIExpression()) #11, !dbg !2867
  %4 = icmp eq i8* %0, null, !dbg !2868
  br i1 %4, label %5, label %12, !dbg !2869

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2870
  br i1 %6, label %9, label %7, !dbg !2871

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !155, metadata !DIExpression()) #11, !dbg !2867
  %8 = icmp slt i64 %3, 0, !dbg !2872
  br i1 %8, label %11, label %9, !dbg !2873

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2867
  store i64 %10, i64* %1, align 8, !dbg !2874, !tbaa !1834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #11, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %18, metadata !2761, metadata !DIExpression()) #11, !dbg !2877
  br label %21, !dbg !2878

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !2879
  unreachable, !dbg !2879

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2880
  br i1 %13, label %15, label %14, !dbg !2881

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #14, !dbg !2882
  unreachable, !dbg !2882

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2883
  %17 = add i64 %3, 1, !dbg !2884
  %18 = add i64 %17, %16, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %18, metadata !155, metadata !DIExpression()) #11, !dbg !2867
  store i64 %18, i64* %1, align 8, !dbg !2874, !tbaa !1834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #11, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %18, metadata !2761, metadata !DIExpression()) #11, !dbg !2877
  %19 = icmp eq i64 %18, 0, !dbg !2886
  br i1 %19, label %20, label %21, !dbg !2878

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !2887
  br label %28, !dbg !2888

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %23, metadata !2756, metadata !DIExpression()) #11, !dbg !2875
  %24 = icmp eq i8* %23, null, !dbg !2890
  %25 = icmp ne i64 %22, 0, !dbg !2891
  %26 = and i1 %25, %24, !dbg !2892
  br i1 %26, label %27, label %28, !dbg !2892

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #14, !dbg !2893
  unreachable, !dbg !2893

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2894
  ret i8* %29, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #8 !dbg !2896 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %0, metadata !2716, metadata !DIExpression()) #11, !dbg !2900
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()) #11, !dbg !2903
  %3 = icmp eq i8* %2, null, !dbg !2904
  %4 = icmp ne i64 %0, 0, !dbg !2905
  %5 = and i1 %4, %3, !dbg !2906
  br i1 %5, label %6, label %7, !dbg !2906

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2907
  unreachable, !dbg !2907

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !2908
  ret i8* %2, !dbg !2909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #8 !dbg !2910 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2913, metadata !DIExpression()), !dbg !2916
  %3 = udiv i64 9223372036854775807, %1, !dbg !2917
  %4 = icmp ult i64 %3, %0, !dbg !2917
  br i1 %4, label %8, label %5, !dbg !2919

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %6, metadata !2914, metadata !DIExpression()), !dbg !2921
  %7 = icmp eq i8* %6, null, !dbg !2922
  br i1 %7, label %8, label %9, !dbg !2923

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !2924
  unreachable, !dbg !2924

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #8 !dbg !2926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()) #11, !dbg !2936
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %3, metadata !2722, metadata !DIExpression()) #11, !dbg !2939
  %4 = icmp eq i8* %3, null, !dbg !2940
  %5 = icmp ne i64 %1, 0, !dbg !2941
  %6 = and i1 %5, %4, !dbg !2942
  br i1 %6, label %7, label %8, !dbg !2942

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2943
  unreachable, !dbg !2943

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !2944
  ret i8* %3, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #8 !dbg !2946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2948, metadata !DIExpression()), !dbg !2949
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !2950
  %3 = add i64 %2, 1, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #11, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %3, metadata !2933, metadata !DIExpression()) #11, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %3, metadata !2716, metadata !DIExpression()) #11, !dbg !2955
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %4, metadata !2722, metadata !DIExpression()) #11, !dbg !2958
  %5 = icmp eq i8* %4, null, !dbg !2959
  %6 = icmp ne i64 %3, 0, !dbg !2960
  %7 = and i1 %6, %5, !dbg !2961
  br i1 %7, label %8, label %9, !dbg !2961

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2962
  unreachable, !dbg !2962

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !2963
  ret i8* %4, !dbg !2964
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2965 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2967, !tbaa !701
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.95, i64 0, i64 0), i32 5) #11, !dbg !2968
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* %2) #11, !dbg !2969
  tail call void @abort() #14, !dbg !2970
  unreachable, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #8 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2974, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !2981
  %3 = icmp eq i64 %0, 0, !dbg !2982
  %4 = icmp eq i64 %1, 0, !dbg !2983
  %5 = or i1 %3, %4, !dbg !2984
  br i1 %5, label %12, label %6, !dbg !2984

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %7, metadata !2977, metadata !DIExpression()), !dbg !2986
  %8 = udiv i64 %7, %1, !dbg !2987
  %9 = icmp eq i64 %8, %0, !dbg !2989
  br i1 %9, label %12, label %10, !dbg !2990

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2991
  store i32 12, i32* %11, align 4, !dbg !2993, !tbaa !701
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2974, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %13, metadata !2975, metadata !DIExpression()), !dbg !2981
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %15, metadata !2976, metadata !DIExpression()), !dbg !2995
  br label %16, !dbg !2996

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !2997
  ret i8* %17, !dbg !2998
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #8 !dbg !2999 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3016, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %1, metadata !3017, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %2, metadata !3018, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3019, metadata !DIExpression()), !dbg !3028
  %6 = bitcast i32* %5 to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3029
  %7 = icmp eq i32* %0, null, !dbg !3030
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3032
  call void @llvm.dbg.value(metadata i32* %8, metadata !3016, metadata !DIExpression()), !dbg !3025
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %9, metadata !3020, metadata !DIExpression()), !dbg !3034
  %10 = icmp ugt i64 %9, -3, !dbg !3035
  %11 = icmp ne i64 %2, 0, !dbg !3036
  %12 = and i1 %11, %10, !dbg !3037
  br i1 %12, label %13, label %18, !dbg !3037

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3038
  br i1 %14, label %18, label %15, !dbg !3039

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3040, !tbaa !1011
  call void @llvm.dbg.value(metadata i8 %16, metadata !3022, metadata !DIExpression()), !dbg !3041
  %17 = zext i8 %16 to i32, !dbg !3042
  store i32 %17, i32* %8, align 4, !dbg !3043, !tbaa !701
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3045
  ret i64 %19, !dbg !3045
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #8 !dbg !3046 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3085, metadata !DIExpression()), !dbg !3090
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3091
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3092, metadata !DIExpression()), !dbg !3096
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3098
  %4 = load i32, i32* %3, align 8, !dbg !3098, !tbaa !3099
  %5 = and i32 %4, 32, !dbg !3098
  %6 = icmp eq i32 %5, 0, !dbg !3101
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3102
  %8 = icmp ne i32 %7, 0, !dbg !3103
  br i1 %6, label %9, label %19, !dbg !3104

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3106
  %11 = xor i1 %8, true, !dbg !3107
  %12 = or i1 %10, %11, !dbg !3107
  %13 = sext i1 %8 to i32, !dbg !3107
  br i1 %12, label %22, label %14, !dbg !3107

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3108
  %16 = load i32, i32* %15, align 4, !dbg !3108, !tbaa !701
  %17 = icmp ne i32 %16, 9, !dbg !3109
  %18 = sext i1 %17 to i32, !dbg !3110
  br label %22, !dbg !3110

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3111

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3113
  store i32 0, i32* %21, align 4, !dbg !3115, !tbaa !701
  br label %22, !dbg !3113

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3116
  ret i32 %23, !dbg !3117
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #8 !dbg !3118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 1, metadata !3124, metadata !DIExpression()), !dbg !3127
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %2, metadata !3125, metadata !DIExpression()), !dbg !3129
  %3 = icmp eq i8* %2, null, !dbg !3130
  br i1 %3, label %11, label %4, !dbg !3132

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i64 0, i64 0)) #15, !dbg !3133
  %6 = icmp eq i32 %5, 0, !dbg !3138
  br i1 %6, label %10, label %7, !dbg !3139

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0)) #15, !dbg !3140
  %9 = icmp eq i32 %8, 0, !dbg !3141
  br i1 %9, label %10, label %11, !dbg !3142

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3124, metadata !DIExpression()), !dbg !3127
  br label %11, !dbg !3143

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3145 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3151
  call void @llvm.dbg.value(metadata i8* %1, metadata !3150, metadata !DIExpression()), !dbg !3152
  %2 = icmp eq i8* %1, null, !dbg !3153
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.109, i64 0, i64 0), i8* %1, !dbg !3155
  call void @llvm.dbg.value(metadata i8* %3, metadata !3150, metadata !DIExpression()), !dbg !3152
  %4 = load i8, i8* %3, align 1, !dbg !3156, !tbaa !1011
  %5 = icmp eq i8 %4, 0, !dbg !3160
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0), i8* %3, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %6, metadata !3150, metadata !DIExpression()), !dbg !3152
  ret i8* %6, !dbg !3162
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #8 !dbg !3163 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3205, metadata !DIExpression()), !dbg !3208
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %2, metadata !3204, metadata !DIExpression()), !dbg !3210
  %3 = icmp slt i32 %2, 0, !dbg !3211
  br i1 %3, label %4, label %6, !dbg !3213

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3214
  br label %24, !dbg !3215

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3216
  %8 = icmp eq i32 %7, 0, !dbg !3216
  br i1 %8, label %13, label %9, !dbg !3218

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3219
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3220
  %12 = icmp eq i64 %11, -1, !dbg !3221
  br i1 %12, label %16, label %13, !dbg !3222

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3223
  %15 = icmp eq i32 %14, 0, !dbg !3223
  br i1 %15, label %16, label %18, !dbg !3224

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3203, metadata !DIExpression()), !dbg !3207
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %21, metadata !3205, metadata !DIExpression()), !dbg !3208
  br label %24, !dbg !3226

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3227
  %20 = load i32, i32* %19, align 4, !dbg !3227, !tbaa !701
  call void @llvm.dbg.value(metadata i32 %20, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %20, metadata !3203, metadata !DIExpression()), !dbg !3207
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %21, metadata !3205, metadata !DIExpression()), !dbg !3208
  %22 = icmp eq i32 %20, 0, !dbg !3228
  br i1 %22, label %24, label %23, !dbg !3226

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3230, !tbaa !701
  call void @llvm.dbg.value(metadata i32 -1, metadata !3205, metadata !DIExpression()), !dbg !3208
  br label %24, !dbg !3232

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3233
  ret i32 %25, !dbg !3234
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #8 !dbg !3235 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3274, metadata !DIExpression()), !dbg !3275
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3276
  br i1 %2, label %6, label %3, !dbg !3278

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3279
  %5 = icmp eq i32 %4, 0, !dbg !3279
  br i1 %5, label %6, label %8, !dbg !3280

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3281
  br label %17, !dbg !3282

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3283, metadata !DIExpression()) #11, !dbg !3288
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3290
  %10 = load i32, i32* %9, align 8, !dbg !3290, !tbaa !3099
  %11 = and i32 %10, 256, !dbg !3292
  %12 = icmp eq i32 %11, 0, !dbg !3292
  br i1 %12, label %15, label %13, !dbg !3293

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3294
  br label %15, !dbg !3294

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3295
  br label %17, !dbg !3296

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3297
  ret i32 %18, !dbg !3298
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #8 !dbg !3299 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3339, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %2, metadata !3341, metadata !DIExpression()), !dbg !3347
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3348
  %5 = load i8*, i8** %4, align 8, !dbg !3348, !tbaa !3349
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3350
  %7 = load i8*, i8** %6, align 8, !dbg !3350, !tbaa !3351
  %8 = icmp eq i8* %5, %7, !dbg !3352
  br i1 %8, label %9, label %28, !dbg !3353

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3354
  %11 = load i8*, i8** %10, align 8, !dbg !3354, !tbaa !3355
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3356
  %13 = load i8*, i8** %12, align 8, !dbg !3356, !tbaa !3357
  %14 = icmp eq i8* %11, %13, !dbg !3358
  br i1 %14, label %15, label %28, !dbg !3359

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3360
  %17 = load i8*, i8** %16, align 8, !dbg !3360, !tbaa !3361
  %18 = icmp eq i8* %17, null, !dbg !3362
  br i1 %18, label %19, label %28, !dbg !3363

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3364
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %21, metadata !3342, metadata !DIExpression()), !dbg !3366
  %22 = icmp eq i64 %21, -1, !dbg !3367
  br i1 %22, label %30, label %23, !dbg !3369

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3370
  %25 = load i32, i32* %24, align 8, !dbg !3371, !tbaa !3099
  %26 = and i32 %25, -17, !dbg !3371
  store i32 %26, i32* %24, align 8, !dbg !3371, !tbaa !3099
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3372
  store i64 %21, i64* %27, align 8, !dbg !3373, !tbaa !3374
  br label %30, !dbg !3375

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3376
  br label %30, !dbg !3377

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3378
  ret i32 %31, !dbg !3379
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
!132 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!571 = distinct !DISubprogram(name: "usage", scope: !132, file: !132, line: 36, type: !572, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !131, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !25}
!574 = !{!575}
!575 = !DILocalVariable(name: "status", arg: 1, scope: !571, file: !132, line: 36, type: !25)
!576 = !DILocation(line: 36, column: 12, scope: !571)
!577 = !DILocation(line: 38, column: 3, scope: !571)
!578 = !{!579, !579, i64 0}
!579 = !{!"any pointer", !580, i64 0}
!580 = !{!"omnipotent char", !581, i64 0}
!581 = !{!"Simple C/C++ TBAA"}
!582 = !DILocation(line: 43, column: 3, scope: !571)
!583 = !DILocation(line: 47, column: 3, scope: !571)
!584 = !DILocation(line: 48, column: 3, scope: !571)
!585 = !DILocation(line: 49, column: 3, scope: !571)
!586 = !DILocation(line: 50, column: 3, scope: !571)
!587 = !DILocation(line: 51, column: 3, scope: !571)
!588 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !589, file: !589, line: 630, type: !590, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !592)
!589 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!590 = !DISubroutineType(types: !591)
!591 = !{null, !6}
!592 = !{!593, !594, !603, !604, !606}
!593 = !DILocalVariable(name: "program", arg: 1, scope: !588, file: !589, line: 630, type: !6)
!594 = !DILocalVariable(name: "infomap", scope: !588, file: !589, line: 632, type: !595)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 896, elements: !601)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !588, file: !589, line: 632, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !597, file: !589, line: 632, baseType: !6, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !589, line: 632, baseType: !6, size: 64, offset: 64)
!601 = !{!602}
!602 = !DISubrange(count: 7)
!603 = !DILocalVariable(name: "node", scope: !588, file: !589, line: 642, type: !6)
!604 = !DILocalVariable(name: "map_prog", scope: !588, file: !589, line: 643, type: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!606 = !DILocalVariable(name: "lc_messages", scope: !588, file: !589, line: 655, type: !6)
!607 = !DILocation(line: 632, column: 3, scope: !588)
!608 = !DILocation(line: 632, column: 67, scope: !588)
!609 = !DILocation(line: 643, column: 36, scope: !588)
!610 = !DILocation(line: 643, column: 25, scope: !588)
!611 = !DILocation(line: 645, column: 33, scope: !588)
!612 = !DILocation(line: 645, column: 3, scope: !588)
!613 = !DILocation(line: 646, column: 13, scope: !588)
!614 = !DILocation(line: 645, column: 20, scope: !588)
!615 = !{!616, !579, i64 0}
!616 = !{!"infomap", !579, i64 0, !579, i64 8}
!617 = !DILocation(line: 645, column: 10, scope: !588)
!618 = !DILocation(line: 645, column: 28, scope: !588)
!619 = distinct !{!619, !612, !613}
!620 = !DILocation(line: 648, column: 17, scope: !621)
!621 = distinct !DILexicalBlock(scope: !588, file: !589, line: 648, column: 7)
!622 = !{!616, !579, i64 8}
!623 = !DILocation(line: 648, column: 7, scope: !621)
!624 = !DILocation(line: 648, column: 7, scope: !588)
!625 = !DILocation(line: 642, column: 15, scope: !588)
!626 = !DILocation(line: 651, column: 3, scope: !588)
!627 = !DILocation(line: 655, column: 29, scope: !588)
!628 = !DILocation(line: 655, column: 15, scope: !588)
!629 = !DILocation(line: 656, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !588, file: !589, line: 656, column: 7)
!631 = !DILocation(line: 656, column: 19, scope: !630)
!632 = !DILocation(line: 656, column: 22, scope: !630)
!633 = !DILocation(line: 656, column: 7, scope: !588)
!634 = !DILocation(line: 662, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !589, line: 657, column: 5)
!636 = !DILocation(line: 664, column: 5, scope: !635)
!637 = !DILocation(line: 665, column: 3, scope: !588)
!638 = !DILocation(line: 667, column: 3, scope: !588)
!639 = !DILocation(line: 669, column: 1, scope: !588)
!640 = distinct !DISubprogram(name: "main", scope: !132, file: !132, line: 55, type: !641, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!25, !25, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "argc", arg: 1, scope: !640, file: !132, line: 55, type: !25)
!646 = !DILocalVariable(name: "argv", arg: 2, scope: !640, file: !132, line: 55, type: !643)
!647 = !DILocation(line: 55, column: 11, scope: !640)
!648 = !DILocation(line: 55, column: 24, scope: !640)
!649 = !DILocation(line: 59, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !640, file: !132, line: 59, column: 7)
!651 = !DILocation(line: 59, column: 7, scope: !640)
!652 = !DILocation(line: 62, column: 25, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !132, line: 60, column: 5)
!654 = !DILocation(line: 62, column: 7, scope: !653)
!655 = !DILocation(line: 63, column: 7, scope: !653)
!656 = !DILocation(line: 64, column: 7, scope: !653)
!657 = !DILocation(line: 65, column: 7, scope: !653)
!658 = !DILocation(line: 69, column: 7, scope: !653)
!659 = !DILocation(line: 71, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !653, file: !132, line: 71, column: 11)
!661 = !DILocation(line: 71, column: 11, scope: !653)
!662 = !DILocation(line: 72, column: 9, scope: !660)
!663 = !DILocation(line: 74, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !653, file: !132, line: 74, column: 11)
!665 = !DILocation(line: 74, column: 11, scope: !653)
!666 = !DILocation(line: 75, column: 22, scope: !664)
!667 = !DILocation(line: 75, column: 58, scope: !664)
!668 = !DILocation(line: 75, column: 9, scope: !664)
!669 = !DILocation(line: 79, column: 3, scope: !640)
!670 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 51, type: !590, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !671)
!671 = !{!672}
!672 = !DILocalVariable(name: "file", arg: 1, scope: !670, file: !16, line: 51, type: !6)
!673 = !DILocation(line: 51, column: 41, scope: !670)
!674 = !DILocation(line: 53, column: 13, scope: !670)
!675 = !DILocation(line: 54, column: 1, scope: !670)
!676 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 88, type: !677, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !17}
!679 = !{!680}
!680 = !DILocalVariable(name: "ignore", arg: 1, scope: !676, file: !16, line: 88, type: !17)
!681 = !DILocation(line: 88, column: 37, scope: !676)
!682 = !DILocation(line: 90, column: 16, scope: !676)
!683 = !{!684, !684, i64 0}
!684 = !{!"_Bool", !580, i64 0}
!685 = !DILocation(line: 91, column: 1, scope: !676)
!686 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 117, type: !687, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null}
!689 = !{!690}
!690 = !DILocalVariable(name: "write_error", scope: !691, file: !16, line: 122, type: !6)
!691 = distinct !DILexicalBlock(scope: !692, file: !16, line: 121, column: 5)
!692 = distinct !DILexicalBlock(scope: !686, file: !16, line: 119, column: 7)
!693 = !DILocation(line: 119, column: 21, scope: !692)
!694 = !DILocation(line: 119, column: 7, scope: !692)
!695 = !DILocation(line: 119, column: 29, scope: !692)
!696 = !DILocation(line: 120, column: 7, scope: !692)
!697 = !DILocation(line: 120, column: 12, scope: !692)
!698 = !{i8 0, i8 2}
!699 = !DILocation(line: 120, column: 25, scope: !692)
!700 = !DILocation(line: 120, column: 28, scope: !692)
!701 = !{!702, !702, i64 0}
!702 = !{!"int", !580, i64 0}
!703 = !DILocation(line: 120, column: 34, scope: !692)
!704 = !DILocation(line: 119, column: 7, scope: !686)
!705 = !DILocation(line: 122, column: 33, scope: !691)
!706 = !DILocation(line: 122, column: 19, scope: !691)
!707 = !DILocation(line: 123, column: 11, scope: !708)
!708 = distinct !DILexicalBlock(scope: !691, file: !16, line: 123, column: 11)
!709 = !DILocation(line: 0, scope: !708)
!710 = !DILocation(line: 123, column: 11, scope: !691)
!711 = !DILocation(line: 124, column: 36, scope: !708)
!712 = !DILocation(line: 124, column: 9, scope: !708)
!713 = !DILocation(line: 127, column: 9, scope: !708)
!714 = !DILocation(line: 129, column: 14, scope: !691)
!715 = !DILocation(line: 129, column: 7, scope: !691)
!716 = !DILocation(line: 134, column: 42, scope: !717)
!717 = distinct !DILexicalBlock(scope: !686, file: !16, line: 134, column: 7)
!718 = !DILocation(line: 134, column: 28, scope: !717)
!719 = !DILocation(line: 134, column: 50, scope: !717)
!720 = !DILocation(line: 134, column: 7, scope: !686)
!721 = !DILocation(line: 135, column: 12, scope: !717)
!722 = !DILocation(line: 135, column: 5, scope: !717)
!723 = !DILocation(line: 136, column: 1, scope: !686)
!724 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !590, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, retainedNodes: !725)
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(name: "argv0", arg: 1, scope: !724, file: !34, line: 39, type: !6)
!727 = !DILocalVariable(name: "slash", scope: !724, file: !34, line: 46, type: !6)
!728 = !DILocalVariable(name: "base", scope: !724, file: !34, line: 47, type: !6)
!729 = !DILocation(line: 39, column: 31, scope: !724)
!730 = !DILocation(line: 51, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !34, line: 51, column: 7)
!732 = !DILocation(line: 51, column: 7, scope: !724)
!733 = !DILocation(line: 55, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !34, line: 52, column: 5)
!735 = !DILocation(line: 54, column: 7, scope: !734)
!736 = !DILocation(line: 56, column: 7, scope: !734)
!737 = !DILocation(line: 59, column: 11, scope: !724)
!738 = !DILocation(line: 46, column: 15, scope: !724)
!739 = !DILocation(line: 60, column: 17, scope: !724)
!740 = !DILocation(line: 60, column: 33, scope: !724)
!741 = !DILocation(line: 60, column: 11, scope: !724)
!742 = !DILocation(line: 47, column: 15, scope: !724)
!743 = !DILocation(line: 61, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !724, file: !34, line: 61, column: 7)
!745 = !DILocation(line: 61, column: 20, scope: !744)
!746 = !DILocation(line: 61, column: 25, scope: !744)
!747 = !DILocation(line: 61, column: 42, scope: !744)
!748 = !DILocation(line: 61, column: 28, scope: !744)
!749 = !DILocation(line: 61, column: 61, scope: !744)
!750 = !DILocation(line: 61, column: 7, scope: !724)
!751 = !DILocation(line: 64, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !34, line: 64, column: 11)
!753 = distinct !DILexicalBlock(scope: !744, file: !34, line: 62, column: 5)
!754 = !DILocation(line: 64, column: 36, scope: !752)
!755 = !DILocation(line: 64, column: 11, scope: !753)
!756 = !DILocation(line: 66, column: 24, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !34, line: 65, column: 9)
!758 = !DILocation(line: 70, column: 41, scope: !757)
!759 = !DILocation(line: 72, column: 9, scope: !757)
!760 = !DILocation(line: 84, column: 16, scope: !724)
!761 = !DILocation(line: 90, column: 27, scope: !724)
!762 = !DILocation(line: 92, column: 1, scope: !724)
!763 = distinct !DISubprogram(name: "clone_quoting_options", scope: !83, file: !83, line: 122, type: !764, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !767)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!767 = !{!768, !769, !770}
!768 = !DILocalVariable(name: "o", arg: 1, scope: !763, file: !83, line: 122, type: !766)
!769 = !DILocalVariable(name: "e", scope: !763, file: !83, line: 124, type: !25)
!770 = !DILocalVariable(name: "p", scope: !763, file: !83, line: 125, type: !766)
!771 = !DILocation(line: 122, column: 48, scope: !763)
!772 = !DILocation(line: 124, column: 11, scope: !763)
!773 = !DILocation(line: 124, column: 7, scope: !763)
!774 = !DILocation(line: 125, column: 40, scope: !763)
!775 = !DILocation(line: 125, column: 31, scope: !763)
!776 = !DILocation(line: 125, column: 27, scope: !763)
!777 = !DILocation(line: 127, column: 9, scope: !763)
!778 = !DILocation(line: 128, column: 3, scope: !763)
!779 = distinct !DISubprogram(name: "get_quoting_style", scope: !83, file: !83, line: 133, type: !780, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !784)
!780 = !DISubroutineType(types: !781)
!781 = !{!40, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!784 = !{!785}
!785 = !DILocalVariable(name: "o", arg: 1, scope: !779, file: !83, line: 133, type: !782)
!786 = !DILocation(line: 133, column: 50, scope: !779)
!787 = !DILocation(line: 135, column: 11, scope: !779)
!788 = !DILocation(line: 135, column: 46, scope: !779)
!789 = !{!790, !580, i64 0}
!790 = !{!"quoting_options", !580, i64 0, !702, i64 4, !580, i64 8, !579, i64 40, !579, i64 48}
!791 = !DILocation(line: 135, column: 3, scope: !779)
!792 = distinct !DISubprogram(name: "set_quoting_style", scope: !83, file: !83, line: 141, type: !793, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !766, !40}
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "o", arg: 1, scope: !792, file: !83, line: 141, type: !766)
!797 = !DILocalVariable(name: "s", arg: 2, scope: !792, file: !83, line: 141, type: !40)
!798 = !DILocation(line: 141, column: 44, scope: !792)
!799 = !DILocation(line: 141, column: 66, scope: !792)
!800 = !DILocation(line: 143, column: 4, scope: !792)
!801 = !DILocation(line: 143, column: 39, scope: !792)
!802 = !DILocation(line: 143, column: 45, scope: !792)
!803 = !DILocation(line: 144, column: 1, scope: !792)
!804 = distinct !DISubprogram(name: "set_char_quoting", scope: !83, file: !83, line: 152, type: !805, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!25, !766, !8, !25}
!807 = !{!808, !809, !810, !811, !813, !815, !816}
!808 = !DILocalVariable(name: "o", arg: 1, scope: !804, file: !83, line: 152, type: !766)
!809 = !DILocalVariable(name: "c", arg: 2, scope: !804, file: !83, line: 152, type: !8)
!810 = !DILocalVariable(name: "i", arg: 3, scope: !804, file: !83, line: 152, type: !25)
!811 = !DILocalVariable(name: "uc", scope: !804, file: !83, line: 154, type: !812)
!812 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!813 = !DILocalVariable(name: "p", scope: !804, file: !83, line: 155, type: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!815 = !DILocalVariable(name: "shift", scope: !804, file: !83, line: 157, type: !25)
!816 = !DILocalVariable(name: "r", scope: !804, file: !83, line: 158, type: !25)
!817 = !DILocation(line: 152, column: 43, scope: !804)
!818 = !DILocation(line: 152, column: 51, scope: !804)
!819 = !DILocation(line: 152, column: 58, scope: !804)
!820 = !DILocation(line: 154, column: 17, scope: !804)
!821 = !DILocation(line: 156, column: 6, scope: !804)
!822 = !DILocation(line: 156, column: 62, scope: !804)
!823 = !DILocation(line: 156, column: 57, scope: !804)
!824 = !DILocation(line: 155, column: 17, scope: !804)
!825 = !DILocation(line: 157, column: 15, scope: !804)
!826 = !DILocation(line: 157, column: 7, scope: !804)
!827 = !DILocation(line: 158, column: 12, scope: !804)
!828 = !DILocation(line: 158, column: 15, scope: !804)
!829 = !DILocation(line: 158, column: 25, scope: !804)
!830 = !DILocation(line: 158, column: 7, scope: !804)
!831 = !DILocation(line: 159, column: 13, scope: !804)
!832 = !DILocation(line: 159, column: 18, scope: !804)
!833 = !DILocation(line: 159, column: 23, scope: !804)
!834 = !DILocation(line: 159, column: 6, scope: !804)
!835 = !DILocation(line: 160, column: 3, scope: !804)
!836 = distinct !DISubprogram(name: "set_quoting_flags", scope: !83, file: !83, line: 168, type: !837, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!25, !766, !25}
!839 = !{!840, !841, !842}
!840 = !DILocalVariable(name: "o", arg: 1, scope: !836, file: !83, line: 168, type: !766)
!841 = !DILocalVariable(name: "i", arg: 2, scope: !836, file: !83, line: 168, type: !25)
!842 = !DILocalVariable(name: "r", scope: !836, file: !83, line: 170, type: !25)
!843 = !DILocation(line: 168, column: 44, scope: !836)
!844 = !DILocation(line: 168, column: 51, scope: !836)
!845 = !DILocation(line: 171, column: 8, scope: !846)
!846 = distinct !DILexicalBlock(scope: !836, file: !83, line: 171, column: 7)
!847 = !DILocation(line: 171, column: 7, scope: !836)
!848 = !DILocation(line: 173, column: 10, scope: !836)
!849 = !{!790, !702, i64 4}
!850 = !DILocation(line: 170, column: 7, scope: !836)
!851 = !DILocation(line: 174, column: 12, scope: !836)
!852 = !DILocation(line: 175, column: 3, scope: !836)
!853 = distinct !DISubprogram(name: "set_custom_quoting", scope: !83, file: !83, line: 179, type: !854, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !766, !6, !6}
!856 = !{!857, !858, !859}
!857 = !DILocalVariable(name: "o", arg: 1, scope: !853, file: !83, line: 179, type: !766)
!858 = !DILocalVariable(name: "left_quote", arg: 2, scope: !853, file: !83, line: 180, type: !6)
!859 = !DILocalVariable(name: "right_quote", arg: 3, scope: !853, file: !83, line: 180, type: !6)
!860 = !DILocation(line: 179, column: 45, scope: !853)
!861 = !DILocation(line: 180, column: 33, scope: !853)
!862 = !DILocation(line: 180, column: 57, scope: !853)
!863 = !DILocation(line: 182, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !853, file: !83, line: 182, column: 7)
!865 = !DILocation(line: 182, column: 7, scope: !853)
!866 = !DILocation(line: 184, column: 6, scope: !853)
!867 = !DILocation(line: 184, column: 12, scope: !853)
!868 = !DILocation(line: 185, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !853, file: !83, line: 185, column: 7)
!870 = !DILocation(line: 185, column: 23, scope: !869)
!871 = !DILocation(line: 185, column: 19, scope: !869)
!872 = !DILocation(line: 186, column: 5, scope: !869)
!873 = !DILocation(line: 187, column: 6, scope: !853)
!874 = !DILocation(line: 187, column: 17, scope: !853)
!875 = !{!790, !579, i64 40}
!876 = !DILocation(line: 188, column: 6, scope: !853)
!877 = !DILocation(line: 188, column: 18, scope: !853)
!878 = !{!790, !579, i64 48}
!879 = !DILocation(line: 189, column: 1, scope: !853)
!880 = distinct !DISubprogram(name: "quotearg_buffer", scope: !83, file: !83, line: 784, type: !881, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!77, !32, !77, !6, !77, !782}
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891}
!884 = !DILocalVariable(name: "buffer", arg: 1, scope: !880, file: !83, line: 784, type: !32)
!885 = !DILocalVariable(name: "buffersize", arg: 2, scope: !880, file: !83, line: 784, type: !77)
!886 = !DILocalVariable(name: "arg", arg: 3, scope: !880, file: !83, line: 785, type: !6)
!887 = !DILocalVariable(name: "argsize", arg: 4, scope: !880, file: !83, line: 785, type: !77)
!888 = !DILocalVariable(name: "o", arg: 5, scope: !880, file: !83, line: 786, type: !782)
!889 = !DILocalVariable(name: "p", scope: !880, file: !83, line: 788, type: !782)
!890 = !DILocalVariable(name: "e", scope: !880, file: !83, line: 789, type: !25)
!891 = !DILocalVariable(name: "r", scope: !880, file: !83, line: 790, type: !77)
!892 = !DILocation(line: 784, column: 24, scope: !880)
!893 = !DILocation(line: 784, column: 39, scope: !880)
!894 = !DILocation(line: 785, column: 30, scope: !880)
!895 = !DILocation(line: 785, column: 42, scope: !880)
!896 = !DILocation(line: 786, column: 48, scope: !880)
!897 = !DILocation(line: 788, column: 37, scope: !880)
!898 = !DILocation(line: 788, column: 33, scope: !880)
!899 = !DILocation(line: 789, column: 11, scope: !880)
!900 = !DILocation(line: 789, column: 7, scope: !880)
!901 = !DILocation(line: 791, column: 43, scope: !880)
!902 = !DILocation(line: 791, column: 53, scope: !880)
!903 = !DILocation(line: 791, column: 60, scope: !880)
!904 = !DILocation(line: 792, column: 43, scope: !880)
!905 = !DILocation(line: 792, column: 58, scope: !880)
!906 = !DILocation(line: 790, column: 14, scope: !880)
!907 = !DILocation(line: 790, column: 10, scope: !880)
!908 = !DILocation(line: 793, column: 9, scope: !880)
!909 = !DILocation(line: 794, column: 3, scope: !880)
!910 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !83, file: !83, line: 256, type: !911, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !915)
!911 = !DISubroutineType(types: !912)
!912 = !{!77, !32, !77, !6, !77, !40, !25, !913, !6, !6}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !940, !941, !942, !943, !944, !947, !948, !966, !969, !970, !977}
!916 = !DILocalVariable(name: "buffer", arg: 1, scope: !910, file: !83, line: 256, type: !32)
!917 = !DILocalVariable(name: "buffersize", arg: 2, scope: !910, file: !83, line: 256, type: !77)
!918 = !DILocalVariable(name: "arg", arg: 3, scope: !910, file: !83, line: 257, type: !6)
!919 = !DILocalVariable(name: "argsize", arg: 4, scope: !910, file: !83, line: 257, type: !77)
!920 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !910, file: !83, line: 258, type: !40)
!921 = !DILocalVariable(name: "flags", arg: 6, scope: !910, file: !83, line: 258, type: !25)
!922 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !910, file: !83, line: 259, type: !913)
!923 = !DILocalVariable(name: "left_quote", arg: 8, scope: !910, file: !83, line: 260, type: !6)
!924 = !DILocalVariable(name: "right_quote", arg: 9, scope: !910, file: !83, line: 261, type: !6)
!925 = !DILocalVariable(name: "i", scope: !910, file: !83, line: 263, type: !77)
!926 = !DILocalVariable(name: "len", scope: !910, file: !83, line: 264, type: !77)
!927 = !DILocalVariable(name: "orig_buffersize", scope: !910, file: !83, line: 265, type: !77)
!928 = !DILocalVariable(name: "quote_string", scope: !910, file: !83, line: 266, type: !6)
!929 = !DILocalVariable(name: "quote_string_len", scope: !910, file: !83, line: 267, type: !77)
!930 = !DILocalVariable(name: "backslash_escapes", scope: !910, file: !83, line: 268, type: !17)
!931 = !DILocalVariable(name: "unibyte_locale", scope: !910, file: !83, line: 269, type: !17)
!932 = !DILocalVariable(name: "elide_outer_quotes", scope: !910, file: !83, line: 270, type: !17)
!933 = !DILocalVariable(name: "pending_shell_escape_end", scope: !910, file: !83, line: 271, type: !17)
!934 = !DILocalVariable(name: "encountered_single_quote", scope: !910, file: !83, line: 272, type: !17)
!935 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !910, file: !83, line: 273, type: !17)
!936 = !DILocalVariable(name: "c", scope: !937, file: !83, line: 402, type: !812)
!937 = distinct !DILexicalBlock(scope: !938, file: !83, line: 401, column: 5)
!938 = distinct !DILexicalBlock(scope: !939, file: !83, line: 400, column: 3)
!939 = distinct !DILexicalBlock(scope: !910, file: !83, line: 400, column: 3)
!940 = !DILocalVariable(name: "esc", scope: !937, file: !83, line: 403, type: !812)
!941 = !DILocalVariable(name: "is_right_quote", scope: !937, file: !83, line: 404, type: !17)
!942 = !DILocalVariable(name: "escaping", scope: !937, file: !83, line: 405, type: !17)
!943 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !937, file: !83, line: 406, type: !17)
!944 = !DILocalVariable(name: "m", scope: !945, file: !83, line: 610, type: !77)
!945 = distinct !DILexicalBlock(scope: !946, file: !83, line: 608, column: 11)
!946 = distinct !DILexicalBlock(scope: !937, file: !83, line: 426, column: 9)
!947 = !DILocalVariable(name: "printable", scope: !945, file: !83, line: 612, type: !17)
!948 = !DILocalVariable(name: "mbstate", scope: !949, file: !83, line: 621, type: !951)
!949 = distinct !DILexicalBlock(scope: !950, file: !83, line: 620, column: 15)
!950 = distinct !DILexicalBlock(scope: !945, file: !83, line: 614, column: 17)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !952, line: 6, baseType: !953)
!952 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !954, line: 21, baseType: !955)
!954 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !954, line: 13, size: 64, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !955, file: !954, line: 15, baseType: !25, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !955, file: !954, line: 20, baseType: !959, size: 32, offset: 32)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !954, line: 16, size: 32, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !959, file: !954, line: 18, baseType: !42, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !959, file: !954, line: 19, baseType: !963, size: 32)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 4)
!966 = !DILocalVariable(name: "w", scope: !967, file: !83, line: 631, type: !968)
!967 = distinct !DILexicalBlock(scope: !949, file: !83, line: 630, column: 19)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 90, baseType: !25)
!969 = !DILocalVariable(name: "bytes", scope: !967, file: !83, line: 632, type: !77)
!970 = !DILocalVariable(name: "j", scope: !971, file: !83, line: 657, type: !77)
!971 = distinct !DILexicalBlock(scope: !972, file: !83, line: 656, column: 27)
!972 = distinct !DILexicalBlock(scope: !973, file: !83, line: 654, column: 29)
!973 = distinct !DILexicalBlock(scope: !974, file: !83, line: 649, column: 23)
!974 = distinct !DILexicalBlock(scope: !975, file: !83, line: 641, column: 30)
!975 = distinct !DILexicalBlock(scope: !976, file: !83, line: 636, column: 30)
!976 = distinct !DILexicalBlock(scope: !967, file: !83, line: 634, column: 25)
!977 = !DILocalVariable(name: "ilim", scope: !978, file: !83, line: 684, type: !77)
!978 = distinct !DILexicalBlock(scope: !979, file: !83, line: 681, column: 15)
!979 = distinct !DILexicalBlock(scope: !945, file: !83, line: 680, column: 17)
!980 = !DILocation(line: 256, column: 33, scope: !910)
!981 = !DILocation(line: 256, column: 48, scope: !910)
!982 = !DILocation(line: 257, column: 39, scope: !910)
!983 = !DILocation(line: 257, column: 51, scope: !910)
!984 = !DILocation(line: 258, column: 46, scope: !910)
!985 = !DILocation(line: 258, column: 65, scope: !910)
!986 = !DILocation(line: 259, column: 47, scope: !910)
!987 = !DILocation(line: 260, column: 39, scope: !910)
!988 = !DILocation(line: 261, column: 39, scope: !910)
!989 = !DILocation(line: 264, column: 10, scope: !910)
!990 = !DILocation(line: 265, column: 10, scope: !910)
!991 = !DILocation(line: 266, column: 15, scope: !910)
!992 = !DILocation(line: 267, column: 10, scope: !910)
!993 = !DILocation(line: 268, column: 8, scope: !910)
!994 = !DILocation(line: 269, column: 25, scope: !910)
!995 = !DILocation(line: 269, column: 36, scope: !910)
!996 = !DILocation(line: 270, column: 8, scope: !910)
!997 = !DILocation(line: 271, column: 8, scope: !910)
!998 = !DILocation(line: 272, column: 8, scope: !910)
!999 = !DILocation(line: 273, column: 8, scope: !910)
!1000 = !DILocation(line: 273, column: 3, scope: !910)
!1001 = !DILocation(line: 0, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !910, file: !83, line: 317, column: 5)
!1003 = !DILocation(line: 316, column: 3, scope: !910)
!1004 = !DILocation(line: 323, column: 11, scope: !1002)
!1005 = !DILocation(line: 323, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 323, column: 11)
!1007 = !DILocation(line: 324, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !83, line: 324, column: 9)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !83, line: 324, column: 9)
!1010 = !DILocation(line: 324, column: 9, scope: !1009)
!1011 = !{!580, !580, i64 0}
!1012 = !DILocation(line: 362, column: 26, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !83, line: 340, column: 11)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !83, line: 339, column: 13)
!1015 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 338, column: 7)
!1016 = !DILocation(line: 363, column: 27, scope: !1013)
!1017 = !DILocation(line: 364, column: 11, scope: !1013)
!1018 = !DILocation(line: 365, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !83, line: 365, column: 13)
!1020 = !DILocation(line: 365, column: 13, scope: !1015)
!1021 = !DILocation(line: 366, column: 43, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !83, line: 366, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !83, line: 366, column: 11)
!1024 = !DILocation(line: 366, column: 11, scope: !1023)
!1025 = !DILocation(line: 367, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !83, line: 367, column: 13)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !83, line: 367, column: 13)
!1028 = !DILocation(line: 367, column: 13, scope: !1027)
!1029 = !DILocation(line: 366, column: 70, scope: !1022)
!1030 = distinct !{!1030, !1024, !1031}
!1031 = !DILocation(line: 367, column: 13, scope: !1023)
!1032 = !DILocation(line: 370, column: 28, scope: !1015)
!1033 = !DILocation(line: 372, column: 7, scope: !1002)
!1034 = !DILocation(line: 376, column: 7, scope: !1002)
!1035 = !DILocation(line: 379, column: 7, scope: !1002)
!1036 = !DILocation(line: 381, column: 12, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 381, column: 11)
!1038 = !DILocation(line: 381, column: 11, scope: !1002)
!1039 = !DILocation(line: 0, scope: !1037)
!1040 = !DILocation(line: 386, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 386, column: 11)
!1042 = !DILocation(line: 386, column: 11, scope: !1002)
!1043 = !DILocation(line: 387, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !83, line: 387, column: 9)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !83, line: 387, column: 9)
!1046 = !DILocation(line: 387, column: 9, scope: !1045)
!1047 = !DILocation(line: 394, column: 7, scope: !1002)
!1048 = !DILocation(line: 397, column: 7, scope: !1002)
!1049 = !DILocation(line: 0, scope: !910)
!1050 = !DILocation(line: 263, column: 10, scope: !910)
!1051 = !DILocation(line: 400, column: 8, scope: !939)
!1052 = !DILocation(line: 0, scope: !938)
!1053 = !DILocation(line: 400, column: 27, scope: !938)
!1054 = !DILocation(line: 400, column: 19, scope: !938)
!1055 = !DILocation(line: 400, column: 41, scope: !938)
!1056 = !DILocation(line: 400, column: 48, scope: !938)
!1057 = !DILocation(line: 400, column: 3, scope: !939)
!1058 = !DILocation(line: 400, column: 60, scope: !938)
!1059 = !DILocation(line: 404, column: 12, scope: !937)
!1060 = !DILocation(line: 405, column: 12, scope: !937)
!1061 = !DILocation(line: 406, column: 12, scope: !937)
!1062 = !DILocation(line: 409, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !937, file: !83, line: 408, column: 11)
!1064 = !DILocation(line: 411, column: 17, scope: !1063)
!1065 = !DILocation(line: 412, column: 39, scope: !1063)
!1066 = !DILocation(line: 416, column: 32, scope: !1063)
!1067 = !DILocation(line: 412, column: 19, scope: !1063)
!1068 = !DILocation(line: 412, column: 15, scope: !1063)
!1069 = !DILocation(line: 417, column: 11, scope: !1063)
!1070 = !DILocation(line: 417, column: 26, scope: !1063)
!1071 = !DILocation(line: 417, column: 14, scope: !1063)
!1072 = !DILocation(line: 417, column: 63, scope: !1063)
!1073 = !DILocation(line: 408, column: 11, scope: !937)
!1074 = !DILocation(line: 0, scope: !937)
!1075 = !DILocation(line: 424, column: 11, scope: !937)
!1076 = !DILocation(line: 402, column: 21, scope: !937)
!1077 = !DILocation(line: 425, column: 7, scope: !937)
!1078 = !DILocation(line: 428, column: 15, scope: !946)
!1079 = !DILocation(line: 430, column: 15, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !83, line: 430, column: 15)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !83, line: 429, column: 13)
!1082 = distinct !DILexicalBlock(scope: !946, file: !83, line: 428, column: 15)
!1083 = !DILocation(line: 430, column: 15, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !83, line: 430, column: 15)
!1085 = !DILocation(line: 430, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !83, line: 430, column: 15)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !83, line: 430, column: 15)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !83, line: 430, column: 15)
!1089 = !DILocation(line: 430, column: 15, scope: !1087)
!1090 = !DILocation(line: 430, column: 15, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !83, line: 430, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !83, line: 430, column: 15)
!1093 = !DILocation(line: 430, column: 15, scope: !1092)
!1094 = !DILocation(line: 430, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !83, line: 430, column: 15)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !83, line: 430, column: 15)
!1097 = !DILocation(line: 430, column: 15, scope: !1096)
!1098 = !DILocation(line: 430, column: 15, scope: !1088)
!1099 = !DILocation(line: 430, column: 15, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !83, line: 430, column: 15)
!1101 = distinct !DILexicalBlock(scope: !1080, file: !83, line: 430, column: 15)
!1102 = !DILocation(line: 430, column: 15, scope: !1101)
!1103 = !DILocation(line: 438, column: 19, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1081, file: !83, line: 437, column: 19)
!1105 = !DILocation(line: 438, column: 24, scope: !1104)
!1106 = !DILocation(line: 438, column: 28, scope: !1104)
!1107 = !DILocation(line: 438, column: 38, scope: !1104)
!1108 = !DILocation(line: 438, column: 48, scope: !1104)
!1109 = !DILocation(line: 438, column: 59, scope: !1104)
!1110 = !DILocation(line: 440, column: 19, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !83, line: 440, column: 19)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !83, line: 440, column: 19)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !83, line: 439, column: 17)
!1114 = !DILocation(line: 440, column: 19, scope: !1112)
!1115 = !DILocation(line: 441, column: 19, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !83, line: 441, column: 19)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !83, line: 441, column: 19)
!1118 = !DILocation(line: 441, column: 19, scope: !1117)
!1119 = !DILocation(line: 442, column: 17, scope: !1113)
!1120 = !DILocation(line: 449, column: 20, scope: !1082)
!1121 = !DILocation(line: 454, column: 11, scope: !946)
!1122 = !DILocation(line: 457, column: 19, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !946, file: !83, line: 455, column: 13)
!1124 = !DILocation(line: 463, column: 19, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !83, line: 462, column: 19)
!1126 = !DILocation(line: 463, column: 24, scope: !1125)
!1127 = !DILocation(line: 463, column: 28, scope: !1125)
!1128 = !DILocation(line: 463, column: 38, scope: !1125)
!1129 = !DILocation(line: 463, column: 47, scope: !1125)
!1130 = !DILocation(line: 463, column: 41, scope: !1125)
!1131 = !DILocation(line: 463, column: 52, scope: !1125)
!1132 = !DILocation(line: 462, column: 19, scope: !1123)
!1133 = !DILocation(line: 464, column: 25, scope: !1125)
!1134 = !DILocation(line: 464, column: 17, scope: !1125)
!1135 = !DILocation(line: 471, column: 25, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !83, line: 465, column: 19)
!1137 = !DILocation(line: 475, column: 21, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !83, line: 475, column: 21)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 475, column: 21)
!1140 = !DILocation(line: 475, column: 21, scope: !1139)
!1141 = !DILocation(line: 476, column: 21, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !83, line: 476, column: 21)
!1143 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 476, column: 21)
!1144 = !DILocation(line: 476, column: 21, scope: !1143)
!1145 = !DILocation(line: 477, column: 21, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !83, line: 477, column: 21)
!1147 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 477, column: 21)
!1148 = !DILocation(line: 477, column: 21, scope: !1147)
!1149 = !DILocation(line: 478, column: 21, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !83, line: 478, column: 21)
!1151 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 478, column: 21)
!1152 = !DILocation(line: 478, column: 21, scope: !1151)
!1153 = !DILocation(line: 479, column: 21, scope: !1136)
!1154 = !DILocation(line: 403, column: 21, scope: !937)
!1155 = !DILocation(line: 492, column: 31, scope: !946)
!1156 = !DILocation(line: 493, column: 31, scope: !946)
!1157 = !DILocation(line: 495, column: 31, scope: !946)
!1158 = !DILocation(line: 496, column: 31, scope: !946)
!1159 = !DILocation(line: 497, column: 31, scope: !946)
!1160 = !DILocation(line: 500, column: 15, scope: !946)
!1161 = !DILocation(line: 502, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 501, column: 13)
!1163 = distinct !DILexicalBlock(scope: !946, file: !83, line: 500, column: 15)
!1164 = !DILocation(line: 509, column: 33, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !946, file: !83, line: 509, column: 15)
!1166 = !DILocation(line: 0, scope: !946)
!1167 = !DILocation(line: 514, column: 15, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !946, file: !83, line: 513, column: 15)
!1169 = !DILocation(line: 518, column: 15, scope: !946)
!1170 = !DILocation(line: 526, column: 26, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !946, file: !83, line: 526, column: 15)
!1172 = !DILocation(line: 526, column: 15, scope: !946)
!1173 = !DILocation(line: 526, column: 40, scope: !1171)
!1174 = !DILocation(line: 526, column: 47, scope: !1171)
!1175 = !DILocation(line: 530, column: 17, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !946, file: !83, line: 530, column: 15)
!1177 = !DILocation(line: 526, column: 18, scope: !1171)
!1178 = !DILocation(line: 526, column: 65, scope: !1171)
!1179 = !DILocation(line: 530, column: 15, scope: !946)
!1180 = !DILocation(line: 535, column: 11, scope: !946)
!1181 = !DILocation(line: 549, column: 15, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !946, file: !83, line: 548, column: 15)
!1183 = !DILocation(line: 556, column: 15, scope: !946)
!1184 = !DILocation(line: 558, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 557, column: 13)
!1186 = distinct !DILexicalBlock(scope: !946, file: !83, line: 556, column: 15)
!1187 = !DILocation(line: 561, column: 19, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !83, line: 561, column: 19)
!1189 = !DILocation(line: 561, column: 35, scope: !1188)
!1190 = !DILocation(line: 561, column: 30, scope: !1188)
!1191 = !DILocation(line: 570, column: 15, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !83, line: 570, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1185, file: !83, line: 570, column: 15)
!1194 = !DILocation(line: 570, column: 15, scope: !1193)
!1195 = !DILocation(line: 571, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !83, line: 571, column: 15)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !83, line: 571, column: 15)
!1198 = !DILocation(line: 571, column: 15, scope: !1197)
!1199 = !DILocation(line: 572, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !83, line: 572, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1185, file: !83, line: 572, column: 15)
!1202 = !DILocation(line: 572, column: 15, scope: !1201)
!1203 = !DILocation(line: 574, column: 13, scope: !1185)
!1204 = !DILocation(line: 614, column: 17, scope: !945)
!1205 = !DILocation(line: 610, column: 20, scope: !945)
!1206 = !DILocation(line: 617, column: 29, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !950, file: !83, line: 615, column: 15)
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"short", !580, i64 0}
!1210 = !DILocation(line: 617, column: 27, scope: !1207)
!1211 = !DILocation(line: 612, column: 18, scope: !945)
!1212 = !DILocation(line: 618, column: 15, scope: !1207)
!1213 = !DILocation(line: 621, column: 17, scope: !949)
!1214 = !DILocation(line: 622, column: 17, scope: !949)
!1215 = !DILocation(line: 626, column: 29, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !949, file: !83, line: 626, column: 21)
!1217 = !DILocation(line: 626, column: 21, scope: !949)
!1218 = !DILocation(line: 627, column: 29, scope: !1216)
!1219 = !DILocation(line: 627, column: 19, scope: !1216)
!1220 = !DILocation(line: 0, scope: !1063)
!1221 = !DILocation(line: 629, column: 17, scope: !949)
!1222 = !DILocation(line: 624, column: 19, scope: !949)
!1223 = !DILocation(line: 625, column: 27, scope: !949)
!1224 = !DILocation(line: 631, column: 21, scope: !967)
!1225 = !DILocation(line: 632, column: 56, scope: !967)
!1226 = !DILocation(line: 632, column: 50, scope: !967)
!1227 = !DILocation(line: 633, column: 53, scope: !967)
!1228 = !DILocation(line: 621, column: 27, scope: !949)
!1229 = !DILocation(line: 631, column: 29, scope: !967)
!1230 = !DILocation(line: 632, column: 36, scope: !967)
!1231 = !DILocation(line: 632, column: 28, scope: !967)
!1232 = !DILocation(line: 634, column: 25, scope: !967)
!1233 = !DILocation(line: 644, column: 38, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !974, file: !83, line: 642, column: 23)
!1235 = !DILocation(line: 644, column: 48, scope: !1234)
!1236 = !DILocation(line: 644, column: 51, scope: !1234)
!1237 = !DILocation(line: 644, column: 25, scope: !1234)
!1238 = !DILocation(line: 645, column: 28, scope: !1234)
!1239 = !DILocation(line: 644, column: 34, scope: !1234)
!1240 = distinct !{!1240, !1237, !1238}
!1241 = !DILocation(line: 658, column: 43, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !83, line: 658, column: 29)
!1243 = distinct !DILexicalBlock(scope: !971, file: !83, line: 658, column: 29)
!1244 = !DILocation(line: 655, column: 29, scope: !972)
!1245 = !DILocation(line: 657, column: 36, scope: !971)
!1246 = !DILocation(line: 659, column: 49, scope: !1242)
!1247 = !DILocation(line: 659, column: 39, scope: !1242)
!1248 = !DILocation(line: 659, column: 31, scope: !1242)
!1249 = !DILocation(line: 658, column: 53, scope: !1242)
!1250 = !DILocation(line: 658, column: 29, scope: !1243)
!1251 = distinct !{!1251, !1250, !1252}
!1252 = !DILocation(line: 667, column: 33, scope: !1243)
!1253 = !DILocation(line: 674, column: 19, scope: !949)
!1254 = !DILocation(line: 670, column: 41, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !973, file: !83, line: 670, column: 29)
!1256 = !DILocation(line: 670, column: 31, scope: !1255)
!1257 = !DILocation(line: 670, column: 29, scope: !973)
!1258 = !DILocation(line: 672, column: 27, scope: !973)
!1259 = !DILocation(line: 675, column: 26, scope: !949)
!1260 = !DILocation(line: 675, column: 24, scope: !949)
!1261 = !DILocation(line: 674, column: 19, scope: !967)
!1262 = distinct !{!1262, !1221, !1263}
!1263 = !DILocation(line: 675, column: 44, scope: !949)
!1264 = !DILocation(line: 676, column: 15, scope: !950)
!1265 = !DILocation(line: 0, scope: !1216)
!1266 = !DILocation(line: 0, scope: !949)
!1267 = !DILocation(line: 678, column: 40, scope: !945)
!1268 = !DILocation(line: 680, column: 19, scope: !979)
!1269 = !DILocation(line: 680, column: 45, scope: !979)
!1270 = !DILocation(line: 680, column: 23, scope: !979)
!1271 = !DILocation(line: 684, column: 33, scope: !978)
!1272 = !DILocation(line: 684, column: 24, scope: !978)
!1273 = !DILocation(line: 686, column: 17, scope: !978)
!1274 = !DILocation(line: 0, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !83, line: 687, column: 19)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !83, line: 686, column: 17)
!1277 = distinct !DILexicalBlock(scope: !978, file: !83, line: 686, column: 17)
!1278 = !DILocation(line: 0, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !83, line: 703, column: 21)
!1280 = !DILocation(line: 0, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !83, line: 696, column: 23)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !83, line: 695, column: 30)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !83, line: 688, column: 25)
!1284 = !DILocation(line: 688, column: 43, scope: !1283)
!1285 = !DILocation(line: 690, column: 25, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 690, column: 25)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !83, line: 689, column: 23)
!1288 = !DILocation(line: 690, column: 25, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !83, line: 690, column: 25)
!1290 = !DILocation(line: 690, column: 25, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !83, line: 690, column: 25)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !83, line: 690, column: 25)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !83, line: 690, column: 25)
!1294 = !DILocation(line: 690, column: 25, scope: !1292)
!1295 = !DILocation(line: 690, column: 25, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !83, line: 690, column: 25)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !83, line: 690, column: 25)
!1298 = !DILocation(line: 690, column: 25, scope: !1297)
!1299 = !DILocation(line: 690, column: 25, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !83, line: 690, column: 25)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !83, line: 690, column: 25)
!1302 = !DILocation(line: 690, column: 25, scope: !1301)
!1303 = !DILocation(line: 690, column: 25, scope: !1293)
!1304 = !DILocation(line: 690, column: 25, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !83, line: 690, column: 25)
!1306 = distinct !DILexicalBlock(scope: !1286, file: !83, line: 690, column: 25)
!1307 = !DILocation(line: 690, column: 25, scope: !1306)
!1308 = !DILocation(line: 691, column: 25, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !83, line: 691, column: 25)
!1310 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 691, column: 25)
!1311 = !DILocation(line: 691, column: 25, scope: !1310)
!1312 = !DILocation(line: 692, column: 25, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !83, line: 692, column: 25)
!1314 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 692, column: 25)
!1315 = !DILocation(line: 692, column: 25, scope: !1314)
!1316 = !DILocation(line: 693, column: 38, scope: !1287)
!1317 = !DILocation(line: 693, column: 33, scope: !1287)
!1318 = !DILocation(line: 694, column: 23, scope: !1287)
!1319 = !DILocation(line: 695, column: 30, scope: !1282)
!1320 = !DILocation(line: 695, column: 30, scope: !1283)
!1321 = !DILocation(line: 697, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !83, line: 697, column: 25)
!1323 = distinct !DILexicalBlock(scope: !1281, file: !83, line: 697, column: 25)
!1324 = !DILocation(line: 697, column: 25, scope: !1323)
!1325 = !DILocation(line: 699, column: 23, scope: !1281)
!1326 = !DILocation(line: 0, scope: !1314)
!1327 = !DILocation(line: 0, scope: !1287)
!1328 = !DILocation(line: 0, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1063, file: !83, line: 418, column: 9)
!1330 = !DILocation(line: 0, scope: !1286)
!1331 = !DILocation(line: 700, column: 35, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1275, file: !83, line: 700, column: 25)
!1333 = !DILocation(line: 700, column: 30, scope: !1332)
!1334 = !DILocation(line: 700, column: 25, scope: !1275)
!1335 = !DILocation(line: 702, column: 21, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !83, line: 702, column: 21)
!1337 = distinct !DILexicalBlock(scope: !1275, file: !83, line: 702, column: 21)
!1338 = !DILocation(line: 702, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !83, line: 702, column: 21)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !83, line: 702, column: 21)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !83, line: 702, column: 21)
!1342 = !DILocation(line: 702, column: 21, scope: !1340)
!1343 = !DILocation(line: 702, column: 21, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !83, line: 702, column: 21)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !83, line: 702, column: 21)
!1346 = !DILocation(line: 702, column: 21, scope: !1345)
!1347 = !DILocation(line: 702, column: 21, scope: !1341)
!1348 = !DILocation(line: 0, scope: !1323)
!1349 = !DILocation(line: 703, column: 21, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1279, file: !83, line: 703, column: 21)
!1351 = !DILocation(line: 703, column: 21, scope: !1279)
!1352 = !DILocation(line: 704, column: 25, scope: !1275)
!1353 = !DILocation(line: 686, column: 17, scope: !1276)
!1354 = distinct !{!1354, !1355, !1356}
!1355 = !DILocation(line: 686, column: 17, scope: !1277)
!1356 = !DILocation(line: 705, column: 19, scope: !1277)
!1357 = !DILocation(line: 0, scope: !939)
!1358 = !DILocation(line: 416, column: 30, scope: !1063)
!1359 = !DILocation(line: 712, column: 34, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !937, file: !83, line: 712, column: 11)
!1361 = !DILocation(line: 714, column: 14, scope: !1360)
!1362 = !DILocation(line: 715, column: 14, scope: !1360)
!1363 = !DILocation(line: 715, column: 35, scope: !1360)
!1364 = !DILocation(line: 715, column: 17, scope: !1360)
!1365 = !DILocation(line: 715, column: 47, scope: !1360)
!1366 = !DILocation(line: 715, column: 65, scope: !1360)
!1367 = !DILocation(line: 716, column: 15, scope: !1360)
!1368 = !DILocation(line: 716, column: 11, scope: !1360)
!1369 = !DILocation(line: 712, column: 11, scope: !937)
!1370 = !DILocation(line: 400, column: 10, scope: !939)
!1371 = !DILocation(line: 0, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !83, line: 519, column: 13)
!1373 = distinct !DILexicalBlock(scope: !946, file: !83, line: 518, column: 15)
!1374 = !DILocation(line: 720, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !937, file: !83, line: 720, column: 7)
!1376 = !DILocation(line: 720, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1375, file: !83, line: 720, column: 7)
!1378 = !DILocation(line: 720, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !83, line: 720, column: 7)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !83, line: 720, column: 7)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !83, line: 720, column: 7)
!1382 = !DILocation(line: 720, column: 7, scope: !1380)
!1383 = !DILocation(line: 720, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !83, line: 720, column: 7)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !83, line: 720, column: 7)
!1386 = !DILocation(line: 720, column: 7, scope: !1385)
!1387 = !DILocation(line: 720, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !83, line: 720, column: 7)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !83, line: 720, column: 7)
!1390 = !DILocation(line: 720, column: 7, scope: !1389)
!1391 = !DILocation(line: 720, column: 7, scope: !1381)
!1392 = !DILocation(line: 720, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !83, line: 720, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1375, file: !83, line: 720, column: 7)
!1395 = !DILocation(line: 720, column: 7, scope: !1394)
!1396 = !DILocation(line: 723, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !83, line: 723, column: 7)
!1398 = distinct !DILexicalBlock(scope: !937, file: !83, line: 723, column: 7)
!1399 = !DILocation(line: 424, column: 9, scope: !937)
!1400 = !DILocation(line: 723, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !83, line: 723, column: 7)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !83, line: 723, column: 7)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !83, line: 723, column: 7)
!1404 = !DILocation(line: 723, column: 7, scope: !1402)
!1405 = !DILocation(line: 723, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !83, line: 723, column: 7)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !83, line: 723, column: 7)
!1408 = !DILocation(line: 723, column: 7, scope: !1407)
!1409 = !DILocation(line: 723, column: 7, scope: !1403)
!1410 = !DILocation(line: 724, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !83, line: 724, column: 7)
!1412 = distinct !DILexicalBlock(scope: !937, file: !83, line: 724, column: 7)
!1413 = !DILocation(line: 724, column: 7, scope: !1412)
!1414 = !DILocation(line: 726, column: 13, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !937, file: !83, line: 726, column: 11)
!1416 = !DILocation(line: 726, column: 11, scope: !937)
!1417 = !DILocation(line: 728, column: 5, scope: !938)
!1418 = !DILocation(line: 400, column: 75, scope: !938)
!1419 = !DILocation(line: 400, column: 3, scope: !938)
!1420 = distinct !{!1420, !1057, !1421}
!1421 = !DILocation(line: 728, column: 5, scope: !939)
!1422 = !DILocation(line: 730, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !910, file: !83, line: 730, column: 7)
!1424 = !DILocation(line: 730, column: 16, scope: !1423)
!1425 = !DILocation(line: 738, column: 51, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !910, file: !83, line: 738, column: 7)
!1427 = !DILocation(line: 739, column: 10, scope: !1426)
!1428 = !DILocation(line: 741, column: 11, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !83, line: 741, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !83, line: 740, column: 5)
!1431 = !DILocation(line: 741, column: 11, scope: !1430)
!1432 = !DILocation(line: 742, column: 16, scope: !1429)
!1433 = !DILocation(line: 742, column: 9, scope: !1429)
!1434 = !DILocation(line: 746, column: 18, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !83, line: 746, column: 16)
!1436 = !DILocation(line: 746, column: 32, scope: !1435)
!1437 = !DILocation(line: 746, column: 29, scope: !1435)
!1438 = !DILocation(line: 755, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !910, file: !83, line: 755, column: 7)
!1440 = !DILocation(line: 755, column: 20, scope: !1439)
!1441 = !DILocation(line: 756, column: 12, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !83, line: 756, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !83, line: 756, column: 5)
!1444 = !DILocation(line: 756, column: 5, scope: !1443)
!1445 = !DILocation(line: 757, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !83, line: 757, column: 7)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !83, line: 757, column: 7)
!1448 = !DILocation(line: 757, column: 7, scope: !1447)
!1449 = !DILocation(line: 756, column: 39, scope: !1442)
!1450 = distinct !{!1450, !1444, !1451}
!1451 = !DILocation(line: 757, column: 7, scope: !1443)
!1452 = !DILocation(line: 759, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !910, file: !83, line: 759, column: 7)
!1454 = !DILocation(line: 759, column: 7, scope: !910)
!1455 = !DILocation(line: 760, column: 5, scope: !1453)
!1456 = !DILocation(line: 760, column: 17, scope: !1453)
!1457 = !DILocation(line: 766, column: 21, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !910, file: !83, line: 766, column: 7)
!1459 = !DILocation(line: 766, column: 54, scope: !1458)
!1460 = !DILocation(line: 766, column: 51, scope: !1458)
!1461 = !DILocation(line: 770, column: 42, scope: !910)
!1462 = !DILocation(line: 768, column: 10, scope: !910)
!1463 = !DILocation(line: 768, column: 3, scope: !910)
!1464 = !DILocation(line: 772, column: 1, scope: !910)
!1465 = distinct !DISubprogram(name: "gettext_quote", scope: !83, file: !83, line: 207, type: !1466, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!6, !6, !40}
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DILocalVariable(name: "msgid", arg: 1, scope: !1465, file: !83, line: 207, type: !6)
!1470 = !DILocalVariable(name: "s", arg: 2, scope: !1465, file: !83, line: 207, type: !40)
!1471 = !DILocalVariable(name: "translation", scope: !1465, file: !83, line: 209, type: !6)
!1472 = !DILocalVariable(name: "locale_code", scope: !1465, file: !83, line: 210, type: !6)
!1473 = !DILocation(line: 207, column: 28, scope: !1465)
!1474 = !DILocation(line: 207, column: 54, scope: !1465)
!1475 = !DILocation(line: 209, column: 29, scope: !1465)
!1476 = !DILocation(line: 209, column: 15, scope: !1465)
!1477 = !DILocation(line: 212, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1465, file: !83, line: 212, column: 7)
!1479 = !DILocation(line: 212, column: 7, scope: !1465)
!1480 = !DILocation(line: 233, column: 17, scope: !1465)
!1481 = !DILocation(line: 210, column: 15, scope: !1465)
!1482 = !DILocalVariable(name: "s1", arg: 1, scope: !1483, file: !1484, line: 160, type: !6)
!1483 = distinct !DISubprogram(name: "strcaseeq0", scope: !1484, file: !1484, line: 160, type: !1485, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1487)
!1484 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1487 = !{!1482, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1488 = !DILocalVariable(name: "s2", arg: 2, scope: !1483, file: !1484, line: 160, type: !6)
!1489 = !DILocalVariable(name: "s20", arg: 3, scope: !1483, file: !1484, line: 160, type: !8)
!1490 = !DILocalVariable(name: "s21", arg: 4, scope: !1483, file: !1484, line: 160, type: !8)
!1491 = !DILocalVariable(name: "s22", arg: 5, scope: !1483, file: !1484, line: 160, type: !8)
!1492 = !DILocalVariable(name: "s23", arg: 6, scope: !1483, file: !1484, line: 160, type: !8)
!1493 = !DILocalVariable(name: "s24", arg: 7, scope: !1483, file: !1484, line: 160, type: !8)
!1494 = !DILocalVariable(name: "s25", arg: 8, scope: !1483, file: !1484, line: 160, type: !8)
!1495 = !DILocalVariable(name: "s26", arg: 9, scope: !1483, file: !1484, line: 160, type: !8)
!1496 = !DILocalVariable(name: "s27", arg: 10, scope: !1483, file: !1484, line: 160, type: !8)
!1497 = !DILocalVariable(name: "s28", arg: 11, scope: !1483, file: !1484, line: 160, type: !8)
!1498 = !DILocation(line: 160, column: 25, scope: !1483, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 234, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1465, file: !83, line: 234, column: 7)
!1501 = !DILocation(line: 160, column: 41, scope: !1483, inlinedAt: !1499)
!1502 = !DILocation(line: 160, column: 50, scope: !1483, inlinedAt: !1499)
!1503 = !DILocation(line: 160, column: 60, scope: !1483, inlinedAt: !1499)
!1504 = !DILocation(line: 160, column: 70, scope: !1483, inlinedAt: !1499)
!1505 = !DILocation(line: 160, column: 80, scope: !1483, inlinedAt: !1499)
!1506 = !DILocation(line: 160, column: 90, scope: !1483, inlinedAt: !1499)
!1507 = !DILocation(line: 160, column: 100, scope: !1483, inlinedAt: !1499)
!1508 = !DILocation(line: 160, column: 110, scope: !1483, inlinedAt: !1499)
!1509 = !DILocation(line: 160, column: 120, scope: !1483, inlinedAt: !1499)
!1510 = !DILocation(line: 160, column: 130, scope: !1483, inlinedAt: !1499)
!1511 = !DILocation(line: 162, column: 7, scope: !1512, inlinedAt: !1499)
!1512 = distinct !DILexicalBlock(scope: !1483, file: !1484, line: 162, column: 7)
!1513 = !DILocalVariable(name: "s1", arg: 1, scope: !1514, file: !1484, line: 146, type: !6)
!1514 = distinct !DISubprogram(name: "strcaseeq1", scope: !1484, file: !1484, line: 146, type: !1515, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1517 = !{!1513, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1518 = !DILocalVariable(name: "s2", arg: 2, scope: !1514, file: !1484, line: 146, type: !6)
!1519 = !DILocalVariable(name: "s21", arg: 3, scope: !1514, file: !1484, line: 146, type: !8)
!1520 = !DILocalVariable(name: "s22", arg: 4, scope: !1514, file: !1484, line: 146, type: !8)
!1521 = !DILocalVariable(name: "s23", arg: 5, scope: !1514, file: !1484, line: 146, type: !8)
!1522 = !DILocalVariable(name: "s24", arg: 6, scope: !1514, file: !1484, line: 146, type: !8)
!1523 = !DILocalVariable(name: "s25", arg: 7, scope: !1514, file: !1484, line: 146, type: !8)
!1524 = !DILocalVariable(name: "s26", arg: 8, scope: !1514, file: !1484, line: 146, type: !8)
!1525 = !DILocalVariable(name: "s27", arg: 9, scope: !1514, file: !1484, line: 146, type: !8)
!1526 = !DILocalVariable(name: "s28", arg: 10, scope: !1514, file: !1484, line: 146, type: !8)
!1527 = !DILocation(line: 146, column: 25, scope: !1514, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 167, column: 16, scope: !1529, inlinedAt: !1499)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !1484, line: 164, column: 11)
!1530 = distinct !DILexicalBlock(scope: !1512, file: !1484, line: 163, column: 5)
!1531 = !DILocation(line: 146, column: 41, scope: !1514, inlinedAt: !1528)
!1532 = !DILocation(line: 146, column: 50, scope: !1514, inlinedAt: !1528)
!1533 = !DILocation(line: 146, column: 60, scope: !1514, inlinedAt: !1528)
!1534 = !DILocation(line: 146, column: 70, scope: !1514, inlinedAt: !1528)
!1535 = !DILocation(line: 146, column: 80, scope: !1514, inlinedAt: !1528)
!1536 = !DILocation(line: 146, column: 90, scope: !1514, inlinedAt: !1528)
!1537 = !DILocation(line: 146, column: 100, scope: !1514, inlinedAt: !1528)
!1538 = !DILocation(line: 146, column: 110, scope: !1514, inlinedAt: !1528)
!1539 = !DILocation(line: 146, column: 120, scope: !1514, inlinedAt: !1528)
!1540 = !DILocation(line: 148, column: 7, scope: !1541, inlinedAt: !1528)
!1541 = distinct !DILexicalBlock(scope: !1514, file: !1484, line: 148, column: 7)
!1542 = !DILocalVariable(name: "s1", arg: 1, scope: !1543, file: !1484, line: 132, type: !6)
!1543 = distinct !DISubprogram(name: "strcaseeq2", scope: !1484, file: !1484, line: 132, type: !1544, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1546 = !{!1542, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1547 = !DILocalVariable(name: "s2", arg: 2, scope: !1543, file: !1484, line: 132, type: !6)
!1548 = !DILocalVariable(name: "s22", arg: 3, scope: !1543, file: !1484, line: 132, type: !8)
!1549 = !DILocalVariable(name: "s23", arg: 4, scope: !1543, file: !1484, line: 132, type: !8)
!1550 = !DILocalVariable(name: "s24", arg: 5, scope: !1543, file: !1484, line: 132, type: !8)
!1551 = !DILocalVariable(name: "s25", arg: 6, scope: !1543, file: !1484, line: 132, type: !8)
!1552 = !DILocalVariable(name: "s26", arg: 7, scope: !1543, file: !1484, line: 132, type: !8)
!1553 = !DILocalVariable(name: "s27", arg: 8, scope: !1543, file: !1484, line: 132, type: !8)
!1554 = !DILocalVariable(name: "s28", arg: 9, scope: !1543, file: !1484, line: 132, type: !8)
!1555 = !DILocation(line: 132, column: 25, scope: !1543, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 153, column: 16, scope: !1557, inlinedAt: !1528)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1484, line: 150, column: 11)
!1558 = distinct !DILexicalBlock(scope: !1541, file: !1484, line: 149, column: 5)
!1559 = !DILocation(line: 132, column: 41, scope: !1543, inlinedAt: !1556)
!1560 = !DILocation(line: 132, column: 50, scope: !1543, inlinedAt: !1556)
!1561 = !DILocation(line: 132, column: 60, scope: !1543, inlinedAt: !1556)
!1562 = !DILocation(line: 132, column: 70, scope: !1543, inlinedAt: !1556)
!1563 = !DILocation(line: 132, column: 80, scope: !1543, inlinedAt: !1556)
!1564 = !DILocation(line: 132, column: 90, scope: !1543, inlinedAt: !1556)
!1565 = !DILocation(line: 132, column: 100, scope: !1543, inlinedAt: !1556)
!1566 = !DILocation(line: 132, column: 110, scope: !1543, inlinedAt: !1556)
!1567 = !DILocation(line: 134, column: 7, scope: !1568, inlinedAt: !1556)
!1568 = distinct !DILexicalBlock(scope: !1543, file: !1484, line: 134, column: 7)
!1569 = !DILocalVariable(name: "s1", arg: 1, scope: !1570, file: !1484, line: 118, type: !6)
!1570 = distinct !DISubprogram(name: "strcaseeq3", scope: !1484, file: !1484, line: 118, type: !1571, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1573 = !{!1569, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1574 = !DILocalVariable(name: "s2", arg: 2, scope: !1570, file: !1484, line: 118, type: !6)
!1575 = !DILocalVariable(name: "s23", arg: 3, scope: !1570, file: !1484, line: 118, type: !8)
!1576 = !DILocalVariable(name: "s24", arg: 4, scope: !1570, file: !1484, line: 118, type: !8)
!1577 = !DILocalVariable(name: "s25", arg: 5, scope: !1570, file: !1484, line: 118, type: !8)
!1578 = !DILocalVariable(name: "s26", arg: 6, scope: !1570, file: !1484, line: 118, type: !8)
!1579 = !DILocalVariable(name: "s27", arg: 7, scope: !1570, file: !1484, line: 118, type: !8)
!1580 = !DILocalVariable(name: "s28", arg: 8, scope: !1570, file: !1484, line: 118, type: !8)
!1581 = !DILocation(line: 118, column: 25, scope: !1570, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 139, column: 16, scope: !1583, inlinedAt: !1556)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1484, line: 136, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1568, file: !1484, line: 135, column: 5)
!1585 = !DILocation(line: 118, column: 41, scope: !1570, inlinedAt: !1582)
!1586 = !DILocation(line: 118, column: 50, scope: !1570, inlinedAt: !1582)
!1587 = !DILocation(line: 118, column: 60, scope: !1570, inlinedAt: !1582)
!1588 = !DILocation(line: 118, column: 70, scope: !1570, inlinedAt: !1582)
!1589 = !DILocation(line: 118, column: 80, scope: !1570, inlinedAt: !1582)
!1590 = !DILocation(line: 118, column: 90, scope: !1570, inlinedAt: !1582)
!1591 = !DILocation(line: 118, column: 100, scope: !1570, inlinedAt: !1582)
!1592 = !DILocation(line: 120, column: 7, scope: !1593, inlinedAt: !1582)
!1593 = distinct !DILexicalBlock(scope: !1570, file: !1484, line: 120, column: 7)
!1594 = !DILocation(line: 120, column: 7, scope: !1570, inlinedAt: !1582)
!1595 = !DILocalVariable(name: "s1", arg: 1, scope: !1596, file: !1484, line: 104, type: !6)
!1596 = distinct !DISubprogram(name: "strcaseeq4", scope: !1484, file: !1484, line: 104, type: !1597, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1599 = !{!1595, !1600, !1601, !1602, !1603, !1604, !1605}
!1600 = !DILocalVariable(name: "s2", arg: 2, scope: !1596, file: !1484, line: 104, type: !6)
!1601 = !DILocalVariable(name: "s24", arg: 3, scope: !1596, file: !1484, line: 104, type: !8)
!1602 = !DILocalVariable(name: "s25", arg: 4, scope: !1596, file: !1484, line: 104, type: !8)
!1603 = !DILocalVariable(name: "s26", arg: 5, scope: !1596, file: !1484, line: 104, type: !8)
!1604 = !DILocalVariable(name: "s27", arg: 6, scope: !1596, file: !1484, line: 104, type: !8)
!1605 = !DILocalVariable(name: "s28", arg: 7, scope: !1596, file: !1484, line: 104, type: !8)
!1606 = !DILocation(line: 104, column: 25, scope: !1596, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 125, column: 16, scope: !1608, inlinedAt: !1582)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !1484, line: 122, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1593, file: !1484, line: 121, column: 5)
!1610 = !DILocation(line: 104, column: 41, scope: !1596, inlinedAt: !1607)
!1611 = !DILocation(line: 104, column: 50, scope: !1596, inlinedAt: !1607)
!1612 = !DILocation(line: 104, column: 60, scope: !1596, inlinedAt: !1607)
!1613 = !DILocation(line: 104, column: 70, scope: !1596, inlinedAt: !1607)
!1614 = !DILocation(line: 104, column: 80, scope: !1596, inlinedAt: !1607)
!1615 = !DILocation(line: 104, column: 90, scope: !1596, inlinedAt: !1607)
!1616 = !DILocation(line: 106, column: 7, scope: !1617, inlinedAt: !1607)
!1617 = distinct !DILexicalBlock(scope: !1596, file: !1484, line: 106, column: 7)
!1618 = !DILocation(line: 106, column: 7, scope: !1596, inlinedAt: !1607)
!1619 = !DILocalVariable(name: "s1", arg: 1, scope: !1620, file: !1484, line: 90, type: !6)
!1620 = distinct !DISubprogram(name: "strcaseeq5", scope: !1484, file: !1484, line: 90, type: !1621, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!25, !6, !6, !8, !8, !8, !8}
!1623 = !{!1619, !1624, !1625, !1626, !1627, !1628}
!1624 = !DILocalVariable(name: "s2", arg: 2, scope: !1620, file: !1484, line: 90, type: !6)
!1625 = !DILocalVariable(name: "s25", arg: 3, scope: !1620, file: !1484, line: 90, type: !8)
!1626 = !DILocalVariable(name: "s26", arg: 4, scope: !1620, file: !1484, line: 90, type: !8)
!1627 = !DILocalVariable(name: "s27", arg: 5, scope: !1620, file: !1484, line: 90, type: !8)
!1628 = !DILocalVariable(name: "s28", arg: 6, scope: !1620, file: !1484, line: 90, type: !8)
!1629 = !DILocation(line: 90, column: 25, scope: !1620, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 111, column: 16, scope: !1631, inlinedAt: !1607)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !1484, line: 108, column: 11)
!1632 = distinct !DILexicalBlock(scope: !1617, file: !1484, line: 107, column: 5)
!1633 = !DILocation(line: 90, column: 41, scope: !1620, inlinedAt: !1630)
!1634 = !DILocation(line: 90, column: 50, scope: !1620, inlinedAt: !1630)
!1635 = !DILocation(line: 90, column: 60, scope: !1620, inlinedAt: !1630)
!1636 = !DILocation(line: 90, column: 70, scope: !1620, inlinedAt: !1630)
!1637 = !DILocation(line: 90, column: 80, scope: !1620, inlinedAt: !1630)
!1638 = !DILocation(line: 92, column: 7, scope: !1639, inlinedAt: !1630)
!1639 = distinct !DILexicalBlock(scope: !1620, file: !1484, line: 92, column: 7)
!1640 = !DILocation(line: 92, column: 7, scope: !1620, inlinedAt: !1630)
!1641 = !DILocation(line: 235, column: 12, scope: !1500)
!1642 = !DILocation(line: 235, column: 21, scope: !1500)
!1643 = !DILocation(line: 235, column: 5, scope: !1500)
!1644 = !DILocation(line: 146, column: 25, scope: !1514, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 167, column: 16, scope: !1529, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 236, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1465, file: !83, line: 236, column: 7)
!1648 = !DILocation(line: 146, column: 41, scope: !1514, inlinedAt: !1645)
!1649 = !DILocation(line: 146, column: 50, scope: !1514, inlinedAt: !1645)
!1650 = !DILocation(line: 146, column: 60, scope: !1514, inlinedAt: !1645)
!1651 = !DILocation(line: 146, column: 70, scope: !1514, inlinedAt: !1645)
!1652 = !DILocation(line: 146, column: 80, scope: !1514, inlinedAt: !1645)
!1653 = !DILocation(line: 146, column: 90, scope: !1514, inlinedAt: !1645)
!1654 = !DILocation(line: 146, column: 100, scope: !1514, inlinedAt: !1645)
!1655 = !DILocation(line: 146, column: 110, scope: !1514, inlinedAt: !1645)
!1656 = !DILocation(line: 146, column: 120, scope: !1514, inlinedAt: !1645)
!1657 = !DILocation(line: 148, column: 7, scope: !1541, inlinedAt: !1645)
!1658 = !DILocation(line: 132, column: 25, scope: !1543, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 153, column: 16, scope: !1557, inlinedAt: !1645)
!1660 = !DILocation(line: 132, column: 41, scope: !1543, inlinedAt: !1659)
!1661 = !DILocation(line: 132, column: 50, scope: !1543, inlinedAt: !1659)
!1662 = !DILocation(line: 132, column: 60, scope: !1543, inlinedAt: !1659)
!1663 = !DILocation(line: 132, column: 70, scope: !1543, inlinedAt: !1659)
!1664 = !DILocation(line: 132, column: 80, scope: !1543, inlinedAt: !1659)
!1665 = !DILocation(line: 132, column: 90, scope: !1543, inlinedAt: !1659)
!1666 = !DILocation(line: 132, column: 100, scope: !1543, inlinedAt: !1659)
!1667 = !DILocation(line: 132, column: 110, scope: !1543, inlinedAt: !1659)
!1668 = !DILocation(line: 134, column: 7, scope: !1568, inlinedAt: !1659)
!1669 = !DILocation(line: 134, column: 7, scope: !1543, inlinedAt: !1659)
!1670 = !DILocation(line: 118, column: 25, scope: !1570, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 139, column: 16, scope: !1583, inlinedAt: !1659)
!1672 = !DILocation(line: 118, column: 41, scope: !1570, inlinedAt: !1671)
!1673 = !DILocation(line: 118, column: 50, scope: !1570, inlinedAt: !1671)
!1674 = !DILocation(line: 118, column: 60, scope: !1570, inlinedAt: !1671)
!1675 = !DILocation(line: 118, column: 70, scope: !1570, inlinedAt: !1671)
!1676 = !DILocation(line: 118, column: 80, scope: !1570, inlinedAt: !1671)
!1677 = !DILocation(line: 118, column: 90, scope: !1570, inlinedAt: !1671)
!1678 = !DILocation(line: 118, column: 100, scope: !1570, inlinedAt: !1671)
!1679 = !DILocation(line: 120, column: 7, scope: !1593, inlinedAt: !1671)
!1680 = !DILocation(line: 120, column: 7, scope: !1570, inlinedAt: !1671)
!1681 = !DILocation(line: 104, column: 25, scope: !1596, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 125, column: 16, scope: !1608, inlinedAt: !1671)
!1683 = !DILocation(line: 104, column: 41, scope: !1596, inlinedAt: !1682)
!1684 = !DILocation(line: 104, column: 50, scope: !1596, inlinedAt: !1682)
!1685 = !DILocation(line: 104, column: 60, scope: !1596, inlinedAt: !1682)
!1686 = !DILocation(line: 104, column: 70, scope: !1596, inlinedAt: !1682)
!1687 = !DILocation(line: 104, column: 80, scope: !1596, inlinedAt: !1682)
!1688 = !DILocation(line: 104, column: 90, scope: !1596, inlinedAt: !1682)
!1689 = !DILocation(line: 106, column: 7, scope: !1617, inlinedAt: !1682)
!1690 = !DILocation(line: 106, column: 7, scope: !1596, inlinedAt: !1682)
!1691 = !DILocation(line: 90, column: 25, scope: !1620, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 111, column: 16, scope: !1631, inlinedAt: !1682)
!1693 = !DILocation(line: 90, column: 41, scope: !1620, inlinedAt: !1692)
!1694 = !DILocation(line: 90, column: 50, scope: !1620, inlinedAt: !1692)
!1695 = !DILocation(line: 90, column: 60, scope: !1620, inlinedAt: !1692)
!1696 = !DILocation(line: 90, column: 70, scope: !1620, inlinedAt: !1692)
!1697 = !DILocation(line: 90, column: 80, scope: !1620, inlinedAt: !1692)
!1698 = !DILocation(line: 92, column: 7, scope: !1639, inlinedAt: !1692)
!1699 = !DILocation(line: 92, column: 7, scope: !1620, inlinedAt: !1692)
!1700 = !DILocalVariable(name: "s1", arg: 1, scope: !1701, file: !1484, line: 76, type: !6)
!1701 = distinct !DISubprogram(name: "strcaseeq6", scope: !1484, file: !1484, line: 76, type: !1702, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!25, !6, !6, !8, !8, !8}
!1704 = !{!1700, !1705, !1706, !1707, !1708}
!1705 = !DILocalVariable(name: "s2", arg: 2, scope: !1701, file: !1484, line: 76, type: !6)
!1706 = !DILocalVariable(name: "s26", arg: 3, scope: !1701, file: !1484, line: 76, type: !8)
!1707 = !DILocalVariable(name: "s27", arg: 4, scope: !1701, file: !1484, line: 76, type: !8)
!1708 = !DILocalVariable(name: "s28", arg: 5, scope: !1701, file: !1484, line: 76, type: !8)
!1709 = !DILocation(line: 76, column: 25, scope: !1701, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 97, column: 16, scope: !1711, inlinedAt: !1692)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !1484, line: 94, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1639, file: !1484, line: 93, column: 5)
!1713 = !DILocation(line: 76, column: 41, scope: !1701, inlinedAt: !1710)
!1714 = !DILocation(line: 76, column: 50, scope: !1701, inlinedAt: !1710)
!1715 = !DILocation(line: 76, column: 60, scope: !1701, inlinedAt: !1710)
!1716 = !DILocation(line: 76, column: 70, scope: !1701, inlinedAt: !1710)
!1717 = !DILocation(line: 78, column: 7, scope: !1718, inlinedAt: !1710)
!1718 = distinct !DILexicalBlock(scope: !1701, file: !1484, line: 78, column: 7)
!1719 = !DILocation(line: 78, column: 7, scope: !1701, inlinedAt: !1710)
!1720 = !DILocalVariable(name: "s1", arg: 1, scope: !1721, file: !1484, line: 62, type: !6)
!1721 = distinct !DISubprogram(name: "strcaseeq7", scope: !1484, file: !1484, line: 62, type: !1722, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!25, !6, !6, !8, !8}
!1724 = !{!1720, !1725, !1726, !1727}
!1725 = !DILocalVariable(name: "s2", arg: 2, scope: !1721, file: !1484, line: 62, type: !6)
!1726 = !DILocalVariable(name: "s27", arg: 3, scope: !1721, file: !1484, line: 62, type: !8)
!1727 = !DILocalVariable(name: "s28", arg: 4, scope: !1721, file: !1484, line: 62, type: !8)
!1728 = !DILocation(line: 62, column: 25, scope: !1721, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 83, column: 16, scope: !1730, inlinedAt: !1710)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !1484, line: 80, column: 11)
!1731 = distinct !DILexicalBlock(scope: !1718, file: !1484, line: 79, column: 5)
!1732 = !DILocation(line: 62, column: 41, scope: !1721, inlinedAt: !1729)
!1733 = !DILocation(line: 62, column: 50, scope: !1721, inlinedAt: !1729)
!1734 = !DILocation(line: 62, column: 60, scope: !1721, inlinedAt: !1729)
!1735 = !DILocation(line: 64, column: 7, scope: !1736, inlinedAt: !1729)
!1736 = distinct !DILexicalBlock(scope: !1721, file: !1484, line: 64, column: 7)
!1737 = !DILocation(line: 236, column: 7, scope: !1465)
!1738 = !DILocation(line: 237, column: 12, scope: !1647)
!1739 = !DILocation(line: 237, column: 21, scope: !1647)
!1740 = !DILocation(line: 237, column: 5, scope: !1647)
!1741 = !DILocation(line: 239, column: 13, scope: !1465)
!1742 = !DILocation(line: 239, column: 11, scope: !1465)
!1743 = !DILocation(line: 239, column: 3, scope: !1465)
!1744 = !DILocation(line: 0, scope: !1465)
!1745 = !DILocation(line: 240, column: 1, scope: !1465)
!1746 = distinct !DISubprogram(name: "quotearg_alloc", scope: !83, file: !83, line: 799, type: !1747, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!32, !6, !77, !782}
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "arg", arg: 1, scope: !1746, file: !83, line: 799, type: !6)
!1751 = !DILocalVariable(name: "argsize", arg: 2, scope: !1746, file: !83, line: 799, type: !77)
!1752 = !DILocalVariable(name: "o", arg: 3, scope: !1746, file: !83, line: 800, type: !782)
!1753 = !DILocation(line: 799, column: 29, scope: !1746)
!1754 = !DILocation(line: 799, column: 41, scope: !1746)
!1755 = !DILocation(line: 800, column: 47, scope: !1746)
!1756 = !DILocalVariable(name: "arg", arg: 1, scope: !1757, file: !83, line: 812, type: !6)
!1757 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !83, file: !83, line: 812, type: !1758, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!32, !6, !77, !150, !782}
!1760 = !{!1756, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1761 = !DILocalVariable(name: "argsize", arg: 2, scope: !1757, file: !83, line: 812, type: !77)
!1762 = !DILocalVariable(name: "size", arg: 3, scope: !1757, file: !83, line: 812, type: !150)
!1763 = !DILocalVariable(name: "o", arg: 4, scope: !1757, file: !83, line: 813, type: !782)
!1764 = !DILocalVariable(name: "p", scope: !1757, file: !83, line: 815, type: !782)
!1765 = !DILocalVariable(name: "e", scope: !1757, file: !83, line: 816, type: !25)
!1766 = !DILocalVariable(name: "flags", scope: !1757, file: !83, line: 818, type: !25)
!1767 = !DILocalVariable(name: "bufsize", scope: !1757, file: !83, line: 819, type: !77)
!1768 = !DILocalVariable(name: "buf", scope: !1757, file: !83, line: 823, type: !32)
!1769 = !DILocation(line: 812, column: 33, scope: !1757, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 802, column: 10, scope: !1746)
!1771 = !DILocation(line: 812, column: 45, scope: !1757, inlinedAt: !1770)
!1772 = !DILocation(line: 812, column: 62, scope: !1757, inlinedAt: !1770)
!1773 = !DILocation(line: 813, column: 51, scope: !1757, inlinedAt: !1770)
!1774 = !DILocation(line: 815, column: 37, scope: !1757, inlinedAt: !1770)
!1775 = !DILocation(line: 815, column: 33, scope: !1757, inlinedAt: !1770)
!1776 = !DILocation(line: 816, column: 11, scope: !1757, inlinedAt: !1770)
!1777 = !DILocation(line: 816, column: 7, scope: !1757, inlinedAt: !1770)
!1778 = !DILocation(line: 818, column: 18, scope: !1757, inlinedAt: !1770)
!1779 = !DILocation(line: 818, column: 24, scope: !1757, inlinedAt: !1770)
!1780 = !DILocation(line: 818, column: 7, scope: !1757, inlinedAt: !1770)
!1781 = !DILocation(line: 819, column: 69, scope: !1757, inlinedAt: !1770)
!1782 = !DILocation(line: 820, column: 53, scope: !1757, inlinedAt: !1770)
!1783 = !DILocation(line: 821, column: 49, scope: !1757, inlinedAt: !1770)
!1784 = !DILocation(line: 822, column: 49, scope: !1757, inlinedAt: !1770)
!1785 = !DILocation(line: 819, column: 20, scope: !1757, inlinedAt: !1770)
!1786 = !DILocation(line: 822, column: 62, scope: !1757, inlinedAt: !1770)
!1787 = !DILocation(line: 819, column: 10, scope: !1757, inlinedAt: !1770)
!1788 = !DILocalVariable(name: "n", arg: 1, scope: !1789, file: !146, line: 216, type: !77)
!1789 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !1790, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!32, !77}
!1792 = !{!1788}
!1793 = !DILocation(line: 216, column: 20, scope: !1789, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 823, column: 15, scope: !1757, inlinedAt: !1770)
!1795 = !DILocation(line: 218, column: 10, scope: !1789, inlinedAt: !1794)
!1796 = !DILocation(line: 823, column: 9, scope: !1757, inlinedAt: !1770)
!1797 = !DILocation(line: 824, column: 60, scope: !1757, inlinedAt: !1770)
!1798 = !DILocation(line: 826, column: 32, scope: !1757, inlinedAt: !1770)
!1799 = !DILocation(line: 826, column: 47, scope: !1757, inlinedAt: !1770)
!1800 = !DILocation(line: 824, column: 3, scope: !1757, inlinedAt: !1770)
!1801 = !DILocation(line: 827, column: 9, scope: !1757, inlinedAt: !1770)
!1802 = !DILocation(line: 802, column: 3, scope: !1746)
!1803 = !DILocation(line: 812, column: 33, scope: !1757)
!1804 = !DILocation(line: 812, column: 45, scope: !1757)
!1805 = !DILocation(line: 812, column: 62, scope: !1757)
!1806 = !DILocation(line: 813, column: 51, scope: !1757)
!1807 = !DILocation(line: 815, column: 37, scope: !1757)
!1808 = !DILocation(line: 815, column: 33, scope: !1757)
!1809 = !DILocation(line: 816, column: 11, scope: !1757)
!1810 = !DILocation(line: 816, column: 7, scope: !1757)
!1811 = !DILocation(line: 818, column: 18, scope: !1757)
!1812 = !DILocation(line: 818, column: 27, scope: !1757)
!1813 = !DILocation(line: 818, column: 24, scope: !1757)
!1814 = !DILocation(line: 818, column: 7, scope: !1757)
!1815 = !DILocation(line: 819, column: 69, scope: !1757)
!1816 = !DILocation(line: 820, column: 53, scope: !1757)
!1817 = !DILocation(line: 821, column: 49, scope: !1757)
!1818 = !DILocation(line: 822, column: 49, scope: !1757)
!1819 = !DILocation(line: 819, column: 20, scope: !1757)
!1820 = !DILocation(line: 822, column: 62, scope: !1757)
!1821 = !DILocation(line: 819, column: 10, scope: !1757)
!1822 = !DILocation(line: 216, column: 20, scope: !1789, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 823, column: 15, scope: !1757)
!1824 = !DILocation(line: 218, column: 10, scope: !1789, inlinedAt: !1823)
!1825 = !DILocation(line: 823, column: 9, scope: !1757)
!1826 = !DILocation(line: 824, column: 60, scope: !1757)
!1827 = !DILocation(line: 826, column: 32, scope: !1757)
!1828 = !DILocation(line: 826, column: 47, scope: !1757)
!1829 = !DILocation(line: 824, column: 3, scope: !1757)
!1830 = !DILocation(line: 827, column: 9, scope: !1757)
!1831 = !DILocation(line: 828, column: 7, scope: !1757)
!1832 = !DILocation(line: 829, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1757, file: !83, line: 828, column: 7)
!1834 = !{!1835, !1835, i64 0}
!1835 = !{!"long", !580, i64 0}
!1836 = !DILocation(line: 829, column: 5, scope: !1833)
!1837 = !DILocation(line: 830, column: 3, scope: !1757)
!1838 = distinct !DISubprogram(name: "quotearg_free", scope: !83, file: !83, line: 848, type: !687, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1839)
!1839 = !{!1840, !1841}
!1840 = !DILocalVariable(name: "sv", scope: !1838, file: !83, line: 850, type: !109)
!1841 = !DILocalVariable(name: "i", scope: !1838, file: !83, line: 851, type: !25)
!1842 = !DILocation(line: 850, column: 24, scope: !1838)
!1843 = !DILocation(line: 850, column: 19, scope: !1838)
!1844 = !DILocation(line: 851, column: 7, scope: !1838)
!1845 = !DILocation(line: 852, column: 19, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !83, line: 852, column: 3)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !83, line: 852, column: 3)
!1848 = !DILocation(line: 852, column: 17, scope: !1846)
!1849 = !DILocation(line: 852, column: 3, scope: !1847)
!1850 = !DILocation(line: 853, column: 17, scope: !1846)
!1851 = !{!1852, !579, i64 8}
!1852 = !{!"slotvec", !1835, i64 0, !579, i64 8}
!1853 = !DILocation(line: 853, column: 5, scope: !1846)
!1854 = !DILocation(line: 852, column: 28, scope: !1846)
!1855 = distinct !{!1855, !1849, !1856}
!1856 = !DILocation(line: 853, column: 20, scope: !1847)
!1857 = !DILocation(line: 854, column: 13, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1838, file: !83, line: 854, column: 7)
!1859 = !DILocation(line: 854, column: 17, scope: !1858)
!1860 = !DILocation(line: 854, column: 7, scope: !1838)
!1861 = !DILocation(line: 856, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !83, line: 855, column: 5)
!1863 = !DILocation(line: 857, column: 21, scope: !1862)
!1864 = !{!1852, !1835, i64 0}
!1865 = !DILocation(line: 858, column: 20, scope: !1862)
!1866 = !DILocation(line: 859, column: 5, scope: !1862)
!1867 = !DILocation(line: 860, column: 10, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1838, file: !83, line: 860, column: 7)
!1869 = !DILocation(line: 860, column: 7, scope: !1838)
!1870 = !DILocation(line: 862, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !83, line: 861, column: 5)
!1872 = !DILocation(line: 862, column: 7, scope: !1871)
!1873 = !DILocation(line: 863, column: 15, scope: !1871)
!1874 = !DILocation(line: 864, column: 5, scope: !1871)
!1875 = !DILocation(line: 865, column: 10, scope: !1838)
!1876 = !DILocation(line: 866, column: 1, scope: !1838)
!1877 = distinct !DISubprogram(name: "quotearg_n", scope: !83, file: !83, line: 931, type: !1878, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!32, !25, !6}
!1880 = !{!1881, !1882}
!1881 = !DILocalVariable(name: "n", arg: 1, scope: !1877, file: !83, line: 931, type: !25)
!1882 = !DILocalVariable(name: "arg", arg: 2, scope: !1877, file: !83, line: 931, type: !6)
!1883 = !DILocation(line: 931, column: 17, scope: !1877)
!1884 = !DILocation(line: 931, column: 32, scope: !1877)
!1885 = !DILocation(line: 933, column: 10, scope: !1877)
!1886 = !DILocation(line: 933, column: 3, scope: !1877)
!1887 = distinct !DISubprogram(name: "quotearg_n_options", scope: !83, file: !83, line: 877, type: !1888, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!32, !25, !6, !77, !782}
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1900, !1901, !1903, !1904, !1905}
!1891 = !DILocalVariable(name: "n", arg: 1, scope: !1887, file: !83, line: 877, type: !25)
!1892 = !DILocalVariable(name: "arg", arg: 2, scope: !1887, file: !83, line: 877, type: !6)
!1893 = !DILocalVariable(name: "argsize", arg: 3, scope: !1887, file: !83, line: 877, type: !77)
!1894 = !DILocalVariable(name: "options", arg: 4, scope: !1887, file: !83, line: 878, type: !782)
!1895 = !DILocalVariable(name: "e", scope: !1887, file: !83, line: 880, type: !25)
!1896 = !DILocalVariable(name: "sv", scope: !1887, file: !83, line: 882, type: !109)
!1897 = !DILocalVariable(name: "preallocated", scope: !1898, file: !83, line: 889, type: !17)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !83, line: 888, column: 5)
!1899 = distinct !DILexicalBlock(scope: !1887, file: !83, line: 887, column: 7)
!1900 = !DILocalVariable(name: "nmax", scope: !1898, file: !83, line: 890, type: !25)
!1901 = !DILocalVariable(name: "size", scope: !1902, file: !83, line: 903, type: !77)
!1902 = distinct !DILexicalBlock(scope: !1887, file: !83, line: 902, column: 3)
!1903 = !DILocalVariable(name: "val", scope: !1902, file: !83, line: 904, type: !32)
!1904 = !DILocalVariable(name: "flags", scope: !1902, file: !83, line: 906, type: !25)
!1905 = !DILocalVariable(name: "qsize", scope: !1902, file: !83, line: 907, type: !77)
!1906 = !DILocation(line: 877, column: 25, scope: !1887)
!1907 = !DILocation(line: 877, column: 40, scope: !1887)
!1908 = !DILocation(line: 877, column: 52, scope: !1887)
!1909 = !DILocation(line: 878, column: 51, scope: !1887)
!1910 = !DILocation(line: 880, column: 11, scope: !1887)
!1911 = !DILocation(line: 880, column: 7, scope: !1887)
!1912 = !DILocation(line: 882, column: 24, scope: !1887)
!1913 = !DILocation(line: 882, column: 19, scope: !1887)
!1914 = !DILocation(line: 884, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1887, file: !83, line: 884, column: 7)
!1916 = !DILocation(line: 884, column: 7, scope: !1887)
!1917 = !DILocation(line: 885, column: 5, scope: !1915)
!1918 = !DILocation(line: 887, column: 7, scope: !1899)
!1919 = !DILocation(line: 887, column: 14, scope: !1899)
!1920 = !DILocation(line: 887, column: 7, scope: !1887)
!1921 = !DILocation(line: 889, column: 31, scope: !1898)
!1922 = !DILocation(line: 890, column: 11, scope: !1898)
!1923 = !DILocation(line: 892, column: 16, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1898, file: !83, line: 892, column: 11)
!1925 = !DILocation(line: 892, column: 11, scope: !1898)
!1926 = !DILocation(line: 893, column: 9, scope: !1924)
!1927 = !DILocation(line: 895, column: 32, scope: !1898)
!1928 = !DILocation(line: 895, column: 61, scope: !1898)
!1929 = !DILocation(line: 895, column: 58, scope: !1898)
!1930 = !DILocation(line: 895, column: 66, scope: !1898)
!1931 = !DILocation(line: 895, column: 22, scope: !1898)
!1932 = !DILocation(line: 895, column: 15, scope: !1898)
!1933 = !DILocation(line: 896, column: 11, scope: !1898)
!1934 = !DILocation(line: 897, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1898, file: !83, line: 896, column: 11)
!1936 = !{i64 0, i64 8, !1834, i64 8, i64 8, !578}
!1937 = !DILocation(line: 897, column: 9, scope: !1935)
!1938 = !DILocation(line: 898, column: 20, scope: !1898)
!1939 = !DILocation(line: 898, column: 18, scope: !1898)
!1940 = !DILocation(line: 898, column: 7, scope: !1898)
!1941 = !DILocation(line: 898, column: 38, scope: !1898)
!1942 = !DILocation(line: 898, column: 31, scope: !1898)
!1943 = !DILocation(line: 898, column: 48, scope: !1898)
!1944 = !DILocation(line: 899, column: 14, scope: !1898)
!1945 = !DILocation(line: 900, column: 5, scope: !1898)
!1946 = !DILocation(line: 0, scope: !1887)
!1947 = !DILocation(line: 903, column: 19, scope: !1902)
!1948 = !DILocation(line: 903, column: 25, scope: !1902)
!1949 = !DILocation(line: 903, column: 12, scope: !1902)
!1950 = !DILocation(line: 904, column: 23, scope: !1902)
!1951 = !DILocation(line: 904, column: 11, scope: !1902)
!1952 = !DILocation(line: 906, column: 26, scope: !1902)
!1953 = !DILocation(line: 906, column: 32, scope: !1902)
!1954 = !DILocation(line: 906, column: 9, scope: !1902)
!1955 = !DILocation(line: 908, column: 55, scope: !1902)
!1956 = !DILocation(line: 909, column: 46, scope: !1902)
!1957 = !DILocation(line: 910, column: 55, scope: !1902)
!1958 = !DILocation(line: 911, column: 55, scope: !1902)
!1959 = !DILocation(line: 907, column: 20, scope: !1902)
!1960 = !DILocation(line: 907, column: 12, scope: !1902)
!1961 = !DILocation(line: 913, column: 14, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1902, file: !83, line: 913, column: 9)
!1963 = !DILocation(line: 913, column: 9, scope: !1902)
!1964 = !DILocation(line: 915, column: 35, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !83, line: 914, column: 7)
!1966 = !DILocation(line: 915, column: 20, scope: !1965)
!1967 = !DILocation(line: 916, column: 17, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !83, line: 916, column: 13)
!1969 = !DILocation(line: 916, column: 13, scope: !1965)
!1970 = !DILocation(line: 917, column: 11, scope: !1968)
!1971 = !DILocation(line: 216, column: 20, scope: !1789, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 918, column: 27, scope: !1965)
!1973 = !DILocation(line: 218, column: 10, scope: !1789, inlinedAt: !1972)
!1974 = !DILocation(line: 918, column: 19, scope: !1965)
!1975 = !DILocation(line: 919, column: 69, scope: !1965)
!1976 = !DILocation(line: 921, column: 44, scope: !1965)
!1977 = !DILocation(line: 922, column: 44, scope: !1965)
!1978 = !DILocation(line: 919, column: 9, scope: !1965)
!1979 = !DILocation(line: 923, column: 7, scope: !1965)
!1980 = !DILocation(line: 0, scope: !1902)
!1981 = !DILocation(line: 925, column: 11, scope: !1902)
!1982 = !DILocation(line: 926, column: 5, scope: !1902)
!1983 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !83, file: !83, line: 937, type: !1984, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!32, !25, !6, !77}
!1986 = !{!1987, !1988, !1989}
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1983, file: !83, line: 937, type: !25)
!1988 = !DILocalVariable(name: "arg", arg: 2, scope: !1983, file: !83, line: 937, type: !6)
!1989 = !DILocalVariable(name: "argsize", arg: 3, scope: !1983, file: !83, line: 937, type: !77)
!1990 = !DILocation(line: 937, column: 21, scope: !1983)
!1991 = !DILocation(line: 937, column: 36, scope: !1983)
!1992 = !DILocation(line: 937, column: 48, scope: !1983)
!1993 = !DILocation(line: 939, column: 10, scope: !1983)
!1994 = !DILocation(line: 939, column: 3, scope: !1983)
!1995 = distinct !DISubprogram(name: "quotearg", scope: !83, file: !83, line: 943, type: !1996, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!32, !6}
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "arg", arg: 1, scope: !1995, file: !83, line: 943, type: !6)
!2000 = !DILocation(line: 943, column: 23, scope: !1995)
!2001 = !DILocation(line: 931, column: 17, scope: !1877, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 945, column: 10, scope: !1995)
!2003 = !DILocation(line: 931, column: 32, scope: !1877, inlinedAt: !2002)
!2004 = !DILocation(line: 933, column: 10, scope: !1877, inlinedAt: !2002)
!2005 = !DILocation(line: 945, column: 3, scope: !1995)
!2006 = distinct !DISubprogram(name: "quotearg_mem", scope: !83, file: !83, line: 949, type: !2007, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!32, !6, !77}
!2009 = !{!2010, !2011}
!2010 = !DILocalVariable(name: "arg", arg: 1, scope: !2006, file: !83, line: 949, type: !6)
!2011 = !DILocalVariable(name: "argsize", arg: 2, scope: !2006, file: !83, line: 949, type: !77)
!2012 = !DILocation(line: 949, column: 27, scope: !2006)
!2013 = !DILocation(line: 949, column: 39, scope: !2006)
!2014 = !DILocation(line: 937, column: 21, scope: !1983, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 951, column: 10, scope: !2006)
!2016 = !DILocation(line: 937, column: 36, scope: !1983, inlinedAt: !2015)
!2017 = !DILocation(line: 937, column: 48, scope: !1983, inlinedAt: !2015)
!2018 = !DILocation(line: 939, column: 10, scope: !1983, inlinedAt: !2015)
!2019 = !DILocation(line: 951, column: 3, scope: !2006)
!2020 = distinct !DISubprogram(name: "quotearg_n_style", scope: !83, file: !83, line: 955, type: !2021, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!32, !25, !40, !6}
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DILocalVariable(name: "n", arg: 1, scope: !2020, file: !83, line: 955, type: !25)
!2025 = !DILocalVariable(name: "s", arg: 2, scope: !2020, file: !83, line: 955, type: !40)
!2026 = !DILocalVariable(name: "arg", arg: 3, scope: !2020, file: !83, line: 955, type: !6)
!2027 = !DILocalVariable(name: "o", scope: !2020, file: !83, line: 957, type: !783)
!2028 = !DILocation(line: 955, column: 23, scope: !2020)
!2029 = !DILocation(line: 955, column: 45, scope: !2020)
!2030 = !DILocation(line: 955, column: 60, scope: !2020)
!2031 = !DILocation(line: 957, column: 3, scope: !2020)
!2032 = !DILocation(line: 957, column: 32, scope: !2020)
!2033 = !DILocalVariable(name: "style", arg: 1, scope: !2034, file: !83, line: 193, type: !40)
!2034 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !83, file: !83, line: 193, type: !2035, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!90, !40}
!2037 = !{!2033, !2038}
!2038 = !DILocalVariable(name: "o", scope: !2034, file: !83, line: 195, type: !90)
!2039 = !DILocation(line: 193, column: 48, scope: !2034, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 957, column: 36, scope: !2020)
!2041 = !DILocation(line: 195, column: 26, scope: !2034, inlinedAt: !2040)
!2042 = !{!2043}
!2043 = distinct !{!2043, !2044, !"quoting_options_from_style: argument 0"}
!2044 = distinct !{!2044, !"quoting_options_from_style"}
!2045 = !DILocation(line: 196, column: 13, scope: !2046, inlinedAt: !2040)
!2046 = distinct !DILexicalBlock(scope: !2034, file: !83, line: 196, column: 7)
!2047 = !DILocation(line: 196, column: 7, scope: !2034, inlinedAt: !2040)
!2048 = !DILocation(line: 197, column: 5, scope: !2046, inlinedAt: !2040)
!2049 = !DILocation(line: 198, column: 5, scope: !2034, inlinedAt: !2040)
!2050 = !DILocation(line: 198, column: 11, scope: !2034, inlinedAt: !2040)
!2051 = !DILocation(line: 958, column: 10, scope: !2020)
!2052 = !DILocation(line: 959, column: 1, scope: !2020)
!2053 = !DILocation(line: 958, column: 3, scope: !2020)
!2054 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !83, file: !83, line: 962, type: !2055, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!32, !25, !40, !6, !77}
!2057 = !{!2058, !2059, !2060, !2061, !2062}
!2058 = !DILocalVariable(name: "n", arg: 1, scope: !2054, file: !83, line: 962, type: !25)
!2059 = !DILocalVariable(name: "s", arg: 2, scope: !2054, file: !83, line: 962, type: !40)
!2060 = !DILocalVariable(name: "arg", arg: 3, scope: !2054, file: !83, line: 963, type: !6)
!2061 = !DILocalVariable(name: "argsize", arg: 4, scope: !2054, file: !83, line: 963, type: !77)
!2062 = !DILocalVariable(name: "o", scope: !2054, file: !83, line: 965, type: !783)
!2063 = !DILocation(line: 962, column: 27, scope: !2054)
!2064 = !DILocation(line: 962, column: 49, scope: !2054)
!2065 = !DILocation(line: 963, column: 35, scope: !2054)
!2066 = !DILocation(line: 963, column: 47, scope: !2054)
!2067 = !DILocation(line: 965, column: 3, scope: !2054)
!2068 = !DILocation(line: 965, column: 32, scope: !2054)
!2069 = !DILocation(line: 193, column: 48, scope: !2034, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 965, column: 36, scope: !2054)
!2071 = !DILocation(line: 195, column: 26, scope: !2034, inlinedAt: !2070)
!2072 = !{!2073}
!2073 = distinct !{!2073, !2074, !"quoting_options_from_style: argument 0"}
!2074 = distinct !{!2074, !"quoting_options_from_style"}
!2075 = !DILocation(line: 196, column: 13, scope: !2046, inlinedAt: !2070)
!2076 = !DILocation(line: 196, column: 7, scope: !2034, inlinedAt: !2070)
!2077 = !DILocation(line: 197, column: 5, scope: !2046, inlinedAt: !2070)
!2078 = !DILocation(line: 198, column: 5, scope: !2034, inlinedAt: !2070)
!2079 = !DILocation(line: 198, column: 11, scope: !2034, inlinedAt: !2070)
!2080 = !DILocation(line: 966, column: 10, scope: !2054)
!2081 = !DILocation(line: 967, column: 1, scope: !2054)
!2082 = !DILocation(line: 966, column: 3, scope: !2054)
!2083 = distinct !DISubprogram(name: "quotearg_style", scope: !83, file: !83, line: 970, type: !2084, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!32, !40, !6}
!2086 = !{!2087, !2088}
!2087 = !DILocalVariable(name: "s", arg: 1, scope: !2083, file: !83, line: 970, type: !40)
!2088 = !DILocalVariable(name: "arg", arg: 2, scope: !2083, file: !83, line: 970, type: !6)
!2089 = !DILocation(line: 970, column: 36, scope: !2083)
!2090 = !DILocation(line: 970, column: 51, scope: !2083)
!2091 = !DILocation(line: 955, column: 23, scope: !2020, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 972, column: 10, scope: !2083)
!2093 = !DILocation(line: 955, column: 45, scope: !2020, inlinedAt: !2092)
!2094 = !DILocation(line: 955, column: 60, scope: !2020, inlinedAt: !2092)
!2095 = !DILocation(line: 957, column: 3, scope: !2020, inlinedAt: !2092)
!2096 = !DILocation(line: 957, column: 32, scope: !2020, inlinedAt: !2092)
!2097 = !DILocation(line: 193, column: 48, scope: !2034, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 957, column: 36, scope: !2020, inlinedAt: !2092)
!2099 = !DILocation(line: 195, column: 26, scope: !2034, inlinedAt: !2098)
!2100 = !{!2101}
!2101 = distinct !{!2101, !2102, !"quoting_options_from_style: argument 0"}
!2102 = distinct !{!2102, !"quoting_options_from_style"}
!2103 = !DILocation(line: 196, column: 13, scope: !2046, inlinedAt: !2098)
!2104 = !DILocation(line: 196, column: 7, scope: !2034, inlinedAt: !2098)
!2105 = !DILocation(line: 197, column: 5, scope: !2046, inlinedAt: !2098)
!2106 = !DILocation(line: 198, column: 5, scope: !2034, inlinedAt: !2098)
!2107 = !DILocation(line: 198, column: 11, scope: !2034, inlinedAt: !2098)
!2108 = !DILocation(line: 958, column: 10, scope: !2020, inlinedAt: !2092)
!2109 = !DILocation(line: 959, column: 1, scope: !2020, inlinedAt: !2092)
!2110 = !DILocation(line: 972, column: 3, scope: !2083)
!2111 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !83, file: !83, line: 976, type: !2112, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!32, !40, !6, !77}
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "s", arg: 1, scope: !2111, file: !83, line: 976, type: !40)
!2116 = !DILocalVariable(name: "arg", arg: 2, scope: !2111, file: !83, line: 976, type: !6)
!2117 = !DILocalVariable(name: "argsize", arg: 3, scope: !2111, file: !83, line: 976, type: !77)
!2118 = !DILocation(line: 976, column: 40, scope: !2111)
!2119 = !DILocation(line: 976, column: 55, scope: !2111)
!2120 = !DILocation(line: 976, column: 67, scope: !2111)
!2121 = !DILocation(line: 962, column: 27, scope: !2054, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 978, column: 10, scope: !2111)
!2123 = !DILocation(line: 962, column: 49, scope: !2054, inlinedAt: !2122)
!2124 = !DILocation(line: 963, column: 35, scope: !2054, inlinedAt: !2122)
!2125 = !DILocation(line: 963, column: 47, scope: !2054, inlinedAt: !2122)
!2126 = !DILocation(line: 965, column: 3, scope: !2054, inlinedAt: !2122)
!2127 = !DILocation(line: 965, column: 32, scope: !2054, inlinedAt: !2122)
!2128 = !DILocation(line: 193, column: 48, scope: !2034, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 965, column: 36, scope: !2054, inlinedAt: !2122)
!2130 = !DILocation(line: 195, column: 26, scope: !2034, inlinedAt: !2129)
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"quoting_options_from_style: argument 0"}
!2133 = distinct !{!2133, !"quoting_options_from_style"}
!2134 = !DILocation(line: 196, column: 13, scope: !2046, inlinedAt: !2129)
!2135 = !DILocation(line: 196, column: 7, scope: !2034, inlinedAt: !2129)
!2136 = !DILocation(line: 197, column: 5, scope: !2046, inlinedAt: !2129)
!2137 = !DILocation(line: 198, column: 5, scope: !2034, inlinedAt: !2129)
!2138 = !DILocation(line: 198, column: 11, scope: !2034, inlinedAt: !2129)
!2139 = !DILocation(line: 966, column: 10, scope: !2054, inlinedAt: !2122)
!2140 = !DILocation(line: 967, column: 1, scope: !2054, inlinedAt: !2122)
!2141 = !DILocation(line: 978, column: 3, scope: !2111)
!2142 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !83, file: !83, line: 982, type: !2143, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!32, !6, !77, !8}
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DILocalVariable(name: "arg", arg: 1, scope: !2142, file: !83, line: 982, type: !6)
!2147 = !DILocalVariable(name: "argsize", arg: 2, scope: !2142, file: !83, line: 982, type: !77)
!2148 = !DILocalVariable(name: "ch", arg: 3, scope: !2142, file: !83, line: 982, type: !8)
!2149 = !DILocalVariable(name: "options", scope: !2142, file: !83, line: 984, type: !90)
!2150 = !DILocation(line: 982, column: 32, scope: !2142)
!2151 = !DILocation(line: 982, column: 44, scope: !2142)
!2152 = !DILocation(line: 982, column: 58, scope: !2142)
!2153 = !DILocation(line: 984, column: 3, scope: !2142)
!2154 = !DILocation(line: 985, column: 13, scope: !2142)
!2155 = !{i64 0, i64 4, !1011, i64 4, i64 4, !701, i64 8, i64 32, !1011, i64 40, i64 8, !578, i64 48, i64 8, !578}
!2156 = !DILocation(line: 984, column: 26, scope: !2142)
!2157 = !DILocation(line: 152, column: 43, scope: !804, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 986, column: 3, scope: !2142)
!2159 = !DILocation(line: 152, column: 51, scope: !804, inlinedAt: !2158)
!2160 = !DILocation(line: 152, column: 58, scope: !804, inlinedAt: !2158)
!2161 = !DILocation(line: 154, column: 17, scope: !804, inlinedAt: !2158)
!2162 = !DILocation(line: 156, column: 62, scope: !804, inlinedAt: !2158)
!2163 = !DILocation(line: 156, column: 57, scope: !804, inlinedAt: !2158)
!2164 = !DILocation(line: 155, column: 17, scope: !804, inlinedAt: !2158)
!2165 = !DILocation(line: 157, column: 15, scope: !804, inlinedAt: !2158)
!2166 = !DILocation(line: 157, column: 7, scope: !804, inlinedAt: !2158)
!2167 = !DILocation(line: 158, column: 12, scope: !804, inlinedAt: !2158)
!2168 = !DILocation(line: 158, column: 15, scope: !804, inlinedAt: !2158)
!2169 = !DILocation(line: 158, column: 25, scope: !804, inlinedAt: !2158)
!2170 = !DILocation(line: 158, column: 7, scope: !804, inlinedAt: !2158)
!2171 = !DILocation(line: 159, column: 18, scope: !804, inlinedAt: !2158)
!2172 = !DILocation(line: 159, column: 23, scope: !804, inlinedAt: !2158)
!2173 = !DILocation(line: 159, column: 6, scope: !804, inlinedAt: !2158)
!2174 = !DILocation(line: 987, column: 10, scope: !2142)
!2175 = !DILocation(line: 988, column: 1, scope: !2142)
!2176 = !DILocation(line: 987, column: 3, scope: !2142)
!2177 = distinct !DISubprogram(name: "quotearg_char", scope: !83, file: !83, line: 991, type: !2178, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!32, !6, !8}
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "arg", arg: 1, scope: !2177, file: !83, line: 991, type: !6)
!2182 = !DILocalVariable(name: "ch", arg: 2, scope: !2177, file: !83, line: 991, type: !8)
!2183 = !DILocation(line: 991, column: 28, scope: !2177)
!2184 = !DILocation(line: 991, column: 38, scope: !2177)
!2185 = !DILocation(line: 982, column: 32, scope: !2142, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 993, column: 10, scope: !2177)
!2187 = !DILocation(line: 982, column: 44, scope: !2142, inlinedAt: !2186)
!2188 = !DILocation(line: 982, column: 58, scope: !2142, inlinedAt: !2186)
!2189 = !DILocation(line: 984, column: 3, scope: !2142, inlinedAt: !2186)
!2190 = !DILocation(line: 985, column: 13, scope: !2142, inlinedAt: !2186)
!2191 = !DILocation(line: 984, column: 26, scope: !2142, inlinedAt: !2186)
!2192 = !DILocation(line: 152, column: 43, scope: !804, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 986, column: 3, scope: !2142, inlinedAt: !2186)
!2194 = !DILocation(line: 152, column: 51, scope: !804, inlinedAt: !2193)
!2195 = !DILocation(line: 152, column: 58, scope: !804, inlinedAt: !2193)
!2196 = !DILocation(line: 154, column: 17, scope: !804, inlinedAt: !2193)
!2197 = !DILocation(line: 156, column: 62, scope: !804, inlinedAt: !2193)
!2198 = !DILocation(line: 156, column: 57, scope: !804, inlinedAt: !2193)
!2199 = !DILocation(line: 155, column: 17, scope: !804, inlinedAt: !2193)
!2200 = !DILocation(line: 157, column: 15, scope: !804, inlinedAt: !2193)
!2201 = !DILocation(line: 157, column: 7, scope: !804, inlinedAt: !2193)
!2202 = !DILocation(line: 158, column: 12, scope: !804, inlinedAt: !2193)
!2203 = !DILocation(line: 158, column: 15, scope: !804, inlinedAt: !2193)
!2204 = !DILocation(line: 158, column: 25, scope: !804, inlinedAt: !2193)
!2205 = !DILocation(line: 158, column: 7, scope: !804, inlinedAt: !2193)
!2206 = !DILocation(line: 159, column: 18, scope: !804, inlinedAt: !2193)
!2207 = !DILocation(line: 159, column: 23, scope: !804, inlinedAt: !2193)
!2208 = !DILocation(line: 159, column: 6, scope: !804, inlinedAt: !2193)
!2209 = !DILocation(line: 987, column: 10, scope: !2142, inlinedAt: !2186)
!2210 = !DILocation(line: 988, column: 1, scope: !2142, inlinedAt: !2186)
!2211 = !DILocation(line: 993, column: 3, scope: !2177)
!2212 = distinct !DISubprogram(name: "quotearg_colon", scope: !83, file: !83, line: 997, type: !1996, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "arg", arg: 1, scope: !2212, file: !83, line: 997, type: !6)
!2215 = !DILocation(line: 997, column: 29, scope: !2212)
!2216 = !DILocation(line: 991, column: 28, scope: !2177, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 999, column: 10, scope: !2212)
!2218 = !DILocation(line: 991, column: 38, scope: !2177, inlinedAt: !2217)
!2219 = !DILocation(line: 982, column: 32, scope: !2142, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 993, column: 10, scope: !2177, inlinedAt: !2217)
!2221 = !DILocation(line: 982, column: 44, scope: !2142, inlinedAt: !2220)
!2222 = !DILocation(line: 982, column: 58, scope: !2142, inlinedAt: !2220)
!2223 = !DILocation(line: 984, column: 3, scope: !2142, inlinedAt: !2220)
!2224 = !DILocation(line: 985, column: 13, scope: !2142, inlinedAt: !2220)
!2225 = !DILocation(line: 984, column: 26, scope: !2142, inlinedAt: !2220)
!2226 = !DILocation(line: 152, column: 43, scope: !804, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 986, column: 3, scope: !2142, inlinedAt: !2220)
!2228 = !DILocation(line: 152, column: 51, scope: !804, inlinedAt: !2227)
!2229 = !DILocation(line: 152, column: 58, scope: !804, inlinedAt: !2227)
!2230 = !DILocation(line: 154, column: 17, scope: !804, inlinedAt: !2227)
!2231 = !DILocation(line: 156, column: 57, scope: !804, inlinedAt: !2227)
!2232 = !DILocation(line: 155, column: 17, scope: !804, inlinedAt: !2227)
!2233 = !DILocation(line: 157, column: 7, scope: !804, inlinedAt: !2227)
!2234 = !DILocation(line: 158, column: 12, scope: !804, inlinedAt: !2227)
!2235 = !DILocation(line: 159, column: 6, scope: !804, inlinedAt: !2227)
!2236 = !DILocation(line: 987, column: 10, scope: !2142, inlinedAt: !2220)
!2237 = !DILocation(line: 988, column: 1, scope: !2142, inlinedAt: !2220)
!2238 = !DILocation(line: 999, column: 3, scope: !2212)
!2239 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !83, file: !83, line: 1003, type: !2007, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2240)
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2239, file: !83, line: 1003, type: !6)
!2242 = !DILocalVariable(name: "argsize", arg: 2, scope: !2239, file: !83, line: 1003, type: !77)
!2243 = !DILocation(line: 1003, column: 33, scope: !2239)
!2244 = !DILocation(line: 1003, column: 45, scope: !2239)
!2245 = !DILocation(line: 982, column: 32, scope: !2142, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 1005, column: 10, scope: !2239)
!2247 = !DILocation(line: 982, column: 44, scope: !2142, inlinedAt: !2246)
!2248 = !DILocation(line: 982, column: 58, scope: !2142, inlinedAt: !2246)
!2249 = !DILocation(line: 984, column: 3, scope: !2142, inlinedAt: !2246)
!2250 = !DILocation(line: 985, column: 13, scope: !2142, inlinedAt: !2246)
!2251 = !DILocation(line: 984, column: 26, scope: !2142, inlinedAt: !2246)
!2252 = !DILocation(line: 152, column: 43, scope: !804, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 986, column: 3, scope: !2142, inlinedAt: !2246)
!2254 = !DILocation(line: 152, column: 51, scope: !804, inlinedAt: !2253)
!2255 = !DILocation(line: 152, column: 58, scope: !804, inlinedAt: !2253)
!2256 = !DILocation(line: 154, column: 17, scope: !804, inlinedAt: !2253)
!2257 = !DILocation(line: 156, column: 57, scope: !804, inlinedAt: !2253)
!2258 = !DILocation(line: 155, column: 17, scope: !804, inlinedAt: !2253)
!2259 = !DILocation(line: 157, column: 7, scope: !804, inlinedAt: !2253)
!2260 = !DILocation(line: 158, column: 12, scope: !804, inlinedAt: !2253)
!2261 = !DILocation(line: 159, column: 6, scope: !804, inlinedAt: !2253)
!2262 = !DILocation(line: 987, column: 10, scope: !2142, inlinedAt: !2246)
!2263 = !DILocation(line: 988, column: 1, scope: !2142, inlinedAt: !2246)
!2264 = !DILocation(line: 1005, column: 3, scope: !2239)
!2265 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !83, file: !83, line: 1009, type: !2021, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2266)
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "n", arg: 1, scope: !2265, file: !83, line: 1009, type: !25)
!2268 = !DILocalVariable(name: "s", arg: 2, scope: !2265, file: !83, line: 1009, type: !40)
!2269 = !DILocalVariable(name: "arg", arg: 3, scope: !2265, file: !83, line: 1009, type: !6)
!2270 = !DILocalVariable(name: "options", scope: !2265, file: !83, line: 1011, type: !90)
!2271 = !DILocation(line: 195, column: 26, scope: !2034, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1012, column: 13, scope: !2265)
!2273 = !DILocation(line: 1009, column: 29, scope: !2265)
!2274 = !DILocation(line: 1009, column: 51, scope: !2265)
!2275 = !DILocation(line: 1009, column: 66, scope: !2265)
!2276 = !DILocation(line: 1011, column: 3, scope: !2265)
!2277 = !DILocation(line: 1012, column: 13, scope: !2265)
!2278 = !DILocation(line: 193, column: 48, scope: !2034, inlinedAt: !2272)
!2279 = !{!2280}
!2280 = distinct !{!2280, !2281, !"quoting_options_from_style: argument 0"}
!2281 = distinct !{!2281, !"quoting_options_from_style"}
!2282 = !DILocation(line: 196, column: 13, scope: !2046, inlinedAt: !2272)
!2283 = !DILocation(line: 196, column: 7, scope: !2034, inlinedAt: !2272)
!2284 = !DILocation(line: 197, column: 5, scope: !2046, inlinedAt: !2272)
!2285 = !DILocation(line: 1011, column: 26, scope: !2265)
!2286 = !DILocation(line: 152, column: 43, scope: !804, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 1013, column: 3, scope: !2265)
!2288 = !DILocation(line: 152, column: 51, scope: !804, inlinedAt: !2287)
!2289 = !DILocation(line: 152, column: 58, scope: !804, inlinedAt: !2287)
!2290 = !DILocation(line: 154, column: 17, scope: !804, inlinedAt: !2287)
!2291 = !DILocation(line: 156, column: 57, scope: !804, inlinedAt: !2287)
!2292 = !DILocation(line: 155, column: 17, scope: !804, inlinedAt: !2287)
!2293 = !DILocation(line: 157, column: 7, scope: !804, inlinedAt: !2287)
!2294 = !DILocation(line: 158, column: 12, scope: !804, inlinedAt: !2287)
!2295 = !DILocation(line: 159, column: 6, scope: !804, inlinedAt: !2287)
!2296 = !DILocation(line: 1014, column: 10, scope: !2265)
!2297 = !DILocation(line: 1015, column: 1, scope: !2265)
!2298 = !DILocation(line: 1014, column: 3, scope: !2265)
!2299 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !83, file: !83, line: 1018, type: !2300, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!32, !25, !6, !6, !6}
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "n", arg: 1, scope: !2299, file: !83, line: 1018, type: !25)
!2304 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2299, file: !83, line: 1018, type: !6)
!2305 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2299, file: !83, line: 1019, type: !6)
!2306 = !DILocalVariable(name: "arg", arg: 4, scope: !2299, file: !83, line: 1019, type: !6)
!2307 = !DILocation(line: 1018, column: 24, scope: !2299)
!2308 = !DILocation(line: 1018, column: 39, scope: !2299)
!2309 = !DILocation(line: 1019, column: 32, scope: !2299)
!2310 = !DILocation(line: 1019, column: 57, scope: !2299)
!2311 = !DILocalVariable(name: "n", arg: 1, scope: !2312, file: !83, line: 1026, type: !25)
!2312 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !83, file: !83, line: 1026, type: !2313, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!32, !25, !6, !6, !6, !77}
!2315 = !{!2311, !2316, !2317, !2318, !2319, !2320}
!2316 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2312, file: !83, line: 1026, type: !6)
!2317 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2312, file: !83, line: 1027, type: !6)
!2318 = !DILocalVariable(name: "arg", arg: 4, scope: !2312, file: !83, line: 1028, type: !6)
!2319 = !DILocalVariable(name: "argsize", arg: 5, scope: !2312, file: !83, line: 1028, type: !77)
!2320 = !DILocalVariable(name: "o", scope: !2312, file: !83, line: 1030, type: !90)
!2321 = !DILocation(line: 1026, column: 28, scope: !2312, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 1021, column: 10, scope: !2299)
!2323 = !DILocation(line: 1026, column: 43, scope: !2312, inlinedAt: !2322)
!2324 = !DILocation(line: 1027, column: 36, scope: !2312, inlinedAt: !2322)
!2325 = !DILocation(line: 1028, column: 36, scope: !2312, inlinedAt: !2322)
!2326 = !DILocation(line: 1028, column: 48, scope: !2312, inlinedAt: !2322)
!2327 = !DILocation(line: 1030, column: 3, scope: !2312, inlinedAt: !2322)
!2328 = !DILocation(line: 1030, column: 30, scope: !2312, inlinedAt: !2322)
!2329 = !DILocation(line: 1030, column: 26, scope: !2312, inlinedAt: !2322)
!2330 = !DILocation(line: 179, column: 45, scope: !853, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 1031, column: 3, scope: !2312, inlinedAt: !2322)
!2332 = !DILocation(line: 180, column: 33, scope: !853, inlinedAt: !2331)
!2333 = !DILocation(line: 180, column: 57, scope: !853, inlinedAt: !2331)
!2334 = !DILocation(line: 184, column: 6, scope: !853, inlinedAt: !2331)
!2335 = !DILocation(line: 184, column: 12, scope: !853, inlinedAt: !2331)
!2336 = !DILocation(line: 185, column: 8, scope: !869, inlinedAt: !2331)
!2337 = !DILocation(line: 185, column: 23, scope: !869, inlinedAt: !2331)
!2338 = !DILocation(line: 185, column: 19, scope: !869, inlinedAt: !2331)
!2339 = !DILocation(line: 186, column: 5, scope: !869, inlinedAt: !2331)
!2340 = !DILocation(line: 187, column: 6, scope: !853, inlinedAt: !2331)
!2341 = !DILocation(line: 187, column: 17, scope: !853, inlinedAt: !2331)
!2342 = !DILocation(line: 188, column: 6, scope: !853, inlinedAt: !2331)
!2343 = !DILocation(line: 188, column: 18, scope: !853, inlinedAt: !2331)
!2344 = !DILocation(line: 1032, column: 10, scope: !2312, inlinedAt: !2322)
!2345 = !DILocation(line: 1033, column: 1, scope: !2312, inlinedAt: !2322)
!2346 = !DILocation(line: 1021, column: 3, scope: !2299)
!2347 = !DILocation(line: 1026, column: 28, scope: !2312)
!2348 = !DILocation(line: 1026, column: 43, scope: !2312)
!2349 = !DILocation(line: 1027, column: 36, scope: !2312)
!2350 = !DILocation(line: 1028, column: 36, scope: !2312)
!2351 = !DILocation(line: 1028, column: 48, scope: !2312)
!2352 = !DILocation(line: 1030, column: 3, scope: !2312)
!2353 = !DILocation(line: 1030, column: 30, scope: !2312)
!2354 = !DILocation(line: 1030, column: 26, scope: !2312)
!2355 = !DILocation(line: 179, column: 45, scope: !853, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1031, column: 3, scope: !2312)
!2357 = !DILocation(line: 180, column: 33, scope: !853, inlinedAt: !2356)
!2358 = !DILocation(line: 180, column: 57, scope: !853, inlinedAt: !2356)
!2359 = !DILocation(line: 184, column: 6, scope: !853, inlinedAt: !2356)
!2360 = !DILocation(line: 184, column: 12, scope: !853, inlinedAt: !2356)
!2361 = !DILocation(line: 185, column: 8, scope: !869, inlinedAt: !2356)
!2362 = !DILocation(line: 185, column: 23, scope: !869, inlinedAt: !2356)
!2363 = !DILocation(line: 185, column: 19, scope: !869, inlinedAt: !2356)
!2364 = !DILocation(line: 186, column: 5, scope: !869, inlinedAt: !2356)
!2365 = !DILocation(line: 187, column: 6, scope: !853, inlinedAt: !2356)
!2366 = !DILocation(line: 187, column: 17, scope: !853, inlinedAt: !2356)
!2367 = !DILocation(line: 188, column: 6, scope: !853, inlinedAt: !2356)
!2368 = !DILocation(line: 188, column: 18, scope: !853, inlinedAt: !2356)
!2369 = !DILocation(line: 1032, column: 10, scope: !2312)
!2370 = !DILocation(line: 1033, column: 1, scope: !2312)
!2371 = !DILocation(line: 1032, column: 3, scope: !2312)
!2372 = distinct !DISubprogram(name: "quotearg_custom", scope: !83, file: !83, line: 1036, type: !2373, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!32, !6, !6, !6}
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2372, file: !83, line: 1036, type: !6)
!2377 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2372, file: !83, line: 1036, type: !6)
!2378 = !DILocalVariable(name: "arg", arg: 3, scope: !2372, file: !83, line: 1037, type: !6)
!2379 = !DILocation(line: 1036, column: 30, scope: !2372)
!2380 = !DILocation(line: 1036, column: 54, scope: !2372)
!2381 = !DILocation(line: 1037, column: 30, scope: !2372)
!2382 = !DILocation(line: 1018, column: 24, scope: !2299, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 1039, column: 10, scope: !2372)
!2384 = !DILocation(line: 1018, column: 39, scope: !2299, inlinedAt: !2383)
!2385 = !DILocation(line: 1019, column: 32, scope: !2299, inlinedAt: !2383)
!2386 = !DILocation(line: 1019, column: 57, scope: !2299, inlinedAt: !2383)
!2387 = !DILocation(line: 1026, column: 28, scope: !2312, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1021, column: 10, scope: !2299, inlinedAt: !2383)
!2389 = !DILocation(line: 1026, column: 43, scope: !2312, inlinedAt: !2388)
!2390 = !DILocation(line: 1027, column: 36, scope: !2312, inlinedAt: !2388)
!2391 = !DILocation(line: 1028, column: 36, scope: !2312, inlinedAt: !2388)
!2392 = !DILocation(line: 1028, column: 48, scope: !2312, inlinedAt: !2388)
!2393 = !DILocation(line: 1030, column: 3, scope: !2312, inlinedAt: !2388)
!2394 = !DILocation(line: 1030, column: 30, scope: !2312, inlinedAt: !2388)
!2395 = !DILocation(line: 1030, column: 26, scope: !2312, inlinedAt: !2388)
!2396 = !DILocation(line: 179, column: 45, scope: !853, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 1031, column: 3, scope: !2312, inlinedAt: !2388)
!2398 = !DILocation(line: 180, column: 33, scope: !853, inlinedAt: !2397)
!2399 = !DILocation(line: 180, column: 57, scope: !853, inlinedAt: !2397)
!2400 = !DILocation(line: 184, column: 6, scope: !853, inlinedAt: !2397)
!2401 = !DILocation(line: 184, column: 12, scope: !853, inlinedAt: !2397)
!2402 = !DILocation(line: 185, column: 8, scope: !869, inlinedAt: !2397)
!2403 = !DILocation(line: 185, column: 23, scope: !869, inlinedAt: !2397)
!2404 = !DILocation(line: 185, column: 19, scope: !869, inlinedAt: !2397)
!2405 = !DILocation(line: 186, column: 5, scope: !869, inlinedAt: !2397)
!2406 = !DILocation(line: 187, column: 6, scope: !853, inlinedAt: !2397)
!2407 = !DILocation(line: 187, column: 17, scope: !853, inlinedAt: !2397)
!2408 = !DILocation(line: 188, column: 6, scope: !853, inlinedAt: !2397)
!2409 = !DILocation(line: 188, column: 18, scope: !853, inlinedAt: !2397)
!2410 = !DILocation(line: 1032, column: 10, scope: !2312, inlinedAt: !2388)
!2411 = !DILocation(line: 1033, column: 1, scope: !2312, inlinedAt: !2388)
!2412 = !DILocation(line: 1039, column: 3, scope: !2372)
!2413 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !83, file: !83, line: 1043, type: !2414, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!32, !6, !6, !6, !77}
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2413, file: !83, line: 1043, type: !6)
!2418 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2413, file: !83, line: 1043, type: !6)
!2419 = !DILocalVariable(name: "arg", arg: 3, scope: !2413, file: !83, line: 1044, type: !6)
!2420 = !DILocalVariable(name: "argsize", arg: 4, scope: !2413, file: !83, line: 1044, type: !77)
!2421 = !DILocation(line: 1043, column: 34, scope: !2413)
!2422 = !DILocation(line: 1043, column: 58, scope: !2413)
!2423 = !DILocation(line: 1044, column: 34, scope: !2413)
!2424 = !DILocation(line: 1044, column: 46, scope: !2413)
!2425 = !DILocation(line: 1026, column: 28, scope: !2312, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1046, column: 10, scope: !2413)
!2427 = !DILocation(line: 1026, column: 43, scope: !2312, inlinedAt: !2426)
!2428 = !DILocation(line: 1027, column: 36, scope: !2312, inlinedAt: !2426)
!2429 = !DILocation(line: 1028, column: 36, scope: !2312, inlinedAt: !2426)
!2430 = !DILocation(line: 1028, column: 48, scope: !2312, inlinedAt: !2426)
!2431 = !DILocation(line: 1030, column: 3, scope: !2312, inlinedAt: !2426)
!2432 = !DILocation(line: 1030, column: 30, scope: !2312, inlinedAt: !2426)
!2433 = !DILocation(line: 1030, column: 26, scope: !2312, inlinedAt: !2426)
!2434 = !DILocation(line: 179, column: 45, scope: !853, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1031, column: 3, scope: !2312, inlinedAt: !2426)
!2436 = !DILocation(line: 180, column: 33, scope: !853, inlinedAt: !2435)
!2437 = !DILocation(line: 180, column: 57, scope: !853, inlinedAt: !2435)
!2438 = !DILocation(line: 184, column: 6, scope: !853, inlinedAt: !2435)
!2439 = !DILocation(line: 184, column: 12, scope: !853, inlinedAt: !2435)
!2440 = !DILocation(line: 185, column: 8, scope: !869, inlinedAt: !2435)
!2441 = !DILocation(line: 185, column: 23, scope: !869, inlinedAt: !2435)
!2442 = !DILocation(line: 185, column: 19, scope: !869, inlinedAt: !2435)
!2443 = !DILocation(line: 186, column: 5, scope: !869, inlinedAt: !2435)
!2444 = !DILocation(line: 187, column: 6, scope: !853, inlinedAt: !2435)
!2445 = !DILocation(line: 187, column: 17, scope: !853, inlinedAt: !2435)
!2446 = !DILocation(line: 188, column: 6, scope: !853, inlinedAt: !2435)
!2447 = !DILocation(line: 188, column: 18, scope: !853, inlinedAt: !2435)
!2448 = !DILocation(line: 1032, column: 10, scope: !2312, inlinedAt: !2426)
!2449 = !DILocation(line: 1033, column: 1, scope: !2312, inlinedAt: !2426)
!2450 = !DILocation(line: 1046, column: 3, scope: !2413)
!2451 = distinct !DISubprogram(name: "quote_n_mem", scope: !83, file: !83, line: 1061, type: !2452, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!6, !25, !6, !77}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "n", arg: 1, scope: !2451, file: !83, line: 1061, type: !25)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !83, line: 1061, type: !6)
!2457 = !DILocalVariable(name: "argsize", arg: 3, scope: !2451, file: !83, line: 1061, type: !77)
!2458 = !DILocation(line: 1061, column: 18, scope: !2451)
!2459 = !DILocation(line: 1061, column: 33, scope: !2451)
!2460 = !DILocation(line: 1061, column: 45, scope: !2451)
!2461 = !DILocation(line: 1063, column: 10, scope: !2451)
!2462 = !DILocation(line: 1063, column: 3, scope: !2451)
!2463 = distinct !DISubprogram(name: "quote_mem", scope: !83, file: !83, line: 1067, type: !2464, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!6, !6, !77}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2463, file: !83, line: 1067, type: !6)
!2468 = !DILocalVariable(name: "argsize", arg: 2, scope: !2463, file: !83, line: 1067, type: !77)
!2469 = !DILocation(line: 1067, column: 24, scope: !2463)
!2470 = !DILocation(line: 1067, column: 36, scope: !2463)
!2471 = !DILocation(line: 1061, column: 18, scope: !2451, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 1069, column: 10, scope: !2463)
!2473 = !DILocation(line: 1061, column: 33, scope: !2451, inlinedAt: !2472)
!2474 = !DILocation(line: 1061, column: 45, scope: !2451, inlinedAt: !2472)
!2475 = !DILocation(line: 1063, column: 10, scope: !2451, inlinedAt: !2472)
!2476 = !DILocation(line: 1069, column: 3, scope: !2463)
!2477 = distinct !DISubprogram(name: "quote_n", scope: !83, file: !83, line: 1073, type: !2478, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!6, !25, !6}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "n", arg: 1, scope: !2477, file: !83, line: 1073, type: !25)
!2482 = !DILocalVariable(name: "arg", arg: 2, scope: !2477, file: !83, line: 1073, type: !6)
!2483 = !DILocation(line: 1073, column: 14, scope: !2477)
!2484 = !DILocation(line: 1073, column: 29, scope: !2477)
!2485 = !DILocation(line: 1061, column: 18, scope: !2451, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1075, column: 10, scope: !2477)
!2487 = !DILocation(line: 1061, column: 33, scope: !2451, inlinedAt: !2486)
!2488 = !DILocation(line: 1061, column: 45, scope: !2451, inlinedAt: !2486)
!2489 = !DILocation(line: 1063, column: 10, scope: !2451, inlinedAt: !2486)
!2490 = !DILocation(line: 1075, column: 3, scope: !2477)
!2491 = distinct !DISubprogram(name: "quote", scope: !83, file: !83, line: 1079, type: !2492, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!6, !6}
!2494 = !{!2495}
!2495 = !DILocalVariable(name: "arg", arg: 1, scope: !2491, file: !83, line: 1079, type: !6)
!2496 = !DILocation(line: 1079, column: 20, scope: !2491)
!2497 = !DILocation(line: 1073, column: 14, scope: !2477, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1081, column: 10, scope: !2491)
!2499 = !DILocation(line: 1073, column: 29, scope: !2477, inlinedAt: !2498)
!2500 = !DILocation(line: 1061, column: 18, scope: !2451, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 1075, column: 10, scope: !2477, inlinedAt: !2498)
!2502 = !DILocation(line: 1061, column: 33, scope: !2451, inlinedAt: !2501)
!2503 = !DILocation(line: 1061, column: 45, scope: !2451, inlinedAt: !2501)
!2504 = !DILocation(line: 1063, column: 10, scope: !2451, inlinedAt: !2501)
!2505 = !DILocation(line: 1081, column: 3, scope: !2491)
!2506 = distinct !DISubprogram(name: "version_etc_arn", scope: !138, file: !138, line: 62, type: !2507, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2565)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2509, !6, !6, !6, !2564, !77}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !2512)
!2511 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !2514)
!2513 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2530, !2532, !2533, !2534, !2538, !2539, !2541, !2545, !2548, !2550, !2553, !2556, !2557, !2558, !2559, !2560}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2512, file: !2513, line: 51, baseType: !25, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2512, file: !2513, line: 54, baseType: !32, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2512, file: !2513, line: 55, baseType: !32, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2512, file: !2513, line: 56, baseType: !32, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2512, file: !2513, line: 57, baseType: !32, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2512, file: !2513, line: 58, baseType: !32, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2512, file: !2513, line: 59, baseType: !32, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2512, file: !2513, line: 60, baseType: !32, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2512, file: !2513, line: 61, baseType: !32, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2512, file: !2513, line: 64, baseType: !32, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2512, file: !2513, line: 65, baseType: !32, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2512, file: !2513, line: 66, baseType: !32, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2512, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2513, line: 36, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2512, file: !2513, line: 70, baseType: !2531, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2512, file: !2513, line: 72, baseType: !25, size: 32, offset: 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2512, file: !2513, line: 73, baseType: !25, size: 32, offset: 928)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2512, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2536, line: 150, baseType: !2537)
!2536 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2537 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2512, file: !2513, line: 77, baseType: !76, size: 16, offset: 1024)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2512, file: !2513, line: 78, baseType: !2540, size: 8, offset: 1040)
!2540 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2512, file: !2513, line: 79, baseType: !2542, size: 8, offset: 1048)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2543)
!2543 = !{!2544}
!2544 = !DISubrange(count: 1)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2512, file: !2513, line: 81, baseType: !2546, size: 64, offset: 1088)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2513, line: 43, baseType: null)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2512, file: !2513, line: 89, baseType: !2549, size: 64, offset: 1152)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2536, line: 151, baseType: !2537)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2512, file: !2513, line: 91, baseType: !2551, size: 64, offset: 1216)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2513, line: 37, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2512, file: !2513, line: 92, baseType: !2554, size: 64, offset: 1280)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2513, line: 38, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2512, file: !2513, line: 93, baseType: !2531, size: 64, offset: 1344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2512, file: !2513, line: 94, baseType: !31, size: 64, offset: 1408)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2512, file: !2513, line: 95, baseType: !77, size: 64, offset: 1472)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2512, file: !2513, line: 96, baseType: !25, size: 32, offset: 1536)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2512, file: !2513, line: 98, baseType: !2561, size: 160, offset: 1568)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2562)
!2562 = !{!2563}
!2563 = !DISubrange(count: 20)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571}
!2566 = !DILocalVariable(name: "stream", arg: 1, scope: !2506, file: !138, line: 62, type: !2509)
!2567 = !DILocalVariable(name: "command_name", arg: 2, scope: !2506, file: !138, line: 63, type: !6)
!2568 = !DILocalVariable(name: "package", arg: 3, scope: !2506, file: !138, line: 63, type: !6)
!2569 = !DILocalVariable(name: "version", arg: 4, scope: !2506, file: !138, line: 64, type: !6)
!2570 = !DILocalVariable(name: "authors", arg: 5, scope: !2506, file: !138, line: 65, type: !2564)
!2571 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2506, file: !138, line: 65, type: !77)
!2572 = !DILocation(line: 62, column: 24, scope: !2506)
!2573 = !DILocation(line: 63, column: 30, scope: !2506)
!2574 = !DILocation(line: 63, column: 56, scope: !2506)
!2575 = !DILocation(line: 64, column: 30, scope: !2506)
!2576 = !DILocation(line: 65, column: 39, scope: !2506)
!2577 = !DILocation(line: 65, column: 55, scope: !2506)
!2578 = !DILocation(line: 67, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2506, file: !138, line: 67, column: 7)
!2580 = !DILocation(line: 67, column: 7, scope: !2506)
!2581 = !DILocation(line: 68, column: 5, scope: !2579)
!2582 = !DILocation(line: 70, column: 5, scope: !2579)
!2583 = !DILocation(line: 84, column: 3, scope: !2506)
!2584 = !DILocation(line: 86, column: 3, scope: !2506)
!2585 = !DILocation(line: 95, column: 3, scope: !2506)
!2586 = !DILocation(line: 99, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2506, file: !138, line: 96, column: 5)
!2588 = !DILocation(line: 102, column: 7, scope: !2587)
!2589 = !DILocation(line: 103, column: 7, scope: !2587)
!2590 = !DILocation(line: 106, column: 7, scope: !2587)
!2591 = !DILocation(line: 107, column: 7, scope: !2587)
!2592 = !DILocation(line: 110, column: 7, scope: !2587)
!2593 = !DILocation(line: 112, column: 7, scope: !2587)
!2594 = !DILocation(line: 117, column: 7, scope: !2587)
!2595 = !DILocation(line: 119, column: 7, scope: !2587)
!2596 = !DILocation(line: 124, column: 7, scope: !2587)
!2597 = !DILocation(line: 126, column: 7, scope: !2587)
!2598 = !DILocation(line: 131, column: 7, scope: !2587)
!2599 = !DILocation(line: 134, column: 7, scope: !2587)
!2600 = !DILocation(line: 139, column: 7, scope: !2587)
!2601 = !DILocation(line: 142, column: 7, scope: !2587)
!2602 = !DILocation(line: 147, column: 7, scope: !2587)
!2603 = !DILocation(line: 151, column: 7, scope: !2587)
!2604 = !DILocation(line: 156, column: 7, scope: !2587)
!2605 = !DILocation(line: 160, column: 7, scope: !2587)
!2606 = !DILocation(line: 167, column: 7, scope: !2587)
!2607 = !DILocation(line: 171, column: 7, scope: !2587)
!2608 = !DILocation(line: 173, column: 1, scope: !2506)
!2609 = distinct !DISubprogram(name: "version_etc_ar", scope: !138, file: !138, line: 180, type: !2610, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2509, !6, !6, !6, !2564}
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618}
!2613 = !DILocalVariable(name: "stream", arg: 1, scope: !2609, file: !138, line: 180, type: !2509)
!2614 = !DILocalVariable(name: "command_name", arg: 2, scope: !2609, file: !138, line: 181, type: !6)
!2615 = !DILocalVariable(name: "package", arg: 3, scope: !2609, file: !138, line: 181, type: !6)
!2616 = !DILocalVariable(name: "version", arg: 4, scope: !2609, file: !138, line: 182, type: !6)
!2617 = !DILocalVariable(name: "authors", arg: 5, scope: !2609, file: !138, line: 182, type: !2564)
!2618 = !DILocalVariable(name: "n_authors", scope: !2609, file: !138, line: 184, type: !77)
!2619 = !DILocation(line: 180, column: 23, scope: !2609)
!2620 = !DILocation(line: 181, column: 29, scope: !2609)
!2621 = !DILocation(line: 181, column: 55, scope: !2609)
!2622 = !DILocation(line: 182, column: 29, scope: !2609)
!2623 = !DILocation(line: 182, column: 59, scope: !2609)
!2624 = !DILocation(line: 184, column: 10, scope: !2609)
!2625 = !DILocation(line: 186, column: 8, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2609, file: !138, line: 186, column: 3)
!2627 = !DILocation(line: 0, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2626, file: !138, line: 186, column: 3)
!2629 = !DILocation(line: 186, column: 23, scope: !2628)
!2630 = !DILocation(line: 186, column: 3, scope: !2626)
!2631 = !DILocation(line: 186, column: 52, scope: !2628)
!2632 = distinct !{!2632, !2630, !2633}
!2633 = !DILocation(line: 187, column: 5, scope: !2626)
!2634 = !DILocation(line: 188, column: 3, scope: !2609)
!2635 = !DILocation(line: 189, column: 1, scope: !2609)
!2636 = distinct !DISubprogram(name: "version_etc_va", scope: !138, file: !138, line: 196, type: !2637, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2646)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2509, !6, !6, !6, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !135, line: 189, size: 192, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2640, file: !135, line: 189, baseType: !42, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2640, file: !135, line: 189, baseType: !42, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2640, file: !135, line: 189, baseType: !31, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2640, file: !135, line: 189, baseType: !31, size: 64, offset: 128)
!2646 = !{!2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2647 = !DILocalVariable(name: "stream", arg: 1, scope: !2636, file: !138, line: 196, type: !2509)
!2648 = !DILocalVariable(name: "command_name", arg: 2, scope: !2636, file: !138, line: 197, type: !6)
!2649 = !DILocalVariable(name: "package", arg: 3, scope: !2636, file: !138, line: 197, type: !6)
!2650 = !DILocalVariable(name: "version", arg: 4, scope: !2636, file: !138, line: 198, type: !6)
!2651 = !DILocalVariable(name: "authors", arg: 5, scope: !2636, file: !138, line: 198, type: !2639)
!2652 = !DILocalVariable(name: "n_authors", scope: !2636, file: !138, line: 200, type: !77)
!2653 = !DILocalVariable(name: "authtab", scope: !2636, file: !138, line: 201, type: !2654)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !86)
!2655 = !DILocation(line: 196, column: 23, scope: !2636)
!2656 = !DILocation(line: 197, column: 29, scope: !2636)
!2657 = !DILocation(line: 197, column: 55, scope: !2636)
!2658 = !DILocation(line: 198, column: 29, scope: !2636)
!2659 = !DILocation(line: 198, column: 46, scope: !2636)
!2660 = !DILocation(line: 201, column: 3, scope: !2636)
!2661 = !DILocation(line: 201, column: 15, scope: !2636)
!2662 = !DILocation(line: 200, column: 10, scope: !2636)
!2663 = !DILocation(line: 205, column: 35, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !138, line: 203, column: 3)
!2665 = distinct !DILexicalBlock(scope: !2636, file: !138, line: 203, column: 3)
!2666 = !DILocation(line: 205, column: 14, scope: !2664)
!2667 = !DILocation(line: 205, column: 33, scope: !2664)
!2668 = !DILocation(line: 205, column: 67, scope: !2664)
!2669 = !DILocation(line: 203, column: 3, scope: !2665)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 208, column: 3, scope: !2636)
!2672 = !DILocation(line: 210, column: 1, scope: !2636)
!2673 = distinct !DISubprogram(name: "version_etc", scope: !138, file: !138, line: 227, type: !2674, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2509, !6, !6, !6, null}
!2676 = !{!2677, !2678, !2679, !2680, !2681}
!2677 = !DILocalVariable(name: "stream", arg: 1, scope: !2673, file: !138, line: 227, type: !2509)
!2678 = !DILocalVariable(name: "command_name", arg: 2, scope: !2673, file: !138, line: 228, type: !6)
!2679 = !DILocalVariable(name: "package", arg: 3, scope: !2673, file: !138, line: 228, type: !6)
!2680 = !DILocalVariable(name: "version", arg: 4, scope: !2673, file: !138, line: 229, type: !6)
!2681 = !DILocalVariable(name: "authors", scope: !2673, file: !138, line: 231, type: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2683, line: 52, baseType: !2684)
!2683 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2685, line: 48, baseType: !2686)
!2685 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, line: 231, baseType: !2687)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2640, size: 192, elements: !2543)
!2688 = !DILocation(line: 227, column: 20, scope: !2673)
!2689 = !DILocation(line: 228, column: 26, scope: !2673)
!2690 = !DILocation(line: 228, column: 52, scope: !2673)
!2691 = !DILocation(line: 229, column: 26, scope: !2673)
!2692 = !DILocation(line: 231, column: 3, scope: !2673)
!2693 = !DILocation(line: 231, column: 11, scope: !2673)
!2694 = !DILocation(line: 233, column: 3, scope: !2673)
!2695 = !DILocation(line: 234, column: 3, scope: !2673)
!2696 = !DILocation(line: 235, column: 3, scope: !2673)
!2697 = !DILocation(line: 236, column: 1, scope: !2673)
!2698 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !138, file: !138, line: 239, type: !687, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !134, retainedNodes: !4)
!2699 = !DILocation(line: 245, column: 3, scope: !2698)
!2700 = !DILocation(line: 251, column: 3, scope: !2698)
!2701 = !DILocation(line: 256, column: 3, scope: !2698)
!2702 = !DILocation(line: 258, column: 1, scope: !2698)
!2703 = distinct !DISubprogram(name: "xnmalloc", scope: !146, file: !146, line: 99, type: !2704, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!31, !77, !77}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !146, line: 99, type: !77)
!2708 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !146, line: 99, type: !77)
!2709 = !DILocation(line: 99, column: 18, scope: !2703)
!2710 = !DILocation(line: 99, column: 28, scope: !2703)
!2711 = !DILocation(line: 101, column: 7, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2703, file: !146, line: 101, column: 7)
!2713 = !DILocation(line: 101, column: 7, scope: !2703)
!2714 = !DILocation(line: 102, column: 5, scope: !2712)
!2715 = !DILocation(line: 103, column: 21, scope: !2703)
!2716 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !2718, line: 39, type: !77)
!2717 = distinct !DISubprogram(name: "xmalloc", scope: !2718, file: !2718, line: 39, type: !2719, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2721)
!2718 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!31, !77}
!2721 = !{!2716, !2722}
!2722 = !DILocalVariable(name: "p", scope: !2717, file: !2718, line: 41, type: !31)
!2723 = !DILocation(line: 39, column: 17, scope: !2717, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 103, column: 10, scope: !2703)
!2725 = !DILocation(line: 41, column: 13, scope: !2717, inlinedAt: !2724)
!2726 = !DILocation(line: 41, column: 9, scope: !2717, inlinedAt: !2724)
!2727 = !DILocation(line: 42, column: 8, scope: !2728, inlinedAt: !2724)
!2728 = distinct !DILexicalBlock(scope: !2717, file: !2718, line: 42, column: 7)
!2729 = !DILocation(line: 42, column: 15, scope: !2728, inlinedAt: !2724)
!2730 = !DILocation(line: 42, column: 10, scope: !2728, inlinedAt: !2724)
!2731 = !DILocation(line: 43, column: 5, scope: !2728, inlinedAt: !2724)
!2732 = !DILocation(line: 103, column: 3, scope: !2703)
!2733 = !DILocation(line: 39, column: 17, scope: !2717)
!2734 = !DILocation(line: 41, column: 13, scope: !2717)
!2735 = !DILocation(line: 41, column: 9, scope: !2717)
!2736 = !DILocation(line: 42, column: 8, scope: !2728)
!2737 = !DILocation(line: 42, column: 15, scope: !2728)
!2738 = !DILocation(line: 42, column: 10, scope: !2728)
!2739 = !DILocation(line: 43, column: 5, scope: !2728)
!2740 = !DILocation(line: 44, column: 3, scope: !2717)
!2741 = distinct !DISubprogram(name: "xnrealloc", scope: !146, file: !146, line: 112, type: !2742, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!31, !31, !77, !77}
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "p", arg: 1, scope: !2741, file: !146, line: 112, type: !31)
!2746 = !DILocalVariable(name: "n", arg: 2, scope: !2741, file: !146, line: 112, type: !77)
!2747 = !DILocalVariable(name: "s", arg: 3, scope: !2741, file: !146, line: 112, type: !77)
!2748 = !DILocation(line: 112, column: 18, scope: !2741)
!2749 = !DILocation(line: 112, column: 28, scope: !2741)
!2750 = !DILocation(line: 112, column: 38, scope: !2741)
!2751 = !DILocation(line: 114, column: 7, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2741, file: !146, line: 114, column: 7)
!2753 = !DILocation(line: 114, column: 7, scope: !2741)
!2754 = !DILocation(line: 115, column: 5, scope: !2752)
!2755 = !DILocation(line: 116, column: 25, scope: !2741)
!2756 = !DILocalVariable(name: "p", arg: 1, scope: !2757, file: !2718, line: 51, type: !31)
!2757 = distinct !DISubprogram(name: "xrealloc", scope: !2718, file: !2718, line: 51, type: !2758, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!31, !31, !77}
!2760 = !{!2756, !2761}
!2761 = !DILocalVariable(name: "n", arg: 2, scope: !2757, file: !2718, line: 51, type: !77)
!2762 = !DILocation(line: 51, column: 17, scope: !2757, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 116, column: 10, scope: !2741)
!2764 = !DILocation(line: 51, column: 27, scope: !2757, inlinedAt: !2763)
!2765 = !DILocation(line: 53, column: 8, scope: !2766, inlinedAt: !2763)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !2718, line: 53, column: 7)
!2767 = !DILocation(line: 53, column: 13, scope: !2766, inlinedAt: !2763)
!2768 = !DILocation(line: 53, column: 10, scope: !2766, inlinedAt: !2763)
!2769 = !DILocation(line: 57, column: 7, scope: !2770, inlinedAt: !2763)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !2718, line: 54, column: 5)
!2771 = !DILocation(line: 58, column: 7, scope: !2770, inlinedAt: !2763)
!2772 = !DILocation(line: 61, column: 7, scope: !2757, inlinedAt: !2763)
!2773 = !DILocation(line: 62, column: 8, scope: !2774, inlinedAt: !2763)
!2774 = distinct !DILexicalBlock(scope: !2757, file: !2718, line: 62, column: 7)
!2775 = !DILocation(line: 62, column: 13, scope: !2774, inlinedAt: !2763)
!2776 = !DILocation(line: 62, column: 10, scope: !2774, inlinedAt: !2763)
!2777 = !DILocation(line: 63, column: 5, scope: !2774, inlinedAt: !2763)
!2778 = !DILocation(line: 0, scope: !2757, inlinedAt: !2763)
!2779 = !DILocation(line: 116, column: 3, scope: !2741)
!2780 = !DILocation(line: 51, column: 17, scope: !2757)
!2781 = !DILocation(line: 51, column: 27, scope: !2757)
!2782 = !DILocation(line: 53, column: 8, scope: !2766)
!2783 = !DILocation(line: 53, column: 13, scope: !2766)
!2784 = !DILocation(line: 53, column: 10, scope: !2766)
!2785 = !DILocation(line: 57, column: 7, scope: !2770)
!2786 = !DILocation(line: 58, column: 7, scope: !2770)
!2787 = !DILocation(line: 61, column: 7, scope: !2757)
!2788 = !DILocation(line: 62, column: 8, scope: !2774)
!2789 = !DILocation(line: 62, column: 13, scope: !2774)
!2790 = !DILocation(line: 62, column: 10, scope: !2774)
!2791 = !DILocation(line: 63, column: 5, scope: !2774)
!2792 = !DILocation(line: 0, scope: !2757)
!2793 = !DILocation(line: 65, column: 1, scope: !2757)
!2794 = !DILocation(line: 174, column: 19, scope: !147)
!2795 = !DILocation(line: 174, column: 30, scope: !147)
!2796 = !DILocation(line: 174, column: 41, scope: !147)
!2797 = !DILocation(line: 176, column: 14, scope: !147)
!2798 = !DILocation(line: 176, column: 10, scope: !147)
!2799 = !DILocation(line: 178, column: 9, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !147, file: !146, line: 178, column: 7)
!2801 = !DILocation(line: 178, column: 7, scope: !147)
!2802 = !DILocation(line: 180, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !146, line: 180, column: 11)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !146, line: 179, column: 5)
!2805 = !DILocation(line: 180, column: 11, scope: !2804)
!2806 = !DILocation(line: 188, column: 30, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !146, line: 181, column: 9)
!2808 = !DILocation(line: 189, column: 16, scope: !2807)
!2809 = !DILocation(line: 189, column: 13, scope: !2807)
!2810 = !DILocation(line: 190, column: 9, scope: !2807)
!2811 = !DILocation(line: 0, scope: !2807)
!2812 = !DILocation(line: 191, column: 11, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2804, file: !146, line: 191, column: 11)
!2814 = !DILocation(line: 191, column: 11, scope: !2804)
!2815 = !DILocation(line: 206, column: 7, scope: !147)
!2816 = !DILocation(line: 207, column: 25, scope: !147)
!2817 = !DILocation(line: 51, column: 17, scope: !2757, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 207, column: 10, scope: !147)
!2819 = !DILocation(line: 51, column: 27, scope: !2757, inlinedAt: !2818)
!2820 = !DILocation(line: 53, column: 10, scope: !2766, inlinedAt: !2818)
!2821 = !DILocation(line: 192, column: 9, scope: !2813)
!2822 = !DILocation(line: 200, column: 69, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !146, line: 200, column: 11)
!2824 = distinct !DILexicalBlock(scope: !2800, file: !146, line: 195, column: 5)
!2825 = !DILocation(line: 201, column: 11, scope: !2823)
!2826 = !DILocation(line: 200, column: 11, scope: !2824)
!2827 = !DILocation(line: 202, column: 9, scope: !2823)
!2828 = !DILocation(line: 203, column: 14, scope: !2824)
!2829 = !DILocation(line: 203, column: 18, scope: !2824)
!2830 = !DILocation(line: 203, column: 9, scope: !2824)
!2831 = !DILocation(line: 53, column: 8, scope: !2766, inlinedAt: !2818)
!2832 = !DILocation(line: 57, column: 7, scope: !2770, inlinedAt: !2818)
!2833 = !DILocation(line: 58, column: 7, scope: !2770, inlinedAt: !2818)
!2834 = !DILocation(line: 61, column: 7, scope: !2757, inlinedAt: !2818)
!2835 = !DILocation(line: 62, column: 8, scope: !2774, inlinedAt: !2818)
!2836 = !DILocation(line: 62, column: 13, scope: !2774, inlinedAt: !2818)
!2837 = !DILocation(line: 62, column: 10, scope: !2774, inlinedAt: !2818)
!2838 = !DILocation(line: 63, column: 5, scope: !2774, inlinedAt: !2818)
!2839 = !DILocation(line: 0, scope: !2757, inlinedAt: !2818)
!2840 = !DILocation(line: 207, column: 3, scope: !147)
!2841 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !1790, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2842)
!2842 = !{!2843}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !146, line: 216, type: !77)
!2844 = !DILocation(line: 216, column: 20, scope: !2841)
!2845 = !DILocation(line: 39, column: 17, scope: !2717, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 218, column: 10, scope: !2841)
!2847 = !DILocation(line: 41, column: 13, scope: !2717, inlinedAt: !2846)
!2848 = !DILocation(line: 41, column: 9, scope: !2717, inlinedAt: !2846)
!2849 = !DILocation(line: 42, column: 8, scope: !2728, inlinedAt: !2846)
!2850 = !DILocation(line: 42, column: 15, scope: !2728, inlinedAt: !2846)
!2851 = !DILocation(line: 42, column: 10, scope: !2728, inlinedAt: !2846)
!2852 = !DILocation(line: 43, column: 5, scope: !2728, inlinedAt: !2846)
!2853 = !DILocation(line: 218, column: 3, scope: !2841)
!2854 = distinct !DISubprogram(name: "x2realloc", scope: !2718, file: !2718, line: 74, type: !2855, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!31, !31, !150}
!2857 = !{!2858, !2859}
!2858 = !DILocalVariable(name: "p", arg: 1, scope: !2854, file: !2718, line: 74, type: !31)
!2859 = !DILocalVariable(name: "pn", arg: 2, scope: !2854, file: !2718, line: 74, type: !150)
!2860 = !DILocation(line: 74, column: 18, scope: !2854)
!2861 = !DILocation(line: 74, column: 29, scope: !2854)
!2862 = !DILocation(line: 174, column: 19, scope: !147, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 76, column: 10, scope: !2854)
!2864 = !DILocation(line: 174, column: 30, scope: !147, inlinedAt: !2863)
!2865 = !DILocation(line: 174, column: 41, scope: !147, inlinedAt: !2863)
!2866 = !DILocation(line: 176, column: 14, scope: !147, inlinedAt: !2863)
!2867 = !DILocation(line: 176, column: 10, scope: !147, inlinedAt: !2863)
!2868 = !DILocation(line: 178, column: 9, scope: !2800, inlinedAt: !2863)
!2869 = !DILocation(line: 178, column: 7, scope: !147, inlinedAt: !2863)
!2870 = !DILocation(line: 180, column: 13, scope: !2803, inlinedAt: !2863)
!2871 = !DILocation(line: 180, column: 11, scope: !2804, inlinedAt: !2863)
!2872 = !DILocation(line: 191, column: 11, scope: !2813, inlinedAt: !2863)
!2873 = !DILocation(line: 191, column: 11, scope: !2804, inlinedAt: !2863)
!2874 = !DILocation(line: 206, column: 7, scope: !147, inlinedAt: !2863)
!2875 = !DILocation(line: 51, column: 17, scope: !2757, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 207, column: 10, scope: !147, inlinedAt: !2863)
!2877 = !DILocation(line: 51, column: 27, scope: !2757, inlinedAt: !2876)
!2878 = !DILocation(line: 53, column: 10, scope: !2766, inlinedAt: !2876)
!2879 = !DILocation(line: 192, column: 9, scope: !2813, inlinedAt: !2863)
!2880 = !DILocation(line: 201, column: 11, scope: !2823, inlinedAt: !2863)
!2881 = !DILocation(line: 200, column: 11, scope: !2824, inlinedAt: !2863)
!2882 = !DILocation(line: 202, column: 9, scope: !2823, inlinedAt: !2863)
!2883 = !DILocation(line: 203, column: 14, scope: !2824, inlinedAt: !2863)
!2884 = !DILocation(line: 203, column: 18, scope: !2824, inlinedAt: !2863)
!2885 = !DILocation(line: 203, column: 9, scope: !2824, inlinedAt: !2863)
!2886 = !DILocation(line: 53, column: 8, scope: !2766, inlinedAt: !2876)
!2887 = !DILocation(line: 57, column: 7, scope: !2770, inlinedAt: !2876)
!2888 = !DILocation(line: 58, column: 7, scope: !2770, inlinedAt: !2876)
!2889 = !DILocation(line: 61, column: 7, scope: !2757, inlinedAt: !2876)
!2890 = !DILocation(line: 62, column: 8, scope: !2774, inlinedAt: !2876)
!2891 = !DILocation(line: 62, column: 13, scope: !2774, inlinedAt: !2876)
!2892 = !DILocation(line: 62, column: 10, scope: !2774, inlinedAt: !2876)
!2893 = !DILocation(line: 63, column: 5, scope: !2774, inlinedAt: !2876)
!2894 = !DILocation(line: 0, scope: !2757, inlinedAt: !2876)
!2895 = !DILocation(line: 76, column: 3, scope: !2854)
!2896 = distinct !DISubprogram(name: "xzalloc", scope: !2718, file: !2718, line: 84, type: !2719, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2897)
!2897 = !{!2898}
!2898 = !DILocalVariable(name: "s", arg: 1, scope: !2896, file: !2718, line: 84, type: !77)
!2899 = !DILocation(line: 84, column: 17, scope: !2896)
!2900 = !DILocation(line: 39, column: 17, scope: !2717, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 86, column: 18, scope: !2896)
!2902 = !DILocation(line: 41, column: 13, scope: !2717, inlinedAt: !2901)
!2903 = !DILocation(line: 41, column: 9, scope: !2717, inlinedAt: !2901)
!2904 = !DILocation(line: 42, column: 8, scope: !2728, inlinedAt: !2901)
!2905 = !DILocation(line: 42, column: 15, scope: !2728, inlinedAt: !2901)
!2906 = !DILocation(line: 42, column: 10, scope: !2728, inlinedAt: !2901)
!2907 = !DILocation(line: 43, column: 5, scope: !2728, inlinedAt: !2901)
!2908 = !DILocation(line: 86, column: 10, scope: !2896)
!2909 = !DILocation(line: 86, column: 3, scope: !2896)
!2910 = distinct !DISubprogram(name: "xcalloc", scope: !2718, file: !2718, line: 93, type: !2704, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !2718, line: 93, type: !77)
!2913 = !DILocalVariable(name: "s", arg: 2, scope: !2910, file: !2718, line: 93, type: !77)
!2914 = !DILocalVariable(name: "p", scope: !2910, file: !2718, line: 95, type: !31)
!2915 = !DILocation(line: 93, column: 17, scope: !2910)
!2916 = !DILocation(line: 93, column: 27, scope: !2910)
!2917 = !DILocation(line: 100, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2910, file: !2718, line: 100, column: 7)
!2919 = !DILocation(line: 101, column: 7, scope: !2918)
!2920 = !DILocation(line: 101, column: 18, scope: !2918)
!2921 = !DILocation(line: 95, column: 9, scope: !2910)
!2922 = !DILocation(line: 101, column: 16, scope: !2918)
!2923 = !DILocation(line: 100, column: 7, scope: !2910)
!2924 = !DILocation(line: 102, column: 5, scope: !2918)
!2925 = !DILocation(line: 103, column: 3, scope: !2910)
!2926 = distinct !DISubprogram(name: "xmemdup", scope: !2718, file: !2718, line: 111, type: !2927, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2931)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!31, !2929, !77}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "p", arg: 1, scope: !2926, file: !2718, line: 111, type: !2929)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2926, file: !2718, line: 111, type: !77)
!2934 = !DILocation(line: 111, column: 22, scope: !2926)
!2935 = !DILocation(line: 111, column: 32, scope: !2926)
!2936 = !DILocation(line: 39, column: 17, scope: !2717, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 113, column: 18, scope: !2926)
!2938 = !DILocation(line: 41, column: 13, scope: !2717, inlinedAt: !2937)
!2939 = !DILocation(line: 41, column: 9, scope: !2717, inlinedAt: !2937)
!2940 = !DILocation(line: 42, column: 8, scope: !2728, inlinedAt: !2937)
!2941 = !DILocation(line: 42, column: 15, scope: !2728, inlinedAt: !2937)
!2942 = !DILocation(line: 42, column: 10, scope: !2728, inlinedAt: !2937)
!2943 = !DILocation(line: 43, column: 5, scope: !2728, inlinedAt: !2937)
!2944 = !DILocation(line: 113, column: 10, scope: !2926)
!2945 = !DILocation(line: 113, column: 3, scope: !2926)
!2946 = distinct !DISubprogram(name: "xstrdup", scope: !2718, file: !2718, line: 119, type: !1996, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2947)
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "string", arg: 1, scope: !2946, file: !2718, line: 119, type: !6)
!2949 = !DILocation(line: 119, column: 22, scope: !2946)
!2950 = !DILocation(line: 121, column: 27, scope: !2946)
!2951 = !DILocation(line: 121, column: 43, scope: !2946)
!2952 = !DILocation(line: 111, column: 22, scope: !2926, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 121, column: 10, scope: !2946)
!2954 = !DILocation(line: 111, column: 32, scope: !2926, inlinedAt: !2953)
!2955 = !DILocation(line: 39, column: 17, scope: !2717, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 113, column: 18, scope: !2926, inlinedAt: !2953)
!2957 = !DILocation(line: 41, column: 13, scope: !2717, inlinedAt: !2956)
!2958 = !DILocation(line: 41, column: 9, scope: !2717, inlinedAt: !2956)
!2959 = !DILocation(line: 42, column: 8, scope: !2728, inlinedAt: !2956)
!2960 = !DILocation(line: 42, column: 15, scope: !2728, inlinedAt: !2956)
!2961 = !DILocation(line: 42, column: 10, scope: !2728, inlinedAt: !2956)
!2962 = !DILocation(line: 43, column: 5, scope: !2728, inlinedAt: !2956)
!2963 = !DILocation(line: 113, column: 10, scope: !2926, inlinedAt: !2953)
!2964 = !DILocation(line: 121, column: 3, scope: !2946)
!2965 = distinct !DISubprogram(name: "xalloc_die", scope: !2966, file: !2966, line: 32, type: !687, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !159, retainedNodes: !4)
!2966 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2967 = !DILocation(line: 34, column: 10, scope: !2965)
!2968 = !DILocation(line: 34, column: 33, scope: !2965)
!2969 = !DILocation(line: 34, column: 3, scope: !2965)
!2970 = !DILocation(line: 40, column: 3, scope: !2965)
!2971 = distinct !DISubprogram(name: "rpl_calloc", scope: !2972, file: !2972, line: 42, type: !2704, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2973)
!2972 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !2972, line: 42, type: !77)
!2975 = !DILocalVariable(name: "s", arg: 2, scope: !2971, file: !2972, line: 42, type: !77)
!2976 = !DILocalVariable(name: "result", scope: !2971, file: !2972, line: 44, type: !31)
!2977 = !DILocalVariable(name: "bytes", scope: !2978, file: !2972, line: 56, type: !77)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !2972, line: 53, column: 5)
!2979 = distinct !DILexicalBlock(scope: !2971, file: !2972, line: 47, column: 7)
!2980 = !DILocation(line: 42, column: 20, scope: !2971)
!2981 = !DILocation(line: 42, column: 30, scope: !2971)
!2982 = !DILocation(line: 47, column: 9, scope: !2979)
!2983 = !DILocation(line: 47, column: 19, scope: !2979)
!2984 = !DILocation(line: 47, column: 14, scope: !2979)
!2985 = !DILocation(line: 56, column: 24, scope: !2978)
!2986 = !DILocation(line: 56, column: 14, scope: !2978)
!2987 = !DILocation(line: 57, column: 17, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !2972, line: 57, column: 11)
!2989 = !DILocation(line: 57, column: 21, scope: !2988)
!2990 = !DILocation(line: 57, column: 11, scope: !2978)
!2991 = !DILocation(line: 59, column: 11, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !2972, line: 58, column: 9)
!2993 = !DILocation(line: 59, column: 17, scope: !2992)
!2994 = !DILocation(line: 65, column: 12, scope: !2971)
!2995 = !DILocation(line: 44, column: 9, scope: !2971)
!2996 = !DILocation(line: 72, column: 3, scope: !2971)
!2997 = !DILocation(line: 0, scope: !2992)
!2998 = !DILocation(line: 73, column: 1, scope: !2971)
!2999 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3000, file: !3000, line: 385, type: !3001, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3015)
!3000 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!77, !3003, !6, !77, !3004}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !952, line: 6, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !954, line: 21, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !954, line: 13, size: 64, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3007, file: !954, line: 15, baseType: !25, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3007, file: !954, line: 20, baseType: !3011, size: 32, offset: 32)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3007, file: !954, line: 16, size: 32, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3011, file: !954, line: 18, baseType: !42, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3011, file: !954, line: 19, baseType: !963, size: 32)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022}
!3016 = !DILocalVariable(name: "pwc", arg: 1, scope: !2999, file: !3000, line: 385, type: !3003)
!3017 = !DILocalVariable(name: "s", arg: 2, scope: !2999, file: !3000, line: 385, type: !6)
!3018 = !DILocalVariable(name: "n", arg: 3, scope: !2999, file: !3000, line: 385, type: !77)
!3019 = !DILocalVariable(name: "ps", arg: 4, scope: !2999, file: !3000, line: 385, type: !3004)
!3020 = !DILocalVariable(name: "ret", scope: !2999, file: !3000, line: 387, type: !77)
!3021 = !DILocalVariable(name: "wc", scope: !2999, file: !3000, line: 388, type: !968)
!3022 = !DILocalVariable(name: "uc", scope: !3023, file: !3000, line: 449, type: !812)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !3000, line: 448, column: 5)
!3024 = distinct !DILexicalBlock(scope: !2999, file: !3000, line: 447, column: 7)
!3025 = !DILocation(line: 385, column: 23, scope: !2999)
!3026 = !DILocation(line: 385, column: 40, scope: !2999)
!3027 = !DILocation(line: 385, column: 50, scope: !2999)
!3028 = !DILocation(line: 385, column: 64, scope: !2999)
!3029 = !DILocation(line: 388, column: 3, scope: !2999)
!3030 = !DILocation(line: 404, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2999, file: !3000, line: 404, column: 7)
!3032 = !DILocation(line: 404, column: 7, scope: !2999)
!3033 = !DILocation(line: 439, column: 9, scope: !2999)
!3034 = !DILocation(line: 387, column: 10, scope: !2999)
!3035 = !DILocation(line: 447, column: 19, scope: !3024)
!3036 = !DILocation(line: 447, column: 31, scope: !3024)
!3037 = !DILocation(line: 447, column: 26, scope: !3024)
!3038 = !DILocation(line: 447, column: 41, scope: !3024)
!3039 = !DILocation(line: 447, column: 7, scope: !2999)
!3040 = !DILocation(line: 449, column: 26, scope: !3023)
!3041 = !DILocation(line: 449, column: 21, scope: !3023)
!3042 = !DILocation(line: 450, column: 14, scope: !3023)
!3043 = !DILocation(line: 450, column: 12, scope: !3023)
!3044 = !DILocation(line: 0, scope: !3023)
!3045 = !DILocation(line: 456, column: 1, scope: !2999)
!3046 = distinct !DISubprogram(name: "close_stream", scope: !3047, file: !3047, line: 56, type: !3048, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3084)
!3047 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!25, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3052, file: !2513, line: 51, baseType: !25, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3052, file: !2513, line: 54, baseType: !32, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3052, file: !2513, line: 55, baseType: !32, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3052, file: !2513, line: 56, baseType: !32, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3052, file: !2513, line: 57, baseType: !32, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3052, file: !2513, line: 58, baseType: !32, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3052, file: !2513, line: 59, baseType: !32, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3052, file: !2513, line: 60, baseType: !32, size: 64, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3052, file: !2513, line: 61, baseType: !32, size: 64, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3052, file: !2513, line: 64, baseType: !32, size: 64, offset: 576)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3052, file: !2513, line: 65, baseType: !32, size: 64, offset: 640)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3052, file: !2513, line: 66, baseType: !32, size: 64, offset: 704)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3052, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3052, file: !2513, line: 70, baseType: !3068, size: 64, offset: 832)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3052, file: !2513, line: 72, baseType: !25, size: 32, offset: 896)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3052, file: !2513, line: 73, baseType: !25, size: 32, offset: 928)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3052, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3052, file: !2513, line: 77, baseType: !76, size: 16, offset: 1024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3052, file: !2513, line: 78, baseType: !2540, size: 8, offset: 1040)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3052, file: !2513, line: 79, baseType: !2542, size: 8, offset: 1048)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3052, file: !2513, line: 81, baseType: !2546, size: 64, offset: 1088)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3052, file: !2513, line: 89, baseType: !2549, size: 64, offset: 1152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3052, file: !2513, line: 91, baseType: !2551, size: 64, offset: 1216)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3052, file: !2513, line: 92, baseType: !2554, size: 64, offset: 1280)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3052, file: !2513, line: 93, baseType: !3068, size: 64, offset: 1344)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3052, file: !2513, line: 94, baseType: !31, size: 64, offset: 1408)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3052, file: !2513, line: 95, baseType: !77, size: 64, offset: 1472)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3052, file: !2513, line: 96, baseType: !25, size: 32, offset: 1536)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3052, file: !2513, line: 98, baseType: !2561, size: 160, offset: 1568)
!3084 = !{!3085, !3086, !3088, !3089}
!3085 = !DILocalVariable(name: "stream", arg: 1, scope: !3046, file: !3047, line: 56, type: !3050)
!3086 = !DILocalVariable(name: "some_pending", scope: !3046, file: !3047, line: 58, type: !3087)
!3087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3088 = !DILocalVariable(name: "prev_fail", scope: !3046, file: !3047, line: 59, type: !3087)
!3089 = !DILocalVariable(name: "fclose_fail", scope: !3046, file: !3047, line: 60, type: !3087)
!3090 = !DILocation(line: 56, column: 21, scope: !3046)
!3091 = !DILocation(line: 58, column: 30, scope: !3046)
!3092 = !DILocalVariable(name: "__stream", arg: 1, scope: !3093, file: !3094, line: 135, type: !3050)
!3093 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3094, file: !3094, line: 135, type: !3048, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3095)
!3094 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3095 = !{!3092}
!3096 = !DILocation(line: 135, column: 1, scope: !3093, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 59, column: 27, scope: !3046)
!3098 = !DILocation(line: 137, column: 10, scope: !3093, inlinedAt: !3097)
!3099 = !{!3100, !702, i64 0}
!3100 = !{!"_IO_FILE", !702, i64 0, !579, i64 8, !579, i64 16, !579, i64 24, !579, i64 32, !579, i64 40, !579, i64 48, !579, i64 56, !579, i64 64, !579, i64 72, !579, i64 80, !579, i64 88, !579, i64 96, !579, i64 104, !702, i64 112, !702, i64 116, !1835, i64 120, !1209, i64 128, !580, i64 130, !580, i64 131, !579, i64 136, !1835, i64 144, !579, i64 152, !579, i64 160, !579, i64 168, !579, i64 176, !1835, i64 184, !702, i64 192, !580, i64 196}
!3101 = !DILocation(line: 59, column: 43, scope: !3046)
!3102 = !DILocation(line: 60, column: 29, scope: !3046)
!3103 = !DILocation(line: 60, column: 45, scope: !3046)
!3104 = !DILocation(line: 70, column: 17, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3046, file: !3047, line: 70, column: 7)
!3106 = !DILocation(line: 58, column: 50, scope: !3046)
!3107 = !DILocation(line: 70, column: 33, scope: !3105)
!3108 = !DILocation(line: 70, column: 53, scope: !3105)
!3109 = !DILocation(line: 70, column: 59, scope: !3105)
!3110 = !DILocation(line: 70, column: 7, scope: !3046)
!3111 = !DILocation(line: 72, column: 11, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3105, file: !3047, line: 71, column: 5)
!3113 = !DILocation(line: 73, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3112, file: !3047, line: 72, column: 11)
!3115 = !DILocation(line: 73, column: 15, scope: !3114)
!3116 = !DILocation(line: 0, scope: !3046)
!3117 = !DILocation(line: 78, column: 1, scope: !3046)
!3118 = distinct !DISubprogram(name: "hard_locale", scope: !3119, file: !3119, line: 38, type: !3120, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !168, retainedNodes: !3122)
!3119 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!17, !25}
!3122 = !{!3123, !3124, !3125}
!3123 = !DILocalVariable(name: "category", arg: 1, scope: !3118, file: !3119, line: 38, type: !25)
!3124 = !DILocalVariable(name: "hard", scope: !3118, file: !3119, line: 40, type: !17)
!3125 = !DILocalVariable(name: "p", scope: !3118, file: !3119, line: 41, type: !6)
!3126 = !DILocation(line: 38, column: 18, scope: !3118)
!3127 = !DILocation(line: 40, column: 8, scope: !3118)
!3128 = !DILocation(line: 41, column: 19, scope: !3118)
!3129 = !DILocation(line: 41, column: 15, scope: !3118)
!3130 = !DILocation(line: 43, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3118, file: !3119, line: 43, column: 7)
!3132 = !DILocation(line: 43, column: 7, scope: !3118)
!3133 = !DILocation(line: 47, column: 15, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3119, line: 47, column: 15)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3119, line: 46, column: 9)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3119, line: 45, column: 11)
!3137 = distinct !DILexicalBlock(scope: !3131, file: !3119, line: 44, column: 5)
!3138 = !DILocation(line: 47, column: 31, scope: !3134)
!3139 = !DILocation(line: 47, column: 36, scope: !3134)
!3140 = !DILocation(line: 47, column: 39, scope: !3134)
!3141 = !DILocation(line: 47, column: 59, scope: !3134)
!3142 = !DILocation(line: 47, column: 15, scope: !3135)
!3143 = !DILocation(line: 48, column: 13, scope: !3134)
!3144 = !DILocation(line: 71, column: 3, scope: !3118)
!3145 = distinct !DISubprogram(name: "locale_charset", scope: !3146, file: !3146, line: 687, type: !3147, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !170, retainedNodes: !3149)
!3146 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!6}
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "codeset", scope: !3145, file: !3146, line: 689, type: !6)
!3151 = !DILocation(line: 696, column: 13, scope: !3145)
!3152 = !DILocation(line: 689, column: 15, scope: !3145)
!3153 = !DILocation(line: 754, column: 15, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3145, file: !3146, line: 754, column: 7)
!3155 = !DILocation(line: 754, column: 7, scope: !3145)
!3156 = !DILocation(line: 907, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3146, line: 907, column: 13)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3146, line: 897, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3145, file: !3146, line: 856, column: 3)
!3160 = !DILocation(line: 907, column: 24, scope: !3157)
!3161 = !DILocation(line: 907, column: 13, scope: !3158)
!3162 = !DILocation(line: 995, column: 3, scope: !3145)
!3163 = distinct !DISubprogram(name: "rpl_fclose", scope: !3164, file: !3164, line: 58, type: !3165, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !559, retainedNodes: !3201)
!3164 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!25, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !3169)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3169, file: !2513, line: 51, baseType: !25, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3169, file: !2513, line: 54, baseType: !32, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3169, file: !2513, line: 55, baseType: !32, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3169, file: !2513, line: 56, baseType: !32, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3169, file: !2513, line: 57, baseType: !32, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3169, file: !2513, line: 58, baseType: !32, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3169, file: !2513, line: 59, baseType: !32, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3169, file: !2513, line: 60, baseType: !32, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3169, file: !2513, line: 61, baseType: !32, size: 64, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3169, file: !2513, line: 64, baseType: !32, size: 64, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3169, file: !2513, line: 65, baseType: !32, size: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3169, file: !2513, line: 66, baseType: !32, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3169, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3169, file: !2513, line: 70, baseType: !3185, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3169, file: !2513, line: 72, baseType: !25, size: 32, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3169, file: !2513, line: 73, baseType: !25, size: 32, offset: 928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3169, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3169, file: !2513, line: 77, baseType: !76, size: 16, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3169, file: !2513, line: 78, baseType: !2540, size: 8, offset: 1040)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3169, file: !2513, line: 79, baseType: !2542, size: 8, offset: 1048)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3169, file: !2513, line: 81, baseType: !2546, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3169, file: !2513, line: 89, baseType: !2549, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3169, file: !2513, line: 91, baseType: !2551, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3169, file: !2513, line: 92, baseType: !2554, size: 64, offset: 1280)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3169, file: !2513, line: 93, baseType: !3185, size: 64, offset: 1344)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3169, file: !2513, line: 94, baseType: !31, size: 64, offset: 1408)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3169, file: !2513, line: 95, baseType: !77, size: 64, offset: 1472)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3169, file: !2513, line: 96, baseType: !25, size: 32, offset: 1536)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3169, file: !2513, line: 98, baseType: !2561, size: 160, offset: 1568)
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DILocalVariable(name: "fp", arg: 1, scope: !3163, file: !3164, line: 58, type: !3167)
!3203 = !DILocalVariable(name: "saved_errno", scope: !3163, file: !3164, line: 60, type: !25)
!3204 = !DILocalVariable(name: "fd", scope: !3163, file: !3164, line: 61, type: !25)
!3205 = !DILocalVariable(name: "result", scope: !3163, file: !3164, line: 62, type: !25)
!3206 = !DILocation(line: 58, column: 19, scope: !3163)
!3207 = !DILocation(line: 60, column: 7, scope: !3163)
!3208 = !DILocation(line: 62, column: 7, scope: !3163)
!3209 = !DILocation(line: 65, column: 8, scope: !3163)
!3210 = !DILocation(line: 61, column: 7, scope: !3163)
!3211 = !DILocation(line: 66, column: 10, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3163, file: !3164, line: 66, column: 7)
!3213 = !DILocation(line: 66, column: 7, scope: !3163)
!3214 = !DILocation(line: 67, column: 12, scope: !3212)
!3215 = !DILocation(line: 67, column: 5, scope: !3212)
!3216 = !DILocation(line: 72, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3163, file: !3164, line: 72, column: 7)
!3218 = !DILocation(line: 72, column: 23, scope: !3217)
!3219 = !DILocation(line: 72, column: 33, scope: !3217)
!3220 = !DILocation(line: 72, column: 26, scope: !3217)
!3221 = !DILocation(line: 72, column: 59, scope: !3217)
!3222 = !DILocation(line: 73, column: 7, scope: !3217)
!3223 = !DILocation(line: 73, column: 10, scope: !3217)
!3224 = !DILocation(line: 72, column: 7, scope: !3163)
!3225 = !DILocation(line: 100, column: 12, scope: !3163)
!3226 = !DILocation(line: 105, column: 7, scope: !3163)
!3227 = !DILocation(line: 74, column: 19, scope: !3217)
!3228 = !DILocation(line: 105, column: 19, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3163, file: !3164, line: 105, column: 7)
!3230 = !DILocation(line: 107, column: 13, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3229, file: !3164, line: 106, column: 5)
!3232 = !DILocation(line: 109, column: 5, scope: !3231)
!3233 = !DILocation(line: 0, scope: !3163)
!3234 = !DILocation(line: 112, column: 1, scope: !3163)
!3235 = distinct !DISubprogram(name: "rpl_fflush", scope: !3236, file: !3236, line: 129, type: !3237, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !561, retainedNodes: !3273)
!3236 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!25, !3239}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3241, file: !2513, line: 51, baseType: !25, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3241, file: !2513, line: 54, baseType: !32, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3241, file: !2513, line: 55, baseType: !32, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3241, file: !2513, line: 56, baseType: !32, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3241, file: !2513, line: 57, baseType: !32, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3241, file: !2513, line: 58, baseType: !32, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3241, file: !2513, line: 59, baseType: !32, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3241, file: !2513, line: 60, baseType: !32, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3241, file: !2513, line: 61, baseType: !32, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3241, file: !2513, line: 64, baseType: !32, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3241, file: !2513, line: 65, baseType: !32, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3241, file: !2513, line: 66, baseType: !32, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3241, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3241, file: !2513, line: 70, baseType: !3257, size: 64, offset: 832)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3241, file: !2513, line: 72, baseType: !25, size: 32, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3241, file: !2513, line: 73, baseType: !25, size: 32, offset: 928)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3241, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3241, file: !2513, line: 77, baseType: !76, size: 16, offset: 1024)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3241, file: !2513, line: 78, baseType: !2540, size: 8, offset: 1040)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3241, file: !2513, line: 79, baseType: !2542, size: 8, offset: 1048)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3241, file: !2513, line: 81, baseType: !2546, size: 64, offset: 1088)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3241, file: !2513, line: 89, baseType: !2549, size: 64, offset: 1152)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3241, file: !2513, line: 91, baseType: !2551, size: 64, offset: 1216)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3241, file: !2513, line: 92, baseType: !2554, size: 64, offset: 1280)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3241, file: !2513, line: 93, baseType: !3257, size: 64, offset: 1344)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3241, file: !2513, line: 94, baseType: !31, size: 64, offset: 1408)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3241, file: !2513, line: 95, baseType: !77, size: 64, offset: 1472)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3241, file: !2513, line: 96, baseType: !25, size: 32, offset: 1536)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3241, file: !2513, line: 98, baseType: !2561, size: 160, offset: 1568)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "stream", arg: 1, scope: !3235, file: !3236, line: 129, type: !3239)
!3275 = !DILocation(line: 129, column: 19, scope: !3235)
!3276 = !DILocation(line: 150, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3235, file: !3236, line: 150, column: 7)
!3278 = !DILocation(line: 150, column: 22, scope: !3277)
!3279 = !DILocation(line: 150, column: 27, scope: !3277)
!3280 = !DILocation(line: 150, column: 7, scope: !3235)
!3281 = !DILocation(line: 151, column: 12, scope: !3277)
!3282 = !DILocation(line: 151, column: 5, scope: !3277)
!3283 = !DILocalVariable(name: "fp", arg: 1, scope: !3284, file: !3236, line: 41, type: !3239)
!3284 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3236, file: !3236, line: 41, type: !3285, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !561, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3239}
!3287 = !{!3283}
!3288 = !DILocation(line: 41, column: 48, scope: !3284, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 156, column: 3, scope: !3235)
!3290 = !DILocation(line: 43, column: 11, scope: !3291, inlinedAt: !3289)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !3236, line: 43, column: 7)
!3292 = !DILocation(line: 43, column: 18, scope: !3291, inlinedAt: !3289)
!3293 = !DILocation(line: 43, column: 7, scope: !3284, inlinedAt: !3289)
!3294 = !DILocation(line: 45, column: 5, scope: !3291, inlinedAt: !3289)
!3295 = !DILocation(line: 158, column: 10, scope: !3235)
!3296 = !DILocation(line: 158, column: 3, scope: !3235)
!3297 = !DILocation(line: 0, scope: !3235)
!3298 = !DILocation(line: 232, column: 1, scope: !3235)
!3299 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3300, file: !3300, line: 28, type: !3301, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !563, retainedNodes: !3338)
!3300 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!25, !3303, !3337, !25}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !3305)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3305, file: !2513, line: 51, baseType: !25, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3305, file: !2513, line: 54, baseType: !32, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3305, file: !2513, line: 55, baseType: !32, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3305, file: !2513, line: 56, baseType: !32, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3305, file: !2513, line: 57, baseType: !32, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3305, file: !2513, line: 58, baseType: !32, size: 64, offset: 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3305, file: !2513, line: 59, baseType: !32, size: 64, offset: 384)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3305, file: !2513, line: 60, baseType: !32, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3305, file: !2513, line: 61, baseType: !32, size: 64, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3305, file: !2513, line: 64, baseType: !32, size: 64, offset: 576)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3305, file: !2513, line: 65, baseType: !32, size: 64, offset: 640)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3305, file: !2513, line: 66, baseType: !32, size: 64, offset: 704)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3305, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3305, file: !2513, line: 70, baseType: !3321, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3305, file: !2513, line: 72, baseType: !25, size: 32, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3305, file: !2513, line: 73, baseType: !25, size: 32, offset: 928)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3305, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3305, file: !2513, line: 77, baseType: !76, size: 16, offset: 1024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3305, file: !2513, line: 78, baseType: !2540, size: 8, offset: 1040)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3305, file: !2513, line: 79, baseType: !2542, size: 8, offset: 1048)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3305, file: !2513, line: 81, baseType: !2546, size: 64, offset: 1088)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3305, file: !2513, line: 89, baseType: !2549, size: 64, offset: 1152)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3305, file: !2513, line: 91, baseType: !2551, size: 64, offset: 1216)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3305, file: !2513, line: 92, baseType: !2554, size: 64, offset: 1280)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3305, file: !2513, line: 93, baseType: !3321, size: 64, offset: 1344)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3305, file: !2513, line: 94, baseType: !31, size: 64, offset: 1408)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3305, file: !2513, line: 95, baseType: !77, size: 64, offset: 1472)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3305, file: !2513, line: 96, baseType: !25, size: 32, offset: 1536)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3305, file: !2513, line: 98, baseType: !2561, size: 160, offset: 1568)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2683, line: 63, baseType: !2535)
!3338 = !{!3339, !3340, !3341, !3342}
!3339 = !DILocalVariable(name: "fp", arg: 1, scope: !3299, file: !3300, line: 28, type: !3303)
!3340 = !DILocalVariable(name: "offset", arg: 2, scope: !3299, file: !3300, line: 28, type: !3337)
!3341 = !DILocalVariable(name: "whence", arg: 3, scope: !3299, file: !3300, line: 28, type: !25)
!3342 = !DILocalVariable(name: "pos", scope: !3343, file: !3300, line: 117, type: !3337)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3300, line: 113, column: 5)
!3344 = distinct !DILexicalBlock(scope: !3299, file: !3300, line: 52, column: 7)
!3345 = !DILocation(line: 28, column: 15, scope: !3299)
!3346 = !DILocation(line: 28, column: 25, scope: !3299)
!3347 = !DILocation(line: 28, column: 37, scope: !3299)
!3348 = !DILocation(line: 52, column: 11, scope: !3344)
!3349 = !{!3100, !579, i64 16}
!3350 = !DILocation(line: 52, column: 31, scope: !3344)
!3351 = !{!3100, !579, i64 8}
!3352 = !DILocation(line: 52, column: 24, scope: !3344)
!3353 = !DILocation(line: 53, column: 7, scope: !3344)
!3354 = !DILocation(line: 53, column: 14, scope: !3344)
!3355 = !{!3100, !579, i64 40}
!3356 = !DILocation(line: 53, column: 35, scope: !3344)
!3357 = !{!3100, !579, i64 32}
!3358 = !DILocation(line: 53, column: 28, scope: !3344)
!3359 = !DILocation(line: 54, column: 7, scope: !3344)
!3360 = !DILocation(line: 54, column: 14, scope: !3344)
!3361 = !{!3100, !579, i64 72}
!3362 = !DILocation(line: 54, column: 28, scope: !3344)
!3363 = !DILocation(line: 52, column: 7, scope: !3299)
!3364 = !DILocation(line: 117, column: 26, scope: !3343)
!3365 = !DILocation(line: 117, column: 19, scope: !3343)
!3366 = !DILocation(line: 117, column: 13, scope: !3343)
!3367 = !DILocation(line: 118, column: 15, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3343, file: !3300, line: 118, column: 11)
!3369 = !DILocation(line: 118, column: 11, scope: !3343)
!3370 = !DILocation(line: 129, column: 11, scope: !3343)
!3371 = !DILocation(line: 129, column: 18, scope: !3343)
!3372 = !DILocation(line: 130, column: 11, scope: !3343)
!3373 = !DILocation(line: 130, column: 19, scope: !3343)
!3374 = !{!3100, !1835, i64 144}
!3375 = !DILocation(line: 161, column: 7, scope: !3343)
!3376 = !DILocation(line: 163, column: 10, scope: !3299)
!3377 = !DILocation(line: 163, column: 3, scope: !3299)
!3378 = !DILocation(line: 0, scope: !3299)
!3379 = !DILocation(line: 164, column: 1, scope: !3299)
