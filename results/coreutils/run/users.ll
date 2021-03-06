; ModuleID = 'coreutils-8.30/src/users.bc'
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !50
@.str.31 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !56
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !61
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !65
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.42 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.43, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.44, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !72
@.str.1.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !88
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !95
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !123
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !130
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !142
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !149
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !156
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !144
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !158
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.78 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.91 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.92 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.93 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.96 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !164
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !621 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !626, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %0, metadata !625, metadata !DIExpression()), !dbg !649
  %3 = icmp eq i32 %0, 0, !dbg !650
  br i1 %3, label %9, label %4, !dbg !651

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !652, !tbaa !654
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !652
  %7 = load i8*, i8** @program_name, align 8, !dbg !652, !tbaa !654
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !652
  br label %56, !dbg !652

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !658
  %11 = load i8*, i8** @program_name, align 8, !dbg !658, !tbaa !654
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !658
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !659
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !659
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !660
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !654
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16), !dbg !660
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !661
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !654
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !661
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #11, !dbg !662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %21, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !645
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !663
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !634, metadata !DIExpression()) #11, !dbg !664
  br label %23, !dbg !665

; <label>:23:                                     ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %26 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %24) #14, !dbg !665
  %27 = icmp eq i32 %26, 0, !dbg !665
  br i1 %27, label %33, label %28, !dbg !666

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !668
  %31 = load i8*, i8** %30, align 8, !dbg !668, !tbaa !669
  %32 = icmp eq i8* %31, null, !dbg !671
  br i1 %32, label %33, label %23, !dbg !672, !llvm.loop !673

; <label>:33:                                     ; preds = %28, %23
  %34 = phi %struct.infomap* [ %29, %28 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !634, metadata !DIExpression()) #11, !dbg !664
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !676
  %36 = load i8*, i8** %35, align 8, !dbg !676, !tbaa !678
  %37 = icmp eq i8* %36, null, !dbg !679
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %36, !dbg !680
  call void @llvm.dbg.value(metadata i8* %38, metadata !633, metadata !DIExpression()) #11, !dbg !681
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !682
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !682
  %41 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !683
  call void @llvm.dbg.value(metadata i8* %41, metadata !641, metadata !DIExpression()) #11, !dbg !684
  %42 = icmp eq i8* %41, null, !dbg !685
  br i1 %42, label %49, label %43, !dbg !687

; <label>:43:                                     ; preds = %33
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !688
  %45 = icmp eq i32 %44, 0, !dbg !688
  br i1 %45, label %49, label %46, !dbg !689

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !690
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !690
  br label %49, !dbg !692

; <label>:49:                                     ; preds = %33, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !693
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !693
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !694
  %53 = icmp eq i8* %38, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !694
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !694
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* %38, i8* %54) #11, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #11, !dbg !695
  br label %56

; <label>:56:                                     ; preds = %49, %4
  tail call void @exit(i32 %0) #15, !dbg !696
  unreachable, !dbg !696
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !697 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i8** %1, metadata !702, metadata !DIExpression()), !dbg !704
  %3 = load i8*, i8** %1, align 8, !dbg !705, !tbaa !654
  tail call void @set_program_name(i8* %3) #11, !dbg !706
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !707
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !708
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !709
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !710
  %8 = load i8*, i8** @Version, align 8, !dbg !711, !tbaa !654
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !712
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !713
  %10 = icmp eq i32 %9, -1, !dbg !715
  br i1 %10, label %12, label %11, !dbg !716

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !717
  unreachable, !dbg !717

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !718, !tbaa !719
  %14 = sub nsw i32 %0, %13, !dbg !721
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
  ], !dbg !722

; <label>:15:                                     ; preds = %12
  tail call fastcc void @users(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1), !dbg !723
  br label %28, !dbg !725

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %13 to i64, !dbg !726
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !726
  %19 = load i8*, i8** %18, align 8, !dbg !726, !tbaa !654
  tail call fastcc void @users(i8* %19, i32 0), !dbg !727
  br label %28, !dbg !728

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !729
  %22 = load i32, i32* @optind, align 4, !dbg !730, !tbaa !719
  %23 = add nsw i32 %22, 1, !dbg !731
  %24 = sext i32 %23 to i64, !dbg !732
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !732
  %26 = load i8*, i8** %25, align 8, !dbg !732, !tbaa !654
  %27 = tail call i8* @quote(i8* %26) #11, !dbg !733
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #11, !dbg !734
  tail call void @usage(i32 1) #16, !dbg !735
  unreachable, !dbg !735

; <label>:28:                                     ; preds = %16, %15
  ret i32 0, !dbg !736
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
define internal fastcc void @users(i8*, i32) unnamed_addr #7 !dbg !737 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !741, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 %1, metadata !742, metadata !DIExpression()), !dbg !784
  %5 = bitcast i64* %3 to i8*, !dbg !785
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !785
  %6 = bitcast %struct.utmpx** %4 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11, !dbg !786
  call void @llvm.dbg.value(metadata i64* %3, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !787
  call void @llvm.dbg.value(metadata %struct.utmpx** %4, metadata !744, metadata !DIExpression(DW_OP_deref)), !dbg !788
  %7 = call i32 @read_utmp(i8* %0, i64* nonnull %3, %struct.utmpx** nonnull %4, i32 %1) #11, !dbg !789
  %8 = icmp eq i32 %7, 0, !dbg !791
  br i1 %8, label %13, label %9, !dbg !792

; <label>:9:                                      ; preds = %2
  %10 = tail call i32* @__errno_location() #17, !dbg !793
  %11 = load i32, i32* %10, align 4, !dbg !793, !tbaa !719
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !793
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %12) #11, !dbg !793
  unreachable, !dbg !793

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !794, !tbaa !795
  call void @llvm.dbg.value(metadata i64 %14, metadata !743, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i64 %14, metadata !797, metadata !DIExpression()) #11, !dbg !816
  call void @llvm.dbg.value(metadata i64 %14, metadata !818, metadata !DIExpression()) #11, !dbg !824
  call void @llvm.dbg.value(metadata i64 8, metadata !823, metadata !DIExpression()) #11, !dbg !826
  %15 = icmp ugt i64 %14, 1152921504606846975, !dbg !827
  br i1 %15, label %16, label %17, !dbg !829

; <label>:16:                                     ; preds = %13
  call void @xalloc_die() #15, !dbg !830
  unreachable, !dbg !830

; <label>:17:                                     ; preds = %13
  %18 = load %struct.utmpx*, %struct.utmpx** %4, align 8, !dbg !831, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !804, metadata !DIExpression()) #11, !dbg !832
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !744, metadata !DIExpression()), !dbg !788
  %19 = shl i64 %14, 3, !dbg !833
  %20 = call noalias i8* @xmalloc(i64 %19) #11, !dbg !834
  %21 = bitcast i8* %20 to i8**, !dbg !835
  call void @llvm.dbg.value(metadata i8** %21, metadata !805, metadata !DIExpression()) #11, !dbg !836
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %14, metadata !797, metadata !DIExpression()) #11, !dbg !816
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !804, metadata !DIExpression()) #11, !dbg !832
  call void @llvm.dbg.value(metadata i64 %14, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !816
  %22 = icmp eq i64 %14, 0, !dbg !838
  br i1 %22, label %23, label %24, !dbg !838

; <label>:23:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @qsort(i8* %20, i64 0, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !839
  call void @llvm.dbg.value(metadata i64 0, metadata !806, metadata !DIExpression()) #11, !dbg !840
  br label %76, !dbg !841

; <label>:24:                                     ; preds = %17, %40
  %25 = phi i64 [ %28, %40 ], [ %14, %17 ]
  %26 = phi %struct.utmpx* [ %42, %40 ], [ %18, %17 ]
  %27 = phi i64 [ %41, %40 ], [ 0, %17 ]
  %28 = add i64 %25, -1, !dbg !842
  call void @llvm.dbg.value(metadata %struct.utmpx* %26, metadata !804, metadata !DIExpression()) #11, !dbg !832
  call void @llvm.dbg.value(metadata i64 %27, metadata !807, metadata !DIExpression()) #11, !dbg !837
  %29 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 4, i64 0, !dbg !843
  %30 = load i8, i8* %29, align 4, !dbg !843, !tbaa !844
  %31 = icmp eq i8 %30, 0, !dbg !843
  br i1 %31, label %40, label %32, !dbg !843

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 0, !dbg !843
  %34 = load i16, i16* %33, align 4, !dbg !843, !tbaa !845
  %35 = icmp eq i16 %34, 7, !dbg !843
  br i1 %35, label %36, label %40, !dbg !850

; <label>:36:                                     ; preds = %32
  %37 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %26) #11, !dbg !851
  call void @llvm.dbg.value(metadata i8* %37, metadata !808, metadata !DIExpression()) #11, !dbg !852
  %38 = getelementptr inbounds i8*, i8** %21, i64 %27, !dbg !853
  store i8* %37, i8** %38, align 8, !dbg !854, !tbaa !654
  %39 = add i64 %27, 1, !dbg !855
  call void @llvm.dbg.value(metadata i64 %39, metadata !807, metadata !DIExpression()) #11, !dbg !837
  br label %40, !dbg !856

; <label>:40:                                     ; preds = %36, %32, %24
  %41 = phi i64 [ %39, %36 ], [ %27, %32 ], [ %27, %24 ], !dbg !857
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 1, !dbg !858
  call void @llvm.dbg.value(metadata i64 %28, metadata !797, metadata !DIExpression()) #11, !dbg !816
  call void @llvm.dbg.value(metadata %struct.utmpx* %42, metadata !804, metadata !DIExpression()) #11, !dbg !832
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %28, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !816
  %43 = icmp eq i64 %28, 0, !dbg !838
  br i1 %43, label %44, label %24, !dbg !838, !llvm.loop !859

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @llvm.dbg.value(metadata i64 %41, metadata !807, metadata !DIExpression()) #11, !dbg !837
  call void @qsort(i8* %20, i64 %41, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !839
  call void @llvm.dbg.value(metadata i64 0, metadata !806, metadata !DIExpression()) #11, !dbg !840
  %45 = icmp eq i64 %41, 0, !dbg !862
  br i1 %45, label %76, label %46, !dbg !841

; <label>:46:                                     ; preds = %44
  %47 = add i64 %41, -1
  br label %48, !dbg !841

; <label>:48:                                     ; preds = %67, %46
  %49 = phi i64 [ 0, %46 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !806, metadata !DIExpression()) #11, !dbg !840
  %50 = icmp ult i64 %49, %47, !dbg !863
  %51 = getelementptr inbounds i8*, i8** %21, i64 %49, !dbg !864
  %52 = load i8*, i8** %51, align 8, !dbg !864, !tbaa !654
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !864, !tbaa !654
  %54 = call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53) #11, !dbg !864
  %55 = select i1 %50, i32 32, i32 10, !dbg !865
  call void @llvm.dbg.value(metadata i32 %55, metadata !866, metadata !DIExpression()) #11, !dbg !872
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !874, !tbaa !654
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 5, !dbg !874
  %58 = load i8*, i8** %57, align 8, !dbg !874, !tbaa !875
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 6, !dbg !874
  %60 = load i8*, i8** %59, align 8, !dbg !874, !tbaa !877
  %61 = icmp ult i8* %58, %60, !dbg !874
  br i1 %61, label %64, label %62, !dbg !874, !prof !878

; <label>:62:                                     ; preds = %48
  %63 = call i32 @__overflow(%struct._IO_FILE* %56, i32 %55) #11, !dbg !874
  br label %67, !dbg !874

; <label>:64:                                     ; preds = %48
  %65 = trunc i32 %55 to i8, !dbg !874
  %66 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !874
  store i8* %66, i8** %57, align 8, !dbg !874, !tbaa !875
  store i8 %65, i8* %58, align 1, !dbg !874, !tbaa !844
  br label %67, !dbg !874

; <label>:67:                                     ; preds = %64, %62
  %68 = add nuw i64 %49, 1, !dbg !879
  call void @llvm.dbg.value(metadata i64 %68, metadata !806, metadata !DIExpression()) #11, !dbg !840
  %69 = icmp eq i64 %68, %41, !dbg !862
  br i1 %69, label %70, label %48, !dbg !841, !llvm.loop !880

; <label>:70:                                     ; preds = %67, %70
  %71 = phi i64 [ %74, %70 ], [ 0, %67 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !806, metadata !DIExpression()) #11, !dbg !840
  %72 = getelementptr inbounds i8*, i8** %21, i64 %71, !dbg !883
  %73 = load i8*, i8** %72, align 8, !dbg !883, !tbaa !654
  call void @free(i8* %73) #11, !dbg !886
  %74 = add nuw i64 %71, 1, !dbg !887
  call void @llvm.dbg.value(metadata i64 %74, metadata !806, metadata !DIExpression()) #11, !dbg !840
  %75 = icmp eq i64 %74, %41, !dbg !888
  br i1 %75, label %76, label %70, !dbg !889, !llvm.loop !890

; <label>:76:                                     ; preds = %70, %23, %44
  call void @free(i8* %20) #11, !dbg !893
  %77 = bitcast %struct.utmpx** %4 to i8**, !dbg !894
  %78 = load i8*, i8** %77, align 8, !dbg !894, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.utmpx** %4, metadata !744, metadata !DIExpression(DW_OP_deref)), !dbg !788
  call void @free(i8* %78) #11, !dbg !895
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11, !dbg !896
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !896
  ret void, !dbg !896
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @userid_compare(i8* nocapture readonly, i8* nocapture readonly) #9 !dbg !897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !903, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i8* %1, metadata !904, metadata !DIExpression()), !dbg !908
  %3 = bitcast i8* %0 to i8**, !dbg !909
  call void @llvm.dbg.value(metadata i8** %3, metadata !905, metadata !DIExpression()), !dbg !910
  %4 = bitcast i8* %1 to i8**, !dbg !911
  call void @llvm.dbg.value(metadata i8** %4, metadata !906, metadata !DIExpression()), !dbg !912
  %5 = load i8*, i8** %3, align 8, !dbg !913, !tbaa !654
  %6 = load i8*, i8** %4, align 8, !dbg !914, !tbaa !654
  %7 = tail call i32 @strcmp(i8* %5, i8* %6) #14, !dbg !915
  ret i32 %7, !dbg !916
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !919, metadata !DIExpression()), !dbg !920
  store i8* %0, i8** @file_name, align 8, !dbg !921, !tbaa !654
  ret void, !dbg !922
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !923 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !927, metadata !DIExpression()), !dbg !928
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !929, !tbaa !930
  ret void, !dbg !932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !933 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !940, !tbaa !654
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !941
  %3 = icmp eq i32 %2, 0, !dbg !942
  br i1 %3, label %22, label %4, !dbg !943

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !944, !tbaa !930, !range !945
  %6 = icmp eq i8 %5, 0, !dbg !944
  br i1 %6, label %11, label %7, !dbg !946

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !947
  %9 = load i32, i32* %8, align 4, !dbg !947, !tbaa !719
  %10 = icmp eq i32 %9, 32, !dbg !948
  br i1 %10, label %22, label %11, !dbg !949

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !950
  call void @llvm.dbg.value(metadata i8* %12, metadata !937, metadata !DIExpression()), !dbg !951
  %13 = load i8*, i8** @file_name, align 8, !dbg !952, !tbaa !654
  %14 = icmp eq i8* %13, null, !dbg !952
  %15 = tail call i32* @__errno_location() #17, !dbg !954
  %16 = load i32, i32* %15, align 4, !dbg !954, !tbaa !719
  br i1 %14, label %19, label %17, !dbg !955

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !956
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !957
  br label %20, !dbg !957

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #11, !dbg !958
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !959, !tbaa !719
  tail call void @_exit(i32 %21) #15, !dbg !960
  unreachable, !dbg !960

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !961, !tbaa !654
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !963
  %25 = icmp eq i32 %24, 0, !dbg !964
  br i1 %25, label %28, label %26, !dbg !965

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !966, !tbaa !719
  tail call void @_exit(i32 %27) #15, !dbg !967
  unreachable, !dbg !967

; <label>:28:                                     ; preds = %22
  ret void, !dbg !968
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !969 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !974, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8** %1, metadata !975, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %2, metadata !976, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %3, metadata !977, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %4, metadata !978, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !979, metadata !DIExpression()), !dbg !1004
  %8 = load i32, i32* @opterr, align 4, !dbg !1005, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %8, metadata !981, metadata !DIExpression()), !dbg !1006
  store i32 0, i32* @opterr, align 4, !dbg !1007, !tbaa !719
  %9 = icmp eq i32 %0, 2, !dbg !1008
  br i1 %9, label %10, label %17, !dbg !1009

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.42, i64 0, i64 0), i32* null) #11, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %11, metadata !980, metadata !DIExpression()), !dbg !1011
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1012

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1013
  br label %17, !dbg !1014

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1015
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !1015
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !982, metadata !DIExpression()), !dbg !1016
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1017
  call void @llvm.va_start(i8* nonnull %14), !dbg !1017
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1018, !tbaa !654
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1019
  call void @exit(i32 0) #15, !dbg !1020
  unreachable, !dbg !1020

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1021, !tbaa !719
  store i32 0, i32* @optind, align 4, !dbg !1022, !tbaa !719
  ret void, !dbg !1023
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1026, metadata !DIExpression()), !dbg !1029
  %2 = icmp eq i8* %0, null, !dbg !1030
  br i1 %2, label %3, label %6, !dbg !1032

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1033, !tbaa !654
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1035
  tail call void @abort() #15, !dbg !1036
  unreachable, !dbg !1036

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %7, metadata !1027, metadata !DIExpression()), !dbg !1038
  %8 = icmp eq i8* %7, null, !dbg !1039
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1040
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %10, metadata !1028, metadata !DIExpression()), !dbg !1042
  %11 = ptrtoint i8* %10 to i64, !dbg !1043
  %12 = ptrtoint i8* %0 to i64, !dbg !1043
  %13 = sub i64 %11, %12, !dbg !1043
  %14 = icmp sgt i64 %13, 6, !dbg !1045
  br i1 %14, label %15, label %24, !dbg !1046

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1047
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #14, !dbg !1048
  %18 = icmp eq i32 %17, 0, !dbg !1049
  br i1 %18, label %19, label %24, !dbg !1050

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1026, metadata !DIExpression()), !dbg !1029
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #14, !dbg !1051
  %21 = icmp eq i32 %20, 0, !dbg !1054
  br i1 %21, label %22, label %24, !dbg !1055

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %23, metadata !1026, metadata !DIExpression()), !dbg !1029
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1058, !tbaa !654
  br label %24, !dbg !1059

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1026, metadata !DIExpression()), !dbg !1029
  store i8* %25, i8** @program_name, align 8, !dbg !1060, !tbaa !654
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1061, !tbaa !654
  ret void, !dbg !1062
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1063 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1068, metadata !DIExpression()), !dbg !1071
  %2 = tail call i32* @__errno_location() #17, !dbg !1072
  %3 = load i32, i32* %2, align 4, !dbg !1072, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %3, metadata !1069, metadata !DIExpression()), !dbg !1073
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1074
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1074
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1074
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1075
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1070, metadata !DIExpression()), !dbg !1076
  store i32 %3, i32* %2, align 4, !dbg !1077, !tbaa !719
  ret %struct.quoting_options* %8, !dbg !1078
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1079 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1085, metadata !DIExpression()), !dbg !1086
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1087
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1087
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1088
  %5 = load i32, i32* %4, align 8, !dbg !1088, !tbaa !1089
  ret i32 %5, !dbg !1091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1092 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1096, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 %1, metadata !1097, metadata !DIExpression()), !dbg !1099
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1100
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1100
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1101
  store i32 %1, i32* %5, align 8, !dbg !1102, !tbaa !1089
  ret void, !dbg !1103
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1104 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1108, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %1, metadata !1109, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %2, metadata !1110, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %1, metadata !1111, metadata !DIExpression()), !dbg !1119
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1120
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1120
  %6 = lshr i8 %1, 5, !dbg !1121
  %7 = zext i8 %6 to i64, !dbg !1121
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1122
  call void @llvm.dbg.value(metadata i32* %8, metadata !1112, metadata !DIExpression()), !dbg !1123
  %9 = and i8 %1, 31, !dbg !1124
  %10 = zext i8 %9 to i32, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %10, metadata !1114, metadata !DIExpression()), !dbg !1125
  %11 = load i32, i32* %8, align 4, !dbg !1126, !tbaa !719
  %12 = lshr i32 %11, %10, !dbg !1127
  %13 = and i32 %12, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  %14 = and i32 %2, 1, !dbg !1130
  %15 = xor i32 %13, %14, !dbg !1131
  %16 = shl i32 %15, %10, !dbg !1132
  %17 = xor i32 %16, %11, !dbg !1133
  store i32 %17, i32* %8, align 4, !dbg !1133, !tbaa !719
  ret i32 %13, !dbg !1134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1135 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1139, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 %1, metadata !1140, metadata !DIExpression()), !dbg !1143
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1144
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1139, metadata !DIExpression()), !dbg !1142
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1147
  %6 = load i32, i32* %5, align 4, !dbg !1147, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %6, metadata !1141, metadata !DIExpression()), !dbg !1149
  store i32 %1, i32* %5, align 4, !dbg !1150, !tbaa !1148
  ret i32 %6, !dbg !1151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1152 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1156, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %1, metadata !1157, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* %2, metadata !1158, metadata !DIExpression()), !dbg !1161
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1162
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1156, metadata !DIExpression()), !dbg !1159
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1165
  store i32 10, i32* %6, align 8, !dbg !1166, !tbaa !1089
  %7 = icmp ne i8* %1, null, !dbg !1167
  %8 = icmp ne i8* %2, null, !dbg !1169
  %9 = and i1 %7, %8, !dbg !1170
  br i1 %9, label %11, label %10, !dbg !1170

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1171
  unreachable, !dbg !1171

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1172
  store i8* %1, i8** %12, align 8, !dbg !1173, !tbaa !1174
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1175
  store i8* %2, i8** %13, align 8, !dbg !1176, !tbaa !1177
  ret void, !dbg !1178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1183, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %1, metadata !1184, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8* %2, metadata !1185, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %3, metadata !1186, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1187, metadata !DIExpression()), !dbg !1195
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1196
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1188, metadata !DIExpression()), !dbg !1197
  %8 = tail call i32* @__errno_location() #17, !dbg !1198
  %9 = load i32, i32* %8, align 4, !dbg !1198, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %9, metadata !1189, metadata !DIExpression()), !dbg !1199
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1200
  %11 = load i32, i32* %10, align 8, !dbg !1200, !tbaa !1089
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1201
  %13 = load i32, i32* %12, align 4, !dbg !1201, !tbaa !1148
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1202
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1203
  %16 = load i8*, i8** %15, align 8, !dbg !1203, !tbaa !1174
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1204
  %18 = load i8*, i8** %17, align 8, !dbg !1204, !tbaa !1177
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %19, metadata !1190, metadata !DIExpression()), !dbg !1206
  store i32 %9, i32* %8, align 4, !dbg !1207, !tbaa !719
  ret i64 %19, !dbg !1208
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1209 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i64 %1, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %2, metadata !1217, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %3, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %4, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %5, metadata !1220, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i32* %6, metadata !1221, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %7, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %8, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 0, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* null, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 0, metadata !1228, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8 0, metadata !1229, metadata !DIExpression()), !dbg !1289
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1290
  %14 = icmp eq i64 %13, 1, !dbg !1291
  %15 = lshr i32 %5, 1, !dbg !1292
  %16 = trunc i32 %15 to i8, !dbg !1292
  %17 = and i8 %16, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i8 %17, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 0, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 0, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 1, metadata !1234, metadata !DIExpression()), !dbg !1295
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1296

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1286
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1287
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1288
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1289
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1297
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1293
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1294
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1295
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %39, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %38, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %37, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %36, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %35, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %34, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %33, metadata !1228, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %32, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %31, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* %30, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %29, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 %28, metadata !1219, metadata !DIExpression()), !dbg !1280
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
  ], !dbg !1299

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 1, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %36, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 5, metadata !1219, metadata !DIExpression()), !dbg !1280
  br label %93, !dbg !1300

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 5, metadata !1219, metadata !DIExpression()), !dbg !1280
  %43 = and i8 %36, 1, !dbg !1301
  %44 = icmp eq i8 %43, 0, !dbg !1301
  br i1 %44, label %45, label %93, !dbg !1300

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1303
  br i1 %46, label %93, label %47, !dbg !1306

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1303, !tbaa !844
  br label %93, !dbg !1303

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %28), !dbg !1307
  call void @llvm.dbg.value(metadata i8* %49, metadata !1222, metadata !DIExpression()), !dbg !1283
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %28), !dbg !1311
  call void @llvm.dbg.value(metadata i8* %50, metadata !1223, metadata !DIExpression()), !dbg !1284
  br label %51, !dbg !1312

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %52, metadata !1222, metadata !DIExpression()), !dbg !1283
  %54 = and i8 %36, 1, !dbg !1313
  %55 = icmp eq i8 %54, 0, !dbg !1313
  br i1 %55, label %56, label %71, !dbg !1315

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()), !dbg !1285
  %57 = load i8, i8* %52, align 1, !dbg !1316, !tbaa !844
  %58 = icmp eq i8 %57, 0, !dbg !1319
  br i1 %58, label %71, label %59, !dbg !1319

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %62, metadata !1225, metadata !DIExpression()), !dbg !1285
  %63 = icmp ult i64 %62, %40, !dbg !1320
  br i1 %63, label %64, label %66, !dbg !1323

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1320
  store i8 %60, i8* %65, align 1, !dbg !1320, !tbaa !844
  br label %66, !dbg !1320

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1323
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %68, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %67, metadata !1225, metadata !DIExpression()), !dbg !1285
  %69 = load i8, i8* %68, align 1, !dbg !1316, !tbaa !844
  %70 = icmp eq i8 %69, 0, !dbg !1319
  br i1 %70, label %71, label %59, !dbg !1319, !llvm.loop !1325

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1285
  call void @llvm.dbg.value(metadata i64 %72, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8* %53, metadata !1227, metadata !DIExpression()), !dbg !1287
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %73, metadata !1228, metadata !DIExpression()), !dbg !1288
  br label %93, !dbg !1328

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1229, metadata !DIExpression()), !dbg !1289
  br label %75, !dbg !1329

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1297
  call void @llvm.dbg.value(metadata i8 %76, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 1, metadata !1231, metadata !DIExpression()), !dbg !1292
  br label %77, !dbg !1330

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1289
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1297
  call void @llvm.dbg.value(metadata i8 %79, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %78, metadata !1229, metadata !DIExpression()), !dbg !1289
  %80 = and i8 %79, 1, !dbg !1331
  %81 = icmp eq i8 %80, 0, !dbg !1331
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1333
  br label %83, !dbg !1333

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1334
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1292
  call void @llvm.dbg.value(metadata i8 %85, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %84, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  %86 = and i8 %85, 1, !dbg !1335
  %87 = icmp eq i8 %86, 0, !dbg !1335
  br i1 %87, label %88, label %93, !dbg !1337

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1338
  br i1 %89, label %93, label %90, !dbg !1341

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1338, !tbaa !844
  br label %93, !dbg !1338

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1231, metadata !DIExpression()), !dbg !1292
  br label %93, !dbg !1342

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1343
  unreachable, !dbg !1343

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1285
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], !dbg !1297
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1297
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1297
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %101, metadata !1231, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %99, metadata !1228, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %97, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 0, metadata !1224, metadata !DIExpression()), !dbg !1345
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
  br label %121, !dbg !1346

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1347
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1285
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1286
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1293
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1294
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1295
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %125, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %122, metadata !1224, metadata !DIExpression()), !dbg !1345
  %130 = icmp eq i64 %125, -1, !dbg !1348
  br i1 %130, label %131, label %135, !dbg !1349

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1350
  %133 = load i8, i8* %132, align 1, !dbg !1350, !tbaa !844
  %134 = icmp eq i8 %133, 0, !dbg !1351
  br i1 %134, label %617, label %137, !dbg !1352

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1353
  br i1 %136, label %617, label %137, !dbg !1352

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1240, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 0, metadata !1242, metadata !DIExpression()), !dbg !1356
  br i1 %107, label %138, label %153, !dbg !1357

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1359
  %140 = and i1 %108, %130, !dbg !1360
  br i1 %140, label %141, label %143, !dbg !1360

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %142, metadata !1218, metadata !DIExpression()), !dbg !1279
  br label %143, !dbg !1362

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1218, metadata !DIExpression()), !dbg !1279
  %145 = icmp ugt i64 %139, %144, !dbg !1363
  br i1 %145, label %153, label %146, !dbg !1364

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1365
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1366
  %149 = icmp ne i32 %148, 0, !dbg !1367
  %150 = or i1 %149, %110, !dbg !1368
  %151 = xor i1 %149, true, !dbg !1368
  %152 = zext i1 %151 to i8, !dbg !1368
  br i1 %150, label %153, label %661, !dbg !1368

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8 %155, metadata !1240, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i64 %154, metadata !1218, metadata !DIExpression()), !dbg !1279
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1370
  %157 = load i8, i8* %156, align 1, !dbg !1370, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %157, metadata !1235, metadata !DIExpression()), !dbg !1371
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
  ], !dbg !1372

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1373

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1374

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1241, metadata !DIExpression()), !dbg !1355
  %161 = and i8 %126, 1, !dbg !1378
  %162 = icmp eq i8 %161, 0, !dbg !1378
  %163 = and i1 %114, %162, !dbg !1378
  br i1 %163, label %164, label %180, !dbg !1378

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1380
  br i1 %165, label %166, label %168, !dbg !1384

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1380
  store i8 39, i8* %167, align 1, !dbg !1380, !tbaa !844
  br label %168, !dbg !1380

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %169, metadata !1225, metadata !DIExpression()), !dbg !1285
  %170 = icmp ult i64 %169, %129, !dbg !1385
  br i1 %170, label %171, label %173, !dbg !1388

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1385
  store i8 36, i8* %172, align 1, !dbg !1385, !tbaa !844
  br label %173, !dbg !1385

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %174, metadata !1225, metadata !DIExpression()), !dbg !1285
  %175 = icmp ult i64 %174, %129, !dbg !1389
  br i1 %175, label %176, label %178, !dbg !1392

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1389
  store i8 39, i8* %177, align 1, !dbg !1389, !tbaa !844
  br label %178, !dbg !1389

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %179, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %180, !dbg !1393

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1344
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %182, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %181, metadata !1225, metadata !DIExpression()), !dbg !1285
  %183 = icmp ult i64 %181, %129, !dbg !1394
  br i1 %183, label %184, label %186, !dbg !1397

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1394
  store i8 92, i8* %185, align 1, !dbg !1394, !tbaa !844
  br label %186, !dbg !1394

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %187, metadata !1225, metadata !DIExpression()), !dbg !1285
  br i1 %104, label %188, label %478, !dbg !1398

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1400
  %190 = icmp ult i64 %189, %154, !dbg !1401
  br i1 %190, label %191, label %467, !dbg !1402

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1403
  %193 = load i8, i8* %192, align 1, !dbg !1403, !tbaa !844
  %194 = add i8 %193, -48, !dbg !1404
  %195 = icmp ult i8 %194, 10, !dbg !1404
  br i1 %195, label %196, label %467, !dbg !1404

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1405
  br i1 %197, label %198, label %200, !dbg !1409

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1405
  store i8 48, i8* %199, align 1, !dbg !1405, !tbaa !844
  br label %200, !dbg !1405

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %201, metadata !1225, metadata !DIExpression()), !dbg !1285
  %202 = icmp ult i64 %201, %129, !dbg !1410
  br i1 %202, label %203, label %205, !dbg !1413

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1410
  store i8 48, i8* %204, align 1, !dbg !1410, !tbaa !844
  br label %205, !dbg !1410

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %206, metadata !1225, metadata !DIExpression()), !dbg !1285
  br label %467, !dbg !1414

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1415

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1416

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1417

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1419

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1421
  %213 = icmp ult i64 %212, %154, !dbg !1422
  br i1 %213, label %214, label %467, !dbg !1423

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1424
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1425
  %217 = load i8, i8* %216, align 1, !dbg !1425, !tbaa !844
  %218 = icmp eq i8 %217, 63, !dbg !1426
  br i1 %218, label %219, label %467, !dbg !1427

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1428
  %221 = load i8, i8* %220, align 1, !dbg !1428, !tbaa !844
  %222 = sext i8 %221 to i32, !dbg !1428
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
  ], !dbg !1429

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1430

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %212, metadata !1224, metadata !DIExpression()), !dbg !1345
  %225 = icmp ult i64 %123, %129, !dbg !1432
  br i1 %225, label %226, label %228, !dbg !1435

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1432
  store i8 63, i8* %227, align 1, !dbg !1432, !tbaa !844
  br label %228, !dbg !1432

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %229, metadata !1225, metadata !DIExpression()), !dbg !1285
  %230 = icmp ult i64 %229, %129, !dbg !1436
  br i1 %230, label %231, label %233, !dbg !1439

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1436
  store i8 34, i8* %232, align 1, !dbg !1436, !tbaa !844
  br label %233, !dbg !1436

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %234, metadata !1225, metadata !DIExpression()), !dbg !1285
  %235 = icmp ult i64 %234, %129, !dbg !1440
  br i1 %235, label %236, label %238, !dbg !1443

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1440
  store i8 34, i8* %237, align 1, !dbg !1440, !tbaa !844
  br label %238, !dbg !1440

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %239, metadata !1225, metadata !DIExpression()), !dbg !1285
  %240 = icmp ult i64 %239, %129, !dbg !1444
  br i1 %240, label %241, label %243, !dbg !1447

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1444
  store i8 63, i8* %242, align 1, !dbg !1444, !tbaa !844
  br label %243, !dbg !1444

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %244, metadata !1225, metadata !DIExpression()), !dbg !1285
  br label %467, !dbg !1448

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1239, metadata !DIExpression()), !dbg !1449
  br label %255, !dbg !1450

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1239, metadata !DIExpression()), !dbg !1449
  br label %255, !dbg !1451

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1239, metadata !DIExpression()), !dbg !1449
  br label %253, !dbg !1452

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1239, metadata !DIExpression()), !dbg !1449
  br label %253, !dbg !1453

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1239, metadata !DIExpression()), !dbg !1449
  br label %255, !dbg !1454

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1239, metadata !DIExpression()), !dbg !1449
  br i1 %114, label %251, label %252, !dbg !1455

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1456

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1459

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %254, metadata !1239, metadata !DIExpression()), !dbg !1449
  br i1 %113, label %255, label %661, !dbg !1462

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %256, metadata !1239, metadata !DIExpression()), !dbg !1449
  br i1 %103, label %524, label %478, !dbg !1464

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1465
  br i1 %258, label %259, label %264, !dbg !1467

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1468, !tbaa !844
  %261 = icmp ne i8 %260, 0, !dbg !1469
  %262 = icmp ne i64 %122, 0, !dbg !1470
  %263 = or i1 %262, %261, !dbg !1472
  br i1 %263, label %467, label %270, !dbg !1472

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1473
  %266 = icmp ne i64 %122, 0, !dbg !1470
  %267 = or i1 %266, %265, !dbg !1467
  br i1 %267, label %467, label %270, !dbg !1467

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1470
  br i1 %269, label %270, label %467, !dbg !1474

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1242, metadata !DIExpression()), !dbg !1356
  br label %271, !dbg !1475

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %272, metadata !1242, metadata !DIExpression()), !dbg !1356
  br i1 %113, label %467, label %661, !dbg !1476

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 1, metadata !1242, metadata !DIExpression()), !dbg !1356
  br i1 %114, label %274, label %467, !dbg !1478

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1479

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1482
  %277 = icmp ne i64 %124, 0, !dbg !1484
  %278 = or i1 %277, %276, !dbg !1485
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1485
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %280, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %279, metadata !1226, metadata !DIExpression()), !dbg !1286
  %281 = icmp ult i64 %123, %280, !dbg !1486
  br i1 %281, label %282, label %284, !dbg !1489

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1486
  store i8 39, i8* %283, align 1, !dbg !1486, !tbaa !844
  br label %284, !dbg !1486

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %285, metadata !1225, metadata !DIExpression()), !dbg !1285
  %286 = icmp ult i64 %285, %280, !dbg !1490
  br i1 %286, label %287, label %289, !dbg !1493

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1490
  store i8 92, i8* %288, align 1, !dbg !1490, !tbaa !844
  br label %289, !dbg !1490

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %290, metadata !1225, metadata !DIExpression()), !dbg !1285
  %291 = icmp ult i64 %290, %280, !dbg !1494
  br i1 %291, label %292, label %294, !dbg !1497

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1494
  store i8 39, i8* %293, align 1, !dbg !1494, !tbaa !844
  br label %294, !dbg !1494

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %295, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %467, !dbg !1498

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1499

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1243, metadata !DIExpression()), !dbg !1500
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1501
  %299 = load i16*, i16** %298, align 8, !dbg !1501, !tbaa !654
  %300 = zext i8 %157 to i64, !dbg !1501
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1501
  %302 = load i16, i16* %301, align 2, !dbg !1501, !tbaa !1503
  %303 = lshr i16 %302, 14, !dbg !1504
  %304 = trunc i16 %303 to i8, !dbg !1504
  %305 = and i8 %304, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i8 %305, metadata !1246, metadata !DIExpression()), !dbg !1505
  br label %359, !dbg !1506

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1507
  store i64 0, i64* %10, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i64 0, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 1, metadata !1246, metadata !DIExpression()), !dbg !1505
  %307 = icmp eq i64 %154, -1, !dbg !1509
  br i1 %307, label %308, label %310, !dbg !1511

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %309, metadata !1218, metadata !DIExpression()), !dbg !1279
  br label %310, !dbg !1513

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1514
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  br label %312, !dbg !1515

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1516
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1517
  call void @llvm.dbg.value(metadata i8 %314, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1518
  %315 = add i64 %313, %122, !dbg !1519
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1520
  %317 = sub i64 %311, %315, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1247, metadata !DIExpression(DW_OP_deref)), !dbg !1522
  call void @llvm.dbg.value(metadata i32* %12, metadata !1262, metadata !DIExpression(DW_OP_deref)), !dbg !1523
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %318, metadata !1265, metadata !DIExpression()), !dbg !1525
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1526

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  %320 = icmp ugt i64 %311, %315, !dbg !1527
  br i1 %320, label %321, label %344, !dbg !1529

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1243, metadata !DIExpression()), !dbg !1500
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1530
  %325 = load i8, i8* %324, align 1, !dbg !1530, !tbaa !844
  %326 = icmp eq i8 %325, 0, !dbg !1529
  br i1 %326, label %344, label %327, !dbg !1531

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %328, metadata !1243, metadata !DIExpression()), !dbg !1500
  %329 = add i64 %328, %122, !dbg !1533
  %330 = icmp ult i64 %329, %311, !dbg !1527
  br i1 %330, label %321, label %344, !dbg !1529, !llvm.loop !1534

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1535
  %333 = and i1 %116, %332, !dbg !1538
  call void @llvm.dbg.value(metadata i64 1, metadata !1266, metadata !DIExpression()), !dbg !1539
  br i1 %333, label %334, label %347, !dbg !1538

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1266, metadata !DIExpression()), !dbg !1539
  %336 = add i64 %335, %315, !dbg !1540
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1541
  %338 = load i8, i8* %337, align 1, !dbg !1541, !tbaa !844
  %339 = sext i8 %338 to i32, !dbg !1541
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1542

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %341, metadata !1266, metadata !DIExpression()), !dbg !1539
  %342 = icmp ult i64 %341, %318, !dbg !1535
  br i1 %342, label %334, label %347, !dbg !1544, !llvm.loop !1545

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %314, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %313, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %314, metadata !1246, metadata !DIExpression()), !dbg !1505
  br label %344, !dbg !1547

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %352, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1547
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1548, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %348, metadata !1262, metadata !DIExpression()), !dbg !1523
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1550
  %350 = icmp eq i32 %349, 0, !dbg !1550
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1551
  call void @llvm.dbg.value(metadata i8 %351, metadata !1246, metadata !DIExpression()), !dbg !1505
  %352 = add i64 %318, %313, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %352, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %351, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %352, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1247, metadata !DIExpression(DW_OP_deref)), !dbg !1522
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1553
  %354 = icmp eq i32 %353, 0, !dbg !1554
  br i1 %354, label %312, label %355, !dbg !1555, !llvm.loop !1556

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1558
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %94, metadata !1219, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %100, metadata !1229, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %311, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %351, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %352, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1547
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1558
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1559
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1560
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1560
  call void @llvm.dbg.value(metadata i8 %362, metadata !1246, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %361, metadata !1243, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 %360, metadata !1218, metadata !DIExpression()), !dbg !1279
  %363 = and i8 %362, 1, !dbg !1561
  %364 = icmp ne i8 %363, 0, !dbg !1561
  call void @llvm.dbg.value(metadata i8 %363, metadata !1242, metadata !DIExpression()), !dbg !1356
  %365 = icmp ult i64 %361, 2, !dbg !1562
  %366 = or i1 %364, %115, !dbg !1563
  %367 = and i1 %365, %366, !dbg !1564
  br i1 %367, label %467, label %368, !dbg !1564

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %369, metadata !1273, metadata !DIExpression()), !dbg !1566
  br label %370, !dbg !1567

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1568
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1572
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1293
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1568
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1574
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1355
  call void @llvm.dbg.value(metadata i8 %376, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %375, metadata !1240, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8 %374, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %373, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %372, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %371, metadata !1224, metadata !DIExpression()), !dbg !1345
  br i1 %366, label %423, label %377, !dbg !1578

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1579

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1241, metadata !DIExpression()), !dbg !1355
  %379 = and i8 %373, 1, !dbg !1582
  %380 = icmp eq i8 %379, 0, !dbg !1582
  %381 = and i1 %114, %380, !dbg !1582
  br i1 %381, label %382, label %398, !dbg !1582

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1584
  br i1 %383, label %384, label %386, !dbg !1588

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1584
  store i8 39, i8* %385, align 1, !dbg !1584, !tbaa !844
  br label %386, !dbg !1584

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %387, metadata !1225, metadata !DIExpression()), !dbg !1285
  %388 = icmp ult i64 %387, %129, !dbg !1589
  br i1 %388, label %389, label %391, !dbg !1592

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1589
  store i8 36, i8* %390, align 1, !dbg !1589, !tbaa !844
  br label %391, !dbg !1589

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %392, metadata !1225, metadata !DIExpression()), !dbg !1285
  %393 = icmp ult i64 %392, %129, !dbg !1593
  br i1 %393, label %394, label %396, !dbg !1596

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1593
  store i8 39, i8* %395, align 1, !dbg !1593, !tbaa !844
  br label %396, !dbg !1593

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %397, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %398, !dbg !1597

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1344
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %400, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %399, metadata !1225, metadata !DIExpression()), !dbg !1285
  %401 = icmp ult i64 %399, %129, !dbg !1598
  br i1 %401, label %402, label %404, !dbg !1601

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1598
  store i8 92, i8* %403, align 1, !dbg !1598, !tbaa !844
  br label %404, !dbg !1598

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %405, metadata !1225, metadata !DIExpression()), !dbg !1285
  %406 = icmp ult i64 %405, %129, !dbg !1602
  br i1 %406, label %407, label %411, !dbg !1605

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1602
  %409 = or i8 %408, 48, !dbg !1602
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1602
  store i8 %409, i8* %410, align 1, !dbg !1602, !tbaa !844
  br label %411, !dbg !1602

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %412, metadata !1225, metadata !DIExpression()), !dbg !1285
  %413 = icmp ult i64 %412, %129, !dbg !1606
  br i1 %413, label %414, label %419, !dbg !1609

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1606
  %416 = and i8 %415, 7, !dbg !1606
  %417 = or i8 %416, 48, !dbg !1606
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1606
  store i8 %417, i8* %418, align 1, !dbg !1606, !tbaa !844
  br label %419, !dbg !1606

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %420, metadata !1225, metadata !DIExpression()), !dbg !1285
  %421 = and i8 %374, 7, !dbg !1610
  %422 = or i8 %421, 48, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %422, metadata !1235, metadata !DIExpression()), !dbg !1371
  br label %432, !dbg !1612

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1613
  %425 = icmp eq i8 %424, 0, !dbg !1613
  br i1 %425, label %432, label %426, !dbg !1614

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1615
  br i1 %427, label %428, label %430, !dbg !1618

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1615
  store i8 92, i8* %429, align 1, !dbg !1615, !tbaa !844
  br label %430, !dbg !1615

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %431, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, metadata !1240, metadata !DIExpression()), !dbg !1354
  br label %432, !dbg !1619

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1620
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1293
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1621
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1622
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1624
  call void @llvm.dbg.value(metadata i8 %437, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %436, metadata !1240, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8 %435, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %434, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %433, metadata !1225, metadata !DIExpression()), !dbg !1285
  %438 = add i64 %371, 1, !dbg !1625
  %439 = icmp ugt i64 %369, %438, !dbg !1627
  br i1 %439, label %440, label %562, !dbg !1628

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1629
  %442 = icmp ne i8 %441, 0, !dbg !1629
  %443 = and i8 %437, 1, !dbg !1629
  %444 = icmp eq i8 %443, 0, !dbg !1629
  %445 = and i1 %442, %444, !dbg !1629
  br i1 %445, label %446, label %457, !dbg !1629

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1632
  br i1 %447, label %448, label %450, !dbg !1636

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1632
  store i8 39, i8* %449, align 1, !dbg !1632, !tbaa !844
  br label %450, !dbg !1632

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %451, metadata !1225, metadata !DIExpression()), !dbg !1285
  %452 = icmp ult i64 %451, %129, !dbg !1637
  br i1 %452, label %453, label %455, !dbg !1640

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1637
  store i8 39, i8* %454, align 1, !dbg !1637, !tbaa !844
  br label %455, !dbg !1637

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %456, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %457, !dbg !1641

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1642
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %459, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %458, metadata !1225, metadata !DIExpression()), !dbg !1285
  %460 = icmp ult i64 %458, %129, !dbg !1643
  br i1 %460, label %461, label %463, !dbg !1645

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1643
  store i8 %435, i8* %462, align 1, !dbg !1643, !tbaa !844
  br label %463, !dbg !1643

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %464, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %438, metadata !1224, metadata !DIExpression()), !dbg !1345
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1646
  %466 = load i8, i8* %465, align 1, !dbg !1646, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %466, metadata !1235, metadata !DIExpression()), !dbg !1371
  br label %370, !dbg !1647, !llvm.loop !1648

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1651
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1344
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1286
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1652
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1344
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1344
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1369
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1369
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1369
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %476, metadata !1242, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %475, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %155, metadata !1240, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8 %474, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %473, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %472, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %471, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %470, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %469, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %468, metadata !1224, metadata !DIExpression()), !dbg !1345
  br i1 %105, label %489, label %478, !dbg !1653

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
  br i1 %112, label %490, label %512, !dbg !1655

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1656

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
  %501 = lshr i8 %494, 5, !dbg !1657
  %502 = zext i8 %501 to i64, !dbg !1657
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1658
  %504 = load i32, i32* %503, align 4, !dbg !1658, !tbaa !719
  %505 = and i8 %494, 31, !dbg !1659
  %506 = zext i8 %505 to i32, !dbg !1659
  %507 = shl i32 1, %506, !dbg !1660
  %508 = and i32 %504, %507, !dbg !1660
  %509 = icmp eq i32 %508, 0, !dbg !1660
  %510 = icmp eq i8 %155, 0, !dbg !1661
  %511 = and i1 %510, %509, !dbg !1662
  br i1 %511, label %562, label %524, !dbg !1662

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
  %523 = icmp eq i8 %155, 0, !dbg !1661
  br i1 %523, label %562, label %524, !dbg !1663

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1664
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1344
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1286
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1652
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1293
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1294
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1665
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1369
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %532, metadata !1242, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %531, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %530, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %529, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %528, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %527, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %526, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %525, metadata !1224, metadata !DIExpression()), !dbg !1345
  br i1 %110, label %534, label %661, !dbg !1668

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1241, metadata !DIExpression()), !dbg !1355
  %535 = and i8 %529, 1, !dbg !1670
  %536 = icmp eq i8 %535, 0, !dbg !1670
  %537 = and i1 %114, %536, !dbg !1670
  br i1 %537, label %538, label %554, !dbg !1670

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1672
  br i1 %539, label %540, label %542, !dbg !1676

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1672
  store i8 39, i8* %541, align 1, !dbg !1672, !tbaa !844
  br label %542, !dbg !1672

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %543, metadata !1225, metadata !DIExpression()), !dbg !1285
  %544 = icmp ult i64 %543, %533, !dbg !1677
  br i1 %544, label %545, label %547, !dbg !1680

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1677
  store i8 36, i8* %546, align 1, !dbg !1677, !tbaa !844
  br label %547, !dbg !1677

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %548, metadata !1225, metadata !DIExpression()), !dbg !1285
  %549 = icmp ult i64 %548, %533, !dbg !1681
  br i1 %549, label %550, label %552, !dbg !1684

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1681
  store i8 39, i8* %551, align 1, !dbg !1681, !tbaa !844
  br label %552, !dbg !1681

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %553, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %554, !dbg !1685

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1642
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %556, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %555, metadata !1225, metadata !DIExpression()), !dbg !1285
  %557 = icmp ult i64 %555, %533, !dbg !1686
  br i1 %557, label %558, label %560, !dbg !1689

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1686
  store i8 92, i8* %559, align 1, !dbg !1686, !tbaa !844
  br label %560, !dbg !1686

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %561, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %572, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %571, metadata !1242, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %570, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %569, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %568, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %567, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %566, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %565, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %564, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %563, metadata !1224, metadata !DIExpression()), !dbg !1345
  br label %589, !dbg !1690

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1664
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1344
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1286
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1652
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1293
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1294
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1693
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1369
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1369
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %571, metadata !1242, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %570, metadata !1241, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %569, metadata !1235, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %568, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %567, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %566, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %565, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %564, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %563, metadata !1224, metadata !DIExpression()), !dbg !1345
  %573 = and i8 %567, 1, !dbg !1690
  %574 = icmp ne i8 %573, 0, !dbg !1690
  %575 = and i8 %570, 1, !dbg !1690
  %576 = icmp eq i8 %575, 0, !dbg !1690
  %577 = and i1 %574, %576, !dbg !1690
  br i1 %577, label %578, label %589, !dbg !1690

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1694
  br i1 %579, label %580, label %582, !dbg !1698

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1694
  store i8 39, i8* %581, align 1, !dbg !1694, !tbaa !844
  br label %582, !dbg !1694

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %583, metadata !1225, metadata !DIExpression()), !dbg !1285
  %584 = icmp ult i64 %583, %572, !dbg !1699
  br i1 %584, label %585, label %587, !dbg !1702

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1699
  store i8 39, i8* %586, align 1, !dbg !1699, !tbaa !844
  br label %587, !dbg !1699

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %588, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, metadata !1232, metadata !DIExpression()), !dbg !1293
  br label %589, !dbg !1703

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1642
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %598, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %597, metadata !1225, metadata !DIExpression()), !dbg !1285
  %599 = icmp ult i64 %597, %590, !dbg !1704
  br i1 %599, label %600, label %602, !dbg !1707

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1704
  store i8 %592, i8* %601, align 1, !dbg !1704, !tbaa !844
  br label %602, !dbg !1704

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %603, metadata !1225, metadata !DIExpression()), !dbg !1285
  %604 = and i8 %591, 1, !dbg !1708
  %605 = icmp eq i8 %604, 0, !dbg !1708
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %606, metadata !1234, metadata !DIExpression()), !dbg !1295
  br label %607, !dbg !1711

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1664
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1344
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1286
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1652
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1293
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1344
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1295
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %614, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %613, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %612, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %611, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %610, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %609, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %608, metadata !1224, metadata !DIExpression()), !dbg !1345
  %616 = add i64 %608, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %616, metadata !1224, metadata !DIExpression()), !dbg !1345
  br label %121, !dbg !1713, !llvm.loop !1714

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %125, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %125, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %126, metadata !1232, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %127, metadata !1233, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %128, metadata !1234, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  %619 = icmp eq i64 %123, 0, !dbg !1716
  %620 = and i1 %114, %619, !dbg !1718
  %621 = xor i1 %620, true, !dbg !1718
  %622 = or i1 %110, %621, !dbg !1718
  br i1 %622, label %623, label %661, !dbg !1718

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1719
  %625 = xor i1 %624, true, !dbg !1719
  %626 = and i8 %127, 1, !dbg !1721
  %627 = icmp eq i8 %626, 0, !dbg !1721
  %628 = or i1 %627, %625, !dbg !1719
  br i1 %628, label %638, label %629, !dbg !1719

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1722
  %631 = icmp eq i8 %630, 0, !dbg !1722
  br i1 %631, label %634, label %632, !dbg !1725

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %618, metadata !1218, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %95, metadata !1222, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %96, metadata !1223, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %124, metadata !1226, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %125, metadata !1218, metadata !DIExpression()), !dbg !1279
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1726
  br label %671, !dbg !1727

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1728
  %636 = icmp ne i64 %124, 0, !dbg !1730
  %637 = and i1 %636, %635, !dbg !1731
  br i1 %637, label %27, label %638, !dbg !1731

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %129, metadata !1216, metadata !DIExpression()), !dbg !1277
  %639 = icmp ne i8* %98, null, !dbg !1732
  %640 = and i1 %639, %110, !dbg !1734
  br i1 %640, label %641, label %656, !dbg !1734

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %123, metadata !1225, metadata !DIExpression()), !dbg !1285
  %642 = load i8, i8* %98, align 1, !dbg !1735, !tbaa !844
  %643 = icmp eq i8 %642, 0, !dbg !1738
  br i1 %643, label %656, label %644, !dbg !1738

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %647, metadata !1225, metadata !DIExpression()), !dbg !1285
  %648 = icmp ult i64 %647, %129, !dbg !1739
  br i1 %648, label %649, label %651, !dbg !1742

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1739
  store i8 %645, i8* %650, align 1, !dbg !1739, !tbaa !844
  br label %651, !dbg !1739

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1742
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %653, metadata !1227, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %652, metadata !1225, metadata !DIExpression()), !dbg !1285
  %654 = load i8, i8* %653, align 1, !dbg !1735, !tbaa !844
  %655 = icmp eq i8 %654, 0, !dbg !1738
  br i1 %655, label %656, label %644, !dbg !1738, !llvm.loop !1744

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1285
  call void @llvm.dbg.value(metadata i64 %657, metadata !1225, metadata !DIExpression()), !dbg !1285
  %658 = icmp ult i64 %657, %129, !dbg !1746
  br i1 %658, label %659, label %671, !dbg !1748

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1749
  store i8 0, i8* %660, align 1, !dbg !1750, !tbaa !844
  br label %671, !dbg !1749

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1216, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %663, metadata !1218, metadata !DIExpression()), !dbg !1279
  %665 = icmp ne i32 %662, 2, !dbg !1751
  %666 = icmp eq i8 %102, 0, !dbg !1753
  %667 = or i1 %665, %666, !dbg !1754
  call void @llvm.dbg.value(metadata i32 4, metadata !1219, metadata !DIExpression()), !dbg !1280
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %668, metadata !1219, metadata !DIExpression()), !dbg !1280
  %669 = and i32 %5, -3, !dbg !1755
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1756
  br label %671, !dbg !1757

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1758
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1759 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1763, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 %1, metadata !1764, metadata !DIExpression()), !dbg !1768
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1769
  call void @llvm.dbg.value(metadata i8* %3, metadata !1765, metadata !DIExpression()), !dbg !1770
  %4 = icmp eq i8* %3, %0, !dbg !1771
  br i1 %4, label %5, label %71, !dbg !1773

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %6, metadata !1766, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %6, metadata !1776, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* null, metadata !1782, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 85, metadata !1783, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 84, metadata !1784, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 70, metadata !1785, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 45, metadata !1786, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 56, metadata !1787, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1788, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1791, metadata !DIExpression()), !dbg !1804
  %7 = load i8, i8* %6, align 1, !dbg !1805, !tbaa !844
  %8 = and i8 %7, -33, !dbg !1805
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1805

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1807, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* null, metadata !1812, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 84, metadata !1813, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8 70, metadata !1814, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 45, metadata !1815, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 56, metadata !1816, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1833
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1834
  %11 = load i8, i8* %10, align 1, !dbg !1834, !tbaa !844
  %12 = and i8 %11, -33, !dbg !1834
  %13 = icmp eq i8 %12, 84, !dbg !1834
  br i1 %13, label %14, label %68, !dbg !1834

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1836, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* null, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 70, metadata !1842, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 45, metadata !1843, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 56, metadata !1844, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1845, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1846, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1860
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1861
  %16 = load i8, i8* %15, align 1, !dbg !1861, !tbaa !844
  %17 = and i8 %16, -33, !dbg !1861
  %18 = icmp eq i8 %17, 70, !dbg !1861
  br i1 %18, label %19, label %68, !dbg !1861

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1863, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* null, metadata !1868, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 45, metadata !1869, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 56, metadata !1870, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1885
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1886
  %21 = load i8, i8* %20, align 1, !dbg !1886, !tbaa !844
  %22 = icmp eq i8 %21, 45, !dbg !1886
  br i1 %22, label %23, label %68, !dbg !1888

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1889, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* null, metadata !1894, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 56, metadata !1895, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1897, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 0, metadata !1898, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1909
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1910
  %25 = load i8, i8* %24, align 1, !dbg !1910, !tbaa !844
  %26 = icmp eq i8 %25, 56, !dbg !1910
  br i1 %26, label %27, label %68, !dbg !1912

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1913, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* null, metadata !1918, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1931
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1932
  %29 = load i8, i8* %28, align 1, !dbg !1932, !tbaa !844
  %30 = icmp eq i8 %29, 0, !dbg !1932
  br i1 %30, label %31, label %68, !dbg !1934

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1935, !tbaa !844
  %33 = icmp eq i8 %32, 96, !dbg !1936
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !1935
  br label %71, !dbg !1937

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1807, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8* null, metadata !1812, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 66, metadata !1813, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 49, metadata !1814, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 56, metadata !1815, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 48, metadata !1816, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 51, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 48, metadata !1818, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1950
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1951
  %37 = load i8, i8* %36, align 1, !dbg !1951, !tbaa !844
  %38 = and i8 %37, -33, !dbg !1951
  %39 = icmp eq i8 %38, 66, !dbg !1951
  br i1 %39, label %40, label %68, !dbg !1951

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1836, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8* null, metadata !1841, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 49, metadata !1842, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 56, metadata !1843, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 48, metadata !1844, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 51, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 48, metadata !1846, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1961
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1962
  %42 = load i8, i8* %41, align 1, !dbg !1962, !tbaa !844
  %43 = icmp eq i8 %42, 49, !dbg !1962
  br i1 %43, label %44, label %68, !dbg !1963

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1863, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* null, metadata !1868, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 56, metadata !1869, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 48, metadata !1870, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 51, metadata !1871, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 48, metadata !1872, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1972
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1973
  %46 = load i8, i8* %45, align 1, !dbg !1973, !tbaa !844
  %47 = icmp eq i8 %46, 56, !dbg !1973
  br i1 %47, label %48, label %68, !dbg !1974

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1889, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8* null, metadata !1894, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 48, metadata !1895, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 51, metadata !1896, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 48, metadata !1897, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 0, metadata !1898, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1982
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1983
  %50 = load i8, i8* %49, align 1, !dbg !1983, !tbaa !844
  %51 = icmp eq i8 %50, 48, !dbg !1983
  br i1 %51, label %52, label %68, !dbg !1984

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1913, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* null, metadata !1918, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8 51, metadata !1919, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 48, metadata !1920, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1991
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1992
  %54 = load i8, i8* %53, align 1, !dbg !1992, !tbaa !844
  %55 = icmp eq i8 %54, 51, !dbg !1992
  br i1 %55, label %56, label %68, !dbg !1993

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1994, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8* null, metadata !1999, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 48, metadata !2000, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2010
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2011
  %58 = load i8, i8* %57, align 1, !dbg !2011, !tbaa !844
  %59 = icmp eq i8 %58, 48, !dbg !2011
  br i1 %59, label %60, label %68, !dbg !2013

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8* null, metadata !2019, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2020, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2028
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2029
  %62 = load i8, i8* %61, align 1, !dbg !2029, !tbaa !844
  %63 = icmp eq i8 %62, 0, !dbg !2029
  br i1 %63, label %64, label %68, !dbg !2031

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2032, !tbaa !844
  %66 = icmp eq i8 %65, 96, !dbg !2033
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2032
  br label %71, !dbg !2034

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2035
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2036
  br label %71, !dbg !2037

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2038
  ret i8* %72, !dbg !2039
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* %0, metadata !2050, metadata !DIExpression()) #11, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()) #11, !dbg !2065
  call void @llvm.dbg.value(metadata i64* null, metadata !2056, metadata !DIExpression()) #11, !dbg !2066
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2057, metadata !DIExpression()) #11, !dbg !2067
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2068
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2058, metadata !DIExpression()) #11, !dbg !2069
  %6 = tail call i32* @__errno_location() #17, !dbg !2070
  %7 = load i32, i32* %6, align 4, !dbg !2070, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %7, metadata !2059, metadata !DIExpression()) #11, !dbg !2071
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2072
  %9 = load i32, i32* %8, align 4, !dbg !2072, !tbaa !1148
  %10 = or i32 %9, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %10, metadata !2060, metadata !DIExpression()) #11, !dbg !2074
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2075
  %12 = load i32, i32* %11, align 8, !dbg !2075, !tbaa !1089
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2076
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2077
  %15 = load i8*, i8** %14, align 8, !dbg !2077, !tbaa !1174
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2078
  %17 = load i8*, i8** %16, align 8, !dbg !2078, !tbaa !1177
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2079
  %19 = add i64 %18, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %19, metadata !2061, metadata !DIExpression()) #11, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %19, metadata !2082, metadata !DIExpression()) #11, !dbg !2087
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %20, metadata !2062, metadata !DIExpression()) #11, !dbg !2090
  %21 = load i32, i32* %11, align 8, !dbg !2091, !tbaa !1089
  %22 = load i8*, i8** %14, align 8, !dbg !2092, !tbaa !1174
  %23 = load i8*, i8** %16, align 8, !dbg !2093, !tbaa !1177
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2094
  store i32 %7, i32* %6, align 4, !dbg !2095, !tbaa !719
  ret i8* %20, !dbg !2096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2051 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2050, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i64* %2, metadata !2056, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2057, metadata !DIExpression()), !dbg !2100
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2101
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2058, metadata !DIExpression()), !dbg !2102
  %7 = tail call i32* @__errno_location() #17, !dbg !2103
  %8 = load i32, i32* %7, align 4, !dbg !2103, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %8, metadata !2059, metadata !DIExpression()), !dbg !2104
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2105
  %10 = load i32, i32* %9, align 4, !dbg !2105, !tbaa !1148
  %11 = icmp ne i64* %2, null, !dbg !2106
  %12 = xor i1 %11, true, !dbg !2106
  %13 = zext i1 %12 to i32, !dbg !2106
  %14 = or i32 %10, %13, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %14, metadata !2060, metadata !DIExpression()), !dbg !2108
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2109
  %16 = load i32, i32* %15, align 8, !dbg !2109, !tbaa !1089
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2110
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2111
  %19 = load i8*, i8** %18, align 8, !dbg !2111, !tbaa !1174
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2112
  %21 = load i8*, i8** %20, align 8, !dbg !2112, !tbaa !1177
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2113
  %23 = add i64 %22, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %23, metadata !2061, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %23, metadata !2082, metadata !DIExpression()) #11, !dbg !2116
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %24, metadata !2062, metadata !DIExpression()), !dbg !2119
  %25 = load i32, i32* %15, align 8, !dbg !2120, !tbaa !1089
  %26 = load i8*, i8** %18, align 8, !dbg !2121, !tbaa !1174
  %27 = load i8*, i8** %20, align 8, !dbg !2122, !tbaa !1177
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2123
  store i32 %8, i32* %7, align 4, !dbg !2124, !tbaa !719
  br i1 %11, label %29, label %30, !dbg !2125

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2126, !tbaa !795
  br label %30, !dbg !2128

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2130 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2134, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 1, metadata !2133, metadata !DIExpression()), !dbg !2136
  %2 = load i32, i32* @nslots, align 4, !dbg !2137, !tbaa !719
  %3 = icmp sgt i32 %2, 1, !dbg !2140
  br i1 %3, label %4, label %12, !dbg !2141

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2133, metadata !DIExpression()), !dbg !2136
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2142
  %7 = load i8*, i8** %6, align 8, !dbg !2142, !tbaa !2143
  tail call void @free(i8* %7) #11, !dbg !2145
  %8 = add nuw nsw i64 %5, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i32 undef, metadata !2133, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2136
  %9 = load i32, i32* @nslots, align 4, !dbg !2137, !tbaa !719
  %10 = sext i32 %9 to i64, !dbg !2140
  %11 = icmp slt i64 %8, %10, !dbg !2140
  br i1 %11, label %4, label %12, !dbg !2141, !llvm.loop !2147

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2149
  %14 = load i8*, i8** %13, align 8, !dbg !2149, !tbaa !2143
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2151
  br i1 %15, label %17, label %16, !dbg !2152

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2153
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2155, !tbaa !2156
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2157, !tbaa !2143
  br label %17, !dbg !2158

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2159
  br i1 %18, label %21, label %19, !dbg !2161

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2162
  tail call void @free(i8* %20) #11, !dbg !2164
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2165, !tbaa !654
  br label %21, !dbg !2166

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2167, !tbaa !719
  ret void, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %1, metadata !2174, metadata !DIExpression()), !dbg !2176
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2177
  ret i8* %3, !dbg !2178
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2183, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* %1, metadata !2184, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %2, metadata !2185, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2186, metadata !DIExpression()), !dbg !2201
  %5 = tail call i32* @__errno_location() #17, !dbg !2202
  %6 = load i32, i32* %5, align 4, !dbg !2202, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %6, metadata !2187, metadata !DIExpression()), !dbg !2203
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2204, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2188, metadata !DIExpression()), !dbg !2205
  %8 = icmp slt i32 %0, 0, !dbg !2206
  br i1 %8, label %9, label %10, !dbg !2208

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2209
  unreachable, !dbg !2209

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !719
  %12 = icmp sgt i32 %11, %0, !dbg !2211
  br i1 %12, label %34, label %13, !dbg !2212

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2213
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2192, metadata !DIExpression()), !dbg !2214
  %15 = icmp eq i32 %0, 2147483647, !dbg !2215
  br i1 %15, label %16, label %17, !dbg !2217

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2218
  unreachable, !dbg !2218

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2219
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2219
  %20 = add nsw i32 %0, 1, !dbg !2220
  %21 = sext i32 %20 to i64, !dbg !2221
  %22 = shl nsw i64 %21, 4, !dbg !2222
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2223
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2223
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2188, metadata !DIExpression()), !dbg !2205
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2224, !tbaa !654
  br i1 %14, label %25, label %26, !dbg !2225

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2226, !tbaa.struct !2228
  br label %26, !dbg !2229

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2230, !tbaa !719
  %28 = sext i32 %27 to i64, !dbg !2231
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2231
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2232
  %31 = sub nsw i32 %20, %27, !dbg !2233
  %32 = sext i32 %31 to i64, !dbg !2234
  %33 = shl nsw i64 %32, 4, !dbg !2235
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2232
  store i32 %20, i32* @nslots, align 4, !dbg !2236, !tbaa !719
  br label %34, !dbg !2237

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2238
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2188, metadata !DIExpression()), !dbg !2205
  %36 = sext i32 %0 to i64, !dbg !2239
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2240
  %38 = load i64, i64* %37, align 8, !dbg !2240, !tbaa !2156
  call void @llvm.dbg.value(metadata i64 %38, metadata !2193, metadata !DIExpression()), !dbg !2241
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2242
  %40 = load i8*, i8** %39, align 8, !dbg !2242, !tbaa !2143
  call void @llvm.dbg.value(metadata i8* %40, metadata !2195, metadata !DIExpression()), !dbg !2243
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2244
  %42 = load i32, i32* %41, align 4, !dbg !2244, !tbaa !1148
  %43 = or i32 %42, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %43, metadata !2196, metadata !DIExpression()), !dbg !2246
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2247
  %45 = load i32, i32* %44, align 8, !dbg !2247, !tbaa !1089
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2248
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2249
  %48 = load i8*, i8** %47, align 8, !dbg !2249, !tbaa !1174
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2250
  %50 = load i8*, i8** %49, align 8, !dbg !2250, !tbaa !1177
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %51, metadata !2197, metadata !DIExpression()), !dbg !2252
  %52 = icmp ugt i64 %38, %51, !dbg !2253
  br i1 %52, label %63, label %53, !dbg !2255

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %54, metadata !2193, metadata !DIExpression()), !dbg !2241
  store i64 %54, i64* %37, align 8, !dbg !2258, !tbaa !2156
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2259
  br i1 %55, label %57, label %56, !dbg !2261

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2262
  br label %57, !dbg !2262

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2082, metadata !DIExpression()) #11, !dbg !2263
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %58, metadata !2195, metadata !DIExpression()), !dbg !2243
  store i8* %58, i8** %39, align 8, !dbg !2266, !tbaa !2143
  %59 = load i32, i32* %44, align 8, !dbg !2267, !tbaa !1089
  %60 = load i8*, i8** %47, align 8, !dbg !2268, !tbaa !1174
  %61 = load i8*, i8** %49, align 8, !dbg !2269, !tbaa !1177
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2270
  br label %63, !dbg !2271

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2272
  call void @llvm.dbg.value(metadata i8* %64, metadata !2195, metadata !DIExpression()), !dbg !2243
  store i32 %6, i32* %5, align 4, !dbg !2273, !tbaa !719
  ret i8* %64, !dbg !2274
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %1, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %2, metadata !2281, metadata !DIExpression()), !dbg !2284
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2285
  ret i8* %4, !dbg !2286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !2173, metadata !DIExpression()) #11, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()) #11, !dbg !2295
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2296
  ret i8* %2, !dbg !2297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %1, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()) #11, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()) #11, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()) #11, !dbg !2309
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2310
  ret i8* %3, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2312 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %1, metadata !2317, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()), !dbg !2322
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2323
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2319, metadata !DIExpression(DW_OP_deref)), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %1, metadata !2325, metadata !DIExpression()) #11, !dbg !2331
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2333, !alias.scope !2334
  %6 = icmp eq i32 %1, 10, !dbg !2337
  br i1 %6, label %7, label %8, !dbg !2339

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2340, !noalias !2334
  unreachable, !dbg !2340

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2341
  store i32 %1, i32* %9, align 8, !dbg !2342, !tbaa !1089, !alias.scope !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2319, metadata !DIExpression(DW_OP_deref)), !dbg !2324
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2330, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2344
  ret i8* %10, !dbg !2345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2346 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %1, metadata !2351, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2352, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %3, metadata !2353, metadata !DIExpression()), !dbg !2358
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2354, metadata !DIExpression(DW_OP_deref)), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %1, metadata !2325, metadata !DIExpression()) #11, !dbg !2361
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2363, !alias.scope !2364
  %7 = icmp eq i32 %1, 10, !dbg !2367
  br i1 %7, label %8, label %9, !dbg !2368

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2369, !noalias !2364
  unreachable, !dbg !2369

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2370
  store i32 %1, i32* %10, align 8, !dbg !2371, !tbaa !1089, !alias.scope !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2354, metadata !DIExpression(DW_OP_deref)), !dbg !2360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2330, metadata !DIExpression(DW_OP_deref)), !dbg !2363
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2373
  ret i8* %11, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2375 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2316, metadata !DIExpression()) #11, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()) #11, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !2318, metadata !DIExpression()) #11, !dbg !2386
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2319, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()) #11, !dbg !2389
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2391, !alias.scope !2392
  %5 = icmp eq i32 %0, 10, !dbg !2395
  br i1 %5, label %6, label %7, !dbg !2396

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2397, !noalias !2392
  unreachable, !dbg !2397

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2398
  store i32 %0, i32* %8, align 8, !dbg !2399, !tbaa !1089, !alias.scope !2392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2319, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2330, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2391
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2401
  ret i8* %9, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2403 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %2, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()) #11, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %0, metadata !2351, metadata !DIExpression()) #11, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %1, metadata !2352, metadata !DIExpression()) #11, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %2, metadata !2353, metadata !DIExpression()) #11, !dbg !2417
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2354, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()) #11, !dbg !2420
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2422, !alias.scope !2423
  %6 = icmp eq i32 %0, 10, !dbg !2426
  br i1 %6, label %7, label %8, !dbg !2427

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2428, !noalias !2423
  unreachable, !dbg !2428

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2429
  store i32 %0, i32* %9, align 8, !dbg !2430, !tbaa !1089, !alias.scope !2423
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2354, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2330, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2422
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2432
  ret i8* %10, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2434 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %1, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %2, metadata !2440, metadata !DIExpression()), !dbg !2444
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2446, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2441, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1108, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 %2, metadata !1109, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 %2, metadata !1111, metadata !DIExpression()), !dbg !2453
  %6 = lshr i8 %2, 5, !dbg !2454
  %7 = zext i8 %6 to i64, !dbg !2454
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2455
  call void @llvm.dbg.value(metadata i32* %8, metadata !1112, metadata !DIExpression()), !dbg !2456
  %9 = and i8 %2, 31, !dbg !2457
  %10 = zext i8 %9 to i32, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %10, metadata !1114, metadata !DIExpression()), !dbg !2458
  %11 = load i32, i32* %8, align 4, !dbg !2459, !tbaa !719
  %12 = lshr i32 %11, %10, !dbg !2460
  %13 = and i32 %12, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %13, metadata !1115, metadata !DIExpression()), !dbg !2462
  %14 = xor i32 %13, 1, !dbg !2463
  %15 = shl i32 %14, %10, !dbg !2464
  %16 = xor i32 %15, %11, !dbg !2465
  store i32 %16, i32* %8, align 4, !dbg !2465, !tbaa !719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2441, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2466
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2467
  ret i8* %17, !dbg !2468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2469 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %1, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()) #11, !dbg !2477
  call void @llvm.dbg.value(metadata i64 -1, metadata !2439, metadata !DIExpression()) #11, !dbg !2479
  call void @llvm.dbg.value(metadata i8 %1, metadata !2440, metadata !DIExpression()) #11, !dbg !2480
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2482, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1108, metadata !DIExpression()) #11, !dbg !2484
  call void @llvm.dbg.value(metadata i8 %1, metadata !1109, metadata !DIExpression()) #11, !dbg !2486
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #11, !dbg !2487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1111, metadata !DIExpression()) #11, !dbg !2488
  %5 = lshr i8 %1, 5, !dbg !2489
  %6 = zext i8 %5 to i64, !dbg !2489
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2490
  call void @llvm.dbg.value(metadata i32* %7, metadata !1112, metadata !DIExpression()) #11, !dbg !2491
  %8 = and i8 %1, 31, !dbg !2492
  %9 = zext i8 %8 to i32, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %9, metadata !1114, metadata !DIExpression()) #11, !dbg !2493
  %10 = load i32, i32* %7, align 4, !dbg !2494, !tbaa !719
  %11 = lshr i32 %10, %9, !dbg !2495
  %12 = and i32 %11, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %12, metadata !1115, metadata !DIExpression()) #11, !dbg !2497
  %13 = xor i32 %12, 1, !dbg !2498
  %14 = shl i32 %13, %9, !dbg !2499
  %15 = xor i32 %14, %10, !dbg !2500
  store i32 %15, i32* %7, align 4, !dbg !2500, !tbaa !719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2483
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2501
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2502
  ret i8* %16, !dbg !2503
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2504 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %0, metadata !2473, metadata !DIExpression()) #11, !dbg !2508
  call void @llvm.dbg.value(metadata i8 58, metadata !2474, metadata !DIExpression()) #11, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()) #11, !dbg !2511
  call void @llvm.dbg.value(metadata i64 -1, metadata !2439, metadata !DIExpression()) #11, !dbg !2513
  call void @llvm.dbg.value(metadata i8 58, metadata !2440, metadata !DIExpression()) #11, !dbg !2514
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2516, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1108, metadata !DIExpression()) #11, !dbg !2518
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()) #11, !dbg !2520
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #11, !dbg !2521
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()) #11, !dbg !2522
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2523
  call void @llvm.dbg.value(metadata i32* %4, metadata !1112, metadata !DIExpression()) #11, !dbg !2524
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()) #11, !dbg !2525
  %5 = load i32, i32* %4, align 4, !dbg !2526, !tbaa !719
  %6 = or i32 %5, 67108864, !dbg !2527
  store i32 %6, i32* %4, align 4, !dbg !2527, !tbaa !719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2517
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2529
  ret i8* %7, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2531 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()) #11, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2439, metadata !DIExpression()) #11, !dbg !2539
  call void @llvm.dbg.value(metadata i8 58, metadata !2440, metadata !DIExpression()) #11, !dbg !2540
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2542, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1108, metadata !DIExpression()) #11, !dbg !2544
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()) #11, !dbg !2546
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #11, !dbg !2547
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()) #11, !dbg !2548
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2549
  call void @llvm.dbg.value(metadata i32* %5, metadata !1112, metadata !DIExpression()) #11, !dbg !2550
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()) #11, !dbg !2551
  %6 = load i32, i32* %5, align 4, !dbg !2552, !tbaa !719
  %7 = or i32 %6, 67108864, !dbg !2553
  store i32 %7, i32* %5, align 4, !dbg !2553, !tbaa !719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2441, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2543
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2554
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2555
  ret i8* %8, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2557 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2330, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %1, metadata !2560, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()), !dbg !2567
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2568
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2568
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %1, metadata !2325, metadata !DIExpression()) #11, !dbg !2570
  call void @llvm.dbg.value(metadata i32 0, metadata !2330, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2563
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2563, !alias.scope !2571
  %8 = icmp eq i32 %1, 10, !dbg !2574
  br i1 %8, label %9, label %10, !dbg !2575

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2576, !noalias !2571
  unreachable, !dbg !2576

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2330, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2563
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2569
  store i32 %1, i32* %11, align 8, !dbg !2569
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2569
  %13 = bitcast i32* %12 to i8*, !dbg !2569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1108, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()), !dbg !2582
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2583
  call void @llvm.dbg.value(metadata i32* %14, metadata !1112, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()), !dbg !2585
  %15 = load i32, i32* %14, align 4, !dbg !2586, !tbaa !719
  %16 = or i32 %15, 67108864, !dbg !2587
  store i32 %16, i32* %14, align 4, !dbg !2587, !tbaa !719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2577
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2588
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2589
  ret i8* %17, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2591 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2595, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* %1, metadata !2596, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* %3, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()) #11, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !2608, metadata !DIExpression()) #11, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %2, metadata !2609, metadata !DIExpression()) #11, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %3, metadata !2610, metadata !DIExpression()) #11, !dbg !2617
  call void @llvm.dbg.value(metadata i64 -1, metadata !2611, metadata !DIExpression()) #11, !dbg !2618
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2619
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2620, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1156, metadata !DIExpression()) #11, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %1, metadata !1157, metadata !DIExpression()) #11, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !1158, metadata !DIExpression()) #11, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1156, metadata !DIExpression()) #11, !dbg !2622
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2626
  store i32 10, i32* %7, align 8, !dbg !2627, !tbaa !1089
  %8 = icmp ne i8* %1, null, !dbg !2628
  %9 = icmp ne i8* %2, null, !dbg !2629
  %10 = and i1 %8, %9, !dbg !2630
  br i1 %10, label %12, label %11, !dbg !2630

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2631
  unreachable, !dbg !2631

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2632
  store i8* %1, i8** %13, align 8, !dbg !2633, !tbaa !1174
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2634
  store i8* %2, i8** %14, align 8, !dbg !2635, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2621
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2636
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2637
  ret i8* %15, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2604 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2608, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2609, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8* %3, metadata !2610, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %4, metadata !2611, metadata !DIExpression()), !dbg !2643
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2645, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2612, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1156, metadata !DIExpression()) #11, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %1, metadata !1157, metadata !DIExpression()) #11, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !1158, metadata !DIExpression()) #11, !dbg !2650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1156, metadata !DIExpression()) #11, !dbg !2647
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2651
  store i32 10, i32* %8, align 8, !dbg !2652, !tbaa !1089
  %9 = icmp ne i8* %1, null, !dbg !2653
  %10 = icmp ne i8* %2, null, !dbg !2654
  %11 = and i1 %9, %10, !dbg !2655
  br i1 %11, label %13, label %12, !dbg !2655

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2656
  unreachable, !dbg !2656

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2657
  store i8* %1, i8** %14, align 8, !dbg !2658, !tbaa !1174
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2659
  store i8* %2, i8** %15, align 8, !dbg !2660, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2612, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2662
  ret i8* %16, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2664 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %2, metadata !2670, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2595, metadata !DIExpression()) #11, !dbg !2674
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()) #11, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %1, metadata !2597, metadata !DIExpression()) #11, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %2, metadata !2598, metadata !DIExpression()) #11, !dbg !2678
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #11, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()) #11, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()) #11, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %2, metadata !2610, metadata !DIExpression()) #11, !dbg !2683
  call void @llvm.dbg.value(metadata i64 -1, metadata !2611, metadata !DIExpression()) #11, !dbg !2684
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2686, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1156, metadata !DIExpression()) #11, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %0, metadata !1157, metadata !DIExpression()) #11, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %1, metadata !1158, metadata !DIExpression()) #11, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1156, metadata !DIExpression()) #11, !dbg !2688
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2692
  store i32 10, i32* %6, align 8, !dbg !2693, !tbaa !1089
  %7 = icmp ne i8* %0, null, !dbg !2694
  %8 = icmp ne i8* %1, null, !dbg !2695
  %9 = and i1 %7, %8, !dbg !2696
  br i1 %9, label %11, label %10, !dbg !2696

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2697
  unreachable, !dbg !2697

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2698
  store i8* %0, i8** %12, align 8, !dbg !2699, !tbaa !1174
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2700
  store i8* %1, i8** %13, align 8, !dbg !2701, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2687
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2703
  ret i8* %14, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2705 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %2, metadata !2711, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %3, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #11, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()) #11, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()) #11, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %2, metadata !2610, metadata !DIExpression()) #11, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %3, metadata !2611, metadata !DIExpression()) #11, !dbg !2722
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2723
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2724, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1156, metadata !DIExpression()) #11, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !1157, metadata !DIExpression()) #11, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %1, metadata !1158, metadata !DIExpression()) #11, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1156, metadata !DIExpression()) #11, !dbg !2726
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2730
  store i32 10, i32* %7, align 8, !dbg !2731, !tbaa !1089
  %8 = icmp ne i8* %0, null, !dbg !2732
  %9 = icmp ne i8* %1, null, !dbg !2733
  %10 = and i1 %8, %9, !dbg !2734
  br i1 %10, label %12, label %11, !dbg !2734

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2735
  unreachable, !dbg !2735

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2736
  store i8* %0, i8** %13, align 8, !dbg !2737, !tbaa !1174
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2738
  store i8* %1, i8** %14, align 8, !dbg !2739, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2612, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2725
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2740
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2741
  ret i8* %15, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %2, metadata !2749, metadata !DIExpression()), !dbg !2752
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2753
  ret i8* %4, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 0, metadata !2747, metadata !DIExpression()) #11, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()) #11, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %1, metadata !2749, metadata !DIExpression()) #11, !dbg !2766
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2767
  ret i8* %3, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()) #11, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()) #11, !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2749, metadata !DIExpression()) #11, !dbg !2780
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2781
  ret i8* %3, !dbg !2782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2783 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 0, metadata !2773, metadata !DIExpression()) #11, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %0, metadata !2774, metadata !DIExpression()) #11, !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2747, metadata !DIExpression()) #11, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()) #11, !dbg !2794
  call void @llvm.dbg.value(metadata i64 -1, metadata !2749, metadata !DIExpression()) #11, !dbg !2795
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2796
  ret i8* %2, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2798 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2852, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %2, metadata !2854, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* %3, metadata !2855, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8** %4, metadata !2856, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %5, metadata !2857, metadata !DIExpression()), !dbg !2863
  %7 = icmp eq i8* %1, null, !dbg !2864
  br i1 %7, label %10, label %8, !dbg !2866

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2867
  br label %12, !dbg !2867

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2868
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #11, !dbg !2869
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !2869
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.78, i64 0, i64 0), i32 5) #11, !dbg !2870
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2870
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
  ], !dbg !2871

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2872
  unreachable, !dbg !2872

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #11, !dbg !2874
  %20 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !654
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2874
  br label %146, !dbg !2875

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.80, i64 0, i64 0), i32 5) #11, !dbg !2876
  %24 = load i8*, i8** %4, align 8, !dbg !2876, !tbaa !654
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2876
  %26 = load i8*, i8** %25, align 8, !dbg !2876, !tbaa !654
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2876
  br label %146, !dbg !2877

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #11, !dbg !2878
  %30 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !654
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2878
  %32 = load i8*, i8** %31, align 8, !dbg !2878, !tbaa !654
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2878
  %34 = load i8*, i8** %33, align 8, !dbg !2878, !tbaa !654
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2878
  br label %146, !dbg !2879

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #11, !dbg !2880
  %38 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !654
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2880
  %40 = load i8*, i8** %39, align 8, !dbg !2880, !tbaa !654
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2880
  %42 = load i8*, i8** %41, align 8, !dbg !2880, !tbaa !654
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2880
  %44 = load i8*, i8** %43, align 8, !dbg !2880, !tbaa !654
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2880
  br label %146, !dbg !2881

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #11, !dbg !2882
  %48 = load i8*, i8** %4, align 8, !dbg !2882, !tbaa !654
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2882
  %50 = load i8*, i8** %49, align 8, !dbg !2882, !tbaa !654
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2882
  %52 = load i8*, i8** %51, align 8, !dbg !2882, !tbaa !654
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2882
  %54 = load i8*, i8** %53, align 8, !dbg !2882, !tbaa !654
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2882
  %56 = load i8*, i8** %55, align 8, !dbg !2882, !tbaa !654
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2882
  br label %146, !dbg !2883

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #11, !dbg !2884
  %60 = load i8*, i8** %4, align 8, !dbg !2884, !tbaa !654
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2884
  %62 = load i8*, i8** %61, align 8, !dbg !2884, !tbaa !654
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2884
  %64 = load i8*, i8** %63, align 8, !dbg !2884, !tbaa !654
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2884
  %66 = load i8*, i8** %65, align 8, !dbg !2884, !tbaa !654
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2884
  %68 = load i8*, i8** %67, align 8, !dbg !2884, !tbaa !654
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2884
  %70 = load i8*, i8** %69, align 8, !dbg !2884, !tbaa !654
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2884
  br label %146, !dbg !2885

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #11, !dbg !2886
  %74 = load i8*, i8** %4, align 8, !dbg !2886, !tbaa !654
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2886
  %76 = load i8*, i8** %75, align 8, !dbg !2886, !tbaa !654
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2886
  %78 = load i8*, i8** %77, align 8, !dbg !2886, !tbaa !654
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2886
  %80 = load i8*, i8** %79, align 8, !dbg !2886, !tbaa !654
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2886
  %82 = load i8*, i8** %81, align 8, !dbg !2886, !tbaa !654
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2886
  %84 = load i8*, i8** %83, align 8, !dbg !2886, !tbaa !654
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2886
  %86 = load i8*, i8** %85, align 8, !dbg !2886, !tbaa !654
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2886
  br label %146, !dbg !2887

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #11, !dbg !2888
  %90 = load i8*, i8** %4, align 8, !dbg !2888, !tbaa !654
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2888
  %92 = load i8*, i8** %91, align 8, !dbg !2888, !tbaa !654
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2888
  %94 = load i8*, i8** %93, align 8, !dbg !2888, !tbaa !654
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2888
  %96 = load i8*, i8** %95, align 8, !dbg !2888, !tbaa !654
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2888
  %98 = load i8*, i8** %97, align 8, !dbg !2888, !tbaa !654
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2888
  %100 = load i8*, i8** %99, align 8, !dbg !2888, !tbaa !654
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2888
  %102 = load i8*, i8** %101, align 8, !dbg !2888, !tbaa !654
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2888
  %104 = load i8*, i8** %103, align 8, !dbg !2888, !tbaa !654
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2888
  br label %146, !dbg !2889

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #11, !dbg !2890
  %108 = load i8*, i8** %4, align 8, !dbg !2890, !tbaa !654
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2890
  %110 = load i8*, i8** %109, align 8, !dbg !2890, !tbaa !654
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2890
  %112 = load i8*, i8** %111, align 8, !dbg !2890, !tbaa !654
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2890
  %114 = load i8*, i8** %113, align 8, !dbg !2890, !tbaa !654
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2890
  %116 = load i8*, i8** %115, align 8, !dbg !2890, !tbaa !654
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2890
  %118 = load i8*, i8** %117, align 8, !dbg !2890, !tbaa !654
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2890
  %120 = load i8*, i8** %119, align 8, !dbg !2890, !tbaa !654
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2890
  %122 = load i8*, i8** %121, align 8, !dbg !2890, !tbaa !654
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2890
  %124 = load i8*, i8** %123, align 8, !dbg !2890, !tbaa !654
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2890
  br label %146, !dbg !2891

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #11, !dbg !2892
  %128 = load i8*, i8** %4, align 8, !dbg !2892, !tbaa !654
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2892
  %130 = load i8*, i8** %129, align 8, !dbg !2892, !tbaa !654
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2892
  %132 = load i8*, i8** %131, align 8, !dbg !2892, !tbaa !654
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2892
  %134 = load i8*, i8** %133, align 8, !dbg !2892, !tbaa !654
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2892
  %136 = load i8*, i8** %135, align 8, !dbg !2892, !tbaa !654
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2892
  %138 = load i8*, i8** %137, align 8, !dbg !2892, !tbaa !654
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2892
  %140 = load i8*, i8** %139, align 8, !dbg !2892, !tbaa !654
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2892
  %142 = load i8*, i8** %141, align 8, !dbg !2892, !tbaa !654
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2892
  %144 = load i8*, i8** %143, align 8, !dbg !2892, !tbaa !654
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2892
  br label %146, !dbg !2893

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2894
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2895 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2899, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2901, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %3, metadata !2902, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8** %4, metadata !2903, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 0, metadata !2904, metadata !DIExpression()), !dbg !2910
  br label %6, !dbg !2911

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2913
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2915
  %9 = load i8*, i8** %8, align 8, !dbg !2915, !tbaa !654
  %10 = icmp eq i8* %9, null, !dbg !2916
  %11 = add i64 %7, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %11, metadata !2904, metadata !DIExpression()), !dbg !2910
  br i1 %10, label %12, label %6, !dbg !2916, !llvm.loop !2918

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2904, metadata !DIExpression()), !dbg !2910
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2920
  ret void, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2922 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2933, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %2, metadata !2935, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %3, metadata !2936, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2937, metadata !DIExpression()), !dbg !2945
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2946
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2939, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 0, metadata !2938, metadata !DIExpression()), !dbg !2948
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2938, metadata !DIExpression()), !dbg !2948
  %11 = load i32, i32* %8, align 8, !dbg !2949
  %12 = icmp ult i32 %11, 41, !dbg !2949
  br i1 %12, label %13, label %18, !dbg !2949

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2949
  %15 = sext i32 %11 to i64, !dbg !2949
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2949
  %17 = add i32 %11, 8, !dbg !2949
  store i32 %17, i32* %8, align 8, !dbg !2949
  br label %21, !dbg !2949

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2949
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2949
  store i8* %20, i8** %10, align 8, !dbg !2949
  br label %21, !dbg !2949

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2949
  %25 = load i8*, i8** %24, align 8, !dbg !2949
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2952
  store i8* %25, i8** %26, align 16, !dbg !2953, !tbaa !654
  %27 = icmp eq i8* %25, null, !dbg !2954
  br i1 %27, label %30, label %28, !dbg !2955

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 1, metadata !2938, metadata !DIExpression()), !dbg !2948
  %29 = icmp ult i32 %22, 41, !dbg !2949
  br i1 %29, label %35, label %32, !dbg !2949

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2956
  call void @llvm.dbg.value(metadata i64 %31, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %31, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2957
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2958
  ret void, !dbg !2958

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2949
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2949
  store i8* %34, i8** %10, align 8, !dbg !2949
  br label %40, !dbg !2949

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2949
  %37 = sext i32 %22 to i64, !dbg !2949
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2949
  %39 = add i32 %22, 8, !dbg !2949
  store i32 %39, i32* %8, align 8, !dbg !2949
  br label %40, !dbg !2949

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2949
  %44 = load i8*, i8** %43, align 8, !dbg !2949
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2952
  store i8* %44, i8** %45, align 8, !dbg !2953, !tbaa !654
  %46 = icmp eq i8* %44, null, !dbg !2954
  br i1 %46, label %30, label %47, !dbg !2955

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 2, metadata !2938, metadata !DIExpression()), !dbg !2948
  %48 = icmp ult i32 %41, 41, !dbg !2949
  br i1 %48, label %52, label %49, !dbg !2949

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2949
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2949
  store i8* %51, i8** %10, align 8, !dbg !2949
  br label %57, !dbg !2949

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2949
  %54 = sext i32 %41 to i64, !dbg !2949
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2949
  %56 = add i32 %41, 8, !dbg !2949
  store i32 %56, i32* %8, align 8, !dbg !2949
  br label %57, !dbg !2949

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2949
  %61 = load i8*, i8** %60, align 8, !dbg !2949
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2952
  store i8* %61, i8** %62, align 16, !dbg !2953, !tbaa !654
  %63 = icmp eq i8* %61, null, !dbg !2954
  br i1 %63, label %30, label %64, !dbg !2955

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 3, metadata !2938, metadata !DIExpression()), !dbg !2948
  %65 = icmp ult i32 %58, 41, !dbg !2949
  br i1 %65, label %69, label %66, !dbg !2949

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2949
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2949
  store i8* %68, i8** %10, align 8, !dbg !2949
  br label %74, !dbg !2949

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2949
  %71 = sext i32 %58 to i64, !dbg !2949
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2949
  %73 = add i32 %58, 8, !dbg !2949
  store i32 %73, i32* %8, align 8, !dbg !2949
  br label %74, !dbg !2949

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2949
  %78 = load i8*, i8** %77, align 8, !dbg !2949
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2952
  store i8* %78, i8** %79, align 8, !dbg !2953, !tbaa !654
  %80 = icmp eq i8* %78, null, !dbg !2954
  br i1 %80, label %30, label %81, !dbg !2955

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 4, metadata !2938, metadata !DIExpression()), !dbg !2948
  %82 = icmp ult i32 %75, 41, !dbg !2949
  br i1 %82, label %86, label %83, !dbg !2949

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2949
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2949
  store i8* %85, i8** %10, align 8, !dbg !2949
  br label %91, !dbg !2949

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2949
  %88 = sext i32 %75 to i64, !dbg !2949
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2949
  %90 = add i32 %75, 8, !dbg !2949
  store i32 %90, i32* %8, align 8, !dbg !2949
  br label %91, !dbg !2949

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2949
  %95 = load i8*, i8** %94, align 8, !dbg !2949
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2952
  store i8* %95, i8** %96, align 16, !dbg !2953, !tbaa !654
  %97 = icmp eq i8* %95, null, !dbg !2954
  br i1 %97, label %30, label %98, !dbg !2955

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 5, metadata !2938, metadata !DIExpression()), !dbg !2948
  %99 = icmp ult i32 %92, 41, !dbg !2949
  br i1 %99, label %103, label %100, !dbg !2949

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2949
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2949
  store i8* %102, i8** %10, align 8, !dbg !2949
  br label %108, !dbg !2949

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2949
  %105 = sext i32 %92 to i64, !dbg !2949
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2949
  %107 = add i32 %92, 8, !dbg !2949
  store i32 %107, i32* %8, align 8, !dbg !2949
  br label %108, !dbg !2949

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2949
  %111 = load i8*, i8** %110, align 8, !dbg !2949
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2952
  store i8* %111, i8** %112, align 8, !dbg !2953, !tbaa !654
  %113 = icmp eq i8* %111, null, !dbg !2954
  br i1 %113, label %30, label %114, !dbg !2955

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 6, metadata !2938, metadata !DIExpression()), !dbg !2948
  %115 = load i8*, i8** %10, align 8, !dbg !2949
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2949
  store i8* %116, i8** %10, align 8, !dbg !2949
  %117 = bitcast i8* %115 to i8**, !dbg !2949
  %118 = load i8*, i8** %117, align 8, !dbg !2949
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2952
  store i8* %118, i8** %119, align 16, !dbg !2953, !tbaa !654
  %120 = icmp eq i8* %118, null, !dbg !2954
  br i1 %120, label %30, label %121, !dbg !2955

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 7, metadata !2938, metadata !DIExpression()), !dbg !2948
  %122 = load i8*, i8** %10, align 8, !dbg !2949
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2949
  store i8* %123, i8** %10, align 8, !dbg !2949
  %124 = bitcast i8* %122 to i8**, !dbg !2949
  %125 = load i8*, i8** %124, align 8, !dbg !2949
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2952
  store i8* %125, i8** %126, align 8, !dbg !2953, !tbaa !654
  %127 = icmp eq i8* %125, null, !dbg !2954
  br i1 %127, label %30, label %128, !dbg !2955

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 8, metadata !2938, metadata !DIExpression()), !dbg !2948
  %129 = load i8*, i8** %10, align 8, !dbg !2949
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2949
  store i8* %130, i8** %10, align 8, !dbg !2949
  %131 = bitcast i8* %129 to i8**, !dbg !2949
  %132 = load i8*, i8** %131, align 8, !dbg !2949
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2952
  store i8* %132, i8** %133, align 16, !dbg !2953, !tbaa !654
  %134 = icmp eq i8* %132, null, !dbg !2954
  br i1 %134, label %30, label %135, !dbg !2955

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 9, metadata !2938, metadata !DIExpression()), !dbg !2948
  %136 = load i8*, i8** %10, align 8, !dbg !2949
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2949
  store i8* %137, i8** %10, align 8, !dbg !2949
  %138 = bitcast i8* %136 to i8**, !dbg !2949
  %139 = load i8*, i8** %138, align 8, !dbg !2949
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2952
  store i8* %139, i8** %140, align 8, !dbg !2953, !tbaa !654
  %141 = icmp eq i8* %139, null, !dbg !2954
  %142 = select i1 %141, i64 9, i64 10, !dbg !2955
  br label %30, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2959 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2963, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %2, metadata !2965, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %3, metadata !2966, metadata !DIExpression()), !dbg !2975
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2976
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2967, metadata !DIExpression()), !dbg !2977
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2978
  call void @llvm.va_start(i8* nonnull %6), !dbg !2978
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2979
  call void @llvm.va_end(i8* nonnull %6), !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2981
  ret void, !dbg !2981
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2982 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.91, i64 0, i64 0), i32 5) #11, !dbg !2983
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.92, i64 0, i64 0)) #11, !dbg !2983
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #11, !dbg !2984
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.95, i64 0, i64 0)) #11, !dbg !2984
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.96, i64 0, i64 0), i32 5) #11, !dbg !2985
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2985, !tbaa !654
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2985
  ret void, !dbg !2986
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %1, metadata !2990, metadata !DIExpression()), !dbg !2992
  %3 = udiv i64 9223372036854775807, %1, !dbg !2993
  %4 = icmp ult i64 %3, %0, !dbg !2993
  br i1 %4, label %5, label %6, !dbg !2995

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2996
  unreachable, !dbg !2996

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %7, metadata !2998, metadata !DIExpression()) #11, !dbg !3005
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %8, metadata !3004, metadata !DIExpression()) #11, !dbg !3008
  %9 = icmp eq i8* %8, null, !dbg !3009
  %10 = icmp ne i64 %7, 0, !dbg !3011
  %11 = and i1 %10, %9, !dbg !3012
  br i1 %11, label %12, label %13, !dbg !3012

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3013
  unreachable, !dbg !3013

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3014
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2999 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()), !dbg !3015
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()), !dbg !3017
  %3 = icmp eq i8* %2, null, !dbg !3018
  %4 = icmp ne i64 %0, 0, !dbg !3019
  %5 = and i1 %4, %3, !dbg !3020
  br i1 %5, label %6, label %7, !dbg !3020

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3021
  unreachable, !dbg !3021

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3022
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %2, metadata !3029, metadata !DIExpression()), !dbg !3032
  %4 = udiv i64 9223372036854775807, %2, !dbg !3033
  %5 = icmp ult i64 %4, %1, !dbg !3033
  br i1 %5, label %6, label %7, !dbg !3035

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()) #11, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %8, metadata !3043, metadata !DIExpression()) #11, !dbg !3046
  %9 = icmp eq i64 %8, 0, !dbg !3047
  %10 = icmp ne i8* %0, null, !dbg !3049
  %11 = and i1 %10, %9, !dbg !3050
  br i1 %11, label %12, label %13, !dbg !3050

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3051
  br label %19, !dbg !3053

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %14, metadata !3038, metadata !DIExpression()) #11, !dbg !3044
  %15 = icmp eq i8* %14, null, !dbg !3055
  %16 = icmp ne i64 %8, 0, !dbg !3057
  %17 = and i1 %16, %15, !dbg !3058
  br i1 %17, label %18, label %19, !dbg !3058

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3059
  unreachable, !dbg !3059

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3060
  ret i8* %20, !dbg !3061
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3039 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3063
  %3 = icmp eq i64 %1, 0, !dbg !3064
  %4 = icmp ne i8* %0, null, !dbg !3065
  %5 = and i1 %4, %3, !dbg !3066
  br i1 %5, label %6, label %7, !dbg !3066

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3067
  br label %13, !dbg !3068

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %8, metadata !3038, metadata !DIExpression()), !dbg !3062
  %9 = icmp eq i8* %8, null, !dbg !3070
  %10 = icmp ne i64 %1, 0, !dbg !3071
  %11 = and i1 %10, %9, !dbg !3072
  br i1 %11, label %12, label %13, !dbg !3072

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3074
  ret i8* %14, !dbg !3075
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !191, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64* %1, metadata !192, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !193, metadata !DIExpression()), !dbg !3078
  %4 = load i64, i64* %1, align 8, !dbg !3079, !tbaa !795
  call void @llvm.dbg.value(metadata i64 %4, metadata !194, metadata !DIExpression()), !dbg !3080
  %5 = icmp eq i8* %0, null, !dbg !3081
  br i1 %5, label %6, label %20, !dbg !3083

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3084
  br i1 %7, label %8, label %13, !dbg !3087

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %9, metadata !194, metadata !DIExpression()), !dbg !3080
  %10 = icmp ugt i64 %2, 128, !dbg !3090
  %11 = zext i1 %10 to i64, !dbg !3090
  %12 = add nuw nsw i64 %9, %11, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %12, metadata !194, metadata !DIExpression()), !dbg !3080
  br label %13, !dbg !3092

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3093
  call void @llvm.dbg.value(metadata i64 %14, metadata !194, metadata !DIExpression()), !dbg !3080
  %15 = udiv i64 9223372036854775807, %2, !dbg !3094
  %16 = icmp ult i64 %15, %14, !dbg !3094
  br i1 %16, label %19, label %17, !dbg !3096

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !194, metadata !DIExpression()), !dbg !3080
  store i64 %14, i64* %1, align 8, !dbg !3097, !tbaa !795
  %18 = mul i64 %14, %2, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()) #11, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %28, metadata !3043, metadata !DIExpression()) #11, !dbg !3101
  br label %31, !dbg !3102

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3103
  unreachable, !dbg !3103

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3104
  %22 = icmp ugt i64 %21, %4, !dbg !3107
  br i1 %22, label %24, label %23, !dbg !3108

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3109
  unreachable, !dbg !3109

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3110
  %26 = add i64 %4, 1, !dbg !3111
  %27 = add i64 %26, %25, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %27, metadata !194, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %27, metadata !194, metadata !DIExpression()), !dbg !3080
  store i64 %27, i64* %1, align 8, !dbg !3097, !tbaa !795
  %28 = mul i64 %27, %2, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()) #11, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %28, metadata !3043, metadata !DIExpression()) #11, !dbg !3101
  %29 = icmp eq i64 %28, 0, !dbg !3113
  br i1 %29, label %30, label %31, !dbg !3102

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3114
  br label %38, !dbg !3115

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %33, metadata !3038, metadata !DIExpression()) #11, !dbg !3099
  %34 = icmp eq i8* %33, null, !dbg !3117
  %35 = icmp ne i64 %32, 0, !dbg !3118
  %36 = and i1 %35, %34, !dbg !3119
  br i1 %36, label %37, label %38, !dbg !3119

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3120
  unreachable, !dbg !3120

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3121
  ret i8* %39, !dbg !3122
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3123 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3125, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()) #11, !dbg !3127
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()) #11, !dbg !3130
  %3 = icmp eq i8* %2, null, !dbg !3131
  %4 = icmp ne i64 %0, 0, !dbg !3132
  %5 = and i1 %4, %3, !dbg !3133
  br i1 %5, label %6, label %7, !dbg !3133

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3134
  unreachable, !dbg !3134

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64* %1, metadata !3141, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %0, metadata !191, metadata !DIExpression()) #11, !dbg !3144
  call void @llvm.dbg.value(metadata i64* %1, metadata !192, metadata !DIExpression()) #11, !dbg !3146
  call void @llvm.dbg.value(metadata i64 1, metadata !193, metadata !DIExpression()) #11, !dbg !3147
  %3 = load i64, i64* %1, align 8, !dbg !3148, !tbaa !795
  call void @llvm.dbg.value(metadata i64 %3, metadata !194, metadata !DIExpression()) #11, !dbg !3149
  %4 = icmp eq i8* %0, null, !dbg !3150
  br i1 %4, label %5, label %12, !dbg !3151

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3152
  br i1 %6, label %9, label %7, !dbg !3153

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !194, metadata !DIExpression()) #11, !dbg !3149
  %8 = icmp slt i64 %3, 0, !dbg !3154
  br i1 %8, label %11, label %9, !dbg !3155

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !194, metadata !DIExpression()) #11, !dbg !3149
  store i64 %10, i64* %1, align 8, !dbg !3156, !tbaa !795
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()) #11, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %18, metadata !3043, metadata !DIExpression()) #11, !dbg !3159
  br label %21, !dbg !3160

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3161
  unreachable, !dbg !3161

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3162
  br i1 %13, label %15, label %14, !dbg !3163

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3164
  unreachable, !dbg !3164

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3165
  %17 = add i64 %3, 1, !dbg !3166
  %18 = add i64 %17, %16, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %18, metadata !194, metadata !DIExpression()) #11, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %18, metadata !194, metadata !DIExpression()) #11, !dbg !3149
  store i64 %18, i64* %1, align 8, !dbg !3156, !tbaa !795
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()) #11, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %18, metadata !3043, metadata !DIExpression()) #11, !dbg !3159
  %19 = icmp eq i64 %18, 0, !dbg !3168
  br i1 %19, label %20, label %21, !dbg !3160

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3169
  br label %28, !dbg !3170

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %23, metadata !3038, metadata !DIExpression()) #11, !dbg !3157
  %24 = icmp eq i8* %23, null, !dbg !3172
  %25 = icmp ne i64 %22, 0, !dbg !3173
  %26 = and i1 %25, %24, !dbg !3174
  br i1 %26, label %27, label %28, !dbg !3174

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3175
  unreachable, !dbg !3175

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3176
  ret i8* %29, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3178 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()) #11, !dbg !3182
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()) #11, !dbg !3185
  %3 = icmp eq i8* %2, null, !dbg !3186
  %4 = icmp ne i64 %0, 0, !dbg !3187
  %5 = and i1 %4, %3, !dbg !3188
  br i1 %5, label %6, label %7, !dbg !3188

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3189
  unreachable, !dbg !3189

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3190
  ret i8* %2, !dbg !3191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3192 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  %3 = udiv i64 9223372036854775807, %1, !dbg !3199
  %4 = icmp ult i64 %3, %0, !dbg !3199
  br i1 %4, label %8, label %5, !dbg !3201

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %6, metadata !3196, metadata !DIExpression()), !dbg !3203
  %7 = icmp eq i8* %6, null, !dbg !3204
  br i1 %7, label %8, label %9, !dbg !3205

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3206
  unreachable, !dbg !3206

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3213, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #11, !dbg !3216
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %3, metadata !3004, metadata !DIExpression()) #11, !dbg !3219
  %4 = icmp eq i8* %3, null, !dbg !3220
  %5 = icmp ne i64 %1, 0, !dbg !3221
  %6 = and i1 %5, %4, !dbg !3222
  br i1 %6, label %7, label %8, !dbg !3222

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3223
  unreachable, !dbg !3223

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3224
  ret i8* %3, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3230
  %3 = add i64 %2, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #11, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %3, metadata !3213, metadata !DIExpression()) #11, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %3, metadata !2998, metadata !DIExpression()) #11, !dbg !3235
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %4, metadata !3004, metadata !DIExpression()) #11, !dbg !3238
  %5 = icmp eq i8* %4, null, !dbg !3239
  %6 = icmp ne i64 %3, 0, !dbg !3240
  %7 = and i1 %6, %5, !dbg !3241
  br i1 %7, label %8, label %9, !dbg !3241

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3242
  unreachable, !dbg !3242

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3243
  ret i8* %4, !dbg !3244
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3245 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3247, !tbaa !719
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #11, !dbg !3248
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #11, !dbg !3249
  tail call void @abort() #15, !dbg !3250
  unreachable, !dbg !3250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3251 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3261
  %3 = icmp eq i64 %0, 0, !dbg !3262
  %4 = icmp eq i64 %1, 0, !dbg !3263
  %5 = or i1 %3, %4, !dbg !3264
  br i1 %5, label %12, label %6, !dbg !3264

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %7, metadata !3257, metadata !DIExpression()), !dbg !3266
  %8 = udiv i64 %7, %1, !dbg !3267
  %9 = icmp eq i64 %8, %0, !dbg !3269
  br i1 %9, label %12, label %10, !dbg !3270

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3271
  store i32 12, i32* %11, align 4, !dbg !3273, !tbaa !719
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3254, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %13, metadata !3255, metadata !DIExpression()), !dbg !3261
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %15, metadata !3256, metadata !DIExpression()), !dbg !3275
  br label %16, !dbg !3276

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3277
  ret i8* %17, !dbg !3278
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3279 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3296, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !3297, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %2, metadata !3298, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3299, metadata !DIExpression()), !dbg !3308
  %6 = bitcast i32* %5 to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3309
  %7 = icmp eq i32* %0, null, !dbg !3310
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3312
  call void @llvm.dbg.value(metadata i32* %8, metadata !3296, metadata !DIExpression()), !dbg !3305
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %9, metadata !3300, metadata !DIExpression()), !dbg !3314
  %10 = icmp ugt i64 %9, -3, !dbg !3315
  %11 = icmp ne i64 %2, 0, !dbg !3316
  %12 = and i1 %11, %10, !dbg !3317
  br i1 %12, label %13, label %18, !dbg !3317

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3318
  br i1 %14, label %18, label %15, !dbg !3319

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3320, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %16, metadata !3302, metadata !DIExpression()), !dbg !3321
  %17 = zext i8 %16 to i32, !dbg !3322
  store i32 %17, i32* %8, align 4, !dbg !3323, !tbaa !719
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3324
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3325
  ret i64 %19, !dbg !3325
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #7 !dbg !3326 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !3355, metadata !DIExpression()), !dbg !3358
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %2, metadata !3357, metadata !DIExpression()), !dbg !3360
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %2, metadata !3362, metadata !DIExpression()) #11, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %3, metadata !3370, metadata !DIExpression()) #11, !dbg !3372
  call void @llvm.dbg.value(metadata i64 32, metadata !3371, metadata !DIExpression()) #11, !dbg !3372
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !3374
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !3375
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3376
  store i8 0, i8* %6, align 1, !dbg !3377, !tbaa !844
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !3378
  %8 = icmp sgt i64 %7, 0, !dbg !3380
  br i1 %8, label %9, label %18, !dbg !3382

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %10, metadata !3356, metadata !DIExpression()), !dbg !3384
  br label %11, !dbg !3385

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %12, metadata !3356, metadata !DIExpression()), !dbg !3384
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !3385
  %14 = load i8, i8* %13, align 1, !dbg !3385, !tbaa !844
  %15 = icmp eq i8 %14, 32, !dbg !3386
  br i1 %15, label %16, label %18, !dbg !3387

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %13, align 1, !dbg !3388, !tbaa !844
  call void @llvm.dbg.value(metadata i8* %13, metadata !3356, metadata !DIExpression()), !dbg !3384
  %17 = icmp ult i8* %2, %13, !dbg !3380
  br i1 %17, label %11, label %18, !dbg !3382, !llvm.loop !3389

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !3391
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #7 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64* %1, metadata !3399, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !3400, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %3, metadata !3401, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 0, metadata !3402, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 0, metadata !3403, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3404, metadata !DIExpression()), !dbg !3412
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !3413
  tail call void @setutxent() #11, !dbg !3414
  call void @llvm.dbg.value(metadata i64 0, metadata !3402, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3404, metadata !DIExpression()), !dbg !3412
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !3405, metadata !DIExpression()), !dbg !3416
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !3417
  br i1 %7, label %79, label %8, !dbg !3418

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !3418

; <label>:13:                                     ; preds = %8, %72
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %77, %72 ]
  %15 = phi i64 [ 0, %8 ], [ %76, %72 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %75, %72 ]
  %17 = phi i8* [ null, %8 ], [ %74, %72 ]
  %18 = phi i64 [ 0, %8 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3402, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !3404, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !3419, metadata !DIExpression()) #11, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %3, metadata !3424, metadata !DIExpression()) #11, !dbg !3429
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !3430
  %20 = load i8, i8* %19, align 4, !dbg !3430, !tbaa !844
  %21 = icmp eq i8 %20, 0, !dbg !3430
  br i1 %21, label %26, label %22, !dbg !3430

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !3430
  %24 = load i16, i16* %23, align 4, !dbg !3430, !tbaa !845
  %25 = icmp eq i16 %24, 7, !dbg !3430
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ], !dbg !3431
  %28 = or i1 %10, %27, !dbg !3432
  br i1 %28, label %29, label %72, !dbg !3432

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !3434
  %31 = or i1 %12, %30, !dbg !3434
  br i1 %31, label %43, label %32, !dbg !3434

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !3436
  %34 = load i32, i32* %33, align 4, !dbg !3436, !tbaa !3437
  %35 = icmp sgt i32 %34, 0, !dbg !3438
  br i1 %35, label %36, label %43, !dbg !3439

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !3440
  %38 = icmp slt i32 %37, 0, !dbg !3441
  br i1 %38, label %39, label %43, !dbg !3442

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !3443
  %41 = load i32, i32* %40, align 4, !dbg !3443, !tbaa !719
  %42 = icmp eq i32 %41, 3, !dbg !3444
  br i1 %42, label %72, label %43, !dbg !3445

; <label>:43:                                     ; preds = %39, %36, %32, %29
  call void @llvm.dbg.value(metadata i64 %18, metadata !3403, metadata !DIExpression()), !dbg !3411
  %44 = icmp eq i64 %15, %18, !dbg !3446
  br i1 %44, label %45, label %64, !dbg !3449

; <label>:45:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %17, metadata !211, metadata !DIExpression()) #11, !dbg !3450
  call void @llvm.dbg.value(metadata i64 384, metadata !213, metadata !DIExpression()) #11, !dbg !3452
  call void @llvm.dbg.value(metadata i64 undef, metadata !214, metadata !DIExpression()) #11, !dbg !3453
  %46 = icmp eq i8* %17, null, !dbg !3454
  br i1 %46, label %47, label %52, !dbg !3456

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !3457
  br i1 %48, label %59, label %49, !dbg !3460

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #11, !dbg !3453
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !3461
  br i1 %50, label %51, label %59, !dbg !3463

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !3464
  unreachable, !dbg !3464

; <label>:52:                                     ; preds = %45
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !3465
  br i1 %53, label %55, label %54, !dbg !3468

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !3469
  unreachable, !dbg !3469

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !3470
  %57 = add i64 %15, 1, !dbg !3471
  %58 = add i64 %57, %56, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %58, metadata !214, metadata !DIExpression()) #11, !dbg !3453
  br label %59

; <label>:59:                                     ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !3473
  call void @llvm.dbg.value(metadata i64 %60, metadata !214, metadata !DIExpression()) #11, !dbg !3453
  %61 = mul i64 %60, 384, !dbg !3474
  %62 = tail call i8* @xrealloc(i8* %17, i64 %61) #11, !dbg !3475
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !3404, metadata !DIExpression()), !dbg !3412
  br label %64, !dbg !3477

; <label>:64:                                     ; preds = %59, %43
  %65 = phi i64 [ %60, %59 ], [ %18, %43 ], !dbg !3478
  %66 = phi i8* [ %62, %59 ], [ %17, %43 ], !dbg !3478
  %67 = phi %struct.utmpx* [ %63, %59 ], [ %16, %43 ], !dbg !3478
  call void @llvm.dbg.value(metadata %struct.utmpx* %67, metadata !3404, metadata !DIExpression()), !dbg !3412
  %68 = add i64 %15, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %68, metadata !3402, metadata !DIExpression()), !dbg !3410
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %67, i64 %15, !dbg !3480
  %70 = bitcast %struct.utmpx* %69 to i8*, !dbg !3481
  %71 = bitcast %struct.utmpx* %14 to i8*, !dbg !3481
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 384, i1 false), !dbg !3481, !tbaa.struct !3482
  br label %72, !dbg !3483

; <label>:72:                                     ; preds = %39, %26, %64
  %73 = phi i64 [ %65, %64 ], [ %18, %26 ], [ %18, %39 ], !dbg !3478
  %74 = phi i8* [ %66, %64 ], [ %17, %26 ], [ %17, %39 ], !dbg !3478
  %75 = phi %struct.utmpx* [ %67, %64 ], [ %16, %26 ], [ %16, %39 ], !dbg !3478
  %76 = phi i64 [ %68, %64 ], [ %15, %26 ], [ %15, %39 ], !dbg !3478
  call void @llvm.dbg.value(metadata i64 %76, metadata !3402, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !3404, metadata !DIExpression()), !dbg !3412
  %77 = tail call %struct.utmpx* @getutxent() #11, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.utmpx* %77, metadata !3405, metadata !DIExpression()), !dbg !3416
  %78 = icmp eq %struct.utmpx* %77, null, !dbg !3417
  br i1 %78, label %79, label %13, !dbg !3418, !llvm.loop !3484

; <label>:79:                                     ; preds = %72, %4
  %80 = phi i8* [ null, %4 ], [ %74, %72 ], !dbg !3486
  %81 = phi i64 [ 0, %4 ], [ %76, %72 ], !dbg !3487
  call void @llvm.dbg.value(metadata i64 %81, metadata !3402, metadata !DIExpression()), !dbg !3410
  tail call void @endutxent() #11, !dbg !3488
  store i64 %81, i64* %1, align 8, !dbg !3489, !tbaa !795
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !3490
  store i8* %80, i8** %82, align 8, !dbg !3490, !tbaa !654
  ret i32 0, !dbg !3491
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3492 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3531, metadata !DIExpression()), !dbg !3536
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3537
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3538, metadata !DIExpression()), !dbg !3541
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3543
  %4 = load i32, i32* %3, align 8, !dbg !3543, !tbaa !3544
  %5 = and i32 %4, 32, !dbg !3543
  %6 = icmp eq i32 %5, 0, !dbg !3545
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3546
  %8 = icmp ne i32 %7, 0, !dbg !3547
  br i1 %6, label %9, label %19, !dbg !3548

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3550
  %11 = xor i1 %8, true, !dbg !3551
  %12 = or i1 %10, %11, !dbg !3551
  %13 = sext i1 %8 to i32, !dbg !3551
  br i1 %12, label %22, label %14, !dbg !3551

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3552
  %16 = load i32, i32* %15, align 4, !dbg !3552, !tbaa !719
  %17 = icmp ne i32 %16, 9, !dbg !3553
  %18 = sext i1 %17 to i32, !dbg !3554
  br label %22, !dbg !3554

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3555

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3557
  store i32 0, i32* %21, align 4, !dbg !3559, !tbaa !719
  br label %22, !dbg !3557

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3560
  ret i32 %23, !dbg !3561
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 1, metadata !3568, metadata !DIExpression()), !dbg !3571
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %2, metadata !3569, metadata !DIExpression()), !dbg !3573
  %3 = icmp eq i8* %2, null, !dbg !3574
  br i1 %3, label %11, label %4, !dbg !3576

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i64 0, i64 0)) #14, !dbg !3577
  %6 = icmp eq i32 %5, 0, !dbg !3582
  br i1 %6, label %10, label %7, !dbg !3583

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0)) #14, !dbg !3584
  %9 = icmp eq i32 %8, 0, !dbg !3585
  br i1 %9, label %10, label %11, !dbg !3586

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3568, metadata !DIExpression()), !dbg !3571
  br label %11, !dbg !3587

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3589 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3596
  %2 = icmp eq i8* %1, null, !dbg !3597
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), i8* %1, !dbg !3599
  call void @llvm.dbg.value(metadata i8* %3, metadata !3594, metadata !DIExpression()), !dbg !3596
  %4 = load i8, i8* %3, align 1, !dbg !3600, !tbaa !844
  %5 = icmp eq i8 %4, 0, !dbg !3604
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i8* %3, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %6, metadata !3594, metadata !DIExpression()), !dbg !3596
  ret i8* %6, !dbg !3606
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3607 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 0, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 0, metadata !3649, metadata !DIExpression()), !dbg !3652
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %2, metadata !3648, metadata !DIExpression()), !dbg !3654
  %3 = icmp slt i32 %2, 0, !dbg !3655
  br i1 %3, label %4, label %6, !dbg !3657

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3658
  br label %24, !dbg !3659

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3660
  %8 = icmp eq i32 %7, 0, !dbg !3660
  br i1 %8, label %13, label %9, !dbg !3662

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3663
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3664
  %12 = icmp eq i64 %11, -1, !dbg !3665
  br i1 %12, label %16, label %13, !dbg !3666

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3667
  %15 = icmp eq i32 %14, 0, !dbg !3667
  br i1 %15, label %16, label %18, !dbg !3668

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3647, metadata !DIExpression()), !dbg !3651
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %21, metadata !3649, metadata !DIExpression()), !dbg !3652
  br label %24, !dbg !3670

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3671
  %20 = load i32, i32* %19, align 4, !dbg !3671, !tbaa !719
  call void @llvm.dbg.value(metadata i32 %20, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %20, metadata !3647, metadata !DIExpression()), !dbg !3651
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %21, metadata !3649, metadata !DIExpression()), !dbg !3652
  %22 = icmp eq i32 %20, 0, !dbg !3672
  br i1 %22, label %24, label %23, !dbg !3670

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3674, !tbaa !719
  call void @llvm.dbg.value(metadata i32 -1, metadata !3649, metadata !DIExpression()), !dbg !3652
  br label %24, !dbg !3676

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3677
  ret i32 %25, !dbg !3678
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3679 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3720
  br i1 %2, label %6, label %3, !dbg !3722

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3723
  %5 = icmp eq i32 %4, 0, !dbg !3723
  br i1 %5, label %6, label %8, !dbg !3724

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3725
  br label %17, !dbg !3726

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3727, metadata !DIExpression()) #11, !dbg !3732
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3734
  %10 = load i32, i32* %9, align 8, !dbg !3734, !tbaa !3544
  %11 = and i32 %10, 256, !dbg !3736
  %12 = icmp eq i32 %11, 0, !dbg !3736
  br i1 %12, label %15, label %13, !dbg !3737

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3738
  br label %15, !dbg !3738

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3739
  br label %17, !dbg !3740

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3741
  ret i32 %18, !dbg !3742
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3743 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3783, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 %2, metadata !3785, metadata !DIExpression()), !dbg !3791
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3792
  %5 = load i8*, i8** %4, align 8, !dbg !3792, !tbaa !3793
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3794
  %7 = load i8*, i8** %6, align 8, !dbg !3794, !tbaa !3795
  %8 = icmp eq i8* %5, %7, !dbg !3796
  br i1 %8, label %9, label %28, !dbg !3797

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3798
  %11 = load i8*, i8** %10, align 8, !dbg !3798, !tbaa !875
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3799
  %13 = load i8*, i8** %12, align 8, !dbg !3799, !tbaa !3800
  %14 = icmp eq i8* %11, %13, !dbg !3801
  br i1 %14, label %15, label %28, !dbg !3802

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3803
  %17 = load i8*, i8** %16, align 8, !dbg !3803, !tbaa !3804
  %18 = icmp eq i8* %17, null, !dbg !3805
  br i1 %18, label %19, label %28, !dbg !3806

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3807
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %21, metadata !3786, metadata !DIExpression()), !dbg !3809
  %22 = icmp eq i64 %21, -1, !dbg !3810
  br i1 %22, label %30, label %23, !dbg !3812

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3813
  %25 = load i32, i32* %24, align 8, !dbg !3814, !tbaa !3544
  %26 = and i32 %25, -17, !dbg !3814
  store i32 %26, i32* %24, align 8, !dbg !3814, !tbaa !3544
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3815
  store i64 %21, i64* %27, align 8, !dbg !3816, !tbaa !3817
  br label %30, !dbg !3818

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3819
  br label %30, !dbg !3820

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3821
  ret i32 %31, !dbg !3822
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

!llvm.dbg.cu = !{!2, !52, !58, !67, !74, !90, !97, !173, !166, !181, !198, !200, !202, !205, !216, !218, !220, !609, !611, !613}
!llvm.ident = !{!615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615}
!llvm.module.flags = !{!616, !617, !618, !619, !620}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 39, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !36)
!3 = !DIFile(filename: "src/users.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!25 = !{!26, !29, !30, !33, !35}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 62, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!0}
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !48)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !40, line: 50, size: 256, elements: !41)
!40 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!41 = !{!42, !43, !45, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 52, baseType: !26, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !39, file: !40, line: 55, baseType: !44, size: 32, offset: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !39, file: !40, line: 56, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !39, file: !40, line: 57, baseType: !44, size: 32, offset: 192)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !26, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !55)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!54 = !{}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "file_name", scope: !58, file: !63, line: 46, type: !26, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !60)
!59 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !{!56, !61}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !58, file: !63, line: 56, type: !64, isLocal: true, isDefinition: true)
!63 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "exit_failure", scope: !67, file: !70, line: 24, type: !71, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !69)
!68 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!69 = !{!65}
!70 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "long_options", scope: !74, file: !77, line: 33, type: !78, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !76)
!75 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !{!72}
!77 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 768, elements: !86)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !40, line: 50, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !40, line: 52, baseType: !26, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !80, file: !40, line: 55, baseType: !44, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !80, file: !40, line: 56, baseType: !46, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !40, line: 57, baseType: !44, size: 32, offset: 192)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "program_name", scope: !90, file: !94, line: 33, type: !26, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !92, globals: !93)
!91 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!92 = !{!29, !34}
!93 = !{!88}
!94 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !97, file: !125, line: 85, type: !160, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !120, globals: !122)
!98 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!99 = !{!11, !100, !105}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 46, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!108 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!120 = !{!44, !121, !30, !34}
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !{!95, !123, !130, !142, !144, !149, !156, !158}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !97, file: !125, line: 101, type: !126, isLocal: false, isDefinition: true)
!125 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 320, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!128 = !{!129}
!129 = !DISubrange(count: 10)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !97, file: !125, line: 1052, type: !132, isLocal: false, isDefinition: true)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !125, line: 65, size: 448, elements: !133)
!133 = !{!134, !135, !136, !140, !141}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !132, file: !125, line: 68, baseType: !11, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !125, line: 71, baseType: !44, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !132, file: !125, line: 75, baseType: !137, size: 256, offset: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !132, file: !125, line: 78, baseType: !26, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !132, file: !125, line: 81, baseType: !26, size: 64, offset: 384)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !97, file: !125, line: 116, type: !132, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "slot0", scope: !97, file: !125, line: 842, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 256)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "slotvec", scope: !97, file: !125, line: 845, type: !151, isLocal: true, isDefinition: true)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !125, line: 834, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !125, line: 836, baseType: !30, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !125, line: 837, baseType: !34, size: 64, offset: 64)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "nslots", scope: !97, file: !125, line: 843, type: !44, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "slotvec0", scope: !97, file: !125, line: 844, type: !152, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 704, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!162 = !{!163}
!163 = !DISubrange(count: 11)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !166, file: !169, line: 26, type: !170, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !168)
!167 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !{!164}
!169 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 376, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 47)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !180)
!174 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 41, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = !{!179}
!179 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!180 = !{!29}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !197)
!182 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = !{!184}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !186, file: !185, line: 186, baseType: !7, size: 32, elements: !195)
!185 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = distinct !DISubprogram(name: "x2nrealloc", scope: !185, file: !185, line: 174, type: !187, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !190)
!187 = !DISubroutineType(types: !188)
!188 = !{!29, !29, !189, !30}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!190 = !{!191, !192, !193, !194}
!191 = !DILocalVariable(name: "p", arg: 1, scope: !186, file: !185, line: 174, type: !29)
!192 = !DILocalVariable(name: "pn", arg: 2, scope: !186, file: !185, line: 174, type: !189)
!193 = !DILocalVariable(name: "s", arg: 3, scope: !186, file: !185, line: 174, type: !30)
!194 = !DILocalVariable(name: "n", scope: !186, file: !185, line: 176, type: !30)
!195 = !{!196}
!196 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!197 = !{!30, !34, !29}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!199 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !180)
!201 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !204)
!203 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !{!30}
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !215)
!206 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = !{!5, !208}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !209, file: !185, line: 186, baseType: !7, size: 32, elements: !195)
!209 = distinct !DISubprogram(name: "x2nrealloc", scope: !185, file: !185, line: 174, type: !187, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(name: "p", arg: 1, scope: !209, file: !185, line: 174, type: !29)
!212 = !DILocalVariable(name: "pn", arg: 2, scope: !209, file: !185, line: 174, type: !189)
!213 = !DILocalVariable(name: "s", arg: 3, scope: !209, file: !185, line: 174, type: !30)
!214 = !DILocalVariable(name: "n", scope: !209, file: !185, line: 176, type: !30)
!215 = !{!34, !29, !30}
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!217 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!219 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !180)
!221 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 41, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!226 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!227 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!228 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!234 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!264 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!265 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!266 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!267 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!268 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!269 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!270 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!271 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!272 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!273 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!275 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!334 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!421 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!495 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!496 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!497 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!498 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!499 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!500 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!502 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!503 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!504 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!505 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!506 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!507 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!508 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!541 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!542 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!543 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!544 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!545 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!550 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!551 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!552 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!553 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!610 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !180)
!612 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !180)
!614 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!615 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!616 = !{i32 2, !"Dwarf Version", i32 4}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{i32 1, !"wchar_size", i32 4}
!619 = !{i32 7, !"PIC Level", i32 2}
!620 = !{i32 7, !"PIE Level", i32 2}
!621 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 105, type: !622, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !44}
!624 = !{!625}
!625 = !DILocalVariable(name: "status", arg: 1, scope: !621, file: !3, line: 105, type: !44)
!626 = !DILocalVariable(name: "infomap", scope: !627, file: !628, line: 632, type: !642)
!627 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !628, file: !628, line: 630, type: !629, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !631)
!628 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!629 = !DISubroutineType(types: !630)
!630 = !{null, !26}
!631 = !{!632, !626, !633, !634, !641}
!632 = !DILocalVariable(name: "program", arg: 1, scope: !627, file: !628, line: 630, type: !26)
!633 = !DILocalVariable(name: "node", scope: !627, file: !628, line: 642, type: !26)
!634 = !DILocalVariable(name: "map_prog", scope: !627, file: !628, line: 643, type: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !627, file: !628, line: 632, size: 128, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !637, file: !628, line: 632, baseType: !26, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !628, line: 632, baseType: !26, size: 64, offset: 64)
!641 = !DILocalVariable(name: "lc_messages", scope: !627, file: !628, line: 655, type: !26)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 896, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 7)
!645 = !DILocation(line: 632, column: 67, scope: !627, inlinedAt: !646)
!646 = distinct !DILocation(line: 120, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 110, column: 5)
!648 = distinct !DILexicalBlock(scope: !621, file: !3, line: 107, column: 7)
!649 = !DILocation(line: 105, column: 12, scope: !621)
!650 = !DILocation(line: 107, column: 14, scope: !648)
!651 = !DILocation(line: 107, column: 7, scope: !621)
!652 = !DILocation(line: 108, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 108, column: 5)
!654 = !{!655, !655, i64 0}
!655 = !{!"any pointer", !656, i64 0}
!656 = !{!"omnipotent char", !657, i64 0}
!657 = !{!"Simple C/C++ TBAA"}
!658 = !DILocation(line: 111, column: 7, scope: !647)
!659 = !DILocation(line: 112, column: 7, scope: !647)
!660 = !DILocation(line: 118, column: 7, scope: !647)
!661 = !DILocation(line: 119, column: 7, scope: !647)
!662 = !DILocation(line: 632, column: 3, scope: !627, inlinedAt: !646)
!663 = !DILocation(line: 643, column: 36, scope: !627, inlinedAt: !646)
!664 = !DILocation(line: 643, column: 25, scope: !627, inlinedAt: !646)
!665 = !DILocation(line: 645, column: 33, scope: !627, inlinedAt: !646)
!666 = !DILocation(line: 645, column: 3, scope: !627, inlinedAt: !646)
!667 = !DILocation(line: 646, column: 13, scope: !627, inlinedAt: !646)
!668 = !DILocation(line: 645, column: 20, scope: !627, inlinedAt: !646)
!669 = !{!670, !655, i64 0}
!670 = !{!"infomap", !655, i64 0, !655, i64 8}
!671 = !DILocation(line: 645, column: 10, scope: !627, inlinedAt: !646)
!672 = !DILocation(line: 645, column: 28, scope: !627, inlinedAt: !646)
!673 = distinct !{!673, !674, !675}
!674 = !DILocation(line: 645, column: 3, scope: !627)
!675 = !DILocation(line: 646, column: 13, scope: !627)
!676 = !DILocation(line: 648, column: 17, scope: !677, inlinedAt: !646)
!677 = distinct !DILexicalBlock(scope: !627, file: !628, line: 648, column: 7)
!678 = !{!670, !655, i64 8}
!679 = !DILocation(line: 648, column: 7, scope: !677, inlinedAt: !646)
!680 = !DILocation(line: 648, column: 7, scope: !627, inlinedAt: !646)
!681 = !DILocation(line: 642, column: 15, scope: !627, inlinedAt: !646)
!682 = !DILocation(line: 651, column: 3, scope: !627, inlinedAt: !646)
!683 = !DILocation(line: 655, column: 29, scope: !627, inlinedAt: !646)
!684 = !DILocation(line: 655, column: 15, scope: !627, inlinedAt: !646)
!685 = !DILocation(line: 656, column: 7, scope: !686, inlinedAt: !646)
!686 = distinct !DILexicalBlock(scope: !627, file: !628, line: 656, column: 7)
!687 = !DILocation(line: 656, column: 19, scope: !686, inlinedAt: !646)
!688 = !DILocation(line: 656, column: 22, scope: !686, inlinedAt: !646)
!689 = !DILocation(line: 656, column: 7, scope: !627, inlinedAt: !646)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !646)
!691 = distinct !DILexicalBlock(scope: !686, file: !628, line: 657, column: 5)
!692 = !DILocation(line: 664, column: 5, scope: !691, inlinedAt: !646)
!693 = !DILocation(line: 665, column: 3, scope: !627, inlinedAt: !646)
!694 = !DILocation(line: 667, column: 3, scope: !627, inlinedAt: !646)
!695 = !DILocation(line: 669, column: 1, scope: !627, inlinedAt: !646)
!696 = !DILocation(line: 122, column: 3, scope: !621)
!697 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 126, type: !698, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!44, !44, !33}
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "argc", arg: 1, scope: !697, file: !3, line: 126, type: !44)
!702 = !DILocalVariable(name: "argv", arg: 2, scope: !697, file: !3, line: 126, type: !33)
!703 = !DILocation(line: 126, column: 11, scope: !697)
!704 = !DILocation(line: 126, column: 24, scope: !697)
!705 = !DILocation(line: 129, column: 21, scope: !697)
!706 = !DILocation(line: 129, column: 3, scope: !697)
!707 = !DILocation(line: 130, column: 3, scope: !697)
!708 = !DILocation(line: 131, column: 3, scope: !697)
!709 = !DILocation(line: 132, column: 3, scope: !697)
!710 = !DILocation(line: 134, column: 3, scope: !697)
!711 = !DILocation(line: 136, column: 63, scope: !697)
!712 = !DILocation(line: 136, column: 3, scope: !697)
!713 = !DILocation(line: 138, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !697, file: !3, line: 138, column: 7)
!715 = !DILocation(line: 138, column: 56, scope: !714)
!716 = !DILocation(line: 138, column: 7, scope: !697)
!717 = !DILocation(line: 139, column: 5, scope: !714)
!718 = !DILocation(line: 141, column: 18, scope: !697)
!719 = !{!720, !720, i64 0}
!720 = !{!"int", !656, i64 0}
!721 = !DILocation(line: 141, column: 16, scope: !697)
!722 = !DILocation(line: 141, column: 3, scope: !697)
!723 = !DILocation(line: 144, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !697, file: !3, line: 142, column: 5)
!725 = !DILocation(line: 145, column: 7, scope: !724)
!726 = !DILocation(line: 148, column: 14, scope: !724)
!727 = !DILocation(line: 148, column: 7, scope: !724)
!728 = !DILocation(line: 149, column: 7, scope: !724)
!729 = !DILocation(line: 152, column: 20, scope: !724)
!730 = !DILocation(line: 152, column: 55, scope: !724)
!731 = !DILocation(line: 152, column: 62, scope: !724)
!732 = !DILocation(line: 152, column: 50, scope: !724)
!733 = !DILocation(line: 152, column: 43, scope: !724)
!734 = !DILocation(line: 152, column: 7, scope: !724)
!735 = !DILocation(line: 153, column: 7, scope: !724)
!736 = !DILocation(line: 156, column: 3, scope: !697)
!737 = distinct !DISubprogram(name: "users", scope: !3, file: !3, line: 91, type: !738, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !26, !44}
!740 = !{!741, !742, !743, !744}
!741 = !DILocalVariable(name: "filename", arg: 1, scope: !737, file: !3, line: 91, type: !26)
!742 = !DILocalVariable(name: "options", arg: 2, scope: !737, file: !3, line: 91, type: !44)
!743 = !DILocalVariable(name: "n_users", scope: !737, file: !3, line: 93, type: !30)
!744 = !DILocalVariable(name: "utmp_buf", scope: !737, file: !3, line: 94, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !748, line: 55, size: 3072, elements: !749)
!748 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!749 = !{!750, !752, !755, !759, !763, !764, !765, !770, !772, !777, !779}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !747, file: !748, line: 57, baseType: !751, size: 16)
!751 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !747, file: !748, line: 58, baseType: !753, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !754, line: 152, baseType: !44)
!754 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !747, file: !748, line: 59, baseType: !756, size: 256, offset: 64)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !747, file: !748, line: 60, baseType: !760, size: 32, offset: 320)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 4)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !747, file: !748, line: 61, baseType: !756, size: 256, offset: 352)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !747, file: !748, line: 62, baseType: !146, size: 2048, offset: 608)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !747, file: !748, line: 63, baseType: !766, size: 32, offset: 2656)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !748, line: 42, size: 32, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !766, file: !748, line: 45, baseType: !751, size: 16)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !766, file: !748, line: 46, baseType: !751, size: 16, offset: 16)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !747, file: !748, line: 70, baseType: !771, size: 32, offset: 2688)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !754, line: 40, baseType: !44)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !747, file: !748, line: 75, baseType: !773, size: 64, offset: 2720)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !748, line: 71, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !773, file: !748, line: 73, baseType: !771, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !773, file: !748, line: 74, baseType: !771, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !747, file: !748, line: 80, baseType: !778, size: 128, offset: 2784)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 128, elements: !761)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !747, file: !748, line: 81, baseType: !780, size: 160, offset: 2912)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 20)
!783 = !DILocation(line: 91, column: 20, scope: !737)
!784 = !DILocation(line: 91, column: 34, scope: !737)
!785 = !DILocation(line: 93, column: 3, scope: !737)
!786 = !DILocation(line: 94, column: 3, scope: !737)
!787 = !DILocation(line: 93, column: 10, scope: !737)
!788 = !DILocation(line: 94, column: 16, scope: !737)
!789 = !DILocation(line: 96, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !737, file: !3, line: 96, column: 7)
!791 = !DILocation(line: 96, column: 58, scope: !790)
!792 = !DILocation(line: 96, column: 7, scope: !737)
!793 = !DILocation(line: 97, column: 5, scope: !790)
!794 = !DILocation(line: 99, column: 23, scope: !737)
!795 = !{!796, !796, i64 0}
!796 = !{!"long", !656, i64 0}
!797 = !DILocalVariable(name: "n", arg: 1, scope: !798, file: !3, line: 53, type: !30)
!798 = distinct !DISubprogram(name: "list_entries_users", scope: !3, file: !3, line: 53, type: !799, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !803)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !30, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!803 = !{!797, !804, !805, !806, !807, !808, !812}
!804 = !DILocalVariable(name: "this", arg: 2, scope: !798, file: !3, line: 53, type: !801)
!805 = !DILocalVariable(name: "u", scope: !798, file: !3, line: 55, type: !33)
!806 = !DILocalVariable(name: "i", scope: !798, file: !3, line: 56, type: !30)
!807 = !DILocalVariable(name: "n_entries", scope: !798, file: !3, line: 57, type: !30)
!808 = !DILocalVariable(name: "trimmed_name", scope: !809, file: !3, line: 63, type: !34)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 62, column: 9)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 61, column: 11)
!811 = distinct !DILexicalBlock(scope: !798, file: !3, line: 60, column: 5)
!812 = !DILocalVariable(name: "c", scope: !813, file: !3, line: 77, type: !28)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 76, column: 5)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 75, column: 3)
!815 = distinct !DILexicalBlock(scope: !798, file: !3, line: 75, column: 3)
!816 = !DILocation(line: 53, column: 28, scope: !798, inlinedAt: !817)
!817 = distinct !DILocation(line: 99, column: 3, scope: !737)
!818 = !DILocalVariable(name: "n", arg: 1, scope: !819, file: !185, line: 99, type: !30)
!819 = distinct !DISubprogram(name: "xnmalloc", scope: !185, file: !185, line: 99, type: !820, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!29, !30, !30}
!822 = !{!818, !823}
!823 = !DILocalVariable(name: "s", arg: 2, scope: !819, file: !185, line: 99, type: !30)
!824 = !DILocation(line: 99, column: 18, scope: !819, inlinedAt: !825)
!825 = distinct !DILocation(line: 55, column: 14, scope: !798, inlinedAt: !817)
!826 = !DILocation(line: 99, column: 28, scope: !819, inlinedAt: !825)
!827 = !DILocation(line: 101, column: 7, scope: !828, inlinedAt: !825)
!828 = distinct !DILexicalBlock(scope: !819, file: !185, line: 101, column: 7)
!829 = !DILocation(line: 101, column: 7, scope: !819, inlinedAt: !825)
!830 = !DILocation(line: 102, column: 5, scope: !828, inlinedAt: !825)
!831 = !DILocation(line: 99, column: 32, scope: !737)
!832 = !DILocation(line: 53, column: 50, scope: !798, inlinedAt: !817)
!833 = !DILocation(line: 103, column: 21, scope: !819, inlinedAt: !825)
!834 = !DILocation(line: 103, column: 10, scope: !819, inlinedAt: !825)
!835 = !DILocation(line: 55, column: 14, scope: !798, inlinedAt: !817)
!836 = !DILocation(line: 55, column: 10, scope: !798, inlinedAt: !817)
!837 = !DILocation(line: 57, column: 10, scope: !798, inlinedAt: !817)
!838 = !DILocation(line: 59, column: 3, scope: !798, inlinedAt: !817)
!839 = !DILocation(line: 73, column: 3, scope: !798, inlinedAt: !817)
!840 = !DILocation(line: 56, column: 10, scope: !798, inlinedAt: !817)
!841 = !DILocation(line: 75, column: 3, scope: !815, inlinedAt: !817)
!842 = !DILocation(line: 59, column: 11, scope: !798, inlinedAt: !817)
!843 = !DILocation(line: 61, column: 11, scope: !810, inlinedAt: !817)
!844 = !{!656, !656, i64 0}
!845 = !{!846, !847, i64 0}
!846 = !{!"utmpx", !847, i64 0, !720, i64 4, !656, i64 8, !656, i64 40, !656, i64 44, !656, i64 76, !848, i64 332, !720, i64 336, !849, i64 340, !656, i64 348, !656, i64 364}
!847 = !{!"short", !656, i64 0}
!848 = !{!"__exit_status", !847, i64 0, !847, i64 2}
!849 = !{!"", !720, i64 0, !720, i64 4}
!850 = !DILocation(line: 61, column: 11, scope: !811, inlinedAt: !817)
!851 = !DILocation(line: 65, column: 26, scope: !809, inlinedAt: !817)
!852 = !DILocation(line: 63, column: 17, scope: !809, inlinedAt: !817)
!853 = !DILocation(line: 67, column: 11, scope: !809, inlinedAt: !817)
!854 = !DILocation(line: 67, column: 24, scope: !809, inlinedAt: !817)
!855 = !DILocation(line: 68, column: 11, scope: !809, inlinedAt: !817)
!856 = !DILocation(line: 69, column: 9, scope: !809, inlinedAt: !817)
!857 = !DILocation(line: 0, scope: !798, inlinedAt: !817)
!858 = !DILocation(line: 70, column: 11, scope: !811, inlinedAt: !817)
!859 = distinct !{!859, !860, !861}
!860 = !DILocation(line: 59, column: 3, scope: !798)
!861 = !DILocation(line: 71, column: 5, scope: !798)
!862 = !DILocation(line: 75, column: 17, scope: !814, inlinedAt: !817)
!863 = !DILocation(line: 77, column: 19, scope: !813, inlinedAt: !817)
!864 = !DILocation(line: 78, column: 7, scope: !813, inlinedAt: !817)
!865 = !DILocation(line: 79, column: 7, scope: !813, inlinedAt: !817)
!866 = !DILocalVariable(name: "__c", arg: 1, scope: !867, file: !868, line: 108, type: !44)
!867 = distinct !DISubprogram(name: "putchar_unlocked", scope: !868, file: !868, line: 108, type: !869, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !871)
!868 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!869 = !DISubroutineType(types: !870)
!870 = !{!44, !44}
!871 = !{!866}
!872 = !DILocation(line: 108, column: 23, scope: !867, inlinedAt: !873)
!873 = distinct !DILocation(line: 79, column: 7, scope: !813, inlinedAt: !817)
!874 = !DILocation(line: 110, column: 10, scope: !867, inlinedAt: !873)
!875 = !{!876, !655, i64 40}
!876 = !{!"_IO_FILE", !720, i64 0, !655, i64 8, !655, i64 16, !655, i64 24, !655, i64 32, !655, i64 40, !655, i64 48, !655, i64 56, !655, i64 64, !655, i64 72, !655, i64 80, !655, i64 88, !655, i64 96, !655, i64 104, !720, i64 112, !720, i64 116, !796, i64 120, !847, i64 128, !656, i64 130, !656, i64 131, !655, i64 136, !796, i64 144, !655, i64 152, !655, i64 160, !655, i64 168, !655, i64 176, !796, i64 184, !720, i64 192, !656, i64 196}
!877 = !{!876, !655, i64 48}
!878 = !{!"branch_weights", i32 2000, i32 1}
!879 = !DILocation(line: 75, column: 31, scope: !814, inlinedAt: !817)
!880 = distinct !{!880, !881, !882}
!881 = !DILocation(line: 75, column: 3, scope: !815)
!882 = !DILocation(line: 80, column: 5, scope: !815)
!883 = !DILocation(line: 83, column: 11, scope: !884, inlinedAt: !817)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 82, column: 3)
!885 = distinct !DILexicalBlock(scope: !798, file: !3, line: 82, column: 3)
!886 = !DILocation(line: 83, column: 5, scope: !884, inlinedAt: !817)
!887 = !DILocation(line: 82, column: 31, scope: !884, inlinedAt: !817)
!888 = !DILocation(line: 82, column: 17, scope: !884, inlinedAt: !817)
!889 = !DILocation(line: 82, column: 3, scope: !885, inlinedAt: !817)
!890 = distinct !{!890, !891, !892}
!891 = !DILocation(line: 82, column: 3, scope: !885)
!892 = !DILocation(line: 83, column: 15, scope: !885)
!893 = !DILocation(line: 84, column: 3, scope: !798, inlinedAt: !817)
!894 = !DILocation(line: 101, column: 9, scope: !737)
!895 = !DILocation(line: 101, column: 3, scope: !737)
!896 = !DILocation(line: 102, column: 1, scope: !737)
!897 = distinct !DISubprogram(name: "userid_compare", scope: !3, file: !3, line: 45, type: !898, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !902)
!898 = !DISubroutineType(types: !899)
!899 = !{!44, !900, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "v_a", arg: 1, scope: !897, file: !3, line: 45, type: !900)
!904 = !DILocalVariable(name: "v_b", arg: 2, scope: !897, file: !3, line: 45, type: !900)
!905 = !DILocalVariable(name: "a", scope: !897, file: !3, line: 47, type: !33)
!906 = !DILocalVariable(name: "b", scope: !897, file: !3, line: 48, type: !33)
!907 = !DILocation(line: 45, column: 29, scope: !897)
!908 = !DILocation(line: 45, column: 46, scope: !897)
!909 = !DILocation(line: 47, column: 14, scope: !897)
!910 = !DILocation(line: 47, column: 10, scope: !897)
!911 = !DILocation(line: 48, column: 14, scope: !897)
!912 = !DILocation(line: 48, column: 10, scope: !897)
!913 = !DILocation(line: 49, column: 18, scope: !897)
!914 = !DILocation(line: 49, column: 22, scope: !897)
!915 = !DILocation(line: 49, column: 10, scope: !897)
!916 = !DILocation(line: 49, column: 3, scope: !897)
!917 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !63, file: !63, line: 51, type: !629, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !918)
!918 = !{!919}
!919 = !DILocalVariable(name: "file", arg: 1, scope: !917, file: !63, line: 51, type: !26)
!920 = !DILocation(line: 51, column: 41, scope: !917)
!921 = !DILocation(line: 53, column: 13, scope: !917)
!922 = !DILocation(line: 54, column: 1, scope: !917)
!923 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !63, file: !63, line: 88, type: !924, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !64}
!926 = !{!927}
!927 = !DILocalVariable(name: "ignore", arg: 1, scope: !923, file: !63, line: 88, type: !64)
!928 = !DILocation(line: 88, column: 37, scope: !923)
!929 = !DILocation(line: 90, column: 16, scope: !923)
!930 = !{!931, !931, i64 0}
!931 = !{!"_Bool", !656, i64 0}
!932 = !DILocation(line: 91, column: 1, scope: !923)
!933 = distinct !DISubprogram(name: "close_stdout", scope: !63, file: !63, line: 117, type: !934, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{null}
!936 = !{!937}
!937 = !DILocalVariable(name: "write_error", scope: !938, file: !63, line: 122, type: !26)
!938 = distinct !DILexicalBlock(scope: !939, file: !63, line: 121, column: 5)
!939 = distinct !DILexicalBlock(scope: !933, file: !63, line: 119, column: 7)
!940 = !DILocation(line: 119, column: 21, scope: !939)
!941 = !DILocation(line: 119, column: 7, scope: !939)
!942 = !DILocation(line: 119, column: 29, scope: !939)
!943 = !DILocation(line: 120, column: 7, scope: !939)
!944 = !DILocation(line: 120, column: 12, scope: !939)
!945 = !{i8 0, i8 2}
!946 = !DILocation(line: 120, column: 25, scope: !939)
!947 = !DILocation(line: 120, column: 28, scope: !939)
!948 = !DILocation(line: 120, column: 34, scope: !939)
!949 = !DILocation(line: 119, column: 7, scope: !933)
!950 = !DILocation(line: 122, column: 33, scope: !938)
!951 = !DILocation(line: 122, column: 19, scope: !938)
!952 = !DILocation(line: 123, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !938, file: !63, line: 123, column: 11)
!954 = !DILocation(line: 0, scope: !953)
!955 = !DILocation(line: 123, column: 11, scope: !938)
!956 = !DILocation(line: 124, column: 36, scope: !953)
!957 = !DILocation(line: 124, column: 9, scope: !953)
!958 = !DILocation(line: 127, column: 9, scope: !953)
!959 = !DILocation(line: 129, column: 14, scope: !938)
!960 = !DILocation(line: 129, column: 7, scope: !938)
!961 = !DILocation(line: 134, column: 42, scope: !962)
!962 = distinct !DILexicalBlock(scope: !933, file: !63, line: 134, column: 7)
!963 = !DILocation(line: 134, column: 28, scope: !962)
!964 = !DILocation(line: 134, column: 50, scope: !962)
!965 = !DILocation(line: 134, column: 7, scope: !933)
!966 = !DILocation(line: 135, column: 12, scope: !962)
!967 = !DILocation(line: 135, column: 5, scope: !962)
!968 = !DILocation(line: 136, column: 1, scope: !933)
!969 = distinct !DISubprogram(name: "parse_long_options", scope: !77, file: !77, line: 44, type: !970, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !74, retainedNodes: !973)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !44, !33, !26, !26, !26, !972, null}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !982}
!974 = !DILocalVariable(name: "argc", arg: 1, scope: !969, file: !77, line: 44, type: !44)
!975 = !DILocalVariable(name: "argv", arg: 2, scope: !969, file: !77, line: 45, type: !33)
!976 = !DILocalVariable(name: "command_name", arg: 3, scope: !969, file: !77, line: 46, type: !26)
!977 = !DILocalVariable(name: "package", arg: 4, scope: !969, file: !77, line: 47, type: !26)
!978 = !DILocalVariable(name: "version", arg: 5, scope: !969, file: !77, line: 48, type: !26)
!979 = !DILocalVariable(name: "usage_func", arg: 6, scope: !969, file: !77, line: 49, type: !972)
!980 = !DILocalVariable(name: "c", scope: !969, file: !77, line: 52, type: !44)
!981 = !DILocalVariable(name: "saved_opterr", scope: !969, file: !77, line: 53, type: !44)
!982 = !DILocalVariable(name: "authors", scope: !983, file: !77, line: 71, type: !987)
!983 = distinct !DILexicalBlock(scope: !984, file: !77, line: 70, column: 11)
!984 = distinct !DILexicalBlock(scope: !985, file: !77, line: 64, column: 9)
!985 = distinct !DILexicalBlock(scope: !986, file: !77, line: 62, column: 5)
!986 = distinct !DILexicalBlock(scope: !969, file: !77, line: 60, column: 7)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !988, line: 52, baseType: !989)
!988 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !990, line: 48, baseType: !991)
!990 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !75, line: 71, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 192, elements: !48)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !75, line: 71, size: 192, elements: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !993, file: !75, line: 71, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !993, file: !75, line: 71, baseType: !7, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !993, file: !75, line: 71, baseType: !29, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !993, file: !75, line: 71, baseType: !29, size: 64, offset: 128)
!999 = !DILocation(line: 44, column: 25, scope: !969)
!1000 = !DILocation(line: 45, column: 28, scope: !969)
!1001 = !DILocation(line: 46, column: 33, scope: !969)
!1002 = !DILocation(line: 47, column: 33, scope: !969)
!1003 = !DILocation(line: 48, column: 33, scope: !969)
!1004 = !DILocation(line: 49, column: 28, scope: !969)
!1005 = !DILocation(line: 55, column: 18, scope: !969)
!1006 = !DILocation(line: 53, column: 7, scope: !969)
!1007 = !DILocation(line: 58, column: 10, scope: !969)
!1008 = !DILocation(line: 60, column: 12, scope: !986)
!1009 = !DILocation(line: 61, column: 7, scope: !986)
!1010 = !DILocation(line: 61, column: 15, scope: !986)
!1011 = !DILocation(line: 52, column: 7, scope: !969)
!1012 = !DILocation(line: 60, column: 7, scope: !969)
!1013 = !DILocation(line: 66, column: 11, scope: !984)
!1014 = !DILocation(line: 67, column: 11, scope: !984)
!1015 = !DILocation(line: 71, column: 13, scope: !983)
!1016 = !DILocation(line: 71, column: 21, scope: !983)
!1017 = !DILocation(line: 72, column: 13, scope: !983)
!1018 = !DILocation(line: 73, column: 29, scope: !983)
!1019 = !DILocation(line: 73, column: 13, scope: !983)
!1020 = !DILocation(line: 74, column: 13, scope: !983)
!1021 = !DILocation(line: 84, column: 10, scope: !969)
!1022 = !DILocation(line: 88, column: 10, scope: !969)
!1023 = !DILocation(line: 89, column: 1, scope: !969)
!1024 = distinct !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 39, type: !629, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DILocalVariable(name: "argv0", arg: 1, scope: !1024, file: !94, line: 39, type: !26)
!1027 = !DILocalVariable(name: "slash", scope: !1024, file: !94, line: 46, type: !26)
!1028 = !DILocalVariable(name: "base", scope: !1024, file: !94, line: 47, type: !26)
!1029 = !DILocation(line: 39, column: 31, scope: !1024)
!1030 = !DILocation(line: 51, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !94, line: 51, column: 7)
!1032 = !DILocation(line: 51, column: 7, scope: !1024)
!1033 = !DILocation(line: 55, column: 14, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !94, line: 52, column: 5)
!1035 = !DILocation(line: 54, column: 7, scope: !1034)
!1036 = !DILocation(line: 56, column: 7, scope: !1034)
!1037 = !DILocation(line: 59, column: 11, scope: !1024)
!1038 = !DILocation(line: 46, column: 15, scope: !1024)
!1039 = !DILocation(line: 60, column: 17, scope: !1024)
!1040 = !DILocation(line: 60, column: 33, scope: !1024)
!1041 = !DILocation(line: 60, column: 11, scope: !1024)
!1042 = !DILocation(line: 47, column: 15, scope: !1024)
!1043 = !DILocation(line: 61, column: 12, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1024, file: !94, line: 61, column: 7)
!1045 = !DILocation(line: 61, column: 20, scope: !1044)
!1046 = !DILocation(line: 61, column: 25, scope: !1044)
!1047 = !DILocation(line: 61, column: 42, scope: !1044)
!1048 = !DILocation(line: 61, column: 28, scope: !1044)
!1049 = !DILocation(line: 61, column: 61, scope: !1044)
!1050 = !DILocation(line: 61, column: 7, scope: !1024)
!1051 = !DILocation(line: 64, column: 11, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !94, line: 64, column: 11)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !94, line: 62, column: 5)
!1054 = !DILocation(line: 64, column: 36, scope: !1052)
!1055 = !DILocation(line: 64, column: 11, scope: !1053)
!1056 = !DILocation(line: 66, column: 24, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !94, line: 65, column: 9)
!1058 = !DILocation(line: 70, column: 41, scope: !1057)
!1059 = !DILocation(line: 72, column: 9, scope: !1057)
!1060 = !DILocation(line: 84, column: 16, scope: !1024)
!1061 = !DILocation(line: 90, column: 27, scope: !1024)
!1062 = !DILocation(line: 92, column: 1, scope: !1024)
!1063 = distinct !DISubprogram(name: "clone_quoting_options", scope: !125, file: !125, line: 122, type: !1064, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1067)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1067 = !{!1068, !1069, !1070}
!1068 = !DILocalVariable(name: "o", arg: 1, scope: !1063, file: !125, line: 122, type: !1066)
!1069 = !DILocalVariable(name: "e", scope: !1063, file: !125, line: 124, type: !44)
!1070 = !DILocalVariable(name: "p", scope: !1063, file: !125, line: 125, type: !1066)
!1071 = !DILocation(line: 122, column: 48, scope: !1063)
!1072 = !DILocation(line: 124, column: 11, scope: !1063)
!1073 = !DILocation(line: 124, column: 7, scope: !1063)
!1074 = !DILocation(line: 125, column: 40, scope: !1063)
!1075 = !DILocation(line: 125, column: 31, scope: !1063)
!1076 = !DILocation(line: 125, column: 27, scope: !1063)
!1077 = !DILocation(line: 127, column: 9, scope: !1063)
!1078 = !DILocation(line: 128, column: 3, scope: !1063)
!1079 = distinct !DISubprogram(name: "get_quoting_style", scope: !125, file: !125, line: 133, type: !1080, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1084)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!11, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "o", arg: 1, scope: !1079, file: !125, line: 133, type: !1082)
!1086 = !DILocation(line: 133, column: 50, scope: !1079)
!1087 = !DILocation(line: 135, column: 11, scope: !1079)
!1088 = !DILocation(line: 135, column: 46, scope: !1079)
!1089 = !{!1090, !656, i64 0}
!1090 = !{!"quoting_options", !656, i64 0, !720, i64 4, !656, i64 8, !655, i64 40, !655, i64 48}
!1091 = !DILocation(line: 135, column: 3, scope: !1079)
!1092 = distinct !DISubprogram(name: "set_quoting_style", scope: !125, file: !125, line: 141, type: !1093, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1066, !11}
!1095 = !{!1096, !1097}
!1096 = !DILocalVariable(name: "o", arg: 1, scope: !1092, file: !125, line: 141, type: !1066)
!1097 = !DILocalVariable(name: "s", arg: 2, scope: !1092, file: !125, line: 141, type: !11)
!1098 = !DILocation(line: 141, column: 44, scope: !1092)
!1099 = !DILocation(line: 141, column: 66, scope: !1092)
!1100 = !DILocation(line: 143, column: 4, scope: !1092)
!1101 = !DILocation(line: 143, column: 39, scope: !1092)
!1102 = !DILocation(line: 143, column: 45, scope: !1092)
!1103 = !DILocation(line: 144, column: 1, scope: !1092)
!1104 = distinct !DISubprogram(name: "set_char_quoting", scope: !125, file: !125, line: 152, type: !1105, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!44, !1066, !28, !44}
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1114, !1115}
!1108 = !DILocalVariable(name: "o", arg: 1, scope: !1104, file: !125, line: 152, type: !1066)
!1109 = !DILocalVariable(name: "c", arg: 2, scope: !1104, file: !125, line: 152, type: !28)
!1110 = !DILocalVariable(name: "i", arg: 3, scope: !1104, file: !125, line: 152, type: !44)
!1111 = !DILocalVariable(name: "uc", scope: !1104, file: !125, line: 154, type: !35)
!1112 = !DILocalVariable(name: "p", scope: !1104, file: !125, line: 155, type: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1114 = !DILocalVariable(name: "shift", scope: !1104, file: !125, line: 157, type: !44)
!1115 = !DILocalVariable(name: "r", scope: !1104, file: !125, line: 158, type: !44)
!1116 = !DILocation(line: 152, column: 43, scope: !1104)
!1117 = !DILocation(line: 152, column: 51, scope: !1104)
!1118 = !DILocation(line: 152, column: 58, scope: !1104)
!1119 = !DILocation(line: 154, column: 17, scope: !1104)
!1120 = !DILocation(line: 156, column: 6, scope: !1104)
!1121 = !DILocation(line: 156, column: 62, scope: !1104)
!1122 = !DILocation(line: 156, column: 57, scope: !1104)
!1123 = !DILocation(line: 155, column: 17, scope: !1104)
!1124 = !DILocation(line: 157, column: 15, scope: !1104)
!1125 = !DILocation(line: 157, column: 7, scope: !1104)
!1126 = !DILocation(line: 158, column: 12, scope: !1104)
!1127 = !DILocation(line: 158, column: 15, scope: !1104)
!1128 = !DILocation(line: 158, column: 25, scope: !1104)
!1129 = !DILocation(line: 158, column: 7, scope: !1104)
!1130 = !DILocation(line: 159, column: 13, scope: !1104)
!1131 = !DILocation(line: 159, column: 18, scope: !1104)
!1132 = !DILocation(line: 159, column: 23, scope: !1104)
!1133 = !DILocation(line: 159, column: 6, scope: !1104)
!1134 = !DILocation(line: 160, column: 3, scope: !1104)
!1135 = distinct !DISubprogram(name: "set_quoting_flags", scope: !125, file: !125, line: 168, type: !1136, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!44, !1066, !44}
!1138 = !{!1139, !1140, !1141}
!1139 = !DILocalVariable(name: "o", arg: 1, scope: !1135, file: !125, line: 168, type: !1066)
!1140 = !DILocalVariable(name: "i", arg: 2, scope: !1135, file: !125, line: 168, type: !44)
!1141 = !DILocalVariable(name: "r", scope: !1135, file: !125, line: 170, type: !44)
!1142 = !DILocation(line: 168, column: 44, scope: !1135)
!1143 = !DILocation(line: 168, column: 51, scope: !1135)
!1144 = !DILocation(line: 171, column: 8, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1135, file: !125, line: 171, column: 7)
!1146 = !DILocation(line: 171, column: 7, scope: !1135)
!1147 = !DILocation(line: 173, column: 10, scope: !1135)
!1148 = !{!1090, !720, i64 4}
!1149 = !DILocation(line: 170, column: 7, scope: !1135)
!1150 = !DILocation(line: 174, column: 12, scope: !1135)
!1151 = !DILocation(line: 175, column: 3, scope: !1135)
!1152 = distinct !DISubprogram(name: "set_custom_quoting", scope: !125, file: !125, line: 179, type: !1153, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1066, !26, !26}
!1155 = !{!1156, !1157, !1158}
!1156 = !DILocalVariable(name: "o", arg: 1, scope: !1152, file: !125, line: 179, type: !1066)
!1157 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1152, file: !125, line: 180, type: !26)
!1158 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1152, file: !125, line: 180, type: !26)
!1159 = !DILocation(line: 179, column: 45, scope: !1152)
!1160 = !DILocation(line: 180, column: 33, scope: !1152)
!1161 = !DILocation(line: 180, column: 57, scope: !1152)
!1162 = !DILocation(line: 182, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !125, line: 182, column: 7)
!1164 = !DILocation(line: 182, column: 7, scope: !1152)
!1165 = !DILocation(line: 184, column: 6, scope: !1152)
!1166 = !DILocation(line: 184, column: 12, scope: !1152)
!1167 = !DILocation(line: 185, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !125, line: 185, column: 7)
!1169 = !DILocation(line: 185, column: 23, scope: !1168)
!1170 = !DILocation(line: 185, column: 19, scope: !1168)
!1171 = !DILocation(line: 186, column: 5, scope: !1168)
!1172 = !DILocation(line: 187, column: 6, scope: !1152)
!1173 = !DILocation(line: 187, column: 17, scope: !1152)
!1174 = !{!1090, !655, i64 40}
!1175 = !DILocation(line: 188, column: 6, scope: !1152)
!1176 = !DILocation(line: 188, column: 18, scope: !1152)
!1177 = !{!1090, !655, i64 48}
!1178 = !DILocation(line: 189, column: 1, scope: !1152)
!1179 = distinct !DISubprogram(name: "quotearg_buffer", scope: !125, file: !125, line: 784, type: !1180, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!30, !34, !30, !26, !30, !1082}
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1183 = !DILocalVariable(name: "buffer", arg: 1, scope: !1179, file: !125, line: 784, type: !34)
!1184 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1179, file: !125, line: 784, type: !30)
!1185 = !DILocalVariable(name: "arg", arg: 3, scope: !1179, file: !125, line: 785, type: !26)
!1186 = !DILocalVariable(name: "argsize", arg: 4, scope: !1179, file: !125, line: 785, type: !30)
!1187 = !DILocalVariable(name: "o", arg: 5, scope: !1179, file: !125, line: 786, type: !1082)
!1188 = !DILocalVariable(name: "p", scope: !1179, file: !125, line: 788, type: !1082)
!1189 = !DILocalVariable(name: "e", scope: !1179, file: !125, line: 789, type: !44)
!1190 = !DILocalVariable(name: "r", scope: !1179, file: !125, line: 790, type: !30)
!1191 = !DILocation(line: 784, column: 24, scope: !1179)
!1192 = !DILocation(line: 784, column: 39, scope: !1179)
!1193 = !DILocation(line: 785, column: 30, scope: !1179)
!1194 = !DILocation(line: 785, column: 42, scope: !1179)
!1195 = !DILocation(line: 786, column: 48, scope: !1179)
!1196 = !DILocation(line: 788, column: 37, scope: !1179)
!1197 = !DILocation(line: 788, column: 33, scope: !1179)
!1198 = !DILocation(line: 789, column: 11, scope: !1179)
!1199 = !DILocation(line: 789, column: 7, scope: !1179)
!1200 = !DILocation(line: 791, column: 43, scope: !1179)
!1201 = !DILocation(line: 791, column: 53, scope: !1179)
!1202 = !DILocation(line: 791, column: 60, scope: !1179)
!1203 = !DILocation(line: 792, column: 43, scope: !1179)
!1204 = !DILocation(line: 792, column: 58, scope: !1179)
!1205 = !DILocation(line: 790, column: 14, scope: !1179)
!1206 = !DILocation(line: 790, column: 10, scope: !1179)
!1207 = !DILocation(line: 793, column: 9, scope: !1179)
!1208 = !DILocation(line: 794, column: 3, scope: !1179)
!1209 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !125, file: !125, line: 256, type: !1210, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1214)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!30, !34, !30, !26, !30, !11, !44, !1212, !26, !26}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1239, !1240, !1241, !1242, !1243, !1246, !1247, !1262, !1265, !1266, !1273}
!1215 = !DILocalVariable(name: "buffer", arg: 1, scope: !1209, file: !125, line: 256, type: !34)
!1216 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1209, file: !125, line: 256, type: !30)
!1217 = !DILocalVariable(name: "arg", arg: 3, scope: !1209, file: !125, line: 257, type: !26)
!1218 = !DILocalVariable(name: "argsize", arg: 4, scope: !1209, file: !125, line: 257, type: !30)
!1219 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1209, file: !125, line: 258, type: !11)
!1220 = !DILocalVariable(name: "flags", arg: 6, scope: !1209, file: !125, line: 258, type: !44)
!1221 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1209, file: !125, line: 259, type: !1212)
!1222 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1209, file: !125, line: 260, type: !26)
!1223 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1209, file: !125, line: 261, type: !26)
!1224 = !DILocalVariable(name: "i", scope: !1209, file: !125, line: 263, type: !30)
!1225 = !DILocalVariable(name: "len", scope: !1209, file: !125, line: 264, type: !30)
!1226 = !DILocalVariable(name: "orig_buffersize", scope: !1209, file: !125, line: 265, type: !30)
!1227 = !DILocalVariable(name: "quote_string", scope: !1209, file: !125, line: 266, type: !26)
!1228 = !DILocalVariable(name: "quote_string_len", scope: !1209, file: !125, line: 267, type: !30)
!1229 = !DILocalVariable(name: "backslash_escapes", scope: !1209, file: !125, line: 268, type: !64)
!1230 = !DILocalVariable(name: "unibyte_locale", scope: !1209, file: !125, line: 269, type: !64)
!1231 = !DILocalVariable(name: "elide_outer_quotes", scope: !1209, file: !125, line: 270, type: !64)
!1232 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1209, file: !125, line: 271, type: !64)
!1233 = !DILocalVariable(name: "encountered_single_quote", scope: !1209, file: !125, line: 272, type: !64)
!1234 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1209, file: !125, line: 273, type: !64)
!1235 = !DILocalVariable(name: "c", scope: !1236, file: !125, line: 402, type: !35)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !125, line: 401, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !125, line: 400, column: 3)
!1238 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 400, column: 3)
!1239 = !DILocalVariable(name: "esc", scope: !1236, file: !125, line: 403, type: !35)
!1240 = !DILocalVariable(name: "is_right_quote", scope: !1236, file: !125, line: 404, type: !64)
!1241 = !DILocalVariable(name: "escaping", scope: !1236, file: !125, line: 405, type: !64)
!1242 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1236, file: !125, line: 406, type: !64)
!1243 = !DILocalVariable(name: "m", scope: !1244, file: !125, line: 610, type: !30)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 608, column: 11)
!1245 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 426, column: 9)
!1246 = !DILocalVariable(name: "printable", scope: !1244, file: !125, line: 612, type: !64)
!1247 = !DILocalVariable(name: "mbstate", scope: !1248, file: !125, line: 621, type: !1250)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !125, line: 620, column: 15)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 614, column: 17)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1251, line: 6, baseType: !1252)
!1251 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1253, line: 21, baseType: !1254)
!1253 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1253, line: 13, size: 64, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1254, file: !1253, line: 15, baseType: !44, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1254, file: !1253, line: 20, baseType: !1258, size: 32, offset: 32)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !1253, line: 16, size: 32, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1258, file: !1253, line: 18, baseType: !7, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1258, file: !1253, line: 19, baseType: !760, size: 32)
!1262 = !DILocalVariable(name: "w", scope: !1263, file: !125, line: 631, type: !1264)
!1263 = distinct !DILexicalBlock(scope: !1248, file: !125, line: 630, column: 19)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !31, line: 90, baseType: !44)
!1265 = !DILocalVariable(name: "bytes", scope: !1263, file: !125, line: 632, type: !30)
!1266 = !DILocalVariable(name: "j", scope: !1267, file: !125, line: 657, type: !30)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !125, line: 656, column: 27)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !125, line: 654, column: 29)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !125, line: 649, column: 23)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !125, line: 641, column: 30)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !125, line: 636, column: 30)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !125, line: 634, column: 25)
!1273 = !DILocalVariable(name: "ilim", scope: !1274, file: !125, line: 684, type: !30)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !125, line: 681, column: 15)
!1275 = distinct !DILexicalBlock(scope: !1244, file: !125, line: 680, column: 17)
!1276 = !DILocation(line: 256, column: 33, scope: !1209)
!1277 = !DILocation(line: 256, column: 48, scope: !1209)
!1278 = !DILocation(line: 257, column: 39, scope: !1209)
!1279 = !DILocation(line: 257, column: 51, scope: !1209)
!1280 = !DILocation(line: 258, column: 46, scope: !1209)
!1281 = !DILocation(line: 258, column: 65, scope: !1209)
!1282 = !DILocation(line: 259, column: 47, scope: !1209)
!1283 = !DILocation(line: 260, column: 39, scope: !1209)
!1284 = !DILocation(line: 261, column: 39, scope: !1209)
!1285 = !DILocation(line: 264, column: 10, scope: !1209)
!1286 = !DILocation(line: 265, column: 10, scope: !1209)
!1287 = !DILocation(line: 266, column: 15, scope: !1209)
!1288 = !DILocation(line: 267, column: 10, scope: !1209)
!1289 = !DILocation(line: 268, column: 8, scope: !1209)
!1290 = !DILocation(line: 269, column: 25, scope: !1209)
!1291 = !DILocation(line: 269, column: 36, scope: !1209)
!1292 = !DILocation(line: 270, column: 8, scope: !1209)
!1293 = !DILocation(line: 271, column: 8, scope: !1209)
!1294 = !DILocation(line: 272, column: 8, scope: !1209)
!1295 = !DILocation(line: 273, column: 8, scope: !1209)
!1296 = !DILocation(line: 273, column: 3, scope: !1209)
!1297 = !DILocation(line: 0, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 317, column: 5)
!1299 = !DILocation(line: 316, column: 3, scope: !1209)
!1300 = !DILocation(line: 323, column: 11, scope: !1298)
!1301 = !DILocation(line: 323, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !125, line: 323, column: 11)
!1303 = !DILocation(line: 324, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !125, line: 324, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !125, line: 324, column: 9)
!1306 = !DILocation(line: 324, column: 9, scope: !1305)
!1307 = !DILocation(line: 362, column: 26, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !125, line: 340, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !125, line: 339, column: 13)
!1310 = distinct !DILexicalBlock(scope: !1298, file: !125, line: 338, column: 7)
!1311 = !DILocation(line: 363, column: 27, scope: !1308)
!1312 = !DILocation(line: 364, column: 11, scope: !1308)
!1313 = !DILocation(line: 365, column: 14, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !125, line: 365, column: 13)
!1315 = !DILocation(line: 365, column: 13, scope: !1310)
!1316 = !DILocation(line: 366, column: 43, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !125, line: 366, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !125, line: 366, column: 11)
!1319 = !DILocation(line: 366, column: 11, scope: !1318)
!1320 = !DILocation(line: 367, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !125, line: 367, column: 13)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !125, line: 367, column: 13)
!1323 = !DILocation(line: 367, column: 13, scope: !1322)
!1324 = !DILocation(line: 366, column: 70, scope: !1317)
!1325 = distinct !{!1325, !1319, !1326}
!1326 = !DILocation(line: 367, column: 13, scope: !1318)
!1327 = !DILocation(line: 370, column: 28, scope: !1310)
!1328 = !DILocation(line: 372, column: 7, scope: !1298)
!1329 = !DILocation(line: 376, column: 7, scope: !1298)
!1330 = !DILocation(line: 379, column: 7, scope: !1298)
!1331 = !DILocation(line: 381, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1298, file: !125, line: 381, column: 11)
!1333 = !DILocation(line: 381, column: 11, scope: !1298)
!1334 = !DILocation(line: 0, scope: !1332)
!1335 = !DILocation(line: 386, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1298, file: !125, line: 386, column: 11)
!1337 = !DILocation(line: 386, column: 11, scope: !1298)
!1338 = !DILocation(line: 387, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !125, line: 387, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !125, line: 387, column: 9)
!1341 = !DILocation(line: 387, column: 9, scope: !1340)
!1342 = !DILocation(line: 394, column: 7, scope: !1298)
!1343 = !DILocation(line: 397, column: 7, scope: !1298)
!1344 = !DILocation(line: 0, scope: !1209)
!1345 = !DILocation(line: 263, column: 10, scope: !1209)
!1346 = !DILocation(line: 400, column: 8, scope: !1238)
!1347 = !DILocation(line: 0, scope: !1237)
!1348 = !DILocation(line: 400, column: 27, scope: !1237)
!1349 = !DILocation(line: 400, column: 19, scope: !1237)
!1350 = !DILocation(line: 400, column: 41, scope: !1237)
!1351 = !DILocation(line: 400, column: 48, scope: !1237)
!1352 = !DILocation(line: 400, column: 3, scope: !1238)
!1353 = !DILocation(line: 400, column: 60, scope: !1237)
!1354 = !DILocation(line: 404, column: 12, scope: !1236)
!1355 = !DILocation(line: 405, column: 12, scope: !1236)
!1356 = !DILocation(line: 406, column: 12, scope: !1236)
!1357 = !DILocation(line: 409, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 408, column: 11)
!1359 = !DILocation(line: 411, column: 17, scope: !1358)
!1360 = !DILocation(line: 412, column: 39, scope: !1358)
!1361 = !DILocation(line: 416, column: 32, scope: !1358)
!1362 = !DILocation(line: 412, column: 19, scope: !1358)
!1363 = !DILocation(line: 412, column: 15, scope: !1358)
!1364 = !DILocation(line: 417, column: 11, scope: !1358)
!1365 = !DILocation(line: 417, column: 26, scope: !1358)
!1366 = !DILocation(line: 417, column: 14, scope: !1358)
!1367 = !DILocation(line: 417, column: 63, scope: !1358)
!1368 = !DILocation(line: 408, column: 11, scope: !1236)
!1369 = !DILocation(line: 0, scope: !1236)
!1370 = !DILocation(line: 424, column: 11, scope: !1236)
!1371 = !DILocation(line: 402, column: 21, scope: !1236)
!1372 = !DILocation(line: 425, column: 7, scope: !1236)
!1373 = !DILocation(line: 428, column: 15, scope: !1245)
!1374 = !DILocation(line: 430, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !125, line: 430, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !125, line: 429, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 428, column: 15)
!1378 = !DILocation(line: 430, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !125, line: 430, column: 15)
!1380 = !DILocation(line: 430, column: 15, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !125, line: 430, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !125, line: 430, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !125, line: 430, column: 15)
!1384 = !DILocation(line: 430, column: 15, scope: !1382)
!1385 = !DILocation(line: 430, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !125, line: 430, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !125, line: 430, column: 15)
!1388 = !DILocation(line: 430, column: 15, scope: !1387)
!1389 = !DILocation(line: 430, column: 15, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !125, line: 430, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !125, line: 430, column: 15)
!1392 = !DILocation(line: 430, column: 15, scope: !1391)
!1393 = !DILocation(line: 430, column: 15, scope: !1383)
!1394 = !DILocation(line: 430, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !125, line: 430, column: 15)
!1396 = distinct !DILexicalBlock(scope: !1375, file: !125, line: 430, column: 15)
!1397 = !DILocation(line: 430, column: 15, scope: !1396)
!1398 = !DILocation(line: 438, column: 19, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1376, file: !125, line: 437, column: 19)
!1400 = !DILocation(line: 438, column: 24, scope: !1399)
!1401 = !DILocation(line: 438, column: 28, scope: !1399)
!1402 = !DILocation(line: 438, column: 38, scope: !1399)
!1403 = !DILocation(line: 438, column: 48, scope: !1399)
!1404 = !DILocation(line: 438, column: 59, scope: !1399)
!1405 = !DILocation(line: 440, column: 19, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !125, line: 440, column: 19)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !125, line: 440, column: 19)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !125, line: 439, column: 17)
!1409 = !DILocation(line: 440, column: 19, scope: !1407)
!1410 = !DILocation(line: 441, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !125, line: 441, column: 19)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !125, line: 441, column: 19)
!1413 = !DILocation(line: 441, column: 19, scope: !1412)
!1414 = !DILocation(line: 442, column: 17, scope: !1408)
!1415 = !DILocation(line: 449, column: 20, scope: !1377)
!1416 = !DILocation(line: 454, column: 11, scope: !1245)
!1417 = !DILocation(line: 457, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 455, column: 13)
!1419 = !DILocation(line: 463, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1418, file: !125, line: 462, column: 19)
!1421 = !DILocation(line: 463, column: 24, scope: !1420)
!1422 = !DILocation(line: 463, column: 28, scope: !1420)
!1423 = !DILocation(line: 463, column: 38, scope: !1420)
!1424 = !DILocation(line: 463, column: 47, scope: !1420)
!1425 = !DILocation(line: 463, column: 41, scope: !1420)
!1426 = !DILocation(line: 463, column: 52, scope: !1420)
!1427 = !DILocation(line: 462, column: 19, scope: !1418)
!1428 = !DILocation(line: 464, column: 25, scope: !1420)
!1429 = !DILocation(line: 464, column: 17, scope: !1420)
!1430 = !DILocation(line: 471, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1420, file: !125, line: 465, column: 19)
!1432 = !DILocation(line: 475, column: 21, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !125, line: 475, column: 21)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !125, line: 475, column: 21)
!1435 = !DILocation(line: 475, column: 21, scope: !1434)
!1436 = !DILocation(line: 476, column: 21, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !125, line: 476, column: 21)
!1438 = distinct !DILexicalBlock(scope: !1431, file: !125, line: 476, column: 21)
!1439 = !DILocation(line: 476, column: 21, scope: !1438)
!1440 = !DILocation(line: 477, column: 21, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !125, line: 477, column: 21)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !125, line: 477, column: 21)
!1443 = !DILocation(line: 477, column: 21, scope: !1442)
!1444 = !DILocation(line: 478, column: 21, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !125, line: 478, column: 21)
!1446 = distinct !DILexicalBlock(scope: !1431, file: !125, line: 478, column: 21)
!1447 = !DILocation(line: 478, column: 21, scope: !1446)
!1448 = !DILocation(line: 479, column: 21, scope: !1431)
!1449 = !DILocation(line: 403, column: 21, scope: !1236)
!1450 = !DILocation(line: 492, column: 31, scope: !1245)
!1451 = !DILocation(line: 493, column: 31, scope: !1245)
!1452 = !DILocation(line: 495, column: 31, scope: !1245)
!1453 = !DILocation(line: 496, column: 31, scope: !1245)
!1454 = !DILocation(line: 497, column: 31, scope: !1245)
!1455 = !DILocation(line: 500, column: 15, scope: !1245)
!1456 = !DILocation(line: 502, column: 19, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !125, line: 501, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 500, column: 15)
!1459 = !DILocation(line: 509, column: 33, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 509, column: 15)
!1461 = !DILocation(line: 0, scope: !1245)
!1462 = !DILocation(line: 514, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 513, column: 15)
!1464 = !DILocation(line: 518, column: 15, scope: !1245)
!1465 = !DILocation(line: 526, column: 26, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 526, column: 15)
!1467 = !DILocation(line: 526, column: 15, scope: !1245)
!1468 = !DILocation(line: 526, column: 40, scope: !1466)
!1469 = !DILocation(line: 526, column: 47, scope: !1466)
!1470 = !DILocation(line: 530, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 530, column: 15)
!1472 = !DILocation(line: 526, column: 18, scope: !1466)
!1473 = !DILocation(line: 526, column: 65, scope: !1466)
!1474 = !DILocation(line: 530, column: 15, scope: !1245)
!1475 = !DILocation(line: 535, column: 11, scope: !1245)
!1476 = !DILocation(line: 549, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 548, column: 15)
!1478 = !DILocation(line: 556, column: 15, scope: !1245)
!1479 = !DILocation(line: 558, column: 19, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !125, line: 557, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 556, column: 15)
!1482 = !DILocation(line: 561, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !125, line: 561, column: 19)
!1484 = !DILocation(line: 561, column: 35, scope: !1483)
!1485 = !DILocation(line: 561, column: 30, scope: !1483)
!1486 = !DILocation(line: 570, column: 15, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !125, line: 570, column: 15)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !125, line: 570, column: 15)
!1489 = !DILocation(line: 570, column: 15, scope: !1488)
!1490 = !DILocation(line: 571, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !125, line: 571, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !125, line: 571, column: 15)
!1493 = !DILocation(line: 571, column: 15, scope: !1492)
!1494 = !DILocation(line: 572, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !125, line: 572, column: 15)
!1496 = distinct !DILexicalBlock(scope: !1480, file: !125, line: 572, column: 15)
!1497 = !DILocation(line: 572, column: 15, scope: !1496)
!1498 = !DILocation(line: 574, column: 13, scope: !1480)
!1499 = !DILocation(line: 614, column: 17, scope: !1244)
!1500 = !DILocation(line: 610, column: 20, scope: !1244)
!1501 = !DILocation(line: 617, column: 29, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1249, file: !125, line: 615, column: 15)
!1503 = !{!847, !847, i64 0}
!1504 = !DILocation(line: 617, column: 27, scope: !1502)
!1505 = !DILocation(line: 612, column: 18, scope: !1244)
!1506 = !DILocation(line: 618, column: 15, scope: !1502)
!1507 = !DILocation(line: 621, column: 17, scope: !1248)
!1508 = !DILocation(line: 622, column: 17, scope: !1248)
!1509 = !DILocation(line: 626, column: 29, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1248, file: !125, line: 626, column: 21)
!1511 = !DILocation(line: 626, column: 21, scope: !1248)
!1512 = !DILocation(line: 627, column: 29, scope: !1510)
!1513 = !DILocation(line: 627, column: 19, scope: !1510)
!1514 = !DILocation(line: 0, scope: !1358)
!1515 = !DILocation(line: 629, column: 17, scope: !1248)
!1516 = !DILocation(line: 624, column: 19, scope: !1248)
!1517 = !DILocation(line: 625, column: 27, scope: !1248)
!1518 = !DILocation(line: 631, column: 21, scope: !1263)
!1519 = !DILocation(line: 632, column: 56, scope: !1263)
!1520 = !DILocation(line: 632, column: 50, scope: !1263)
!1521 = !DILocation(line: 633, column: 53, scope: !1263)
!1522 = !DILocation(line: 621, column: 27, scope: !1248)
!1523 = !DILocation(line: 631, column: 29, scope: !1263)
!1524 = !DILocation(line: 632, column: 36, scope: !1263)
!1525 = !DILocation(line: 632, column: 28, scope: !1263)
!1526 = !DILocation(line: 634, column: 25, scope: !1263)
!1527 = !DILocation(line: 644, column: 38, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1270, file: !125, line: 642, column: 23)
!1529 = !DILocation(line: 644, column: 48, scope: !1528)
!1530 = !DILocation(line: 644, column: 51, scope: !1528)
!1531 = !DILocation(line: 644, column: 25, scope: !1528)
!1532 = !DILocation(line: 645, column: 28, scope: !1528)
!1533 = !DILocation(line: 644, column: 34, scope: !1528)
!1534 = distinct !{!1534, !1531, !1532}
!1535 = !DILocation(line: 658, column: 43, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !125, line: 658, column: 29)
!1537 = distinct !DILexicalBlock(scope: !1267, file: !125, line: 658, column: 29)
!1538 = !DILocation(line: 655, column: 29, scope: !1268)
!1539 = !DILocation(line: 657, column: 36, scope: !1267)
!1540 = !DILocation(line: 659, column: 49, scope: !1536)
!1541 = !DILocation(line: 659, column: 39, scope: !1536)
!1542 = !DILocation(line: 659, column: 31, scope: !1536)
!1543 = !DILocation(line: 658, column: 53, scope: !1536)
!1544 = !DILocation(line: 658, column: 29, scope: !1537)
!1545 = distinct !{!1545, !1544, !1546}
!1546 = !DILocation(line: 667, column: 33, scope: !1537)
!1547 = !DILocation(line: 674, column: 19, scope: !1248)
!1548 = !DILocation(line: 670, column: 41, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1269, file: !125, line: 670, column: 29)
!1550 = !DILocation(line: 670, column: 31, scope: !1549)
!1551 = !DILocation(line: 670, column: 29, scope: !1269)
!1552 = !DILocation(line: 672, column: 27, scope: !1269)
!1553 = !DILocation(line: 675, column: 26, scope: !1248)
!1554 = !DILocation(line: 675, column: 24, scope: !1248)
!1555 = !DILocation(line: 674, column: 19, scope: !1263)
!1556 = distinct !{!1556, !1515, !1557}
!1557 = !DILocation(line: 675, column: 44, scope: !1248)
!1558 = !DILocation(line: 676, column: 15, scope: !1249)
!1559 = !DILocation(line: 0, scope: !1510)
!1560 = !DILocation(line: 0, scope: !1248)
!1561 = !DILocation(line: 678, column: 40, scope: !1244)
!1562 = !DILocation(line: 680, column: 19, scope: !1275)
!1563 = !DILocation(line: 680, column: 45, scope: !1275)
!1564 = !DILocation(line: 680, column: 23, scope: !1275)
!1565 = !DILocation(line: 684, column: 33, scope: !1274)
!1566 = !DILocation(line: 684, column: 24, scope: !1274)
!1567 = !DILocation(line: 686, column: 17, scope: !1274)
!1568 = !DILocation(line: 0, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !125, line: 687, column: 19)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !125, line: 686, column: 17)
!1571 = distinct !DILexicalBlock(scope: !1274, file: !125, line: 686, column: 17)
!1572 = !DILocation(line: 0, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !125, line: 703, column: 21)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !125, line: 696, column: 23)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !125, line: 695, column: 30)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !125, line: 688, column: 25)
!1578 = !DILocation(line: 688, column: 43, scope: !1577)
!1579 = !DILocation(line: 690, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !125, line: 690, column: 25)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !125, line: 689, column: 23)
!1582 = !DILocation(line: 690, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !125, line: 690, column: 25)
!1584 = !DILocation(line: 690, column: 25, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !125, line: 690, column: 25)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !125, line: 690, column: 25)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !125, line: 690, column: 25)
!1588 = !DILocation(line: 690, column: 25, scope: !1586)
!1589 = !DILocation(line: 690, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !125, line: 690, column: 25)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !125, line: 690, column: 25)
!1592 = !DILocation(line: 690, column: 25, scope: !1591)
!1593 = !DILocation(line: 690, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !125, line: 690, column: 25)
!1595 = distinct !DILexicalBlock(scope: !1587, file: !125, line: 690, column: 25)
!1596 = !DILocation(line: 690, column: 25, scope: !1595)
!1597 = !DILocation(line: 690, column: 25, scope: !1587)
!1598 = !DILocation(line: 690, column: 25, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !125, line: 690, column: 25)
!1600 = distinct !DILexicalBlock(scope: !1580, file: !125, line: 690, column: 25)
!1601 = !DILocation(line: 690, column: 25, scope: !1600)
!1602 = !DILocation(line: 691, column: 25, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !125, line: 691, column: 25)
!1604 = distinct !DILexicalBlock(scope: !1581, file: !125, line: 691, column: 25)
!1605 = !DILocation(line: 691, column: 25, scope: !1604)
!1606 = !DILocation(line: 692, column: 25, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !125, line: 692, column: 25)
!1608 = distinct !DILexicalBlock(scope: !1581, file: !125, line: 692, column: 25)
!1609 = !DILocation(line: 692, column: 25, scope: !1608)
!1610 = !DILocation(line: 693, column: 38, scope: !1581)
!1611 = !DILocation(line: 693, column: 33, scope: !1581)
!1612 = !DILocation(line: 694, column: 23, scope: !1581)
!1613 = !DILocation(line: 695, column: 30, scope: !1576)
!1614 = !DILocation(line: 695, column: 30, scope: !1577)
!1615 = !DILocation(line: 697, column: 25, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !125, line: 697, column: 25)
!1617 = distinct !DILexicalBlock(scope: !1575, file: !125, line: 697, column: 25)
!1618 = !DILocation(line: 697, column: 25, scope: !1617)
!1619 = !DILocation(line: 699, column: 23, scope: !1575)
!1620 = !DILocation(line: 0, scope: !1608)
!1621 = !DILocation(line: 0, scope: !1581)
!1622 = !DILocation(line: 0, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1358, file: !125, line: 418, column: 9)
!1624 = !DILocation(line: 0, scope: !1580)
!1625 = !DILocation(line: 700, column: 35, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1569, file: !125, line: 700, column: 25)
!1627 = !DILocation(line: 700, column: 30, scope: !1626)
!1628 = !DILocation(line: 700, column: 25, scope: !1569)
!1629 = !DILocation(line: 702, column: 21, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !125, line: 702, column: 21)
!1631 = distinct !DILexicalBlock(scope: !1569, file: !125, line: 702, column: 21)
!1632 = !DILocation(line: 702, column: 21, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !125, line: 702, column: 21)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !125, line: 702, column: 21)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !125, line: 702, column: 21)
!1636 = !DILocation(line: 702, column: 21, scope: !1634)
!1637 = !DILocation(line: 702, column: 21, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !125, line: 702, column: 21)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !125, line: 702, column: 21)
!1640 = !DILocation(line: 702, column: 21, scope: !1639)
!1641 = !DILocation(line: 702, column: 21, scope: !1635)
!1642 = !DILocation(line: 0, scope: !1617)
!1643 = !DILocation(line: 703, column: 21, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1573, file: !125, line: 703, column: 21)
!1645 = !DILocation(line: 703, column: 21, scope: !1573)
!1646 = !DILocation(line: 704, column: 25, scope: !1569)
!1647 = !DILocation(line: 686, column: 17, scope: !1570)
!1648 = distinct !{!1648, !1649, !1650}
!1649 = !DILocation(line: 686, column: 17, scope: !1571)
!1650 = !DILocation(line: 705, column: 19, scope: !1571)
!1651 = !DILocation(line: 0, scope: !1238)
!1652 = !DILocation(line: 416, column: 30, scope: !1358)
!1653 = !DILocation(line: 712, column: 34, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 712, column: 11)
!1655 = !DILocation(line: 714, column: 14, scope: !1654)
!1656 = !DILocation(line: 715, column: 14, scope: !1654)
!1657 = !DILocation(line: 715, column: 35, scope: !1654)
!1658 = !DILocation(line: 715, column: 17, scope: !1654)
!1659 = !DILocation(line: 715, column: 47, scope: !1654)
!1660 = !DILocation(line: 715, column: 65, scope: !1654)
!1661 = !DILocation(line: 716, column: 15, scope: !1654)
!1662 = !DILocation(line: 716, column: 11, scope: !1654)
!1663 = !DILocation(line: 712, column: 11, scope: !1236)
!1664 = !DILocation(line: 400, column: 10, scope: !1238)
!1665 = !DILocation(line: 0, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !125, line: 519, column: 13)
!1667 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 518, column: 15)
!1668 = !DILocation(line: 720, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 720, column: 7)
!1670 = !DILocation(line: 720, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1669, file: !125, line: 720, column: 7)
!1672 = !DILocation(line: 720, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !125, line: 720, column: 7)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !125, line: 720, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !125, line: 720, column: 7)
!1676 = !DILocation(line: 720, column: 7, scope: !1674)
!1677 = !DILocation(line: 720, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !125, line: 720, column: 7)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !125, line: 720, column: 7)
!1680 = !DILocation(line: 720, column: 7, scope: !1679)
!1681 = !DILocation(line: 720, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !125, line: 720, column: 7)
!1683 = distinct !DILexicalBlock(scope: !1675, file: !125, line: 720, column: 7)
!1684 = !DILocation(line: 720, column: 7, scope: !1683)
!1685 = !DILocation(line: 720, column: 7, scope: !1675)
!1686 = !DILocation(line: 720, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !125, line: 720, column: 7)
!1688 = distinct !DILexicalBlock(scope: !1669, file: !125, line: 720, column: 7)
!1689 = !DILocation(line: 720, column: 7, scope: !1688)
!1690 = !DILocation(line: 723, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !125, line: 723, column: 7)
!1692 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 723, column: 7)
!1693 = !DILocation(line: 424, column: 9, scope: !1236)
!1694 = !DILocation(line: 723, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !125, line: 723, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !125, line: 723, column: 7)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !125, line: 723, column: 7)
!1698 = !DILocation(line: 723, column: 7, scope: !1696)
!1699 = !DILocation(line: 723, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !125, line: 723, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !125, line: 723, column: 7)
!1702 = !DILocation(line: 723, column: 7, scope: !1701)
!1703 = !DILocation(line: 723, column: 7, scope: !1697)
!1704 = !DILocation(line: 724, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !125, line: 724, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 724, column: 7)
!1707 = !DILocation(line: 724, column: 7, scope: !1706)
!1708 = !DILocation(line: 726, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1236, file: !125, line: 726, column: 11)
!1710 = !DILocation(line: 726, column: 11, scope: !1236)
!1711 = !DILocation(line: 728, column: 5, scope: !1237)
!1712 = !DILocation(line: 400, column: 75, scope: !1237)
!1713 = !DILocation(line: 400, column: 3, scope: !1237)
!1714 = distinct !{!1714, !1352, !1715}
!1715 = !DILocation(line: 728, column: 5, scope: !1238)
!1716 = !DILocation(line: 730, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 730, column: 7)
!1718 = !DILocation(line: 730, column: 16, scope: !1717)
!1719 = !DILocation(line: 738, column: 51, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 738, column: 7)
!1721 = !DILocation(line: 739, column: 10, scope: !1720)
!1722 = !DILocation(line: 741, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !125, line: 741, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !125, line: 740, column: 5)
!1725 = !DILocation(line: 741, column: 11, scope: !1724)
!1726 = !DILocation(line: 742, column: 16, scope: !1723)
!1727 = !DILocation(line: 742, column: 9, scope: !1723)
!1728 = !DILocation(line: 746, column: 18, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1723, file: !125, line: 746, column: 16)
!1730 = !DILocation(line: 746, column: 32, scope: !1729)
!1731 = !DILocation(line: 746, column: 29, scope: !1729)
!1732 = !DILocation(line: 755, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 755, column: 7)
!1734 = !DILocation(line: 755, column: 20, scope: !1733)
!1735 = !DILocation(line: 756, column: 12, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !125, line: 756, column: 5)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !125, line: 756, column: 5)
!1738 = !DILocation(line: 756, column: 5, scope: !1737)
!1739 = !DILocation(line: 757, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !125, line: 757, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !125, line: 757, column: 7)
!1742 = !DILocation(line: 757, column: 7, scope: !1741)
!1743 = !DILocation(line: 756, column: 39, scope: !1736)
!1744 = distinct !{!1744, !1738, !1745}
!1745 = !DILocation(line: 757, column: 7, scope: !1737)
!1746 = !DILocation(line: 759, column: 11, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 759, column: 7)
!1748 = !DILocation(line: 759, column: 7, scope: !1209)
!1749 = !DILocation(line: 760, column: 5, scope: !1747)
!1750 = !DILocation(line: 760, column: 17, scope: !1747)
!1751 = !DILocation(line: 766, column: 21, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1209, file: !125, line: 766, column: 7)
!1753 = !DILocation(line: 766, column: 54, scope: !1752)
!1754 = !DILocation(line: 766, column: 51, scope: !1752)
!1755 = !DILocation(line: 770, column: 42, scope: !1209)
!1756 = !DILocation(line: 768, column: 10, scope: !1209)
!1757 = !DILocation(line: 768, column: 3, scope: !1209)
!1758 = !DILocation(line: 772, column: 1, scope: !1209)
!1759 = distinct !DISubprogram(name: "gettext_quote", scope: !125, file: !125, line: 207, type: !1760, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!26, !26, !11}
!1762 = !{!1763, !1764, !1765, !1766}
!1763 = !DILocalVariable(name: "msgid", arg: 1, scope: !1759, file: !125, line: 207, type: !26)
!1764 = !DILocalVariable(name: "s", arg: 2, scope: !1759, file: !125, line: 207, type: !11)
!1765 = !DILocalVariable(name: "translation", scope: !1759, file: !125, line: 209, type: !26)
!1766 = !DILocalVariable(name: "locale_code", scope: !1759, file: !125, line: 210, type: !26)
!1767 = !DILocation(line: 207, column: 28, scope: !1759)
!1768 = !DILocation(line: 207, column: 54, scope: !1759)
!1769 = !DILocation(line: 209, column: 29, scope: !1759)
!1770 = !DILocation(line: 209, column: 15, scope: !1759)
!1771 = !DILocation(line: 212, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1759, file: !125, line: 212, column: 7)
!1773 = !DILocation(line: 212, column: 7, scope: !1759)
!1774 = !DILocation(line: 233, column: 17, scope: !1759)
!1775 = !DILocation(line: 210, column: 15, scope: !1759)
!1776 = !DILocalVariable(name: "s1", arg: 1, scope: !1777, file: !1778, line: 160, type: !26)
!1777 = distinct !DISubprogram(name: "strcaseeq0", scope: !1778, file: !1778, line: 160, type: !1779, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1781)
!1778 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!44, !26, !26, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!1781 = !{!1776, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1782 = !DILocalVariable(name: "s2", arg: 2, scope: !1777, file: !1778, line: 160, type: !26)
!1783 = !DILocalVariable(name: "s20", arg: 3, scope: !1777, file: !1778, line: 160, type: !28)
!1784 = !DILocalVariable(name: "s21", arg: 4, scope: !1777, file: !1778, line: 160, type: !28)
!1785 = !DILocalVariable(name: "s22", arg: 5, scope: !1777, file: !1778, line: 160, type: !28)
!1786 = !DILocalVariable(name: "s23", arg: 6, scope: !1777, file: !1778, line: 160, type: !28)
!1787 = !DILocalVariable(name: "s24", arg: 7, scope: !1777, file: !1778, line: 160, type: !28)
!1788 = !DILocalVariable(name: "s25", arg: 8, scope: !1777, file: !1778, line: 160, type: !28)
!1789 = !DILocalVariable(name: "s26", arg: 9, scope: !1777, file: !1778, line: 160, type: !28)
!1790 = !DILocalVariable(name: "s27", arg: 10, scope: !1777, file: !1778, line: 160, type: !28)
!1791 = !DILocalVariable(name: "s28", arg: 11, scope: !1777, file: !1778, line: 160, type: !28)
!1792 = !DILocation(line: 160, column: 25, scope: !1777, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 234, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1759, file: !125, line: 234, column: 7)
!1795 = !DILocation(line: 160, column: 41, scope: !1777, inlinedAt: !1793)
!1796 = !DILocation(line: 160, column: 50, scope: !1777, inlinedAt: !1793)
!1797 = !DILocation(line: 160, column: 60, scope: !1777, inlinedAt: !1793)
!1798 = !DILocation(line: 160, column: 70, scope: !1777, inlinedAt: !1793)
!1799 = !DILocation(line: 160, column: 80, scope: !1777, inlinedAt: !1793)
!1800 = !DILocation(line: 160, column: 90, scope: !1777, inlinedAt: !1793)
!1801 = !DILocation(line: 160, column: 100, scope: !1777, inlinedAt: !1793)
!1802 = !DILocation(line: 160, column: 110, scope: !1777, inlinedAt: !1793)
!1803 = !DILocation(line: 160, column: 120, scope: !1777, inlinedAt: !1793)
!1804 = !DILocation(line: 160, column: 130, scope: !1777, inlinedAt: !1793)
!1805 = !DILocation(line: 162, column: 7, scope: !1806, inlinedAt: !1793)
!1806 = distinct !DILexicalBlock(scope: !1777, file: !1778, line: 162, column: 7)
!1807 = !DILocalVariable(name: "s1", arg: 1, scope: !1808, file: !1778, line: 146, type: !26)
!1808 = distinct !DISubprogram(name: "strcaseeq1", scope: !1778, file: !1778, line: 146, type: !1809, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!44, !26, !26, !28, !28, !28, !28, !28, !28, !28, !28}
!1811 = !{!1807, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1812 = !DILocalVariable(name: "s2", arg: 2, scope: !1808, file: !1778, line: 146, type: !26)
!1813 = !DILocalVariable(name: "s21", arg: 3, scope: !1808, file: !1778, line: 146, type: !28)
!1814 = !DILocalVariable(name: "s22", arg: 4, scope: !1808, file: !1778, line: 146, type: !28)
!1815 = !DILocalVariable(name: "s23", arg: 5, scope: !1808, file: !1778, line: 146, type: !28)
!1816 = !DILocalVariable(name: "s24", arg: 6, scope: !1808, file: !1778, line: 146, type: !28)
!1817 = !DILocalVariable(name: "s25", arg: 7, scope: !1808, file: !1778, line: 146, type: !28)
!1818 = !DILocalVariable(name: "s26", arg: 8, scope: !1808, file: !1778, line: 146, type: !28)
!1819 = !DILocalVariable(name: "s27", arg: 9, scope: !1808, file: !1778, line: 146, type: !28)
!1820 = !DILocalVariable(name: "s28", arg: 10, scope: !1808, file: !1778, line: 146, type: !28)
!1821 = !DILocation(line: 146, column: 25, scope: !1808, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 167, column: 16, scope: !1823, inlinedAt: !1793)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !1778, line: 164, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1806, file: !1778, line: 163, column: 5)
!1825 = !DILocation(line: 146, column: 41, scope: !1808, inlinedAt: !1822)
!1826 = !DILocation(line: 146, column: 50, scope: !1808, inlinedAt: !1822)
!1827 = !DILocation(line: 146, column: 60, scope: !1808, inlinedAt: !1822)
!1828 = !DILocation(line: 146, column: 70, scope: !1808, inlinedAt: !1822)
!1829 = !DILocation(line: 146, column: 80, scope: !1808, inlinedAt: !1822)
!1830 = !DILocation(line: 146, column: 90, scope: !1808, inlinedAt: !1822)
!1831 = !DILocation(line: 146, column: 100, scope: !1808, inlinedAt: !1822)
!1832 = !DILocation(line: 146, column: 110, scope: !1808, inlinedAt: !1822)
!1833 = !DILocation(line: 146, column: 120, scope: !1808, inlinedAt: !1822)
!1834 = !DILocation(line: 148, column: 7, scope: !1835, inlinedAt: !1822)
!1835 = distinct !DILexicalBlock(scope: !1808, file: !1778, line: 148, column: 7)
!1836 = !DILocalVariable(name: "s1", arg: 1, scope: !1837, file: !1778, line: 132, type: !26)
!1837 = distinct !DISubprogram(name: "strcaseeq2", scope: !1778, file: !1778, line: 132, type: !1838, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1840)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!44, !26, !26, !28, !28, !28, !28, !28, !28, !28}
!1840 = !{!1836, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1841 = !DILocalVariable(name: "s2", arg: 2, scope: !1837, file: !1778, line: 132, type: !26)
!1842 = !DILocalVariable(name: "s22", arg: 3, scope: !1837, file: !1778, line: 132, type: !28)
!1843 = !DILocalVariable(name: "s23", arg: 4, scope: !1837, file: !1778, line: 132, type: !28)
!1844 = !DILocalVariable(name: "s24", arg: 5, scope: !1837, file: !1778, line: 132, type: !28)
!1845 = !DILocalVariable(name: "s25", arg: 6, scope: !1837, file: !1778, line: 132, type: !28)
!1846 = !DILocalVariable(name: "s26", arg: 7, scope: !1837, file: !1778, line: 132, type: !28)
!1847 = !DILocalVariable(name: "s27", arg: 8, scope: !1837, file: !1778, line: 132, type: !28)
!1848 = !DILocalVariable(name: "s28", arg: 9, scope: !1837, file: !1778, line: 132, type: !28)
!1849 = !DILocation(line: 132, column: 25, scope: !1837, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 153, column: 16, scope: !1851, inlinedAt: !1822)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !1778, line: 150, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1835, file: !1778, line: 149, column: 5)
!1853 = !DILocation(line: 132, column: 41, scope: !1837, inlinedAt: !1850)
!1854 = !DILocation(line: 132, column: 50, scope: !1837, inlinedAt: !1850)
!1855 = !DILocation(line: 132, column: 60, scope: !1837, inlinedAt: !1850)
!1856 = !DILocation(line: 132, column: 70, scope: !1837, inlinedAt: !1850)
!1857 = !DILocation(line: 132, column: 80, scope: !1837, inlinedAt: !1850)
!1858 = !DILocation(line: 132, column: 90, scope: !1837, inlinedAt: !1850)
!1859 = !DILocation(line: 132, column: 100, scope: !1837, inlinedAt: !1850)
!1860 = !DILocation(line: 132, column: 110, scope: !1837, inlinedAt: !1850)
!1861 = !DILocation(line: 134, column: 7, scope: !1862, inlinedAt: !1850)
!1862 = distinct !DILexicalBlock(scope: !1837, file: !1778, line: 134, column: 7)
!1863 = !DILocalVariable(name: "s1", arg: 1, scope: !1864, file: !1778, line: 118, type: !26)
!1864 = distinct !DISubprogram(name: "strcaseeq3", scope: !1778, file: !1778, line: 118, type: !1865, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!44, !26, !26, !28, !28, !28, !28, !28, !28}
!1867 = !{!1863, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1868 = !DILocalVariable(name: "s2", arg: 2, scope: !1864, file: !1778, line: 118, type: !26)
!1869 = !DILocalVariable(name: "s23", arg: 3, scope: !1864, file: !1778, line: 118, type: !28)
!1870 = !DILocalVariable(name: "s24", arg: 4, scope: !1864, file: !1778, line: 118, type: !28)
!1871 = !DILocalVariable(name: "s25", arg: 5, scope: !1864, file: !1778, line: 118, type: !28)
!1872 = !DILocalVariable(name: "s26", arg: 6, scope: !1864, file: !1778, line: 118, type: !28)
!1873 = !DILocalVariable(name: "s27", arg: 7, scope: !1864, file: !1778, line: 118, type: !28)
!1874 = !DILocalVariable(name: "s28", arg: 8, scope: !1864, file: !1778, line: 118, type: !28)
!1875 = !DILocation(line: 118, column: 25, scope: !1864, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 139, column: 16, scope: !1877, inlinedAt: !1850)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1778, line: 136, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1862, file: !1778, line: 135, column: 5)
!1879 = !DILocation(line: 118, column: 41, scope: !1864, inlinedAt: !1876)
!1880 = !DILocation(line: 118, column: 50, scope: !1864, inlinedAt: !1876)
!1881 = !DILocation(line: 118, column: 60, scope: !1864, inlinedAt: !1876)
!1882 = !DILocation(line: 118, column: 70, scope: !1864, inlinedAt: !1876)
!1883 = !DILocation(line: 118, column: 80, scope: !1864, inlinedAt: !1876)
!1884 = !DILocation(line: 118, column: 90, scope: !1864, inlinedAt: !1876)
!1885 = !DILocation(line: 118, column: 100, scope: !1864, inlinedAt: !1876)
!1886 = !DILocation(line: 120, column: 7, scope: !1887, inlinedAt: !1876)
!1887 = distinct !DILexicalBlock(scope: !1864, file: !1778, line: 120, column: 7)
!1888 = !DILocation(line: 120, column: 7, scope: !1864, inlinedAt: !1876)
!1889 = !DILocalVariable(name: "s1", arg: 1, scope: !1890, file: !1778, line: 104, type: !26)
!1890 = distinct !DISubprogram(name: "strcaseeq4", scope: !1778, file: !1778, line: 104, type: !1891, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!44, !26, !26, !28, !28, !28, !28, !28}
!1893 = !{!1889, !1894, !1895, !1896, !1897, !1898, !1899}
!1894 = !DILocalVariable(name: "s2", arg: 2, scope: !1890, file: !1778, line: 104, type: !26)
!1895 = !DILocalVariable(name: "s24", arg: 3, scope: !1890, file: !1778, line: 104, type: !28)
!1896 = !DILocalVariable(name: "s25", arg: 4, scope: !1890, file: !1778, line: 104, type: !28)
!1897 = !DILocalVariable(name: "s26", arg: 5, scope: !1890, file: !1778, line: 104, type: !28)
!1898 = !DILocalVariable(name: "s27", arg: 6, scope: !1890, file: !1778, line: 104, type: !28)
!1899 = !DILocalVariable(name: "s28", arg: 7, scope: !1890, file: !1778, line: 104, type: !28)
!1900 = !DILocation(line: 104, column: 25, scope: !1890, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 125, column: 16, scope: !1902, inlinedAt: !1876)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !1778, line: 122, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1887, file: !1778, line: 121, column: 5)
!1904 = !DILocation(line: 104, column: 41, scope: !1890, inlinedAt: !1901)
!1905 = !DILocation(line: 104, column: 50, scope: !1890, inlinedAt: !1901)
!1906 = !DILocation(line: 104, column: 60, scope: !1890, inlinedAt: !1901)
!1907 = !DILocation(line: 104, column: 70, scope: !1890, inlinedAt: !1901)
!1908 = !DILocation(line: 104, column: 80, scope: !1890, inlinedAt: !1901)
!1909 = !DILocation(line: 104, column: 90, scope: !1890, inlinedAt: !1901)
!1910 = !DILocation(line: 106, column: 7, scope: !1911, inlinedAt: !1901)
!1911 = distinct !DILexicalBlock(scope: !1890, file: !1778, line: 106, column: 7)
!1912 = !DILocation(line: 106, column: 7, scope: !1890, inlinedAt: !1901)
!1913 = !DILocalVariable(name: "s1", arg: 1, scope: !1914, file: !1778, line: 90, type: !26)
!1914 = distinct !DISubprogram(name: "strcaseeq5", scope: !1778, file: !1778, line: 90, type: !1915, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!44, !26, !26, !28, !28, !28, !28}
!1917 = !{!1913, !1918, !1919, !1920, !1921, !1922}
!1918 = !DILocalVariable(name: "s2", arg: 2, scope: !1914, file: !1778, line: 90, type: !26)
!1919 = !DILocalVariable(name: "s25", arg: 3, scope: !1914, file: !1778, line: 90, type: !28)
!1920 = !DILocalVariable(name: "s26", arg: 4, scope: !1914, file: !1778, line: 90, type: !28)
!1921 = !DILocalVariable(name: "s27", arg: 5, scope: !1914, file: !1778, line: 90, type: !28)
!1922 = !DILocalVariable(name: "s28", arg: 6, scope: !1914, file: !1778, line: 90, type: !28)
!1923 = !DILocation(line: 90, column: 25, scope: !1914, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 111, column: 16, scope: !1925, inlinedAt: !1901)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !1778, line: 108, column: 11)
!1926 = distinct !DILexicalBlock(scope: !1911, file: !1778, line: 107, column: 5)
!1927 = !DILocation(line: 90, column: 41, scope: !1914, inlinedAt: !1924)
!1928 = !DILocation(line: 90, column: 50, scope: !1914, inlinedAt: !1924)
!1929 = !DILocation(line: 90, column: 60, scope: !1914, inlinedAt: !1924)
!1930 = !DILocation(line: 90, column: 70, scope: !1914, inlinedAt: !1924)
!1931 = !DILocation(line: 90, column: 80, scope: !1914, inlinedAt: !1924)
!1932 = !DILocation(line: 92, column: 7, scope: !1933, inlinedAt: !1924)
!1933 = distinct !DILexicalBlock(scope: !1914, file: !1778, line: 92, column: 7)
!1934 = !DILocation(line: 92, column: 7, scope: !1914, inlinedAt: !1924)
!1935 = !DILocation(line: 235, column: 12, scope: !1794)
!1936 = !DILocation(line: 235, column: 21, scope: !1794)
!1937 = !DILocation(line: 235, column: 5, scope: !1794)
!1938 = !DILocation(line: 146, column: 25, scope: !1808, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 167, column: 16, scope: !1823, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 236, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1759, file: !125, line: 236, column: 7)
!1942 = !DILocation(line: 146, column: 41, scope: !1808, inlinedAt: !1939)
!1943 = !DILocation(line: 146, column: 50, scope: !1808, inlinedAt: !1939)
!1944 = !DILocation(line: 146, column: 60, scope: !1808, inlinedAt: !1939)
!1945 = !DILocation(line: 146, column: 70, scope: !1808, inlinedAt: !1939)
!1946 = !DILocation(line: 146, column: 80, scope: !1808, inlinedAt: !1939)
!1947 = !DILocation(line: 146, column: 90, scope: !1808, inlinedAt: !1939)
!1948 = !DILocation(line: 146, column: 100, scope: !1808, inlinedAt: !1939)
!1949 = !DILocation(line: 146, column: 110, scope: !1808, inlinedAt: !1939)
!1950 = !DILocation(line: 146, column: 120, scope: !1808, inlinedAt: !1939)
!1951 = !DILocation(line: 148, column: 7, scope: !1835, inlinedAt: !1939)
!1952 = !DILocation(line: 132, column: 25, scope: !1837, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 153, column: 16, scope: !1851, inlinedAt: !1939)
!1954 = !DILocation(line: 132, column: 41, scope: !1837, inlinedAt: !1953)
!1955 = !DILocation(line: 132, column: 50, scope: !1837, inlinedAt: !1953)
!1956 = !DILocation(line: 132, column: 60, scope: !1837, inlinedAt: !1953)
!1957 = !DILocation(line: 132, column: 70, scope: !1837, inlinedAt: !1953)
!1958 = !DILocation(line: 132, column: 80, scope: !1837, inlinedAt: !1953)
!1959 = !DILocation(line: 132, column: 90, scope: !1837, inlinedAt: !1953)
!1960 = !DILocation(line: 132, column: 100, scope: !1837, inlinedAt: !1953)
!1961 = !DILocation(line: 132, column: 110, scope: !1837, inlinedAt: !1953)
!1962 = !DILocation(line: 134, column: 7, scope: !1862, inlinedAt: !1953)
!1963 = !DILocation(line: 134, column: 7, scope: !1837, inlinedAt: !1953)
!1964 = !DILocation(line: 118, column: 25, scope: !1864, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 139, column: 16, scope: !1877, inlinedAt: !1953)
!1966 = !DILocation(line: 118, column: 41, scope: !1864, inlinedAt: !1965)
!1967 = !DILocation(line: 118, column: 50, scope: !1864, inlinedAt: !1965)
!1968 = !DILocation(line: 118, column: 60, scope: !1864, inlinedAt: !1965)
!1969 = !DILocation(line: 118, column: 70, scope: !1864, inlinedAt: !1965)
!1970 = !DILocation(line: 118, column: 80, scope: !1864, inlinedAt: !1965)
!1971 = !DILocation(line: 118, column: 90, scope: !1864, inlinedAt: !1965)
!1972 = !DILocation(line: 118, column: 100, scope: !1864, inlinedAt: !1965)
!1973 = !DILocation(line: 120, column: 7, scope: !1887, inlinedAt: !1965)
!1974 = !DILocation(line: 120, column: 7, scope: !1864, inlinedAt: !1965)
!1975 = !DILocation(line: 104, column: 25, scope: !1890, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 125, column: 16, scope: !1902, inlinedAt: !1965)
!1977 = !DILocation(line: 104, column: 41, scope: !1890, inlinedAt: !1976)
!1978 = !DILocation(line: 104, column: 50, scope: !1890, inlinedAt: !1976)
!1979 = !DILocation(line: 104, column: 60, scope: !1890, inlinedAt: !1976)
!1980 = !DILocation(line: 104, column: 70, scope: !1890, inlinedAt: !1976)
!1981 = !DILocation(line: 104, column: 80, scope: !1890, inlinedAt: !1976)
!1982 = !DILocation(line: 104, column: 90, scope: !1890, inlinedAt: !1976)
!1983 = !DILocation(line: 106, column: 7, scope: !1911, inlinedAt: !1976)
!1984 = !DILocation(line: 106, column: 7, scope: !1890, inlinedAt: !1976)
!1985 = !DILocation(line: 90, column: 25, scope: !1914, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 111, column: 16, scope: !1925, inlinedAt: !1976)
!1987 = !DILocation(line: 90, column: 41, scope: !1914, inlinedAt: !1986)
!1988 = !DILocation(line: 90, column: 50, scope: !1914, inlinedAt: !1986)
!1989 = !DILocation(line: 90, column: 60, scope: !1914, inlinedAt: !1986)
!1990 = !DILocation(line: 90, column: 70, scope: !1914, inlinedAt: !1986)
!1991 = !DILocation(line: 90, column: 80, scope: !1914, inlinedAt: !1986)
!1992 = !DILocation(line: 92, column: 7, scope: !1933, inlinedAt: !1986)
!1993 = !DILocation(line: 92, column: 7, scope: !1914, inlinedAt: !1986)
!1994 = !DILocalVariable(name: "s1", arg: 1, scope: !1995, file: !1778, line: 76, type: !26)
!1995 = distinct !DISubprogram(name: "strcaseeq6", scope: !1778, file: !1778, line: 76, type: !1996, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!44, !26, !26, !28, !28, !28}
!1998 = !{!1994, !1999, !2000, !2001, !2002}
!1999 = !DILocalVariable(name: "s2", arg: 2, scope: !1995, file: !1778, line: 76, type: !26)
!2000 = !DILocalVariable(name: "s26", arg: 3, scope: !1995, file: !1778, line: 76, type: !28)
!2001 = !DILocalVariable(name: "s27", arg: 4, scope: !1995, file: !1778, line: 76, type: !28)
!2002 = !DILocalVariable(name: "s28", arg: 5, scope: !1995, file: !1778, line: 76, type: !28)
!2003 = !DILocation(line: 76, column: 25, scope: !1995, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 97, column: 16, scope: !2005, inlinedAt: !1986)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !1778, line: 94, column: 11)
!2006 = distinct !DILexicalBlock(scope: !1933, file: !1778, line: 93, column: 5)
!2007 = !DILocation(line: 76, column: 41, scope: !1995, inlinedAt: !2004)
!2008 = !DILocation(line: 76, column: 50, scope: !1995, inlinedAt: !2004)
!2009 = !DILocation(line: 76, column: 60, scope: !1995, inlinedAt: !2004)
!2010 = !DILocation(line: 76, column: 70, scope: !1995, inlinedAt: !2004)
!2011 = !DILocation(line: 78, column: 7, scope: !2012, inlinedAt: !2004)
!2012 = distinct !DILexicalBlock(scope: !1995, file: !1778, line: 78, column: 7)
!2013 = !DILocation(line: 78, column: 7, scope: !1995, inlinedAt: !2004)
!2014 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1778, line: 62, type: !26)
!2015 = distinct !DISubprogram(name: "strcaseeq7", scope: !1778, file: !1778, line: 62, type: !2016, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!44, !26, !26, !28, !28}
!2018 = !{!2014, !2019, !2020, !2021}
!2019 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1778, line: 62, type: !26)
!2020 = !DILocalVariable(name: "s27", arg: 3, scope: !2015, file: !1778, line: 62, type: !28)
!2021 = !DILocalVariable(name: "s28", arg: 4, scope: !2015, file: !1778, line: 62, type: !28)
!2022 = !DILocation(line: 62, column: 25, scope: !2015, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 83, column: 16, scope: !2024, inlinedAt: !2004)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1778, line: 80, column: 11)
!2025 = distinct !DILexicalBlock(scope: !2012, file: !1778, line: 79, column: 5)
!2026 = !DILocation(line: 62, column: 41, scope: !2015, inlinedAt: !2023)
!2027 = !DILocation(line: 62, column: 50, scope: !2015, inlinedAt: !2023)
!2028 = !DILocation(line: 62, column: 60, scope: !2015, inlinedAt: !2023)
!2029 = !DILocation(line: 64, column: 7, scope: !2030, inlinedAt: !2023)
!2030 = distinct !DILexicalBlock(scope: !2015, file: !1778, line: 64, column: 7)
!2031 = !DILocation(line: 236, column: 7, scope: !1759)
!2032 = !DILocation(line: 237, column: 12, scope: !1941)
!2033 = !DILocation(line: 237, column: 21, scope: !1941)
!2034 = !DILocation(line: 237, column: 5, scope: !1941)
!2035 = !DILocation(line: 239, column: 13, scope: !1759)
!2036 = !DILocation(line: 239, column: 11, scope: !1759)
!2037 = !DILocation(line: 239, column: 3, scope: !1759)
!2038 = !DILocation(line: 0, scope: !1759)
!2039 = !DILocation(line: 240, column: 1, scope: !1759)
!2040 = distinct !DISubprogram(name: "quotearg_alloc", scope: !125, file: !125, line: 799, type: !2041, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!34, !26, !30, !1082}
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "arg", arg: 1, scope: !2040, file: !125, line: 799, type: !26)
!2045 = !DILocalVariable(name: "argsize", arg: 2, scope: !2040, file: !125, line: 799, type: !30)
!2046 = !DILocalVariable(name: "o", arg: 3, scope: !2040, file: !125, line: 800, type: !1082)
!2047 = !DILocation(line: 799, column: 29, scope: !2040)
!2048 = !DILocation(line: 799, column: 41, scope: !2040)
!2049 = !DILocation(line: 800, column: 47, scope: !2040)
!2050 = !DILocalVariable(name: "arg", arg: 1, scope: !2051, file: !125, line: 812, type: !26)
!2051 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !125, file: !125, line: 812, type: !2052, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!34, !26, !30, !189, !1082}
!2054 = !{!2050, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!2055 = !DILocalVariable(name: "argsize", arg: 2, scope: !2051, file: !125, line: 812, type: !30)
!2056 = !DILocalVariable(name: "size", arg: 3, scope: !2051, file: !125, line: 812, type: !189)
!2057 = !DILocalVariable(name: "o", arg: 4, scope: !2051, file: !125, line: 813, type: !1082)
!2058 = !DILocalVariable(name: "p", scope: !2051, file: !125, line: 815, type: !1082)
!2059 = !DILocalVariable(name: "e", scope: !2051, file: !125, line: 816, type: !44)
!2060 = !DILocalVariable(name: "flags", scope: !2051, file: !125, line: 818, type: !44)
!2061 = !DILocalVariable(name: "bufsize", scope: !2051, file: !125, line: 819, type: !30)
!2062 = !DILocalVariable(name: "buf", scope: !2051, file: !125, line: 823, type: !34)
!2063 = !DILocation(line: 812, column: 33, scope: !2051, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 802, column: 10, scope: !2040)
!2065 = !DILocation(line: 812, column: 45, scope: !2051, inlinedAt: !2064)
!2066 = !DILocation(line: 812, column: 62, scope: !2051, inlinedAt: !2064)
!2067 = !DILocation(line: 813, column: 51, scope: !2051, inlinedAt: !2064)
!2068 = !DILocation(line: 815, column: 37, scope: !2051, inlinedAt: !2064)
!2069 = !DILocation(line: 815, column: 33, scope: !2051, inlinedAt: !2064)
!2070 = !DILocation(line: 816, column: 11, scope: !2051, inlinedAt: !2064)
!2071 = !DILocation(line: 816, column: 7, scope: !2051, inlinedAt: !2064)
!2072 = !DILocation(line: 818, column: 18, scope: !2051, inlinedAt: !2064)
!2073 = !DILocation(line: 818, column: 24, scope: !2051, inlinedAt: !2064)
!2074 = !DILocation(line: 818, column: 7, scope: !2051, inlinedAt: !2064)
!2075 = !DILocation(line: 819, column: 69, scope: !2051, inlinedAt: !2064)
!2076 = !DILocation(line: 820, column: 53, scope: !2051, inlinedAt: !2064)
!2077 = !DILocation(line: 821, column: 49, scope: !2051, inlinedAt: !2064)
!2078 = !DILocation(line: 822, column: 49, scope: !2051, inlinedAt: !2064)
!2079 = !DILocation(line: 819, column: 20, scope: !2051, inlinedAt: !2064)
!2080 = !DILocation(line: 822, column: 62, scope: !2051, inlinedAt: !2064)
!2081 = !DILocation(line: 819, column: 10, scope: !2051, inlinedAt: !2064)
!2082 = !DILocalVariable(name: "n", arg: 1, scope: !2083, file: !185, line: 216, type: !30)
!2083 = distinct !DISubprogram(name: "xcharalloc", scope: !185, file: !185, line: 216, type: !2084, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!34, !30}
!2086 = !{!2082}
!2087 = !DILocation(line: 216, column: 20, scope: !2083, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 823, column: 15, scope: !2051, inlinedAt: !2064)
!2089 = !DILocation(line: 218, column: 10, scope: !2083, inlinedAt: !2088)
!2090 = !DILocation(line: 823, column: 9, scope: !2051, inlinedAt: !2064)
!2091 = !DILocation(line: 824, column: 60, scope: !2051, inlinedAt: !2064)
!2092 = !DILocation(line: 826, column: 32, scope: !2051, inlinedAt: !2064)
!2093 = !DILocation(line: 826, column: 47, scope: !2051, inlinedAt: !2064)
!2094 = !DILocation(line: 824, column: 3, scope: !2051, inlinedAt: !2064)
!2095 = !DILocation(line: 827, column: 9, scope: !2051, inlinedAt: !2064)
!2096 = !DILocation(line: 802, column: 3, scope: !2040)
!2097 = !DILocation(line: 812, column: 33, scope: !2051)
!2098 = !DILocation(line: 812, column: 45, scope: !2051)
!2099 = !DILocation(line: 812, column: 62, scope: !2051)
!2100 = !DILocation(line: 813, column: 51, scope: !2051)
!2101 = !DILocation(line: 815, column: 37, scope: !2051)
!2102 = !DILocation(line: 815, column: 33, scope: !2051)
!2103 = !DILocation(line: 816, column: 11, scope: !2051)
!2104 = !DILocation(line: 816, column: 7, scope: !2051)
!2105 = !DILocation(line: 818, column: 18, scope: !2051)
!2106 = !DILocation(line: 818, column: 27, scope: !2051)
!2107 = !DILocation(line: 818, column: 24, scope: !2051)
!2108 = !DILocation(line: 818, column: 7, scope: !2051)
!2109 = !DILocation(line: 819, column: 69, scope: !2051)
!2110 = !DILocation(line: 820, column: 53, scope: !2051)
!2111 = !DILocation(line: 821, column: 49, scope: !2051)
!2112 = !DILocation(line: 822, column: 49, scope: !2051)
!2113 = !DILocation(line: 819, column: 20, scope: !2051)
!2114 = !DILocation(line: 822, column: 62, scope: !2051)
!2115 = !DILocation(line: 819, column: 10, scope: !2051)
!2116 = !DILocation(line: 216, column: 20, scope: !2083, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 823, column: 15, scope: !2051)
!2118 = !DILocation(line: 218, column: 10, scope: !2083, inlinedAt: !2117)
!2119 = !DILocation(line: 823, column: 9, scope: !2051)
!2120 = !DILocation(line: 824, column: 60, scope: !2051)
!2121 = !DILocation(line: 826, column: 32, scope: !2051)
!2122 = !DILocation(line: 826, column: 47, scope: !2051)
!2123 = !DILocation(line: 824, column: 3, scope: !2051)
!2124 = !DILocation(line: 827, column: 9, scope: !2051)
!2125 = !DILocation(line: 828, column: 7, scope: !2051)
!2126 = !DILocation(line: 829, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2051, file: !125, line: 828, column: 7)
!2128 = !DILocation(line: 829, column: 5, scope: !2127)
!2129 = !DILocation(line: 830, column: 3, scope: !2051)
!2130 = distinct !DISubprogram(name: "quotearg_free", scope: !125, file: !125, line: 848, type: !934, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2131)
!2131 = !{!2132, !2133}
!2132 = !DILocalVariable(name: "sv", scope: !2130, file: !125, line: 850, type: !151)
!2133 = !DILocalVariable(name: "i", scope: !2130, file: !125, line: 851, type: !44)
!2134 = !DILocation(line: 850, column: 24, scope: !2130)
!2135 = !DILocation(line: 850, column: 19, scope: !2130)
!2136 = !DILocation(line: 851, column: 7, scope: !2130)
!2137 = !DILocation(line: 852, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !125, line: 852, column: 3)
!2139 = distinct !DILexicalBlock(scope: !2130, file: !125, line: 852, column: 3)
!2140 = !DILocation(line: 852, column: 17, scope: !2138)
!2141 = !DILocation(line: 852, column: 3, scope: !2139)
!2142 = !DILocation(line: 853, column: 17, scope: !2138)
!2143 = !{!2144, !655, i64 8}
!2144 = !{!"slotvec", !796, i64 0, !655, i64 8}
!2145 = !DILocation(line: 853, column: 5, scope: !2138)
!2146 = !DILocation(line: 852, column: 28, scope: !2138)
!2147 = distinct !{!2147, !2141, !2148}
!2148 = !DILocation(line: 853, column: 20, scope: !2139)
!2149 = !DILocation(line: 854, column: 13, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2130, file: !125, line: 854, column: 7)
!2151 = !DILocation(line: 854, column: 17, scope: !2150)
!2152 = !DILocation(line: 854, column: 7, scope: !2130)
!2153 = !DILocation(line: 856, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !125, line: 855, column: 5)
!2155 = !DILocation(line: 857, column: 21, scope: !2154)
!2156 = !{!2144, !796, i64 0}
!2157 = !DILocation(line: 858, column: 20, scope: !2154)
!2158 = !DILocation(line: 859, column: 5, scope: !2154)
!2159 = !DILocation(line: 860, column: 10, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2130, file: !125, line: 860, column: 7)
!2161 = !DILocation(line: 860, column: 7, scope: !2130)
!2162 = !DILocation(line: 862, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !125, line: 861, column: 5)
!2164 = !DILocation(line: 862, column: 7, scope: !2163)
!2165 = !DILocation(line: 863, column: 15, scope: !2163)
!2166 = !DILocation(line: 864, column: 5, scope: !2163)
!2167 = !DILocation(line: 865, column: 10, scope: !2130)
!2168 = !DILocation(line: 866, column: 1, scope: !2130)
!2169 = distinct !DISubprogram(name: "quotearg_n", scope: !125, file: !125, line: 931, type: !2170, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!34, !44, !26}
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "n", arg: 1, scope: !2169, file: !125, line: 931, type: !44)
!2174 = !DILocalVariable(name: "arg", arg: 2, scope: !2169, file: !125, line: 931, type: !26)
!2175 = !DILocation(line: 931, column: 17, scope: !2169)
!2176 = !DILocation(line: 931, column: 32, scope: !2169)
!2177 = !DILocation(line: 933, column: 10, scope: !2169)
!2178 = !DILocation(line: 933, column: 3, scope: !2169)
!2179 = distinct !DISubprogram(name: "quotearg_n_options", scope: !125, file: !125, line: 877, type: !2180, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!34, !44, !26, !30, !1082}
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2192, !2193, !2195, !2196, !2197}
!2183 = !DILocalVariable(name: "n", arg: 1, scope: !2179, file: !125, line: 877, type: !44)
!2184 = !DILocalVariable(name: "arg", arg: 2, scope: !2179, file: !125, line: 877, type: !26)
!2185 = !DILocalVariable(name: "argsize", arg: 3, scope: !2179, file: !125, line: 877, type: !30)
!2186 = !DILocalVariable(name: "options", arg: 4, scope: !2179, file: !125, line: 878, type: !1082)
!2187 = !DILocalVariable(name: "e", scope: !2179, file: !125, line: 880, type: !44)
!2188 = !DILocalVariable(name: "sv", scope: !2179, file: !125, line: 882, type: !151)
!2189 = !DILocalVariable(name: "preallocated", scope: !2190, file: !125, line: 889, type: !64)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !125, line: 888, column: 5)
!2191 = distinct !DILexicalBlock(scope: !2179, file: !125, line: 887, column: 7)
!2192 = !DILocalVariable(name: "nmax", scope: !2190, file: !125, line: 890, type: !44)
!2193 = !DILocalVariable(name: "size", scope: !2194, file: !125, line: 903, type: !30)
!2194 = distinct !DILexicalBlock(scope: !2179, file: !125, line: 902, column: 3)
!2195 = !DILocalVariable(name: "val", scope: !2194, file: !125, line: 904, type: !34)
!2196 = !DILocalVariable(name: "flags", scope: !2194, file: !125, line: 906, type: !44)
!2197 = !DILocalVariable(name: "qsize", scope: !2194, file: !125, line: 907, type: !30)
!2198 = !DILocation(line: 877, column: 25, scope: !2179)
!2199 = !DILocation(line: 877, column: 40, scope: !2179)
!2200 = !DILocation(line: 877, column: 52, scope: !2179)
!2201 = !DILocation(line: 878, column: 51, scope: !2179)
!2202 = !DILocation(line: 880, column: 11, scope: !2179)
!2203 = !DILocation(line: 880, column: 7, scope: !2179)
!2204 = !DILocation(line: 882, column: 24, scope: !2179)
!2205 = !DILocation(line: 882, column: 19, scope: !2179)
!2206 = !DILocation(line: 884, column: 9, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2179, file: !125, line: 884, column: 7)
!2208 = !DILocation(line: 884, column: 7, scope: !2179)
!2209 = !DILocation(line: 885, column: 5, scope: !2207)
!2210 = !DILocation(line: 887, column: 7, scope: !2191)
!2211 = !DILocation(line: 887, column: 14, scope: !2191)
!2212 = !DILocation(line: 887, column: 7, scope: !2179)
!2213 = !DILocation(line: 889, column: 31, scope: !2190)
!2214 = !DILocation(line: 890, column: 11, scope: !2190)
!2215 = !DILocation(line: 892, column: 16, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2190, file: !125, line: 892, column: 11)
!2217 = !DILocation(line: 892, column: 11, scope: !2190)
!2218 = !DILocation(line: 893, column: 9, scope: !2216)
!2219 = !DILocation(line: 895, column: 32, scope: !2190)
!2220 = !DILocation(line: 895, column: 61, scope: !2190)
!2221 = !DILocation(line: 895, column: 58, scope: !2190)
!2222 = !DILocation(line: 895, column: 66, scope: !2190)
!2223 = !DILocation(line: 895, column: 22, scope: !2190)
!2224 = !DILocation(line: 895, column: 15, scope: !2190)
!2225 = !DILocation(line: 896, column: 11, scope: !2190)
!2226 = !DILocation(line: 897, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2190, file: !125, line: 896, column: 11)
!2228 = !{i64 0, i64 8, !795, i64 8, i64 8, !654}
!2229 = !DILocation(line: 897, column: 9, scope: !2227)
!2230 = !DILocation(line: 898, column: 20, scope: !2190)
!2231 = !DILocation(line: 898, column: 18, scope: !2190)
!2232 = !DILocation(line: 898, column: 7, scope: !2190)
!2233 = !DILocation(line: 898, column: 38, scope: !2190)
!2234 = !DILocation(line: 898, column: 31, scope: !2190)
!2235 = !DILocation(line: 898, column: 48, scope: !2190)
!2236 = !DILocation(line: 899, column: 14, scope: !2190)
!2237 = !DILocation(line: 900, column: 5, scope: !2190)
!2238 = !DILocation(line: 0, scope: !2179)
!2239 = !DILocation(line: 903, column: 19, scope: !2194)
!2240 = !DILocation(line: 903, column: 25, scope: !2194)
!2241 = !DILocation(line: 903, column: 12, scope: !2194)
!2242 = !DILocation(line: 904, column: 23, scope: !2194)
!2243 = !DILocation(line: 904, column: 11, scope: !2194)
!2244 = !DILocation(line: 906, column: 26, scope: !2194)
!2245 = !DILocation(line: 906, column: 32, scope: !2194)
!2246 = !DILocation(line: 906, column: 9, scope: !2194)
!2247 = !DILocation(line: 908, column: 55, scope: !2194)
!2248 = !DILocation(line: 909, column: 46, scope: !2194)
!2249 = !DILocation(line: 910, column: 55, scope: !2194)
!2250 = !DILocation(line: 911, column: 55, scope: !2194)
!2251 = !DILocation(line: 907, column: 20, scope: !2194)
!2252 = !DILocation(line: 907, column: 12, scope: !2194)
!2253 = !DILocation(line: 913, column: 14, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2194, file: !125, line: 913, column: 9)
!2255 = !DILocation(line: 913, column: 9, scope: !2194)
!2256 = !DILocation(line: 915, column: 35, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !125, line: 914, column: 7)
!2258 = !DILocation(line: 915, column: 20, scope: !2257)
!2259 = !DILocation(line: 916, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !125, line: 916, column: 13)
!2261 = !DILocation(line: 916, column: 13, scope: !2257)
!2262 = !DILocation(line: 917, column: 11, scope: !2260)
!2263 = !DILocation(line: 216, column: 20, scope: !2083, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 918, column: 27, scope: !2257)
!2265 = !DILocation(line: 218, column: 10, scope: !2083, inlinedAt: !2264)
!2266 = !DILocation(line: 918, column: 19, scope: !2257)
!2267 = !DILocation(line: 919, column: 69, scope: !2257)
!2268 = !DILocation(line: 921, column: 44, scope: !2257)
!2269 = !DILocation(line: 922, column: 44, scope: !2257)
!2270 = !DILocation(line: 919, column: 9, scope: !2257)
!2271 = !DILocation(line: 923, column: 7, scope: !2257)
!2272 = !DILocation(line: 0, scope: !2194)
!2273 = !DILocation(line: 925, column: 11, scope: !2194)
!2274 = !DILocation(line: 926, column: 5, scope: !2194)
!2275 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !125, file: !125, line: 937, type: !2276, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!34, !44, !26, !30}
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2275, file: !125, line: 937, type: !44)
!2280 = !DILocalVariable(name: "arg", arg: 2, scope: !2275, file: !125, line: 937, type: !26)
!2281 = !DILocalVariable(name: "argsize", arg: 3, scope: !2275, file: !125, line: 937, type: !30)
!2282 = !DILocation(line: 937, column: 21, scope: !2275)
!2283 = !DILocation(line: 937, column: 36, scope: !2275)
!2284 = !DILocation(line: 937, column: 48, scope: !2275)
!2285 = !DILocation(line: 939, column: 10, scope: !2275)
!2286 = !DILocation(line: 939, column: 3, scope: !2275)
!2287 = distinct !DISubprogram(name: "quotearg", scope: !125, file: !125, line: 943, type: !2288, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!34, !26}
!2290 = !{!2291}
!2291 = !DILocalVariable(name: "arg", arg: 1, scope: !2287, file: !125, line: 943, type: !26)
!2292 = !DILocation(line: 943, column: 23, scope: !2287)
!2293 = !DILocation(line: 931, column: 17, scope: !2169, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 945, column: 10, scope: !2287)
!2295 = !DILocation(line: 931, column: 32, scope: !2169, inlinedAt: !2294)
!2296 = !DILocation(line: 933, column: 10, scope: !2169, inlinedAt: !2294)
!2297 = !DILocation(line: 945, column: 3, scope: !2287)
!2298 = distinct !DISubprogram(name: "quotearg_mem", scope: !125, file: !125, line: 949, type: !2299, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!34, !26, !30}
!2301 = !{!2302, !2303}
!2302 = !DILocalVariable(name: "arg", arg: 1, scope: !2298, file: !125, line: 949, type: !26)
!2303 = !DILocalVariable(name: "argsize", arg: 2, scope: !2298, file: !125, line: 949, type: !30)
!2304 = !DILocation(line: 949, column: 27, scope: !2298)
!2305 = !DILocation(line: 949, column: 39, scope: !2298)
!2306 = !DILocation(line: 937, column: 21, scope: !2275, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 951, column: 10, scope: !2298)
!2308 = !DILocation(line: 937, column: 36, scope: !2275, inlinedAt: !2307)
!2309 = !DILocation(line: 937, column: 48, scope: !2275, inlinedAt: !2307)
!2310 = !DILocation(line: 939, column: 10, scope: !2275, inlinedAt: !2307)
!2311 = !DILocation(line: 951, column: 3, scope: !2298)
!2312 = distinct !DISubprogram(name: "quotearg_n_style", scope: !125, file: !125, line: 955, type: !2313, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!34, !44, !11, !26}
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DILocalVariable(name: "n", arg: 1, scope: !2312, file: !125, line: 955, type: !44)
!2317 = !DILocalVariable(name: "s", arg: 2, scope: !2312, file: !125, line: 955, type: !11)
!2318 = !DILocalVariable(name: "arg", arg: 3, scope: !2312, file: !125, line: 955, type: !26)
!2319 = !DILocalVariable(name: "o", scope: !2312, file: !125, line: 957, type: !1083)
!2320 = !DILocation(line: 955, column: 23, scope: !2312)
!2321 = !DILocation(line: 955, column: 45, scope: !2312)
!2322 = !DILocation(line: 955, column: 60, scope: !2312)
!2323 = !DILocation(line: 957, column: 3, scope: !2312)
!2324 = !DILocation(line: 957, column: 32, scope: !2312)
!2325 = !DILocalVariable(name: "style", arg: 1, scope: !2326, file: !125, line: 193, type: !11)
!2326 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !125, file: !125, line: 193, type: !2327, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!132, !11}
!2329 = !{!2325, !2330}
!2330 = !DILocalVariable(name: "o", scope: !2326, file: !125, line: 195, type: !132)
!2331 = !DILocation(line: 193, column: 48, scope: !2326, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 957, column: 36, scope: !2312)
!2333 = !DILocation(line: 195, column: 26, scope: !2326, inlinedAt: !2332)
!2334 = !{!2335}
!2335 = distinct !{!2335, !2336, !"quoting_options_from_style: argument 0"}
!2336 = distinct !{!2336, !"quoting_options_from_style"}
!2337 = !DILocation(line: 196, column: 13, scope: !2338, inlinedAt: !2332)
!2338 = distinct !DILexicalBlock(scope: !2326, file: !125, line: 196, column: 7)
!2339 = !DILocation(line: 196, column: 7, scope: !2326, inlinedAt: !2332)
!2340 = !DILocation(line: 197, column: 5, scope: !2338, inlinedAt: !2332)
!2341 = !DILocation(line: 198, column: 5, scope: !2326, inlinedAt: !2332)
!2342 = !DILocation(line: 198, column: 11, scope: !2326, inlinedAt: !2332)
!2343 = !DILocation(line: 958, column: 10, scope: !2312)
!2344 = !DILocation(line: 959, column: 1, scope: !2312)
!2345 = !DILocation(line: 958, column: 3, scope: !2312)
!2346 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !125, file: !125, line: 962, type: !2347, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!34, !44, !11, !26, !30}
!2349 = !{!2350, !2351, !2352, !2353, !2354}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !125, line: 962, type: !44)
!2351 = !DILocalVariable(name: "s", arg: 2, scope: !2346, file: !125, line: 962, type: !11)
!2352 = !DILocalVariable(name: "arg", arg: 3, scope: !2346, file: !125, line: 963, type: !26)
!2353 = !DILocalVariable(name: "argsize", arg: 4, scope: !2346, file: !125, line: 963, type: !30)
!2354 = !DILocalVariable(name: "o", scope: !2346, file: !125, line: 965, type: !1083)
!2355 = !DILocation(line: 962, column: 27, scope: !2346)
!2356 = !DILocation(line: 962, column: 49, scope: !2346)
!2357 = !DILocation(line: 963, column: 35, scope: !2346)
!2358 = !DILocation(line: 963, column: 47, scope: !2346)
!2359 = !DILocation(line: 965, column: 3, scope: !2346)
!2360 = !DILocation(line: 965, column: 32, scope: !2346)
!2361 = !DILocation(line: 193, column: 48, scope: !2326, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 965, column: 36, scope: !2346)
!2363 = !DILocation(line: 195, column: 26, scope: !2326, inlinedAt: !2362)
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"quoting_options_from_style: argument 0"}
!2366 = distinct !{!2366, !"quoting_options_from_style"}
!2367 = !DILocation(line: 196, column: 13, scope: !2338, inlinedAt: !2362)
!2368 = !DILocation(line: 196, column: 7, scope: !2326, inlinedAt: !2362)
!2369 = !DILocation(line: 197, column: 5, scope: !2338, inlinedAt: !2362)
!2370 = !DILocation(line: 198, column: 5, scope: !2326, inlinedAt: !2362)
!2371 = !DILocation(line: 198, column: 11, scope: !2326, inlinedAt: !2362)
!2372 = !DILocation(line: 966, column: 10, scope: !2346)
!2373 = !DILocation(line: 967, column: 1, scope: !2346)
!2374 = !DILocation(line: 966, column: 3, scope: !2346)
!2375 = distinct !DISubprogram(name: "quotearg_style", scope: !125, file: !125, line: 970, type: !2376, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!34, !11, !26}
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "s", arg: 1, scope: !2375, file: !125, line: 970, type: !11)
!2380 = !DILocalVariable(name: "arg", arg: 2, scope: !2375, file: !125, line: 970, type: !26)
!2381 = !DILocation(line: 970, column: 36, scope: !2375)
!2382 = !DILocation(line: 970, column: 51, scope: !2375)
!2383 = !DILocation(line: 955, column: 23, scope: !2312, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 972, column: 10, scope: !2375)
!2385 = !DILocation(line: 955, column: 45, scope: !2312, inlinedAt: !2384)
!2386 = !DILocation(line: 955, column: 60, scope: !2312, inlinedAt: !2384)
!2387 = !DILocation(line: 957, column: 3, scope: !2312, inlinedAt: !2384)
!2388 = !DILocation(line: 957, column: 32, scope: !2312, inlinedAt: !2384)
!2389 = !DILocation(line: 193, column: 48, scope: !2326, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 957, column: 36, scope: !2312, inlinedAt: !2384)
!2391 = !DILocation(line: 195, column: 26, scope: !2326, inlinedAt: !2390)
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"quoting_options_from_style: argument 0"}
!2394 = distinct !{!2394, !"quoting_options_from_style"}
!2395 = !DILocation(line: 196, column: 13, scope: !2338, inlinedAt: !2390)
!2396 = !DILocation(line: 196, column: 7, scope: !2326, inlinedAt: !2390)
!2397 = !DILocation(line: 197, column: 5, scope: !2338, inlinedAt: !2390)
!2398 = !DILocation(line: 198, column: 5, scope: !2326, inlinedAt: !2390)
!2399 = !DILocation(line: 198, column: 11, scope: !2326, inlinedAt: !2390)
!2400 = !DILocation(line: 958, column: 10, scope: !2312, inlinedAt: !2384)
!2401 = !DILocation(line: 959, column: 1, scope: !2312, inlinedAt: !2384)
!2402 = !DILocation(line: 972, column: 3, scope: !2375)
!2403 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !125, file: !125, line: 976, type: !2404, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!34, !11, !26, !30}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "s", arg: 1, scope: !2403, file: !125, line: 976, type: !11)
!2408 = !DILocalVariable(name: "arg", arg: 2, scope: !2403, file: !125, line: 976, type: !26)
!2409 = !DILocalVariable(name: "argsize", arg: 3, scope: !2403, file: !125, line: 976, type: !30)
!2410 = !DILocation(line: 976, column: 40, scope: !2403)
!2411 = !DILocation(line: 976, column: 55, scope: !2403)
!2412 = !DILocation(line: 976, column: 67, scope: !2403)
!2413 = !DILocation(line: 962, column: 27, scope: !2346, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 978, column: 10, scope: !2403)
!2415 = !DILocation(line: 962, column: 49, scope: !2346, inlinedAt: !2414)
!2416 = !DILocation(line: 963, column: 35, scope: !2346, inlinedAt: !2414)
!2417 = !DILocation(line: 963, column: 47, scope: !2346, inlinedAt: !2414)
!2418 = !DILocation(line: 965, column: 3, scope: !2346, inlinedAt: !2414)
!2419 = !DILocation(line: 965, column: 32, scope: !2346, inlinedAt: !2414)
!2420 = !DILocation(line: 193, column: 48, scope: !2326, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 965, column: 36, scope: !2346, inlinedAt: !2414)
!2422 = !DILocation(line: 195, column: 26, scope: !2326, inlinedAt: !2421)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 196, column: 13, scope: !2338, inlinedAt: !2421)
!2427 = !DILocation(line: 196, column: 7, scope: !2326, inlinedAt: !2421)
!2428 = !DILocation(line: 197, column: 5, scope: !2338, inlinedAt: !2421)
!2429 = !DILocation(line: 198, column: 5, scope: !2326, inlinedAt: !2421)
!2430 = !DILocation(line: 198, column: 11, scope: !2326, inlinedAt: !2421)
!2431 = !DILocation(line: 966, column: 10, scope: !2346, inlinedAt: !2414)
!2432 = !DILocation(line: 967, column: 1, scope: !2346, inlinedAt: !2414)
!2433 = !DILocation(line: 978, column: 3, scope: !2403)
!2434 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !125, file: !125, line: 982, type: !2435, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!34, !26, !30, !28}
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "arg", arg: 1, scope: !2434, file: !125, line: 982, type: !26)
!2439 = !DILocalVariable(name: "argsize", arg: 2, scope: !2434, file: !125, line: 982, type: !30)
!2440 = !DILocalVariable(name: "ch", arg: 3, scope: !2434, file: !125, line: 982, type: !28)
!2441 = !DILocalVariable(name: "options", scope: !2434, file: !125, line: 984, type: !132)
!2442 = !DILocation(line: 982, column: 32, scope: !2434)
!2443 = !DILocation(line: 982, column: 44, scope: !2434)
!2444 = !DILocation(line: 982, column: 58, scope: !2434)
!2445 = !DILocation(line: 984, column: 3, scope: !2434)
!2446 = !DILocation(line: 985, column: 13, scope: !2434)
!2447 = !{i64 0, i64 4, !844, i64 4, i64 4, !719, i64 8, i64 32, !844, i64 40, i64 8, !654, i64 48, i64 8, !654}
!2448 = !DILocation(line: 984, column: 26, scope: !2434)
!2449 = !DILocation(line: 152, column: 43, scope: !1104, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 986, column: 3, scope: !2434)
!2451 = !DILocation(line: 152, column: 51, scope: !1104, inlinedAt: !2450)
!2452 = !DILocation(line: 152, column: 58, scope: !1104, inlinedAt: !2450)
!2453 = !DILocation(line: 154, column: 17, scope: !1104, inlinedAt: !2450)
!2454 = !DILocation(line: 156, column: 62, scope: !1104, inlinedAt: !2450)
!2455 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2450)
!2456 = !DILocation(line: 155, column: 17, scope: !1104, inlinedAt: !2450)
!2457 = !DILocation(line: 157, column: 15, scope: !1104, inlinedAt: !2450)
!2458 = !DILocation(line: 157, column: 7, scope: !1104, inlinedAt: !2450)
!2459 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2450)
!2460 = !DILocation(line: 158, column: 15, scope: !1104, inlinedAt: !2450)
!2461 = !DILocation(line: 158, column: 25, scope: !1104, inlinedAt: !2450)
!2462 = !DILocation(line: 158, column: 7, scope: !1104, inlinedAt: !2450)
!2463 = !DILocation(line: 159, column: 18, scope: !1104, inlinedAt: !2450)
!2464 = !DILocation(line: 159, column: 23, scope: !1104, inlinedAt: !2450)
!2465 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2450)
!2466 = !DILocation(line: 987, column: 10, scope: !2434)
!2467 = !DILocation(line: 988, column: 1, scope: !2434)
!2468 = !DILocation(line: 987, column: 3, scope: !2434)
!2469 = distinct !DISubprogram(name: "quotearg_char", scope: !125, file: !125, line: 991, type: !2470, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!34, !26, !28}
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !125, line: 991, type: !26)
!2474 = !DILocalVariable(name: "ch", arg: 2, scope: !2469, file: !125, line: 991, type: !28)
!2475 = !DILocation(line: 991, column: 28, scope: !2469)
!2476 = !DILocation(line: 991, column: 38, scope: !2469)
!2477 = !DILocation(line: 982, column: 32, scope: !2434, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 993, column: 10, scope: !2469)
!2479 = !DILocation(line: 982, column: 44, scope: !2434, inlinedAt: !2478)
!2480 = !DILocation(line: 982, column: 58, scope: !2434, inlinedAt: !2478)
!2481 = !DILocation(line: 984, column: 3, scope: !2434, inlinedAt: !2478)
!2482 = !DILocation(line: 985, column: 13, scope: !2434, inlinedAt: !2478)
!2483 = !DILocation(line: 984, column: 26, scope: !2434, inlinedAt: !2478)
!2484 = !DILocation(line: 152, column: 43, scope: !1104, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 986, column: 3, scope: !2434, inlinedAt: !2478)
!2486 = !DILocation(line: 152, column: 51, scope: !1104, inlinedAt: !2485)
!2487 = !DILocation(line: 152, column: 58, scope: !1104, inlinedAt: !2485)
!2488 = !DILocation(line: 154, column: 17, scope: !1104, inlinedAt: !2485)
!2489 = !DILocation(line: 156, column: 62, scope: !1104, inlinedAt: !2485)
!2490 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2485)
!2491 = !DILocation(line: 155, column: 17, scope: !1104, inlinedAt: !2485)
!2492 = !DILocation(line: 157, column: 15, scope: !1104, inlinedAt: !2485)
!2493 = !DILocation(line: 157, column: 7, scope: !1104, inlinedAt: !2485)
!2494 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2485)
!2495 = !DILocation(line: 158, column: 15, scope: !1104, inlinedAt: !2485)
!2496 = !DILocation(line: 158, column: 25, scope: !1104, inlinedAt: !2485)
!2497 = !DILocation(line: 158, column: 7, scope: !1104, inlinedAt: !2485)
!2498 = !DILocation(line: 159, column: 18, scope: !1104, inlinedAt: !2485)
!2499 = !DILocation(line: 159, column: 23, scope: !1104, inlinedAt: !2485)
!2500 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2485)
!2501 = !DILocation(line: 987, column: 10, scope: !2434, inlinedAt: !2478)
!2502 = !DILocation(line: 988, column: 1, scope: !2434, inlinedAt: !2478)
!2503 = !DILocation(line: 993, column: 3, scope: !2469)
!2504 = distinct !DISubprogram(name: "quotearg_colon", scope: !125, file: !125, line: 997, type: !2288, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2505)
!2505 = !{!2506}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !125, line: 997, type: !26)
!2507 = !DILocation(line: 997, column: 29, scope: !2504)
!2508 = !DILocation(line: 991, column: 28, scope: !2469, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 999, column: 10, scope: !2504)
!2510 = !DILocation(line: 991, column: 38, scope: !2469, inlinedAt: !2509)
!2511 = !DILocation(line: 982, column: 32, scope: !2434, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 993, column: 10, scope: !2469, inlinedAt: !2509)
!2513 = !DILocation(line: 982, column: 44, scope: !2434, inlinedAt: !2512)
!2514 = !DILocation(line: 982, column: 58, scope: !2434, inlinedAt: !2512)
!2515 = !DILocation(line: 984, column: 3, scope: !2434, inlinedAt: !2512)
!2516 = !DILocation(line: 985, column: 13, scope: !2434, inlinedAt: !2512)
!2517 = !DILocation(line: 984, column: 26, scope: !2434, inlinedAt: !2512)
!2518 = !DILocation(line: 152, column: 43, scope: !1104, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 986, column: 3, scope: !2434, inlinedAt: !2512)
!2520 = !DILocation(line: 152, column: 51, scope: !1104, inlinedAt: !2519)
!2521 = !DILocation(line: 152, column: 58, scope: !1104, inlinedAt: !2519)
!2522 = !DILocation(line: 154, column: 17, scope: !1104, inlinedAt: !2519)
!2523 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2519)
!2524 = !DILocation(line: 155, column: 17, scope: !1104, inlinedAt: !2519)
!2525 = !DILocation(line: 157, column: 7, scope: !1104, inlinedAt: !2519)
!2526 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2519)
!2527 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2519)
!2528 = !DILocation(line: 987, column: 10, scope: !2434, inlinedAt: !2512)
!2529 = !DILocation(line: 988, column: 1, scope: !2434, inlinedAt: !2512)
!2530 = !DILocation(line: 999, column: 3, scope: !2504)
!2531 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !125, file: !125, line: 1003, type: !2299, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2532)
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !125, line: 1003, type: !26)
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !125, line: 1003, type: !30)
!2535 = !DILocation(line: 1003, column: 33, scope: !2531)
!2536 = !DILocation(line: 1003, column: 45, scope: !2531)
!2537 = !DILocation(line: 982, column: 32, scope: !2434, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1005, column: 10, scope: !2531)
!2539 = !DILocation(line: 982, column: 44, scope: !2434, inlinedAt: !2538)
!2540 = !DILocation(line: 982, column: 58, scope: !2434, inlinedAt: !2538)
!2541 = !DILocation(line: 984, column: 3, scope: !2434, inlinedAt: !2538)
!2542 = !DILocation(line: 985, column: 13, scope: !2434, inlinedAt: !2538)
!2543 = !DILocation(line: 984, column: 26, scope: !2434, inlinedAt: !2538)
!2544 = !DILocation(line: 152, column: 43, scope: !1104, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 986, column: 3, scope: !2434, inlinedAt: !2538)
!2546 = !DILocation(line: 152, column: 51, scope: !1104, inlinedAt: !2545)
!2547 = !DILocation(line: 152, column: 58, scope: !1104, inlinedAt: !2545)
!2548 = !DILocation(line: 154, column: 17, scope: !1104, inlinedAt: !2545)
!2549 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2545)
!2550 = !DILocation(line: 155, column: 17, scope: !1104, inlinedAt: !2545)
!2551 = !DILocation(line: 157, column: 7, scope: !1104, inlinedAt: !2545)
!2552 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2545)
!2553 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2545)
!2554 = !DILocation(line: 987, column: 10, scope: !2434, inlinedAt: !2538)
!2555 = !DILocation(line: 988, column: 1, scope: !2434, inlinedAt: !2538)
!2556 = !DILocation(line: 1005, column: 3, scope: !2531)
!2557 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !125, file: !125, line: 1009, type: !2313, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !125, line: 1009, type: !44)
!2560 = !DILocalVariable(name: "s", arg: 2, scope: !2557, file: !125, line: 1009, type: !11)
!2561 = !DILocalVariable(name: "arg", arg: 3, scope: !2557, file: !125, line: 1009, type: !26)
!2562 = !DILocalVariable(name: "options", scope: !2557, file: !125, line: 1011, type: !132)
!2563 = !DILocation(line: 195, column: 26, scope: !2326, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1012, column: 13, scope: !2557)
!2565 = !DILocation(line: 1009, column: 29, scope: !2557)
!2566 = !DILocation(line: 1009, column: 51, scope: !2557)
!2567 = !DILocation(line: 1009, column: 66, scope: !2557)
!2568 = !DILocation(line: 1011, column: 3, scope: !2557)
!2569 = !DILocation(line: 1012, column: 13, scope: !2557)
!2570 = !DILocation(line: 193, column: 48, scope: !2326, inlinedAt: !2564)
!2571 = !{!2572}
!2572 = distinct !{!2572, !2573, !"quoting_options_from_style: argument 0"}
!2573 = distinct !{!2573, !"quoting_options_from_style"}
!2574 = !DILocation(line: 196, column: 13, scope: !2338, inlinedAt: !2564)
!2575 = !DILocation(line: 196, column: 7, scope: !2326, inlinedAt: !2564)
!2576 = !DILocation(line: 197, column: 5, scope: !2338, inlinedAt: !2564)
!2577 = !DILocation(line: 1011, column: 26, scope: !2557)
!2578 = !DILocation(line: 152, column: 43, scope: !1104, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1013, column: 3, scope: !2557)
!2580 = !DILocation(line: 152, column: 51, scope: !1104, inlinedAt: !2579)
!2581 = !DILocation(line: 152, column: 58, scope: !1104, inlinedAt: !2579)
!2582 = !DILocation(line: 154, column: 17, scope: !1104, inlinedAt: !2579)
!2583 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2579)
!2584 = !DILocation(line: 155, column: 17, scope: !1104, inlinedAt: !2579)
!2585 = !DILocation(line: 157, column: 7, scope: !1104, inlinedAt: !2579)
!2586 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2579)
!2587 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2579)
!2588 = !DILocation(line: 1014, column: 10, scope: !2557)
!2589 = !DILocation(line: 1015, column: 1, scope: !2557)
!2590 = !DILocation(line: 1014, column: 3, scope: !2557)
!2591 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !125, file: !125, line: 1018, type: !2592, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!34, !44, !26, !26, !26}
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !125, line: 1018, type: !44)
!2596 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2591, file: !125, line: 1018, type: !26)
!2597 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2591, file: !125, line: 1019, type: !26)
!2598 = !DILocalVariable(name: "arg", arg: 4, scope: !2591, file: !125, line: 1019, type: !26)
!2599 = !DILocation(line: 1018, column: 24, scope: !2591)
!2600 = !DILocation(line: 1018, column: 39, scope: !2591)
!2601 = !DILocation(line: 1019, column: 32, scope: !2591)
!2602 = !DILocation(line: 1019, column: 57, scope: !2591)
!2603 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !125, line: 1026, type: !44)
!2604 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !125, file: !125, line: 1026, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!34, !44, !26, !26, !26, !30}
!2607 = !{!2603, !2608, !2609, !2610, !2611, !2612}
!2608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !125, line: 1026, type: !26)
!2609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !125, line: 1027, type: !26)
!2610 = !DILocalVariable(name: "arg", arg: 4, scope: !2604, file: !125, line: 1028, type: !26)
!2611 = !DILocalVariable(name: "argsize", arg: 5, scope: !2604, file: !125, line: 1028, type: !30)
!2612 = !DILocalVariable(name: "o", scope: !2604, file: !125, line: 1030, type: !132)
!2613 = !DILocation(line: 1026, column: 28, scope: !2604, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1021, column: 10, scope: !2591)
!2615 = !DILocation(line: 1026, column: 43, scope: !2604, inlinedAt: !2614)
!2616 = !DILocation(line: 1027, column: 36, scope: !2604, inlinedAt: !2614)
!2617 = !DILocation(line: 1028, column: 36, scope: !2604, inlinedAt: !2614)
!2618 = !DILocation(line: 1028, column: 48, scope: !2604, inlinedAt: !2614)
!2619 = !DILocation(line: 1030, column: 3, scope: !2604, inlinedAt: !2614)
!2620 = !DILocation(line: 1030, column: 30, scope: !2604, inlinedAt: !2614)
!2621 = !DILocation(line: 1030, column: 26, scope: !2604, inlinedAt: !2614)
!2622 = !DILocation(line: 179, column: 45, scope: !1152, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1031, column: 3, scope: !2604, inlinedAt: !2614)
!2624 = !DILocation(line: 180, column: 33, scope: !1152, inlinedAt: !2623)
!2625 = !DILocation(line: 180, column: 57, scope: !1152, inlinedAt: !2623)
!2626 = !DILocation(line: 184, column: 6, scope: !1152, inlinedAt: !2623)
!2627 = !DILocation(line: 184, column: 12, scope: !1152, inlinedAt: !2623)
!2628 = !DILocation(line: 185, column: 8, scope: !1168, inlinedAt: !2623)
!2629 = !DILocation(line: 185, column: 23, scope: !1168, inlinedAt: !2623)
!2630 = !DILocation(line: 185, column: 19, scope: !1168, inlinedAt: !2623)
!2631 = !DILocation(line: 186, column: 5, scope: !1168, inlinedAt: !2623)
!2632 = !DILocation(line: 187, column: 6, scope: !1152, inlinedAt: !2623)
!2633 = !DILocation(line: 187, column: 17, scope: !1152, inlinedAt: !2623)
!2634 = !DILocation(line: 188, column: 6, scope: !1152, inlinedAt: !2623)
!2635 = !DILocation(line: 188, column: 18, scope: !1152, inlinedAt: !2623)
!2636 = !DILocation(line: 1032, column: 10, scope: !2604, inlinedAt: !2614)
!2637 = !DILocation(line: 1033, column: 1, scope: !2604, inlinedAt: !2614)
!2638 = !DILocation(line: 1021, column: 3, scope: !2591)
!2639 = !DILocation(line: 1026, column: 28, scope: !2604)
!2640 = !DILocation(line: 1026, column: 43, scope: !2604)
!2641 = !DILocation(line: 1027, column: 36, scope: !2604)
!2642 = !DILocation(line: 1028, column: 36, scope: !2604)
!2643 = !DILocation(line: 1028, column: 48, scope: !2604)
!2644 = !DILocation(line: 1030, column: 3, scope: !2604)
!2645 = !DILocation(line: 1030, column: 30, scope: !2604)
!2646 = !DILocation(line: 1030, column: 26, scope: !2604)
!2647 = !DILocation(line: 179, column: 45, scope: !1152, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1031, column: 3, scope: !2604)
!2649 = !DILocation(line: 180, column: 33, scope: !1152, inlinedAt: !2648)
!2650 = !DILocation(line: 180, column: 57, scope: !1152, inlinedAt: !2648)
!2651 = !DILocation(line: 184, column: 6, scope: !1152, inlinedAt: !2648)
!2652 = !DILocation(line: 184, column: 12, scope: !1152, inlinedAt: !2648)
!2653 = !DILocation(line: 185, column: 8, scope: !1168, inlinedAt: !2648)
!2654 = !DILocation(line: 185, column: 23, scope: !1168, inlinedAt: !2648)
!2655 = !DILocation(line: 185, column: 19, scope: !1168, inlinedAt: !2648)
!2656 = !DILocation(line: 186, column: 5, scope: !1168, inlinedAt: !2648)
!2657 = !DILocation(line: 187, column: 6, scope: !1152, inlinedAt: !2648)
!2658 = !DILocation(line: 187, column: 17, scope: !1152, inlinedAt: !2648)
!2659 = !DILocation(line: 188, column: 6, scope: !1152, inlinedAt: !2648)
!2660 = !DILocation(line: 188, column: 18, scope: !1152, inlinedAt: !2648)
!2661 = !DILocation(line: 1032, column: 10, scope: !2604)
!2662 = !DILocation(line: 1033, column: 1, scope: !2604)
!2663 = !DILocation(line: 1032, column: 3, scope: !2604)
!2664 = distinct !DISubprogram(name: "quotearg_custom", scope: !125, file: !125, line: 1036, type: !2665, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!34, !26, !26, !26}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2664, file: !125, line: 1036, type: !26)
!2669 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2664, file: !125, line: 1036, type: !26)
!2670 = !DILocalVariable(name: "arg", arg: 3, scope: !2664, file: !125, line: 1037, type: !26)
!2671 = !DILocation(line: 1036, column: 30, scope: !2664)
!2672 = !DILocation(line: 1036, column: 54, scope: !2664)
!2673 = !DILocation(line: 1037, column: 30, scope: !2664)
!2674 = !DILocation(line: 1018, column: 24, scope: !2591, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1039, column: 10, scope: !2664)
!2676 = !DILocation(line: 1018, column: 39, scope: !2591, inlinedAt: !2675)
!2677 = !DILocation(line: 1019, column: 32, scope: !2591, inlinedAt: !2675)
!2678 = !DILocation(line: 1019, column: 57, scope: !2591, inlinedAt: !2675)
!2679 = !DILocation(line: 1026, column: 28, scope: !2604, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1021, column: 10, scope: !2591, inlinedAt: !2675)
!2681 = !DILocation(line: 1026, column: 43, scope: !2604, inlinedAt: !2680)
!2682 = !DILocation(line: 1027, column: 36, scope: !2604, inlinedAt: !2680)
!2683 = !DILocation(line: 1028, column: 36, scope: !2604, inlinedAt: !2680)
!2684 = !DILocation(line: 1028, column: 48, scope: !2604, inlinedAt: !2680)
!2685 = !DILocation(line: 1030, column: 3, scope: !2604, inlinedAt: !2680)
!2686 = !DILocation(line: 1030, column: 30, scope: !2604, inlinedAt: !2680)
!2687 = !DILocation(line: 1030, column: 26, scope: !2604, inlinedAt: !2680)
!2688 = !DILocation(line: 179, column: 45, scope: !1152, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1031, column: 3, scope: !2604, inlinedAt: !2680)
!2690 = !DILocation(line: 180, column: 33, scope: !1152, inlinedAt: !2689)
!2691 = !DILocation(line: 180, column: 57, scope: !1152, inlinedAt: !2689)
!2692 = !DILocation(line: 184, column: 6, scope: !1152, inlinedAt: !2689)
!2693 = !DILocation(line: 184, column: 12, scope: !1152, inlinedAt: !2689)
!2694 = !DILocation(line: 185, column: 8, scope: !1168, inlinedAt: !2689)
!2695 = !DILocation(line: 185, column: 23, scope: !1168, inlinedAt: !2689)
!2696 = !DILocation(line: 185, column: 19, scope: !1168, inlinedAt: !2689)
!2697 = !DILocation(line: 186, column: 5, scope: !1168, inlinedAt: !2689)
!2698 = !DILocation(line: 187, column: 6, scope: !1152, inlinedAt: !2689)
!2699 = !DILocation(line: 187, column: 17, scope: !1152, inlinedAt: !2689)
!2700 = !DILocation(line: 188, column: 6, scope: !1152, inlinedAt: !2689)
!2701 = !DILocation(line: 188, column: 18, scope: !1152, inlinedAt: !2689)
!2702 = !DILocation(line: 1032, column: 10, scope: !2604, inlinedAt: !2680)
!2703 = !DILocation(line: 1033, column: 1, scope: !2604, inlinedAt: !2680)
!2704 = !DILocation(line: 1039, column: 3, scope: !2664)
!2705 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !125, file: !125, line: 1043, type: !2706, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!34, !26, !26, !26, !30}
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2705, file: !125, line: 1043, type: !26)
!2710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2705, file: !125, line: 1043, type: !26)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2705, file: !125, line: 1044, type: !26)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2705, file: !125, line: 1044, type: !30)
!2713 = !DILocation(line: 1043, column: 34, scope: !2705)
!2714 = !DILocation(line: 1043, column: 58, scope: !2705)
!2715 = !DILocation(line: 1044, column: 34, scope: !2705)
!2716 = !DILocation(line: 1044, column: 46, scope: !2705)
!2717 = !DILocation(line: 1026, column: 28, scope: !2604, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1046, column: 10, scope: !2705)
!2719 = !DILocation(line: 1026, column: 43, scope: !2604, inlinedAt: !2718)
!2720 = !DILocation(line: 1027, column: 36, scope: !2604, inlinedAt: !2718)
!2721 = !DILocation(line: 1028, column: 36, scope: !2604, inlinedAt: !2718)
!2722 = !DILocation(line: 1028, column: 48, scope: !2604, inlinedAt: !2718)
!2723 = !DILocation(line: 1030, column: 3, scope: !2604, inlinedAt: !2718)
!2724 = !DILocation(line: 1030, column: 30, scope: !2604, inlinedAt: !2718)
!2725 = !DILocation(line: 1030, column: 26, scope: !2604, inlinedAt: !2718)
!2726 = !DILocation(line: 179, column: 45, scope: !1152, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1031, column: 3, scope: !2604, inlinedAt: !2718)
!2728 = !DILocation(line: 180, column: 33, scope: !1152, inlinedAt: !2727)
!2729 = !DILocation(line: 180, column: 57, scope: !1152, inlinedAt: !2727)
!2730 = !DILocation(line: 184, column: 6, scope: !1152, inlinedAt: !2727)
!2731 = !DILocation(line: 184, column: 12, scope: !1152, inlinedAt: !2727)
!2732 = !DILocation(line: 185, column: 8, scope: !1168, inlinedAt: !2727)
!2733 = !DILocation(line: 185, column: 23, scope: !1168, inlinedAt: !2727)
!2734 = !DILocation(line: 185, column: 19, scope: !1168, inlinedAt: !2727)
!2735 = !DILocation(line: 186, column: 5, scope: !1168, inlinedAt: !2727)
!2736 = !DILocation(line: 187, column: 6, scope: !1152, inlinedAt: !2727)
!2737 = !DILocation(line: 187, column: 17, scope: !1152, inlinedAt: !2727)
!2738 = !DILocation(line: 188, column: 6, scope: !1152, inlinedAt: !2727)
!2739 = !DILocation(line: 188, column: 18, scope: !1152, inlinedAt: !2727)
!2740 = !DILocation(line: 1032, column: 10, scope: !2604, inlinedAt: !2718)
!2741 = !DILocation(line: 1033, column: 1, scope: !2604, inlinedAt: !2718)
!2742 = !DILocation(line: 1046, column: 3, scope: !2705)
!2743 = distinct !DISubprogram(name: "quote_n_mem", scope: !125, file: !125, line: 1061, type: !2744, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!26, !44, !26, !30}
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !125, line: 1061, type: !44)
!2748 = !DILocalVariable(name: "arg", arg: 2, scope: !2743, file: !125, line: 1061, type: !26)
!2749 = !DILocalVariable(name: "argsize", arg: 3, scope: !2743, file: !125, line: 1061, type: !30)
!2750 = !DILocation(line: 1061, column: 18, scope: !2743)
!2751 = !DILocation(line: 1061, column: 33, scope: !2743)
!2752 = !DILocation(line: 1061, column: 45, scope: !2743)
!2753 = !DILocation(line: 1063, column: 10, scope: !2743)
!2754 = !DILocation(line: 1063, column: 3, scope: !2743)
!2755 = distinct !DISubprogram(name: "quote_mem", scope: !125, file: !125, line: 1067, type: !2756, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!26, !26, !30}
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !125, line: 1067, type: !26)
!2760 = !DILocalVariable(name: "argsize", arg: 2, scope: !2755, file: !125, line: 1067, type: !30)
!2761 = !DILocation(line: 1067, column: 24, scope: !2755)
!2762 = !DILocation(line: 1067, column: 36, scope: !2755)
!2763 = !DILocation(line: 1061, column: 18, scope: !2743, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1069, column: 10, scope: !2755)
!2765 = !DILocation(line: 1061, column: 33, scope: !2743, inlinedAt: !2764)
!2766 = !DILocation(line: 1061, column: 45, scope: !2743, inlinedAt: !2764)
!2767 = !DILocation(line: 1063, column: 10, scope: !2743, inlinedAt: !2764)
!2768 = !DILocation(line: 1069, column: 3, scope: !2755)
!2769 = distinct !DISubprogram(name: "quote_n", scope: !125, file: !125, line: 1073, type: !2770, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!26, !44, !26}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !125, line: 1073, type: !44)
!2774 = !DILocalVariable(name: "arg", arg: 2, scope: !2769, file: !125, line: 1073, type: !26)
!2775 = !DILocation(line: 1073, column: 14, scope: !2769)
!2776 = !DILocation(line: 1073, column: 29, scope: !2769)
!2777 = !DILocation(line: 1061, column: 18, scope: !2743, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1075, column: 10, scope: !2769)
!2779 = !DILocation(line: 1061, column: 33, scope: !2743, inlinedAt: !2778)
!2780 = !DILocation(line: 1061, column: 45, scope: !2743, inlinedAt: !2778)
!2781 = !DILocation(line: 1063, column: 10, scope: !2743, inlinedAt: !2778)
!2782 = !DILocation(line: 1075, column: 3, scope: !2769)
!2783 = distinct !DISubprogram(name: "quote", scope: !125, file: !125, line: 1079, type: !2784, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!26, !26}
!2786 = !{!2787}
!2787 = !DILocalVariable(name: "arg", arg: 1, scope: !2783, file: !125, line: 1079, type: !26)
!2788 = !DILocation(line: 1079, column: 20, scope: !2783)
!2789 = !DILocation(line: 1073, column: 14, scope: !2769, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1081, column: 10, scope: !2783)
!2791 = !DILocation(line: 1073, column: 29, scope: !2769, inlinedAt: !2790)
!2792 = !DILocation(line: 1061, column: 18, scope: !2743, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1075, column: 10, scope: !2769, inlinedAt: !2790)
!2794 = !DILocation(line: 1061, column: 33, scope: !2743, inlinedAt: !2793)
!2795 = !DILocation(line: 1061, column: 45, scope: !2743, inlinedAt: !2793)
!2796 = !DILocation(line: 1063, column: 10, scope: !2743, inlinedAt: !2793)
!2797 = !DILocation(line: 1081, column: 3, scope: !2783)
!2798 = distinct !DISubprogram(name: "version_etc_arn", scope: !177, file: !177, line: 62, type: !2799, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2851)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801, !26, !26, !26, !2850, !30}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !2804)
!2803 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2805, line: 49, size: 1728, elements: !2806)
!2805 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2822, !2824, !2825, !2826, !2829, !2830, !2832, !2834, !2837, !2839, !2842, !2845, !2846, !2847, !2848, !2849}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2804, file: !2805, line: 51, baseType: !44, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2804, file: !2805, line: 54, baseType: !34, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2804, file: !2805, line: 55, baseType: !34, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2804, file: !2805, line: 56, baseType: !34, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2804, file: !2805, line: 57, baseType: !34, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2804, file: !2805, line: 58, baseType: !34, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2804, file: !2805, line: 59, baseType: !34, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2804, file: !2805, line: 60, baseType: !34, size: 64, offset: 448)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2804, file: !2805, line: 61, baseType: !34, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2804, file: !2805, line: 64, baseType: !34, size: 64, offset: 576)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2804, file: !2805, line: 65, baseType: !34, size: 64, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2804, file: !2805, line: 66, baseType: !34, size: 64, offset: 704)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2804, file: !2805, line: 68, baseType: !2820, size: 64, offset: 768)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2805, line: 36, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2804, file: !2805, line: 70, baseType: !2823, size: 64, offset: 832)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2804, file: !2805, line: 72, baseType: !44, size: 32, offset: 896)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2804, file: !2805, line: 73, baseType: !44, size: 32, offset: 928)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2804, file: !2805, line: 74, baseType: !2827, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !754, line: 150, baseType: !2828)
!2828 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2804, file: !2805, line: 77, baseType: !121, size: 16, offset: 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2804, file: !2805, line: 78, baseType: !2831, size: 8, offset: 1040)
!2831 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2804, file: !2805, line: 79, baseType: !2833, size: 8, offset: 1048)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !48)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2804, file: !2805, line: 81, baseType: !2835, size: 64, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2805, line: 43, baseType: null)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2804, file: !2805, line: 89, baseType: !2838, size: 64, offset: 1152)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !754, line: 151, baseType: !2828)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2804, file: !2805, line: 91, baseType: !2840, size: 64, offset: 1216)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2805, line: 37, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2804, file: !2805, line: 92, baseType: !2843, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2805, line: 38, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2804, file: !2805, line: 93, baseType: !2823, size: 64, offset: 1344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2804, file: !2805, line: 94, baseType: !29, size: 64, offset: 1408)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2804, file: !2805, line: 95, baseType: !30, size: 64, offset: 1472)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2804, file: !2805, line: 96, baseType: !44, size: 32, offset: 1536)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2804, file: !2805, line: 98, baseType: !780, size: 160, offset: 1568)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857}
!2852 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !177, line: 62, type: !2801)
!2853 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !177, line: 63, type: !26)
!2854 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !177, line: 63, type: !26)
!2855 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !177, line: 64, type: !26)
!2856 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !177, line: 65, type: !2850)
!2857 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2798, file: !177, line: 65, type: !30)
!2858 = !DILocation(line: 62, column: 24, scope: !2798)
!2859 = !DILocation(line: 63, column: 30, scope: !2798)
!2860 = !DILocation(line: 63, column: 56, scope: !2798)
!2861 = !DILocation(line: 64, column: 30, scope: !2798)
!2862 = !DILocation(line: 65, column: 39, scope: !2798)
!2863 = !DILocation(line: 65, column: 55, scope: !2798)
!2864 = !DILocation(line: 67, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2798, file: !177, line: 67, column: 7)
!2866 = !DILocation(line: 67, column: 7, scope: !2798)
!2867 = !DILocation(line: 68, column: 5, scope: !2865)
!2868 = !DILocation(line: 70, column: 5, scope: !2865)
!2869 = !DILocation(line: 84, column: 3, scope: !2798)
!2870 = !DILocation(line: 86, column: 3, scope: !2798)
!2871 = !DILocation(line: 95, column: 3, scope: !2798)
!2872 = !DILocation(line: 99, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2798, file: !177, line: 96, column: 5)
!2874 = !DILocation(line: 102, column: 7, scope: !2873)
!2875 = !DILocation(line: 103, column: 7, scope: !2873)
!2876 = !DILocation(line: 106, column: 7, scope: !2873)
!2877 = !DILocation(line: 107, column: 7, scope: !2873)
!2878 = !DILocation(line: 110, column: 7, scope: !2873)
!2879 = !DILocation(line: 112, column: 7, scope: !2873)
!2880 = !DILocation(line: 117, column: 7, scope: !2873)
!2881 = !DILocation(line: 119, column: 7, scope: !2873)
!2882 = !DILocation(line: 124, column: 7, scope: !2873)
!2883 = !DILocation(line: 126, column: 7, scope: !2873)
!2884 = !DILocation(line: 131, column: 7, scope: !2873)
!2885 = !DILocation(line: 134, column: 7, scope: !2873)
!2886 = !DILocation(line: 139, column: 7, scope: !2873)
!2887 = !DILocation(line: 142, column: 7, scope: !2873)
!2888 = !DILocation(line: 147, column: 7, scope: !2873)
!2889 = !DILocation(line: 151, column: 7, scope: !2873)
!2890 = !DILocation(line: 156, column: 7, scope: !2873)
!2891 = !DILocation(line: 160, column: 7, scope: !2873)
!2892 = !DILocation(line: 167, column: 7, scope: !2873)
!2893 = !DILocation(line: 171, column: 7, scope: !2873)
!2894 = !DILocation(line: 173, column: 1, scope: !2798)
!2895 = distinct !DISubprogram(name: "version_etc_ar", scope: !177, file: !177, line: 180, type: !2896, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2801, !26, !26, !26, !2850}
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904}
!2899 = !DILocalVariable(name: "stream", arg: 1, scope: !2895, file: !177, line: 180, type: !2801)
!2900 = !DILocalVariable(name: "command_name", arg: 2, scope: !2895, file: !177, line: 181, type: !26)
!2901 = !DILocalVariable(name: "package", arg: 3, scope: !2895, file: !177, line: 181, type: !26)
!2902 = !DILocalVariable(name: "version", arg: 4, scope: !2895, file: !177, line: 182, type: !26)
!2903 = !DILocalVariable(name: "authors", arg: 5, scope: !2895, file: !177, line: 182, type: !2850)
!2904 = !DILocalVariable(name: "n_authors", scope: !2895, file: !177, line: 184, type: !30)
!2905 = !DILocation(line: 180, column: 23, scope: !2895)
!2906 = !DILocation(line: 181, column: 29, scope: !2895)
!2907 = !DILocation(line: 181, column: 55, scope: !2895)
!2908 = !DILocation(line: 182, column: 29, scope: !2895)
!2909 = !DILocation(line: 182, column: 59, scope: !2895)
!2910 = !DILocation(line: 184, column: 10, scope: !2895)
!2911 = !DILocation(line: 186, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2895, file: !177, line: 186, column: 3)
!2913 = !DILocation(line: 0, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2912, file: !177, line: 186, column: 3)
!2915 = !DILocation(line: 186, column: 23, scope: !2914)
!2916 = !DILocation(line: 186, column: 3, scope: !2912)
!2917 = !DILocation(line: 186, column: 52, scope: !2914)
!2918 = distinct !{!2918, !2916, !2919}
!2919 = !DILocation(line: 187, column: 5, scope: !2912)
!2920 = !DILocation(line: 188, column: 3, scope: !2895)
!2921 = !DILocation(line: 189, column: 1, scope: !2895)
!2922 = distinct !DISubprogram(name: "version_etc_va", scope: !177, file: !177, line: 196, type: !2923, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2932)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2801, !26, !26, !26, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !174, line: 189, size: 192, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2926, file: !174, line: 189, baseType: !7, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2926, file: !174, line: 189, baseType: !7, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2926, file: !174, line: 189, baseType: !29, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2926, file: !174, line: 189, baseType: !29, size: 64, offset: 128)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2933 = !DILocalVariable(name: "stream", arg: 1, scope: !2922, file: !177, line: 196, type: !2801)
!2934 = !DILocalVariable(name: "command_name", arg: 2, scope: !2922, file: !177, line: 197, type: !26)
!2935 = !DILocalVariable(name: "package", arg: 3, scope: !2922, file: !177, line: 197, type: !26)
!2936 = !DILocalVariable(name: "version", arg: 4, scope: !2922, file: !177, line: 198, type: !26)
!2937 = !DILocalVariable(name: "authors", arg: 5, scope: !2922, file: !177, line: 198, type: !2925)
!2938 = !DILocalVariable(name: "n_authors", scope: !2922, file: !177, line: 200, type: !30)
!2939 = !DILocalVariable(name: "authtab", scope: !2922, file: !177, line: 201, type: !2940)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 640, elements: !128)
!2941 = !DILocation(line: 196, column: 23, scope: !2922)
!2942 = !DILocation(line: 197, column: 29, scope: !2922)
!2943 = !DILocation(line: 197, column: 55, scope: !2922)
!2944 = !DILocation(line: 198, column: 29, scope: !2922)
!2945 = !DILocation(line: 198, column: 46, scope: !2922)
!2946 = !DILocation(line: 201, column: 3, scope: !2922)
!2947 = !DILocation(line: 201, column: 15, scope: !2922)
!2948 = !DILocation(line: 200, column: 10, scope: !2922)
!2949 = !DILocation(line: 205, column: 35, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !177, line: 203, column: 3)
!2951 = distinct !DILexicalBlock(scope: !2922, file: !177, line: 203, column: 3)
!2952 = !DILocation(line: 205, column: 14, scope: !2950)
!2953 = !DILocation(line: 205, column: 33, scope: !2950)
!2954 = !DILocation(line: 205, column: 67, scope: !2950)
!2955 = !DILocation(line: 203, column: 3, scope: !2951)
!2956 = !DILocation(line: 0, scope: !2950)
!2957 = !DILocation(line: 208, column: 3, scope: !2922)
!2958 = !DILocation(line: 210, column: 1, scope: !2922)
!2959 = distinct !DISubprogram(name: "version_etc", scope: !177, file: !177, line: 227, type: !2960, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2801, !26, !26, !26, null}
!2962 = !{!2963, !2964, !2965, !2966, !2967}
!2963 = !DILocalVariable(name: "stream", arg: 1, scope: !2959, file: !177, line: 227, type: !2801)
!2964 = !DILocalVariable(name: "command_name", arg: 2, scope: !2959, file: !177, line: 228, type: !26)
!2965 = !DILocalVariable(name: "package", arg: 3, scope: !2959, file: !177, line: 228, type: !26)
!2966 = !DILocalVariable(name: "version", arg: 4, scope: !2959, file: !177, line: 229, type: !26)
!2967 = !DILocalVariable(name: "authors", scope: !2959, file: !177, line: 231, type: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !988, line: 52, baseType: !2969)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !990, line: 48, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !174, line: 231, baseType: !2971)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 192, elements: !48)
!2972 = !DILocation(line: 227, column: 20, scope: !2959)
!2973 = !DILocation(line: 228, column: 26, scope: !2959)
!2974 = !DILocation(line: 228, column: 52, scope: !2959)
!2975 = !DILocation(line: 229, column: 26, scope: !2959)
!2976 = !DILocation(line: 231, column: 3, scope: !2959)
!2977 = !DILocation(line: 231, column: 11, scope: !2959)
!2978 = !DILocation(line: 233, column: 3, scope: !2959)
!2979 = !DILocation(line: 234, column: 3, scope: !2959)
!2980 = !DILocation(line: 235, column: 3, scope: !2959)
!2981 = !DILocation(line: 236, column: 1, scope: !2959)
!2982 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !177, file: !177, line: 239, type: !934, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !54)
!2983 = !DILocation(line: 245, column: 3, scope: !2982)
!2984 = !DILocation(line: 251, column: 3, scope: !2982)
!2985 = !DILocation(line: 256, column: 3, scope: !2982)
!2986 = !DILocation(line: 258, column: 1, scope: !2982)
!2987 = distinct !DISubprogram(name: "xnmalloc", scope: !185, file: !185, line: 99, type: !820, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !2988)
!2988 = !{!2989, !2990}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !185, line: 99, type: !30)
!2990 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !185, line: 99, type: !30)
!2991 = !DILocation(line: 99, column: 18, scope: !2987)
!2992 = !DILocation(line: 99, column: 28, scope: !2987)
!2993 = !DILocation(line: 101, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2987, file: !185, line: 101, column: 7)
!2995 = !DILocation(line: 101, column: 7, scope: !2987)
!2996 = !DILocation(line: 102, column: 5, scope: !2994)
!2997 = !DILocation(line: 103, column: 21, scope: !2987)
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2999, file: !3000, line: 39, type: !30)
!2999 = distinct !DISubprogram(name: "xmalloc", scope: !3000, file: !3000, line: 39, type: !3001, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3003)
!3000 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!29, !30}
!3003 = !{!2998, !3004}
!3004 = !DILocalVariable(name: "p", scope: !2999, file: !3000, line: 41, type: !29)
!3005 = !DILocation(line: 39, column: 17, scope: !2999, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 103, column: 10, scope: !2987)
!3007 = !DILocation(line: 41, column: 13, scope: !2999, inlinedAt: !3006)
!3008 = !DILocation(line: 41, column: 9, scope: !2999, inlinedAt: !3006)
!3009 = !DILocation(line: 42, column: 8, scope: !3010, inlinedAt: !3006)
!3010 = distinct !DILexicalBlock(scope: !2999, file: !3000, line: 42, column: 7)
!3011 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3006)
!3012 = !DILocation(line: 42, column: 10, scope: !3010, inlinedAt: !3006)
!3013 = !DILocation(line: 43, column: 5, scope: !3010, inlinedAt: !3006)
!3014 = !DILocation(line: 103, column: 3, scope: !2987)
!3015 = !DILocation(line: 39, column: 17, scope: !2999)
!3016 = !DILocation(line: 41, column: 13, scope: !2999)
!3017 = !DILocation(line: 41, column: 9, scope: !2999)
!3018 = !DILocation(line: 42, column: 8, scope: !3010)
!3019 = !DILocation(line: 42, column: 15, scope: !3010)
!3020 = !DILocation(line: 42, column: 10, scope: !3010)
!3021 = !DILocation(line: 43, column: 5, scope: !3010)
!3022 = !DILocation(line: 44, column: 3, scope: !2999)
!3023 = distinct !DISubprogram(name: "xnrealloc", scope: !185, file: !185, line: 112, type: !3024, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!29, !29, !30, !30}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "p", arg: 1, scope: !3023, file: !185, line: 112, type: !29)
!3028 = !DILocalVariable(name: "n", arg: 2, scope: !3023, file: !185, line: 112, type: !30)
!3029 = !DILocalVariable(name: "s", arg: 3, scope: !3023, file: !185, line: 112, type: !30)
!3030 = !DILocation(line: 112, column: 18, scope: !3023)
!3031 = !DILocation(line: 112, column: 28, scope: !3023)
!3032 = !DILocation(line: 112, column: 38, scope: !3023)
!3033 = !DILocation(line: 114, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3023, file: !185, line: 114, column: 7)
!3035 = !DILocation(line: 114, column: 7, scope: !3023)
!3036 = !DILocation(line: 115, column: 5, scope: !3034)
!3037 = !DILocation(line: 116, column: 25, scope: !3023)
!3038 = !DILocalVariable(name: "p", arg: 1, scope: !3039, file: !3000, line: 51, type: !29)
!3039 = distinct !DISubprogram(name: "xrealloc", scope: !3000, file: !3000, line: 51, type: !3040, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!29, !29, !30}
!3042 = !{!3038, !3043}
!3043 = !DILocalVariable(name: "n", arg: 2, scope: !3039, file: !3000, line: 51, type: !30)
!3044 = !DILocation(line: 51, column: 17, scope: !3039, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 116, column: 10, scope: !3023)
!3046 = !DILocation(line: 51, column: 27, scope: !3039, inlinedAt: !3045)
!3047 = !DILocation(line: 53, column: 8, scope: !3048, inlinedAt: !3045)
!3048 = distinct !DILexicalBlock(scope: !3039, file: !3000, line: 53, column: 7)
!3049 = !DILocation(line: 53, column: 13, scope: !3048, inlinedAt: !3045)
!3050 = !DILocation(line: 53, column: 10, scope: !3048, inlinedAt: !3045)
!3051 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3045)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !3000, line: 54, column: 5)
!3053 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3045)
!3054 = !DILocation(line: 61, column: 7, scope: !3039, inlinedAt: !3045)
!3055 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3045)
!3056 = distinct !DILexicalBlock(scope: !3039, file: !3000, line: 62, column: 7)
!3057 = !DILocation(line: 62, column: 13, scope: !3056, inlinedAt: !3045)
!3058 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3045)
!3059 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3045)
!3060 = !DILocation(line: 0, scope: !3039, inlinedAt: !3045)
!3061 = !DILocation(line: 116, column: 3, scope: !3023)
!3062 = !DILocation(line: 51, column: 17, scope: !3039)
!3063 = !DILocation(line: 51, column: 27, scope: !3039)
!3064 = !DILocation(line: 53, column: 8, scope: !3048)
!3065 = !DILocation(line: 53, column: 13, scope: !3048)
!3066 = !DILocation(line: 53, column: 10, scope: !3048)
!3067 = !DILocation(line: 57, column: 7, scope: !3052)
!3068 = !DILocation(line: 58, column: 7, scope: !3052)
!3069 = !DILocation(line: 61, column: 7, scope: !3039)
!3070 = !DILocation(line: 62, column: 8, scope: !3056)
!3071 = !DILocation(line: 62, column: 13, scope: !3056)
!3072 = !DILocation(line: 62, column: 10, scope: !3056)
!3073 = !DILocation(line: 63, column: 5, scope: !3056)
!3074 = !DILocation(line: 0, scope: !3039)
!3075 = !DILocation(line: 65, column: 1, scope: !3039)
!3076 = !DILocation(line: 174, column: 19, scope: !186)
!3077 = !DILocation(line: 174, column: 30, scope: !186)
!3078 = !DILocation(line: 174, column: 41, scope: !186)
!3079 = !DILocation(line: 176, column: 14, scope: !186)
!3080 = !DILocation(line: 176, column: 10, scope: !186)
!3081 = !DILocation(line: 178, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !186, file: !185, line: 178, column: 7)
!3083 = !DILocation(line: 178, column: 7, scope: !186)
!3084 = !DILocation(line: 180, column: 13, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !185, line: 180, column: 11)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !185, line: 179, column: 5)
!3087 = !DILocation(line: 180, column: 11, scope: !3086)
!3088 = !DILocation(line: 188, column: 30, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !185, line: 181, column: 9)
!3090 = !DILocation(line: 189, column: 16, scope: !3089)
!3091 = !DILocation(line: 189, column: 13, scope: !3089)
!3092 = !DILocation(line: 190, column: 9, scope: !3089)
!3093 = !DILocation(line: 0, scope: !3089)
!3094 = !DILocation(line: 191, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3086, file: !185, line: 191, column: 11)
!3096 = !DILocation(line: 191, column: 11, scope: !3086)
!3097 = !DILocation(line: 206, column: 7, scope: !186)
!3098 = !DILocation(line: 207, column: 25, scope: !186)
!3099 = !DILocation(line: 51, column: 17, scope: !3039, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 207, column: 10, scope: !186)
!3101 = !DILocation(line: 51, column: 27, scope: !3039, inlinedAt: !3100)
!3102 = !DILocation(line: 53, column: 10, scope: !3048, inlinedAt: !3100)
!3103 = !DILocation(line: 192, column: 9, scope: !3095)
!3104 = !DILocation(line: 200, column: 69, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !185, line: 200, column: 11)
!3106 = distinct !DILexicalBlock(scope: !3082, file: !185, line: 195, column: 5)
!3107 = !DILocation(line: 201, column: 11, scope: !3105)
!3108 = !DILocation(line: 200, column: 11, scope: !3106)
!3109 = !DILocation(line: 202, column: 9, scope: !3105)
!3110 = !DILocation(line: 203, column: 14, scope: !3106)
!3111 = !DILocation(line: 203, column: 18, scope: !3106)
!3112 = !DILocation(line: 203, column: 9, scope: !3106)
!3113 = !DILocation(line: 53, column: 8, scope: !3048, inlinedAt: !3100)
!3114 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3100)
!3115 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3100)
!3116 = !DILocation(line: 61, column: 7, scope: !3039, inlinedAt: !3100)
!3117 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3100)
!3118 = !DILocation(line: 62, column: 13, scope: !3056, inlinedAt: !3100)
!3119 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3100)
!3120 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3100)
!3121 = !DILocation(line: 0, scope: !3039, inlinedAt: !3100)
!3122 = !DILocation(line: 207, column: 3, scope: !186)
!3123 = distinct !DISubprogram(name: "xcharalloc", scope: !185, file: !185, line: 216, type: !2084, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3124)
!3124 = !{!3125}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !185, line: 216, type: !30)
!3126 = !DILocation(line: 216, column: 20, scope: !3123)
!3127 = !DILocation(line: 39, column: 17, scope: !2999, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 218, column: 10, scope: !3123)
!3129 = !DILocation(line: 41, column: 13, scope: !2999, inlinedAt: !3128)
!3130 = !DILocation(line: 41, column: 9, scope: !2999, inlinedAt: !3128)
!3131 = !DILocation(line: 42, column: 8, scope: !3010, inlinedAt: !3128)
!3132 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3128)
!3133 = !DILocation(line: 42, column: 10, scope: !3010, inlinedAt: !3128)
!3134 = !DILocation(line: 43, column: 5, scope: !3010, inlinedAt: !3128)
!3135 = !DILocation(line: 218, column: 3, scope: !3123)
!3136 = distinct !DISubprogram(name: "x2realloc", scope: !3000, file: !3000, line: 74, type: !3137, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!29, !29, !189}
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "p", arg: 1, scope: !3136, file: !3000, line: 74, type: !29)
!3141 = !DILocalVariable(name: "pn", arg: 2, scope: !3136, file: !3000, line: 74, type: !189)
!3142 = !DILocation(line: 74, column: 18, scope: !3136)
!3143 = !DILocation(line: 74, column: 29, scope: !3136)
!3144 = !DILocation(line: 174, column: 19, scope: !186, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 76, column: 10, scope: !3136)
!3146 = !DILocation(line: 174, column: 30, scope: !186, inlinedAt: !3145)
!3147 = !DILocation(line: 174, column: 41, scope: !186, inlinedAt: !3145)
!3148 = !DILocation(line: 176, column: 14, scope: !186, inlinedAt: !3145)
!3149 = !DILocation(line: 176, column: 10, scope: !186, inlinedAt: !3145)
!3150 = !DILocation(line: 178, column: 9, scope: !3082, inlinedAt: !3145)
!3151 = !DILocation(line: 178, column: 7, scope: !186, inlinedAt: !3145)
!3152 = !DILocation(line: 180, column: 13, scope: !3085, inlinedAt: !3145)
!3153 = !DILocation(line: 180, column: 11, scope: !3086, inlinedAt: !3145)
!3154 = !DILocation(line: 191, column: 11, scope: !3095, inlinedAt: !3145)
!3155 = !DILocation(line: 191, column: 11, scope: !3086, inlinedAt: !3145)
!3156 = !DILocation(line: 206, column: 7, scope: !186, inlinedAt: !3145)
!3157 = !DILocation(line: 51, column: 17, scope: !3039, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 207, column: 10, scope: !186, inlinedAt: !3145)
!3159 = !DILocation(line: 51, column: 27, scope: !3039, inlinedAt: !3158)
!3160 = !DILocation(line: 53, column: 10, scope: !3048, inlinedAt: !3158)
!3161 = !DILocation(line: 192, column: 9, scope: !3095, inlinedAt: !3145)
!3162 = !DILocation(line: 201, column: 11, scope: !3105, inlinedAt: !3145)
!3163 = !DILocation(line: 200, column: 11, scope: !3106, inlinedAt: !3145)
!3164 = !DILocation(line: 202, column: 9, scope: !3105, inlinedAt: !3145)
!3165 = !DILocation(line: 203, column: 14, scope: !3106, inlinedAt: !3145)
!3166 = !DILocation(line: 203, column: 18, scope: !3106, inlinedAt: !3145)
!3167 = !DILocation(line: 203, column: 9, scope: !3106, inlinedAt: !3145)
!3168 = !DILocation(line: 53, column: 8, scope: !3048, inlinedAt: !3158)
!3169 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3158)
!3170 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3158)
!3171 = !DILocation(line: 61, column: 7, scope: !3039, inlinedAt: !3158)
!3172 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3158)
!3173 = !DILocation(line: 62, column: 13, scope: !3056, inlinedAt: !3158)
!3174 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3158)
!3175 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3158)
!3176 = !DILocation(line: 0, scope: !3039, inlinedAt: !3158)
!3177 = !DILocation(line: 76, column: 3, scope: !3136)
!3178 = distinct !DISubprogram(name: "xzalloc", scope: !3000, file: !3000, line: 84, type: !3001, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3179)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "s", arg: 1, scope: !3178, file: !3000, line: 84, type: !30)
!3181 = !DILocation(line: 84, column: 17, scope: !3178)
!3182 = !DILocation(line: 39, column: 17, scope: !2999, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 86, column: 18, scope: !3178)
!3184 = !DILocation(line: 41, column: 13, scope: !2999, inlinedAt: !3183)
!3185 = !DILocation(line: 41, column: 9, scope: !2999, inlinedAt: !3183)
!3186 = !DILocation(line: 42, column: 8, scope: !3010, inlinedAt: !3183)
!3187 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3183)
!3188 = !DILocation(line: 42, column: 10, scope: !3010, inlinedAt: !3183)
!3189 = !DILocation(line: 43, column: 5, scope: !3010, inlinedAt: !3183)
!3190 = !DILocation(line: 86, column: 10, scope: !3178)
!3191 = !DILocation(line: 86, column: 3, scope: !3178)
!3192 = distinct !DISubprogram(name: "xcalloc", scope: !3000, file: !3000, line: 93, type: !820, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !3000, line: 93, type: !30)
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3192, file: !3000, line: 93, type: !30)
!3196 = !DILocalVariable(name: "p", scope: !3192, file: !3000, line: 95, type: !29)
!3197 = !DILocation(line: 93, column: 17, scope: !3192)
!3198 = !DILocation(line: 93, column: 27, scope: !3192)
!3199 = !DILocation(line: 100, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3192, file: !3000, line: 100, column: 7)
!3201 = !DILocation(line: 101, column: 7, scope: !3200)
!3202 = !DILocation(line: 101, column: 18, scope: !3200)
!3203 = !DILocation(line: 95, column: 9, scope: !3192)
!3204 = !DILocation(line: 101, column: 16, scope: !3200)
!3205 = !DILocation(line: 100, column: 7, scope: !3192)
!3206 = !DILocation(line: 102, column: 5, scope: !3200)
!3207 = !DILocation(line: 103, column: 3, scope: !3192)
!3208 = distinct !DISubprogram(name: "xmemdup", scope: !3000, file: !3000, line: 111, type: !3209, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!29, !900, !30}
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "p", arg: 1, scope: !3208, file: !3000, line: 111, type: !900)
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3208, file: !3000, line: 111, type: !30)
!3214 = !DILocation(line: 111, column: 22, scope: !3208)
!3215 = !DILocation(line: 111, column: 32, scope: !3208)
!3216 = !DILocation(line: 39, column: 17, scope: !2999, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 113, column: 18, scope: !3208)
!3218 = !DILocation(line: 41, column: 13, scope: !2999, inlinedAt: !3217)
!3219 = !DILocation(line: 41, column: 9, scope: !2999, inlinedAt: !3217)
!3220 = !DILocation(line: 42, column: 8, scope: !3010, inlinedAt: !3217)
!3221 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3217)
!3222 = !DILocation(line: 42, column: 10, scope: !3010, inlinedAt: !3217)
!3223 = !DILocation(line: 43, column: 5, scope: !3010, inlinedAt: !3217)
!3224 = !DILocation(line: 113, column: 10, scope: !3208)
!3225 = !DILocation(line: 113, column: 3, scope: !3208)
!3226 = distinct !DISubprogram(name: "xstrdup", scope: !3000, file: !3000, line: 119, type: !2288, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !181, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "string", arg: 1, scope: !3226, file: !3000, line: 119, type: !26)
!3229 = !DILocation(line: 119, column: 22, scope: !3226)
!3230 = !DILocation(line: 121, column: 27, scope: !3226)
!3231 = !DILocation(line: 121, column: 43, scope: !3226)
!3232 = !DILocation(line: 111, column: 22, scope: !3208, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 121, column: 10, scope: !3226)
!3234 = !DILocation(line: 111, column: 32, scope: !3208, inlinedAt: !3233)
!3235 = !DILocation(line: 39, column: 17, scope: !2999, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 113, column: 18, scope: !3208, inlinedAt: !3233)
!3237 = !DILocation(line: 41, column: 13, scope: !2999, inlinedAt: !3236)
!3238 = !DILocation(line: 41, column: 9, scope: !2999, inlinedAt: !3236)
!3239 = !DILocation(line: 42, column: 8, scope: !3010, inlinedAt: !3236)
!3240 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3236)
!3241 = !DILocation(line: 42, column: 10, scope: !3010, inlinedAt: !3236)
!3242 = !DILocation(line: 43, column: 5, scope: !3010, inlinedAt: !3236)
!3243 = !DILocation(line: 113, column: 10, scope: !3208, inlinedAt: !3233)
!3244 = !DILocation(line: 121, column: 3, scope: !3226)
!3245 = distinct !DISubprogram(name: "xalloc_die", scope: !3246, file: !3246, line: 32, type: !934, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !198, retainedNodes: !54)
!3246 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3247 = !DILocation(line: 34, column: 10, scope: !3245)
!3248 = !DILocation(line: 34, column: 33, scope: !3245)
!3249 = !DILocation(line: 34, column: 3, scope: !3245)
!3250 = !DILocation(line: 40, column: 3, scope: !3245)
!3251 = distinct !DISubprogram(name: "rpl_calloc", scope: !3252, file: !3252, line: 42, type: !820, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !3253)
!3252 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3253 = !{!3254, !3255, !3256, !3257}
!3254 = !DILocalVariable(name: "n", arg: 1, scope: !3251, file: !3252, line: 42, type: !30)
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3251, file: !3252, line: 42, type: !30)
!3256 = !DILocalVariable(name: "result", scope: !3251, file: !3252, line: 44, type: !29)
!3257 = !DILocalVariable(name: "bytes", scope: !3258, file: !3252, line: 56, type: !30)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3252, line: 53, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 47, column: 7)
!3260 = !DILocation(line: 42, column: 20, scope: !3251)
!3261 = !DILocation(line: 42, column: 30, scope: !3251)
!3262 = !DILocation(line: 47, column: 9, scope: !3259)
!3263 = !DILocation(line: 47, column: 19, scope: !3259)
!3264 = !DILocation(line: 47, column: 14, scope: !3259)
!3265 = !DILocation(line: 56, column: 24, scope: !3258)
!3266 = !DILocation(line: 56, column: 14, scope: !3258)
!3267 = !DILocation(line: 57, column: 17, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3258, file: !3252, line: 57, column: 11)
!3269 = !DILocation(line: 57, column: 21, scope: !3268)
!3270 = !DILocation(line: 57, column: 11, scope: !3258)
!3271 = !DILocation(line: 59, column: 11, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !3252, line: 58, column: 9)
!3273 = !DILocation(line: 59, column: 17, scope: !3272)
!3274 = !DILocation(line: 65, column: 12, scope: !3251)
!3275 = !DILocation(line: 44, column: 9, scope: !3251)
!3276 = !DILocation(line: 72, column: 3, scope: !3251)
!3277 = !DILocation(line: 0, scope: !3272)
!3278 = !DILocation(line: 73, column: 1, scope: !3251)
!3279 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3280, file: !3280, line: 385, type: !3281, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3295)
!3280 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!30, !3283, !26, !30, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1251, line: 6, baseType: !3286)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1253, line: 21, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1253, line: 13, size: 64, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3287, file: !1253, line: 15, baseType: !44, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3287, file: !1253, line: 20, baseType: !3291, size: 32, offset: 32)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !1253, line: 16, size: 32, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3291, file: !1253, line: 18, baseType: !7, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3291, file: !1253, line: 19, baseType: !760, size: 32)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3296 = !DILocalVariable(name: "pwc", arg: 1, scope: !3279, file: !3280, line: 385, type: !3283)
!3297 = !DILocalVariable(name: "s", arg: 2, scope: !3279, file: !3280, line: 385, type: !26)
!3298 = !DILocalVariable(name: "n", arg: 3, scope: !3279, file: !3280, line: 385, type: !30)
!3299 = !DILocalVariable(name: "ps", arg: 4, scope: !3279, file: !3280, line: 385, type: !3284)
!3300 = !DILocalVariable(name: "ret", scope: !3279, file: !3280, line: 387, type: !30)
!3301 = !DILocalVariable(name: "wc", scope: !3279, file: !3280, line: 388, type: !1264)
!3302 = !DILocalVariable(name: "uc", scope: !3303, file: !3280, line: 449, type: !35)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !3280, line: 448, column: 5)
!3304 = distinct !DILexicalBlock(scope: !3279, file: !3280, line: 447, column: 7)
!3305 = !DILocation(line: 385, column: 23, scope: !3279)
!3306 = !DILocation(line: 385, column: 40, scope: !3279)
!3307 = !DILocation(line: 385, column: 50, scope: !3279)
!3308 = !DILocation(line: 385, column: 64, scope: !3279)
!3309 = !DILocation(line: 388, column: 3, scope: !3279)
!3310 = !DILocation(line: 404, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3279, file: !3280, line: 404, column: 7)
!3312 = !DILocation(line: 404, column: 7, scope: !3279)
!3313 = !DILocation(line: 439, column: 9, scope: !3279)
!3314 = !DILocation(line: 387, column: 10, scope: !3279)
!3315 = !DILocation(line: 447, column: 19, scope: !3304)
!3316 = !DILocation(line: 447, column: 31, scope: !3304)
!3317 = !DILocation(line: 447, column: 26, scope: !3304)
!3318 = !DILocation(line: 447, column: 41, scope: !3304)
!3319 = !DILocation(line: 447, column: 7, scope: !3279)
!3320 = !DILocation(line: 449, column: 26, scope: !3303)
!3321 = !DILocation(line: 449, column: 21, scope: !3303)
!3322 = !DILocation(line: 450, column: 14, scope: !3303)
!3323 = !DILocation(line: 450, column: 12, scope: !3303)
!3324 = !DILocation(line: 0, scope: !3303)
!3325 = !DILocation(line: 456, column: 1, scope: !3279)
!3326 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !3327, file: !3327, line: 49, type: !3328, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3354)
!3327 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!34, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !3333)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !748, line: 55, size: 3072, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3346, !3347, !3352, !3353}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3333, file: !748, line: 57, baseType: !751, size: 16)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3333, file: !748, line: 58, baseType: !753, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3333, file: !748, line: 59, baseType: !756, size: 256, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3333, file: !748, line: 60, baseType: !760, size: 32, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3333, file: !748, line: 61, baseType: !756, size: 256, offset: 352)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3333, file: !748, line: 62, baseType: !146, size: 2048, offset: 608)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3333, file: !748, line: 63, baseType: !3342, size: 32, offset: 2656)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !748, line: 42, size: 32, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3342, file: !748, line: 45, baseType: !751, size: 16)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3342, file: !748, line: 46, baseType: !751, size: 16, offset: 16)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3333, file: !748, line: 70, baseType: !771, size: 32, offset: 2688)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !3333, file: !748, line: 75, baseType: !3348, size: 64, offset: 2720)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3333, file: !748, line: 71, size: 64, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3348, file: !748, line: 73, baseType: !771, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3348, file: !748, line: 74, baseType: !771, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !3333, file: !748, line: 80, baseType: !778, size: 128, offset: 2784)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3333, file: !748, line: 81, baseType: !780, size: 160, offset: 2912)
!3354 = !{!3355, !3356, !3357}
!3355 = !DILocalVariable(name: "ut", arg: 1, scope: !3326, file: !3327, line: 49, type: !3330)
!3356 = !DILocalVariable(name: "p", scope: !3326, file: !3327, line: 51, type: !34)
!3357 = !DILocalVariable(name: "trimmed_name", scope: !3326, file: !3327, line: 51, type: !34)
!3358 = !DILocation(line: 49, column: 42, scope: !3326)
!3359 = !DILocation(line: 53, column: 18, scope: !3326)
!3360 = !DILocation(line: 51, column: 13, scope: !3326)
!3361 = !DILocation(line: 54, column: 26, scope: !3326)
!3362 = !DILocalVariable(name: "__dest", arg: 1, scope: !3363, file: !3364, line: 103, type: !3367)
!3363 = distinct !DISubprogram(name: "strncpy", scope: !3364, file: !3364, line: 103, type: !3365, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3369)
!3364 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!34, !3367, !3368, !30}
!3367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!3368 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!3369 = !{!3362, !3370, !3371}
!3370 = !DILocalVariable(name: "__src", arg: 2, scope: !3363, file: !3364, line: 103, type: !3368)
!3371 = !DILocalVariable(name: "__len", arg: 3, scope: !3363, file: !3364, line: 103, type: !30)
!3372 = !DILocation(line: 103, column: 1, scope: !3363, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 54, column: 3, scope: !3326)
!3374 = !DILocation(line: 106, column: 57, scope: !3363, inlinedAt: !3373)
!3375 = !DILocation(line: 106, column: 10, scope: !3363, inlinedAt: !3373)
!3376 = !DILocation(line: 58, column: 3, scope: !3326)
!3377 = !DILocation(line: 58, column: 39, scope: !3326)
!3378 = !DILocation(line: 59, column: 27, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3326, file: !3327, line: 59, column: 3)
!3380 = !DILocation(line: 60, column: 21, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3379, file: !3327, line: 59, column: 3)
!3382 = !DILocation(line: 60, column: 25, scope: !3381)
!3383 = !DILocation(line: 59, column: 25, scope: !3379)
!3384 = !DILocation(line: 51, column: 9, scope: !3326)
!3385 = !DILocation(line: 60, column: 28, scope: !3381)
!3386 = !DILocation(line: 60, column: 34, scope: !3381)
!3387 = !DILocation(line: 59, column: 3, scope: !3379)
!3388 = !DILocation(line: 61, column: 13, scope: !3381)
!3389 = distinct !{!3389, !3387, !3390}
!3390 = !DILocation(line: 62, column: 5, scope: !3379)
!3391 = !DILocation(line: 63, column: 3, scope: !3326)
!3392 = distinct !DISubprogram(name: "read_utmp", scope: !3327, file: !3327, line: 92, type: !3393, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3397)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!44, !26, !189, !3395, !44}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3398 = !DILocalVariable(name: "file", arg: 1, scope: !3392, file: !3327, line: 92, type: !26)
!3399 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3392, file: !3327, line: 92, type: !189)
!3400 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3392, file: !3327, line: 92, type: !3395)
!3401 = !DILocalVariable(name: "options", arg: 4, scope: !3392, file: !3327, line: 93, type: !44)
!3402 = !DILocalVariable(name: "n_read", scope: !3392, file: !3327, line: 95, type: !30)
!3403 = !DILocalVariable(name: "n_alloc", scope: !3392, file: !3327, line: 96, type: !30)
!3404 = !DILocalVariable(name: "utmp", scope: !3392, file: !3327, line: 97, type: !3396)
!3405 = !DILocalVariable(name: "u", scope: !3392, file: !3327, line: 98, type: !3396)
!3406 = !DILocation(line: 92, column: 24, scope: !3392)
!3407 = !DILocation(line: 92, column: 38, scope: !3392)
!3408 = !DILocation(line: 92, column: 63, scope: !3392)
!3409 = !DILocation(line: 93, column: 16, scope: !3392)
!3410 = !DILocation(line: 95, column: 10, scope: !3392)
!3411 = !DILocation(line: 96, column: 10, scope: !3392)
!3412 = !DILocation(line: 97, column: 16, scope: !3392)
!3413 = !DILocation(line: 104, column: 3, scope: !3392)
!3414 = !DILocation(line: 106, column: 3, scope: !3392)
!3415 = !DILocation(line: 108, column: 15, scope: !3392)
!3416 = !DILocation(line: 98, column: 16, scope: !3392)
!3417 = !DILocation(line: 108, column: 32, scope: !3392)
!3418 = !DILocation(line: 108, column: 3, scope: !3392)
!3419 = !DILocalVariable(name: "u", arg: 1, scope: !3420, file: !3327, line: 69, type: !3330)
!3420 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !3327, file: !3327, line: 69, type: !3421, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!64, !3330, !44}
!3423 = !{!3419, !3424, !3425}
!3424 = !DILocalVariable(name: "options", arg: 2, scope: !3420, file: !3327, line: 69, type: !44)
!3425 = !DILocalVariable(name: "user_proc", scope: !3420, file: !3327, line: 71, type: !64)
!3426 = !DILocation(line: 69, column: 42, scope: !3420, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 109, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3392, file: !3327, line: 109, column: 9)
!3429 = !DILocation(line: 69, column: 49, scope: !3420, inlinedAt: !3427)
!3430 = !DILocation(line: 71, column: 20, scope: !3420, inlinedAt: !3427)
!3431 = !DILocation(line: 0, scope: !3420, inlinedAt: !3427)
!3432 = !DILocation(line: 72, column: 42, scope: !3433, inlinedAt: !3427)
!3433 = distinct !DILexicalBlock(scope: !3420, file: !3327, line: 72, column: 7)
!3434 = !DILocation(line: 75, column: 7, scope: !3435, inlinedAt: !3427)
!3435 = distinct !DILexicalBlock(scope: !3420, file: !3327, line: 74, column: 7)
!3436 = !DILocation(line: 76, column: 14, scope: !3435, inlinedAt: !3427)
!3437 = !{!846, !720, i64 4}
!3438 = !DILocation(line: 76, column: 12, scope: !3435, inlinedAt: !3427)
!3439 = !DILocation(line: 77, column: 7, scope: !3435, inlinedAt: !3427)
!3440 = !DILocation(line: 77, column: 11, scope: !3435, inlinedAt: !3427)
!3441 = !DILocation(line: 77, column: 32, scope: !3435, inlinedAt: !3427)
!3442 = !DILocation(line: 77, column: 36, scope: !3435, inlinedAt: !3427)
!3443 = !DILocation(line: 77, column: 39, scope: !3435, inlinedAt: !3427)
!3444 = !DILocation(line: 77, column: 45, scope: !3435, inlinedAt: !3427)
!3445 = !DILocation(line: 74, column: 7, scope: !3420, inlinedAt: !3427)
!3446 = !DILocation(line: 111, column: 20, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3327, line: 111, column: 13)
!3448 = distinct !DILexicalBlock(scope: !3428, file: !3327, line: 110, column: 7)
!3449 = !DILocation(line: 111, column: 13, scope: !3448)
!3450 = !DILocation(line: 174, column: 19, scope: !209, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 112, column: 18, scope: !3447)
!3452 = !DILocation(line: 174, column: 41, scope: !209, inlinedAt: !3451)
!3453 = !DILocation(line: 176, column: 10, scope: !209, inlinedAt: !3451)
!3454 = !DILocation(line: 178, column: 9, scope: !3455, inlinedAt: !3451)
!3455 = distinct !DILexicalBlock(scope: !209, file: !185, line: 178, column: 7)
!3456 = !DILocation(line: 178, column: 7, scope: !209, inlinedAt: !3451)
!3457 = !DILocation(line: 180, column: 13, scope: !3458, inlinedAt: !3451)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !185, line: 180, column: 11)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !185, line: 179, column: 5)
!3460 = !DILocation(line: 180, column: 11, scope: !3459, inlinedAt: !3451)
!3461 = !DILocation(line: 191, column: 11, scope: !3462, inlinedAt: !3451)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !185, line: 191, column: 11)
!3463 = !DILocation(line: 191, column: 11, scope: !3459, inlinedAt: !3451)
!3464 = !DILocation(line: 192, column: 9, scope: !3462, inlinedAt: !3451)
!3465 = !DILocation(line: 201, column: 11, scope: !3466, inlinedAt: !3451)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !185, line: 200, column: 11)
!3467 = distinct !DILexicalBlock(scope: !3455, file: !185, line: 195, column: 5)
!3468 = !DILocation(line: 200, column: 11, scope: !3467, inlinedAt: !3451)
!3469 = !DILocation(line: 202, column: 9, scope: !3466, inlinedAt: !3451)
!3470 = !DILocation(line: 203, column: 14, scope: !3467, inlinedAt: !3451)
!3471 = !DILocation(line: 203, column: 18, scope: !3467, inlinedAt: !3451)
!3472 = !DILocation(line: 203, column: 9, scope: !3467, inlinedAt: !3451)
!3473 = !DILocation(line: 0, scope: !209, inlinedAt: !3451)
!3474 = !DILocation(line: 207, column: 25, scope: !209, inlinedAt: !3451)
!3475 = !DILocation(line: 207, column: 10, scope: !209, inlinedAt: !3451)
!3476 = !DILocation(line: 112, column: 18, scope: !3447)
!3477 = !DILocation(line: 112, column: 11, scope: !3447)
!3478 = !DILocation(line: 0, scope: !3392)
!3479 = !DILocation(line: 114, column: 20, scope: !3448)
!3480 = !DILocation(line: 114, column: 9, scope: !3448)
!3481 = !DILocation(line: 114, column: 26, scope: !3448)
!3482 = !{i64 0, i64 2, !1503, i64 4, i64 4, !719, i64 8, i64 32, !844, i64 40, i64 4, !844, i64 44, i64 32, !844, i64 76, i64 256, !844, i64 332, i64 2, !1503, i64 334, i64 2, !1503, i64 336, i64 4, !719, i64 340, i64 4, !719, i64 344, i64 4, !719, i64 348, i64 16, !844, i64 364, i64 20, !844}
!3483 = !DILocation(line: 115, column: 7, scope: !3448)
!3484 = distinct !{!3484, !3418, !3485}
!3485 = !DILocation(line: 115, column: 7, scope: !3392)
!3486 = !DILocation(line: 0, scope: !3447)
!3487 = !DILocation(line: 0, scope: !3448)
!3488 = !DILocation(line: 117, column: 3, scope: !3392)
!3489 = !DILocation(line: 119, column: 14, scope: !3392)
!3490 = !DILocation(line: 120, column: 13, scope: !3392)
!3491 = !DILocation(line: 122, column: 3, scope: !3392)
!3492 = distinct !DISubprogram(name: "close_stream", scope: !3493, file: !3493, line: 56, type: !3494, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !3530)
!3493 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!44, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2805, line: 49, size: 1728, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3498, file: !2805, line: 51, baseType: !44, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3498, file: !2805, line: 54, baseType: !34, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3498, file: !2805, line: 55, baseType: !34, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3498, file: !2805, line: 56, baseType: !34, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3498, file: !2805, line: 57, baseType: !34, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3498, file: !2805, line: 58, baseType: !34, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3498, file: !2805, line: 59, baseType: !34, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3498, file: !2805, line: 60, baseType: !34, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3498, file: !2805, line: 61, baseType: !34, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3498, file: !2805, line: 64, baseType: !34, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3498, file: !2805, line: 65, baseType: !34, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3498, file: !2805, line: 66, baseType: !34, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3498, file: !2805, line: 68, baseType: !2820, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3498, file: !2805, line: 70, baseType: !3514, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3498, file: !2805, line: 72, baseType: !44, size: 32, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3498, file: !2805, line: 73, baseType: !44, size: 32, offset: 928)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3498, file: !2805, line: 74, baseType: !2827, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3498, file: !2805, line: 77, baseType: !121, size: 16, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3498, file: !2805, line: 78, baseType: !2831, size: 8, offset: 1040)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3498, file: !2805, line: 79, baseType: !2833, size: 8, offset: 1048)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3498, file: !2805, line: 81, baseType: !2835, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3498, file: !2805, line: 89, baseType: !2838, size: 64, offset: 1152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3498, file: !2805, line: 91, baseType: !2840, size: 64, offset: 1216)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3498, file: !2805, line: 92, baseType: !2843, size: 64, offset: 1280)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3498, file: !2805, line: 93, baseType: !3514, size: 64, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3498, file: !2805, line: 94, baseType: !29, size: 64, offset: 1408)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3498, file: !2805, line: 95, baseType: !30, size: 64, offset: 1472)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3498, file: !2805, line: 96, baseType: !44, size: 32, offset: 1536)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3498, file: !2805, line: 98, baseType: !780, size: 160, offset: 1568)
!3530 = !{!3531, !3532, !3534, !3535}
!3531 = !DILocalVariable(name: "stream", arg: 1, scope: !3492, file: !3493, line: 56, type: !3496)
!3532 = !DILocalVariable(name: "some_pending", scope: !3492, file: !3493, line: 58, type: !3533)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3534 = !DILocalVariable(name: "prev_fail", scope: !3492, file: !3493, line: 59, type: !3533)
!3535 = !DILocalVariable(name: "fclose_fail", scope: !3492, file: !3493, line: 60, type: !3533)
!3536 = !DILocation(line: 56, column: 21, scope: !3492)
!3537 = !DILocation(line: 58, column: 30, scope: !3492)
!3538 = !DILocalVariable(name: "__stream", arg: 1, scope: !3539, file: !868, line: 135, type: !3496)
!3539 = distinct !DISubprogram(name: "ferror_unlocked", scope: !868, file: !868, line: 135, type: !3494, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !3540)
!3540 = !{!3538}
!3541 = !DILocation(line: 135, column: 1, scope: !3539, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 59, column: 27, scope: !3492)
!3543 = !DILocation(line: 137, column: 10, scope: !3539, inlinedAt: !3542)
!3544 = !{!876, !720, i64 0}
!3545 = !DILocation(line: 59, column: 43, scope: !3492)
!3546 = !DILocation(line: 60, column: 29, scope: !3492)
!3547 = !DILocation(line: 60, column: 45, scope: !3492)
!3548 = !DILocation(line: 70, column: 17, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3492, file: !3493, line: 70, column: 7)
!3550 = !DILocation(line: 58, column: 50, scope: !3492)
!3551 = !DILocation(line: 70, column: 33, scope: !3549)
!3552 = !DILocation(line: 70, column: 53, scope: !3549)
!3553 = !DILocation(line: 70, column: 59, scope: !3549)
!3554 = !DILocation(line: 70, column: 7, scope: !3492)
!3555 = !DILocation(line: 72, column: 11, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3549, file: !3493, line: 71, column: 5)
!3557 = !DILocation(line: 73, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3556, file: !3493, line: 72, column: 11)
!3559 = !DILocation(line: 73, column: 15, scope: !3558)
!3560 = !DILocation(line: 0, scope: !3492)
!3561 = !DILocation(line: 78, column: 1, scope: !3492)
!3562 = distinct !DISubprogram(name: "hard_locale", scope: !3563, file: !3563, line: 38, type: !3564, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !3566)
!3563 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!64, !44}
!3566 = !{!3567, !3568, !3569}
!3567 = !DILocalVariable(name: "category", arg: 1, scope: !3562, file: !3563, line: 38, type: !44)
!3568 = !DILocalVariable(name: "hard", scope: !3562, file: !3563, line: 40, type: !64)
!3569 = !DILocalVariable(name: "p", scope: !3562, file: !3563, line: 41, type: !26)
!3570 = !DILocation(line: 38, column: 18, scope: !3562)
!3571 = !DILocation(line: 40, column: 8, scope: !3562)
!3572 = !DILocation(line: 41, column: 19, scope: !3562)
!3573 = !DILocation(line: 41, column: 15, scope: !3562)
!3574 = !DILocation(line: 43, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3562, file: !3563, line: 43, column: 7)
!3576 = !DILocation(line: 43, column: 7, scope: !3562)
!3577 = !DILocation(line: 47, column: 15, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3563, line: 47, column: 15)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3563, line: 46, column: 9)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !3563, line: 45, column: 11)
!3581 = distinct !DILexicalBlock(scope: !3575, file: !3563, line: 44, column: 5)
!3582 = !DILocation(line: 47, column: 31, scope: !3578)
!3583 = !DILocation(line: 47, column: 36, scope: !3578)
!3584 = !DILocation(line: 47, column: 39, scope: !3578)
!3585 = !DILocation(line: 47, column: 59, scope: !3578)
!3586 = !DILocation(line: 47, column: 15, scope: !3579)
!3587 = !DILocation(line: 48, column: 13, scope: !3578)
!3588 = !DILocation(line: 71, column: 3, scope: !3562)
!3589 = distinct !DISubprogram(name: "locale_charset", scope: !3590, file: !3590, line: 687, type: !3591, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3593)
!3590 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!26}
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "codeset", scope: !3589, file: !3590, line: 689, type: !26)
!3595 = !DILocation(line: 696, column: 13, scope: !3589)
!3596 = !DILocation(line: 689, column: 15, scope: !3589)
!3597 = !DILocation(line: 754, column: 15, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3589, file: !3590, line: 754, column: 7)
!3599 = !DILocation(line: 754, column: 7, scope: !3589)
!3600 = !DILocation(line: 907, column: 13, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3590, line: 907, column: 13)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3590, line: 897, column: 7)
!3603 = distinct !DILexicalBlock(scope: !3589, file: !3590, line: 856, column: 3)
!3604 = !DILocation(line: 907, column: 24, scope: !3601)
!3605 = !DILocation(line: 907, column: 13, scope: !3602)
!3606 = !DILocation(line: 995, column: 3, scope: !3589)
!3607 = distinct !DISubprogram(name: "rpl_fclose", scope: !3608, file: !3608, line: 58, type: !3609, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !609, retainedNodes: !3645)
!3608 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!44, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3613)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2805, line: 49, size: 1728, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3613, file: !2805, line: 51, baseType: !44, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3613, file: !2805, line: 54, baseType: !34, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3613, file: !2805, line: 55, baseType: !34, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3613, file: !2805, line: 56, baseType: !34, size: 64, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3613, file: !2805, line: 57, baseType: !34, size: 64, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3613, file: !2805, line: 58, baseType: !34, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3613, file: !2805, line: 59, baseType: !34, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3613, file: !2805, line: 60, baseType: !34, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3613, file: !2805, line: 61, baseType: !34, size: 64, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3613, file: !2805, line: 64, baseType: !34, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3613, file: !2805, line: 65, baseType: !34, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3613, file: !2805, line: 66, baseType: !34, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3613, file: !2805, line: 68, baseType: !2820, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3613, file: !2805, line: 70, baseType: !3629, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3613, file: !2805, line: 72, baseType: !44, size: 32, offset: 896)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3613, file: !2805, line: 73, baseType: !44, size: 32, offset: 928)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3613, file: !2805, line: 74, baseType: !2827, size: 64, offset: 960)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3613, file: !2805, line: 77, baseType: !121, size: 16, offset: 1024)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3613, file: !2805, line: 78, baseType: !2831, size: 8, offset: 1040)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3613, file: !2805, line: 79, baseType: !2833, size: 8, offset: 1048)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3613, file: !2805, line: 81, baseType: !2835, size: 64, offset: 1088)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3613, file: !2805, line: 89, baseType: !2838, size: 64, offset: 1152)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3613, file: !2805, line: 91, baseType: !2840, size: 64, offset: 1216)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3613, file: !2805, line: 92, baseType: !2843, size: 64, offset: 1280)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3613, file: !2805, line: 93, baseType: !3629, size: 64, offset: 1344)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3613, file: !2805, line: 94, baseType: !29, size: 64, offset: 1408)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3613, file: !2805, line: 95, baseType: !30, size: 64, offset: 1472)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3613, file: !2805, line: 96, baseType: !44, size: 32, offset: 1536)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3613, file: !2805, line: 98, baseType: !780, size: 160, offset: 1568)
!3645 = !{!3646, !3647, !3648, !3649}
!3646 = !DILocalVariable(name: "fp", arg: 1, scope: !3607, file: !3608, line: 58, type: !3611)
!3647 = !DILocalVariable(name: "saved_errno", scope: !3607, file: !3608, line: 60, type: !44)
!3648 = !DILocalVariable(name: "fd", scope: !3607, file: !3608, line: 61, type: !44)
!3649 = !DILocalVariable(name: "result", scope: !3607, file: !3608, line: 62, type: !44)
!3650 = !DILocation(line: 58, column: 19, scope: !3607)
!3651 = !DILocation(line: 60, column: 7, scope: !3607)
!3652 = !DILocation(line: 62, column: 7, scope: !3607)
!3653 = !DILocation(line: 65, column: 8, scope: !3607)
!3654 = !DILocation(line: 61, column: 7, scope: !3607)
!3655 = !DILocation(line: 66, column: 10, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3607, file: !3608, line: 66, column: 7)
!3657 = !DILocation(line: 66, column: 7, scope: !3607)
!3658 = !DILocation(line: 67, column: 12, scope: !3656)
!3659 = !DILocation(line: 67, column: 5, scope: !3656)
!3660 = !DILocation(line: 72, column: 9, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3607, file: !3608, line: 72, column: 7)
!3662 = !DILocation(line: 72, column: 23, scope: !3661)
!3663 = !DILocation(line: 72, column: 33, scope: !3661)
!3664 = !DILocation(line: 72, column: 26, scope: !3661)
!3665 = !DILocation(line: 72, column: 59, scope: !3661)
!3666 = !DILocation(line: 73, column: 7, scope: !3661)
!3667 = !DILocation(line: 73, column: 10, scope: !3661)
!3668 = !DILocation(line: 72, column: 7, scope: !3607)
!3669 = !DILocation(line: 100, column: 12, scope: !3607)
!3670 = !DILocation(line: 105, column: 7, scope: !3607)
!3671 = !DILocation(line: 74, column: 19, scope: !3661)
!3672 = !DILocation(line: 105, column: 19, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3607, file: !3608, line: 105, column: 7)
!3674 = !DILocation(line: 107, column: 13, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3673, file: !3608, line: 106, column: 5)
!3676 = !DILocation(line: 109, column: 5, scope: !3675)
!3677 = !DILocation(line: 0, scope: !3607)
!3678 = !DILocation(line: 112, column: 1, scope: !3607)
!3679 = distinct !DISubprogram(name: "rpl_fflush", scope: !3680, file: !3680, line: 129, type: !3681, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !611, retainedNodes: !3717)
!3680 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!44, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2805, line: 49, size: 1728, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3685, file: !2805, line: 51, baseType: !44, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3685, file: !2805, line: 54, baseType: !34, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3685, file: !2805, line: 55, baseType: !34, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3685, file: !2805, line: 56, baseType: !34, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3685, file: !2805, line: 57, baseType: !34, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3685, file: !2805, line: 58, baseType: !34, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3685, file: !2805, line: 59, baseType: !34, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3685, file: !2805, line: 60, baseType: !34, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3685, file: !2805, line: 61, baseType: !34, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3685, file: !2805, line: 64, baseType: !34, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3685, file: !2805, line: 65, baseType: !34, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3685, file: !2805, line: 66, baseType: !34, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3685, file: !2805, line: 68, baseType: !2820, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3685, file: !2805, line: 70, baseType: !3701, size: 64, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3685, file: !2805, line: 72, baseType: !44, size: 32, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3685, file: !2805, line: 73, baseType: !44, size: 32, offset: 928)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3685, file: !2805, line: 74, baseType: !2827, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3685, file: !2805, line: 77, baseType: !121, size: 16, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3685, file: !2805, line: 78, baseType: !2831, size: 8, offset: 1040)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3685, file: !2805, line: 79, baseType: !2833, size: 8, offset: 1048)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3685, file: !2805, line: 81, baseType: !2835, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3685, file: !2805, line: 89, baseType: !2838, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3685, file: !2805, line: 91, baseType: !2840, size: 64, offset: 1216)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3685, file: !2805, line: 92, baseType: !2843, size: 64, offset: 1280)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3685, file: !2805, line: 93, baseType: !3701, size: 64, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3685, file: !2805, line: 94, baseType: !29, size: 64, offset: 1408)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3685, file: !2805, line: 95, baseType: !30, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3685, file: !2805, line: 96, baseType: !44, size: 32, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3685, file: !2805, line: 98, baseType: !780, size: 160, offset: 1568)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "stream", arg: 1, scope: !3679, file: !3680, line: 129, type: !3683)
!3719 = !DILocation(line: 129, column: 19, scope: !3679)
!3720 = !DILocation(line: 150, column: 14, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3679, file: !3680, line: 150, column: 7)
!3722 = !DILocation(line: 150, column: 22, scope: !3721)
!3723 = !DILocation(line: 150, column: 27, scope: !3721)
!3724 = !DILocation(line: 150, column: 7, scope: !3679)
!3725 = !DILocation(line: 151, column: 12, scope: !3721)
!3726 = !DILocation(line: 151, column: 5, scope: !3721)
!3727 = !DILocalVariable(name: "fp", arg: 1, scope: !3728, file: !3680, line: 41, type: !3683)
!3728 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3680, file: !3680, line: 41, type: !3729, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !611, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3683}
!3731 = !{!3727}
!3732 = !DILocation(line: 41, column: 48, scope: !3728, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 156, column: 3, scope: !3679)
!3734 = !DILocation(line: 43, column: 11, scope: !3735, inlinedAt: !3733)
!3735 = distinct !DILexicalBlock(scope: !3728, file: !3680, line: 43, column: 7)
!3736 = !DILocation(line: 43, column: 18, scope: !3735, inlinedAt: !3733)
!3737 = !DILocation(line: 43, column: 7, scope: !3728, inlinedAt: !3733)
!3738 = !DILocation(line: 45, column: 5, scope: !3735, inlinedAt: !3733)
!3739 = !DILocation(line: 158, column: 10, scope: !3679)
!3740 = !DILocation(line: 158, column: 3, scope: !3679)
!3741 = !DILocation(line: 0, scope: !3679)
!3742 = !DILocation(line: 232, column: 1, scope: !3679)
!3743 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3744, file: !3744, line: 28, type: !3745, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !613, retainedNodes: !3782)
!3744 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!44, !3747, !3781, !44}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2805, line: 49, size: 1728, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3749, file: !2805, line: 51, baseType: !44, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3749, file: !2805, line: 54, baseType: !34, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3749, file: !2805, line: 55, baseType: !34, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3749, file: !2805, line: 56, baseType: !34, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3749, file: !2805, line: 57, baseType: !34, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3749, file: !2805, line: 58, baseType: !34, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3749, file: !2805, line: 59, baseType: !34, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3749, file: !2805, line: 60, baseType: !34, size: 64, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3749, file: !2805, line: 61, baseType: !34, size: 64, offset: 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3749, file: !2805, line: 64, baseType: !34, size: 64, offset: 576)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3749, file: !2805, line: 65, baseType: !34, size: 64, offset: 640)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3749, file: !2805, line: 66, baseType: !34, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3749, file: !2805, line: 68, baseType: !2820, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3749, file: !2805, line: 70, baseType: !3765, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3749, file: !2805, line: 72, baseType: !44, size: 32, offset: 896)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3749, file: !2805, line: 73, baseType: !44, size: 32, offset: 928)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3749, file: !2805, line: 74, baseType: !2827, size: 64, offset: 960)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3749, file: !2805, line: 77, baseType: !121, size: 16, offset: 1024)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3749, file: !2805, line: 78, baseType: !2831, size: 8, offset: 1040)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3749, file: !2805, line: 79, baseType: !2833, size: 8, offset: 1048)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3749, file: !2805, line: 81, baseType: !2835, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3749, file: !2805, line: 89, baseType: !2838, size: 64, offset: 1152)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3749, file: !2805, line: 91, baseType: !2840, size: 64, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3749, file: !2805, line: 92, baseType: !2843, size: 64, offset: 1280)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3749, file: !2805, line: 93, baseType: !3765, size: 64, offset: 1344)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3749, file: !2805, line: 94, baseType: !29, size: 64, offset: 1408)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3749, file: !2805, line: 95, baseType: !30, size: 64, offset: 1472)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3749, file: !2805, line: 96, baseType: !44, size: 32, offset: 1536)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3749, file: !2805, line: 98, baseType: !780, size: 160, offset: 1568)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !988, line: 63, baseType: !2827)
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DILocalVariable(name: "fp", arg: 1, scope: !3743, file: !3744, line: 28, type: !3747)
!3784 = !DILocalVariable(name: "offset", arg: 2, scope: !3743, file: !3744, line: 28, type: !3781)
!3785 = !DILocalVariable(name: "whence", arg: 3, scope: !3743, file: !3744, line: 28, type: !44)
!3786 = !DILocalVariable(name: "pos", scope: !3787, file: !3744, line: 117, type: !3781)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3744, line: 113, column: 5)
!3788 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 52, column: 7)
!3789 = !DILocation(line: 28, column: 15, scope: !3743)
!3790 = !DILocation(line: 28, column: 25, scope: !3743)
!3791 = !DILocation(line: 28, column: 37, scope: !3743)
!3792 = !DILocation(line: 52, column: 11, scope: !3788)
!3793 = !{!876, !655, i64 16}
!3794 = !DILocation(line: 52, column: 31, scope: !3788)
!3795 = !{!876, !655, i64 8}
!3796 = !DILocation(line: 52, column: 24, scope: !3788)
!3797 = !DILocation(line: 53, column: 7, scope: !3788)
!3798 = !DILocation(line: 53, column: 14, scope: !3788)
!3799 = !DILocation(line: 53, column: 35, scope: !3788)
!3800 = !{!876, !655, i64 32}
!3801 = !DILocation(line: 53, column: 28, scope: !3788)
!3802 = !DILocation(line: 54, column: 7, scope: !3788)
!3803 = !DILocation(line: 54, column: 14, scope: !3788)
!3804 = !{!876, !655, i64 72}
!3805 = !DILocation(line: 54, column: 28, scope: !3788)
!3806 = !DILocation(line: 52, column: 7, scope: !3743)
!3807 = !DILocation(line: 117, column: 26, scope: !3787)
!3808 = !DILocation(line: 117, column: 19, scope: !3787)
!3809 = !DILocation(line: 117, column: 13, scope: !3787)
!3810 = !DILocation(line: 118, column: 15, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3787, file: !3744, line: 118, column: 11)
!3812 = !DILocation(line: 118, column: 11, scope: !3787)
!3813 = !DILocation(line: 129, column: 11, scope: !3787)
!3814 = !DILocation(line: 129, column: 18, scope: !3787)
!3815 = !DILocation(line: 130, column: 11, scope: !3787)
!3816 = !DILocation(line: 130, column: 19, scope: !3787)
!3817 = !{!876, !796, i64 144}
!3818 = !DILocation(line: 161, column: 7, scope: !3787)
!3819 = !DILocation(line: 163, column: 10, scope: !3743)
!3820 = !DILocation(line: 163, column: 3, scope: !3743)
!3821 = !DILocation(line: 0, scope: !3743)
!3822 = !DILocation(line: 164, column: 1, scope: !3743)
