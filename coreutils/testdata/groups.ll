; ModuleID = 'coreutils-8.30/src/groups.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !26
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.35 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !48
@.str.38 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !58
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !62
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !69
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !76
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !120
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !127
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !139
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !146
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !153
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !141
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !155
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.97 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !161
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !651 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !656, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %0, metadata !655, metadata !DIExpression()), !dbg !679
  %3 = icmp eq i32 %0, 0, !dbg !680
  br i1 %3, label %9, label %4, !dbg !681

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !682, !tbaa !684
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !682
  %7 = load i8*, i8** @program_name, align 8, !dbg !682, !tbaa !684
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !682
  br label %57, !dbg !682

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !688
  %11 = load i8*, i8** @program_name, align 8, !dbg !688, !tbaa !684
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !688
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !689
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !684
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !689
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !690
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !684
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !690
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !691
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !684
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !691
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !692
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10, !dbg !692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !675
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !693
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !664, metadata !DIExpression()) #10, !dbg !694
  br label %24, !dbg !695

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !664, metadata !DIExpression()) #10, !dbg !694
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !695
  %28 = icmp eq i32 %27, 0, !dbg !695
  br i1 %28, label %34, label %29, !dbg !696

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !697
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !664, metadata !DIExpression()) #10, !dbg !694
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !698
  %32 = load i8*, i8** %31, align 8, !dbg !698, !tbaa !699
  %33 = icmp eq i8* %32, null, !dbg !701
  br i1 %33, label %34, label %24, !dbg !702, !llvm.loop !703

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !664, metadata !DIExpression()) #10, !dbg !694
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !664, metadata !DIExpression()) #10, !dbg !694
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !706
  %37 = load i8*, i8** %36, align 8, !dbg !706, !tbaa !708
  %38 = icmp eq i8* %37, null, !dbg !709
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !710
  call void @llvm.dbg.value(metadata i8* %39, metadata !663, metadata !DIExpression()) #10, !dbg !711
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !712
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !712
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !713
  call void @llvm.dbg.value(metadata i8* %42, metadata !671, metadata !DIExpression()) #10, !dbg !714
  %43 = icmp eq i8* %42, null, !dbg !715
  br i1 %43, label %50, label %44, !dbg !717

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !718
  %46 = icmp eq i32 %45, 0, !dbg !718
  br i1 %46, label %50, label %47, !dbg !719

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !720
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !720
  br label %50, !dbg !722

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !723
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !723
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !724
  %54 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !724
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !724
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #10, !dbg !724
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10, !dbg !725
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !726
  unreachable, !dbg !726
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !732, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i8** %1, metadata !733, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i8 1, metadata !735, metadata !DIExpression()), !dbg !763
  %3 = load i8*, i8** %1, align 8, !dbg !764, !tbaa !684
  tail call void @set_program_name(i8* %3) #10, !dbg !765
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !766
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !767
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !768
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !769
  %8 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !770
  call void @llvm.dbg.value(metadata i32 %8, metadata !734, metadata !DIExpression()), !dbg !771
  switch i32 %8, label %13 [
    i32 -1, label %14
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !772

; <label>:9:                                      ; preds = %2
  tail call void @usage(i32 0) #16, !dbg !773
  unreachable, !dbg !773

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !684
  %12 = load i8*, i8** @Version, align 8, !dbg !776, !tbaa !684
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !776
  tail call void @exit(i32 0) #15, !dbg !776
  unreachable, !dbg !776

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !777
  unreachable, !dbg !777

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !778, !tbaa !779
  %16 = icmp eq i32 %15, %0, !dbg !781
  br i1 %16, label %19, label %17, !dbg !782

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !735, metadata !DIExpression()), !dbg !763
  %18 = icmp slt i32 %15, %0, !dbg !783
  br i1 %18, label %57, label %103, !dbg !784

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 -1, metadata !741, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i32 -1, metadata !744, metadata !DIExpression()), !dbg !786
  %20 = tail call i32* @__errno_location() #17, !dbg !787
  store i32 0, i32* %20, align 4, !dbg !788, !tbaa !779
  %21 = tail call i32 @getuid() #10, !dbg !789
  call void @llvm.dbg.value(metadata i32 %21, metadata !738, metadata !DIExpression()), !dbg !790
  %22 = icmp eq i32 %21, -1, !dbg !791
  br i1 %22, label %23, label %28, !dbg !793

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %20, align 4, !dbg !794, !tbaa !779
  %25 = icmp eq i32 %24, 0, !dbg !794
  br i1 %25, label %28, label %26, !dbg !795

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !796
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %24, i8* %27) #10, !dbg !796
  unreachable, !dbg !796

; <label>:28:                                     ; preds = %23, %19
  store i32 0, i32* %20, align 4, !dbg !797, !tbaa !779
  %29 = tail call i32 @getegid() #10, !dbg !798
  call void @llvm.dbg.value(metadata i32 %29, metadata !737, metadata !DIExpression()), !dbg !799
  %30 = icmp eq i32 %29, -1, !dbg !800
  br i1 %30, label %31, label %36, !dbg !802

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %20, align 4, !dbg !803, !tbaa !779
  %33 = icmp eq i32 %32, 0, !dbg !803
  br i1 %33, label %36, label %34, !dbg !804

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !805
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* %35) #10, !dbg !805
  unreachable, !dbg !805

; <label>:36:                                     ; preds = %31, %28
  store i32 0, i32* %20, align 4, !dbg !806, !tbaa !779
  %37 = tail call i32 @getgid() #10, !dbg !807
  call void @llvm.dbg.value(metadata i32 %37, metadata !736, metadata !DIExpression()), !dbg !808
  %38 = icmp eq i32 %37, -1, !dbg !809
  br i1 %38, label %39, label %44, !dbg !811

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %20, align 4, !dbg !812, !tbaa !779
  %41 = icmp eq i32 %40, 0, !dbg !812
  br i1 %41, label %44, label %42, !dbg !813

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !814
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %40, i8* %43) #10, !dbg !814
  unreachable, !dbg !814

; <label>:44:                                     ; preds = %39, %36
  %45 = tail call zeroext i1 @print_group_list(i8* null, i32 %21, i32 %37, i32 %29, i1 zeroext true, i8 signext 32) #10, !dbg !815
  %46 = zext i1 %45 to i8, !dbg !817
  call void @llvm.dbg.value(metadata i8 %46, metadata !735, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 10, metadata !818, metadata !DIExpression()) #10, !dbg !824
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !826, !tbaa !684
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 5, !dbg !826
  %49 = load i8*, i8** %48, align 8, !dbg !826, !tbaa !827
  %50 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 6, !dbg !826
  %51 = load i8*, i8** %50, align 8, !dbg !826, !tbaa !831
  %52 = icmp ult i8* %49, %51, !dbg !826
  br i1 %52, label %55, label %53, !dbg !826, !prof !832

; <label>:53:                                     ; preds = %44
  %54 = tail call i32 @__overflow(%struct._IO_FILE* %47, i32 10) #10, !dbg !826
  br label %103, !dbg !826

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !826
  store i8* %56, i8** %48, align 8, !dbg !826, !tbaa !827
  store i8 10, i8* %49, align 1, !dbg !826, !tbaa !833
  br label %103, !dbg !826

; <label>:57:                                     ; preds = %17, %98
  %58 = phi i32 [ %101, %98 ], [ %15, %17 ]
  %59 = phi i8 [ %99, %98 ], [ 1, %17 ]
  call void @llvm.dbg.value(metadata i8 %59, metadata !735, metadata !DIExpression()), !dbg !763
  %60 = sext i32 %58 to i64, !dbg !834
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !834
  %62 = load i8*, i8** %61, align 8, !dbg !834, !tbaa !684
  %63 = tail call %struct.passwd* @getpwnam(i8* %62), !dbg !835
  call void @llvm.dbg.value(metadata %struct.passwd* %63, metadata !745, metadata !DIExpression()), !dbg !836
  %64 = icmp eq %struct.passwd* %63, null, !dbg !837
  br i1 %64, label %65, label %72, !dbg !839

; <label>:65:                                     ; preds = %57
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !840
  %67 = load i32, i32* @optind, align 4, !dbg !842, !tbaa !779
  %68 = sext i32 %67 to i64, !dbg !843
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !843
  %70 = load i8*, i8** %69, align 8, !dbg !843, !tbaa !684
  %71 = tail call i8* @quote(i8* %70) #10, !dbg !844
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66, i8* %71) #10, !dbg !845
  call void @llvm.dbg.value(metadata i8 0, metadata !735, metadata !DIExpression()), !dbg !763
  br label %98, !dbg !846

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 2, !dbg !847
  %74 = load i32, i32* %73, align 8, !dbg !847, !tbaa !848
  call void @llvm.dbg.value(metadata i32 %74, metadata !738, metadata !DIExpression()), !dbg !790
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 3, !dbg !850
  %76 = load i32, i32* %75, align 4, !dbg !850, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %76, metadata !737, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 %76, metadata !736, metadata !DIExpression()), !dbg !808
  %77 = load i32, i32* @optind, align 4, !dbg !852, !tbaa !779
  %78 = sext i32 %77 to i64, !dbg !852
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !852
  %80 = load i8*, i8** %79, align 8, !dbg !852, !tbaa !684
  %81 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %80) #10, !dbg !852
  %82 = load i32, i32* @optind, align 4, !dbg !853, !tbaa !779
  %83 = sext i32 %82 to i64, !dbg !855
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !855
  %85 = load i8*, i8** %84, align 8, !dbg !855, !tbaa !684
  %86 = tail call zeroext i1 @print_group_list(i8* %85, i32 %74, i32 %76, i32 %76, i1 zeroext true, i8 signext 32) #10, !dbg !856
  %87 = select i1 %86, i8 %59, i8 0, !dbg !857
  call void @llvm.dbg.value(metadata i8 %87, metadata !735, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 10, metadata !818, metadata !DIExpression()) #10, !dbg !858
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !860, !tbaa !684
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 5, !dbg !860
  %90 = load i8*, i8** %89, align 8, !dbg !860, !tbaa !827
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 6, !dbg !860
  %92 = load i8*, i8** %91, align 8, !dbg !860, !tbaa !831
  %93 = icmp ult i8* %90, %92, !dbg !860
  br i1 %93, label %96, label %94, !dbg !860, !prof !832

; <label>:94:                                     ; preds = %72
  %95 = tail call i32 @__overflow(%struct._IO_FILE* %88, i32 10) #10, !dbg !860
  br label %98, !dbg !860

; <label>:96:                                     ; preds = %72
  %97 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !860
  store i8* %97, i8** %89, align 8, !dbg !860, !tbaa !827
  store i8 10, i8* %90, align 1, !dbg !860, !tbaa !833
  br label %98, !dbg !860

; <label>:98:                                     ; preds = %96, %94, %65
  %99 = phi i8 [ 0, %65 ], [ %87, %94 ], [ %87, %96 ], !dbg !861
  %100 = load i32, i32* @optind, align 4, !dbg !862, !tbaa !779
  %101 = add nsw i32 %100, 1, !dbg !862
  store i32 %101, i32* @optind, align 4, !dbg !862, !tbaa !779
  call void @llvm.dbg.value(metadata i8 %99, metadata !735, metadata !DIExpression()), !dbg !763
  %102 = icmp slt i32 %101, %0, !dbg !783
  br i1 %102, label %57, label %103, !dbg !784, !llvm.loop !863

; <label>:103:                                    ; preds = %98, %17, %55, %53
  %104 = phi i8 [ %46, %53 ], [ %46, %55 ], [ 1, %17 ], [ %99, %98 ], !dbg !763
  call void @llvm.dbg.value(metadata i8 %104, metadata !735, metadata !DIExpression()), !dbg !763
  %105 = and i8 %104, 1, !dbg !865
  %106 = xor i8 %105, 1, !dbg !865
  %107 = zext i8 %106 to i32, !dbg !865
  ret i32 %107, !dbg !866
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #7 !dbg !867 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !871, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 %1, metadata !872, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %2, metadata !873, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %3, metadata !874, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i1 %4, metadata !875, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8 %5, metadata !876, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8 1, metadata !877, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !878, metadata !DIExpression()), !dbg !901
  %8 = icmp ne i8* %0, null, !dbg !902
  br i1 %8, label %9, label %13, !dbg !904

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !905
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !878, metadata !DIExpression()), !dbg !901
  %11 = icmp ne %struct.passwd* %10, null, !dbg !907
  %12 = zext i1 %11 to i8, !dbg !909
  br label %13, !dbg !909

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !910
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !910
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !878, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i8 %14, metadata !877, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %2, metadata !911, metadata !DIExpression()) #10, !dbg !928
  call void @llvm.dbg.value(metadata i1 %4, metadata !916, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !917, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #10, !dbg !933
  br i1 %4, label %21, label %16, !dbg !934

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !935
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8* %27, metadata !927, metadata !DIExpression()) #10, !dbg !938
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !684
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !939
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !940
  call void @llvm.dbg.value(metadata %struct.group* %22, metadata !917, metadata !DIExpression()) #10, !dbg !932
  %23 = icmp eq %struct.group* %22, null, !dbg !943
  br i1 %23, label %24, label %30, !dbg !945

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !946
  call void @llvm.dbg.value(metadata i32 %2, metadata !911, metadata !DIExpression()) #10, !dbg !928
  %26 = zext i32 %2 to i64, !dbg !948
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !949
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()) #10, !dbg !933
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8* %27, metadata !927, metadata !DIExpression()) #10, !dbg !938
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !684
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !939
  br label %35, !dbg !950

; <label>:30:                                     ; preds = %21
  call void @llvm.dbg.value(metadata %struct.group* %22, metadata !917, metadata !DIExpression()) #10, !dbg !932
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !951
  %32 = load i8*, i8** %31, align 8, !dbg !951, !tbaa !952
  call void @llvm.dbg.value(metadata i8* %27, metadata !927, metadata !DIExpression()) #10, !dbg !938
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !684
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !939
  br label %35, !dbg !950

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  call void @llvm.dbg.value(metadata i8 %36, metadata !877, metadata !DIExpression()), !dbg !900
  %37 = icmp eq i32 %3, %2, !dbg !954
  br i1 %37, label %70, label %38, !dbg !956

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !957, !tbaa !684
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !957
  %41 = load i8*, i8** %40, align 8, !dbg !957, !tbaa !827
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !957
  %43 = load i8*, i8** %42, align 8, !dbg !957, !tbaa !831
  %44 = icmp ult i8* %41, %43, !dbg !957
  br i1 %44, label %48, label %45, !dbg !957, !prof !832

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !963
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !957
  br label %50, !dbg !957

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !957
  store i8* %49, i8** %40, align 8, !dbg !957, !tbaa !827
  store i8 %5, i8* %41, align 1, !dbg !957, !tbaa !833
  br label %50, !dbg !957

; <label>:50:                                     ; preds = %45, %48
  call void @llvm.dbg.value(metadata i32 %3, metadata !911, metadata !DIExpression()) #10, !dbg !964
  call void @llvm.dbg.value(metadata i1 %4, metadata !916, metadata !DIExpression()) #10, !dbg !967
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !917, metadata !DIExpression()) #10, !dbg !968
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #10, !dbg !969
  br i1 %4, label %56, label %51, !dbg !970

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !971
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !973
  call void @llvm.dbg.value(metadata i8* %62, metadata !927, metadata !DIExpression()) #10, !dbg !974
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !975, !tbaa !684
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !975
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !976
  call void @llvm.dbg.value(metadata %struct.group* %57, metadata !917, metadata !DIExpression()) #10, !dbg !968
  %58 = icmp eq %struct.group* %57, null, !dbg !977
  br i1 %58, label %59, label %65, !dbg !978

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !979
  call void @llvm.dbg.value(metadata i32 %3, metadata !911, metadata !DIExpression()) #10, !dbg !964
  %61 = zext i32 %3 to i64, !dbg !980
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !981
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()) #10, !dbg !969
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !973
  call void @llvm.dbg.value(metadata i8* %62, metadata !927, metadata !DIExpression()) #10, !dbg !974
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !975, !tbaa !684
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !975
  br label %70, !dbg !982

; <label>:65:                                     ; preds = %56
  call void @llvm.dbg.value(metadata %struct.group* %57, metadata !917, metadata !DIExpression()) #10, !dbg !968
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !983
  %67 = load i8*, i8** %66, align 8, !dbg !983, !tbaa !952
  call void @llvm.dbg.value(metadata i8* %62, metadata !927, metadata !DIExpression()) #10, !dbg !974
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !975, !tbaa !684
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !975
  br label %70, !dbg !982

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ], !dbg !984
  call void @llvm.dbg.value(metadata i8 %71, metadata !877, metadata !DIExpression()), !dbg !900
  %72 = bitcast i32** %7 to i8*, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #10, !dbg !985
  %73 = icmp eq %struct.passwd* %15, null, !dbg !986
  br i1 %73, label %77, label %74, !dbg !986

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !987
  %76 = load i32, i32* %75, align 4, !dbg !987, !tbaa !851
  br label %77, !dbg !986

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !986
  call void @llvm.dbg.value(metadata i32** %7, metadata !889, metadata !DIExpression(DW_OP_deref)), !dbg !988
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 %79, metadata !891, metadata !DIExpression()), !dbg !990
  %80 = icmp slt i32 %79, 0, !dbg !991
  br i1 %80, label %86, label %81, !dbg !993

; <label>:81:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, metadata !892, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %71, metadata !877, metadata !DIExpression()), !dbg !900
  %82 = icmp eq i32 %79, 0, !dbg !995
  br i1 %82, label %142, label %83, !dbg !997

; <label>:83:                                     ; preds = %81
  %84 = zext i8 %5 to i32
  %85 = zext i32 %79 to i64
  br label %94, !dbg !997

; <label>:86:                                     ; preds = %77
  %87 = tail call i32* @__errno_location() #17, !dbg !998
  %88 = load i32, i32* %87, align 4, !dbg !998, !tbaa !779
  br i1 %8, label %89, label %92, !dbg !1002

; <label>:89:                                     ; preds = %86
  %90 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1003
  %91 = call i8* @quote(i8* nonnull %0) #10, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %90, i8* %91) #10, !dbg !1006
  br label %141, !dbg !1007

; <label>:92:                                     ; preds = %86
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.35, i64 0, i64 0), i32 5) #10, !dbg !1008
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %93) #10, !dbg !1009
  br label %141

; <label>:94:                                     ; preds = %137, %83
  %95 = phi i64 [ 0, %83 ], [ %139, %137 ]
  %96 = phi i8 [ %71, %83 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !892, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %96, metadata !877, metadata !DIExpression()), !dbg !900
  %97 = load i32*, i32** %7, align 8, !dbg !1010, !tbaa !684
  call void @llvm.dbg.value(metadata i32* %97, metadata !889, metadata !DIExpression()), !dbg !988
  %98 = getelementptr inbounds i32, i32* %97, i64 %95, !dbg !1010
  %99 = load i32, i32* %98, align 4, !dbg !1010, !tbaa !779
  %100 = icmp eq i32 %99, %2, !dbg !1012
  %101 = icmp eq i32 %99, %3, !dbg !1013
  %102 = or i1 %100, %101, !dbg !1014
  br i1 %102, label %137, label %103, !dbg !1014

; <label>:103:                                    ; preds = %94
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1015, !tbaa !684
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1015
  %106 = load i8*, i8** %105, align 8, !dbg !1015, !tbaa !827
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1015
  %108 = load i8*, i8** %107, align 8, !dbg !1015, !tbaa !831
  %109 = icmp ult i8* %106, %108, !dbg !1015
  br i1 %109, label %112, label %110, !dbg !1015, !prof !832

; <label>:110:                                    ; preds = %103
  %111 = call i32 @__overflow(%struct._IO_FILE* %104, i32 %84) #10, !dbg !1015
  br label %114, !dbg !1015

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1015
  store i8* %113, i8** %105, align 8, !dbg !1015, !tbaa !827
  store i8 %5, i8* %106, align 1, !dbg !1015, !tbaa !833
  br label %114, !dbg !1015

; <label>:114:                                    ; preds = %110, %112
  %115 = load i32*, i32** %7, align 8, !dbg !1018, !tbaa !684
  call void @llvm.dbg.value(metadata i32* %115, metadata !889, metadata !DIExpression()), !dbg !988
  %116 = getelementptr inbounds i32, i32* %115, i64 %95, !dbg !1018
  %117 = load i32, i32* %116, align 4, !dbg !1018, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %117, metadata !911, metadata !DIExpression()) #10, !dbg !1020
  call void @llvm.dbg.value(metadata i1 %4, metadata !916, metadata !DIExpression()) #10, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !917, metadata !DIExpression()) #10, !dbg !1023
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #10, !dbg !1024
  br i1 %4, label %123, label %118, !dbg !1025

; <label>:118:                                    ; preds = %114
  %119 = zext i32 %117 to i64, !dbg !1026
  %120 = call i8* @umaxtostr(i64 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %129, metadata !927, metadata !DIExpression()) #10, !dbg !1029
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1030, !tbaa !684
  %122 = call i32 @fputs_unlocked(i8* %120, %struct._IO_FILE* %121) #10, !dbg !1030
  br label %137

; <label>:123:                                    ; preds = %114
  %124 = call %struct.group* @getgrgid(i32 %117) #10, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.group* %124, metadata !917, metadata !DIExpression()) #10, !dbg !1023
  %125 = icmp eq %struct.group* %124, null, !dbg !1032
  br i1 %125, label %126, label %132, !dbg !1033

; <label>:126:                                    ; preds = %123
  %127 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %117, metadata !911, metadata !DIExpression()) #10, !dbg !1020
  %128 = zext i32 %117 to i64, !dbg !1035
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127, i64 %128) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()) #10, !dbg !1024
  %129 = call i8* @umaxtostr(i64 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %129, metadata !927, metadata !DIExpression()) #10, !dbg !1029
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1030, !tbaa !684
  %131 = call i32 @fputs_unlocked(i8* %129, %struct._IO_FILE* %130) #10, !dbg !1030
  br label %137, !dbg !1037

; <label>:132:                                    ; preds = %123
  call void @llvm.dbg.value(metadata %struct.group* %124, metadata !917, metadata !DIExpression()) #10, !dbg !1023
  %133 = getelementptr inbounds %struct.group, %struct.group* %124, i64 0, i32 0, !dbg !1038
  %134 = load i8*, i8** %133, align 8, !dbg !1038, !tbaa !952
  call void @llvm.dbg.value(metadata i8* %129, metadata !927, metadata !DIExpression()) #10, !dbg !1029
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1030, !tbaa !684
  %136 = call i32 @fputs_unlocked(i8* %134, %struct._IO_FILE* %135) #10, !dbg !1030
  br label %137, !dbg !1037

; <label>:137:                                    ; preds = %132, %118, %126, %94
  %138 = phi i8 [ %96, %94 ], [ 0, %126 ], [ %96, %118 ], [ %96, %132 ], !dbg !984
  %139 = add nuw nsw i64 %95, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i32 undef, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !994
  call void @llvm.dbg.value(metadata i8 %138, metadata !877, metadata !DIExpression()), !dbg !900
  %140 = icmp eq i64 %139, %85, !dbg !995
  br i1 %140, label %142, label %94, !dbg !997, !llvm.loop !1040

; <label>:141:                                    ; preds = %92, %89
  call void @llvm.dbg.value(metadata i8 undef, metadata !877, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1042
  br label %148

; <label>:142:                                    ; preds = %137, %81
  %143 = phi i8 [ %71, %81 ], [ %138, %137 ], !dbg !1043
  call void @llvm.dbg.value(metadata i8 %143, metadata !877, metadata !DIExpression()), !dbg !900
  %144 = bitcast i32** %7 to i8**, !dbg !1044
  %145 = load i8*, i8** %144, align 8, !dbg !1044, !tbaa !684
  call void @llvm.dbg.value(metadata i32** %7, metadata !889, metadata !DIExpression(DW_OP_deref)), !dbg !988
  call void @free(i8* %145) #10, !dbg !1045
  call void @llvm.dbg.value(metadata i8 undef, metadata !877, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1042
  %146 = and i8 %143, 1, !dbg !1046
  %147 = icmp ne i8 %146, 0, !dbg !1046
  br label %148

; <label>:148:                                    ; preds = %141, %142
  %149 = phi i1 [ %147, %142 ], [ false, %141 ]
  ret i1 %149, !dbg !1047
}

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #7 !dbg !912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !911, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i1 %1, metadata !916, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !917, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()), !dbg !1051
  br i1 %1, label %5, label %3, !dbg !1052

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1053
  br label %14, !dbg !1052

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !1055
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !917, metadata !DIExpression()), !dbg !1050
  %7 = icmp eq %struct.group* %6, null, !dbg !1056
  br i1 %7, label %8, label %11, !dbg !1057

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %0, metadata !911, metadata !DIExpression()), !dbg !1048
  %10 = zext i32 %0 to i64, !dbg !1059
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()), !dbg !1051
  br label %14, !dbg !1061

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !917, metadata !DIExpression()), !dbg !1050
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1062
  %13 = load i8*, i8** %12, align 8, !dbg !1062, !tbaa !952
  br label %18, !dbg !1063

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1053
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !917, metadata !DIExpression()), !dbg !1050
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1064
  br label %18, !dbg !1063

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1063
  call void @llvm.dbg.value(metadata i8* %20, metadata !927, metadata !DIExpression()), !dbg !1065
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1066, !tbaa !684
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1066
  ret i1 %19, !dbg !1067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1070, metadata !DIExpression()), !dbg !1071
  store i8* %0, i8** @file_name, align 8, !dbg !1072, !tbaa !684
  ret void, !dbg !1073
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1074 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1078, metadata !DIExpression()), !dbg !1079
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1080, !tbaa !1081
  ret void, !dbg !1083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1084 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1091, !tbaa !684
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1092
  %3 = icmp eq i32 %2, 0, !dbg !1093
  br i1 %3, label %22, label %4, !dbg !1094

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1095, !tbaa !1081, !range !1096
  %6 = icmp eq i8 %5, 0, !dbg !1095
  br i1 %6, label %11, label %7, !dbg !1097

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1098
  %9 = load i32, i32* %8, align 4, !dbg !1098, !tbaa !779
  %10 = icmp eq i32 %9, 32, !dbg !1099
  br i1 %10, label %22, label %11, !dbg !1100

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %12, metadata !1088, metadata !DIExpression()), !dbg !1102
  %13 = load i8*, i8** @file_name, align 8, !dbg !1103, !tbaa !684
  %14 = icmp eq i8* %13, null, !dbg !1103
  %15 = tail call i32* @__errno_location() #17, !dbg !1105
  %16 = load i32, i32* %15, align 4, !dbg !1105, !tbaa !779
  br i1 %14, label %19, label %17, !dbg !1106

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1107
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1108
  br label %20, !dbg !1108

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !1109
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1110, !tbaa !779
  tail call void @_exit(i32 %21) #15, !dbg !1111
  unreachable, !dbg !1111

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1112, !tbaa !684
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1114
  %25 = icmp eq i32 %24, 0, !dbg !1115
  br i1 %25, label %28, label %26, !dbg !1116

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1117, !tbaa !779
  tail call void @_exit(i32 %27) #15, !dbg !1118
  unreachable, !dbg !1118

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1119
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1120 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %1, metadata !1126, metadata !DIExpression()), !dbg !1129
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %3, metadata !1127, metadata !DIExpression()), !dbg !1131
  store i8 0, i8* %3, align 1, !dbg !1132, !tbaa !833
  br label %4, !dbg !1133

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8* %6, metadata !1127, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %5, metadata !1125, metadata !DIExpression()), !dbg !1128
  %7 = urem i64 %5, 10, !dbg !1137
  %8 = trunc i64 %7 to i8, !dbg !1138
  %9 = or i8 %8, 48, !dbg !1138
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %10, metadata !1127, metadata !DIExpression()), !dbg !1131
  store i8 %9, i8* %10, align 1, !dbg !1140, !tbaa !833
  %11 = udiv i64 %5, 10, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %11, metadata !1125, metadata !DIExpression()), !dbg !1128
  %12 = icmp ugt i64 %5, 9, !dbg !1142
  br i1 %12, label %4, label %13, !dbg !1143, !llvm.loop !1144

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1127, metadata !DIExpression()), !dbg !1131
  ret i8* %10, !dbg !1147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1150, metadata !DIExpression()), !dbg !1153
  %2 = icmp eq i8* %0, null, !dbg !1154
  br i1 %2, label %3, label %6, !dbg !1156

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1157, !tbaa !684
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1159
  tail call void @abort() #15, !dbg !1160
  unreachable, !dbg !1160

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %7, metadata !1151, metadata !DIExpression()), !dbg !1162
  %8 = icmp eq i8* %7, null, !dbg !1163
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1164
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %10, metadata !1152, metadata !DIExpression()), !dbg !1166
  %11 = ptrtoint i8* %10 to i64, !dbg !1167
  %12 = ptrtoint i8* %0 to i64, !dbg !1167
  %13 = sub i64 %11, %12, !dbg !1167
  %14 = icmp sgt i64 %13, 6, !dbg !1169
  br i1 %14, label %15, label %24, !dbg !1170

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1171
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #14, !dbg !1172
  %18 = icmp eq i32 %17, 0, !dbg !1173
  br i1 %18, label %19, label %24, !dbg !1174

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1150, metadata !DIExpression()), !dbg !1153
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #14, !dbg !1175
  %21 = icmp eq i32 %20, 0, !dbg !1178
  br i1 %21, label %22, label %24, !dbg !1179

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %23, metadata !1150, metadata !DIExpression()), !dbg !1153
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1182, !tbaa !684
  br label %24, !dbg !1183

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1150, metadata !DIExpression()), !dbg !1153
  store i8* %25, i8** @program_name, align 8, !dbg !1184, !tbaa !684
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1185, !tbaa !684
  ret void, !dbg !1186
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1187 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1192, metadata !DIExpression()), !dbg !1195
  %2 = tail call i32* @__errno_location() #17, !dbg !1196
  %3 = load i32, i32* %2, align 4, !dbg !1196, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %3, metadata !1193, metadata !DIExpression()), !dbg !1197
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1198
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1198
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1198
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1199
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1199
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1194, metadata !DIExpression()), !dbg !1200
  store i32 %3, i32* %2, align 4, !dbg !1201, !tbaa !779
  ret %struct.quoting_options* %8, !dbg !1202
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1203 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1209, metadata !DIExpression()), !dbg !1210
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1211
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1211
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1212
  %5 = load i32, i32* %4, align 8, !dbg !1212, !tbaa !1213
  ret i32 %5, !dbg !1215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1216 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1220, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i32 %1, metadata !1221, metadata !DIExpression()), !dbg !1223
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1224
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1224
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1225
  store i32 %1, i32* %5, align 8, !dbg !1226, !tbaa !1213
  ret void, !dbg !1227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1228 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1232, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %1, metadata !1233, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %2, metadata !1234, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %1, metadata !1235, metadata !DIExpression()), !dbg !1243
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1244
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1244
  %6 = lshr i8 %1, 5, !dbg !1245
  %7 = zext i8 %6 to i64, !dbg !1245
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1246
  call void @llvm.dbg.value(metadata i32* %8, metadata !1236, metadata !DIExpression()), !dbg !1247
  %9 = and i8 %1, 31, !dbg !1248
  %10 = zext i8 %9 to i32, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %10, metadata !1238, metadata !DIExpression()), !dbg !1249
  %11 = load i32, i32* %8, align 4, !dbg !1250, !tbaa !779
  %12 = lshr i32 %11, %10, !dbg !1251
  %13 = and i32 %12, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %13, metadata !1239, metadata !DIExpression()), !dbg !1253
  %14 = and i32 %2, 1, !dbg !1254
  %15 = xor i32 %13, %14, !dbg !1255
  %16 = shl i32 %15, %10, !dbg !1256
  %17 = xor i32 %16, %11, !dbg !1257
  store i32 %17, i32* %8, align 4, !dbg !1257, !tbaa !779
  ret i32 %13, !dbg !1258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1267
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1268
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1263, metadata !DIExpression()), !dbg !1266
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1271
  %6 = load i32, i32* %5, align 4, !dbg !1271, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %6, metadata !1265, metadata !DIExpression()), !dbg !1273
  store i32 %1, i32* %5, align 4, !dbg !1274, !tbaa !1272
  ret i32 %6, !dbg !1275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1276 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %2, metadata !1282, metadata !DIExpression()), !dbg !1285
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1286
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1280, metadata !DIExpression()), !dbg !1283
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1289
  store i32 10, i32* %6, align 8, !dbg !1290, !tbaa !1213
  %7 = icmp ne i8* %1, null, !dbg !1291
  %8 = icmp ne i8* %2, null, !dbg !1293
  %9 = and i1 %7, %8, !dbg !1294
  br i1 %9, label %11, label %10, !dbg !1294

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1295
  unreachable, !dbg !1295

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1296
  store i8* %1, i8** %12, align 8, !dbg !1297, !tbaa !1298
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1299
  store i8* %2, i8** %13, align 8, !dbg !1300, !tbaa !1301
  ret void, !dbg !1302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1307, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %1, metadata !1308, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %2, metadata !1309, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %3, metadata !1310, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1311, metadata !DIExpression()), !dbg !1319
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1320
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1312, metadata !DIExpression()), !dbg !1321
  %8 = tail call i32* @__errno_location() #17, !dbg !1322
  %9 = load i32, i32* %8, align 4, !dbg !1322, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %9, metadata !1313, metadata !DIExpression()), !dbg !1323
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1324
  %11 = load i32, i32* %10, align 8, !dbg !1324, !tbaa !1213
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1325
  %13 = load i32, i32* %12, align 4, !dbg !1325, !tbaa !1272
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1326
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1327
  %16 = load i8*, i8** %15, align 8, !dbg !1327, !tbaa !1298
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1328
  %18 = load i8*, i8** %17, align 8, !dbg !1328, !tbaa !1301
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %19, metadata !1314, metadata !DIExpression()), !dbg !1330
  store i32 %9, i32* %8, align 4, !dbg !1331, !tbaa !779
  ret i64 %19, !dbg !1332
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1333 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %1, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %2, metadata !1341, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %3, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 %4, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %5, metadata !1344, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32* %6, metadata !1345, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8* %7, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %8, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 0, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8* null, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1352, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1416
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1417
  %14 = icmp eq i64 %13, 1, !dbg !1418
  %15 = lshr i32 %5, 1, !dbg !1419
  %16 = trunc i32 %15 to i8, !dbg !1419
  %17 = and i8 %16, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i8 %17, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 0, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 0, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 1, metadata !1358, metadata !DIExpression()), !dbg !1422
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1423

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1413
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1414
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1415
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1416
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1424
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1420
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1421
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1422
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %39, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %38, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %37, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %36, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %35, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %34, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %33, metadata !1352, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %32, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %31, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %30, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %29, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %28, metadata !1343, metadata !DIExpression()), !dbg !1407
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
  ], !dbg !1426

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %36, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 5, metadata !1343, metadata !DIExpression()), !dbg !1407
  br label %93, !dbg !1427

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 5, metadata !1343, metadata !DIExpression()), !dbg !1407
  %43 = and i8 %36, 1, !dbg !1428
  %44 = icmp eq i8 %43, 0, !dbg !1428
  br i1 %44, label %45, label %93, !dbg !1427

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1430
  br i1 %46, label %93, label %47, !dbg !1433

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1430, !tbaa !833
  br label %93, !dbg !1430

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %49, metadata !1346, metadata !DIExpression()), !dbg !1410
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %50, metadata !1347, metadata !DIExpression()), !dbg !1411
  br label %51, !dbg !1439

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %52, metadata !1346, metadata !DIExpression()), !dbg !1410
  %54 = and i8 %36, 1, !dbg !1440
  %55 = icmp eq i8 %54, 0, !dbg !1440
  br i1 %55, label %56, label %71, !dbg !1442

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1412
  %57 = load i8, i8* %52, align 1, !dbg !1443, !tbaa !833
  %58 = icmp eq i8 %57, 0, !dbg !1446
  br i1 %58, label %71, label %59, !dbg !1446

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %62, metadata !1349, metadata !DIExpression()), !dbg !1412
  %63 = icmp ult i64 %62, %40, !dbg !1447
  br i1 %63, label %64, label %66, !dbg !1450

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1447
  store i8 %60, i8* %65, align 1, !dbg !1447, !tbaa !833
  br label %66, !dbg !1447

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1450
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %68, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %67, metadata !1349, metadata !DIExpression()), !dbg !1412
  %69 = load i8, i8* %68, align 1, !dbg !1443, !tbaa !833
  %70 = icmp eq i8 %69, 0, !dbg !1446
  br i1 %70, label %71, label %59, !dbg !1446, !llvm.loop !1452

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1412
  call void @llvm.dbg.value(metadata i64 %72, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %53, metadata !1351, metadata !DIExpression()), !dbg !1414
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %73, metadata !1352, metadata !DIExpression()), !dbg !1415
  br label %93, !dbg !1455

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1416
  br label %75, !dbg !1456

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1424
  call void @llvm.dbg.value(metadata i8 %76, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1419
  br label %77, !dbg !1457

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1416
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1424
  call void @llvm.dbg.value(metadata i8 %79, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %78, metadata !1353, metadata !DIExpression()), !dbg !1416
  %80 = and i8 %79, 1, !dbg !1458
  %81 = icmp eq i8 %80, 0, !dbg !1458
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1460
  br label %83, !dbg !1460

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1461
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1419
  call void @llvm.dbg.value(metadata i8 %85, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %84, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  %86 = and i8 %85, 1, !dbg !1462
  %87 = icmp eq i8 %86, 0, !dbg !1462
  br i1 %87, label %88, label %93, !dbg !1464

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1465
  br i1 %89, label %93, label %90, !dbg !1468

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1465, !tbaa !833
  br label %93, !dbg !1465

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1419
  br label %93, !dbg !1469

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1470
  unreachable, !dbg !1470

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1412
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], !dbg !1424
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1424
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1424
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %101, metadata !1355, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %99, metadata !1352, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %97, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 0, metadata !1348, metadata !DIExpression()), !dbg !1472
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
  br label %121, !dbg !1473

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1474
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1412
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1413
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1420
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1421
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1422
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %125, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %122, metadata !1348, metadata !DIExpression()), !dbg !1472
  %130 = icmp eq i64 %125, -1, !dbg !1475
  br i1 %130, label %131, label %135, !dbg !1476

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1477
  %133 = load i8, i8* %132, align 1, !dbg !1477, !tbaa !833
  %134 = icmp eq i8 %133, 0, !dbg !1478
  br i1 %134, label %617, label %137, !dbg !1479

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1480
  br i1 %136, label %617, label %137, !dbg !1479

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1364, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()), !dbg !1483
  br i1 %107, label %138, label %153, !dbg !1484

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1486
  %140 = and i1 %108, %130, !dbg !1487
  br i1 %140, label %141, label %143, !dbg !1487

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %142, metadata !1342, metadata !DIExpression()), !dbg !1406
  br label %143, !dbg !1489

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1342, metadata !DIExpression()), !dbg !1406
  %145 = icmp ugt i64 %139, %144, !dbg !1490
  br i1 %145, label %153, label %146, !dbg !1491

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1492
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1493
  %149 = icmp ne i32 %148, 0, !dbg !1494
  %150 = or i1 %149, %110, !dbg !1495
  %151 = xor i1 %149, true, !dbg !1495
  %152 = zext i1 %151 to i8, !dbg !1495
  br i1 %150, label %153, label %661, !dbg !1495

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1496
  call void @llvm.dbg.value(metadata i8 %155, metadata !1364, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %154, metadata !1342, metadata !DIExpression()), !dbg !1406
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1497
  %157 = load i8, i8* %156, align 1, !dbg !1497, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %157, metadata !1359, metadata !DIExpression()), !dbg !1498
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
  ], !dbg !1499

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1500

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1501

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()), !dbg !1482
  %161 = and i8 %126, 1, !dbg !1505
  %162 = icmp eq i8 %161, 0, !dbg !1505
  %163 = and i1 %114, %162, !dbg !1505
  br i1 %163, label %164, label %180, !dbg !1505

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1507
  br i1 %165, label %166, label %168, !dbg !1511

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1507
  store i8 39, i8* %167, align 1, !dbg !1507, !tbaa !833
  br label %168, !dbg !1507

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %169, metadata !1349, metadata !DIExpression()), !dbg !1412
  %170 = icmp ult i64 %169, %129, !dbg !1512
  br i1 %170, label %171, label %173, !dbg !1515

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1512
  store i8 36, i8* %172, align 1, !dbg !1512, !tbaa !833
  br label %173, !dbg !1512

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %174, metadata !1349, metadata !DIExpression()), !dbg !1412
  %175 = icmp ult i64 %174, %129, !dbg !1516
  br i1 %175, label %176, label %178, !dbg !1519

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1516
  store i8 39, i8* %177, align 1, !dbg !1516, !tbaa !833
  br label %178, !dbg !1516

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %179, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 1, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %180, !dbg !1520

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1471
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %182, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %181, metadata !1349, metadata !DIExpression()), !dbg !1412
  %183 = icmp ult i64 %181, %129, !dbg !1521
  br i1 %183, label %184, label %186, !dbg !1524

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1521
  store i8 92, i8* %185, align 1, !dbg !1521, !tbaa !833
  br label %186, !dbg !1521

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %187, metadata !1349, metadata !DIExpression()), !dbg !1412
  br i1 %104, label %188, label %478, !dbg !1525

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1527
  %190 = icmp ult i64 %189, %154, !dbg !1528
  br i1 %190, label %191, label %467, !dbg !1529

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1530
  %193 = load i8, i8* %192, align 1, !dbg !1530, !tbaa !833
  %194 = add i8 %193, -48, !dbg !1531
  %195 = icmp ult i8 %194, 10, !dbg !1531
  br i1 %195, label %196, label %467, !dbg !1531

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1532
  br i1 %197, label %198, label %200, !dbg !1536

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1532
  store i8 48, i8* %199, align 1, !dbg !1532, !tbaa !833
  br label %200, !dbg !1532

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %201, metadata !1349, metadata !DIExpression()), !dbg !1412
  %202 = icmp ult i64 %201, %129, !dbg !1537
  br i1 %202, label %203, label %205, !dbg !1540

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1537
  store i8 48, i8* %204, align 1, !dbg !1537, !tbaa !833
  br label %205, !dbg !1537

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %206, metadata !1349, metadata !DIExpression()), !dbg !1412
  br label %467, !dbg !1541

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1542

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1543

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1544

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1546

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1548
  %213 = icmp ult i64 %212, %154, !dbg !1549
  br i1 %213, label %214, label %467, !dbg !1550

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1551
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1552
  %217 = load i8, i8* %216, align 1, !dbg !1552, !tbaa !833
  %218 = icmp eq i8 %217, 63, !dbg !1553
  br i1 %218, label %219, label %467, !dbg !1554

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1555
  %221 = load i8, i8* %220, align 1, !dbg !1555, !tbaa !833
  %222 = sext i8 %221 to i32, !dbg !1555
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
  ], !dbg !1556

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1557

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %212, metadata !1348, metadata !DIExpression()), !dbg !1472
  %225 = icmp ult i64 %123, %129, !dbg !1559
  br i1 %225, label %226, label %228, !dbg !1562

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1559
  store i8 63, i8* %227, align 1, !dbg !1559, !tbaa !833
  br label %228, !dbg !1559

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %229, metadata !1349, metadata !DIExpression()), !dbg !1412
  %230 = icmp ult i64 %229, %129, !dbg !1563
  br i1 %230, label %231, label %233, !dbg !1566

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1563
  store i8 34, i8* %232, align 1, !dbg !1563, !tbaa !833
  br label %233, !dbg !1563

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %234, metadata !1349, metadata !DIExpression()), !dbg !1412
  %235 = icmp ult i64 %234, %129, !dbg !1567
  br i1 %235, label %236, label %238, !dbg !1570

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1567
  store i8 34, i8* %237, align 1, !dbg !1567, !tbaa !833
  br label %238, !dbg !1567

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %239, metadata !1349, metadata !DIExpression()), !dbg !1412
  %240 = icmp ult i64 %239, %129, !dbg !1571
  br i1 %240, label %241, label %243, !dbg !1574

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1571
  store i8 63, i8* %242, align 1, !dbg !1571, !tbaa !833
  br label %243, !dbg !1571

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %244, metadata !1349, metadata !DIExpression()), !dbg !1412
  br label %467, !dbg !1575

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1363, metadata !DIExpression()), !dbg !1576
  br label %255, !dbg !1577

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1363, metadata !DIExpression()), !dbg !1576
  br label %255, !dbg !1578

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1363, metadata !DIExpression()), !dbg !1576
  br label %253, !dbg !1579

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1363, metadata !DIExpression()), !dbg !1576
  br label %253, !dbg !1580

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1363, metadata !DIExpression()), !dbg !1576
  br label %255, !dbg !1581

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1363, metadata !DIExpression()), !dbg !1576
  br i1 %114, label %251, label %252, !dbg !1582

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1583

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1586

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1588
  call void @llvm.dbg.value(metadata i8 %254, metadata !1363, metadata !DIExpression()), !dbg !1576
  br i1 %113, label %255, label %661, !dbg !1589

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1588
  call void @llvm.dbg.value(metadata i8 %256, metadata !1363, metadata !DIExpression()), !dbg !1576
  br i1 %103, label %524, label %478, !dbg !1591

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1592
  br i1 %258, label %259, label %264, !dbg !1594

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1595, !tbaa !833
  %261 = icmp ne i8 %260, 0, !dbg !1596
  %262 = icmp ne i64 %122, 0, !dbg !1597
  %263 = or i1 %262, %261, !dbg !1599
  br i1 %263, label %467, label %270, !dbg !1599

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1600
  %266 = icmp ne i64 %122, 0, !dbg !1597
  %267 = or i1 %266, %265, !dbg !1594
  br i1 %267, label %467, label %270, !dbg !1594

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1597
  br i1 %269, label %270, label %467, !dbg !1601

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()), !dbg !1483
  br label %271, !dbg !1602

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1588
  call void @llvm.dbg.value(metadata i8 %272, metadata !1366, metadata !DIExpression()), !dbg !1483
  br i1 %113, label %467, label %661, !dbg !1603

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()), !dbg !1483
  br i1 %114, label %274, label %467, !dbg !1605

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1606

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1609
  %277 = icmp ne i64 %124, 0, !dbg !1611
  %278 = or i1 %277, %276, !dbg !1612
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1612
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %280, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %279, metadata !1350, metadata !DIExpression()), !dbg !1413
  %281 = icmp ult i64 %123, %280, !dbg !1613
  br i1 %281, label %282, label %284, !dbg !1616

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1613
  store i8 39, i8* %283, align 1, !dbg !1613, !tbaa !833
  br label %284, !dbg !1613

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %285, metadata !1349, metadata !DIExpression()), !dbg !1412
  %286 = icmp ult i64 %285, %280, !dbg !1617
  br i1 %286, label %287, label %289, !dbg !1620

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1617
  store i8 92, i8* %288, align 1, !dbg !1617, !tbaa !833
  br label %289, !dbg !1617

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %290, metadata !1349, metadata !DIExpression()), !dbg !1412
  %291 = icmp ult i64 %290, %280, !dbg !1621
  br i1 %291, label %292, label %294, !dbg !1624

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1621
  store i8 39, i8* %293, align 1, !dbg !1621, !tbaa !833
  br label %294, !dbg !1621

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %295, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %467, !dbg !1625

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1626

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1367, metadata !DIExpression()), !dbg !1627
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1628
  %299 = load i16*, i16** %298, align 8, !dbg !1628, !tbaa !684
  %300 = zext i8 %157 to i64, !dbg !1628
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1628
  %302 = load i16, i16* %301, align 2, !dbg !1628, !tbaa !1630
  %303 = lshr i16 %302, 14, !dbg !1631
  %304 = trunc i16 %303 to i8, !dbg !1631
  %305 = and i8 %304, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i8 %305, metadata !1370, metadata !DIExpression()), !dbg !1632
  br label %359, !dbg !1633

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1634
  store i64 0, i64* %10, align 8, !dbg !1635
  call void @llvm.dbg.value(metadata i64 0, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, metadata !1370, metadata !DIExpression()), !dbg !1632
  %307 = icmp eq i64 %154, -1, !dbg !1636
  br i1 %307, label %308, label %310, !dbg !1638

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %309, metadata !1342, metadata !DIExpression()), !dbg !1406
  br label %310, !dbg !1640

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1641
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  br label %312, !dbg !1642

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1643
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1644
  call void @llvm.dbg.value(metadata i8 %314, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1645
  %315 = add i64 %313, %122, !dbg !1646
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1647
  %317 = sub i64 %311, %315, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1371, metadata !DIExpression(DW_OP_deref)), !dbg !1649
  call void @llvm.dbg.value(metadata i32* %12, metadata !1389, metadata !DIExpression(DW_OP_deref)), !dbg !1650
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %318, metadata !1392, metadata !DIExpression()), !dbg !1652
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1653

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  %320 = icmp ugt i64 %311, %315, !dbg !1654
  br i1 %320, label %321, label %344, !dbg !1656

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1367, metadata !DIExpression()), !dbg !1627
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1657
  %325 = load i8, i8* %324, align 1, !dbg !1657, !tbaa !833
  %326 = icmp eq i8 %325, 0, !dbg !1656
  br i1 %326, label %344, label %327, !dbg !1658

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %328, metadata !1367, metadata !DIExpression()), !dbg !1627
  %329 = add i64 %328, %122, !dbg !1660
  %330 = icmp ult i64 %329, %311, !dbg !1654
  br i1 %330, label %321, label %344, !dbg !1656, !llvm.loop !1661

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1662
  %333 = and i1 %116, %332, !dbg !1665
  call void @llvm.dbg.value(metadata i64 1, metadata !1393, metadata !DIExpression()), !dbg !1666
  br i1 %333, label %334, label %347, !dbg !1665

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1393, metadata !DIExpression()), !dbg !1666
  %336 = add i64 %335, %315, !dbg !1667
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1668
  %338 = load i8, i8* %337, align 1, !dbg !1668, !tbaa !833
  %339 = sext i8 %338 to i32, !dbg !1668
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1669

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %341, metadata !1393, metadata !DIExpression()), !dbg !1666
  %342 = icmp ult i64 %341, %318, !dbg !1662
  br i1 %342, label %334, label %347, !dbg !1671, !llvm.loop !1672

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %314, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %313, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %314, metadata !1370, metadata !DIExpression()), !dbg !1632
  br label %344, !dbg !1674

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %352, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1674
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1675, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %348, metadata !1389, metadata !DIExpression()), !dbg !1650
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1677
  %350 = icmp eq i32 %349, 0, !dbg !1677
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1678
  call void @llvm.dbg.value(metadata i8 %351, metadata !1370, metadata !DIExpression()), !dbg !1632
  %352 = add i64 %318, %313, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %352, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %351, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %352, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1371, metadata !DIExpression(DW_OP_deref)), !dbg !1649
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1680
  %354 = icmp eq i32 %353, 0, !dbg !1681
  br i1 %354, label %312, label %355, !dbg !1682, !llvm.loop !1683

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1685
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %94, metadata !1343, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %311, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %351, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %352, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1685
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1686
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1687
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8 %362, metadata !1370, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %361, metadata !1367, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %360, metadata !1342, metadata !DIExpression()), !dbg !1406
  %363 = and i8 %362, 1, !dbg !1688
  %364 = icmp ne i8 %363, 0, !dbg !1688
  call void @llvm.dbg.value(metadata i8 %363, metadata !1366, metadata !DIExpression()), !dbg !1483
  %365 = icmp ult i64 %361, 2, !dbg !1689
  %366 = or i1 %364, %115, !dbg !1690
  %367 = and i1 %365, %366, !dbg !1691
  br i1 %367, label %467, label %368, !dbg !1691

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %369, metadata !1400, metadata !DIExpression()), !dbg !1693
  br label %370, !dbg !1694

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1695
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1699
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1420
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1695
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1701
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1482
  call void @llvm.dbg.value(metadata i8 %376, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %375, metadata !1364, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %374, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %373, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %372, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %371, metadata !1348, metadata !DIExpression()), !dbg !1472
  br i1 %366, label %423, label %377, !dbg !1705

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1706

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()), !dbg !1482
  %379 = and i8 %373, 1, !dbg !1709
  %380 = icmp eq i8 %379, 0, !dbg !1709
  %381 = and i1 %114, %380, !dbg !1709
  br i1 %381, label %382, label %398, !dbg !1709

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1711
  br i1 %383, label %384, label %386, !dbg !1715

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1711
  store i8 39, i8* %385, align 1, !dbg !1711, !tbaa !833
  br label %386, !dbg !1711

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %387, metadata !1349, metadata !DIExpression()), !dbg !1412
  %388 = icmp ult i64 %387, %129, !dbg !1716
  br i1 %388, label %389, label %391, !dbg !1719

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1716
  store i8 36, i8* %390, align 1, !dbg !1716, !tbaa !833
  br label %391, !dbg !1716

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %392, metadata !1349, metadata !DIExpression()), !dbg !1412
  %393 = icmp ult i64 %392, %129, !dbg !1720
  br i1 %393, label %394, label %396, !dbg !1723

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1720
  store i8 39, i8* %395, align 1, !dbg !1720, !tbaa !833
  br label %396, !dbg !1720

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %397, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 1, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %398, !dbg !1724

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1471
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %400, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %399, metadata !1349, metadata !DIExpression()), !dbg !1412
  %401 = icmp ult i64 %399, %129, !dbg !1725
  br i1 %401, label %402, label %404, !dbg !1728

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1725
  store i8 92, i8* %403, align 1, !dbg !1725, !tbaa !833
  br label %404, !dbg !1725

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %405, metadata !1349, metadata !DIExpression()), !dbg !1412
  %406 = icmp ult i64 %405, %129, !dbg !1729
  br i1 %406, label %407, label %411, !dbg !1732

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1729
  %409 = or i8 %408, 48, !dbg !1729
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1729
  store i8 %409, i8* %410, align 1, !dbg !1729, !tbaa !833
  br label %411, !dbg !1729

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %412, metadata !1349, metadata !DIExpression()), !dbg !1412
  %413 = icmp ult i64 %412, %129, !dbg !1733
  br i1 %413, label %414, label %419, !dbg !1736

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1733
  %416 = and i8 %415, 7, !dbg !1733
  %417 = or i8 %416, 48, !dbg !1733
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1733
  store i8 %417, i8* %418, align 1, !dbg !1733, !tbaa !833
  br label %419, !dbg !1733

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %420, metadata !1349, metadata !DIExpression()), !dbg !1412
  %421 = and i8 %374, 7, !dbg !1737
  %422 = or i8 %421, 48, !dbg !1738
  call void @llvm.dbg.value(metadata i8 %422, metadata !1359, metadata !DIExpression()), !dbg !1498
  br label %432, !dbg !1739

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1740
  %425 = icmp eq i8 %424, 0, !dbg !1740
  br i1 %425, label %432, label %426, !dbg !1741

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1742
  br i1 %427, label %428, label %430, !dbg !1745

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1742
  store i8 92, i8* %429, align 1, !dbg !1742, !tbaa !833
  br label %430, !dbg !1742

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %431, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !1364, metadata !DIExpression()), !dbg !1481
  br label %432, !dbg !1746

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1747
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1420
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1748
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1749
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1751
  call void @llvm.dbg.value(metadata i8 %437, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %436, metadata !1364, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %435, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %434, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %433, metadata !1349, metadata !DIExpression()), !dbg !1412
  %438 = add i64 %371, 1, !dbg !1752
  %439 = icmp ugt i64 %369, %438, !dbg !1754
  br i1 %439, label %440, label %562, !dbg !1755

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1756
  %442 = icmp ne i8 %441, 0, !dbg !1756
  %443 = and i8 %437, 1, !dbg !1756
  %444 = icmp eq i8 %443, 0, !dbg !1756
  %445 = and i1 %442, %444, !dbg !1756
  br i1 %445, label %446, label %457, !dbg !1756

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1759
  br i1 %447, label %448, label %450, !dbg !1763

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1759
  store i8 39, i8* %449, align 1, !dbg !1759, !tbaa !833
  br label %450, !dbg !1759

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %451, metadata !1349, metadata !DIExpression()), !dbg !1412
  %452 = icmp ult i64 %451, %129, !dbg !1764
  br i1 %452, label %453, label %455, !dbg !1767

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1764
  store i8 39, i8* %454, align 1, !dbg !1764, !tbaa !833
  br label %455, !dbg !1764

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %456, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %457, !dbg !1768

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1769
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %459, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %458, metadata !1349, metadata !DIExpression()), !dbg !1412
  %460 = icmp ult i64 %458, %129, !dbg !1770
  br i1 %460, label %461, label %463, !dbg !1772

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1770
  store i8 %435, i8* %462, align 1, !dbg !1770, !tbaa !833
  br label %463, !dbg !1770

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %464, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %438, metadata !1348, metadata !DIExpression()), !dbg !1472
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1773
  %466 = load i8, i8* %465, align 1, !dbg !1773, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %466, metadata !1359, metadata !DIExpression()), !dbg !1498
  br label %370, !dbg !1774, !llvm.loop !1775

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1778
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1471
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1413
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1779
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1471
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1471
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1496
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1496
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1496
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %476, metadata !1366, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %475, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %155, metadata !1364, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8 %474, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %473, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %472, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %471, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %470, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %469, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %468, metadata !1348, metadata !DIExpression()), !dbg !1472
  br i1 %105, label %489, label %478, !dbg !1780

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
  br i1 %112, label %490, label %512, !dbg !1782

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1783

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
  %501 = lshr i8 %494, 5, !dbg !1784
  %502 = zext i8 %501 to i64, !dbg !1784
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1785
  %504 = load i32, i32* %503, align 4, !dbg !1785, !tbaa !779
  %505 = and i8 %494, 31, !dbg !1786
  %506 = zext i8 %505 to i32, !dbg !1786
  %507 = shl i32 1, %506, !dbg !1787
  %508 = and i32 %504, %507, !dbg !1787
  %509 = icmp eq i32 %508, 0, !dbg !1787
  %510 = icmp eq i8 %155, 0, !dbg !1788
  %511 = and i1 %510, %509, !dbg !1789
  br i1 %511, label %562, label %524, !dbg !1789

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
  %523 = icmp eq i8 %155, 0, !dbg !1788
  br i1 %523, label %562, label %524, !dbg !1790

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1791
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1471
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1413
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1779
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1420
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1421
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1792
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1496
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %532, metadata !1366, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %531, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %530, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %529, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %528, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %527, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %526, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %525, metadata !1348, metadata !DIExpression()), !dbg !1472
  br i1 %110, label %534, label %661, !dbg !1795

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()), !dbg !1482
  %535 = and i8 %529, 1, !dbg !1797
  %536 = icmp eq i8 %535, 0, !dbg !1797
  %537 = and i1 %114, %536, !dbg !1797
  br i1 %537, label %538, label %554, !dbg !1797

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1799
  br i1 %539, label %540, label %542, !dbg !1803

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1799
  store i8 39, i8* %541, align 1, !dbg !1799, !tbaa !833
  br label %542, !dbg !1799

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %543, metadata !1349, metadata !DIExpression()), !dbg !1412
  %544 = icmp ult i64 %543, %533, !dbg !1804
  br i1 %544, label %545, label %547, !dbg !1807

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1804
  store i8 36, i8* %546, align 1, !dbg !1804, !tbaa !833
  br label %547, !dbg !1804

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %548, metadata !1349, metadata !DIExpression()), !dbg !1412
  %549 = icmp ult i64 %548, %533, !dbg !1808
  br i1 %549, label %550, label %552, !dbg !1811

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1808
  store i8 39, i8* %551, align 1, !dbg !1808, !tbaa !833
  br label %552, !dbg !1808

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %553, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 1, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %554, !dbg !1812

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1769
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %556, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %555, metadata !1349, metadata !DIExpression()), !dbg !1412
  %557 = icmp ult i64 %555, %533, !dbg !1813
  br i1 %557, label %558, label %560, !dbg !1816

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1813
  store i8 92, i8* %559, align 1, !dbg !1813, !tbaa !833
  br label %560, !dbg !1813

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %561, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %572, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %571, metadata !1366, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %570, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %569, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %568, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %567, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %566, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %565, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %564, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %563, metadata !1348, metadata !DIExpression()), !dbg !1472
  br label %589, !dbg !1817

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1791
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1471
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1413
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1779
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1420
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1421
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1820
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1496
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1496
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %571, metadata !1366, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %570, metadata !1365, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 %569, metadata !1359, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %568, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %567, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %566, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %565, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %564, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %563, metadata !1348, metadata !DIExpression()), !dbg !1472
  %573 = and i8 %567, 1, !dbg !1817
  %574 = icmp ne i8 %573, 0, !dbg !1817
  %575 = and i8 %570, 1, !dbg !1817
  %576 = icmp eq i8 %575, 0, !dbg !1817
  %577 = and i1 %574, %576, !dbg !1817
  br i1 %577, label %578, label %589, !dbg !1817

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1821
  br i1 %579, label %580, label %582, !dbg !1825

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1821
  store i8 39, i8* %581, align 1, !dbg !1821, !tbaa !833
  br label %582, !dbg !1821

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %583, metadata !1349, metadata !DIExpression()), !dbg !1412
  %584 = icmp ult i64 %583, %572, !dbg !1826
  br i1 %584, label %585, label %587, !dbg !1829

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1826
  store i8 39, i8* %586, align 1, !dbg !1826, !tbaa !833
  br label %587, !dbg !1826

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %588, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !1356, metadata !DIExpression()), !dbg !1420
  br label %589, !dbg !1830

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1769
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8 %598, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %597, metadata !1349, metadata !DIExpression()), !dbg !1412
  %599 = icmp ult i64 %597, %590, !dbg !1831
  br i1 %599, label %600, label %602, !dbg !1834

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1831
  store i8 %592, i8* %601, align 1, !dbg !1831, !tbaa !833
  br label %602, !dbg !1831

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %603, metadata !1349, metadata !DIExpression()), !dbg !1412
  %604 = and i8 %591, 1, !dbg !1835
  %605 = icmp eq i8 %604, 0, !dbg !1835
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1837
  call void @llvm.dbg.value(metadata i8 %606, metadata !1358, metadata !DIExpression()), !dbg !1422
  br label %607, !dbg !1838

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1791
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1471
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1413
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1779
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1420
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1471
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1422
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %614, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %613, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %612, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %611, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %610, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %609, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %608, metadata !1348, metadata !DIExpression()), !dbg !1472
  %616 = add i64 %608, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %616, metadata !1348, metadata !DIExpression()), !dbg !1472
  br label %121, !dbg !1840, !llvm.loop !1841

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %125, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %125, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %126, metadata !1356, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %127, metadata !1357, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %128, metadata !1358, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  %619 = icmp eq i64 %123, 0, !dbg !1843
  %620 = and i1 %114, %619, !dbg !1845
  %621 = xor i1 %620, true, !dbg !1845
  %622 = or i1 %110, %621, !dbg !1845
  br i1 %622, label %623, label %661, !dbg !1845

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1846
  %625 = xor i1 %624, true, !dbg !1846
  %626 = and i8 %127, 1, !dbg !1848
  %627 = icmp eq i8 %626, 0, !dbg !1848
  %628 = or i1 %627, %625, !dbg !1846
  br i1 %628, label %638, label %629, !dbg !1846

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1849
  %631 = icmp eq i8 %630, 0, !dbg !1849
  br i1 %631, label %634, label %632, !dbg !1852

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %618, metadata !1342, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %95, metadata !1346, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %96, metadata !1347, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %124, metadata !1350, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %125, metadata !1342, metadata !DIExpression()), !dbg !1406
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1853
  br label %671, !dbg !1854

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1855
  %636 = icmp ne i64 %124, 0, !dbg !1857
  %637 = and i1 %636, %635, !dbg !1858
  br i1 %637, label %27, label %638, !dbg !1858

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %129, metadata !1340, metadata !DIExpression()), !dbg !1404
  %639 = icmp ne i8* %98, null, !dbg !1859
  %640 = and i1 %639, %110, !dbg !1861
  br i1 %640, label %641, label %656, !dbg !1861

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1349, metadata !DIExpression()), !dbg !1412
  %642 = load i8, i8* %98, align 1, !dbg !1862, !tbaa !833
  %643 = icmp eq i8 %642, 0, !dbg !1865
  br i1 %643, label %656, label %644, !dbg !1865

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %647, metadata !1349, metadata !DIExpression()), !dbg !1412
  %648 = icmp ult i64 %647, %129, !dbg !1866
  br i1 %648, label %649, label %651, !dbg !1869

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1866
  store i8 %645, i8* %650, align 1, !dbg !1866, !tbaa !833
  br label %651, !dbg !1866

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1869
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %653, metadata !1351, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %652, metadata !1349, metadata !DIExpression()), !dbg !1412
  %654 = load i8, i8* %653, align 1, !dbg !1862, !tbaa !833
  %655 = icmp eq i8 %654, 0, !dbg !1865
  br i1 %655, label %656, label %644, !dbg !1865, !llvm.loop !1871

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1412
  call void @llvm.dbg.value(metadata i64 %657, metadata !1349, metadata !DIExpression()), !dbg !1412
  %658 = icmp ult i64 %657, %129, !dbg !1873
  br i1 %658, label %659, label %671, !dbg !1875

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1876
  store i8 0, i8* %660, align 1, !dbg !1877, !tbaa !833
  br label %671, !dbg !1876

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1340, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %663, metadata !1342, metadata !DIExpression()), !dbg !1406
  %665 = icmp ne i32 %662, 2, !dbg !1878
  %666 = icmp eq i8 %102, 0, !dbg !1880
  %667 = or i1 %665, %666, !dbg !1881
  call void @llvm.dbg.value(metadata i32 4, metadata !1343, metadata !DIExpression()), !dbg !1407
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %668, metadata !1343, metadata !DIExpression()), !dbg !1407
  %669 = and i32 %5, -3, !dbg !1882
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1883
  br label %671, !dbg !1884

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1885
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1886 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1890, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %1, metadata !1891, metadata !DIExpression()), !dbg !1895
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %3, metadata !1892, metadata !DIExpression()), !dbg !1897
  %4 = icmp eq i8* %3, %0, !dbg !1898
  br i1 %4, label %5, label %71, !dbg !1900

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %6, metadata !1893, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %6, metadata !1903, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* null, metadata !1909, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 85, metadata !1910, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 84, metadata !1911, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 70, metadata !1912, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8 45, metadata !1913, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 56, metadata !1914, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1916, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1931
  %7 = load i8, i8* %6, align 1, !dbg !1932, !tbaa !833
  %8 = and i8 %7, -33, !dbg !1932
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1932

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1934, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* null, metadata !1939, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 84, metadata !1940, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 70, metadata !1941, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 45, metadata !1942, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 56, metadata !1943, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1944, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1945, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1960
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1961
  %11 = load i8, i8* %10, align 1, !dbg !1961, !tbaa !833
  %12 = and i8 %11, -33, !dbg !1961
  %13 = icmp eq i8 %12, 84, !dbg !1961
  br i1 %13, label %14, label %68, !dbg !1961

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1963, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* null, metadata !1968, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 70, metadata !1969, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 45, metadata !1970, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 56, metadata !1971, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !1987
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1988
  %16 = load i8, i8* %15, align 1, !dbg !1988, !tbaa !833
  %17 = and i8 %16, -33, !dbg !1988
  %18 = icmp eq i8 %17, 70, !dbg !1988
  br i1 %18, label %19, label %68, !dbg !1988

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1990, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8* null, metadata !1995, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 45, metadata !1996, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 56, metadata !1997, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2012
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2013
  %21 = load i8, i8* %20, align 1, !dbg !2013, !tbaa !833
  %22 = icmp eq i8 %21, 45, !dbg !2013
  br i1 %22, label %23, label %68, !dbg !2015

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2016, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* null, metadata !2021, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 56, metadata !2022, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2036
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2037
  %25 = load i8, i8* %24, align 1, !dbg !2037, !tbaa !833
  %26 = icmp eq i8 %25, 56, !dbg !2037
  br i1 %26, label %27, label %68, !dbg !2039

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* null, metadata !2045, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2058
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2059
  %29 = load i8, i8* %28, align 1, !dbg !2059, !tbaa !833
  %30 = icmp eq i8 %29, 0, !dbg !2059
  br i1 %30, label %31, label %68, !dbg !2061

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2062, !tbaa !833
  %33 = icmp eq i8 %32, 96, !dbg !2063
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2062
  br label %71, !dbg !2064

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1934, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* null, metadata !1939, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 66, metadata !1940, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 49, metadata !1941, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 56, metadata !1942, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 48, metadata !1943, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 51, metadata !1944, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 48, metadata !1945, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !2077
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2078
  %37 = load i8, i8* %36, align 1, !dbg !2078, !tbaa !833
  %38 = and i8 %37, -33, !dbg !2078
  %39 = icmp eq i8 %38, 66, !dbg !2078
  br i1 %39, label %40, label %68, !dbg !2078

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1963, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* null, metadata !1968, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 49, metadata !1969, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 56, metadata !1970, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 48, metadata !1971, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 51, metadata !1972, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 48, metadata !1973, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2088
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2089
  %42 = load i8, i8* %41, align 1, !dbg !2089, !tbaa !833
  %43 = icmp eq i8 %42, 49, !dbg !2089
  br i1 %43, label %44, label %68, !dbg !2090

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1990, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* null, metadata !1995, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 56, metadata !1996, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 48, metadata !1997, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 51, metadata !1998, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 48, metadata !1999, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2099
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2100
  %46 = load i8, i8* %45, align 1, !dbg !2100, !tbaa !833
  %47 = icmp eq i8 %46, 56, !dbg !2100
  br i1 %47, label %48, label %68, !dbg !2101

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2016, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* null, metadata !2021, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 48, metadata !2022, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 51, metadata !2023, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 48, metadata !2024, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2109
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2110
  %50 = load i8, i8* %49, align 1, !dbg !2110, !tbaa !833
  %51 = icmp eq i8 %50, 48, !dbg !2110
  br i1 %51, label %52, label %68, !dbg !2111

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8* null, metadata !2045, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 51, metadata !2046, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 48, metadata !2047, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2118
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2119
  %54 = load i8, i8* %53, align 1, !dbg !2119, !tbaa !833
  %55 = icmp eq i8 %54, 51, !dbg !2119
  br i1 %55, label %56, label %68, !dbg !2120

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2121, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* null, metadata !2126, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 48, metadata !2127, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2137
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2138
  %58 = load i8, i8* %57, align 1, !dbg !2138, !tbaa !833
  %59 = icmp eq i8 %58, 48, !dbg !2138
  br i1 %59, label %60, label %68, !dbg !2140

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2141, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8* null, metadata !2146, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2155
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2156
  %62 = load i8, i8* %61, align 1, !dbg !2156, !tbaa !833
  %63 = icmp eq i8 %62, 0, !dbg !2156
  br i1 %63, label %64, label %68, !dbg !2158

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2159, !tbaa !833
  %66 = icmp eq i8 %65, 96, !dbg !2160
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2159
  br label %71, !dbg !2161

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2162
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2163
  br label %71, !dbg !2164

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2165
  ret i8* %72, !dbg !2166
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %0, metadata !2177, metadata !DIExpression()) #10, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %1, metadata !2182, metadata !DIExpression()) #10, !dbg !2192
  call void @llvm.dbg.value(metadata i64* null, metadata !2183, metadata !DIExpression()) #10, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2184, metadata !DIExpression()) #10, !dbg !2194
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2195
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2185, metadata !DIExpression()) #10, !dbg !2196
  %6 = tail call i32* @__errno_location() #17, !dbg !2197
  %7 = load i32, i32* %6, align 4, !dbg !2197, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %7, metadata !2186, metadata !DIExpression()) #10, !dbg !2198
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2199
  %9 = load i32, i32* %8, align 4, !dbg !2199, !tbaa !1272
  %10 = or i32 %9, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %10, metadata !2187, metadata !DIExpression()) #10, !dbg !2201
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2202
  %12 = load i32, i32* %11, align 8, !dbg !2202, !tbaa !1213
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2203
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2204
  %15 = load i8*, i8** %14, align 8, !dbg !2204, !tbaa !1298
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2205
  %17 = load i8*, i8** %16, align 8, !dbg !2205, !tbaa !1301
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2206
  %19 = add i64 %18, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %19, metadata !2188, metadata !DIExpression()) #10, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %19, metadata !2209, metadata !DIExpression()) #10, !dbg !2214
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2216
  call void @llvm.dbg.value(metadata i8* %20, metadata !2189, metadata !DIExpression()) #10, !dbg !2217
  %21 = load i32, i32* %11, align 8, !dbg !2218, !tbaa !1213
  %22 = load i8*, i8** %14, align 8, !dbg !2219, !tbaa !1298
  %23 = load i8*, i8** %16, align 8, !dbg !2220, !tbaa !1301
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2221
  store i32 %7, i32* %6, align 4, !dbg !2222, !tbaa !779
  ret i8* %20, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2177, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %1, metadata !2182, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64* %2, metadata !2183, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2184, metadata !DIExpression()), !dbg !2227
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2228
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2185, metadata !DIExpression()), !dbg !2229
  %7 = tail call i32* @__errno_location() #17, !dbg !2230
  %8 = load i32, i32* %7, align 4, !dbg !2230, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %8, metadata !2186, metadata !DIExpression()), !dbg !2231
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2232
  %10 = load i32, i32* %9, align 4, !dbg !2232, !tbaa !1272
  %11 = icmp ne i64* %2, null, !dbg !2233
  %12 = xor i1 %11, true, !dbg !2233
  %13 = zext i1 %12 to i32, !dbg !2233
  %14 = or i32 %10, %13, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %14, metadata !2187, metadata !DIExpression()), !dbg !2235
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2236
  %16 = load i32, i32* %15, align 8, !dbg !2236, !tbaa !1213
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2237
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2238
  %19 = load i8*, i8** %18, align 8, !dbg !2238, !tbaa !1298
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2239
  %21 = load i8*, i8** %20, align 8, !dbg !2239, !tbaa !1301
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2240
  %23 = add i64 %22, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %23, metadata !2188, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %23, metadata !2209, metadata !DIExpression()) #10, !dbg !2243
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %24, metadata !2189, metadata !DIExpression()), !dbg !2246
  %25 = load i32, i32* %15, align 8, !dbg !2247, !tbaa !1213
  %26 = load i8*, i8** %18, align 8, !dbg !2248, !tbaa !1298
  %27 = load i8*, i8** %20, align 8, !dbg !2249, !tbaa !1301
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2250
  store i32 %8, i32* %7, align 4, !dbg !2251, !tbaa !779
  br i1 %11, label %29, label %30, !dbg !2252

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2253, !tbaa !2255
  br label %30, !dbg !2256

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2257
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2258 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2262, !tbaa !684
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !2264
  %2 = load i32, i32* @nslots, align 4, !dbg !2265, !tbaa !779
  %3 = icmp sgt i32 %2, 1, !dbg !2268
  br i1 %3, label %4, label %12, !dbg !2269

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2261, metadata !DIExpression()), !dbg !2264
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2270
  %7 = load i8*, i8** %6, align 8, !dbg !2270, !tbaa !2271
  tail call void @free(i8* %7) #10, !dbg !2273
  %8 = add nuw nsw i64 %5, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i32 undef, metadata !2261, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2264
  %9 = load i32, i32* @nslots, align 4, !dbg !2265, !tbaa !779
  %10 = sext i32 %9 to i64, !dbg !2268
  %11 = icmp slt i64 %8, %10, !dbg !2268
  br i1 %11, label %4, label %12, !dbg !2269, !llvm.loop !2275

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2277
  %14 = load i8*, i8** %13, align 8, !dbg !2277, !tbaa !2271
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2279
  br i1 %15, label %17, label %16, !dbg !2280

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2281
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2283, !tbaa !2284
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2285, !tbaa !2271
  br label %17, !dbg !2286

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2287
  br i1 %18, label %21, label %19, !dbg !2289

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2290
  tail call void @free(i8* %20) #10, !dbg !2292
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2293, !tbaa !684
  br label %21, !dbg !2294

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2295, !tbaa !779
  ret void, !dbg !2296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %1, metadata !2302, metadata !DIExpression()), !dbg !2304
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2305
  ret i8* %3, !dbg !2306
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !2312, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %2, metadata !2313, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2314, metadata !DIExpression()), !dbg !2329
  %5 = tail call i32* @__errno_location() #17, !dbg !2330
  %6 = load i32, i32* %5, align 4, !dbg !2330, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %6, metadata !2315, metadata !DIExpression()), !dbg !2331
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2332, !tbaa !684
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2316, metadata !DIExpression()), !dbg !2333
  %8 = icmp slt i32 %0, 0, !dbg !2334
  br i1 %8, label %9, label %10, !dbg !2336

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2337
  unreachable, !dbg !2337

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2338, !tbaa !779
  %12 = icmp sgt i32 %11, %0, !dbg !2339
  br i1 %12, label %34, label %13, !dbg !2340

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2341
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2320, metadata !DIExpression()), !dbg !2342
  %15 = icmp eq i32 %0, 2147483647, !dbg !2343
  br i1 %15, label %16, label %17, !dbg !2345

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2346
  unreachable, !dbg !2346

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2347
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2347
  %20 = add nsw i32 %0, 1, !dbg !2348
  %21 = sext i32 %20 to i64, !dbg !2349
  %22 = shl nsw i64 %21, 4, !dbg !2350
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2351
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2316, metadata !DIExpression()), !dbg !2333
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2352, !tbaa !684
  br i1 %14, label %25, label %26, !dbg !2353

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2354, !tbaa.struct !2356
  br label %26, !dbg !2357

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2358, !tbaa !779
  %28 = sext i32 %27 to i64, !dbg !2359
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2359
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2360
  %31 = sub nsw i32 %20, %27, !dbg !2361
  %32 = sext i32 %31 to i64, !dbg !2362
  %33 = shl nsw i64 %32, 4, !dbg !2363
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2360
  store i32 %20, i32* @nslots, align 4, !dbg !2364, !tbaa !779
  br label %34, !dbg !2365

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2366
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2316, metadata !DIExpression()), !dbg !2333
  %36 = sext i32 %0 to i64, !dbg !2367
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2368
  %38 = load i64, i64* %37, align 8, !dbg !2368, !tbaa !2284
  call void @llvm.dbg.value(metadata i64 %38, metadata !2321, metadata !DIExpression()), !dbg !2369
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2370
  %40 = load i8*, i8** %39, align 8, !dbg !2370, !tbaa !2271
  call void @llvm.dbg.value(metadata i8* %40, metadata !2323, metadata !DIExpression()), !dbg !2371
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2372
  %42 = load i32, i32* %41, align 4, !dbg !2372, !tbaa !1272
  %43 = or i32 %42, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %43, metadata !2324, metadata !DIExpression()), !dbg !2374
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2375
  %45 = load i32, i32* %44, align 8, !dbg !2375, !tbaa !1213
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2376
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2377
  %48 = load i8*, i8** %47, align 8, !dbg !2377, !tbaa !1298
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2378
  %50 = load i8*, i8** %49, align 8, !dbg !2378, !tbaa !1301
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %51, metadata !2325, metadata !DIExpression()), !dbg !2380
  %52 = icmp ugt i64 %38, %51, !dbg !2381
  br i1 %52, label %63, label %53, !dbg !2383

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %54, metadata !2321, metadata !DIExpression()), !dbg !2369
  store i64 %54, i64* %37, align 8, !dbg !2386, !tbaa !2284
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2387
  br i1 %55, label %57, label %56, !dbg !2389

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2390
  br label %57, !dbg !2390

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2209, metadata !DIExpression()) #10, !dbg !2391
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %58, metadata !2323, metadata !DIExpression()), !dbg !2371
  store i8* %58, i8** %39, align 8, !dbg !2394, !tbaa !2271
  %59 = load i32, i32* %44, align 8, !dbg !2395, !tbaa !1213
  %60 = load i8*, i8** %47, align 8, !dbg !2396, !tbaa !1298
  %61 = load i8*, i8** %49, align 8, !dbg !2397, !tbaa !1301
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2398
  br label %63, !dbg !2399

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2400
  call void @llvm.dbg.value(metadata i8* %64, metadata !2323, metadata !DIExpression()), !dbg !2371
  store i32 %6, i32* %5, align 4, !dbg !2401, !tbaa !779
  ret i8* %64, !dbg !2402
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %2, metadata !2409, metadata !DIExpression()), !dbg !2412
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2413
  ret i8* %4, !dbg !2414
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2301, metadata !DIExpression()) #10, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()) #10, !dbg !2423
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2424
  ret i8* %2, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 %1, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()) #10, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %1, metadata !2409, metadata !DIExpression()) #10, !dbg !2437
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2438
  ret i8* %3, !dbg !2439
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2440 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %2, metadata !2446, metadata !DIExpression()), !dbg !2450
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2447, metadata !DIExpression(DW_OP_deref)), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()) #10, !dbg !2459
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2461, !alias.scope !2462
  %6 = icmp eq i32 %1, 10, !dbg !2465
  br i1 %6, label %7, label %8, !dbg !2467

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2468, !noalias !2462
  unreachable, !dbg !2468

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2469
  store i32 %1, i32* %9, align 8, !dbg !2470, !tbaa !1213, !alias.scope !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2447, metadata !DIExpression(DW_OP_deref)), !dbg !2452
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2471
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2472
  ret i8* %10, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2474 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2478, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2479, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %2, metadata !2480, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %3, metadata !2481, metadata !DIExpression()), !dbg !2486
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2482, metadata !DIExpression(DW_OP_deref)), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2491, !alias.scope !2492
  %7 = icmp eq i32 %1, 10, !dbg !2495
  br i1 %7, label %8, label %9, !dbg !2496

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2497, !noalias !2492
  unreachable, !dbg !2497

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2498
  store i32 %1, i32* %10, align 8, !dbg !2499, !tbaa !1213, !alias.scope !2492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2482, metadata !DIExpression(DW_OP_deref)), !dbg !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2491
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2501
  ret i8* %11, !dbg !2502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2503 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %1, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #10, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()) #10, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !2446, metadata !DIExpression()) #10, !dbg !2514
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2447, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %0, metadata !2453, metadata !DIExpression()) #10, !dbg !2517
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2519, !alias.scope !2520
  %5 = icmp eq i32 %0, 10, !dbg !2523
  br i1 %5, label %6, label %7, !dbg !2524

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2525, !noalias !2520
  unreachable, !dbg !2525

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2526
  store i32 %0, i32* %8, align 8, !dbg !2527, !tbaa !1213, !alias.scope !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2447, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2458, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2519
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2529
  ret i8* %9, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2531 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 %2, metadata !2537, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 0, metadata !2478, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()) #10, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %1, metadata !2480, metadata !DIExpression()) #10, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %2, metadata !2481, metadata !DIExpression()) #10, !dbg !2545
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2482, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %0, metadata !2453, metadata !DIExpression()) #10, !dbg !2548
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2550, !alias.scope !2551
  %6 = icmp eq i32 %0, 10, !dbg !2554
  br i1 %6, label %7, label %8, !dbg !2555

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2556, !noalias !2551
  unreachable, !dbg !2556

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2557
  store i32 %0, i32* %9, align 8, !dbg !2558, !tbaa !1213, !alias.scope !2551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2482, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2458, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2550
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2560
  ret i8* %10, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2562 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %2, metadata !2568, metadata !DIExpression()), !dbg !2572
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2574, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1232, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %2, metadata !1233, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 1, metadata !1234, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 %2, metadata !1235, metadata !DIExpression()), !dbg !2581
  %6 = lshr i8 %2, 5, !dbg !2582
  %7 = zext i8 %6 to i64, !dbg !2582
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2583
  call void @llvm.dbg.value(metadata i32* %8, metadata !1236, metadata !DIExpression()), !dbg !2584
  %9 = and i8 %2, 31, !dbg !2585
  %10 = zext i8 %9 to i32, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %10, metadata !1238, metadata !DIExpression()), !dbg !2586
  %11 = load i32, i32* %8, align 4, !dbg !2587, !tbaa !779
  %12 = lshr i32 %11, %10, !dbg !2588
  %13 = and i32 %12, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %13, metadata !1239, metadata !DIExpression()), !dbg !2590
  %14 = xor i32 %13, 1, !dbg !2591
  %15 = shl i32 %14, %10, !dbg !2592
  %16 = xor i32 %15, %11, !dbg !2593
  store i32 %16, i32* %8, align 4, !dbg !2593, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2594
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2595
  ret i8* %17, !dbg !2596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2597 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %1, metadata !2602, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #10, !dbg !2605
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #10, !dbg !2607
  call void @llvm.dbg.value(metadata i8 %1, metadata !2568, metadata !DIExpression()) #10, !dbg !2608
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2610, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1232, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8 %1, metadata !1233, metadata !DIExpression()) #10, !dbg !2614
  call void @llvm.dbg.value(metadata i32 1, metadata !1234, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i8 %1, metadata !1235, metadata !DIExpression()) #10, !dbg !2616
  %5 = lshr i8 %1, 5, !dbg !2617
  %6 = zext i8 %5 to i64, !dbg !2617
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2618
  call void @llvm.dbg.value(metadata i32* %7, metadata !1236, metadata !DIExpression()) #10, !dbg !2619
  %8 = and i8 %1, 31, !dbg !2620
  %9 = zext i8 %8 to i32, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %9, metadata !1238, metadata !DIExpression()) #10, !dbg !2621
  %10 = load i32, i32* %7, align 4, !dbg !2622, !tbaa !779
  %11 = lshr i32 %10, %9, !dbg !2623
  %12 = and i32 %11, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %12, metadata !1239, metadata !DIExpression()) #10, !dbg !2625
  %13 = xor i32 %12, 1, !dbg !2626
  %14 = shl i32 %13, %9, !dbg !2627
  %15 = xor i32 %14, %10, !dbg !2628
  store i32 %15, i32* %7, align 4, !dbg !2628, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2611
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2630
  ret i8* %16, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2632 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()) #10, !dbg !2636
  call void @llvm.dbg.value(metadata i8 58, metadata !2602, metadata !DIExpression()) #10, !dbg !2638
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #10, !dbg !2639
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #10, !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #10, !dbg !2642
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2643
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2644, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1232, metadata !DIExpression()) #10, !dbg !2646
  call void @llvm.dbg.value(metadata i8 58, metadata !1233, metadata !DIExpression()) #10, !dbg !2648
  call void @llvm.dbg.value(metadata i32 1, metadata !1234, metadata !DIExpression()) #10, !dbg !2649
  call void @llvm.dbg.value(metadata i8 58, metadata !1235, metadata !DIExpression()) #10, !dbg !2650
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2651
  call void @llvm.dbg.value(metadata i32* %4, metadata !1236, metadata !DIExpression()) #10, !dbg !2652
  call void @llvm.dbg.value(metadata i32 26, metadata !1238, metadata !DIExpression()) #10, !dbg !2653
  %5 = load i32, i32* %4, align 4, !dbg !2654, !tbaa !779
  %6 = or i32 %5, 67108864, !dbg !2655
  store i32 %6, i32* %4, align 4, !dbg !2655, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2645
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2657
  ret i8* %7, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2659 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #10, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()) #10, !dbg !2667
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #10, !dbg !2668
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2670, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1232, metadata !DIExpression()) #10, !dbg !2672
  call void @llvm.dbg.value(metadata i8 58, metadata !1233, metadata !DIExpression()) #10, !dbg !2674
  call void @llvm.dbg.value(metadata i32 1, metadata !1234, metadata !DIExpression()) #10, !dbg !2675
  call void @llvm.dbg.value(metadata i8 58, metadata !1235, metadata !DIExpression()) #10, !dbg !2676
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2677
  call void @llvm.dbg.value(metadata i32* %5, metadata !1236, metadata !DIExpression()) #10, !dbg !2678
  call void @llvm.dbg.value(metadata i32 26, metadata !1238, metadata !DIExpression()) #10, !dbg !2679
  %6 = load i32, i32* %5, align 4, !dbg !2680, !tbaa !779
  %7 = or i32 %6, 67108864, !dbg !2681
  store i32 %7, i32* %5, align 4, !dbg !2681, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2671
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2683
  ret i8* %8, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2685 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2458, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2695
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2696
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()) #10, !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2691
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2691, !alias.scope !2699
  %8 = icmp eq i32 %1, 10, !dbg !2702
  br i1 %8, label %9, label %10, !dbg !2703

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2704, !noalias !2699
  unreachable, !dbg !2704

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2458, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2691
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2697
  store i32 %1, i32* %11, align 8, !dbg !2697
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2697
  %13 = bitcast i32* %12 to i8*, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2697
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1232, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 58, metadata !1233, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 1, metadata !1234, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !1235, metadata !DIExpression()), !dbg !2710
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2711
  call void @llvm.dbg.value(metadata i32* %14, metadata !1236, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 26, metadata !1238, metadata !DIExpression()), !dbg !2713
  %15 = load i32, i32* %14, align 4, !dbg !2714, !tbaa !779
  %16 = or i32 %15, 67108864, !dbg !2715
  store i32 %16, i32* %14, align 4, !dbg !2715, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2717
  ret i8* %17, !dbg !2718
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2719 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %2, metadata !2725, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %3, metadata !2726, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()) #10, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()) #10, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %2, metadata !2737, metadata !DIExpression()) #10, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %3, metadata !2738, metadata !DIExpression()) #10, !dbg !2745
  call void @llvm.dbg.value(metadata i64 -1, metadata !2739, metadata !DIExpression()) #10, !dbg !2746
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2748, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1280, metadata !DIExpression()) #10, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()) #10, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %2, metadata !1282, metadata !DIExpression()) #10, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1280, metadata !DIExpression()) #10, !dbg !2750
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %7, align 8, !dbg !2755, !tbaa !1213
  %8 = icmp ne i8* %1, null, !dbg !2756
  %9 = icmp ne i8* %2, null, !dbg !2757
  %10 = and i1 %8, %9, !dbg !2758
  br i1 %10, label %12, label %11, !dbg !2758

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2759
  unreachable, !dbg !2759

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2760
  store i8* %1, i8** %13, align 8, !dbg !2761, !tbaa !1298
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2762
  store i8* %2, i8** %14, align 8, !dbg !2763, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2749
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2765
  ret i8* %15, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2732 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %2, metadata !2737, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %3, metadata !2738, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %4, metadata !2739, metadata !DIExpression()), !dbg !2771
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2773, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2740, metadata !DIExpression(DW_OP_deref)), !dbg !2774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1280, metadata !DIExpression()) #10, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()) #10, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %2, metadata !1282, metadata !DIExpression()) #10, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1280, metadata !DIExpression()) #10, !dbg !2775
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2779
  store i32 10, i32* %8, align 8, !dbg !2780, !tbaa !1213
  %9 = icmp ne i8* %1, null, !dbg !2781
  %10 = icmp ne i8* %2, null, !dbg !2782
  %11 = and i1 %9, %10, !dbg !2783
  br i1 %11, label %13, label %12, !dbg !2783

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2784
  unreachable, !dbg !2784

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2785
  store i8* %1, i8** %14, align 8, !dbg !2786, !tbaa !1298
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2787
  store i8* %2, i8** %15, align 8, !dbg !2788, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2740, metadata !DIExpression(DW_OP_deref)), !dbg !2774
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2790
  ret i8* %16, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2792 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %1, metadata !2797, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()) #10, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()) #10, !dbg !2804
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()) #10, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %2, metadata !2726, metadata !DIExpression()) #10, !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2731, metadata !DIExpression()) #10, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()) #10, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %1, metadata !2737, metadata !DIExpression()) #10, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %2, metadata !2738, metadata !DIExpression()) #10, !dbg !2811
  call void @llvm.dbg.value(metadata i64 -1, metadata !2739, metadata !DIExpression()) #10, !dbg !2812
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2813
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2814, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1280, metadata !DIExpression()) #10, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !1281, metadata !DIExpression()) #10, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1282, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1280, metadata !DIExpression()) #10, !dbg !2816
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2820
  store i32 10, i32* %6, align 8, !dbg !2821, !tbaa !1213
  %7 = icmp ne i8* %0, null, !dbg !2822
  %8 = icmp ne i8* %1, null, !dbg !2823
  %9 = and i1 %7, %8, !dbg !2824
  br i1 %9, label %11, label %10, !dbg !2824

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2825
  unreachable, !dbg !2825

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2826
  store i8* %0, i8** %12, align 8, !dbg !2827, !tbaa !1298
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2828
  store i8* %1, i8** %13, align 8, !dbg !2829, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2815
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2831
  ret i8* %14, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2833 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2839, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %3, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2731, metadata !DIExpression()) #10, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()) #10, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %1, metadata !2737, metadata !DIExpression()) #10, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %2, metadata !2738, metadata !DIExpression()) #10, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %3, metadata !2739, metadata !DIExpression()) #10, !dbg !2850
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2851
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2852, !tbaa.struct !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1280, metadata !DIExpression()) #10, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !1281, metadata !DIExpression()) #10, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !1282, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1280, metadata !DIExpression()) #10, !dbg !2854
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2858
  store i32 10, i32* %7, align 8, !dbg !2859, !tbaa !1213
  %8 = icmp ne i8* %0, null, !dbg !2860
  %9 = icmp ne i8* %1, null, !dbg !2861
  %10 = and i1 %8, %9, !dbg !2862
  br i1 %10, label %12, label %11, !dbg !2862

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2863
  unreachable, !dbg !2863

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2864
  store i8* %0, i8** %13, align 8, !dbg !2865, !tbaa !1298
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2866
  store i8* %1, i8** %14, align 8, !dbg !2867, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2740, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2853
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2868
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2869
  ret i8* %15, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %2, metadata !2877, metadata !DIExpression()), !dbg !2880
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2881
  ret i8* %4, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2875, metadata !DIExpression()) #10, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()) #10, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()) #10, !dbg !2894
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2895
  ret i8* %3, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* %1, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()) #10, !dbg !2907
  call void @llvm.dbg.value(metadata i64 -1, metadata !2877, metadata !DIExpression()) #10, !dbg !2908
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2909
  ret i8* %3, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()) #10, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()) #10, !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2875, metadata !DIExpression()) #10, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()) #10, !dbg !2922
  call void @llvm.dbg.value(metadata i64 -1, metadata !2877, metadata !DIExpression()) #10, !dbg !2923
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2924
  ret i8* %2, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2926 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2985, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2986, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %2, metadata !2987, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %3, metadata !2988, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8** %4, metadata !2989, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %5, metadata !2990, metadata !DIExpression()), !dbg !2996
  %7 = icmp eq i8* %1, null, !dbg !2997
  br i1 %7, label %10, label %8, !dbg !2999

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3000
  br label %12, !dbg !3000

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3001
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3002
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3002
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3003
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3003
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
  ], !dbg !3004

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3005
  unreachable, !dbg !3005

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3007
  %20 = load i8*, i8** %4, align 8, !dbg !3007, !tbaa !684
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3007
  br label %146, !dbg !3008

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3009
  %24 = load i8*, i8** %4, align 8, !dbg !3009, !tbaa !684
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3009
  %26 = load i8*, i8** %25, align 8, !dbg !3009, !tbaa !684
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3009
  br label %146, !dbg !3010

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3011
  %30 = load i8*, i8** %4, align 8, !dbg !3011, !tbaa !684
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3011
  %32 = load i8*, i8** %31, align 8, !dbg !3011, !tbaa !684
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3011
  %34 = load i8*, i8** %33, align 8, !dbg !3011, !tbaa !684
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3011
  br label %146, !dbg !3012

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3013
  %38 = load i8*, i8** %4, align 8, !dbg !3013, !tbaa !684
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3013
  %40 = load i8*, i8** %39, align 8, !dbg !3013, !tbaa !684
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3013
  %42 = load i8*, i8** %41, align 8, !dbg !3013, !tbaa !684
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3013
  %44 = load i8*, i8** %43, align 8, !dbg !3013, !tbaa !684
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3013
  br label %146, !dbg !3014

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3015
  %48 = load i8*, i8** %4, align 8, !dbg !3015, !tbaa !684
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3015
  %50 = load i8*, i8** %49, align 8, !dbg !3015, !tbaa !684
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3015
  %52 = load i8*, i8** %51, align 8, !dbg !3015, !tbaa !684
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3015
  %54 = load i8*, i8** %53, align 8, !dbg !3015, !tbaa !684
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3015
  %56 = load i8*, i8** %55, align 8, !dbg !3015, !tbaa !684
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3015
  br label %146, !dbg !3016

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3017
  %60 = load i8*, i8** %4, align 8, !dbg !3017, !tbaa !684
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3017
  %62 = load i8*, i8** %61, align 8, !dbg !3017, !tbaa !684
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3017
  %64 = load i8*, i8** %63, align 8, !dbg !3017, !tbaa !684
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3017
  %66 = load i8*, i8** %65, align 8, !dbg !3017, !tbaa !684
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3017
  %68 = load i8*, i8** %67, align 8, !dbg !3017, !tbaa !684
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3017
  %70 = load i8*, i8** %69, align 8, !dbg !3017, !tbaa !684
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3017
  br label %146, !dbg !3018

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3019
  %74 = load i8*, i8** %4, align 8, !dbg !3019, !tbaa !684
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3019
  %76 = load i8*, i8** %75, align 8, !dbg !3019, !tbaa !684
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3019
  %78 = load i8*, i8** %77, align 8, !dbg !3019, !tbaa !684
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3019
  %80 = load i8*, i8** %79, align 8, !dbg !3019, !tbaa !684
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3019
  %82 = load i8*, i8** %81, align 8, !dbg !3019, !tbaa !684
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3019
  %84 = load i8*, i8** %83, align 8, !dbg !3019, !tbaa !684
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3019
  %86 = load i8*, i8** %85, align 8, !dbg !3019, !tbaa !684
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3019
  br label %146, !dbg !3020

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3021
  %90 = load i8*, i8** %4, align 8, !dbg !3021, !tbaa !684
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3021
  %92 = load i8*, i8** %91, align 8, !dbg !3021, !tbaa !684
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3021
  %94 = load i8*, i8** %93, align 8, !dbg !3021, !tbaa !684
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3021
  %96 = load i8*, i8** %95, align 8, !dbg !3021, !tbaa !684
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3021
  %98 = load i8*, i8** %97, align 8, !dbg !3021, !tbaa !684
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3021
  %100 = load i8*, i8** %99, align 8, !dbg !3021, !tbaa !684
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3021
  %102 = load i8*, i8** %101, align 8, !dbg !3021, !tbaa !684
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3021
  %104 = load i8*, i8** %103, align 8, !dbg !3021, !tbaa !684
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3021
  br label %146, !dbg !3022

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3023
  %108 = load i8*, i8** %4, align 8, !dbg !3023, !tbaa !684
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3023
  %110 = load i8*, i8** %109, align 8, !dbg !3023, !tbaa !684
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3023
  %112 = load i8*, i8** %111, align 8, !dbg !3023, !tbaa !684
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3023
  %114 = load i8*, i8** %113, align 8, !dbg !3023, !tbaa !684
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3023
  %116 = load i8*, i8** %115, align 8, !dbg !3023, !tbaa !684
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3023
  %118 = load i8*, i8** %117, align 8, !dbg !3023, !tbaa !684
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3023
  %120 = load i8*, i8** %119, align 8, !dbg !3023, !tbaa !684
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3023
  %122 = load i8*, i8** %121, align 8, !dbg !3023, !tbaa !684
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3023
  %124 = load i8*, i8** %123, align 8, !dbg !3023, !tbaa !684
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3023
  br label %146, !dbg !3024

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3025
  %128 = load i8*, i8** %4, align 8, !dbg !3025, !tbaa !684
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3025
  %130 = load i8*, i8** %129, align 8, !dbg !3025, !tbaa !684
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3025
  %132 = load i8*, i8** %131, align 8, !dbg !3025, !tbaa !684
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3025
  %134 = load i8*, i8** %133, align 8, !dbg !3025, !tbaa !684
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3025
  %136 = load i8*, i8** %135, align 8, !dbg !3025, !tbaa !684
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3025
  %138 = load i8*, i8** %137, align 8, !dbg !3025, !tbaa !684
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3025
  %140 = load i8*, i8** %139, align 8, !dbg !3025, !tbaa !684
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3025
  %142 = load i8*, i8** %141, align 8, !dbg !3025, !tbaa !684
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3025
  %144 = load i8*, i8** %143, align 8, !dbg !3025, !tbaa !684
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3025
  br label %146, !dbg !3026

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3028 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3032, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8* %2, metadata !3034, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %3, metadata !3035, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8** %4, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 0, metadata !3037, metadata !DIExpression()), !dbg !3043
  br label %6, !dbg !3044

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3048
  %9 = load i8*, i8** %8, align 8, !dbg !3048, !tbaa !684
  %10 = icmp eq i8* %9, null, !dbg !3049
  %11 = add i64 %7, 1, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %11, metadata !3037, metadata !DIExpression()), !dbg !3043
  br i1 %10, label %12, label %6, !dbg !3049, !llvm.loop !3051

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %7, metadata !3037, metadata !DIExpression()), !dbg !3043
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3053
  ret void, !dbg !3054
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3055 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3066, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %1, metadata !3067, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %2, metadata !3068, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %3, metadata !3069, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3070, metadata !DIExpression()), !dbg !3078
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3079
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3079
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3072, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3081
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3081
  %11 = load i32, i32* %8, align 8, !dbg !3082
  %12 = icmp ult i32 %11, 41, !dbg !3082
  br i1 %12, label %13, label %18, !dbg !3082

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3082
  %15 = sext i32 %11 to i64, !dbg !3082
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3082
  %17 = add i32 %11, 8, !dbg !3082
  store i32 %17, i32* %8, align 8, !dbg !3082
  br label %21, !dbg !3082

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3082
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3082
  store i8* %20, i8** %10, align 8, !dbg !3082
  br label %21, !dbg !3082

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3082
  %25 = load i8*, i8** %24, align 8, !dbg !3082
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3085
  store i8* %25, i8** %26, align 16, !dbg !3086, !tbaa !684
  %27 = icmp eq i8* %25, null, !dbg !3087
  br i1 %27, label %30, label %28, !dbg !3088

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 1, metadata !3071, metadata !DIExpression()), !dbg !3081
  %29 = icmp ult i32 %22, 41, !dbg !3082
  br i1 %29, label %35, label %32, !dbg !3082

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3089
  call void @llvm.dbg.value(metadata i64 %31, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %31, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3090
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3091
  ret void, !dbg !3091

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3082
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3082
  store i8* %34, i8** %10, align 8, !dbg !3082
  br label %40, !dbg !3082

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3082
  %37 = sext i32 %22 to i64, !dbg !3082
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3082
  %39 = add i32 %22, 8, !dbg !3082
  store i32 %39, i32* %8, align 8, !dbg !3082
  br label %40, !dbg !3082

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3082
  %44 = load i8*, i8** %43, align 8, !dbg !3082
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3085
  store i8* %44, i8** %45, align 8, !dbg !3086, !tbaa !684
  %46 = icmp eq i8* %44, null, !dbg !3087
  br i1 %46, label %30, label %47, !dbg !3088

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 2, metadata !3071, metadata !DIExpression()), !dbg !3081
  %48 = icmp ult i32 %41, 41, !dbg !3082
  br i1 %48, label %52, label %49, !dbg !3082

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3082
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3082
  store i8* %51, i8** %10, align 8, !dbg !3082
  br label %57, !dbg !3082

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3082
  %54 = sext i32 %41 to i64, !dbg !3082
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3082
  %56 = add i32 %41, 8, !dbg !3082
  store i32 %56, i32* %8, align 8, !dbg !3082
  br label %57, !dbg !3082

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3082
  %61 = load i8*, i8** %60, align 8, !dbg !3082
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3085
  store i8* %61, i8** %62, align 16, !dbg !3086, !tbaa !684
  %63 = icmp eq i8* %61, null, !dbg !3087
  br i1 %63, label %30, label %64, !dbg !3088

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 3, metadata !3071, metadata !DIExpression()), !dbg !3081
  %65 = icmp ult i32 %58, 41, !dbg !3082
  br i1 %65, label %69, label %66, !dbg !3082

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3082
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3082
  store i8* %68, i8** %10, align 8, !dbg !3082
  br label %74, !dbg !3082

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3082
  %71 = sext i32 %58 to i64, !dbg !3082
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3082
  %73 = add i32 %58, 8, !dbg !3082
  store i32 %73, i32* %8, align 8, !dbg !3082
  br label %74, !dbg !3082

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3082
  %78 = load i8*, i8** %77, align 8, !dbg !3082
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3085
  store i8* %78, i8** %79, align 8, !dbg !3086, !tbaa !684
  %80 = icmp eq i8* %78, null, !dbg !3087
  br i1 %80, label %30, label %81, !dbg !3088

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 4, metadata !3071, metadata !DIExpression()), !dbg !3081
  %82 = icmp ult i32 %75, 41, !dbg !3082
  br i1 %82, label %86, label %83, !dbg !3082

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3082
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3082
  store i8* %85, i8** %10, align 8, !dbg !3082
  br label %91, !dbg !3082

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3082
  %88 = sext i32 %75 to i64, !dbg !3082
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3082
  %90 = add i32 %75, 8, !dbg !3082
  store i32 %90, i32* %8, align 8, !dbg !3082
  br label %91, !dbg !3082

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3082
  %95 = load i8*, i8** %94, align 8, !dbg !3082
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3085
  store i8* %95, i8** %96, align 16, !dbg !3086, !tbaa !684
  %97 = icmp eq i8* %95, null, !dbg !3087
  br i1 %97, label %30, label %98, !dbg !3088

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 5, metadata !3071, metadata !DIExpression()), !dbg !3081
  %99 = icmp ult i32 %92, 41, !dbg !3082
  br i1 %99, label %103, label %100, !dbg !3082

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3082
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3082
  store i8* %102, i8** %10, align 8, !dbg !3082
  br label %108, !dbg !3082

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3082
  %105 = sext i32 %92 to i64, !dbg !3082
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3082
  %107 = add i32 %92, 8, !dbg !3082
  store i32 %107, i32* %8, align 8, !dbg !3082
  br label %108, !dbg !3082

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3082
  %111 = load i8*, i8** %110, align 8, !dbg !3082
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3085
  store i8* %111, i8** %112, align 8, !dbg !3086, !tbaa !684
  %113 = icmp eq i8* %111, null, !dbg !3087
  br i1 %113, label %30, label %114, !dbg !3088

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 6, metadata !3071, metadata !DIExpression()), !dbg !3081
  %115 = load i8*, i8** %10, align 8, !dbg !3082
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3082
  store i8* %116, i8** %10, align 8, !dbg !3082
  %117 = bitcast i8* %115 to i8**, !dbg !3082
  %118 = load i8*, i8** %117, align 8, !dbg !3082
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3085
  store i8* %118, i8** %119, align 16, !dbg !3086, !tbaa !684
  %120 = icmp eq i8* %118, null, !dbg !3087
  br i1 %120, label %30, label %121, !dbg !3088

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 7, metadata !3071, metadata !DIExpression()), !dbg !3081
  %122 = load i8*, i8** %10, align 8, !dbg !3082
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3082
  store i8* %123, i8** %10, align 8, !dbg !3082
  %124 = bitcast i8* %122 to i8**, !dbg !3082
  %125 = load i8*, i8** %124, align 8, !dbg !3082
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3085
  store i8* %125, i8** %126, align 8, !dbg !3086, !tbaa !684
  %127 = icmp eq i8* %125, null, !dbg !3087
  br i1 %127, label %30, label %128, !dbg !3088

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 8, metadata !3071, metadata !DIExpression()), !dbg !3081
  %129 = load i8*, i8** %10, align 8, !dbg !3082
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3082
  store i8* %130, i8** %10, align 8, !dbg !3082
  %131 = bitcast i8* %129 to i8**, !dbg !3082
  %132 = load i8*, i8** %131, align 8, !dbg !3082
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3085
  store i8* %132, i8** %133, align 16, !dbg !3086, !tbaa !684
  %134 = icmp eq i8* %132, null, !dbg !3087
  br i1 %134, label %30, label %135, !dbg !3088

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3071, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 9, metadata !3071, metadata !DIExpression()), !dbg !3081
  %136 = load i8*, i8** %10, align 8, !dbg !3082
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3082
  store i8* %137, i8** %10, align 8, !dbg !3082
  %138 = bitcast i8* %136 to i8**, !dbg !3082
  %139 = load i8*, i8** %138, align 8, !dbg !3082
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3085
  store i8* %139, i8** %140, align 8, !dbg !3086, !tbaa !684
  %141 = icmp eq i8* %139, null, !dbg !3087
  %142 = select i1 %141, i64 9, i64 10, !dbg !3088
  br label %30, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3092 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3096, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %3, metadata !3099, metadata !DIExpression()), !dbg !3110
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3111
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3111
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3100, metadata !DIExpression()), !dbg !3112
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3113
  call void @llvm.va_start(i8* nonnull %6), !dbg !3113
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3114
  call void @llvm.va_end(i8* nonnull %6), !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3116
  ret void, !dbg !3116
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3117 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3118
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3118
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !3119
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !3119
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.97, i64 0, i64 0), i32 5) #10, !dbg !3120
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3120, !tbaa !684
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3120
  ret void, !dbg !3121
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3122 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3129
  %3 = udiv i64 9223372036854775807, %1, !dbg !3130
  %4 = icmp ult i64 %3, %0, !dbg !3130
  br i1 %4, label %5, label %6, !dbg !3132

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3133
  unreachable, !dbg !3133

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %7, metadata !3135, metadata !DIExpression()) #10, !dbg !3142
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %8, metadata !3141, metadata !DIExpression()) #10, !dbg !3145
  %9 = icmp eq i8* %8, null, !dbg !3146
  %10 = icmp ne i64 %7, 0, !dbg !3148
  %11 = and i1 %10, %9, !dbg !3149
  br i1 %11, label %12, label %13, !dbg !3149

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3150
  unreachable, !dbg !3150

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3151
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3136 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()), !dbg !3152
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()), !dbg !3154
  %3 = icmp eq i8* %2, null, !dbg !3155
  %4 = icmp ne i64 %0, 0, !dbg !3156
  %5 = and i1 %4, %3, !dbg !3157
  br i1 %5, label %6, label %7, !dbg !3157

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3158
  unreachable, !dbg !3158

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3159
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %2, metadata !3166, metadata !DIExpression()), !dbg !3169
  %4 = udiv i64 9223372036854775807, %2, !dbg !3170
  %5 = icmp ult i64 %4, %1, !dbg !3170
  br i1 %5, label %6, label %7, !dbg !3172

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3173
  unreachable, !dbg !3173

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()) #10, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3180, metadata !DIExpression()) #10, !dbg !3183
  %9 = icmp eq i64 %8, 0, !dbg !3184
  %10 = icmp ne i8* %0, null, !dbg !3186
  %11 = and i1 %10, %9, !dbg !3187
  br i1 %11, label %12, label %13, !dbg !3187

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3188
  br label %19, !dbg !3190

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %14, metadata !3175, metadata !DIExpression()) #10, !dbg !3181
  %15 = icmp eq i8* %14, null, !dbg !3192
  %16 = icmp ne i64 %8, 0, !dbg !3194
  %17 = and i1 %16, %15, !dbg !3195
  br i1 %17, label %18, label %19, !dbg !3195

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3196
  unreachable, !dbg !3196

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3197
  ret i8* %20, !dbg !3198
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3176 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()), !dbg !3200
  %3 = icmp eq i64 %1, 0, !dbg !3201
  %4 = icmp ne i8* %0, null, !dbg !3202
  %5 = and i1 %4, %3, !dbg !3203
  br i1 %5, label %6, label %7, !dbg !3203

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3204
  br label %13, !dbg !3205

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %8, metadata !3175, metadata !DIExpression()), !dbg !3199
  %9 = icmp eq i8* %8, null, !dbg !3207
  %10 = icmp ne i64 %1, 0, !dbg !3208
  %11 = and i1 %10, %9, !dbg !3209
  br i1 %11, label %12, label %13, !dbg !3209

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3210
  unreachable, !dbg !3210

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3211
  ret i8* %14, !dbg !3212
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %2, metadata !196, metadata !DIExpression()), !dbg !3215
  %4 = load i64, i64* %1, align 8, !dbg !3216, !tbaa !2255
  call void @llvm.dbg.value(metadata i64 %4, metadata !197, metadata !DIExpression()), !dbg !3217
  %5 = icmp eq i8* %0, null, !dbg !3218
  br i1 %5, label %6, label %20, !dbg !3220

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3221
  br i1 %7, label %8, label %13, !dbg !3224

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %9, metadata !197, metadata !DIExpression()), !dbg !3217
  %10 = icmp ugt i64 %2, 128, !dbg !3227
  %11 = zext i1 %10 to i64, !dbg !3227
  %12 = add nuw nsw i64 %9, %11, !dbg !3228
  call void @llvm.dbg.value(metadata i64 %12, metadata !197, metadata !DIExpression()), !dbg !3217
  br label %13, !dbg !3229

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3230
  call void @llvm.dbg.value(metadata i64 %14, metadata !197, metadata !DIExpression()), !dbg !3217
  %15 = udiv i64 9223372036854775807, %2, !dbg !3231
  %16 = icmp ult i64 %15, %14, !dbg !3231
  br i1 %16, label %19, label %17, !dbg !3233

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3217
  store i64 %14, i64* %1, align 8, !dbg !3234, !tbaa !2255
  %18 = mul i64 %14, %2, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()) #10, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %28, metadata !3180, metadata !DIExpression()) #10, !dbg !3238
  br label %31, !dbg !3239

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3240
  unreachable, !dbg !3240

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3241
  %22 = icmp ugt i64 %21, %4, !dbg !3244
  br i1 %22, label %24, label %23, !dbg !3245

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3246
  unreachable, !dbg !3246

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3247
  %26 = add i64 %4, 1, !dbg !3248
  %27 = add i64 %26, %25, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3217
  store i64 %27, i64* %1, align 8, !dbg !3234, !tbaa !2255
  %28 = mul i64 %27, %2, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()) #10, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %28, metadata !3180, metadata !DIExpression()) #10, !dbg !3238
  %29 = icmp eq i64 %28, 0, !dbg !3250
  br i1 %29, label %30, label %31, !dbg !3239

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3251
  br label %38, !dbg !3252

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %33, metadata !3175, metadata !DIExpression()) #10, !dbg !3236
  %34 = icmp eq i8* %33, null, !dbg !3254
  %35 = icmp ne i64 %32, 0, !dbg !3255
  %36 = and i1 %35, %34, !dbg !3256
  br i1 %36, label %37, label %38, !dbg !3256

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3257
  unreachable, !dbg !3257

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3258
  ret i8* %39, !dbg !3259
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3260 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()) #10, !dbg !3264
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()) #10, !dbg !3267
  %3 = icmp eq i8* %2, null, !dbg !3268
  %4 = icmp ne i64 %0, 0, !dbg !3269
  %5 = and i1 %4, %3, !dbg !3270
  br i1 %5, label %6, label %7, !dbg !3270

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3271
  unreachable, !dbg !3271

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64* %1, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()) #10, !dbg !3281
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()) #10, !dbg !3283
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()) #10, !dbg !3284
  %3 = load i64, i64* %1, align 8, !dbg !3285, !tbaa !2255
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #10, !dbg !3286
  %4 = icmp eq i8* %0, null, !dbg !3287
  br i1 %4, label %5, label %12, !dbg !3288

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3289
  br i1 %6, label %9, label %7, !dbg !3290

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #10, !dbg !3286
  %8 = icmp slt i64 %3, 0, !dbg !3291
  br i1 %8, label %11, label %9, !dbg !3292

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3286
  store i64 %10, i64* %1, align 8, !dbg !3293, !tbaa !2255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()) #10, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %18, metadata !3180, metadata !DIExpression()) #10, !dbg !3296
  br label %21, !dbg !3297

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3298
  unreachable, !dbg !3298

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3299
  br i1 %13, label %15, label %14, !dbg !3300

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3301
  unreachable, !dbg !3301

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3302
  %17 = add i64 %3, 1, !dbg !3303
  %18 = add i64 %17, %16, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3286
  store i64 %18, i64* %1, align 8, !dbg !3293, !tbaa !2255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()) #10, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %18, metadata !3180, metadata !DIExpression()) #10, !dbg !3296
  %19 = icmp eq i64 %18, 0, !dbg !3305
  br i1 %19, label %20, label %21, !dbg !3297

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3306
  br label %28, !dbg !3307

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %23, metadata !3175, metadata !DIExpression()) #10, !dbg !3294
  %24 = icmp eq i8* %23, null, !dbg !3309
  %25 = icmp ne i64 %22, 0, !dbg !3310
  %26 = and i1 %25, %24, !dbg !3311
  br i1 %26, label %27, label %28, !dbg !3311

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3312
  unreachable, !dbg !3312

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3313
  ret i8* %29, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3315 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()) #10, !dbg !3319
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()) #10, !dbg !3322
  %3 = icmp eq i8* %2, null, !dbg !3323
  %4 = icmp ne i64 %0, 0, !dbg !3324
  %5 = and i1 %4, %3, !dbg !3325
  br i1 %5, label %6, label %7, !dbg !3325

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3326
  unreachable, !dbg !3326

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3327
  ret i8* %2, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3329 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3335
  %3 = udiv i64 9223372036854775807, %1, !dbg !3336
  %4 = icmp ult i64 %3, %0, !dbg !3336
  br i1 %4, label %8, label %5, !dbg !3338

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %6, metadata !3333, metadata !DIExpression()), !dbg !3340
  %7 = icmp eq i8* %6, null, !dbg !3341
  br i1 %7, label %8, label %9, !dbg !3342

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3343
  unreachable, !dbg !3343

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()) #10, !dbg !3355
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %3, metadata !3141, metadata !DIExpression()) #10, !dbg !3358
  %4 = icmp eq i8* %3, null, !dbg !3359
  %5 = icmp ne i64 %1, 0, !dbg !3360
  %6 = and i1 %5, %4, !dbg !3361
  br i1 %6, label %7, label %8, !dbg !3361

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3362
  unreachable, !dbg !3362

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3363
  ret i8* %3, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3367, metadata !DIExpression()), !dbg !3368
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3369
  %3 = add i64 %2, 1, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()) #10, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %3, metadata !3352, metadata !DIExpression()) #10, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %3, metadata !3135, metadata !DIExpression()) #10, !dbg !3374
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %4, metadata !3141, metadata !DIExpression()) #10, !dbg !3377
  %5 = icmp eq i8* %4, null, !dbg !3378
  %6 = icmp ne i64 %3, 0, !dbg !3379
  %7 = and i1 %6, %5, !dbg !3380
  br i1 %7, label %8, label %9, !dbg !3380

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3381
  unreachable, !dbg !3381

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3382
  ret i8* %4, !dbg !3383
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3384 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3386, !tbaa !779
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #10, !dbg !3387
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #10, !dbg !3388
  tail call void @abort() #15, !dbg !3389
  unreachable, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #7 !dbg !3390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %1, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32** %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %4, metadata !3396, metadata !DIExpression()), !dbg !3401
  %5 = icmp eq i32 %4, -1, !dbg !3402
  br i1 %5, label %6, label %11, !dbg !3404

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3405
  %8 = load i32, i32* %7, align 4, !dbg !3405, !tbaa !779
  %9 = icmp eq i32 %8, 12, !dbg !3406
  br i1 %9, label %10, label %11, !dbg !3407

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3408
  unreachable, !dbg !3408

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3410 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3413, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3420
  %3 = icmp eq i64 %0, 0, !dbg !3421
  %4 = icmp eq i64 %1, 0, !dbg !3422
  %5 = or i1 %3, %4, !dbg !3423
  br i1 %5, label %12, label %6, !dbg !3423

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %7, metadata !3416, metadata !DIExpression()), !dbg !3425
  %8 = udiv i64 %7, %1, !dbg !3426
  %9 = icmp eq i64 %8, %0, !dbg !3428
  br i1 %9, label %12, label %10, !dbg !3429

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3430
  store i32 12, i32* %11, align 4, !dbg !3432, !tbaa !779
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3413, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %13, metadata !3414, metadata !DIExpression()), !dbg !3420
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %15, metadata !3415, metadata !DIExpression()), !dbg !3434
  br label %16, !dbg !3435

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3436
  ret i8* %17, !dbg !3437
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3438 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3455, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %1, metadata !3456, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %2, metadata !3457, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3458, metadata !DIExpression()), !dbg !3467
  %6 = bitcast i32* %5 to i8*, !dbg !3468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3468
  %7 = icmp eq i32* %0, null, !dbg !3469
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %8, metadata !3455, metadata !DIExpression()), !dbg !3464
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %9, metadata !3459, metadata !DIExpression()), !dbg !3473
  %10 = icmp ugt i64 %9, -3, !dbg !3474
  %11 = icmp ne i64 %2, 0, !dbg !3475
  %12 = and i1 %11, %10, !dbg !3476
  br i1 %12, label %13, label %18, !dbg !3476

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3477
  br i1 %14, label %18, label %15, !dbg !3478

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3479, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %16, metadata !3461, metadata !DIExpression()), !dbg !3480
  %17 = zext i8 %16 to i32, !dbg !3481
  store i32 %17, i32* %8, align 4, !dbg !3482, !tbaa !779
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3484
  ret i64 %19, !dbg !3484
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3485 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3524, metadata !DIExpression()), !dbg !3529
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3530
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3531, metadata !DIExpression()), !dbg !3534
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3536
  %4 = load i32, i32* %3, align 8, !dbg !3536, !tbaa !3537
  %5 = and i32 %4, 32, !dbg !3536
  %6 = icmp eq i32 %5, 0, !dbg !3538
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3539
  %8 = icmp ne i32 %7, 0, !dbg !3540
  br i1 %6, label %9, label %19, !dbg !3541

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3543
  %11 = xor i1 %8, true, !dbg !3544
  %12 = or i1 %10, %11, !dbg !3544
  %13 = sext i1 %8 to i32, !dbg !3544
  br i1 %12, label %22, label %14, !dbg !3544

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3545
  %16 = load i32, i32* %15, align 4, !dbg !3545, !tbaa !779
  %17 = icmp ne i32 %16, 9, !dbg !3546
  %18 = sext i1 %17 to i32, !dbg !3547
  br label %22, !dbg !3547

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3548

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3550
  store i32 0, i32* %21, align 4, !dbg !3552, !tbaa !779
  br label %22, !dbg !3550

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3553
  ret i32 %23, !dbg !3554
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8 1, metadata !3561, metadata !DIExpression()), !dbg !3564
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %2, metadata !3562, metadata !DIExpression()), !dbg !3566
  %3 = icmp eq i8* %2, null, !dbg !3567
  br i1 %3, label %11, label %4, !dbg !3569

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !3570
  %6 = icmp eq i32 %5, 0, !dbg !3575
  br i1 %6, label %10, label %7, !dbg !3576

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !3577
  %9 = icmp eq i32 %8, 0, !dbg !3578
  br i1 %9, label %10, label %11, !dbg !3579

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3561, metadata !DIExpression()), !dbg !3564
  br label %11, !dbg !3580

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3582 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %1, metadata !3587, metadata !DIExpression()), !dbg !3589
  %2 = icmp eq i8* %1, null, !dbg !3590
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %1, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %3, metadata !3587, metadata !DIExpression()), !dbg !3589
  %4 = load i8, i8* %3, align 1, !dbg !3593, !tbaa !833
  %5 = icmp eq i8 %4, 0, !dbg !3597
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* %3, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %6, metadata !3587, metadata !DIExpression()), !dbg !3589
  ret i8* %6, !dbg !3599
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #7 !dbg !608 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !614, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 %1, metadata !615, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32** %2, metadata !616, metadata !DIExpression()), !dbg !3602
  %5 = bitcast i32* %4 to i8*, !dbg !3603
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !3603
  %6 = icmp eq i8* %0, null, !dbg !3604
  br i1 %6, label %43, label %7, !dbg !3605

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !617, metadata !DIExpression()), !dbg !3606
  store i32 10, i32* %4, align 4, !dbg !3607, !tbaa !779
  call void @llvm.dbg.value(metadata i32* null, metadata !3608, metadata !DIExpression()) #10, !dbg !3614
  call void @llvm.dbg.value(metadata i64 10, metadata !3613, metadata !DIExpression()) #10, !dbg !3616
  %8 = tail call i8* @malloc(i64 40), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %8, metadata !619, metadata !DIExpression()), !dbg !3618
  %9 = icmp eq i8* %8, null, !dbg !3619
  br i1 %9, label %146, label %10, !dbg !3621

; <label>:10:                                     ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !3622
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ], !dbg !3623
  %13 = bitcast i8* %12 to i32*, !dbg !3623
  call void @llvm.dbg.value(metadata i32* %13, metadata !619, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %11, metadata !617, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 %11, metadata !624, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32* %4, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !3606
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %14, metadata !618, metadata !DIExpression()), !dbg !3626
  %15 = icmp slt i32 %14, 0, !dbg !3627
  %16 = load i32, i32* %4, align 4, !dbg !3629, !tbaa !779
  %17 = icmp eq i32 %11, %16, !dbg !3630
  %18 = and i1 %15, %17, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %16, metadata !617, metadata !DIExpression()), !dbg !3606
  br i1 %18, label %19, label %21, !dbg !3631

; <label>:19:                                     ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %20, metadata !617, metadata !DIExpression()), !dbg !3606
  store i32 %20, i32* %4, align 4, !dbg !3632, !tbaa !779
  br label %21, !dbg !3633

; <label>:21:                                     ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !3634
  call void @llvm.dbg.value(metadata i32 %22, metadata !617, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32* %13, metadata !3608, metadata !DIExpression()) #10, !dbg !3635
  %23 = icmp slt i32 %22, 0, !dbg !3637
  br i1 %23, label %24, label %26, !dbg !3639

; <label>:24:                                     ; preds = %21
  %25 = tail call i32* @__errno_location() #17, !dbg !3640
  store i32 12, i32* %25, align 4, !dbg !3642, !tbaa !779
  call void @llvm.dbg.value(metadata i8* %29, metadata !620, metadata !DIExpression()), !dbg !3643
  br label %33, !dbg !3644

; <label>:26:                                     ; preds = %21
  %27 = sext i32 %22 to i64, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %27, metadata !3613, metadata !DIExpression()) #10, !dbg !3645
  %28 = shl nsw i64 %27, 2, !dbg !3646
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #10, !dbg !3647
  %30 = icmp eq i8* %29, null, !dbg !3648
  br i1 %30, label %31, label %36, !dbg !3644

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #17, !dbg !3649
  br label %33, !dbg !3649

; <label>:33:                                     ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !3649
  %35 = load i32, i32* %34, align 4, !dbg !3649, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %35, metadata !625, metadata !DIExpression()), !dbg !3650
  call void @free(i8* nonnull %12) #10, !dbg !3651
  store i32 %35, i32* %34, align 4, !dbg !3652, !tbaa !779
  br label %146

; <label>:36:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !620, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %29, metadata !619, metadata !DIExpression()), !dbg !3618
  %37 = icmp sgt i32 %14, -1, !dbg !3653
  br i1 %37, label %40, label %38, !dbg !3655

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !3622, !tbaa !779
  br label %10, !dbg !3655

; <label>:40:                                     ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !3656
  store i8* %29, i8** %41, align 8, !dbg !3656, !tbaa !684
  %42 = load i32, i32* %4, align 4, !dbg !3658, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %42, metadata !617, metadata !DIExpression()), !dbg !3606
  br label %146, !dbg !3659

; <label>:43:                                     ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %44, metadata !617, metadata !DIExpression()), !dbg !3606
  store i32 %44, i32* %4, align 4, !dbg !3661, !tbaa !779
  %45 = icmp slt i32 %44, 0, !dbg !3662
  br i1 %45, label %46, label %58, !dbg !3664

; <label>:46:                                     ; preds = %43
  %47 = tail call i32* @__errno_location() #17, !dbg !3665
  %48 = load i32, i32* %47, align 4, !dbg !3665, !tbaa !779
  %49 = icmp eq i32 %48, 38, !dbg !3668
  br i1 %49, label %50, label %146, !dbg !3669

; <label>:50:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !3608, metadata !DIExpression()) #10, !dbg !3670
  call void @llvm.dbg.value(metadata i64 1, metadata !3613, metadata !DIExpression()) #10, !dbg !3672
  %51 = tail call i8* @malloc(i64 4), !dbg !3673
  %52 = icmp eq i8* %51, null, !dbg !3674
  br i1 %52, label %146, label %53, !dbg !3675

; <label>:53:                                     ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !3673
  call void @llvm.dbg.value(metadata i32* %54, metadata !619, metadata !DIExpression()), !dbg !3618
  %55 = bitcast i32** %2 to i8**, !dbg !3676
  store i8* %51, i8** %55, align 8, !dbg !3676, !tbaa !684
  store i32 %1, i32* %54, align 4, !dbg !3678, !tbaa !779
  %56 = icmp ne i32 %1, -1, !dbg !3679
  %57 = zext i1 %56 to i32, !dbg !3679
  br label %146, !dbg !3680

; <label>:58:                                     ; preds = %43
  %59 = icmp eq i32 %44, 0, !dbg !3681
  %60 = icmp ne i32 %1, -1, !dbg !3683
  %61 = or i1 %60, %59, !dbg !3684
  br i1 %61, label %62, label %67, !dbg !3684

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !617, metadata !DIExpression()), !dbg !3606
  %63 = add nsw i32 %44, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i32 %63, metadata !617, metadata !DIExpression()), !dbg !3606
  store i32 %63, i32* %4, align 4, !dbg !3685, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %63, metadata !617, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32* null, metadata !3608, metadata !DIExpression()) #10, !dbg !3686
  %64 = icmp slt i32 %44, -1, !dbg !3688
  br i1 %64, label %65, label %67, !dbg !3689

; <label>:65:                                     ; preds = %62
  %66 = tail call i32* @__errno_location() #17, !dbg !3690
  store i32 12, i32* %66, align 4, !dbg !3691, !tbaa !779
  call void @llvm.dbg.value(metadata i32* %72, metadata !619, metadata !DIExpression()), !dbg !3618
  br label %146, !dbg !3692

; <label>:67:                                     ; preds = %58, %62
  %68 = phi i32 [ %63, %62 ], [ %44, %58 ]
  %69 = sext i32 %68 to i64, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %69, metadata !3613, metadata !DIExpression()) #10, !dbg !3694
  %70 = shl nsw i64 %69, 2, !dbg !3695
  %71 = tail call i8* @malloc(i64 %70), !dbg !3696
  %72 = bitcast i8* %71 to i32*, !dbg !3696
  call void @llvm.dbg.value(metadata i32* %72, metadata !619, metadata !DIExpression()), !dbg !3618
  %73 = icmp eq i8* %71, null, !dbg !3697
  br i1 %73, label %146, label %74, !dbg !3692

; <label>:74:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i32 %63, metadata !617, metadata !DIExpression()), !dbg !3606
  %75 = zext i1 %60 to i32, !dbg !3699
  %76 = sub nsw i32 %68, %75, !dbg !3700
  %77 = zext i1 %60 to i64, !dbg !3701
  %78 = getelementptr inbounds i32, i32* %72, i64 %77, !dbg !3701
  %79 = tail call i32 @getgroups(i32 %76, i32* nonnull %78) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %79, metadata !618, metadata !DIExpression()), !dbg !3626
  %80 = icmp slt i32 %79, 0, !dbg !3703
  br i1 %80, label %81, label %84, !dbg !3704

; <label>:81:                                     ; preds = %74
  %82 = tail call i32* @__errno_location() #17, !dbg !3705
  %83 = load i32, i32* %82, align 4, !dbg !3705, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %83, metadata !628, metadata !DIExpression()), !dbg !3706
  tail call void @free(i8* nonnull %71) #10, !dbg !3707
  store i32 %83, i32* %82, align 4, !dbg !3708, !tbaa !779
  br label %146

; <label>:84:                                     ; preds = %74
  br i1 %60, label %85, label %87, !dbg !3709

; <label>:85:                                     ; preds = %84
  store i32 %1, i32* %72, align 4, !dbg !3711, !tbaa !779
  %86 = add nsw i32 %79, 1, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %86, metadata !618, metadata !DIExpression()), !dbg !3626
  br label %87, !dbg !3714

; <label>:87:                                     ; preds = %84, %85
  %88 = phi i32 [ %86, %85 ], [ %79, %84 ], !dbg !3715
  call void @llvm.dbg.value(metadata i32 %88, metadata !618, metadata !DIExpression()), !dbg !3626
  %89 = bitcast i32** %2 to i8**, !dbg !3716
  store i8* %71, i8** %89, align 8, !dbg !3716, !tbaa !684
  %90 = icmp sgt i32 %88, 1, !dbg !3717
  br i1 %90, label %91, label %146, !dbg !3718

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %72, align 4, !dbg !3719, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %92, metadata !631, metadata !DIExpression()), !dbg !3720
  %93 = sext i32 %88 to i64, !dbg !3721
  %94 = getelementptr inbounds i32, i32* %72, i64 %93, !dbg !3721
  call void @llvm.dbg.value(metadata i32* %94, metadata !635, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32* %72, metadata !634, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3723
  %95 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !3724
  %96 = bitcast i8* %95 to i32*, !dbg !3724
  call void @llvm.dbg.value(metadata i32* %96, metadata !634, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %88, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %72, metadata !619, metadata !DIExpression()), !dbg !3618
  %97 = icmp ugt i32* %94, %96, !dbg !3727
  br i1 %97, label %98, label %146, !dbg !3728

; <label>:98:                                     ; preds = %91
  %99 = shl nsw i64 %93, 2, !dbg !3729
  %100 = add nsw i64 %99, -5, !dbg !3729
  %101 = and i64 %100, 4, !dbg !3729
  %102 = icmp eq i64 %101, 0, !dbg !3729
  br i1 %102, label %103, label %117, !dbg !3729

; <label>:103:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i32 %88, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %72, metadata !619, metadata !DIExpression()), !dbg !3618
  %104 = load i32, i32* %96, align 4, !dbg !3729, !tbaa !779
  %105 = icmp eq i32 %104, %92, !dbg !3732
  br i1 %105, label %109, label %106, !dbg !3733

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !3734
  %108 = bitcast i8* %107 to i32*, !dbg !3734
  call void @llvm.dbg.value(metadata i32* %108, metadata !619, metadata !DIExpression()), !dbg !3618
  store i32 %104, i32* %108, align 4, !dbg !3735, !tbaa !779
  br label %111

; <label>:109:                                    ; preds = %103
  %110 = add nsw i32 %88, -1, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %110, metadata !618, metadata !DIExpression()), !dbg !3626
  br label %111, !dbg !3737

; <label>:111:                                    ; preds = %109, %106
  %112 = phi i32 [ %92, %109 ], [ %104, %106 ]
  %113 = phi i32* [ %72, %109 ], [ %108, %106 ], !dbg !3738
  %114 = phi i32 [ %110, %109 ], [ %88, %106 ], !dbg !3739
  call void @llvm.dbg.value(metadata i32* %96, metadata !634, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3723
  %115 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !3724
  %116 = bitcast i8* %115 to i32*, !dbg !3724
  call void @llvm.dbg.value(metadata i32* %116, metadata !634, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %114, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %113, metadata !619, metadata !DIExpression()), !dbg !3618
  br label %117, !dbg !3728

; <label>:117:                                    ; preds = %111, %98
  %118 = phi i32 [ %92, %98 ], [ %112, %111 ]
  %119 = phi i32* [ %96, %98 ], [ %116, %111 ]
  %120 = phi i32 [ %88, %98 ], [ %114, %111 ]
  %121 = phi i32* [ %72, %98 ], [ %113, %111 ]
  %122 = phi i32 [ undef, %98 ], [ %114, %111 ]
  %123 = icmp eq i64 %100, 3, !dbg !3729
  br i1 %123, label %146, label %124, !dbg !3729

; <label>:124:                                    ; preds = %117, %152
  %125 = phi i32 [ %153, %152 ], [ %118, %117 ]
  %126 = phi i32* [ %156, %152 ], [ %119, %117 ]
  %127 = phi i32 [ %155, %152 ], [ %120, %117 ]
  %128 = phi i32* [ %154, %152 ], [ %121, %117 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %128, metadata !619, metadata !DIExpression()), !dbg !3618
  %129 = load i32, i32* %126, align 4, !dbg !3729, !tbaa !779
  %130 = icmp eq i32 %129, %92, !dbg !3740
  %131 = icmp eq i32 %129, %125, !dbg !3732
  %132 = or i1 %130, %131, !dbg !3733
  br i1 %132, label %133, label %135, !dbg !3733

; <label>:133:                                    ; preds = %124
  %134 = add nsw i32 %127, -1, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %134, metadata !618, metadata !DIExpression()), !dbg !3626
  br label %137, !dbg !3737

; <label>:135:                                    ; preds = %124
  %136 = getelementptr inbounds i32, i32* %128, i64 1, !dbg !3734
  call void @llvm.dbg.value(metadata i32* %136, metadata !619, metadata !DIExpression()), !dbg !3618
  store i32 %129, i32* %136, align 4, !dbg !3735, !tbaa !779
  br label %137

; <label>:137:                                    ; preds = %133, %135
  %138 = phi i32 [ %125, %133 ], [ %129, %135 ]
  %139 = phi i32* [ %128, %133 ], [ %136, %135 ], !dbg !3738
  %140 = phi i32 [ %134, %133 ], [ %127, %135 ], !dbg !3739
  call void @llvm.dbg.value(metadata i32* %126, metadata !634, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3723
  %141 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !3724
  call void @llvm.dbg.value(metadata i32* %141, metadata !634, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %140, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %139, metadata !619, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %140, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %139, metadata !619, metadata !DIExpression()), !dbg !3618
  %142 = load i32, i32* %141, align 4, !dbg !3729, !tbaa !779
  %143 = icmp eq i32 %142, %92, !dbg !3740
  %144 = icmp eq i32 %142, %138, !dbg !3732
  %145 = or i1 %143, %144, !dbg !3733
  br i1 %145, label %150, label %148, !dbg !3733

; <label>:146:                                    ; preds = %117, %152, %91, %40, %33, %65, %87, %67, %46, %50, %7, %81, %53
  %147 = phi i32 [ %57, %53 ], [ -1, %81 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %67 ], [ %88, %87 ], [ -1, %65 ], [ %42, %40 ], [ -1, %33 ], [ %88, %91 ], [ %122, %117 ], [ %155, %152 ], !dbg !3715
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !3741
  ret i32 %147, !dbg !3741

; <label>:148:                                    ; preds = %137
  %149 = getelementptr inbounds i32, i32* %139, i64 1, !dbg !3734
  call void @llvm.dbg.value(metadata i32* %149, metadata !619, metadata !DIExpression()), !dbg !3618
  store i32 %142, i32* %149, align 4, !dbg !3735, !tbaa !779
  br label %152

; <label>:150:                                    ; preds = %137
  %151 = add nsw i32 %140, -1, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %151, metadata !618, metadata !DIExpression()), !dbg !3626
  br label %152, !dbg !3737

; <label>:152:                                    ; preds = %150, %148
  %153 = phi i32 [ %138, %150 ], [ %142, %148 ]
  %154 = phi i32* [ %139, %150 ], [ %149, %148 ], !dbg !3738
  %155 = phi i32 [ %151, %150 ], [ %140, %148 ], !dbg !3739
  call void @llvm.dbg.value(metadata i32* %141, metadata !634, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3723
  %156 = getelementptr inbounds i32, i32* %126, i64 2, !dbg !3724
  call void @llvm.dbg.value(metadata i32* %156, metadata !634, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %155, metadata !618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32* %154, metadata !619, metadata !DIExpression()), !dbg !3618
  %157 = icmp ult i32* %156, %94, !dbg !3727
  br i1 %157, label %124, label %146, !dbg !3728, !llvm.loop !3742
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3744 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 0, metadata !3784, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 0, metadata !3786, metadata !DIExpression()), !dbg !3789
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %2, metadata !3785, metadata !DIExpression()), !dbg !3791
  %3 = icmp slt i32 %2, 0, !dbg !3792
  br i1 %3, label %4, label %6, !dbg !3794

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3795
  br label %24, !dbg !3796

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3797
  %8 = icmp eq i32 %7, 0, !dbg !3797
  br i1 %8, label %13, label %9, !dbg !3799

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3800
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3801
  %12 = icmp eq i64 %11, -1, !dbg !3802
  br i1 %12, label %16, label %13, !dbg !3803

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3804
  %15 = icmp eq i32 %14, 0, !dbg !3804
  br i1 %15, label %16, label %18, !dbg !3805

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3784, metadata !DIExpression()), !dbg !3788
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %21, metadata !3786, metadata !DIExpression()), !dbg !3789
  br label %24, !dbg !3807

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3808
  %20 = load i32, i32* %19, align 4, !dbg !3808, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %20, metadata !3784, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %20, metadata !3784, metadata !DIExpression()), !dbg !3788
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %21, metadata !3786, metadata !DIExpression()), !dbg !3789
  %22 = icmp eq i32 %20, 0, !dbg !3809
  br i1 %22, label %24, label %23, !dbg !3807

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3811, !tbaa !779
  call void @llvm.dbg.value(metadata i32 -1, metadata !3786, metadata !DIExpression()), !dbg !3789
  br label %24, !dbg !3813

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3814
  ret i32 %25, !dbg !3815
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3816 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3855, metadata !DIExpression()), !dbg !3856
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3857
  br i1 %2, label %6, label %3, !dbg !3859

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3860
  %5 = icmp eq i32 %4, 0, !dbg !3860
  br i1 %5, label %6, label %8, !dbg !3861

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3862
  br label %17, !dbg !3863

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3864, metadata !DIExpression()) #10, !dbg !3869
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3871
  %10 = load i32, i32* %9, align 8, !dbg !3871, !tbaa !3537
  %11 = and i32 %10, 256, !dbg !3873
  %12 = icmp eq i32 %11, 0, !dbg !3873
  br i1 %12, label %15, label %13, !dbg !3874

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3875
  br label %15, !dbg !3875

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3876
  br label %17, !dbg !3877

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3878
  ret i32 %18, !dbg !3879
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3880 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3920, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %1, metadata !3921, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i32 %2, metadata !3922, metadata !DIExpression()), !dbg !3928
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3929
  %5 = load i8*, i8** %4, align 8, !dbg !3929, !tbaa !3930
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3931
  %7 = load i8*, i8** %6, align 8, !dbg !3931, !tbaa !3932
  %8 = icmp eq i8* %5, %7, !dbg !3933
  br i1 %8, label %9, label %28, !dbg !3934

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3935
  %11 = load i8*, i8** %10, align 8, !dbg !3935, !tbaa !827
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3936
  %13 = load i8*, i8** %12, align 8, !dbg !3936, !tbaa !3937
  %14 = icmp eq i8* %11, %13, !dbg !3938
  br i1 %14, label %15, label %28, !dbg !3939

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3940
  %17 = load i8*, i8** %16, align 8, !dbg !3940, !tbaa !3941
  %18 = icmp eq i8* %17, null, !dbg !3942
  br i1 %18, label %19, label %28, !dbg !3943

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3944
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %21, metadata !3923, metadata !DIExpression()), !dbg !3946
  %22 = icmp eq i64 %21, -1, !dbg !3947
  br i1 %22, label %30, label %23, !dbg !3949

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3950
  %25 = load i32, i32* %24, align 8, !dbg !3951, !tbaa !3537
  %26 = and i32 %25, -17, !dbg !3951
  store i32 %26, i32* %24, align 8, !dbg !3951, !tbaa !3537
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3952
  store i64 %21, i64* %27, align 8, !dbg !3953, !tbaa !3954
  br label %30, !dbg !3955

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3956
  br label %30, !dbg !3957

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3958
  ret i32 %31, !dbg !3959
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

!llvm.dbg.cu = !{!2, !39, !50, !55, !64, !170, !71, !78, !176, !163, !184, !201, !203, !205, !207, !210, !212, !214, !603, !639, !641, !643}
!llvm.ident = !{!645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645, !645}
!llvm.module.flags = !{!646, !647, !648, !649, !650}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/groups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !24)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !19, !21, !23}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !20, size: 32, offset: 192)
!24 = !{!25}
!25 = !DISubrange(count: 3)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "buf", scope: !28, file: !29, line: 96, type: !45, isLocal: true, isDefinition: true)
!28 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !29, file: !29, line: 94, type: !30, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !39, retainedNodes: !43)
!29 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !35, line: 64, baseType: !36)
!35 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 145, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !42)
!40 = !{!8, !41, !9}
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!26}
!43 = !{!44}
!44 = !DILocalVariable(name: "gid", arg: 1, scope: !28, file: !29, line: 94, type: !32)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 21)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "Version", scope: !50, file: !51, line: 2, type: !17, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !52)
!51 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!52 = !{!48}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "file_name", scope: !55, file: !60, line: 46, type: !17, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !57)
!56 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!57 = !{!53, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !55, file: !60, line: 56, type: !61, isLocal: true, isDefinition: true)
!60 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "exit_failure", scope: !64, file: !67, line: 24, type: !68, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !66)
!65 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!62}
!67 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!68 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "program_name", scope: !71, file: !75, line: 33, type: !17, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !74)
!72 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !{!8, !6}
!74 = !{!69}
!75 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !78, file: !122, line: 85, type: !157, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !115, globals: !119)
!79 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = !{!81, !95, !100}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !38, size: 32, elements: !83)
!82 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!84 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!88 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!89 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!90 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!91 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!92 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!93 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!94 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !38, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 46, baseType: !38, size: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!103 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!115 = !{!20, !116, !117, !6}
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 62, baseType: !41)
!118 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!119 = !{!76, !120, !127, !139, !141, !146, !153, !155}
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !78, file: !122, line: 101, type: !123, isLocal: false, isDefinition: true)
!122 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 320, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!125 = !{!126}
!126 = !DISubrange(count: 10)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !78, file: !122, line: 1052, type: !129, isLocal: false, isDefinition: true)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !122, line: 65, size: 448, elements: !130)
!130 = !{!131, !132, !133, !137, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !129, file: !122, line: 68, baseType: !81, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !122, line: 71, baseType: !20, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !129, file: !122, line: 75, baseType: !134, size: 256, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !129, file: !122, line: 78, baseType: !17, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !129, file: !122, line: 81, baseType: !17, size: 64, offset: 384)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !78, file: !122, line: 116, type: !129, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slot0", scope: !78, file: !122, line: 842, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "slotvec", scope: !78, file: !122, line: 845, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !122, line: 834, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !122, line: 836, baseType: !117, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !122, line: 837, baseType: !6, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "nslots", scope: !78, file: !122, line: 843, type: !20, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "slotvec0", scope: !78, file: !122, line: 844, type: !149, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 704, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !163, file: !166, line: 26, type: !167, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !165)
!164 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = !{!161}
!166 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 47)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!171 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !174, line: 102, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 72, baseType: !41)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !183)
!177 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = !{!179}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 41, baseType: !38, size: 32, elements: !181)
!180 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !{!182}
!182 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!183 = !{!8}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !200)
!185 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !189, file: !188, line: 186, baseType: !38, size: 32, elements: !198)
!188 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = distinct !DISubprogram(name: "x2nrealloc", scope: !188, file: !188, line: 174, type: !190, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !193)
!190 = !DISubroutineType(types: !191)
!191 = !{!8, !8, !192, !117}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(name: "p", arg: 1, scope: !189, file: !188, line: 174, type: !8)
!195 = !DILocalVariable(name: "pn", arg: 2, scope: !189, file: !188, line: 174, type: !192)
!196 = !DILocalVariable(name: "s", arg: 3, scope: !189, file: !188, line: 174, type: !117)
!197 = !DILocalVariable(name: "n", scope: !189, file: !188, line: 176, type: !117)
!198 = !{!199}
!199 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!200 = !{!117, !6, !8}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!202 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!204 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183)
!206 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !209)
!208 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!209 = !{!117}
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!211 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!213 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216, retainedTypes: !183)
!215 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!216 = !{!217}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 41, baseType: !38, size: 32, elements: !219)
!218 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!220 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!221 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!222 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!223 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!224 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!225 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!226 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!227 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!228 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!229 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!230 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!231 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!232 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!258 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!259 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!260 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!261 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!262 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!263 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!264 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!265 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!266 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!267 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!268 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!269 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!328 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!489 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!490 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!491 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!492 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!493 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!494 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!496 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!497 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!498 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!499 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!500 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!501 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!502 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!504 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!505 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!507 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!535 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!536 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!537 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!538 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!539 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!544 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!545 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!546 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!547 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !638)
!604 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!605 = !{!606}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !608, file: !607, line: 83, baseType: !38, size: 32, elements: !636)
!607 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!608 = distinct !DISubprogram(name: "mgetgroups", scope: !607, file: !607, line: 66, type: !609, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !603, retainedNodes: !613)
!609 = !DISubroutineType(types: !610)
!610 = !{!20, !17, !34, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !624, !625, !628, !631, !634, !635}
!614 = !DILocalVariable(name: "username", arg: 1, scope: !608, file: !607, line: 66, type: !17)
!615 = !DILocalVariable(name: "gid", arg: 2, scope: !608, file: !607, line: 66, type: !34)
!616 = !DILocalVariable(name: "groups", arg: 3, scope: !608, file: !607, line: 66, type: !611)
!617 = !DILocalVariable(name: "max_n_groups", scope: !608, file: !607, line: 68, type: !20)
!618 = !DILocalVariable(name: "ng", scope: !608, file: !607, line: 69, type: !20)
!619 = !DILocalVariable(name: "g", scope: !608, file: !607, line: 70, type: !612)
!620 = !DILocalVariable(name: "h", scope: !621, file: !607, line: 92, type: !612)
!621 = distinct !DILexicalBlock(scope: !622, file: !607, line: 91, column: 9)
!622 = distinct !DILexicalBlock(scope: !623, file: !607, line: 82, column: 5)
!623 = distinct !DILexicalBlock(scope: !608, file: !607, line: 81, column: 7)
!624 = !DILocalVariable(name: "last_n_groups", scope: !621, file: !607, line: 93, type: !20)
!625 = !DILocalVariable(name: "saved_errno", scope: !626, file: !607, line: 105, type: !20)
!626 = distinct !DILexicalBlock(scope: !627, file: !607, line: 104, column: 13)
!627 = distinct !DILexicalBlock(scope: !621, file: !607, line: 103, column: 15)
!628 = !DILocalVariable(name: "saved_errno", scope: !629, file: !607, line: 156, type: !20)
!629 = distinct !DILexicalBlock(scope: !630, file: !607, line: 154, column: 5)
!630 = distinct !DILexicalBlock(scope: !608, file: !607, line: 153, column: 7)
!631 = !DILocalVariable(name: "first", scope: !632, file: !607, line: 187, type: !34)
!632 = distinct !DILexicalBlock(scope: !633, file: !607, line: 186, column: 5)
!633 = distinct !DILexicalBlock(scope: !608, file: !607, line: 185, column: 7)
!634 = !DILocalVariable(name: "next", scope: !632, file: !607, line: 188, type: !612)
!635 = !DILocalVariable(name: "groups_end", scope: !632, file: !607, line: 189, type: !612)
!636 = !{!637}
!637 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!638 = !{!8, !34, !117}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!640 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183)
!642 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183)
!644 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!645 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!646 = !{i32 2, !"Dwarf Version", i32 4}
!647 = !{i32 2, !"Debug Info Version", i32 3}
!648 = !{i32 1, !"wchar_size", i32 4}
!649 = !{i32 7, !"PIC Level", i32 2}
!650 = !{i32 7, !"PIE Level", i32 2}
!651 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !652, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !20}
!654 = !{!655}
!655 = !DILocalVariable(name: "status", arg: 1, scope: !651, file: !3, line: 48, type: !20)
!656 = !DILocalVariable(name: "infomap", scope: !657, file: !658, line: 632, type: !672)
!657 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !658, file: !658, line: 630, type: !659, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !661)
!658 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!659 = !DISubroutineType(types: !660)
!660 = !{null, !17}
!661 = !{!662, !656, !663, !664, !671}
!662 = !DILocalVariable(name: "program", arg: 1, scope: !657, file: !658, line: 630, type: !17)
!663 = !DILocalVariable(name: "node", scope: !657, file: !658, line: 642, type: !17)
!664 = !DILocalVariable(name: "map_prog", scope: !657, file: !658, line: 643, type: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !657, file: !658, line: 632, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !667, file: !658, line: 632, baseType: !17, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !658, line: 632, baseType: !17, size: 64, offset: 64)
!671 = !DILocalVariable(name: "lc_messages", scope: !657, file: !658, line: 655, type: !17)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 896, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 7)
!675 = !DILocation(line: 632, column: 67, scope: !657, inlinedAt: !676)
!676 = distinct !DILocation(line: 62, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 53, column: 5)
!678 = distinct !DILexicalBlock(scope: !651, file: !3, line: 50, column: 7)
!679 = !DILocation(line: 48, column: 12, scope: !651)
!680 = !DILocation(line: 50, column: 14, scope: !678)
!681 = !DILocation(line: 50, column: 7, scope: !651)
!682 = !DILocation(line: 51, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 51, column: 5)
!684 = !{!685, !685, i64 0}
!685 = !{!"any pointer", !686, i64 0}
!686 = !{!"omnipotent char", !687, i64 0}
!687 = !{!"Simple C/C++ TBAA"}
!688 = !DILocation(line: 54, column: 7, scope: !677)
!689 = !DILocation(line: 55, column: 7, scope: !677)
!690 = !DILocation(line: 60, column: 7, scope: !677)
!691 = !DILocation(line: 61, column: 7, scope: !677)
!692 = !DILocation(line: 632, column: 3, scope: !657, inlinedAt: !676)
!693 = !DILocation(line: 643, column: 36, scope: !657, inlinedAt: !676)
!694 = !DILocation(line: 643, column: 25, scope: !657, inlinedAt: !676)
!695 = !DILocation(line: 645, column: 33, scope: !657, inlinedAt: !676)
!696 = !DILocation(line: 645, column: 3, scope: !657, inlinedAt: !676)
!697 = !DILocation(line: 646, column: 13, scope: !657, inlinedAt: !676)
!698 = !DILocation(line: 645, column: 20, scope: !657, inlinedAt: !676)
!699 = !{!700, !685, i64 0}
!700 = !{!"infomap", !685, i64 0, !685, i64 8}
!701 = !DILocation(line: 645, column: 10, scope: !657, inlinedAt: !676)
!702 = !DILocation(line: 645, column: 28, scope: !657, inlinedAt: !676)
!703 = distinct !{!703, !704, !705}
!704 = !DILocation(line: 645, column: 3, scope: !657)
!705 = !DILocation(line: 646, column: 13, scope: !657)
!706 = !DILocation(line: 648, column: 17, scope: !707, inlinedAt: !676)
!707 = distinct !DILexicalBlock(scope: !657, file: !658, line: 648, column: 7)
!708 = !{!700, !685, i64 8}
!709 = !DILocation(line: 648, column: 7, scope: !707, inlinedAt: !676)
!710 = !DILocation(line: 648, column: 7, scope: !657, inlinedAt: !676)
!711 = !DILocation(line: 642, column: 15, scope: !657, inlinedAt: !676)
!712 = !DILocation(line: 651, column: 3, scope: !657, inlinedAt: !676)
!713 = !DILocation(line: 655, column: 29, scope: !657, inlinedAt: !676)
!714 = !DILocation(line: 655, column: 15, scope: !657, inlinedAt: !676)
!715 = !DILocation(line: 656, column: 7, scope: !716, inlinedAt: !676)
!716 = distinct !DILexicalBlock(scope: !657, file: !658, line: 656, column: 7)
!717 = !DILocation(line: 656, column: 19, scope: !716, inlinedAt: !676)
!718 = !DILocation(line: 656, column: 22, scope: !716, inlinedAt: !676)
!719 = !DILocation(line: 656, column: 7, scope: !657, inlinedAt: !676)
!720 = !DILocation(line: 662, column: 7, scope: !721, inlinedAt: !676)
!721 = distinct !DILexicalBlock(scope: !716, file: !658, line: 657, column: 5)
!722 = !DILocation(line: 664, column: 5, scope: !721, inlinedAt: !676)
!723 = !DILocation(line: 665, column: 3, scope: !657, inlinedAt: !676)
!724 = !DILocation(line: 667, column: 3, scope: !657, inlinedAt: !676)
!725 = !DILocation(line: 669, column: 1, scope: !657, inlinedAt: !676)
!726 = !DILocation(line: 64, column: 3, scope: !651)
!727 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !728, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{!20, !20, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !741, !744, !745}
!732 = !DILocalVariable(name: "argc", arg: 1, scope: !727, file: !3, line: 68, type: !20)
!733 = !DILocalVariable(name: "argv", arg: 2, scope: !727, file: !3, line: 68, type: !730)
!734 = !DILocalVariable(name: "optc", scope: !727, file: !3, line: 70, type: !20)
!735 = !DILocalVariable(name: "ok", scope: !727, file: !3, line: 71, type: !61)
!736 = !DILocalVariable(name: "rgid", scope: !727, file: !3, line: 72, type: !34)
!737 = !DILocalVariable(name: "egid", scope: !727, file: !3, line: 72, type: !34)
!738 = !DILocalVariable(name: "ruid", scope: !727, file: !3, line: 73, type: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !35, line: 79, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 144, baseType: !38)
!741 = !DILocalVariable(name: "NO_UID", scope: !742, file: !3, line: 100, type: !739)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 98, column: 5)
!743 = distinct !DILexicalBlock(scope: !727, file: !3, line: 97, column: 7)
!744 = !DILocalVariable(name: "NO_GID", scope: !742, file: !3, line: 101, type: !34)
!745 = !DILocalVariable(name: "pwd", scope: !746, file: !3, line: 127, type: !750)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 126, column: 9)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 125, column: 7)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 125, column: 7)
!749 = distinct !DILexicalBlock(scope: !743, file: !3, line: 123, column: 5)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !752, line: 49, size: 384, elements: !753)
!752 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!753 = !{!754, !755, !756, !757, !758, !759, !760}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !751, file: !752, line: 51, baseType: !6, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !751, file: !752, line: 52, baseType: !6, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !751, file: !752, line: 54, baseType: !740, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !751, file: !752, line: 55, baseType: !36, size: 32, offset: 160)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !751, file: !752, line: 56, baseType: !6, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !751, file: !752, line: 57, baseType: !6, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !751, file: !752, line: 58, baseType: !6, size: 64, offset: 320)
!761 = !DILocation(line: 68, column: 11, scope: !727)
!762 = !DILocation(line: 68, column: 24, scope: !727)
!763 = !DILocation(line: 71, column: 8, scope: !727)
!764 = !DILocation(line: 76, column: 21, scope: !727)
!765 = !DILocation(line: 76, column: 3, scope: !727)
!766 = !DILocation(line: 77, column: 3, scope: !727)
!767 = !DILocation(line: 78, column: 3, scope: !727)
!768 = !DILocation(line: 79, column: 3, scope: !727)
!769 = !DILocation(line: 81, column: 3, scope: !727)
!770 = !DILocation(line: 86, column: 18, scope: !727)
!771 = !DILocation(line: 70, column: 7, scope: !727)
!772 = !DILocation(line: 86, column: 3, scope: !727)
!773 = !DILocation(line: 90, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 89, column: 9)
!775 = distinct !DILexicalBlock(scope: !727, file: !3, line: 87, column: 5)
!776 = !DILocation(line: 91, column: 9, scope: !774)
!777 = !DILocation(line: 93, column: 11, scope: !774)
!778 = !DILocation(line: 97, column: 7, scope: !743)
!779 = !{!780, !780, i64 0}
!780 = !{!"int", !686, i64 0}
!781 = !DILocation(line: 97, column: 14, scope: !743)
!782 = !DILocation(line: 97, column: 7, scope: !727)
!783 = !DILocation(line: 125, column: 22, scope: !747)
!784 = !DILocation(line: 125, column: 7, scope: !748)
!785 = !DILocation(line: 100, column: 13, scope: !742)
!786 = !DILocation(line: 101, column: 13, scope: !742)
!787 = !DILocation(line: 103, column: 7, scope: !742)
!788 = !DILocation(line: 103, column: 13, scope: !742)
!789 = !DILocation(line: 104, column: 14, scope: !742)
!790 = !DILocation(line: 73, column: 9, scope: !727)
!791 = !DILocation(line: 105, column: 16, scope: !792)
!792 = distinct !DILexicalBlock(scope: !742, file: !3, line: 105, column: 11)
!793 = !DILocation(line: 105, column: 26, scope: !792)
!794 = !DILocation(line: 105, column: 29, scope: !792)
!795 = !DILocation(line: 105, column: 11, scope: !742)
!796 = !DILocation(line: 106, column: 9, scope: !792)
!797 = !DILocation(line: 108, column: 13, scope: !742)
!798 = !DILocation(line: 109, column: 14, scope: !742)
!799 = !DILocation(line: 72, column: 15, scope: !727)
!800 = !DILocation(line: 110, column: 16, scope: !801)
!801 = distinct !DILexicalBlock(scope: !742, file: !3, line: 110, column: 11)
!802 = !DILocation(line: 110, column: 26, scope: !801)
!803 = !DILocation(line: 110, column: 29, scope: !801)
!804 = !DILocation(line: 110, column: 11, scope: !742)
!805 = !DILocation(line: 111, column: 9, scope: !801)
!806 = !DILocation(line: 113, column: 13, scope: !742)
!807 = !DILocation(line: 114, column: 14, scope: !742)
!808 = !DILocation(line: 72, column: 9, scope: !727)
!809 = !DILocation(line: 115, column: 16, scope: !810)
!810 = distinct !DILexicalBlock(scope: !742, file: !3, line: 115, column: 11)
!811 = !DILocation(line: 115, column: 26, scope: !810)
!812 = !DILocation(line: 115, column: 29, scope: !810)
!813 = !DILocation(line: 115, column: 11, scope: !742)
!814 = !DILocation(line: 116, column: 9, scope: !810)
!815 = !DILocation(line: 118, column: 12, scope: !816)
!816 = distinct !DILexicalBlock(scope: !742, file: !3, line: 118, column: 11)
!817 = !DILocation(line: 118, column: 11, scope: !742)
!818 = !DILocalVariable(name: "__c", arg: 1, scope: !819, file: !820, line: 108, type: !20)
!819 = distinct !DISubprogram(name: "putchar_unlocked", scope: !820, file: !820, line: 108, type: !821, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !823)
!820 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!821 = !DISubroutineType(types: !822)
!822 = !{!20, !20}
!823 = !{!818}
!824 = !DILocation(line: 108, column: 23, scope: !819, inlinedAt: !825)
!825 = distinct !DILocation(line: 120, column: 7, scope: !742)
!826 = !DILocation(line: 110, column: 10, scope: !819, inlinedAt: !825)
!827 = !{!828, !685, i64 40}
!828 = !{!"_IO_FILE", !780, i64 0, !685, i64 8, !685, i64 16, !685, i64 24, !685, i64 32, !685, i64 40, !685, i64 48, !685, i64 56, !685, i64 64, !685, i64 72, !685, i64 80, !685, i64 88, !685, i64 96, !685, i64 104, !780, i64 112, !780, i64 116, !829, i64 120, !830, i64 128, !686, i64 130, !686, i64 131, !685, i64 136, !829, i64 144, !685, i64 152, !685, i64 160, !685, i64 168, !685, i64 176, !829, i64 184, !780, i64 192, !686, i64 196}
!829 = !{!"long", !686, i64 0}
!830 = !{!"short", !686, i64 0}
!831 = !{!828, !685, i64 48}
!832 = !{!"branch_weights", i32 2000, i32 1}
!833 = !{!686, !686, i64 0}
!834 = !DILocation(line: 127, column: 42, scope: !746)
!835 = !DILocation(line: 127, column: 32, scope: !746)
!836 = !DILocation(line: 127, column: 26, scope: !746)
!837 = !DILocation(line: 128, column: 19, scope: !838)
!838 = distinct !DILexicalBlock(scope: !746, file: !3, line: 128, column: 15)
!839 = !DILocation(line: 128, column: 15, scope: !746)
!840 = !DILocation(line: 130, column: 28, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 129, column: 13)
!842 = !DILocation(line: 130, column: 63, scope: !841)
!843 = !DILocation(line: 130, column: 58, scope: !841)
!844 = !DILocation(line: 130, column: 51, scope: !841)
!845 = !DILocation(line: 130, column: 15, scope: !841)
!846 = !DILocation(line: 132, column: 15, scope: !841)
!847 = !DILocation(line: 134, column: 23, scope: !746)
!848 = !{!849, !780, i64 16}
!849 = !{!"passwd", !685, i64 0, !685, i64 8, !780, i64 16, !780, i64 20, !685, i64 24, !685, i64 32, !685, i64 40}
!850 = !DILocation(line: 135, column: 30, scope: !746)
!851 = !{!849, !780, i64 20}
!852 = !DILocation(line: 137, column: 11, scope: !746)
!853 = !DILocation(line: 138, column: 39, scope: !854)
!854 = distinct !DILexicalBlock(scope: !746, file: !3, line: 138, column: 15)
!855 = !DILocation(line: 138, column: 34, scope: !854)
!856 = !DILocation(line: 138, column: 16, scope: !854)
!857 = !DILocation(line: 138, column: 15, scope: !746)
!858 = !DILocation(line: 108, column: 23, scope: !819, inlinedAt: !859)
!859 = distinct !DILocation(line: 140, column: 11, scope: !746)
!860 = !DILocation(line: 110, column: 10, scope: !819, inlinedAt: !859)
!861 = !DILocation(line: 0, scope: !727)
!862 = !DILocation(line: 125, column: 36, scope: !747)
!863 = distinct !{!863, !784, !864}
!864 = !DILocation(line: 141, column: 9, scope: !748)
!865 = !DILocation(line: 144, column: 10, scope: !727)
!866 = !DILocation(line: 145, column: 1, scope: !727)
!867 = distinct !DISubprogram(name: "print_group_list", scope: !29, file: !29, line: 36, type: !868, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !39, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!61, !17, !739, !34, !34, !61, !7}
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !889, !891, !892}
!871 = !DILocalVariable(name: "username", arg: 1, scope: !867, file: !29, line: 36, type: !17)
!872 = !DILocalVariable(name: "ruid", arg: 2, scope: !867, file: !29, line: 37, type: !739)
!873 = !DILocalVariable(name: "rgid", arg: 3, scope: !867, file: !29, line: 37, type: !34)
!874 = !DILocalVariable(name: "egid", arg: 4, scope: !867, file: !29, line: 37, type: !34)
!875 = !DILocalVariable(name: "use_names", arg: 5, scope: !867, file: !29, line: 38, type: !61)
!876 = !DILocalVariable(name: "delim", arg: 6, scope: !867, file: !29, line: 38, type: !7)
!877 = !DILocalVariable(name: "ok", scope: !867, file: !29, line: 40, type: !61)
!878 = !DILocalVariable(name: "pwd", scope: !867, file: !29, line: 41, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !752, line: 49, size: 384, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !880, file: !752, line: 51, baseType: !6, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !880, file: !752, line: 52, baseType: !6, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !880, file: !752, line: 54, baseType: !740, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !880, file: !752, line: 55, baseType: !36, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !880, file: !752, line: 56, baseType: !6, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !880, file: !752, line: 57, baseType: !6, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !880, file: !752, line: 58, baseType: !6, size: 64, offset: 320)
!889 = !DILocalVariable(name: "groups", scope: !890, file: !29, line: 61, type: !612)
!890 = distinct !DILexicalBlock(scope: !867, file: !29, line: 60, column: 3)
!891 = !DILocalVariable(name: "n_groups", scope: !890, file: !29, line: 63, type: !20)
!892 = !DILocalVariable(name: "i", scope: !893, file: !29, line: 78, type: !20)
!893 = distinct !DILexicalBlock(scope: !890, file: !29, line: 78, column: 5)
!894 = !DILocation(line: 36, column: 31, scope: !867)
!895 = !DILocation(line: 37, column: 25, scope: !867)
!896 = !DILocation(line: 37, column: 37, scope: !867)
!897 = !DILocation(line: 37, column: 49, scope: !867)
!898 = !DILocation(line: 38, column: 24, scope: !867)
!899 = !DILocation(line: 38, column: 40, scope: !867)
!900 = !DILocation(line: 40, column: 8, scope: !867)
!901 = !DILocation(line: 41, column: 18, scope: !867)
!902 = !DILocation(line: 43, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !867, file: !29, line: 43, column: 7)
!904 = !DILocation(line: 43, column: 7, scope: !867)
!905 = !DILocation(line: 45, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !29, line: 44, column: 5)
!907 = !DILocation(line: 46, column: 15, scope: !908)
!908 = distinct !DILexicalBlock(scope: !906, file: !29, line: 46, column: 11)
!909 = !DILocation(line: 46, column: 11, scope: !906)
!910 = !DILocation(line: 0, scope: !867)
!911 = !DILocalVariable(name: "gid", arg: 1, scope: !912, file: !29, line: 103, type: !34)
!912 = distinct !DISubprogram(name: "print_group", scope: !29, file: !29, line: 103, type: !913, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !39, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!61, !34, !61}
!915 = !{!911, !916, !917, !926, !927}
!916 = !DILocalVariable(name: "use_name", arg: 2, scope: !912, file: !29, line: 103, type: !61)
!917 = !DILocalVariable(name: "grp", scope: !912, file: !29, line: 105, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !920, line: 42, size: 256, elements: !921)
!920 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!921 = !{!922, !923, !924, !925}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !919, file: !920, line: 44, baseType: !6, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !919, file: !920, line: 45, baseType: !6, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !919, file: !920, line: 46, baseType: !36, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !919, file: !920, line: 47, baseType: !730, size: 64, offset: 192)
!926 = !DILocalVariable(name: "ok", scope: !912, file: !29, line: 106, type: !61)
!927 = !DILocalVariable(name: "s", scope: !912, file: !29, line: 119, type: !6)
!928 = !DILocation(line: 103, column: 20, scope: !912, inlinedAt: !929)
!929 = distinct !DILocation(line: 50, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !867, file: !29, line: 50, column: 7)
!931 = !DILocation(line: 103, column: 30, scope: !912, inlinedAt: !929)
!932 = !DILocation(line: 105, column: 17, scope: !912, inlinedAt: !929)
!933 = !DILocation(line: 106, column: 8, scope: !912, inlinedAt: !929)
!934 = !DILocation(line: 108, column: 7, scope: !912, inlinedAt: !929)
!935 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !936)
!936 = distinct !DILocation(line: 119, column: 34, scope: !912, inlinedAt: !929)
!937 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !936)
!938 = !DILocation(line: 119, column: 9, scope: !912, inlinedAt: !929)
!939 = !DILocation(line: 120, column: 3, scope: !912, inlinedAt: !929)
!940 = !DILocation(line: 110, column: 13, scope: !941, inlinedAt: !929)
!941 = distinct !DILexicalBlock(scope: !942, file: !29, line: 109, column: 5)
!942 = distinct !DILexicalBlock(scope: !912, file: !29, line: 108, column: 7)
!943 = !DILocation(line: 111, column: 15, scope: !944, inlinedAt: !929)
!944 = distinct !DILexicalBlock(scope: !941, file: !29, line: 111, column: 11)
!945 = !DILocation(line: 111, column: 11, scope: !941, inlinedAt: !929)
!946 = !DILocation(line: 113, column: 24, scope: !947, inlinedAt: !929)
!947 = distinct !DILexicalBlock(scope: !944, file: !29, line: 112, column: 9)
!948 = !DILocation(line: 114, column: 18, scope: !947, inlinedAt: !929)
!949 = !DILocation(line: 113, column: 11, scope: !947, inlinedAt: !929)
!950 = !DILocation(line: 50, column: 7, scope: !867)
!951 = !DILocation(line: 119, column: 24, scope: !912, inlinedAt: !929)
!952 = !{!953, !685, i64 0}
!953 = !{!"group", !685, i64 0, !685, i64 8, !780, i64 16, !685, i64 24}
!954 = !DILocation(line: 53, column: 12, scope: !955)
!955 = distinct !DILexicalBlock(scope: !867, file: !29, line: 53, column: 7)
!956 = !DILocation(line: 53, column: 7, scope: !867)
!957 = !DILocation(line: 110, column: 10, scope: !958, inlinedAt: !961)
!958 = distinct !DISubprogram(name: "putchar_unlocked", scope: !820, file: !820, line: 108, type: !821, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !39, retainedNodes: !959)
!959 = !{!960}
!960 = !DILocalVariable(name: "__c", arg: 1, scope: !958, file: !820, line: 108, type: !20)
!961 = distinct !DILocation(line: 55, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !29, line: 54, column: 5)
!963 = !DILocation(line: 55, column: 7, scope: !962)
!964 = !DILocation(line: 103, column: 20, scope: !912, inlinedAt: !965)
!965 = distinct !DILocation(line: 56, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !29, line: 56, column: 11)
!967 = !DILocation(line: 103, column: 30, scope: !912, inlinedAt: !965)
!968 = !DILocation(line: 105, column: 17, scope: !912, inlinedAt: !965)
!969 = !DILocation(line: 106, column: 8, scope: !912, inlinedAt: !965)
!970 = !DILocation(line: 108, column: 7, scope: !912, inlinedAt: !965)
!971 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !972)
!972 = distinct !DILocation(line: 119, column: 34, scope: !912, inlinedAt: !965)
!973 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !972)
!974 = !DILocation(line: 119, column: 9, scope: !912, inlinedAt: !965)
!975 = !DILocation(line: 120, column: 3, scope: !912, inlinedAt: !965)
!976 = !DILocation(line: 110, column: 13, scope: !941, inlinedAt: !965)
!977 = !DILocation(line: 111, column: 15, scope: !944, inlinedAt: !965)
!978 = !DILocation(line: 111, column: 11, scope: !941, inlinedAt: !965)
!979 = !DILocation(line: 113, column: 24, scope: !947, inlinedAt: !965)
!980 = !DILocation(line: 114, column: 18, scope: !947, inlinedAt: !965)
!981 = !DILocation(line: 113, column: 11, scope: !947, inlinedAt: !965)
!982 = !DILocation(line: 56, column: 11, scope: !962)
!983 = !DILocation(line: 119, column: 24, scope: !912, inlinedAt: !965)
!984 = !DILocation(line: 0, scope: !908)
!985 = !DILocation(line: 61, column: 5, scope: !890)
!986 = !DILocation(line: 63, column: 43, scope: !890)
!987 = !DILocation(line: 63, column: 54, scope: !890)
!988 = !DILocation(line: 61, column: 12, scope: !890)
!989 = !DILocation(line: 63, column: 20, scope: !890)
!990 = !DILocation(line: 63, column: 9, scope: !890)
!991 = !DILocation(line: 64, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !890, file: !29, line: 64, column: 9)
!993 = !DILocation(line: 64, column: 9, scope: !890)
!994 = !DILocation(line: 78, column: 14, scope: !893)
!995 = !DILocation(line: 78, column: 23, scope: !996)
!996 = distinct !DILexicalBlock(scope: !893, file: !29, line: 78, column: 5)
!997 = !DILocation(line: 78, column: 5, scope: !893)
!998 = !DILocation(line: 0, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !29, line: 72, column: 11)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !29, line: 66, column: 13)
!1001 = distinct !DILexicalBlock(scope: !992, file: !29, line: 65, column: 7)
!1002 = !DILocation(line: 66, column: 13, scope: !1001)
!1003 = !DILocation(line: 68, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !29, line: 67, column: 11)
!1005 = !DILocation(line: 69, column: 20, scope: !1004)
!1006 = !DILocation(line: 68, column: 13, scope: !1004)
!1007 = !DILocation(line: 70, column: 11, scope: !1004)
!1008 = !DILocation(line: 73, column: 30, scope: !999)
!1009 = !DILocation(line: 73, column: 13, scope: !999)
!1010 = !DILocation(line: 79, column: 11, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !996, file: !29, line: 79, column: 11)
!1012 = !DILocation(line: 79, column: 21, scope: !1011)
!1013 = !DILocation(line: 79, column: 42, scope: !1011)
!1014 = !DILocation(line: 79, column: 29, scope: !1011)
!1015 = !DILocation(line: 110, column: 10, scope: !958, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 81, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !29, line: 80, column: 9)
!1018 = !DILocation(line: 82, column: 29, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !29, line: 82, column: 15)
!1020 = !DILocation(line: 103, column: 20, scope: !912, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 82, column: 16, scope: !1019)
!1022 = !DILocation(line: 103, column: 30, scope: !912, inlinedAt: !1021)
!1023 = !DILocation(line: 105, column: 17, scope: !912, inlinedAt: !1021)
!1024 = !DILocation(line: 106, column: 8, scope: !912, inlinedAt: !1021)
!1025 = !DILocation(line: 108, column: 7, scope: !912, inlinedAt: !1021)
!1026 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 119, column: 34, scope: !912, inlinedAt: !1021)
!1028 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1027)
!1029 = !DILocation(line: 119, column: 9, scope: !912, inlinedAt: !1021)
!1030 = !DILocation(line: 120, column: 3, scope: !912, inlinedAt: !1021)
!1031 = !DILocation(line: 110, column: 13, scope: !941, inlinedAt: !1021)
!1032 = !DILocation(line: 111, column: 15, scope: !944, inlinedAt: !1021)
!1033 = !DILocation(line: 111, column: 11, scope: !941, inlinedAt: !1021)
!1034 = !DILocation(line: 113, column: 24, scope: !947, inlinedAt: !1021)
!1035 = !DILocation(line: 114, column: 18, scope: !947, inlinedAt: !1021)
!1036 = !DILocation(line: 113, column: 11, scope: !947, inlinedAt: !1021)
!1037 = !DILocation(line: 82, column: 15, scope: !1017)
!1038 = !DILocation(line: 119, column: 24, scope: !912, inlinedAt: !1021)
!1039 = !DILocation(line: 78, column: 36, scope: !996)
!1040 = distinct !{!1040, !997, !1041}
!1041 = !DILocation(line: 84, column: 9, scope: !893)
!1042 = !DILocation(line: 86, column: 3, scope: !867)
!1043 = !DILocation(line: 47, column: 12, scope: !908)
!1044 = !DILocation(line: 85, column: 11, scope: !890)
!1045 = !DILocation(line: 85, column: 5, scope: !890)
!1046 = !DILocation(line: 87, column: 10, scope: !867)
!1047 = !DILocation(line: 88, column: 1, scope: !867)
!1048 = !DILocation(line: 103, column: 20, scope: !912)
!1049 = !DILocation(line: 103, column: 30, scope: !912)
!1050 = !DILocation(line: 105, column: 17, scope: !912)
!1051 = !DILocation(line: 106, column: 8, scope: !912)
!1052 = !DILocation(line: 108, column: 7, scope: !912)
!1053 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 119, column: 34, scope: !912)
!1055 = !DILocation(line: 110, column: 13, scope: !941)
!1056 = !DILocation(line: 111, column: 15, scope: !944)
!1057 = !DILocation(line: 111, column: 11, scope: !941)
!1058 = !DILocation(line: 113, column: 24, scope: !947)
!1059 = !DILocation(line: 114, column: 18, scope: !947)
!1060 = !DILocation(line: 113, column: 11, scope: !947)
!1061 = !DILocation(line: 116, column: 9, scope: !947)
!1062 = !DILocation(line: 119, column: 24, scope: !912)
!1063 = !DILocation(line: 119, column: 13, scope: !912)
!1064 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1054)
!1065 = !DILocation(line: 119, column: 9, scope: !912)
!1066 = !DILocation(line: 120, column: 3, scope: !912)
!1067 = !DILocation(line: 121, column: 3, scope: !912)
!1068 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !60, file: !60, line: 51, type: !659, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1069)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "file", arg: 1, scope: !1068, file: !60, line: 51, type: !17)
!1071 = !DILocation(line: 51, column: 41, scope: !1068)
!1072 = !DILocation(line: 53, column: 13, scope: !1068)
!1073 = !DILocation(line: 54, column: 1, scope: !1068)
!1074 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !60, file: !60, line: 88, type: !1075, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !61}
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "ignore", arg: 1, scope: !1074, file: !60, line: 88, type: !61)
!1079 = !DILocation(line: 88, column: 37, scope: !1074)
!1080 = !DILocation(line: 90, column: 16, scope: !1074)
!1081 = !{!1082, !1082, i64 0}
!1082 = !{!"_Bool", !686, i64 0}
!1083 = !DILocation(line: 91, column: 1, scope: !1074)
!1084 = distinct !DISubprogram(name: "close_stdout", scope: !60, file: !60, line: 117, type: !1085, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null}
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "write_error", scope: !1089, file: !60, line: 122, type: !17)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !60, line: 121, column: 5)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !60, line: 119, column: 7)
!1091 = !DILocation(line: 119, column: 21, scope: !1090)
!1092 = !DILocation(line: 119, column: 7, scope: !1090)
!1093 = !DILocation(line: 119, column: 29, scope: !1090)
!1094 = !DILocation(line: 120, column: 7, scope: !1090)
!1095 = !DILocation(line: 120, column: 12, scope: !1090)
!1096 = !{i8 0, i8 2}
!1097 = !DILocation(line: 120, column: 25, scope: !1090)
!1098 = !DILocation(line: 120, column: 28, scope: !1090)
!1099 = !DILocation(line: 120, column: 34, scope: !1090)
!1100 = !DILocation(line: 119, column: 7, scope: !1084)
!1101 = !DILocation(line: 122, column: 33, scope: !1089)
!1102 = !DILocation(line: 122, column: 19, scope: !1089)
!1103 = !DILocation(line: 123, column: 11, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1089, file: !60, line: 123, column: 11)
!1105 = !DILocation(line: 0, scope: !1104)
!1106 = !DILocation(line: 123, column: 11, scope: !1089)
!1107 = !DILocation(line: 124, column: 36, scope: !1104)
!1108 = !DILocation(line: 124, column: 9, scope: !1104)
!1109 = !DILocation(line: 127, column: 9, scope: !1104)
!1110 = !DILocation(line: 129, column: 14, scope: !1089)
!1111 = !DILocation(line: 129, column: 7, scope: !1089)
!1112 = !DILocation(line: 134, column: 42, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1084, file: !60, line: 134, column: 7)
!1114 = !DILocation(line: 134, column: 28, scope: !1113)
!1115 = !DILocation(line: 134, column: 50, scope: !1113)
!1116 = !DILocation(line: 134, column: 7, scope: !1084)
!1117 = !DILocation(line: 135, column: 12, scope: !1113)
!1118 = !DILocation(line: 135, column: 5, scope: !1113)
!1119 = !DILocation(line: 136, column: 1, scope: !1084)
!1120 = distinct !DISubprogram(name: "umaxtostr", scope: !1121, file: !1121, line: 36, type: !1122, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !170, retainedNodes: !1124)
!1121 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!6, !173, !6}
!1124 = !{!1125, !1126, !1127}
!1125 = !DILocalVariable(name: "i", arg: 1, scope: !1120, file: !1121, line: 36, type: !173)
!1126 = !DILocalVariable(name: "buf", arg: 2, scope: !1120, file: !1121, line: 36, type: !6)
!1127 = !DILocalVariable(name: "p", scope: !1120, file: !1121, line: 38, type: !6)
!1128 = !DILocation(line: 36, column: 19, scope: !1120)
!1129 = !DILocation(line: 36, column: 28, scope: !1120)
!1130 = !DILocation(line: 38, column: 17, scope: !1120)
!1131 = !DILocation(line: 38, column: 9, scope: !1120)
!1132 = !DILocation(line: 39, column: 6, scope: !1120)
!1133 = !DILocation(line: 41, column: 7, scope: !1120)
!1134 = !DILocation(line: 0, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !1121, line: 50, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !1121, line: 41, column: 7)
!1137 = !DILocation(line: 52, column: 24, scope: !1135)
!1138 = !DILocation(line: 52, column: 16, scope: !1135)
!1139 = !DILocation(line: 52, column: 10, scope: !1135)
!1140 = !DILocation(line: 52, column: 14, scope: !1135)
!1141 = !DILocation(line: 53, column: 17, scope: !1135)
!1142 = !DILocation(line: 53, column: 24, scope: !1135)
!1143 = !DILocation(line: 52, column: 9, scope: !1135)
!1144 = distinct !{!1144, !1145, !1146}
!1145 = !DILocation(line: 51, column: 7, scope: !1135)
!1146 = !DILocation(line: 53, column: 28, scope: !1135)
!1147 = !DILocation(line: 56, column: 3, scope: !1120)
!1148 = distinct !DISubprogram(name: "set_program_name", scope: !75, file: !75, line: 39, type: !659, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DILocalVariable(name: "argv0", arg: 1, scope: !1148, file: !75, line: 39, type: !17)
!1151 = !DILocalVariable(name: "slash", scope: !1148, file: !75, line: 46, type: !17)
!1152 = !DILocalVariable(name: "base", scope: !1148, file: !75, line: 47, type: !17)
!1153 = !DILocation(line: 39, column: 31, scope: !1148)
!1154 = !DILocation(line: 51, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1148, file: !75, line: 51, column: 7)
!1156 = !DILocation(line: 51, column: 7, scope: !1148)
!1157 = !DILocation(line: 55, column: 14, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !75, line: 52, column: 5)
!1159 = !DILocation(line: 54, column: 7, scope: !1158)
!1160 = !DILocation(line: 56, column: 7, scope: !1158)
!1161 = !DILocation(line: 59, column: 11, scope: !1148)
!1162 = !DILocation(line: 46, column: 15, scope: !1148)
!1163 = !DILocation(line: 60, column: 17, scope: !1148)
!1164 = !DILocation(line: 60, column: 33, scope: !1148)
!1165 = !DILocation(line: 60, column: 11, scope: !1148)
!1166 = !DILocation(line: 47, column: 15, scope: !1148)
!1167 = !DILocation(line: 61, column: 12, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1148, file: !75, line: 61, column: 7)
!1169 = !DILocation(line: 61, column: 20, scope: !1168)
!1170 = !DILocation(line: 61, column: 25, scope: !1168)
!1171 = !DILocation(line: 61, column: 42, scope: !1168)
!1172 = !DILocation(line: 61, column: 28, scope: !1168)
!1173 = !DILocation(line: 61, column: 61, scope: !1168)
!1174 = !DILocation(line: 61, column: 7, scope: !1148)
!1175 = !DILocation(line: 64, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !75, line: 64, column: 11)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !75, line: 62, column: 5)
!1178 = !DILocation(line: 64, column: 36, scope: !1176)
!1179 = !DILocation(line: 64, column: 11, scope: !1177)
!1180 = !DILocation(line: 66, column: 24, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !75, line: 65, column: 9)
!1182 = !DILocation(line: 70, column: 41, scope: !1181)
!1183 = !DILocation(line: 72, column: 9, scope: !1181)
!1184 = !DILocation(line: 84, column: 16, scope: !1148)
!1185 = !DILocation(line: 90, column: 27, scope: !1148)
!1186 = !DILocation(line: 92, column: 1, scope: !1148)
!1187 = distinct !DISubprogram(name: "clone_quoting_options", scope: !122, file: !122, line: 122, type: !1188, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1191)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1190, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1191 = !{!1192, !1193, !1194}
!1192 = !DILocalVariable(name: "o", arg: 1, scope: !1187, file: !122, line: 122, type: !1190)
!1193 = !DILocalVariable(name: "e", scope: !1187, file: !122, line: 124, type: !20)
!1194 = !DILocalVariable(name: "p", scope: !1187, file: !122, line: 125, type: !1190)
!1195 = !DILocation(line: 122, column: 48, scope: !1187)
!1196 = !DILocation(line: 124, column: 11, scope: !1187)
!1197 = !DILocation(line: 124, column: 7, scope: !1187)
!1198 = !DILocation(line: 125, column: 40, scope: !1187)
!1199 = !DILocation(line: 125, column: 31, scope: !1187)
!1200 = !DILocation(line: 125, column: 27, scope: !1187)
!1201 = !DILocation(line: 127, column: 9, scope: !1187)
!1202 = !DILocation(line: 128, column: 3, scope: !1187)
!1203 = distinct !DISubprogram(name: "get_quoting_style", scope: !122, file: !122, line: 133, type: !1204, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1208)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!81, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "o", arg: 1, scope: !1203, file: !122, line: 133, type: !1206)
!1210 = !DILocation(line: 133, column: 50, scope: !1203)
!1211 = !DILocation(line: 135, column: 11, scope: !1203)
!1212 = !DILocation(line: 135, column: 46, scope: !1203)
!1213 = !{!1214, !686, i64 0}
!1214 = !{!"quoting_options", !686, i64 0, !780, i64 4, !686, i64 8, !685, i64 40, !685, i64 48}
!1215 = !DILocation(line: 135, column: 3, scope: !1203)
!1216 = distinct !DISubprogram(name: "set_quoting_style", scope: !122, file: !122, line: 141, type: !1217, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1190, !81}
!1219 = !{!1220, !1221}
!1220 = !DILocalVariable(name: "o", arg: 1, scope: !1216, file: !122, line: 141, type: !1190)
!1221 = !DILocalVariable(name: "s", arg: 2, scope: !1216, file: !122, line: 141, type: !81)
!1222 = !DILocation(line: 141, column: 44, scope: !1216)
!1223 = !DILocation(line: 141, column: 66, scope: !1216)
!1224 = !DILocation(line: 143, column: 4, scope: !1216)
!1225 = !DILocation(line: 143, column: 39, scope: !1216)
!1226 = !DILocation(line: 143, column: 45, scope: !1216)
!1227 = !DILocation(line: 144, column: 1, scope: !1216)
!1228 = distinct !DISubprogram(name: "set_char_quoting", scope: !122, file: !122, line: 152, type: !1229, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!20, !1190, !7, !20}
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1238, !1239}
!1232 = !DILocalVariable(name: "o", arg: 1, scope: !1228, file: !122, line: 152, type: !1190)
!1233 = !DILocalVariable(name: "c", arg: 2, scope: !1228, file: !122, line: 152, type: !7)
!1234 = !DILocalVariable(name: "i", arg: 3, scope: !1228, file: !122, line: 152, type: !20)
!1235 = !DILocalVariable(name: "uc", scope: !1228, file: !122, line: 154, type: !9)
!1236 = !DILocalVariable(name: "p", scope: !1228, file: !122, line: 155, type: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1238 = !DILocalVariable(name: "shift", scope: !1228, file: !122, line: 157, type: !20)
!1239 = !DILocalVariable(name: "r", scope: !1228, file: !122, line: 158, type: !20)
!1240 = !DILocation(line: 152, column: 43, scope: !1228)
!1241 = !DILocation(line: 152, column: 51, scope: !1228)
!1242 = !DILocation(line: 152, column: 58, scope: !1228)
!1243 = !DILocation(line: 154, column: 17, scope: !1228)
!1244 = !DILocation(line: 156, column: 6, scope: !1228)
!1245 = !DILocation(line: 156, column: 62, scope: !1228)
!1246 = !DILocation(line: 156, column: 57, scope: !1228)
!1247 = !DILocation(line: 155, column: 17, scope: !1228)
!1248 = !DILocation(line: 157, column: 15, scope: !1228)
!1249 = !DILocation(line: 157, column: 7, scope: !1228)
!1250 = !DILocation(line: 158, column: 12, scope: !1228)
!1251 = !DILocation(line: 158, column: 15, scope: !1228)
!1252 = !DILocation(line: 158, column: 25, scope: !1228)
!1253 = !DILocation(line: 158, column: 7, scope: !1228)
!1254 = !DILocation(line: 159, column: 13, scope: !1228)
!1255 = !DILocation(line: 159, column: 18, scope: !1228)
!1256 = !DILocation(line: 159, column: 23, scope: !1228)
!1257 = !DILocation(line: 159, column: 6, scope: !1228)
!1258 = !DILocation(line: 160, column: 3, scope: !1228)
!1259 = distinct !DISubprogram(name: "set_quoting_flags", scope: !122, file: !122, line: 168, type: !1260, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!20, !1190, !20}
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !122, line: 168, type: !1190)
!1264 = !DILocalVariable(name: "i", arg: 2, scope: !1259, file: !122, line: 168, type: !20)
!1265 = !DILocalVariable(name: "r", scope: !1259, file: !122, line: 170, type: !20)
!1266 = !DILocation(line: 168, column: 44, scope: !1259)
!1267 = !DILocation(line: 168, column: 51, scope: !1259)
!1268 = !DILocation(line: 171, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !122, line: 171, column: 7)
!1270 = !DILocation(line: 171, column: 7, scope: !1259)
!1271 = !DILocation(line: 173, column: 10, scope: !1259)
!1272 = !{!1214, !780, i64 4}
!1273 = !DILocation(line: 170, column: 7, scope: !1259)
!1274 = !DILocation(line: 174, column: 12, scope: !1259)
!1275 = !DILocation(line: 175, column: 3, scope: !1259)
!1276 = distinct !DISubprogram(name: "set_custom_quoting", scope: !122, file: !122, line: 179, type: !1277, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1190, !17, !17}
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "o", arg: 1, scope: !1276, file: !122, line: 179, type: !1190)
!1281 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1276, file: !122, line: 180, type: !17)
!1282 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1276, file: !122, line: 180, type: !17)
!1283 = !DILocation(line: 179, column: 45, scope: !1276)
!1284 = !DILocation(line: 180, column: 33, scope: !1276)
!1285 = !DILocation(line: 180, column: 57, scope: !1276)
!1286 = !DILocation(line: 182, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1276, file: !122, line: 182, column: 7)
!1288 = !DILocation(line: 182, column: 7, scope: !1276)
!1289 = !DILocation(line: 184, column: 6, scope: !1276)
!1290 = !DILocation(line: 184, column: 12, scope: !1276)
!1291 = !DILocation(line: 185, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1276, file: !122, line: 185, column: 7)
!1293 = !DILocation(line: 185, column: 23, scope: !1292)
!1294 = !DILocation(line: 185, column: 19, scope: !1292)
!1295 = !DILocation(line: 186, column: 5, scope: !1292)
!1296 = !DILocation(line: 187, column: 6, scope: !1276)
!1297 = !DILocation(line: 187, column: 17, scope: !1276)
!1298 = !{!1214, !685, i64 40}
!1299 = !DILocation(line: 188, column: 6, scope: !1276)
!1300 = !DILocation(line: 188, column: 18, scope: !1276)
!1301 = !{!1214, !685, i64 48}
!1302 = !DILocation(line: 189, column: 1, scope: !1276)
!1303 = distinct !DISubprogram(name: "quotearg_buffer", scope: !122, file: !122, line: 784, type: !1304, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!117, !6, !117, !17, !117, !1206}
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1307 = !DILocalVariable(name: "buffer", arg: 1, scope: !1303, file: !122, line: 784, type: !6)
!1308 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1303, file: !122, line: 784, type: !117)
!1309 = !DILocalVariable(name: "arg", arg: 3, scope: !1303, file: !122, line: 785, type: !17)
!1310 = !DILocalVariable(name: "argsize", arg: 4, scope: !1303, file: !122, line: 785, type: !117)
!1311 = !DILocalVariable(name: "o", arg: 5, scope: !1303, file: !122, line: 786, type: !1206)
!1312 = !DILocalVariable(name: "p", scope: !1303, file: !122, line: 788, type: !1206)
!1313 = !DILocalVariable(name: "e", scope: !1303, file: !122, line: 789, type: !20)
!1314 = !DILocalVariable(name: "r", scope: !1303, file: !122, line: 790, type: !117)
!1315 = !DILocation(line: 784, column: 24, scope: !1303)
!1316 = !DILocation(line: 784, column: 39, scope: !1303)
!1317 = !DILocation(line: 785, column: 30, scope: !1303)
!1318 = !DILocation(line: 785, column: 42, scope: !1303)
!1319 = !DILocation(line: 786, column: 48, scope: !1303)
!1320 = !DILocation(line: 788, column: 37, scope: !1303)
!1321 = !DILocation(line: 788, column: 33, scope: !1303)
!1322 = !DILocation(line: 789, column: 11, scope: !1303)
!1323 = !DILocation(line: 789, column: 7, scope: !1303)
!1324 = !DILocation(line: 791, column: 43, scope: !1303)
!1325 = !DILocation(line: 791, column: 53, scope: !1303)
!1326 = !DILocation(line: 791, column: 60, scope: !1303)
!1327 = !DILocation(line: 792, column: 43, scope: !1303)
!1328 = !DILocation(line: 792, column: 58, scope: !1303)
!1329 = !DILocation(line: 790, column: 14, scope: !1303)
!1330 = !DILocation(line: 790, column: 10, scope: !1303)
!1331 = !DILocation(line: 793, column: 9, scope: !1303)
!1332 = !DILocation(line: 794, column: 3, scope: !1303)
!1333 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !122, file: !122, line: 256, type: !1334, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1338)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!117, !6, !117, !17, !117, !81, !20, !1336, !17, !17}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1363, !1364, !1365, !1366, !1367, !1370, !1371, !1389, !1392, !1393, !1400}
!1339 = !DILocalVariable(name: "buffer", arg: 1, scope: !1333, file: !122, line: 256, type: !6)
!1340 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1333, file: !122, line: 256, type: !117)
!1341 = !DILocalVariable(name: "arg", arg: 3, scope: !1333, file: !122, line: 257, type: !17)
!1342 = !DILocalVariable(name: "argsize", arg: 4, scope: !1333, file: !122, line: 257, type: !117)
!1343 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1333, file: !122, line: 258, type: !81)
!1344 = !DILocalVariable(name: "flags", arg: 6, scope: !1333, file: !122, line: 258, type: !20)
!1345 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1333, file: !122, line: 259, type: !1336)
!1346 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1333, file: !122, line: 260, type: !17)
!1347 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1333, file: !122, line: 261, type: !17)
!1348 = !DILocalVariable(name: "i", scope: !1333, file: !122, line: 263, type: !117)
!1349 = !DILocalVariable(name: "len", scope: !1333, file: !122, line: 264, type: !117)
!1350 = !DILocalVariable(name: "orig_buffersize", scope: !1333, file: !122, line: 265, type: !117)
!1351 = !DILocalVariable(name: "quote_string", scope: !1333, file: !122, line: 266, type: !17)
!1352 = !DILocalVariable(name: "quote_string_len", scope: !1333, file: !122, line: 267, type: !117)
!1353 = !DILocalVariable(name: "backslash_escapes", scope: !1333, file: !122, line: 268, type: !61)
!1354 = !DILocalVariable(name: "unibyte_locale", scope: !1333, file: !122, line: 269, type: !61)
!1355 = !DILocalVariable(name: "elide_outer_quotes", scope: !1333, file: !122, line: 270, type: !61)
!1356 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1333, file: !122, line: 271, type: !61)
!1357 = !DILocalVariable(name: "encountered_single_quote", scope: !1333, file: !122, line: 272, type: !61)
!1358 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1333, file: !122, line: 273, type: !61)
!1359 = !DILocalVariable(name: "c", scope: !1360, file: !122, line: 402, type: !9)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !122, line: 401, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !122, line: 400, column: 3)
!1362 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 400, column: 3)
!1363 = !DILocalVariable(name: "esc", scope: !1360, file: !122, line: 403, type: !9)
!1364 = !DILocalVariable(name: "is_right_quote", scope: !1360, file: !122, line: 404, type: !61)
!1365 = !DILocalVariable(name: "escaping", scope: !1360, file: !122, line: 405, type: !61)
!1366 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1360, file: !122, line: 406, type: !61)
!1367 = !DILocalVariable(name: "m", scope: !1368, file: !122, line: 610, type: !117)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 608, column: 11)
!1369 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 426, column: 9)
!1370 = !DILocalVariable(name: "printable", scope: !1368, file: !122, line: 612, type: !61)
!1371 = !DILocalVariable(name: "mbstate", scope: !1372, file: !122, line: 621, type: !1374)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !122, line: 620, column: 15)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !122, line: 614, column: 17)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1375, line: 6, baseType: !1376)
!1375 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1377, line: 21, baseType: !1378)
!1377 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1377, line: 13, size: 64, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1378, file: !1377, line: 15, baseType: !20, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1378, file: !1377, line: 20, baseType: !1382, size: 32, offset: 32)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1377, line: 16, size: 32, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1382, file: !1377, line: 18, baseType: !38, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1382, file: !1377, line: 19, baseType: !1386, size: 32)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 4)
!1389 = !DILocalVariable(name: "w", scope: !1390, file: !122, line: 631, type: !1391)
!1390 = distinct !DILexicalBlock(scope: !1372, file: !122, line: 630, column: 19)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !118, line: 90, baseType: !20)
!1392 = !DILocalVariable(name: "bytes", scope: !1390, file: !122, line: 632, type: !117)
!1393 = !DILocalVariable(name: "j", scope: !1394, file: !122, line: 657, type: !117)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !122, line: 656, column: 27)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !122, line: 654, column: 29)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !122, line: 649, column: 23)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !122, line: 641, column: 30)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !122, line: 636, column: 30)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !122, line: 634, column: 25)
!1400 = !DILocalVariable(name: "ilim", scope: !1401, file: !122, line: 684, type: !117)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !122, line: 681, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1368, file: !122, line: 680, column: 17)
!1403 = !DILocation(line: 256, column: 33, scope: !1333)
!1404 = !DILocation(line: 256, column: 48, scope: !1333)
!1405 = !DILocation(line: 257, column: 39, scope: !1333)
!1406 = !DILocation(line: 257, column: 51, scope: !1333)
!1407 = !DILocation(line: 258, column: 46, scope: !1333)
!1408 = !DILocation(line: 258, column: 65, scope: !1333)
!1409 = !DILocation(line: 259, column: 47, scope: !1333)
!1410 = !DILocation(line: 260, column: 39, scope: !1333)
!1411 = !DILocation(line: 261, column: 39, scope: !1333)
!1412 = !DILocation(line: 264, column: 10, scope: !1333)
!1413 = !DILocation(line: 265, column: 10, scope: !1333)
!1414 = !DILocation(line: 266, column: 15, scope: !1333)
!1415 = !DILocation(line: 267, column: 10, scope: !1333)
!1416 = !DILocation(line: 268, column: 8, scope: !1333)
!1417 = !DILocation(line: 269, column: 25, scope: !1333)
!1418 = !DILocation(line: 269, column: 36, scope: !1333)
!1419 = !DILocation(line: 270, column: 8, scope: !1333)
!1420 = !DILocation(line: 271, column: 8, scope: !1333)
!1421 = !DILocation(line: 272, column: 8, scope: !1333)
!1422 = !DILocation(line: 273, column: 8, scope: !1333)
!1423 = !DILocation(line: 273, column: 3, scope: !1333)
!1424 = !DILocation(line: 0, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 317, column: 5)
!1426 = !DILocation(line: 316, column: 3, scope: !1333)
!1427 = !DILocation(line: 323, column: 11, scope: !1425)
!1428 = !DILocation(line: 323, column: 12, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !122, line: 323, column: 11)
!1430 = !DILocation(line: 324, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !122, line: 324, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !122, line: 324, column: 9)
!1433 = !DILocation(line: 324, column: 9, scope: !1432)
!1434 = !DILocation(line: 362, column: 26, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !122, line: 340, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !122, line: 339, column: 13)
!1437 = distinct !DILexicalBlock(scope: !1425, file: !122, line: 338, column: 7)
!1438 = !DILocation(line: 363, column: 27, scope: !1435)
!1439 = !DILocation(line: 364, column: 11, scope: !1435)
!1440 = !DILocation(line: 365, column: 14, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !122, line: 365, column: 13)
!1442 = !DILocation(line: 365, column: 13, scope: !1437)
!1443 = !DILocation(line: 366, column: 43, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !122, line: 366, column: 11)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !122, line: 366, column: 11)
!1446 = !DILocation(line: 366, column: 11, scope: !1445)
!1447 = !DILocation(line: 367, column: 13, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !122, line: 367, column: 13)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !122, line: 367, column: 13)
!1450 = !DILocation(line: 367, column: 13, scope: !1449)
!1451 = !DILocation(line: 366, column: 70, scope: !1444)
!1452 = distinct !{!1452, !1446, !1453}
!1453 = !DILocation(line: 367, column: 13, scope: !1445)
!1454 = !DILocation(line: 370, column: 28, scope: !1437)
!1455 = !DILocation(line: 372, column: 7, scope: !1425)
!1456 = !DILocation(line: 376, column: 7, scope: !1425)
!1457 = !DILocation(line: 379, column: 7, scope: !1425)
!1458 = !DILocation(line: 381, column: 12, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1425, file: !122, line: 381, column: 11)
!1460 = !DILocation(line: 381, column: 11, scope: !1425)
!1461 = !DILocation(line: 0, scope: !1459)
!1462 = !DILocation(line: 386, column: 12, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1425, file: !122, line: 386, column: 11)
!1464 = !DILocation(line: 386, column: 11, scope: !1425)
!1465 = !DILocation(line: 387, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !122, line: 387, column: 9)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !122, line: 387, column: 9)
!1468 = !DILocation(line: 387, column: 9, scope: !1467)
!1469 = !DILocation(line: 394, column: 7, scope: !1425)
!1470 = !DILocation(line: 397, column: 7, scope: !1425)
!1471 = !DILocation(line: 0, scope: !1333)
!1472 = !DILocation(line: 263, column: 10, scope: !1333)
!1473 = !DILocation(line: 400, column: 8, scope: !1362)
!1474 = !DILocation(line: 0, scope: !1361)
!1475 = !DILocation(line: 400, column: 27, scope: !1361)
!1476 = !DILocation(line: 400, column: 19, scope: !1361)
!1477 = !DILocation(line: 400, column: 41, scope: !1361)
!1478 = !DILocation(line: 400, column: 48, scope: !1361)
!1479 = !DILocation(line: 400, column: 3, scope: !1362)
!1480 = !DILocation(line: 400, column: 60, scope: !1361)
!1481 = !DILocation(line: 404, column: 12, scope: !1360)
!1482 = !DILocation(line: 405, column: 12, scope: !1360)
!1483 = !DILocation(line: 406, column: 12, scope: !1360)
!1484 = !DILocation(line: 409, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 408, column: 11)
!1486 = !DILocation(line: 411, column: 17, scope: !1485)
!1487 = !DILocation(line: 412, column: 39, scope: !1485)
!1488 = !DILocation(line: 416, column: 32, scope: !1485)
!1489 = !DILocation(line: 412, column: 19, scope: !1485)
!1490 = !DILocation(line: 412, column: 15, scope: !1485)
!1491 = !DILocation(line: 417, column: 11, scope: !1485)
!1492 = !DILocation(line: 417, column: 26, scope: !1485)
!1493 = !DILocation(line: 417, column: 14, scope: !1485)
!1494 = !DILocation(line: 417, column: 63, scope: !1485)
!1495 = !DILocation(line: 408, column: 11, scope: !1360)
!1496 = !DILocation(line: 0, scope: !1360)
!1497 = !DILocation(line: 424, column: 11, scope: !1360)
!1498 = !DILocation(line: 402, column: 21, scope: !1360)
!1499 = !DILocation(line: 425, column: 7, scope: !1360)
!1500 = !DILocation(line: 428, column: 15, scope: !1369)
!1501 = !DILocation(line: 430, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !122, line: 430, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !122, line: 429, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 428, column: 15)
!1505 = !DILocation(line: 430, column: 15, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !122, line: 430, column: 15)
!1507 = !DILocation(line: 430, column: 15, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !122, line: 430, column: 15)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !122, line: 430, column: 15)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !122, line: 430, column: 15)
!1511 = !DILocation(line: 430, column: 15, scope: !1509)
!1512 = !DILocation(line: 430, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !122, line: 430, column: 15)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !122, line: 430, column: 15)
!1515 = !DILocation(line: 430, column: 15, scope: !1514)
!1516 = !DILocation(line: 430, column: 15, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !122, line: 430, column: 15)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !122, line: 430, column: 15)
!1519 = !DILocation(line: 430, column: 15, scope: !1518)
!1520 = !DILocation(line: 430, column: 15, scope: !1510)
!1521 = !DILocation(line: 430, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !122, line: 430, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1502, file: !122, line: 430, column: 15)
!1524 = !DILocation(line: 430, column: 15, scope: !1523)
!1525 = !DILocation(line: 438, column: 19, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1503, file: !122, line: 437, column: 19)
!1527 = !DILocation(line: 438, column: 24, scope: !1526)
!1528 = !DILocation(line: 438, column: 28, scope: !1526)
!1529 = !DILocation(line: 438, column: 38, scope: !1526)
!1530 = !DILocation(line: 438, column: 48, scope: !1526)
!1531 = !DILocation(line: 438, column: 59, scope: !1526)
!1532 = !DILocation(line: 440, column: 19, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !122, line: 440, column: 19)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !122, line: 440, column: 19)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !122, line: 439, column: 17)
!1536 = !DILocation(line: 440, column: 19, scope: !1534)
!1537 = !DILocation(line: 441, column: 19, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !122, line: 441, column: 19)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !122, line: 441, column: 19)
!1540 = !DILocation(line: 441, column: 19, scope: !1539)
!1541 = !DILocation(line: 442, column: 17, scope: !1535)
!1542 = !DILocation(line: 449, column: 20, scope: !1504)
!1543 = !DILocation(line: 454, column: 11, scope: !1369)
!1544 = !DILocation(line: 457, column: 19, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 455, column: 13)
!1546 = !DILocation(line: 463, column: 19, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1545, file: !122, line: 462, column: 19)
!1548 = !DILocation(line: 463, column: 24, scope: !1547)
!1549 = !DILocation(line: 463, column: 28, scope: !1547)
!1550 = !DILocation(line: 463, column: 38, scope: !1547)
!1551 = !DILocation(line: 463, column: 47, scope: !1547)
!1552 = !DILocation(line: 463, column: 41, scope: !1547)
!1553 = !DILocation(line: 463, column: 52, scope: !1547)
!1554 = !DILocation(line: 462, column: 19, scope: !1545)
!1555 = !DILocation(line: 464, column: 25, scope: !1547)
!1556 = !DILocation(line: 464, column: 17, scope: !1547)
!1557 = !DILocation(line: 471, column: 25, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !122, line: 465, column: 19)
!1559 = !DILocation(line: 475, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !122, line: 475, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !122, line: 475, column: 21)
!1562 = !DILocation(line: 475, column: 21, scope: !1561)
!1563 = !DILocation(line: 476, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !122, line: 476, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1558, file: !122, line: 476, column: 21)
!1566 = !DILocation(line: 476, column: 21, scope: !1565)
!1567 = !DILocation(line: 477, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !122, line: 477, column: 21)
!1569 = distinct !DILexicalBlock(scope: !1558, file: !122, line: 477, column: 21)
!1570 = !DILocation(line: 477, column: 21, scope: !1569)
!1571 = !DILocation(line: 478, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !122, line: 478, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1558, file: !122, line: 478, column: 21)
!1574 = !DILocation(line: 478, column: 21, scope: !1573)
!1575 = !DILocation(line: 479, column: 21, scope: !1558)
!1576 = !DILocation(line: 403, column: 21, scope: !1360)
!1577 = !DILocation(line: 492, column: 31, scope: !1369)
!1578 = !DILocation(line: 493, column: 31, scope: !1369)
!1579 = !DILocation(line: 495, column: 31, scope: !1369)
!1580 = !DILocation(line: 496, column: 31, scope: !1369)
!1581 = !DILocation(line: 497, column: 31, scope: !1369)
!1582 = !DILocation(line: 500, column: 15, scope: !1369)
!1583 = !DILocation(line: 502, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !122, line: 501, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 500, column: 15)
!1586 = !DILocation(line: 509, column: 33, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 509, column: 15)
!1588 = !DILocation(line: 0, scope: !1369)
!1589 = !DILocation(line: 514, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 513, column: 15)
!1591 = !DILocation(line: 518, column: 15, scope: !1369)
!1592 = !DILocation(line: 526, column: 26, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 526, column: 15)
!1594 = !DILocation(line: 526, column: 15, scope: !1369)
!1595 = !DILocation(line: 526, column: 40, scope: !1593)
!1596 = !DILocation(line: 526, column: 47, scope: !1593)
!1597 = !DILocation(line: 530, column: 17, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 530, column: 15)
!1599 = !DILocation(line: 526, column: 18, scope: !1593)
!1600 = !DILocation(line: 526, column: 65, scope: !1593)
!1601 = !DILocation(line: 530, column: 15, scope: !1369)
!1602 = !DILocation(line: 535, column: 11, scope: !1369)
!1603 = !DILocation(line: 549, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 548, column: 15)
!1605 = !DILocation(line: 556, column: 15, scope: !1369)
!1606 = !DILocation(line: 558, column: 19, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !122, line: 557, column: 13)
!1608 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 556, column: 15)
!1609 = !DILocation(line: 561, column: 19, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !122, line: 561, column: 19)
!1611 = !DILocation(line: 561, column: 35, scope: !1610)
!1612 = !DILocation(line: 561, column: 30, scope: !1610)
!1613 = !DILocation(line: 570, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !122, line: 570, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1607, file: !122, line: 570, column: 15)
!1616 = !DILocation(line: 570, column: 15, scope: !1615)
!1617 = !DILocation(line: 571, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !122, line: 571, column: 15)
!1619 = distinct !DILexicalBlock(scope: !1607, file: !122, line: 571, column: 15)
!1620 = !DILocation(line: 571, column: 15, scope: !1619)
!1621 = !DILocation(line: 572, column: 15, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !122, line: 572, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1607, file: !122, line: 572, column: 15)
!1624 = !DILocation(line: 572, column: 15, scope: !1623)
!1625 = !DILocation(line: 574, column: 13, scope: !1607)
!1626 = !DILocation(line: 614, column: 17, scope: !1368)
!1627 = !DILocation(line: 610, column: 20, scope: !1368)
!1628 = !DILocation(line: 617, column: 29, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1373, file: !122, line: 615, column: 15)
!1630 = !{!830, !830, i64 0}
!1631 = !DILocation(line: 617, column: 27, scope: !1629)
!1632 = !DILocation(line: 612, column: 18, scope: !1368)
!1633 = !DILocation(line: 618, column: 15, scope: !1629)
!1634 = !DILocation(line: 621, column: 17, scope: !1372)
!1635 = !DILocation(line: 622, column: 17, scope: !1372)
!1636 = !DILocation(line: 626, column: 29, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1372, file: !122, line: 626, column: 21)
!1638 = !DILocation(line: 626, column: 21, scope: !1372)
!1639 = !DILocation(line: 627, column: 29, scope: !1637)
!1640 = !DILocation(line: 627, column: 19, scope: !1637)
!1641 = !DILocation(line: 0, scope: !1485)
!1642 = !DILocation(line: 629, column: 17, scope: !1372)
!1643 = !DILocation(line: 624, column: 19, scope: !1372)
!1644 = !DILocation(line: 625, column: 27, scope: !1372)
!1645 = !DILocation(line: 631, column: 21, scope: !1390)
!1646 = !DILocation(line: 632, column: 56, scope: !1390)
!1647 = !DILocation(line: 632, column: 50, scope: !1390)
!1648 = !DILocation(line: 633, column: 53, scope: !1390)
!1649 = !DILocation(line: 621, column: 27, scope: !1372)
!1650 = !DILocation(line: 631, column: 29, scope: !1390)
!1651 = !DILocation(line: 632, column: 36, scope: !1390)
!1652 = !DILocation(line: 632, column: 28, scope: !1390)
!1653 = !DILocation(line: 634, column: 25, scope: !1390)
!1654 = !DILocation(line: 644, column: 38, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1397, file: !122, line: 642, column: 23)
!1656 = !DILocation(line: 644, column: 48, scope: !1655)
!1657 = !DILocation(line: 644, column: 51, scope: !1655)
!1658 = !DILocation(line: 644, column: 25, scope: !1655)
!1659 = !DILocation(line: 645, column: 28, scope: !1655)
!1660 = !DILocation(line: 644, column: 34, scope: !1655)
!1661 = distinct !{!1661, !1658, !1659}
!1662 = !DILocation(line: 658, column: 43, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !122, line: 658, column: 29)
!1664 = distinct !DILexicalBlock(scope: !1394, file: !122, line: 658, column: 29)
!1665 = !DILocation(line: 655, column: 29, scope: !1395)
!1666 = !DILocation(line: 657, column: 36, scope: !1394)
!1667 = !DILocation(line: 659, column: 49, scope: !1663)
!1668 = !DILocation(line: 659, column: 39, scope: !1663)
!1669 = !DILocation(line: 659, column: 31, scope: !1663)
!1670 = !DILocation(line: 658, column: 53, scope: !1663)
!1671 = !DILocation(line: 658, column: 29, scope: !1664)
!1672 = distinct !{!1672, !1671, !1673}
!1673 = !DILocation(line: 667, column: 33, scope: !1664)
!1674 = !DILocation(line: 674, column: 19, scope: !1372)
!1675 = !DILocation(line: 670, column: 41, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1396, file: !122, line: 670, column: 29)
!1677 = !DILocation(line: 670, column: 31, scope: !1676)
!1678 = !DILocation(line: 670, column: 29, scope: !1396)
!1679 = !DILocation(line: 672, column: 27, scope: !1396)
!1680 = !DILocation(line: 675, column: 26, scope: !1372)
!1681 = !DILocation(line: 675, column: 24, scope: !1372)
!1682 = !DILocation(line: 674, column: 19, scope: !1390)
!1683 = distinct !{!1683, !1642, !1684}
!1684 = !DILocation(line: 675, column: 44, scope: !1372)
!1685 = !DILocation(line: 676, column: 15, scope: !1373)
!1686 = !DILocation(line: 0, scope: !1637)
!1687 = !DILocation(line: 0, scope: !1372)
!1688 = !DILocation(line: 678, column: 40, scope: !1368)
!1689 = !DILocation(line: 680, column: 19, scope: !1402)
!1690 = !DILocation(line: 680, column: 45, scope: !1402)
!1691 = !DILocation(line: 680, column: 23, scope: !1402)
!1692 = !DILocation(line: 684, column: 33, scope: !1401)
!1693 = !DILocation(line: 684, column: 24, scope: !1401)
!1694 = !DILocation(line: 686, column: 17, scope: !1401)
!1695 = !DILocation(line: 0, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !122, line: 687, column: 19)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !122, line: 686, column: 17)
!1698 = distinct !DILexicalBlock(scope: !1401, file: !122, line: 686, column: 17)
!1699 = !DILocation(line: 0, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !122, line: 703, column: 21)
!1701 = !DILocation(line: 0, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !122, line: 696, column: 23)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !122, line: 695, column: 30)
!1704 = distinct !DILexicalBlock(scope: !1696, file: !122, line: 688, column: 25)
!1705 = !DILocation(line: 688, column: 43, scope: !1704)
!1706 = !DILocation(line: 690, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !122, line: 690, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !122, line: 689, column: 23)
!1709 = !DILocation(line: 690, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !122, line: 690, column: 25)
!1711 = !DILocation(line: 690, column: 25, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !122, line: 690, column: 25)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !122, line: 690, column: 25)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !122, line: 690, column: 25)
!1715 = !DILocation(line: 690, column: 25, scope: !1713)
!1716 = !DILocation(line: 690, column: 25, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !122, line: 690, column: 25)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !122, line: 690, column: 25)
!1719 = !DILocation(line: 690, column: 25, scope: !1718)
!1720 = !DILocation(line: 690, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !122, line: 690, column: 25)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !122, line: 690, column: 25)
!1723 = !DILocation(line: 690, column: 25, scope: !1722)
!1724 = !DILocation(line: 690, column: 25, scope: !1714)
!1725 = !DILocation(line: 690, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !122, line: 690, column: 25)
!1727 = distinct !DILexicalBlock(scope: !1707, file: !122, line: 690, column: 25)
!1728 = !DILocation(line: 690, column: 25, scope: !1727)
!1729 = !DILocation(line: 691, column: 25, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !122, line: 691, column: 25)
!1731 = distinct !DILexicalBlock(scope: !1708, file: !122, line: 691, column: 25)
!1732 = !DILocation(line: 691, column: 25, scope: !1731)
!1733 = !DILocation(line: 692, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !122, line: 692, column: 25)
!1735 = distinct !DILexicalBlock(scope: !1708, file: !122, line: 692, column: 25)
!1736 = !DILocation(line: 692, column: 25, scope: !1735)
!1737 = !DILocation(line: 693, column: 38, scope: !1708)
!1738 = !DILocation(line: 693, column: 33, scope: !1708)
!1739 = !DILocation(line: 694, column: 23, scope: !1708)
!1740 = !DILocation(line: 695, column: 30, scope: !1703)
!1741 = !DILocation(line: 695, column: 30, scope: !1704)
!1742 = !DILocation(line: 697, column: 25, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !122, line: 697, column: 25)
!1744 = distinct !DILexicalBlock(scope: !1702, file: !122, line: 697, column: 25)
!1745 = !DILocation(line: 697, column: 25, scope: !1744)
!1746 = !DILocation(line: 699, column: 23, scope: !1702)
!1747 = !DILocation(line: 0, scope: !1735)
!1748 = !DILocation(line: 0, scope: !1708)
!1749 = !DILocation(line: 0, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1485, file: !122, line: 418, column: 9)
!1751 = !DILocation(line: 0, scope: !1707)
!1752 = !DILocation(line: 700, column: 35, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1696, file: !122, line: 700, column: 25)
!1754 = !DILocation(line: 700, column: 30, scope: !1753)
!1755 = !DILocation(line: 700, column: 25, scope: !1696)
!1756 = !DILocation(line: 702, column: 21, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !122, line: 702, column: 21)
!1758 = distinct !DILexicalBlock(scope: !1696, file: !122, line: 702, column: 21)
!1759 = !DILocation(line: 702, column: 21, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !122, line: 702, column: 21)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !122, line: 702, column: 21)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !122, line: 702, column: 21)
!1763 = !DILocation(line: 702, column: 21, scope: !1761)
!1764 = !DILocation(line: 702, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !122, line: 702, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !122, line: 702, column: 21)
!1767 = !DILocation(line: 702, column: 21, scope: !1766)
!1768 = !DILocation(line: 702, column: 21, scope: !1762)
!1769 = !DILocation(line: 0, scope: !1744)
!1770 = !DILocation(line: 703, column: 21, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1700, file: !122, line: 703, column: 21)
!1772 = !DILocation(line: 703, column: 21, scope: !1700)
!1773 = !DILocation(line: 704, column: 25, scope: !1696)
!1774 = !DILocation(line: 686, column: 17, scope: !1697)
!1775 = distinct !{!1775, !1776, !1777}
!1776 = !DILocation(line: 686, column: 17, scope: !1698)
!1777 = !DILocation(line: 705, column: 19, scope: !1698)
!1778 = !DILocation(line: 0, scope: !1362)
!1779 = !DILocation(line: 416, column: 30, scope: !1485)
!1780 = !DILocation(line: 712, column: 34, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 712, column: 11)
!1782 = !DILocation(line: 714, column: 14, scope: !1781)
!1783 = !DILocation(line: 715, column: 14, scope: !1781)
!1784 = !DILocation(line: 715, column: 35, scope: !1781)
!1785 = !DILocation(line: 715, column: 17, scope: !1781)
!1786 = !DILocation(line: 715, column: 47, scope: !1781)
!1787 = !DILocation(line: 715, column: 65, scope: !1781)
!1788 = !DILocation(line: 716, column: 15, scope: !1781)
!1789 = !DILocation(line: 716, column: 11, scope: !1781)
!1790 = !DILocation(line: 712, column: 11, scope: !1360)
!1791 = !DILocation(line: 400, column: 10, scope: !1362)
!1792 = !DILocation(line: 0, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !122, line: 519, column: 13)
!1794 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 518, column: 15)
!1795 = !DILocation(line: 720, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 720, column: 7)
!1797 = !DILocation(line: 720, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1796, file: !122, line: 720, column: 7)
!1799 = !DILocation(line: 720, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !122, line: 720, column: 7)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !122, line: 720, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !122, line: 720, column: 7)
!1803 = !DILocation(line: 720, column: 7, scope: !1801)
!1804 = !DILocation(line: 720, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !122, line: 720, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !122, line: 720, column: 7)
!1807 = !DILocation(line: 720, column: 7, scope: !1806)
!1808 = !DILocation(line: 720, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !122, line: 720, column: 7)
!1810 = distinct !DILexicalBlock(scope: !1802, file: !122, line: 720, column: 7)
!1811 = !DILocation(line: 720, column: 7, scope: !1810)
!1812 = !DILocation(line: 720, column: 7, scope: !1802)
!1813 = !DILocation(line: 720, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !122, line: 720, column: 7)
!1815 = distinct !DILexicalBlock(scope: !1796, file: !122, line: 720, column: 7)
!1816 = !DILocation(line: 720, column: 7, scope: !1815)
!1817 = !DILocation(line: 723, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !122, line: 723, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 723, column: 7)
!1820 = !DILocation(line: 424, column: 9, scope: !1360)
!1821 = !DILocation(line: 723, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !122, line: 723, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !122, line: 723, column: 7)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !122, line: 723, column: 7)
!1825 = !DILocation(line: 723, column: 7, scope: !1823)
!1826 = !DILocation(line: 723, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !122, line: 723, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !122, line: 723, column: 7)
!1829 = !DILocation(line: 723, column: 7, scope: !1828)
!1830 = !DILocation(line: 723, column: 7, scope: !1824)
!1831 = !DILocation(line: 724, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !122, line: 724, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 724, column: 7)
!1834 = !DILocation(line: 724, column: 7, scope: !1833)
!1835 = !DILocation(line: 726, column: 13, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1360, file: !122, line: 726, column: 11)
!1837 = !DILocation(line: 726, column: 11, scope: !1360)
!1838 = !DILocation(line: 728, column: 5, scope: !1361)
!1839 = !DILocation(line: 400, column: 75, scope: !1361)
!1840 = !DILocation(line: 400, column: 3, scope: !1361)
!1841 = distinct !{!1841, !1479, !1842}
!1842 = !DILocation(line: 728, column: 5, scope: !1362)
!1843 = !DILocation(line: 730, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 730, column: 7)
!1845 = !DILocation(line: 730, column: 16, scope: !1844)
!1846 = !DILocation(line: 738, column: 51, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 738, column: 7)
!1848 = !DILocation(line: 739, column: 10, scope: !1847)
!1849 = !DILocation(line: 741, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !122, line: 741, column: 11)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !122, line: 740, column: 5)
!1852 = !DILocation(line: 741, column: 11, scope: !1851)
!1853 = !DILocation(line: 742, column: 16, scope: !1850)
!1854 = !DILocation(line: 742, column: 9, scope: !1850)
!1855 = !DILocation(line: 746, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1850, file: !122, line: 746, column: 16)
!1857 = !DILocation(line: 746, column: 32, scope: !1856)
!1858 = !DILocation(line: 746, column: 29, scope: !1856)
!1859 = !DILocation(line: 755, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 755, column: 7)
!1861 = !DILocation(line: 755, column: 20, scope: !1860)
!1862 = !DILocation(line: 756, column: 12, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !122, line: 756, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !122, line: 756, column: 5)
!1865 = !DILocation(line: 756, column: 5, scope: !1864)
!1866 = !DILocation(line: 757, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !122, line: 757, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !122, line: 757, column: 7)
!1869 = !DILocation(line: 757, column: 7, scope: !1868)
!1870 = !DILocation(line: 756, column: 39, scope: !1863)
!1871 = distinct !{!1871, !1865, !1872}
!1872 = !DILocation(line: 757, column: 7, scope: !1864)
!1873 = !DILocation(line: 759, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 759, column: 7)
!1875 = !DILocation(line: 759, column: 7, scope: !1333)
!1876 = !DILocation(line: 760, column: 5, scope: !1874)
!1877 = !DILocation(line: 760, column: 17, scope: !1874)
!1878 = !DILocation(line: 766, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1333, file: !122, line: 766, column: 7)
!1880 = !DILocation(line: 766, column: 54, scope: !1879)
!1881 = !DILocation(line: 766, column: 51, scope: !1879)
!1882 = !DILocation(line: 770, column: 42, scope: !1333)
!1883 = !DILocation(line: 768, column: 10, scope: !1333)
!1884 = !DILocation(line: 768, column: 3, scope: !1333)
!1885 = !DILocation(line: 772, column: 1, scope: !1333)
!1886 = distinct !DISubprogram(name: "gettext_quote", scope: !122, file: !122, line: 207, type: !1887, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!17, !17, !81}
!1889 = !{!1890, !1891, !1892, !1893}
!1890 = !DILocalVariable(name: "msgid", arg: 1, scope: !1886, file: !122, line: 207, type: !17)
!1891 = !DILocalVariable(name: "s", arg: 2, scope: !1886, file: !122, line: 207, type: !81)
!1892 = !DILocalVariable(name: "translation", scope: !1886, file: !122, line: 209, type: !17)
!1893 = !DILocalVariable(name: "locale_code", scope: !1886, file: !122, line: 210, type: !17)
!1894 = !DILocation(line: 207, column: 28, scope: !1886)
!1895 = !DILocation(line: 207, column: 54, scope: !1886)
!1896 = !DILocation(line: 209, column: 29, scope: !1886)
!1897 = !DILocation(line: 209, column: 15, scope: !1886)
!1898 = !DILocation(line: 212, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1886, file: !122, line: 212, column: 7)
!1900 = !DILocation(line: 212, column: 7, scope: !1886)
!1901 = !DILocation(line: 233, column: 17, scope: !1886)
!1902 = !DILocation(line: 210, column: 15, scope: !1886)
!1903 = !DILocalVariable(name: "s1", arg: 1, scope: !1904, file: !1905, line: 160, type: !17)
!1904 = distinct !DISubprogram(name: "strcaseeq0", scope: !1905, file: !1905, line: 160, type: !1906, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1908)
!1905 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1908 = !{!1903, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1909 = !DILocalVariable(name: "s2", arg: 2, scope: !1904, file: !1905, line: 160, type: !17)
!1910 = !DILocalVariable(name: "s20", arg: 3, scope: !1904, file: !1905, line: 160, type: !7)
!1911 = !DILocalVariable(name: "s21", arg: 4, scope: !1904, file: !1905, line: 160, type: !7)
!1912 = !DILocalVariable(name: "s22", arg: 5, scope: !1904, file: !1905, line: 160, type: !7)
!1913 = !DILocalVariable(name: "s23", arg: 6, scope: !1904, file: !1905, line: 160, type: !7)
!1914 = !DILocalVariable(name: "s24", arg: 7, scope: !1904, file: !1905, line: 160, type: !7)
!1915 = !DILocalVariable(name: "s25", arg: 8, scope: !1904, file: !1905, line: 160, type: !7)
!1916 = !DILocalVariable(name: "s26", arg: 9, scope: !1904, file: !1905, line: 160, type: !7)
!1917 = !DILocalVariable(name: "s27", arg: 10, scope: !1904, file: !1905, line: 160, type: !7)
!1918 = !DILocalVariable(name: "s28", arg: 11, scope: !1904, file: !1905, line: 160, type: !7)
!1919 = !DILocation(line: 160, column: 25, scope: !1904, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 234, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1886, file: !122, line: 234, column: 7)
!1922 = !DILocation(line: 160, column: 41, scope: !1904, inlinedAt: !1920)
!1923 = !DILocation(line: 160, column: 50, scope: !1904, inlinedAt: !1920)
!1924 = !DILocation(line: 160, column: 60, scope: !1904, inlinedAt: !1920)
!1925 = !DILocation(line: 160, column: 70, scope: !1904, inlinedAt: !1920)
!1926 = !DILocation(line: 160, column: 80, scope: !1904, inlinedAt: !1920)
!1927 = !DILocation(line: 160, column: 90, scope: !1904, inlinedAt: !1920)
!1928 = !DILocation(line: 160, column: 100, scope: !1904, inlinedAt: !1920)
!1929 = !DILocation(line: 160, column: 110, scope: !1904, inlinedAt: !1920)
!1930 = !DILocation(line: 160, column: 120, scope: !1904, inlinedAt: !1920)
!1931 = !DILocation(line: 160, column: 130, scope: !1904, inlinedAt: !1920)
!1932 = !DILocation(line: 162, column: 7, scope: !1933, inlinedAt: !1920)
!1933 = distinct !DILexicalBlock(scope: !1904, file: !1905, line: 162, column: 7)
!1934 = !DILocalVariable(name: "s1", arg: 1, scope: !1935, file: !1905, line: 146, type: !17)
!1935 = distinct !DISubprogram(name: "strcaseeq1", scope: !1905, file: !1905, line: 146, type: !1936, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1938 = !{!1934, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1939 = !DILocalVariable(name: "s2", arg: 2, scope: !1935, file: !1905, line: 146, type: !17)
!1940 = !DILocalVariable(name: "s21", arg: 3, scope: !1935, file: !1905, line: 146, type: !7)
!1941 = !DILocalVariable(name: "s22", arg: 4, scope: !1935, file: !1905, line: 146, type: !7)
!1942 = !DILocalVariable(name: "s23", arg: 5, scope: !1935, file: !1905, line: 146, type: !7)
!1943 = !DILocalVariable(name: "s24", arg: 6, scope: !1935, file: !1905, line: 146, type: !7)
!1944 = !DILocalVariable(name: "s25", arg: 7, scope: !1935, file: !1905, line: 146, type: !7)
!1945 = !DILocalVariable(name: "s26", arg: 8, scope: !1935, file: !1905, line: 146, type: !7)
!1946 = !DILocalVariable(name: "s27", arg: 9, scope: !1935, file: !1905, line: 146, type: !7)
!1947 = !DILocalVariable(name: "s28", arg: 10, scope: !1935, file: !1905, line: 146, type: !7)
!1948 = !DILocation(line: 146, column: 25, scope: !1935, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 167, column: 16, scope: !1950, inlinedAt: !1920)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1905, line: 164, column: 11)
!1951 = distinct !DILexicalBlock(scope: !1933, file: !1905, line: 163, column: 5)
!1952 = !DILocation(line: 146, column: 41, scope: !1935, inlinedAt: !1949)
!1953 = !DILocation(line: 146, column: 50, scope: !1935, inlinedAt: !1949)
!1954 = !DILocation(line: 146, column: 60, scope: !1935, inlinedAt: !1949)
!1955 = !DILocation(line: 146, column: 70, scope: !1935, inlinedAt: !1949)
!1956 = !DILocation(line: 146, column: 80, scope: !1935, inlinedAt: !1949)
!1957 = !DILocation(line: 146, column: 90, scope: !1935, inlinedAt: !1949)
!1958 = !DILocation(line: 146, column: 100, scope: !1935, inlinedAt: !1949)
!1959 = !DILocation(line: 146, column: 110, scope: !1935, inlinedAt: !1949)
!1960 = !DILocation(line: 146, column: 120, scope: !1935, inlinedAt: !1949)
!1961 = !DILocation(line: 148, column: 7, scope: !1962, inlinedAt: !1949)
!1962 = distinct !DILexicalBlock(scope: !1935, file: !1905, line: 148, column: 7)
!1963 = !DILocalVariable(name: "s1", arg: 1, scope: !1964, file: !1905, line: 132, type: !17)
!1964 = distinct !DISubprogram(name: "strcaseeq2", scope: !1905, file: !1905, line: 132, type: !1965, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1967 = !{!1963, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1968 = !DILocalVariable(name: "s2", arg: 2, scope: !1964, file: !1905, line: 132, type: !17)
!1969 = !DILocalVariable(name: "s22", arg: 3, scope: !1964, file: !1905, line: 132, type: !7)
!1970 = !DILocalVariable(name: "s23", arg: 4, scope: !1964, file: !1905, line: 132, type: !7)
!1971 = !DILocalVariable(name: "s24", arg: 5, scope: !1964, file: !1905, line: 132, type: !7)
!1972 = !DILocalVariable(name: "s25", arg: 6, scope: !1964, file: !1905, line: 132, type: !7)
!1973 = !DILocalVariable(name: "s26", arg: 7, scope: !1964, file: !1905, line: 132, type: !7)
!1974 = !DILocalVariable(name: "s27", arg: 8, scope: !1964, file: !1905, line: 132, type: !7)
!1975 = !DILocalVariable(name: "s28", arg: 9, scope: !1964, file: !1905, line: 132, type: !7)
!1976 = !DILocation(line: 132, column: 25, scope: !1964, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 153, column: 16, scope: !1978, inlinedAt: !1949)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !1905, line: 150, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1962, file: !1905, line: 149, column: 5)
!1980 = !DILocation(line: 132, column: 41, scope: !1964, inlinedAt: !1977)
!1981 = !DILocation(line: 132, column: 50, scope: !1964, inlinedAt: !1977)
!1982 = !DILocation(line: 132, column: 60, scope: !1964, inlinedAt: !1977)
!1983 = !DILocation(line: 132, column: 70, scope: !1964, inlinedAt: !1977)
!1984 = !DILocation(line: 132, column: 80, scope: !1964, inlinedAt: !1977)
!1985 = !DILocation(line: 132, column: 90, scope: !1964, inlinedAt: !1977)
!1986 = !DILocation(line: 132, column: 100, scope: !1964, inlinedAt: !1977)
!1987 = !DILocation(line: 132, column: 110, scope: !1964, inlinedAt: !1977)
!1988 = !DILocation(line: 134, column: 7, scope: !1989, inlinedAt: !1977)
!1989 = distinct !DILexicalBlock(scope: !1964, file: !1905, line: 134, column: 7)
!1990 = !DILocalVariable(name: "s1", arg: 1, scope: !1991, file: !1905, line: 118, type: !17)
!1991 = distinct !DISubprogram(name: "strcaseeq3", scope: !1905, file: !1905, line: 118, type: !1992, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1994 = !{!1990, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1995 = !DILocalVariable(name: "s2", arg: 2, scope: !1991, file: !1905, line: 118, type: !17)
!1996 = !DILocalVariable(name: "s23", arg: 3, scope: !1991, file: !1905, line: 118, type: !7)
!1997 = !DILocalVariable(name: "s24", arg: 4, scope: !1991, file: !1905, line: 118, type: !7)
!1998 = !DILocalVariable(name: "s25", arg: 5, scope: !1991, file: !1905, line: 118, type: !7)
!1999 = !DILocalVariable(name: "s26", arg: 6, scope: !1991, file: !1905, line: 118, type: !7)
!2000 = !DILocalVariable(name: "s27", arg: 7, scope: !1991, file: !1905, line: 118, type: !7)
!2001 = !DILocalVariable(name: "s28", arg: 8, scope: !1991, file: !1905, line: 118, type: !7)
!2002 = !DILocation(line: 118, column: 25, scope: !1991, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 139, column: 16, scope: !2004, inlinedAt: !1977)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !1905, line: 136, column: 11)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !1905, line: 135, column: 5)
!2006 = !DILocation(line: 118, column: 41, scope: !1991, inlinedAt: !2003)
!2007 = !DILocation(line: 118, column: 50, scope: !1991, inlinedAt: !2003)
!2008 = !DILocation(line: 118, column: 60, scope: !1991, inlinedAt: !2003)
!2009 = !DILocation(line: 118, column: 70, scope: !1991, inlinedAt: !2003)
!2010 = !DILocation(line: 118, column: 80, scope: !1991, inlinedAt: !2003)
!2011 = !DILocation(line: 118, column: 90, scope: !1991, inlinedAt: !2003)
!2012 = !DILocation(line: 118, column: 100, scope: !1991, inlinedAt: !2003)
!2013 = !DILocation(line: 120, column: 7, scope: !2014, inlinedAt: !2003)
!2014 = distinct !DILexicalBlock(scope: !1991, file: !1905, line: 120, column: 7)
!2015 = !DILocation(line: 120, column: 7, scope: !1991, inlinedAt: !2003)
!2016 = !DILocalVariable(name: "s1", arg: 1, scope: !2017, file: !1905, line: 104, type: !17)
!2017 = distinct !DISubprogram(name: "strcaseeq4", scope: !1905, file: !1905, line: 104, type: !2018, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!2020 = !{!2016, !2021, !2022, !2023, !2024, !2025, !2026}
!2021 = !DILocalVariable(name: "s2", arg: 2, scope: !2017, file: !1905, line: 104, type: !17)
!2022 = !DILocalVariable(name: "s24", arg: 3, scope: !2017, file: !1905, line: 104, type: !7)
!2023 = !DILocalVariable(name: "s25", arg: 4, scope: !2017, file: !1905, line: 104, type: !7)
!2024 = !DILocalVariable(name: "s26", arg: 5, scope: !2017, file: !1905, line: 104, type: !7)
!2025 = !DILocalVariable(name: "s27", arg: 6, scope: !2017, file: !1905, line: 104, type: !7)
!2026 = !DILocalVariable(name: "s28", arg: 7, scope: !2017, file: !1905, line: 104, type: !7)
!2027 = !DILocation(line: 104, column: 25, scope: !2017, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 125, column: 16, scope: !2029, inlinedAt: !2003)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1905, line: 122, column: 11)
!2030 = distinct !DILexicalBlock(scope: !2014, file: !1905, line: 121, column: 5)
!2031 = !DILocation(line: 104, column: 41, scope: !2017, inlinedAt: !2028)
!2032 = !DILocation(line: 104, column: 50, scope: !2017, inlinedAt: !2028)
!2033 = !DILocation(line: 104, column: 60, scope: !2017, inlinedAt: !2028)
!2034 = !DILocation(line: 104, column: 70, scope: !2017, inlinedAt: !2028)
!2035 = !DILocation(line: 104, column: 80, scope: !2017, inlinedAt: !2028)
!2036 = !DILocation(line: 104, column: 90, scope: !2017, inlinedAt: !2028)
!2037 = !DILocation(line: 106, column: 7, scope: !2038, inlinedAt: !2028)
!2038 = distinct !DILexicalBlock(scope: !2017, file: !1905, line: 106, column: 7)
!2039 = !DILocation(line: 106, column: 7, scope: !2017, inlinedAt: !2028)
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !1905, line: 90, type: !17)
!2041 = distinct !DISubprogram(name: "strcaseeq5", scope: !1905, file: !1905, line: 90, type: !2042, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!20, !17, !17, !7, !7, !7, !7}
!2044 = !{!2040, !2045, !2046, !2047, !2048, !2049}
!2045 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !1905, line: 90, type: !17)
!2046 = !DILocalVariable(name: "s25", arg: 3, scope: !2041, file: !1905, line: 90, type: !7)
!2047 = !DILocalVariable(name: "s26", arg: 4, scope: !2041, file: !1905, line: 90, type: !7)
!2048 = !DILocalVariable(name: "s27", arg: 5, scope: !2041, file: !1905, line: 90, type: !7)
!2049 = !DILocalVariable(name: "s28", arg: 6, scope: !2041, file: !1905, line: 90, type: !7)
!2050 = !DILocation(line: 90, column: 25, scope: !2041, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 111, column: 16, scope: !2052, inlinedAt: !2028)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1905, line: 108, column: 11)
!2053 = distinct !DILexicalBlock(scope: !2038, file: !1905, line: 107, column: 5)
!2054 = !DILocation(line: 90, column: 41, scope: !2041, inlinedAt: !2051)
!2055 = !DILocation(line: 90, column: 50, scope: !2041, inlinedAt: !2051)
!2056 = !DILocation(line: 90, column: 60, scope: !2041, inlinedAt: !2051)
!2057 = !DILocation(line: 90, column: 70, scope: !2041, inlinedAt: !2051)
!2058 = !DILocation(line: 90, column: 80, scope: !2041, inlinedAt: !2051)
!2059 = !DILocation(line: 92, column: 7, scope: !2060, inlinedAt: !2051)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !1905, line: 92, column: 7)
!2061 = !DILocation(line: 92, column: 7, scope: !2041, inlinedAt: !2051)
!2062 = !DILocation(line: 235, column: 12, scope: !1921)
!2063 = !DILocation(line: 235, column: 21, scope: !1921)
!2064 = !DILocation(line: 235, column: 5, scope: !1921)
!2065 = !DILocation(line: 146, column: 25, scope: !1935, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 167, column: 16, scope: !1950, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 236, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1886, file: !122, line: 236, column: 7)
!2069 = !DILocation(line: 146, column: 41, scope: !1935, inlinedAt: !2066)
!2070 = !DILocation(line: 146, column: 50, scope: !1935, inlinedAt: !2066)
!2071 = !DILocation(line: 146, column: 60, scope: !1935, inlinedAt: !2066)
!2072 = !DILocation(line: 146, column: 70, scope: !1935, inlinedAt: !2066)
!2073 = !DILocation(line: 146, column: 80, scope: !1935, inlinedAt: !2066)
!2074 = !DILocation(line: 146, column: 90, scope: !1935, inlinedAt: !2066)
!2075 = !DILocation(line: 146, column: 100, scope: !1935, inlinedAt: !2066)
!2076 = !DILocation(line: 146, column: 110, scope: !1935, inlinedAt: !2066)
!2077 = !DILocation(line: 146, column: 120, scope: !1935, inlinedAt: !2066)
!2078 = !DILocation(line: 148, column: 7, scope: !1962, inlinedAt: !2066)
!2079 = !DILocation(line: 132, column: 25, scope: !1964, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 153, column: 16, scope: !1978, inlinedAt: !2066)
!2081 = !DILocation(line: 132, column: 41, scope: !1964, inlinedAt: !2080)
!2082 = !DILocation(line: 132, column: 50, scope: !1964, inlinedAt: !2080)
!2083 = !DILocation(line: 132, column: 60, scope: !1964, inlinedAt: !2080)
!2084 = !DILocation(line: 132, column: 70, scope: !1964, inlinedAt: !2080)
!2085 = !DILocation(line: 132, column: 80, scope: !1964, inlinedAt: !2080)
!2086 = !DILocation(line: 132, column: 90, scope: !1964, inlinedAt: !2080)
!2087 = !DILocation(line: 132, column: 100, scope: !1964, inlinedAt: !2080)
!2088 = !DILocation(line: 132, column: 110, scope: !1964, inlinedAt: !2080)
!2089 = !DILocation(line: 134, column: 7, scope: !1989, inlinedAt: !2080)
!2090 = !DILocation(line: 134, column: 7, scope: !1964, inlinedAt: !2080)
!2091 = !DILocation(line: 118, column: 25, scope: !1991, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 139, column: 16, scope: !2004, inlinedAt: !2080)
!2093 = !DILocation(line: 118, column: 41, scope: !1991, inlinedAt: !2092)
!2094 = !DILocation(line: 118, column: 50, scope: !1991, inlinedAt: !2092)
!2095 = !DILocation(line: 118, column: 60, scope: !1991, inlinedAt: !2092)
!2096 = !DILocation(line: 118, column: 70, scope: !1991, inlinedAt: !2092)
!2097 = !DILocation(line: 118, column: 80, scope: !1991, inlinedAt: !2092)
!2098 = !DILocation(line: 118, column: 90, scope: !1991, inlinedAt: !2092)
!2099 = !DILocation(line: 118, column: 100, scope: !1991, inlinedAt: !2092)
!2100 = !DILocation(line: 120, column: 7, scope: !2014, inlinedAt: !2092)
!2101 = !DILocation(line: 120, column: 7, scope: !1991, inlinedAt: !2092)
!2102 = !DILocation(line: 104, column: 25, scope: !2017, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 125, column: 16, scope: !2029, inlinedAt: !2092)
!2104 = !DILocation(line: 104, column: 41, scope: !2017, inlinedAt: !2103)
!2105 = !DILocation(line: 104, column: 50, scope: !2017, inlinedAt: !2103)
!2106 = !DILocation(line: 104, column: 60, scope: !2017, inlinedAt: !2103)
!2107 = !DILocation(line: 104, column: 70, scope: !2017, inlinedAt: !2103)
!2108 = !DILocation(line: 104, column: 80, scope: !2017, inlinedAt: !2103)
!2109 = !DILocation(line: 104, column: 90, scope: !2017, inlinedAt: !2103)
!2110 = !DILocation(line: 106, column: 7, scope: !2038, inlinedAt: !2103)
!2111 = !DILocation(line: 106, column: 7, scope: !2017, inlinedAt: !2103)
!2112 = !DILocation(line: 90, column: 25, scope: !2041, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 111, column: 16, scope: !2052, inlinedAt: !2103)
!2114 = !DILocation(line: 90, column: 41, scope: !2041, inlinedAt: !2113)
!2115 = !DILocation(line: 90, column: 50, scope: !2041, inlinedAt: !2113)
!2116 = !DILocation(line: 90, column: 60, scope: !2041, inlinedAt: !2113)
!2117 = !DILocation(line: 90, column: 70, scope: !2041, inlinedAt: !2113)
!2118 = !DILocation(line: 90, column: 80, scope: !2041, inlinedAt: !2113)
!2119 = !DILocation(line: 92, column: 7, scope: !2060, inlinedAt: !2113)
!2120 = !DILocation(line: 92, column: 7, scope: !2041, inlinedAt: !2113)
!2121 = !DILocalVariable(name: "s1", arg: 1, scope: !2122, file: !1905, line: 76, type: !17)
!2122 = distinct !DISubprogram(name: "strcaseeq6", scope: !1905, file: !1905, line: 76, type: !2123, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!20, !17, !17, !7, !7, !7}
!2125 = !{!2121, !2126, !2127, !2128, !2129}
!2126 = !DILocalVariable(name: "s2", arg: 2, scope: !2122, file: !1905, line: 76, type: !17)
!2127 = !DILocalVariable(name: "s26", arg: 3, scope: !2122, file: !1905, line: 76, type: !7)
!2128 = !DILocalVariable(name: "s27", arg: 4, scope: !2122, file: !1905, line: 76, type: !7)
!2129 = !DILocalVariable(name: "s28", arg: 5, scope: !2122, file: !1905, line: 76, type: !7)
!2130 = !DILocation(line: 76, column: 25, scope: !2122, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 97, column: 16, scope: !2132, inlinedAt: !2113)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !1905, line: 94, column: 11)
!2133 = distinct !DILexicalBlock(scope: !2060, file: !1905, line: 93, column: 5)
!2134 = !DILocation(line: 76, column: 41, scope: !2122, inlinedAt: !2131)
!2135 = !DILocation(line: 76, column: 50, scope: !2122, inlinedAt: !2131)
!2136 = !DILocation(line: 76, column: 60, scope: !2122, inlinedAt: !2131)
!2137 = !DILocation(line: 76, column: 70, scope: !2122, inlinedAt: !2131)
!2138 = !DILocation(line: 78, column: 7, scope: !2139, inlinedAt: !2131)
!2139 = distinct !DILexicalBlock(scope: !2122, file: !1905, line: 78, column: 7)
!2140 = !DILocation(line: 78, column: 7, scope: !2122, inlinedAt: !2131)
!2141 = !DILocalVariable(name: "s1", arg: 1, scope: !2142, file: !1905, line: 62, type: !17)
!2142 = distinct !DISubprogram(name: "strcaseeq7", scope: !1905, file: !1905, line: 62, type: !2143, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!20, !17, !17, !7, !7}
!2145 = !{!2141, !2146, !2147, !2148}
!2146 = !DILocalVariable(name: "s2", arg: 2, scope: !2142, file: !1905, line: 62, type: !17)
!2147 = !DILocalVariable(name: "s27", arg: 3, scope: !2142, file: !1905, line: 62, type: !7)
!2148 = !DILocalVariable(name: "s28", arg: 4, scope: !2142, file: !1905, line: 62, type: !7)
!2149 = !DILocation(line: 62, column: 25, scope: !2142, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 83, column: 16, scope: !2151, inlinedAt: !2131)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !1905, line: 80, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2139, file: !1905, line: 79, column: 5)
!2153 = !DILocation(line: 62, column: 41, scope: !2142, inlinedAt: !2150)
!2154 = !DILocation(line: 62, column: 50, scope: !2142, inlinedAt: !2150)
!2155 = !DILocation(line: 62, column: 60, scope: !2142, inlinedAt: !2150)
!2156 = !DILocation(line: 64, column: 7, scope: !2157, inlinedAt: !2150)
!2157 = distinct !DILexicalBlock(scope: !2142, file: !1905, line: 64, column: 7)
!2158 = !DILocation(line: 236, column: 7, scope: !1886)
!2159 = !DILocation(line: 237, column: 12, scope: !2068)
!2160 = !DILocation(line: 237, column: 21, scope: !2068)
!2161 = !DILocation(line: 237, column: 5, scope: !2068)
!2162 = !DILocation(line: 239, column: 13, scope: !1886)
!2163 = !DILocation(line: 239, column: 11, scope: !1886)
!2164 = !DILocation(line: 239, column: 3, scope: !1886)
!2165 = !DILocation(line: 0, scope: !1886)
!2166 = !DILocation(line: 240, column: 1, scope: !1886)
!2167 = distinct !DISubprogram(name: "quotearg_alloc", scope: !122, file: !122, line: 799, type: !2168, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!6, !17, !117, !1206}
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "arg", arg: 1, scope: !2167, file: !122, line: 799, type: !17)
!2172 = !DILocalVariable(name: "argsize", arg: 2, scope: !2167, file: !122, line: 799, type: !117)
!2173 = !DILocalVariable(name: "o", arg: 3, scope: !2167, file: !122, line: 800, type: !1206)
!2174 = !DILocation(line: 799, column: 29, scope: !2167)
!2175 = !DILocation(line: 799, column: 41, scope: !2167)
!2176 = !DILocation(line: 800, column: 47, scope: !2167)
!2177 = !DILocalVariable(name: "arg", arg: 1, scope: !2178, file: !122, line: 812, type: !17)
!2178 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !122, file: !122, line: 812, type: !2179, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!6, !17, !117, !192, !1206}
!2181 = !{!2177, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2182 = !DILocalVariable(name: "argsize", arg: 2, scope: !2178, file: !122, line: 812, type: !117)
!2183 = !DILocalVariable(name: "size", arg: 3, scope: !2178, file: !122, line: 812, type: !192)
!2184 = !DILocalVariable(name: "o", arg: 4, scope: !2178, file: !122, line: 813, type: !1206)
!2185 = !DILocalVariable(name: "p", scope: !2178, file: !122, line: 815, type: !1206)
!2186 = !DILocalVariable(name: "e", scope: !2178, file: !122, line: 816, type: !20)
!2187 = !DILocalVariable(name: "flags", scope: !2178, file: !122, line: 818, type: !20)
!2188 = !DILocalVariable(name: "bufsize", scope: !2178, file: !122, line: 819, type: !117)
!2189 = !DILocalVariable(name: "buf", scope: !2178, file: !122, line: 823, type: !6)
!2190 = !DILocation(line: 812, column: 33, scope: !2178, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 802, column: 10, scope: !2167)
!2192 = !DILocation(line: 812, column: 45, scope: !2178, inlinedAt: !2191)
!2193 = !DILocation(line: 812, column: 62, scope: !2178, inlinedAt: !2191)
!2194 = !DILocation(line: 813, column: 51, scope: !2178, inlinedAt: !2191)
!2195 = !DILocation(line: 815, column: 37, scope: !2178, inlinedAt: !2191)
!2196 = !DILocation(line: 815, column: 33, scope: !2178, inlinedAt: !2191)
!2197 = !DILocation(line: 816, column: 11, scope: !2178, inlinedAt: !2191)
!2198 = !DILocation(line: 816, column: 7, scope: !2178, inlinedAt: !2191)
!2199 = !DILocation(line: 818, column: 18, scope: !2178, inlinedAt: !2191)
!2200 = !DILocation(line: 818, column: 24, scope: !2178, inlinedAt: !2191)
!2201 = !DILocation(line: 818, column: 7, scope: !2178, inlinedAt: !2191)
!2202 = !DILocation(line: 819, column: 69, scope: !2178, inlinedAt: !2191)
!2203 = !DILocation(line: 820, column: 53, scope: !2178, inlinedAt: !2191)
!2204 = !DILocation(line: 821, column: 49, scope: !2178, inlinedAt: !2191)
!2205 = !DILocation(line: 822, column: 49, scope: !2178, inlinedAt: !2191)
!2206 = !DILocation(line: 819, column: 20, scope: !2178, inlinedAt: !2191)
!2207 = !DILocation(line: 822, column: 62, scope: !2178, inlinedAt: !2191)
!2208 = !DILocation(line: 819, column: 10, scope: !2178, inlinedAt: !2191)
!2209 = !DILocalVariable(name: "n", arg: 1, scope: !2210, file: !188, line: 216, type: !117)
!2210 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !2211, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!6, !117}
!2213 = !{!2209}
!2214 = !DILocation(line: 216, column: 20, scope: !2210, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 823, column: 15, scope: !2178, inlinedAt: !2191)
!2216 = !DILocation(line: 218, column: 10, scope: !2210, inlinedAt: !2215)
!2217 = !DILocation(line: 823, column: 9, scope: !2178, inlinedAt: !2191)
!2218 = !DILocation(line: 824, column: 60, scope: !2178, inlinedAt: !2191)
!2219 = !DILocation(line: 826, column: 32, scope: !2178, inlinedAt: !2191)
!2220 = !DILocation(line: 826, column: 47, scope: !2178, inlinedAt: !2191)
!2221 = !DILocation(line: 824, column: 3, scope: !2178, inlinedAt: !2191)
!2222 = !DILocation(line: 827, column: 9, scope: !2178, inlinedAt: !2191)
!2223 = !DILocation(line: 802, column: 3, scope: !2167)
!2224 = !DILocation(line: 812, column: 33, scope: !2178)
!2225 = !DILocation(line: 812, column: 45, scope: !2178)
!2226 = !DILocation(line: 812, column: 62, scope: !2178)
!2227 = !DILocation(line: 813, column: 51, scope: !2178)
!2228 = !DILocation(line: 815, column: 37, scope: !2178)
!2229 = !DILocation(line: 815, column: 33, scope: !2178)
!2230 = !DILocation(line: 816, column: 11, scope: !2178)
!2231 = !DILocation(line: 816, column: 7, scope: !2178)
!2232 = !DILocation(line: 818, column: 18, scope: !2178)
!2233 = !DILocation(line: 818, column: 27, scope: !2178)
!2234 = !DILocation(line: 818, column: 24, scope: !2178)
!2235 = !DILocation(line: 818, column: 7, scope: !2178)
!2236 = !DILocation(line: 819, column: 69, scope: !2178)
!2237 = !DILocation(line: 820, column: 53, scope: !2178)
!2238 = !DILocation(line: 821, column: 49, scope: !2178)
!2239 = !DILocation(line: 822, column: 49, scope: !2178)
!2240 = !DILocation(line: 819, column: 20, scope: !2178)
!2241 = !DILocation(line: 822, column: 62, scope: !2178)
!2242 = !DILocation(line: 819, column: 10, scope: !2178)
!2243 = !DILocation(line: 216, column: 20, scope: !2210, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 823, column: 15, scope: !2178)
!2245 = !DILocation(line: 218, column: 10, scope: !2210, inlinedAt: !2244)
!2246 = !DILocation(line: 823, column: 9, scope: !2178)
!2247 = !DILocation(line: 824, column: 60, scope: !2178)
!2248 = !DILocation(line: 826, column: 32, scope: !2178)
!2249 = !DILocation(line: 826, column: 47, scope: !2178)
!2250 = !DILocation(line: 824, column: 3, scope: !2178)
!2251 = !DILocation(line: 827, column: 9, scope: !2178)
!2252 = !DILocation(line: 828, column: 7, scope: !2178)
!2253 = !DILocation(line: 829, column: 11, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2178, file: !122, line: 828, column: 7)
!2255 = !{!829, !829, i64 0}
!2256 = !DILocation(line: 829, column: 5, scope: !2254)
!2257 = !DILocation(line: 830, column: 3, scope: !2178)
!2258 = distinct !DISubprogram(name: "quotearg_free", scope: !122, file: !122, line: 848, type: !1085, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2259)
!2259 = !{!2260, !2261}
!2260 = !DILocalVariable(name: "sv", scope: !2258, file: !122, line: 850, type: !148)
!2261 = !DILocalVariable(name: "i", scope: !2258, file: !122, line: 851, type: !20)
!2262 = !DILocation(line: 850, column: 24, scope: !2258)
!2263 = !DILocation(line: 850, column: 19, scope: !2258)
!2264 = !DILocation(line: 851, column: 7, scope: !2258)
!2265 = !DILocation(line: 852, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !122, line: 852, column: 3)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !122, line: 852, column: 3)
!2268 = !DILocation(line: 852, column: 17, scope: !2266)
!2269 = !DILocation(line: 852, column: 3, scope: !2267)
!2270 = !DILocation(line: 853, column: 17, scope: !2266)
!2271 = !{!2272, !685, i64 8}
!2272 = !{!"slotvec", !829, i64 0, !685, i64 8}
!2273 = !DILocation(line: 853, column: 5, scope: !2266)
!2274 = !DILocation(line: 852, column: 28, scope: !2266)
!2275 = distinct !{!2275, !2269, !2276}
!2276 = !DILocation(line: 853, column: 20, scope: !2267)
!2277 = !DILocation(line: 854, column: 13, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2258, file: !122, line: 854, column: 7)
!2279 = !DILocation(line: 854, column: 17, scope: !2278)
!2280 = !DILocation(line: 854, column: 7, scope: !2258)
!2281 = !DILocation(line: 856, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !122, line: 855, column: 5)
!2283 = !DILocation(line: 857, column: 21, scope: !2282)
!2284 = !{!2272, !829, i64 0}
!2285 = !DILocation(line: 858, column: 20, scope: !2282)
!2286 = !DILocation(line: 859, column: 5, scope: !2282)
!2287 = !DILocation(line: 860, column: 10, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2258, file: !122, line: 860, column: 7)
!2289 = !DILocation(line: 860, column: 7, scope: !2258)
!2290 = !DILocation(line: 862, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !122, line: 861, column: 5)
!2292 = !DILocation(line: 862, column: 7, scope: !2291)
!2293 = !DILocation(line: 863, column: 15, scope: !2291)
!2294 = !DILocation(line: 864, column: 5, scope: !2291)
!2295 = !DILocation(line: 865, column: 10, scope: !2258)
!2296 = !DILocation(line: 866, column: 1, scope: !2258)
!2297 = distinct !DISubprogram(name: "quotearg_n", scope: !122, file: !122, line: 931, type: !2298, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!6, !20, !17}
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "n", arg: 1, scope: !2297, file: !122, line: 931, type: !20)
!2302 = !DILocalVariable(name: "arg", arg: 2, scope: !2297, file: !122, line: 931, type: !17)
!2303 = !DILocation(line: 931, column: 17, scope: !2297)
!2304 = !DILocation(line: 931, column: 32, scope: !2297)
!2305 = !DILocation(line: 933, column: 10, scope: !2297)
!2306 = !DILocation(line: 933, column: 3, scope: !2297)
!2307 = distinct !DISubprogram(name: "quotearg_n_options", scope: !122, file: !122, line: 877, type: !2308, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!6, !20, !17, !117, !1206}
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2320, !2321, !2323, !2324, !2325}
!2311 = !DILocalVariable(name: "n", arg: 1, scope: !2307, file: !122, line: 877, type: !20)
!2312 = !DILocalVariable(name: "arg", arg: 2, scope: !2307, file: !122, line: 877, type: !17)
!2313 = !DILocalVariable(name: "argsize", arg: 3, scope: !2307, file: !122, line: 877, type: !117)
!2314 = !DILocalVariable(name: "options", arg: 4, scope: !2307, file: !122, line: 878, type: !1206)
!2315 = !DILocalVariable(name: "e", scope: !2307, file: !122, line: 880, type: !20)
!2316 = !DILocalVariable(name: "sv", scope: !2307, file: !122, line: 882, type: !148)
!2317 = !DILocalVariable(name: "preallocated", scope: !2318, file: !122, line: 889, type: !61)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !122, line: 888, column: 5)
!2319 = distinct !DILexicalBlock(scope: !2307, file: !122, line: 887, column: 7)
!2320 = !DILocalVariable(name: "nmax", scope: !2318, file: !122, line: 890, type: !20)
!2321 = !DILocalVariable(name: "size", scope: !2322, file: !122, line: 903, type: !117)
!2322 = distinct !DILexicalBlock(scope: !2307, file: !122, line: 902, column: 3)
!2323 = !DILocalVariable(name: "val", scope: !2322, file: !122, line: 904, type: !6)
!2324 = !DILocalVariable(name: "flags", scope: !2322, file: !122, line: 906, type: !20)
!2325 = !DILocalVariable(name: "qsize", scope: !2322, file: !122, line: 907, type: !117)
!2326 = !DILocation(line: 877, column: 25, scope: !2307)
!2327 = !DILocation(line: 877, column: 40, scope: !2307)
!2328 = !DILocation(line: 877, column: 52, scope: !2307)
!2329 = !DILocation(line: 878, column: 51, scope: !2307)
!2330 = !DILocation(line: 880, column: 11, scope: !2307)
!2331 = !DILocation(line: 880, column: 7, scope: !2307)
!2332 = !DILocation(line: 882, column: 24, scope: !2307)
!2333 = !DILocation(line: 882, column: 19, scope: !2307)
!2334 = !DILocation(line: 884, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2307, file: !122, line: 884, column: 7)
!2336 = !DILocation(line: 884, column: 7, scope: !2307)
!2337 = !DILocation(line: 885, column: 5, scope: !2335)
!2338 = !DILocation(line: 887, column: 7, scope: !2319)
!2339 = !DILocation(line: 887, column: 14, scope: !2319)
!2340 = !DILocation(line: 887, column: 7, scope: !2307)
!2341 = !DILocation(line: 889, column: 31, scope: !2318)
!2342 = !DILocation(line: 890, column: 11, scope: !2318)
!2343 = !DILocation(line: 892, column: 16, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2318, file: !122, line: 892, column: 11)
!2345 = !DILocation(line: 892, column: 11, scope: !2318)
!2346 = !DILocation(line: 893, column: 9, scope: !2344)
!2347 = !DILocation(line: 895, column: 32, scope: !2318)
!2348 = !DILocation(line: 895, column: 61, scope: !2318)
!2349 = !DILocation(line: 895, column: 58, scope: !2318)
!2350 = !DILocation(line: 895, column: 66, scope: !2318)
!2351 = !DILocation(line: 895, column: 22, scope: !2318)
!2352 = !DILocation(line: 895, column: 15, scope: !2318)
!2353 = !DILocation(line: 896, column: 11, scope: !2318)
!2354 = !DILocation(line: 897, column: 15, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2318, file: !122, line: 896, column: 11)
!2356 = !{i64 0, i64 8, !2255, i64 8, i64 8, !684}
!2357 = !DILocation(line: 897, column: 9, scope: !2355)
!2358 = !DILocation(line: 898, column: 20, scope: !2318)
!2359 = !DILocation(line: 898, column: 18, scope: !2318)
!2360 = !DILocation(line: 898, column: 7, scope: !2318)
!2361 = !DILocation(line: 898, column: 38, scope: !2318)
!2362 = !DILocation(line: 898, column: 31, scope: !2318)
!2363 = !DILocation(line: 898, column: 48, scope: !2318)
!2364 = !DILocation(line: 899, column: 14, scope: !2318)
!2365 = !DILocation(line: 900, column: 5, scope: !2318)
!2366 = !DILocation(line: 0, scope: !2307)
!2367 = !DILocation(line: 903, column: 19, scope: !2322)
!2368 = !DILocation(line: 903, column: 25, scope: !2322)
!2369 = !DILocation(line: 903, column: 12, scope: !2322)
!2370 = !DILocation(line: 904, column: 23, scope: !2322)
!2371 = !DILocation(line: 904, column: 11, scope: !2322)
!2372 = !DILocation(line: 906, column: 26, scope: !2322)
!2373 = !DILocation(line: 906, column: 32, scope: !2322)
!2374 = !DILocation(line: 906, column: 9, scope: !2322)
!2375 = !DILocation(line: 908, column: 55, scope: !2322)
!2376 = !DILocation(line: 909, column: 46, scope: !2322)
!2377 = !DILocation(line: 910, column: 55, scope: !2322)
!2378 = !DILocation(line: 911, column: 55, scope: !2322)
!2379 = !DILocation(line: 907, column: 20, scope: !2322)
!2380 = !DILocation(line: 907, column: 12, scope: !2322)
!2381 = !DILocation(line: 913, column: 14, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2322, file: !122, line: 913, column: 9)
!2383 = !DILocation(line: 913, column: 9, scope: !2322)
!2384 = !DILocation(line: 915, column: 35, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !122, line: 914, column: 7)
!2386 = !DILocation(line: 915, column: 20, scope: !2385)
!2387 = !DILocation(line: 916, column: 17, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !122, line: 916, column: 13)
!2389 = !DILocation(line: 916, column: 13, scope: !2385)
!2390 = !DILocation(line: 917, column: 11, scope: !2388)
!2391 = !DILocation(line: 216, column: 20, scope: !2210, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 918, column: 27, scope: !2385)
!2393 = !DILocation(line: 218, column: 10, scope: !2210, inlinedAt: !2392)
!2394 = !DILocation(line: 918, column: 19, scope: !2385)
!2395 = !DILocation(line: 919, column: 69, scope: !2385)
!2396 = !DILocation(line: 921, column: 44, scope: !2385)
!2397 = !DILocation(line: 922, column: 44, scope: !2385)
!2398 = !DILocation(line: 919, column: 9, scope: !2385)
!2399 = !DILocation(line: 923, column: 7, scope: !2385)
!2400 = !DILocation(line: 0, scope: !2322)
!2401 = !DILocation(line: 925, column: 11, scope: !2322)
!2402 = !DILocation(line: 926, column: 5, scope: !2322)
!2403 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !122, file: !122, line: 937, type: !2404, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!6, !20, !17, !117}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !122, line: 937, type: !20)
!2408 = !DILocalVariable(name: "arg", arg: 2, scope: !2403, file: !122, line: 937, type: !17)
!2409 = !DILocalVariable(name: "argsize", arg: 3, scope: !2403, file: !122, line: 937, type: !117)
!2410 = !DILocation(line: 937, column: 21, scope: !2403)
!2411 = !DILocation(line: 937, column: 36, scope: !2403)
!2412 = !DILocation(line: 937, column: 48, scope: !2403)
!2413 = !DILocation(line: 939, column: 10, scope: !2403)
!2414 = !DILocation(line: 939, column: 3, scope: !2403)
!2415 = distinct !DISubprogram(name: "quotearg", scope: !122, file: !122, line: 943, type: !2416, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!6, !17}
!2418 = !{!2419}
!2419 = !DILocalVariable(name: "arg", arg: 1, scope: !2415, file: !122, line: 943, type: !17)
!2420 = !DILocation(line: 943, column: 23, scope: !2415)
!2421 = !DILocation(line: 931, column: 17, scope: !2297, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 945, column: 10, scope: !2415)
!2423 = !DILocation(line: 931, column: 32, scope: !2297, inlinedAt: !2422)
!2424 = !DILocation(line: 933, column: 10, scope: !2297, inlinedAt: !2422)
!2425 = !DILocation(line: 945, column: 3, scope: !2415)
!2426 = distinct !DISubprogram(name: "quotearg_mem", scope: !122, file: !122, line: 949, type: !2427, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!6, !17, !117}
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "arg", arg: 1, scope: !2426, file: !122, line: 949, type: !17)
!2431 = !DILocalVariable(name: "argsize", arg: 2, scope: !2426, file: !122, line: 949, type: !117)
!2432 = !DILocation(line: 949, column: 27, scope: !2426)
!2433 = !DILocation(line: 949, column: 39, scope: !2426)
!2434 = !DILocation(line: 937, column: 21, scope: !2403, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 951, column: 10, scope: !2426)
!2436 = !DILocation(line: 937, column: 36, scope: !2403, inlinedAt: !2435)
!2437 = !DILocation(line: 937, column: 48, scope: !2403, inlinedAt: !2435)
!2438 = !DILocation(line: 939, column: 10, scope: !2403, inlinedAt: !2435)
!2439 = !DILocation(line: 951, column: 3, scope: !2426)
!2440 = distinct !DISubprogram(name: "quotearg_n_style", scope: !122, file: !122, line: 955, type: !2441, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!6, !20, !81, !17}
!2443 = !{!2444, !2445, !2446, !2447}
!2444 = !DILocalVariable(name: "n", arg: 1, scope: !2440, file: !122, line: 955, type: !20)
!2445 = !DILocalVariable(name: "s", arg: 2, scope: !2440, file: !122, line: 955, type: !81)
!2446 = !DILocalVariable(name: "arg", arg: 3, scope: !2440, file: !122, line: 955, type: !17)
!2447 = !DILocalVariable(name: "o", scope: !2440, file: !122, line: 957, type: !1207)
!2448 = !DILocation(line: 955, column: 23, scope: !2440)
!2449 = !DILocation(line: 955, column: 45, scope: !2440)
!2450 = !DILocation(line: 955, column: 60, scope: !2440)
!2451 = !DILocation(line: 957, column: 3, scope: !2440)
!2452 = !DILocation(line: 957, column: 32, scope: !2440)
!2453 = !DILocalVariable(name: "style", arg: 1, scope: !2454, file: !122, line: 193, type: !81)
!2454 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !122, file: !122, line: 193, type: !2455, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!129, !81}
!2457 = !{!2453, !2458}
!2458 = !DILocalVariable(name: "o", scope: !2454, file: !122, line: 195, type: !129)
!2459 = !DILocation(line: 193, column: 48, scope: !2454, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 957, column: 36, scope: !2440)
!2461 = !DILocation(line: 195, column: 26, scope: !2454, inlinedAt: !2460)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 196, column: 13, scope: !2466, inlinedAt: !2460)
!2466 = distinct !DILexicalBlock(scope: !2454, file: !122, line: 196, column: 7)
!2467 = !DILocation(line: 196, column: 7, scope: !2454, inlinedAt: !2460)
!2468 = !DILocation(line: 197, column: 5, scope: !2466, inlinedAt: !2460)
!2469 = !DILocation(line: 198, column: 5, scope: !2454, inlinedAt: !2460)
!2470 = !DILocation(line: 198, column: 11, scope: !2454, inlinedAt: !2460)
!2471 = !DILocation(line: 958, column: 10, scope: !2440)
!2472 = !DILocation(line: 959, column: 1, scope: !2440)
!2473 = !DILocation(line: 958, column: 3, scope: !2440)
!2474 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !122, file: !122, line: 962, type: !2475, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!6, !20, !81, !17, !117}
!2477 = !{!2478, !2479, !2480, !2481, !2482}
!2478 = !DILocalVariable(name: "n", arg: 1, scope: !2474, file: !122, line: 962, type: !20)
!2479 = !DILocalVariable(name: "s", arg: 2, scope: !2474, file: !122, line: 962, type: !81)
!2480 = !DILocalVariable(name: "arg", arg: 3, scope: !2474, file: !122, line: 963, type: !17)
!2481 = !DILocalVariable(name: "argsize", arg: 4, scope: !2474, file: !122, line: 963, type: !117)
!2482 = !DILocalVariable(name: "o", scope: !2474, file: !122, line: 965, type: !1207)
!2483 = !DILocation(line: 962, column: 27, scope: !2474)
!2484 = !DILocation(line: 962, column: 49, scope: !2474)
!2485 = !DILocation(line: 963, column: 35, scope: !2474)
!2486 = !DILocation(line: 963, column: 47, scope: !2474)
!2487 = !DILocation(line: 965, column: 3, scope: !2474)
!2488 = !DILocation(line: 965, column: 32, scope: !2474)
!2489 = !DILocation(line: 193, column: 48, scope: !2454, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 965, column: 36, scope: !2474)
!2491 = !DILocation(line: 195, column: 26, scope: !2454, inlinedAt: !2490)
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"quoting_options_from_style: argument 0"}
!2494 = distinct !{!2494, !"quoting_options_from_style"}
!2495 = !DILocation(line: 196, column: 13, scope: !2466, inlinedAt: !2490)
!2496 = !DILocation(line: 196, column: 7, scope: !2454, inlinedAt: !2490)
!2497 = !DILocation(line: 197, column: 5, scope: !2466, inlinedAt: !2490)
!2498 = !DILocation(line: 198, column: 5, scope: !2454, inlinedAt: !2490)
!2499 = !DILocation(line: 198, column: 11, scope: !2454, inlinedAt: !2490)
!2500 = !DILocation(line: 966, column: 10, scope: !2474)
!2501 = !DILocation(line: 967, column: 1, scope: !2474)
!2502 = !DILocation(line: 966, column: 3, scope: !2474)
!2503 = distinct !DISubprogram(name: "quotearg_style", scope: !122, file: !122, line: 970, type: !2504, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!6, !81, !17}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "s", arg: 1, scope: !2503, file: !122, line: 970, type: !81)
!2508 = !DILocalVariable(name: "arg", arg: 2, scope: !2503, file: !122, line: 970, type: !17)
!2509 = !DILocation(line: 970, column: 36, scope: !2503)
!2510 = !DILocation(line: 970, column: 51, scope: !2503)
!2511 = !DILocation(line: 955, column: 23, scope: !2440, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 972, column: 10, scope: !2503)
!2513 = !DILocation(line: 955, column: 45, scope: !2440, inlinedAt: !2512)
!2514 = !DILocation(line: 955, column: 60, scope: !2440, inlinedAt: !2512)
!2515 = !DILocation(line: 957, column: 3, scope: !2440, inlinedAt: !2512)
!2516 = !DILocation(line: 957, column: 32, scope: !2440, inlinedAt: !2512)
!2517 = !DILocation(line: 193, column: 48, scope: !2454, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 957, column: 36, scope: !2440, inlinedAt: !2512)
!2519 = !DILocation(line: 195, column: 26, scope: !2454, inlinedAt: !2518)
!2520 = !{!2521}
!2521 = distinct !{!2521, !2522, !"quoting_options_from_style: argument 0"}
!2522 = distinct !{!2522, !"quoting_options_from_style"}
!2523 = !DILocation(line: 196, column: 13, scope: !2466, inlinedAt: !2518)
!2524 = !DILocation(line: 196, column: 7, scope: !2454, inlinedAt: !2518)
!2525 = !DILocation(line: 197, column: 5, scope: !2466, inlinedAt: !2518)
!2526 = !DILocation(line: 198, column: 5, scope: !2454, inlinedAt: !2518)
!2527 = !DILocation(line: 198, column: 11, scope: !2454, inlinedAt: !2518)
!2528 = !DILocation(line: 958, column: 10, scope: !2440, inlinedAt: !2512)
!2529 = !DILocation(line: 959, column: 1, scope: !2440, inlinedAt: !2512)
!2530 = !DILocation(line: 972, column: 3, scope: !2503)
!2531 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !122, file: !122, line: 976, type: !2532, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!6, !81, !17, !117}
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "s", arg: 1, scope: !2531, file: !122, line: 976, type: !81)
!2536 = !DILocalVariable(name: "arg", arg: 2, scope: !2531, file: !122, line: 976, type: !17)
!2537 = !DILocalVariable(name: "argsize", arg: 3, scope: !2531, file: !122, line: 976, type: !117)
!2538 = !DILocation(line: 976, column: 40, scope: !2531)
!2539 = !DILocation(line: 976, column: 55, scope: !2531)
!2540 = !DILocation(line: 976, column: 67, scope: !2531)
!2541 = !DILocation(line: 962, column: 27, scope: !2474, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 978, column: 10, scope: !2531)
!2543 = !DILocation(line: 962, column: 49, scope: !2474, inlinedAt: !2542)
!2544 = !DILocation(line: 963, column: 35, scope: !2474, inlinedAt: !2542)
!2545 = !DILocation(line: 963, column: 47, scope: !2474, inlinedAt: !2542)
!2546 = !DILocation(line: 965, column: 3, scope: !2474, inlinedAt: !2542)
!2547 = !DILocation(line: 965, column: 32, scope: !2474, inlinedAt: !2542)
!2548 = !DILocation(line: 193, column: 48, scope: !2454, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 965, column: 36, scope: !2474, inlinedAt: !2542)
!2550 = !DILocation(line: 195, column: 26, scope: !2454, inlinedAt: !2549)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 196, column: 13, scope: !2466, inlinedAt: !2549)
!2555 = !DILocation(line: 196, column: 7, scope: !2454, inlinedAt: !2549)
!2556 = !DILocation(line: 197, column: 5, scope: !2466, inlinedAt: !2549)
!2557 = !DILocation(line: 198, column: 5, scope: !2454, inlinedAt: !2549)
!2558 = !DILocation(line: 198, column: 11, scope: !2454, inlinedAt: !2549)
!2559 = !DILocation(line: 966, column: 10, scope: !2474, inlinedAt: !2542)
!2560 = !DILocation(line: 967, column: 1, scope: !2474, inlinedAt: !2542)
!2561 = !DILocation(line: 978, column: 3, scope: !2531)
!2562 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !122, file: !122, line: 982, type: !2563, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!6, !17, !117, !7}
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !122, line: 982, type: !17)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !122, line: 982, type: !117)
!2568 = !DILocalVariable(name: "ch", arg: 3, scope: !2562, file: !122, line: 982, type: !7)
!2569 = !DILocalVariable(name: "options", scope: !2562, file: !122, line: 984, type: !129)
!2570 = !DILocation(line: 982, column: 32, scope: !2562)
!2571 = !DILocation(line: 982, column: 44, scope: !2562)
!2572 = !DILocation(line: 982, column: 58, scope: !2562)
!2573 = !DILocation(line: 984, column: 3, scope: !2562)
!2574 = !DILocation(line: 985, column: 13, scope: !2562)
!2575 = !{i64 0, i64 4, !833, i64 4, i64 4, !779, i64 8, i64 32, !833, i64 40, i64 8, !684, i64 48, i64 8, !684}
!2576 = !DILocation(line: 984, column: 26, scope: !2562)
!2577 = !DILocation(line: 152, column: 43, scope: !1228, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 986, column: 3, scope: !2562)
!2579 = !DILocation(line: 152, column: 51, scope: !1228, inlinedAt: !2578)
!2580 = !DILocation(line: 152, column: 58, scope: !1228, inlinedAt: !2578)
!2581 = !DILocation(line: 154, column: 17, scope: !1228, inlinedAt: !2578)
!2582 = !DILocation(line: 156, column: 62, scope: !1228, inlinedAt: !2578)
!2583 = !DILocation(line: 156, column: 57, scope: !1228, inlinedAt: !2578)
!2584 = !DILocation(line: 155, column: 17, scope: !1228, inlinedAt: !2578)
!2585 = !DILocation(line: 157, column: 15, scope: !1228, inlinedAt: !2578)
!2586 = !DILocation(line: 157, column: 7, scope: !1228, inlinedAt: !2578)
!2587 = !DILocation(line: 158, column: 12, scope: !1228, inlinedAt: !2578)
!2588 = !DILocation(line: 158, column: 15, scope: !1228, inlinedAt: !2578)
!2589 = !DILocation(line: 158, column: 25, scope: !1228, inlinedAt: !2578)
!2590 = !DILocation(line: 158, column: 7, scope: !1228, inlinedAt: !2578)
!2591 = !DILocation(line: 159, column: 18, scope: !1228, inlinedAt: !2578)
!2592 = !DILocation(line: 159, column: 23, scope: !1228, inlinedAt: !2578)
!2593 = !DILocation(line: 159, column: 6, scope: !1228, inlinedAt: !2578)
!2594 = !DILocation(line: 987, column: 10, scope: !2562)
!2595 = !DILocation(line: 988, column: 1, scope: !2562)
!2596 = !DILocation(line: 987, column: 3, scope: !2562)
!2597 = distinct !DISubprogram(name: "quotearg_char", scope: !122, file: !122, line: 991, type: !2598, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!6, !17, !7}
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "arg", arg: 1, scope: !2597, file: !122, line: 991, type: !17)
!2602 = !DILocalVariable(name: "ch", arg: 2, scope: !2597, file: !122, line: 991, type: !7)
!2603 = !DILocation(line: 991, column: 28, scope: !2597)
!2604 = !DILocation(line: 991, column: 38, scope: !2597)
!2605 = !DILocation(line: 982, column: 32, scope: !2562, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 993, column: 10, scope: !2597)
!2607 = !DILocation(line: 982, column: 44, scope: !2562, inlinedAt: !2606)
!2608 = !DILocation(line: 982, column: 58, scope: !2562, inlinedAt: !2606)
!2609 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2606)
!2610 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2606)
!2611 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2606)
!2612 = !DILocation(line: 152, column: 43, scope: !1228, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2606)
!2614 = !DILocation(line: 152, column: 51, scope: !1228, inlinedAt: !2613)
!2615 = !DILocation(line: 152, column: 58, scope: !1228, inlinedAt: !2613)
!2616 = !DILocation(line: 154, column: 17, scope: !1228, inlinedAt: !2613)
!2617 = !DILocation(line: 156, column: 62, scope: !1228, inlinedAt: !2613)
!2618 = !DILocation(line: 156, column: 57, scope: !1228, inlinedAt: !2613)
!2619 = !DILocation(line: 155, column: 17, scope: !1228, inlinedAt: !2613)
!2620 = !DILocation(line: 157, column: 15, scope: !1228, inlinedAt: !2613)
!2621 = !DILocation(line: 157, column: 7, scope: !1228, inlinedAt: !2613)
!2622 = !DILocation(line: 158, column: 12, scope: !1228, inlinedAt: !2613)
!2623 = !DILocation(line: 158, column: 15, scope: !1228, inlinedAt: !2613)
!2624 = !DILocation(line: 158, column: 25, scope: !1228, inlinedAt: !2613)
!2625 = !DILocation(line: 158, column: 7, scope: !1228, inlinedAt: !2613)
!2626 = !DILocation(line: 159, column: 18, scope: !1228, inlinedAt: !2613)
!2627 = !DILocation(line: 159, column: 23, scope: !1228, inlinedAt: !2613)
!2628 = !DILocation(line: 159, column: 6, scope: !1228, inlinedAt: !2613)
!2629 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2606)
!2630 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2606)
!2631 = !DILocation(line: 993, column: 3, scope: !2597)
!2632 = distinct !DISubprogram(name: "quotearg_colon", scope: !122, file: !122, line: 997, type: !2416, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2633)
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2632, file: !122, line: 997, type: !17)
!2635 = !DILocation(line: 997, column: 29, scope: !2632)
!2636 = !DILocation(line: 991, column: 28, scope: !2597, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 999, column: 10, scope: !2632)
!2638 = !DILocation(line: 991, column: 38, scope: !2597, inlinedAt: !2637)
!2639 = !DILocation(line: 982, column: 32, scope: !2562, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 993, column: 10, scope: !2597, inlinedAt: !2637)
!2641 = !DILocation(line: 982, column: 44, scope: !2562, inlinedAt: !2640)
!2642 = !DILocation(line: 982, column: 58, scope: !2562, inlinedAt: !2640)
!2643 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2640)
!2644 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2640)
!2645 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2640)
!2646 = !DILocation(line: 152, column: 43, scope: !1228, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2640)
!2648 = !DILocation(line: 152, column: 51, scope: !1228, inlinedAt: !2647)
!2649 = !DILocation(line: 152, column: 58, scope: !1228, inlinedAt: !2647)
!2650 = !DILocation(line: 154, column: 17, scope: !1228, inlinedAt: !2647)
!2651 = !DILocation(line: 156, column: 57, scope: !1228, inlinedAt: !2647)
!2652 = !DILocation(line: 155, column: 17, scope: !1228, inlinedAt: !2647)
!2653 = !DILocation(line: 157, column: 7, scope: !1228, inlinedAt: !2647)
!2654 = !DILocation(line: 158, column: 12, scope: !1228, inlinedAt: !2647)
!2655 = !DILocation(line: 159, column: 6, scope: !1228, inlinedAt: !2647)
!2656 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2640)
!2657 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2640)
!2658 = !DILocation(line: 999, column: 3, scope: !2632)
!2659 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !122, file: !122, line: 1003, type: !2427, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2660)
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2659, file: !122, line: 1003, type: !17)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2659, file: !122, line: 1003, type: !117)
!2663 = !DILocation(line: 1003, column: 33, scope: !2659)
!2664 = !DILocation(line: 1003, column: 45, scope: !2659)
!2665 = !DILocation(line: 982, column: 32, scope: !2562, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1005, column: 10, scope: !2659)
!2667 = !DILocation(line: 982, column: 44, scope: !2562, inlinedAt: !2666)
!2668 = !DILocation(line: 982, column: 58, scope: !2562, inlinedAt: !2666)
!2669 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2666)
!2670 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2666)
!2671 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2666)
!2672 = !DILocation(line: 152, column: 43, scope: !1228, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2666)
!2674 = !DILocation(line: 152, column: 51, scope: !1228, inlinedAt: !2673)
!2675 = !DILocation(line: 152, column: 58, scope: !1228, inlinedAt: !2673)
!2676 = !DILocation(line: 154, column: 17, scope: !1228, inlinedAt: !2673)
!2677 = !DILocation(line: 156, column: 57, scope: !1228, inlinedAt: !2673)
!2678 = !DILocation(line: 155, column: 17, scope: !1228, inlinedAt: !2673)
!2679 = !DILocation(line: 157, column: 7, scope: !1228, inlinedAt: !2673)
!2680 = !DILocation(line: 158, column: 12, scope: !1228, inlinedAt: !2673)
!2681 = !DILocation(line: 159, column: 6, scope: !1228, inlinedAt: !2673)
!2682 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2666)
!2683 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2666)
!2684 = !DILocation(line: 1005, column: 3, scope: !2659)
!2685 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !122, file: !122, line: 1009, type: !2441, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2686)
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2685, file: !122, line: 1009, type: !20)
!2688 = !DILocalVariable(name: "s", arg: 2, scope: !2685, file: !122, line: 1009, type: !81)
!2689 = !DILocalVariable(name: "arg", arg: 3, scope: !2685, file: !122, line: 1009, type: !17)
!2690 = !DILocalVariable(name: "options", scope: !2685, file: !122, line: 1011, type: !129)
!2691 = !DILocation(line: 195, column: 26, scope: !2454, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1012, column: 13, scope: !2685)
!2693 = !DILocation(line: 1009, column: 29, scope: !2685)
!2694 = !DILocation(line: 1009, column: 51, scope: !2685)
!2695 = !DILocation(line: 1009, column: 66, scope: !2685)
!2696 = !DILocation(line: 1011, column: 3, scope: !2685)
!2697 = !DILocation(line: 1012, column: 13, scope: !2685)
!2698 = !DILocation(line: 193, column: 48, scope: !2454, inlinedAt: !2692)
!2699 = !{!2700}
!2700 = distinct !{!2700, !2701, !"quoting_options_from_style: argument 0"}
!2701 = distinct !{!2701, !"quoting_options_from_style"}
!2702 = !DILocation(line: 196, column: 13, scope: !2466, inlinedAt: !2692)
!2703 = !DILocation(line: 196, column: 7, scope: !2454, inlinedAt: !2692)
!2704 = !DILocation(line: 197, column: 5, scope: !2466, inlinedAt: !2692)
!2705 = !DILocation(line: 1011, column: 26, scope: !2685)
!2706 = !DILocation(line: 152, column: 43, scope: !1228, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1013, column: 3, scope: !2685)
!2708 = !DILocation(line: 152, column: 51, scope: !1228, inlinedAt: !2707)
!2709 = !DILocation(line: 152, column: 58, scope: !1228, inlinedAt: !2707)
!2710 = !DILocation(line: 154, column: 17, scope: !1228, inlinedAt: !2707)
!2711 = !DILocation(line: 156, column: 57, scope: !1228, inlinedAt: !2707)
!2712 = !DILocation(line: 155, column: 17, scope: !1228, inlinedAt: !2707)
!2713 = !DILocation(line: 157, column: 7, scope: !1228, inlinedAt: !2707)
!2714 = !DILocation(line: 158, column: 12, scope: !1228, inlinedAt: !2707)
!2715 = !DILocation(line: 159, column: 6, scope: !1228, inlinedAt: !2707)
!2716 = !DILocation(line: 1014, column: 10, scope: !2685)
!2717 = !DILocation(line: 1015, column: 1, scope: !2685)
!2718 = !DILocation(line: 1014, column: 3, scope: !2685)
!2719 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !122, file: !122, line: 1018, type: !2720, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!6, !20, !17, !17, !17}
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2719, file: !122, line: 1018, type: !20)
!2724 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2719, file: !122, line: 1018, type: !17)
!2725 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2719, file: !122, line: 1019, type: !17)
!2726 = !DILocalVariable(name: "arg", arg: 4, scope: !2719, file: !122, line: 1019, type: !17)
!2727 = !DILocation(line: 1018, column: 24, scope: !2719)
!2728 = !DILocation(line: 1018, column: 39, scope: !2719)
!2729 = !DILocation(line: 1019, column: 32, scope: !2719)
!2730 = !DILocation(line: 1019, column: 57, scope: !2719)
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2732, file: !122, line: 1026, type: !20)
!2732 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !122, file: !122, line: 1026, type: !2733, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!6, !20, !17, !17, !17, !117}
!2735 = !{!2731, !2736, !2737, !2738, !2739, !2740}
!2736 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2732, file: !122, line: 1026, type: !17)
!2737 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2732, file: !122, line: 1027, type: !17)
!2738 = !DILocalVariable(name: "arg", arg: 4, scope: !2732, file: !122, line: 1028, type: !17)
!2739 = !DILocalVariable(name: "argsize", arg: 5, scope: !2732, file: !122, line: 1028, type: !117)
!2740 = !DILocalVariable(name: "o", scope: !2732, file: !122, line: 1030, type: !129)
!2741 = !DILocation(line: 1026, column: 28, scope: !2732, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1021, column: 10, scope: !2719)
!2743 = !DILocation(line: 1026, column: 43, scope: !2732, inlinedAt: !2742)
!2744 = !DILocation(line: 1027, column: 36, scope: !2732, inlinedAt: !2742)
!2745 = !DILocation(line: 1028, column: 36, scope: !2732, inlinedAt: !2742)
!2746 = !DILocation(line: 1028, column: 48, scope: !2732, inlinedAt: !2742)
!2747 = !DILocation(line: 1030, column: 3, scope: !2732, inlinedAt: !2742)
!2748 = !DILocation(line: 1030, column: 30, scope: !2732, inlinedAt: !2742)
!2749 = !DILocation(line: 1030, column: 26, scope: !2732, inlinedAt: !2742)
!2750 = !DILocation(line: 179, column: 45, scope: !1276, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1031, column: 3, scope: !2732, inlinedAt: !2742)
!2752 = !DILocation(line: 180, column: 33, scope: !1276, inlinedAt: !2751)
!2753 = !DILocation(line: 180, column: 57, scope: !1276, inlinedAt: !2751)
!2754 = !DILocation(line: 184, column: 6, scope: !1276, inlinedAt: !2751)
!2755 = !DILocation(line: 184, column: 12, scope: !1276, inlinedAt: !2751)
!2756 = !DILocation(line: 185, column: 8, scope: !1292, inlinedAt: !2751)
!2757 = !DILocation(line: 185, column: 23, scope: !1292, inlinedAt: !2751)
!2758 = !DILocation(line: 185, column: 19, scope: !1292, inlinedAt: !2751)
!2759 = !DILocation(line: 186, column: 5, scope: !1292, inlinedAt: !2751)
!2760 = !DILocation(line: 187, column: 6, scope: !1276, inlinedAt: !2751)
!2761 = !DILocation(line: 187, column: 17, scope: !1276, inlinedAt: !2751)
!2762 = !DILocation(line: 188, column: 6, scope: !1276, inlinedAt: !2751)
!2763 = !DILocation(line: 188, column: 18, scope: !1276, inlinedAt: !2751)
!2764 = !DILocation(line: 1032, column: 10, scope: !2732, inlinedAt: !2742)
!2765 = !DILocation(line: 1033, column: 1, scope: !2732, inlinedAt: !2742)
!2766 = !DILocation(line: 1021, column: 3, scope: !2719)
!2767 = !DILocation(line: 1026, column: 28, scope: !2732)
!2768 = !DILocation(line: 1026, column: 43, scope: !2732)
!2769 = !DILocation(line: 1027, column: 36, scope: !2732)
!2770 = !DILocation(line: 1028, column: 36, scope: !2732)
!2771 = !DILocation(line: 1028, column: 48, scope: !2732)
!2772 = !DILocation(line: 1030, column: 3, scope: !2732)
!2773 = !DILocation(line: 1030, column: 30, scope: !2732)
!2774 = !DILocation(line: 1030, column: 26, scope: !2732)
!2775 = !DILocation(line: 179, column: 45, scope: !1276, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1031, column: 3, scope: !2732)
!2777 = !DILocation(line: 180, column: 33, scope: !1276, inlinedAt: !2776)
!2778 = !DILocation(line: 180, column: 57, scope: !1276, inlinedAt: !2776)
!2779 = !DILocation(line: 184, column: 6, scope: !1276, inlinedAt: !2776)
!2780 = !DILocation(line: 184, column: 12, scope: !1276, inlinedAt: !2776)
!2781 = !DILocation(line: 185, column: 8, scope: !1292, inlinedAt: !2776)
!2782 = !DILocation(line: 185, column: 23, scope: !1292, inlinedAt: !2776)
!2783 = !DILocation(line: 185, column: 19, scope: !1292, inlinedAt: !2776)
!2784 = !DILocation(line: 186, column: 5, scope: !1292, inlinedAt: !2776)
!2785 = !DILocation(line: 187, column: 6, scope: !1276, inlinedAt: !2776)
!2786 = !DILocation(line: 187, column: 17, scope: !1276, inlinedAt: !2776)
!2787 = !DILocation(line: 188, column: 6, scope: !1276, inlinedAt: !2776)
!2788 = !DILocation(line: 188, column: 18, scope: !1276, inlinedAt: !2776)
!2789 = !DILocation(line: 1032, column: 10, scope: !2732)
!2790 = !DILocation(line: 1033, column: 1, scope: !2732)
!2791 = !DILocation(line: 1032, column: 3, scope: !2732)
!2792 = distinct !DISubprogram(name: "quotearg_custom", scope: !122, file: !122, line: 1036, type: !2793, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!6, !17, !17, !17}
!2795 = !{!2796, !2797, !2798}
!2796 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2792, file: !122, line: 1036, type: !17)
!2797 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2792, file: !122, line: 1036, type: !17)
!2798 = !DILocalVariable(name: "arg", arg: 3, scope: !2792, file: !122, line: 1037, type: !17)
!2799 = !DILocation(line: 1036, column: 30, scope: !2792)
!2800 = !DILocation(line: 1036, column: 54, scope: !2792)
!2801 = !DILocation(line: 1037, column: 30, scope: !2792)
!2802 = !DILocation(line: 1018, column: 24, scope: !2719, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1039, column: 10, scope: !2792)
!2804 = !DILocation(line: 1018, column: 39, scope: !2719, inlinedAt: !2803)
!2805 = !DILocation(line: 1019, column: 32, scope: !2719, inlinedAt: !2803)
!2806 = !DILocation(line: 1019, column: 57, scope: !2719, inlinedAt: !2803)
!2807 = !DILocation(line: 1026, column: 28, scope: !2732, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1021, column: 10, scope: !2719, inlinedAt: !2803)
!2809 = !DILocation(line: 1026, column: 43, scope: !2732, inlinedAt: !2808)
!2810 = !DILocation(line: 1027, column: 36, scope: !2732, inlinedAt: !2808)
!2811 = !DILocation(line: 1028, column: 36, scope: !2732, inlinedAt: !2808)
!2812 = !DILocation(line: 1028, column: 48, scope: !2732, inlinedAt: !2808)
!2813 = !DILocation(line: 1030, column: 3, scope: !2732, inlinedAt: !2808)
!2814 = !DILocation(line: 1030, column: 30, scope: !2732, inlinedAt: !2808)
!2815 = !DILocation(line: 1030, column: 26, scope: !2732, inlinedAt: !2808)
!2816 = !DILocation(line: 179, column: 45, scope: !1276, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1031, column: 3, scope: !2732, inlinedAt: !2808)
!2818 = !DILocation(line: 180, column: 33, scope: !1276, inlinedAt: !2817)
!2819 = !DILocation(line: 180, column: 57, scope: !1276, inlinedAt: !2817)
!2820 = !DILocation(line: 184, column: 6, scope: !1276, inlinedAt: !2817)
!2821 = !DILocation(line: 184, column: 12, scope: !1276, inlinedAt: !2817)
!2822 = !DILocation(line: 185, column: 8, scope: !1292, inlinedAt: !2817)
!2823 = !DILocation(line: 185, column: 23, scope: !1292, inlinedAt: !2817)
!2824 = !DILocation(line: 185, column: 19, scope: !1292, inlinedAt: !2817)
!2825 = !DILocation(line: 186, column: 5, scope: !1292, inlinedAt: !2817)
!2826 = !DILocation(line: 187, column: 6, scope: !1276, inlinedAt: !2817)
!2827 = !DILocation(line: 187, column: 17, scope: !1276, inlinedAt: !2817)
!2828 = !DILocation(line: 188, column: 6, scope: !1276, inlinedAt: !2817)
!2829 = !DILocation(line: 188, column: 18, scope: !1276, inlinedAt: !2817)
!2830 = !DILocation(line: 1032, column: 10, scope: !2732, inlinedAt: !2808)
!2831 = !DILocation(line: 1033, column: 1, scope: !2732, inlinedAt: !2808)
!2832 = !DILocation(line: 1039, column: 3, scope: !2792)
!2833 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !122, file: !122, line: 1043, type: !2834, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!6, !17, !17, !17, !117}
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2833, file: !122, line: 1043, type: !17)
!2838 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2833, file: !122, line: 1043, type: !17)
!2839 = !DILocalVariable(name: "arg", arg: 3, scope: !2833, file: !122, line: 1044, type: !17)
!2840 = !DILocalVariable(name: "argsize", arg: 4, scope: !2833, file: !122, line: 1044, type: !117)
!2841 = !DILocation(line: 1043, column: 34, scope: !2833)
!2842 = !DILocation(line: 1043, column: 58, scope: !2833)
!2843 = !DILocation(line: 1044, column: 34, scope: !2833)
!2844 = !DILocation(line: 1044, column: 46, scope: !2833)
!2845 = !DILocation(line: 1026, column: 28, scope: !2732, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1046, column: 10, scope: !2833)
!2847 = !DILocation(line: 1026, column: 43, scope: !2732, inlinedAt: !2846)
!2848 = !DILocation(line: 1027, column: 36, scope: !2732, inlinedAt: !2846)
!2849 = !DILocation(line: 1028, column: 36, scope: !2732, inlinedAt: !2846)
!2850 = !DILocation(line: 1028, column: 48, scope: !2732, inlinedAt: !2846)
!2851 = !DILocation(line: 1030, column: 3, scope: !2732, inlinedAt: !2846)
!2852 = !DILocation(line: 1030, column: 30, scope: !2732, inlinedAt: !2846)
!2853 = !DILocation(line: 1030, column: 26, scope: !2732, inlinedAt: !2846)
!2854 = !DILocation(line: 179, column: 45, scope: !1276, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1031, column: 3, scope: !2732, inlinedAt: !2846)
!2856 = !DILocation(line: 180, column: 33, scope: !1276, inlinedAt: !2855)
!2857 = !DILocation(line: 180, column: 57, scope: !1276, inlinedAt: !2855)
!2858 = !DILocation(line: 184, column: 6, scope: !1276, inlinedAt: !2855)
!2859 = !DILocation(line: 184, column: 12, scope: !1276, inlinedAt: !2855)
!2860 = !DILocation(line: 185, column: 8, scope: !1292, inlinedAt: !2855)
!2861 = !DILocation(line: 185, column: 23, scope: !1292, inlinedAt: !2855)
!2862 = !DILocation(line: 185, column: 19, scope: !1292, inlinedAt: !2855)
!2863 = !DILocation(line: 186, column: 5, scope: !1292, inlinedAt: !2855)
!2864 = !DILocation(line: 187, column: 6, scope: !1276, inlinedAt: !2855)
!2865 = !DILocation(line: 187, column: 17, scope: !1276, inlinedAt: !2855)
!2866 = !DILocation(line: 188, column: 6, scope: !1276, inlinedAt: !2855)
!2867 = !DILocation(line: 188, column: 18, scope: !1276, inlinedAt: !2855)
!2868 = !DILocation(line: 1032, column: 10, scope: !2732, inlinedAt: !2846)
!2869 = !DILocation(line: 1033, column: 1, scope: !2732, inlinedAt: !2846)
!2870 = !DILocation(line: 1046, column: 3, scope: !2833)
!2871 = distinct !DISubprogram(name: "quote_n_mem", scope: !122, file: !122, line: 1061, type: !2872, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!17, !20, !17, !117}
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "n", arg: 1, scope: !2871, file: !122, line: 1061, type: !20)
!2876 = !DILocalVariable(name: "arg", arg: 2, scope: !2871, file: !122, line: 1061, type: !17)
!2877 = !DILocalVariable(name: "argsize", arg: 3, scope: !2871, file: !122, line: 1061, type: !117)
!2878 = !DILocation(line: 1061, column: 18, scope: !2871)
!2879 = !DILocation(line: 1061, column: 33, scope: !2871)
!2880 = !DILocation(line: 1061, column: 45, scope: !2871)
!2881 = !DILocation(line: 1063, column: 10, scope: !2871)
!2882 = !DILocation(line: 1063, column: 3, scope: !2871)
!2883 = distinct !DISubprogram(name: "quote_mem", scope: !122, file: !122, line: 1067, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!17, !17, !117}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !122, line: 1067, type: !17)
!2888 = !DILocalVariable(name: "argsize", arg: 2, scope: !2883, file: !122, line: 1067, type: !117)
!2889 = !DILocation(line: 1067, column: 24, scope: !2883)
!2890 = !DILocation(line: 1067, column: 36, scope: !2883)
!2891 = !DILocation(line: 1061, column: 18, scope: !2871, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1069, column: 10, scope: !2883)
!2893 = !DILocation(line: 1061, column: 33, scope: !2871, inlinedAt: !2892)
!2894 = !DILocation(line: 1061, column: 45, scope: !2871, inlinedAt: !2892)
!2895 = !DILocation(line: 1063, column: 10, scope: !2871, inlinedAt: !2892)
!2896 = !DILocation(line: 1069, column: 3, scope: !2883)
!2897 = distinct !DISubprogram(name: "quote_n", scope: !122, file: !122, line: 1073, type: !2898, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!17, !20, !17}
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !122, line: 1073, type: !20)
!2902 = !DILocalVariable(name: "arg", arg: 2, scope: !2897, file: !122, line: 1073, type: !17)
!2903 = !DILocation(line: 1073, column: 14, scope: !2897)
!2904 = !DILocation(line: 1073, column: 29, scope: !2897)
!2905 = !DILocation(line: 1061, column: 18, scope: !2871, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1075, column: 10, scope: !2897)
!2907 = !DILocation(line: 1061, column: 33, scope: !2871, inlinedAt: !2906)
!2908 = !DILocation(line: 1061, column: 45, scope: !2871, inlinedAt: !2906)
!2909 = !DILocation(line: 1063, column: 10, scope: !2871, inlinedAt: !2906)
!2910 = !DILocation(line: 1075, column: 3, scope: !2897)
!2911 = distinct !DISubprogram(name: "quote", scope: !122, file: !122, line: 1079, type: !2912, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!17, !17}
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2911, file: !122, line: 1079, type: !17)
!2916 = !DILocation(line: 1079, column: 20, scope: !2911)
!2917 = !DILocation(line: 1073, column: 14, scope: !2897, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 1081, column: 10, scope: !2911)
!2919 = !DILocation(line: 1073, column: 29, scope: !2897, inlinedAt: !2918)
!2920 = !DILocation(line: 1061, column: 18, scope: !2871, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1075, column: 10, scope: !2897, inlinedAt: !2918)
!2922 = !DILocation(line: 1061, column: 33, scope: !2871, inlinedAt: !2921)
!2923 = !DILocation(line: 1061, column: 45, scope: !2871, inlinedAt: !2921)
!2924 = !DILocation(line: 1063, column: 10, scope: !2871, inlinedAt: !2921)
!2925 = !DILocation(line: 1081, column: 3, scope: !2911)
!2926 = distinct !DISubprogram(name: "version_etc_arn", scope: !180, file: !180, line: 62, type: !2927, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !2984)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2929, !17, !17, !17, !2983, !117}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !2932)
!2931 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2933, line: 49, size: 1728, elements: !2934)
!2933 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2950, !2952, !2953, !2954, !2957, !2958, !2960, !2964, !2967, !2969, !2972, !2975, !2976, !2977, !2978, !2979}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2932, file: !2933, line: 51, baseType: !20, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2932, file: !2933, line: 54, baseType: !6, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2932, file: !2933, line: 55, baseType: !6, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2932, file: !2933, line: 56, baseType: !6, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2932, file: !2933, line: 57, baseType: !6, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2932, file: !2933, line: 58, baseType: !6, size: 64, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2932, file: !2933, line: 59, baseType: !6, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2932, file: !2933, line: 60, baseType: !6, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2932, file: !2933, line: 61, baseType: !6, size: 64, offset: 512)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2932, file: !2933, line: 64, baseType: !6, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2932, file: !2933, line: 65, baseType: !6, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2932, file: !2933, line: 66, baseType: !6, size: 64, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2932, file: !2933, line: 68, baseType: !2948, size: 64, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2933, line: 36, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2932, file: !2933, line: 70, baseType: !2951, size: 64, offset: 832)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2932, file: !2933, line: 72, baseType: !20, size: 32, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2932, file: !2933, line: 73, baseType: !20, size: 32, offset: 928)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2932, file: !2933, line: 74, baseType: !2955, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 150, baseType: !2956)
!2956 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2932, file: !2933, line: 77, baseType: !116, size: 16, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2932, file: !2933, line: 78, baseType: !2959, size: 8, offset: 1040)
!2959 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2932, file: !2933, line: 79, baseType: !2961, size: 8, offset: 1048)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: 1)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2932, file: !2933, line: 81, baseType: !2965, size: 64, offset: 1088)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2933, line: 43, baseType: null)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2932, file: !2933, line: 89, baseType: !2968, size: 64, offset: 1152)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 151, baseType: !2956)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2932, file: !2933, line: 91, baseType: !2970, size: 64, offset: 1216)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2933, line: 37, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2932, file: !2933, line: 92, baseType: !2973, size: 64, offset: 1280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2933, line: 38, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2932, file: !2933, line: 93, baseType: !2951, size: 64, offset: 1344)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2932, file: !2933, line: 94, baseType: !8, size: 64, offset: 1408)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2932, file: !2933, line: 95, baseType: !117, size: 64, offset: 1472)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2932, file: !2933, line: 96, baseType: !20, size: 32, offset: 1536)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2932, file: !2933, line: 98, baseType: !2980, size: 160, offset: 1568)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2981)
!2981 = !{!2982}
!2982 = !DISubrange(count: 20)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990}
!2985 = !DILocalVariable(name: "stream", arg: 1, scope: !2926, file: !180, line: 62, type: !2929)
!2986 = !DILocalVariable(name: "command_name", arg: 2, scope: !2926, file: !180, line: 63, type: !17)
!2987 = !DILocalVariable(name: "package", arg: 3, scope: !2926, file: !180, line: 63, type: !17)
!2988 = !DILocalVariable(name: "version", arg: 4, scope: !2926, file: !180, line: 64, type: !17)
!2989 = !DILocalVariable(name: "authors", arg: 5, scope: !2926, file: !180, line: 65, type: !2983)
!2990 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2926, file: !180, line: 65, type: !117)
!2991 = !DILocation(line: 62, column: 24, scope: !2926)
!2992 = !DILocation(line: 63, column: 30, scope: !2926)
!2993 = !DILocation(line: 63, column: 56, scope: !2926)
!2994 = !DILocation(line: 64, column: 30, scope: !2926)
!2995 = !DILocation(line: 65, column: 39, scope: !2926)
!2996 = !DILocation(line: 65, column: 55, scope: !2926)
!2997 = !DILocation(line: 67, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2926, file: !180, line: 67, column: 7)
!2999 = !DILocation(line: 67, column: 7, scope: !2926)
!3000 = !DILocation(line: 68, column: 5, scope: !2998)
!3001 = !DILocation(line: 70, column: 5, scope: !2998)
!3002 = !DILocation(line: 84, column: 3, scope: !2926)
!3003 = !DILocation(line: 86, column: 3, scope: !2926)
!3004 = !DILocation(line: 95, column: 3, scope: !2926)
!3005 = !DILocation(line: 99, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2926, file: !180, line: 96, column: 5)
!3007 = !DILocation(line: 102, column: 7, scope: !3006)
!3008 = !DILocation(line: 103, column: 7, scope: !3006)
!3009 = !DILocation(line: 106, column: 7, scope: !3006)
!3010 = !DILocation(line: 107, column: 7, scope: !3006)
!3011 = !DILocation(line: 110, column: 7, scope: !3006)
!3012 = !DILocation(line: 112, column: 7, scope: !3006)
!3013 = !DILocation(line: 117, column: 7, scope: !3006)
!3014 = !DILocation(line: 119, column: 7, scope: !3006)
!3015 = !DILocation(line: 124, column: 7, scope: !3006)
!3016 = !DILocation(line: 126, column: 7, scope: !3006)
!3017 = !DILocation(line: 131, column: 7, scope: !3006)
!3018 = !DILocation(line: 134, column: 7, scope: !3006)
!3019 = !DILocation(line: 139, column: 7, scope: !3006)
!3020 = !DILocation(line: 142, column: 7, scope: !3006)
!3021 = !DILocation(line: 147, column: 7, scope: !3006)
!3022 = !DILocation(line: 151, column: 7, scope: !3006)
!3023 = !DILocation(line: 156, column: 7, scope: !3006)
!3024 = !DILocation(line: 160, column: 7, scope: !3006)
!3025 = !DILocation(line: 167, column: 7, scope: !3006)
!3026 = !DILocation(line: 171, column: 7, scope: !3006)
!3027 = !DILocation(line: 173, column: 1, scope: !2926)
!3028 = distinct !DISubprogram(name: "version_etc_ar", scope: !180, file: !180, line: 180, type: !3029, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2929, !17, !17, !17, !2983}
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037}
!3032 = !DILocalVariable(name: "stream", arg: 1, scope: !3028, file: !180, line: 180, type: !2929)
!3033 = !DILocalVariable(name: "command_name", arg: 2, scope: !3028, file: !180, line: 181, type: !17)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !3028, file: !180, line: 181, type: !17)
!3035 = !DILocalVariable(name: "version", arg: 4, scope: !3028, file: !180, line: 182, type: !17)
!3036 = !DILocalVariable(name: "authors", arg: 5, scope: !3028, file: !180, line: 182, type: !2983)
!3037 = !DILocalVariable(name: "n_authors", scope: !3028, file: !180, line: 184, type: !117)
!3038 = !DILocation(line: 180, column: 23, scope: !3028)
!3039 = !DILocation(line: 181, column: 29, scope: !3028)
!3040 = !DILocation(line: 181, column: 55, scope: !3028)
!3041 = !DILocation(line: 182, column: 29, scope: !3028)
!3042 = !DILocation(line: 182, column: 59, scope: !3028)
!3043 = !DILocation(line: 184, column: 10, scope: !3028)
!3044 = !DILocation(line: 186, column: 8, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3028, file: !180, line: 186, column: 3)
!3046 = !DILocation(line: 0, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3045, file: !180, line: 186, column: 3)
!3048 = !DILocation(line: 186, column: 23, scope: !3047)
!3049 = !DILocation(line: 186, column: 3, scope: !3045)
!3050 = !DILocation(line: 186, column: 52, scope: !3047)
!3051 = distinct !{!3051, !3049, !3052}
!3052 = !DILocation(line: 187, column: 5, scope: !3045)
!3053 = !DILocation(line: 188, column: 3, scope: !3028)
!3054 = !DILocation(line: 189, column: 1, scope: !3028)
!3055 = distinct !DISubprogram(name: "version_etc_va", scope: !180, file: !180, line: 196, type: !3056, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3065)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2929, !17, !17, !17, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !177, line: 189, size: 192, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3059, file: !177, line: 189, baseType: !38, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3059, file: !177, line: 189, baseType: !38, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3059, file: !177, line: 189, baseType: !8, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3059, file: !177, line: 189, baseType: !8, size: 64, offset: 128)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072}
!3066 = !DILocalVariable(name: "stream", arg: 1, scope: !3055, file: !180, line: 196, type: !2929)
!3067 = !DILocalVariable(name: "command_name", arg: 2, scope: !3055, file: !180, line: 197, type: !17)
!3068 = !DILocalVariable(name: "package", arg: 3, scope: !3055, file: !180, line: 197, type: !17)
!3069 = !DILocalVariable(name: "version", arg: 4, scope: !3055, file: !180, line: 198, type: !17)
!3070 = !DILocalVariable(name: "authors", arg: 5, scope: !3055, file: !180, line: 198, type: !3058)
!3071 = !DILocalVariable(name: "n_authors", scope: !3055, file: !180, line: 200, type: !117)
!3072 = !DILocalVariable(name: "authtab", scope: !3055, file: !180, line: 201, type: !3073)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !125)
!3074 = !DILocation(line: 196, column: 23, scope: !3055)
!3075 = !DILocation(line: 197, column: 29, scope: !3055)
!3076 = !DILocation(line: 197, column: 55, scope: !3055)
!3077 = !DILocation(line: 198, column: 29, scope: !3055)
!3078 = !DILocation(line: 198, column: 46, scope: !3055)
!3079 = !DILocation(line: 201, column: 3, scope: !3055)
!3080 = !DILocation(line: 201, column: 15, scope: !3055)
!3081 = !DILocation(line: 200, column: 10, scope: !3055)
!3082 = !DILocation(line: 205, column: 35, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !180, line: 203, column: 3)
!3084 = distinct !DILexicalBlock(scope: !3055, file: !180, line: 203, column: 3)
!3085 = !DILocation(line: 205, column: 14, scope: !3083)
!3086 = !DILocation(line: 205, column: 33, scope: !3083)
!3087 = !DILocation(line: 205, column: 67, scope: !3083)
!3088 = !DILocation(line: 203, column: 3, scope: !3084)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 208, column: 3, scope: !3055)
!3091 = !DILocation(line: 210, column: 1, scope: !3055)
!3092 = distinct !DISubprogram(name: "version_etc", scope: !180, file: !180, line: 227, type: !3093, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !2929, !17, !17, !17, null}
!3095 = !{!3096, !3097, !3098, !3099, !3100}
!3096 = !DILocalVariable(name: "stream", arg: 1, scope: !3092, file: !180, line: 227, type: !2929)
!3097 = !DILocalVariable(name: "command_name", arg: 2, scope: !3092, file: !180, line: 228, type: !17)
!3098 = !DILocalVariable(name: "package", arg: 3, scope: !3092, file: !180, line: 228, type: !17)
!3099 = !DILocalVariable(name: "version", arg: 4, scope: !3092, file: !180, line: 229, type: !17)
!3100 = !DILocalVariable(name: "authors", scope: !3092, file: !180, line: 231, type: !3101)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3102, line: 52, baseType: !3103)
!3102 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3104, line: 48, baseType: !3105)
!3104 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !177, line: 231, baseType: !3106)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3059, size: 192, elements: !2962)
!3107 = !DILocation(line: 227, column: 20, scope: !3092)
!3108 = !DILocation(line: 228, column: 26, scope: !3092)
!3109 = !DILocation(line: 228, column: 52, scope: !3092)
!3110 = !DILocation(line: 229, column: 26, scope: !3092)
!3111 = !DILocation(line: 231, column: 3, scope: !3092)
!3112 = !DILocation(line: 231, column: 11, scope: !3092)
!3113 = !DILocation(line: 233, column: 3, scope: !3092)
!3114 = !DILocation(line: 234, column: 3, scope: !3092)
!3115 = !DILocation(line: 235, column: 3, scope: !3092)
!3116 = !DILocation(line: 236, column: 1, scope: !3092)
!3117 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !180, file: !180, line: 239, type: !1085, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !4)
!3118 = !DILocation(line: 245, column: 3, scope: !3117)
!3119 = !DILocation(line: 251, column: 3, scope: !3117)
!3120 = !DILocation(line: 256, column: 3, scope: !3117)
!3121 = !DILocation(line: 258, column: 1, scope: !3117)
!3122 = distinct !DISubprogram(name: "xnmalloc", scope: !188, file: !188, line: 99, type: !3123, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!8, !117, !117}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !188, line: 99, type: !117)
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !188, line: 99, type: !117)
!3128 = !DILocation(line: 99, column: 18, scope: !3122)
!3129 = !DILocation(line: 99, column: 28, scope: !3122)
!3130 = !DILocation(line: 101, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3122, file: !188, line: 101, column: 7)
!3132 = !DILocation(line: 101, column: 7, scope: !3122)
!3133 = !DILocation(line: 102, column: 5, scope: !3131)
!3134 = !DILocation(line: 103, column: 21, scope: !3122)
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !3137, line: 39, type: !117)
!3136 = distinct !DISubprogram(name: "xmalloc", scope: !3137, file: !3137, line: 39, type: !3138, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3140)
!3137 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!8, !117}
!3140 = !{!3135, !3141}
!3141 = !DILocalVariable(name: "p", scope: !3136, file: !3137, line: 41, type: !8)
!3142 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 103, column: 10, scope: !3122)
!3144 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3143)
!3145 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3143)
!3146 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3143)
!3147 = distinct !DILexicalBlock(scope: !3136, file: !3137, line: 42, column: 7)
!3148 = !DILocation(line: 42, column: 15, scope: !3147, inlinedAt: !3143)
!3149 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3143)
!3150 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3143)
!3151 = !DILocation(line: 103, column: 3, scope: !3122)
!3152 = !DILocation(line: 39, column: 17, scope: !3136)
!3153 = !DILocation(line: 41, column: 13, scope: !3136)
!3154 = !DILocation(line: 41, column: 9, scope: !3136)
!3155 = !DILocation(line: 42, column: 8, scope: !3147)
!3156 = !DILocation(line: 42, column: 15, scope: !3147)
!3157 = !DILocation(line: 42, column: 10, scope: !3147)
!3158 = !DILocation(line: 43, column: 5, scope: !3147)
!3159 = !DILocation(line: 44, column: 3, scope: !3136)
!3160 = distinct !DISubprogram(name: "xnrealloc", scope: !188, file: !188, line: 112, type: !3161, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!8, !8, !117, !117}
!3163 = !{!3164, !3165, !3166}
!3164 = !DILocalVariable(name: "p", arg: 1, scope: !3160, file: !188, line: 112, type: !8)
!3165 = !DILocalVariable(name: "n", arg: 2, scope: !3160, file: !188, line: 112, type: !117)
!3166 = !DILocalVariable(name: "s", arg: 3, scope: !3160, file: !188, line: 112, type: !117)
!3167 = !DILocation(line: 112, column: 18, scope: !3160)
!3168 = !DILocation(line: 112, column: 28, scope: !3160)
!3169 = !DILocation(line: 112, column: 38, scope: !3160)
!3170 = !DILocation(line: 114, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3160, file: !188, line: 114, column: 7)
!3172 = !DILocation(line: 114, column: 7, scope: !3160)
!3173 = !DILocation(line: 115, column: 5, scope: !3171)
!3174 = !DILocation(line: 116, column: 25, scope: !3160)
!3175 = !DILocalVariable(name: "p", arg: 1, scope: !3176, file: !3137, line: 51, type: !8)
!3176 = distinct !DISubprogram(name: "xrealloc", scope: !3137, file: !3137, line: 51, type: !3177, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!8, !8, !117}
!3179 = !{!3175, !3180}
!3180 = !DILocalVariable(name: "n", arg: 2, scope: !3176, file: !3137, line: 51, type: !117)
!3181 = !DILocation(line: 51, column: 17, scope: !3176, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 116, column: 10, scope: !3160)
!3183 = !DILocation(line: 51, column: 27, scope: !3176, inlinedAt: !3182)
!3184 = !DILocation(line: 53, column: 8, scope: !3185, inlinedAt: !3182)
!3185 = distinct !DILexicalBlock(scope: !3176, file: !3137, line: 53, column: 7)
!3186 = !DILocation(line: 53, column: 13, scope: !3185, inlinedAt: !3182)
!3187 = !DILocation(line: 53, column: 10, scope: !3185, inlinedAt: !3182)
!3188 = !DILocation(line: 57, column: 7, scope: !3189, inlinedAt: !3182)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !3137, line: 54, column: 5)
!3190 = !DILocation(line: 58, column: 7, scope: !3189, inlinedAt: !3182)
!3191 = !DILocation(line: 61, column: 7, scope: !3176, inlinedAt: !3182)
!3192 = !DILocation(line: 62, column: 8, scope: !3193, inlinedAt: !3182)
!3193 = distinct !DILexicalBlock(scope: !3176, file: !3137, line: 62, column: 7)
!3194 = !DILocation(line: 62, column: 13, scope: !3193, inlinedAt: !3182)
!3195 = !DILocation(line: 62, column: 10, scope: !3193, inlinedAt: !3182)
!3196 = !DILocation(line: 63, column: 5, scope: !3193, inlinedAt: !3182)
!3197 = !DILocation(line: 0, scope: !3176, inlinedAt: !3182)
!3198 = !DILocation(line: 116, column: 3, scope: !3160)
!3199 = !DILocation(line: 51, column: 17, scope: !3176)
!3200 = !DILocation(line: 51, column: 27, scope: !3176)
!3201 = !DILocation(line: 53, column: 8, scope: !3185)
!3202 = !DILocation(line: 53, column: 13, scope: !3185)
!3203 = !DILocation(line: 53, column: 10, scope: !3185)
!3204 = !DILocation(line: 57, column: 7, scope: !3189)
!3205 = !DILocation(line: 58, column: 7, scope: !3189)
!3206 = !DILocation(line: 61, column: 7, scope: !3176)
!3207 = !DILocation(line: 62, column: 8, scope: !3193)
!3208 = !DILocation(line: 62, column: 13, scope: !3193)
!3209 = !DILocation(line: 62, column: 10, scope: !3193)
!3210 = !DILocation(line: 63, column: 5, scope: !3193)
!3211 = !DILocation(line: 0, scope: !3176)
!3212 = !DILocation(line: 65, column: 1, scope: !3176)
!3213 = !DILocation(line: 174, column: 19, scope: !189)
!3214 = !DILocation(line: 174, column: 30, scope: !189)
!3215 = !DILocation(line: 174, column: 41, scope: !189)
!3216 = !DILocation(line: 176, column: 14, scope: !189)
!3217 = !DILocation(line: 176, column: 10, scope: !189)
!3218 = !DILocation(line: 178, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !189, file: !188, line: 178, column: 7)
!3220 = !DILocation(line: 178, column: 7, scope: !189)
!3221 = !DILocation(line: 180, column: 13, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !188, line: 180, column: 11)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !188, line: 179, column: 5)
!3224 = !DILocation(line: 180, column: 11, scope: !3223)
!3225 = !DILocation(line: 188, column: 30, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !188, line: 181, column: 9)
!3227 = !DILocation(line: 189, column: 16, scope: !3226)
!3228 = !DILocation(line: 189, column: 13, scope: !3226)
!3229 = !DILocation(line: 190, column: 9, scope: !3226)
!3230 = !DILocation(line: 0, scope: !3226)
!3231 = !DILocation(line: 191, column: 11, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3223, file: !188, line: 191, column: 11)
!3233 = !DILocation(line: 191, column: 11, scope: !3223)
!3234 = !DILocation(line: 206, column: 7, scope: !189)
!3235 = !DILocation(line: 207, column: 25, scope: !189)
!3236 = !DILocation(line: 51, column: 17, scope: !3176, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 207, column: 10, scope: !189)
!3238 = !DILocation(line: 51, column: 27, scope: !3176, inlinedAt: !3237)
!3239 = !DILocation(line: 53, column: 10, scope: !3185, inlinedAt: !3237)
!3240 = !DILocation(line: 192, column: 9, scope: !3232)
!3241 = !DILocation(line: 200, column: 69, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !188, line: 200, column: 11)
!3243 = distinct !DILexicalBlock(scope: !3219, file: !188, line: 195, column: 5)
!3244 = !DILocation(line: 201, column: 11, scope: !3242)
!3245 = !DILocation(line: 200, column: 11, scope: !3243)
!3246 = !DILocation(line: 202, column: 9, scope: !3242)
!3247 = !DILocation(line: 203, column: 14, scope: !3243)
!3248 = !DILocation(line: 203, column: 18, scope: !3243)
!3249 = !DILocation(line: 203, column: 9, scope: !3243)
!3250 = !DILocation(line: 53, column: 8, scope: !3185, inlinedAt: !3237)
!3251 = !DILocation(line: 57, column: 7, scope: !3189, inlinedAt: !3237)
!3252 = !DILocation(line: 58, column: 7, scope: !3189, inlinedAt: !3237)
!3253 = !DILocation(line: 61, column: 7, scope: !3176, inlinedAt: !3237)
!3254 = !DILocation(line: 62, column: 8, scope: !3193, inlinedAt: !3237)
!3255 = !DILocation(line: 62, column: 13, scope: !3193, inlinedAt: !3237)
!3256 = !DILocation(line: 62, column: 10, scope: !3193, inlinedAt: !3237)
!3257 = !DILocation(line: 63, column: 5, scope: !3193, inlinedAt: !3237)
!3258 = !DILocation(line: 0, scope: !3176, inlinedAt: !3237)
!3259 = !DILocation(line: 207, column: 3, scope: !189)
!3260 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !2211, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3261)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3260, file: !188, line: 216, type: !117)
!3263 = !DILocation(line: 216, column: 20, scope: !3260)
!3264 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 218, column: 10, scope: !3260)
!3266 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3265)
!3267 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3265)
!3268 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3265)
!3269 = !DILocation(line: 42, column: 15, scope: !3147, inlinedAt: !3265)
!3270 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3265)
!3271 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3265)
!3272 = !DILocation(line: 218, column: 3, scope: !3260)
!3273 = distinct !DISubprogram(name: "x2realloc", scope: !3137, file: !3137, line: 74, type: !3274, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!8, !8, !192}
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "p", arg: 1, scope: !3273, file: !3137, line: 74, type: !8)
!3278 = !DILocalVariable(name: "pn", arg: 2, scope: !3273, file: !3137, line: 74, type: !192)
!3279 = !DILocation(line: 74, column: 18, scope: !3273)
!3280 = !DILocation(line: 74, column: 29, scope: !3273)
!3281 = !DILocation(line: 174, column: 19, scope: !189, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 76, column: 10, scope: !3273)
!3283 = !DILocation(line: 174, column: 30, scope: !189, inlinedAt: !3282)
!3284 = !DILocation(line: 174, column: 41, scope: !189, inlinedAt: !3282)
!3285 = !DILocation(line: 176, column: 14, scope: !189, inlinedAt: !3282)
!3286 = !DILocation(line: 176, column: 10, scope: !189, inlinedAt: !3282)
!3287 = !DILocation(line: 178, column: 9, scope: !3219, inlinedAt: !3282)
!3288 = !DILocation(line: 178, column: 7, scope: !189, inlinedAt: !3282)
!3289 = !DILocation(line: 180, column: 13, scope: !3222, inlinedAt: !3282)
!3290 = !DILocation(line: 180, column: 11, scope: !3223, inlinedAt: !3282)
!3291 = !DILocation(line: 191, column: 11, scope: !3232, inlinedAt: !3282)
!3292 = !DILocation(line: 191, column: 11, scope: !3223, inlinedAt: !3282)
!3293 = !DILocation(line: 206, column: 7, scope: !189, inlinedAt: !3282)
!3294 = !DILocation(line: 51, column: 17, scope: !3176, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 207, column: 10, scope: !189, inlinedAt: !3282)
!3296 = !DILocation(line: 51, column: 27, scope: !3176, inlinedAt: !3295)
!3297 = !DILocation(line: 53, column: 10, scope: !3185, inlinedAt: !3295)
!3298 = !DILocation(line: 192, column: 9, scope: !3232, inlinedAt: !3282)
!3299 = !DILocation(line: 201, column: 11, scope: !3242, inlinedAt: !3282)
!3300 = !DILocation(line: 200, column: 11, scope: !3243, inlinedAt: !3282)
!3301 = !DILocation(line: 202, column: 9, scope: !3242, inlinedAt: !3282)
!3302 = !DILocation(line: 203, column: 14, scope: !3243, inlinedAt: !3282)
!3303 = !DILocation(line: 203, column: 18, scope: !3243, inlinedAt: !3282)
!3304 = !DILocation(line: 203, column: 9, scope: !3243, inlinedAt: !3282)
!3305 = !DILocation(line: 53, column: 8, scope: !3185, inlinedAt: !3295)
!3306 = !DILocation(line: 57, column: 7, scope: !3189, inlinedAt: !3295)
!3307 = !DILocation(line: 58, column: 7, scope: !3189, inlinedAt: !3295)
!3308 = !DILocation(line: 61, column: 7, scope: !3176, inlinedAt: !3295)
!3309 = !DILocation(line: 62, column: 8, scope: !3193, inlinedAt: !3295)
!3310 = !DILocation(line: 62, column: 13, scope: !3193, inlinedAt: !3295)
!3311 = !DILocation(line: 62, column: 10, scope: !3193, inlinedAt: !3295)
!3312 = !DILocation(line: 63, column: 5, scope: !3193, inlinedAt: !3295)
!3313 = !DILocation(line: 0, scope: !3176, inlinedAt: !3295)
!3314 = !DILocation(line: 76, column: 3, scope: !3273)
!3315 = distinct !DISubprogram(name: "xzalloc", scope: !3137, file: !3137, line: 84, type: !3138, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3316)
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "s", arg: 1, scope: !3315, file: !3137, line: 84, type: !117)
!3318 = !DILocation(line: 84, column: 17, scope: !3315)
!3319 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 86, column: 18, scope: !3315)
!3321 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3320)
!3322 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3320)
!3323 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3320)
!3324 = !DILocation(line: 42, column: 15, scope: !3147, inlinedAt: !3320)
!3325 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3320)
!3326 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3320)
!3327 = !DILocation(line: 86, column: 10, scope: !3315)
!3328 = !DILocation(line: 86, column: 3, scope: !3315)
!3329 = distinct !DISubprogram(name: "xcalloc", scope: !3137, file: !3137, line: 93, type: !3123, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !3137, line: 93, type: !117)
!3332 = !DILocalVariable(name: "s", arg: 2, scope: !3329, file: !3137, line: 93, type: !117)
!3333 = !DILocalVariable(name: "p", scope: !3329, file: !3137, line: 95, type: !8)
!3334 = !DILocation(line: 93, column: 17, scope: !3329)
!3335 = !DILocation(line: 93, column: 27, scope: !3329)
!3336 = !DILocation(line: 100, column: 7, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3329, file: !3137, line: 100, column: 7)
!3338 = !DILocation(line: 101, column: 7, scope: !3337)
!3339 = !DILocation(line: 101, column: 18, scope: !3337)
!3340 = !DILocation(line: 95, column: 9, scope: !3329)
!3341 = !DILocation(line: 101, column: 16, scope: !3337)
!3342 = !DILocation(line: 100, column: 7, scope: !3329)
!3343 = !DILocation(line: 102, column: 5, scope: !3337)
!3344 = !DILocation(line: 103, column: 3, scope: !3329)
!3345 = distinct !DISubprogram(name: "xmemdup", scope: !3137, file: !3137, line: 111, type: !3346, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3350)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!8, !3348, !117}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3345, file: !3137, line: 111, type: !3348)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3345, file: !3137, line: 111, type: !117)
!3353 = !DILocation(line: 111, column: 22, scope: !3345)
!3354 = !DILocation(line: 111, column: 32, scope: !3345)
!3355 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 113, column: 18, scope: !3345)
!3357 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3356)
!3358 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3356)
!3359 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3356)
!3360 = !DILocation(line: 42, column: 15, scope: !3147, inlinedAt: !3356)
!3361 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3356)
!3362 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3356)
!3363 = !DILocation(line: 113, column: 10, scope: !3345)
!3364 = !DILocation(line: 113, column: 3, scope: !3345)
!3365 = distinct !DISubprogram(name: "xstrdup", scope: !3137, file: !3137, line: 119, type: !2416, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3366)
!3366 = !{!3367}
!3367 = !DILocalVariable(name: "string", arg: 1, scope: !3365, file: !3137, line: 119, type: !17)
!3368 = !DILocation(line: 119, column: 22, scope: !3365)
!3369 = !DILocation(line: 121, column: 27, scope: !3365)
!3370 = !DILocation(line: 121, column: 43, scope: !3365)
!3371 = !DILocation(line: 111, column: 22, scope: !3345, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 121, column: 10, scope: !3365)
!3373 = !DILocation(line: 111, column: 32, scope: !3345, inlinedAt: !3372)
!3374 = !DILocation(line: 39, column: 17, scope: !3136, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 113, column: 18, scope: !3345, inlinedAt: !3372)
!3376 = !DILocation(line: 41, column: 13, scope: !3136, inlinedAt: !3375)
!3377 = !DILocation(line: 41, column: 9, scope: !3136, inlinedAt: !3375)
!3378 = !DILocation(line: 42, column: 8, scope: !3147, inlinedAt: !3375)
!3379 = !DILocation(line: 42, column: 15, scope: !3147, inlinedAt: !3375)
!3380 = !DILocation(line: 42, column: 10, scope: !3147, inlinedAt: !3375)
!3381 = !DILocation(line: 43, column: 5, scope: !3147, inlinedAt: !3375)
!3382 = !DILocation(line: 113, column: 10, scope: !3345, inlinedAt: !3372)
!3383 = !DILocation(line: 121, column: 3, scope: !3365)
!3384 = distinct !DISubprogram(name: "xalloc_die", scope: !3385, file: !3385, line: 32, type: !1085, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !201, retainedNodes: !4)
!3385 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3386 = !DILocation(line: 34, column: 10, scope: !3384)
!3387 = !DILocation(line: 34, column: 33, scope: !3384)
!3388 = !DILocation(line: 34, column: 3, scope: !3384)
!3389 = !DILocation(line: 40, column: 3, scope: !3384)
!3390 = distinct !DISubprogram(name: "xgetgroups", scope: !3391, file: !3391, line: 31, type: !609, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3392)
!3391 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "username", arg: 1, scope: !3390, file: !3391, line: 31, type: !17)
!3394 = !DILocalVariable(name: "gid", arg: 2, scope: !3390, file: !3391, line: 31, type: !34)
!3395 = !DILocalVariable(name: "groups", arg: 3, scope: !3390, file: !3391, line: 31, type: !611)
!3396 = !DILocalVariable(name: "result", scope: !3390, file: !3391, line: 33, type: !20)
!3397 = !DILocation(line: 31, column: 25, scope: !3390)
!3398 = !DILocation(line: 31, column: 41, scope: !3390)
!3399 = !DILocation(line: 31, column: 54, scope: !3390)
!3400 = !DILocation(line: 33, column: 16, scope: !3390)
!3401 = !DILocation(line: 33, column: 7, scope: !3390)
!3402 = !DILocation(line: 34, column: 14, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3390, file: !3391, line: 34, column: 7)
!3404 = !DILocation(line: 34, column: 20, scope: !3403)
!3405 = !DILocation(line: 34, column: 23, scope: !3403)
!3406 = !DILocation(line: 34, column: 29, scope: !3403)
!3407 = !DILocation(line: 34, column: 7, scope: !3390)
!3408 = !DILocation(line: 35, column: 5, scope: !3403)
!3409 = !DILocation(line: 36, column: 3, scope: !3390)
!3410 = distinct !DISubprogram(name: "rpl_calloc", scope: !3411, file: !3411, line: 42, type: !3123, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3412)
!3411 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3412 = !{!3413, !3414, !3415, !3416}
!3413 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !3411, line: 42, type: !117)
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !3411, line: 42, type: !117)
!3415 = !DILocalVariable(name: "result", scope: !3410, file: !3411, line: 44, type: !8)
!3416 = !DILocalVariable(name: "bytes", scope: !3417, file: !3411, line: 56, type: !117)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3411, line: 53, column: 5)
!3418 = distinct !DILexicalBlock(scope: !3410, file: !3411, line: 47, column: 7)
!3419 = !DILocation(line: 42, column: 20, scope: !3410)
!3420 = !DILocation(line: 42, column: 30, scope: !3410)
!3421 = !DILocation(line: 47, column: 9, scope: !3418)
!3422 = !DILocation(line: 47, column: 19, scope: !3418)
!3423 = !DILocation(line: 47, column: 14, scope: !3418)
!3424 = !DILocation(line: 56, column: 24, scope: !3417)
!3425 = !DILocation(line: 56, column: 14, scope: !3417)
!3426 = !DILocation(line: 57, column: 17, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3417, file: !3411, line: 57, column: 11)
!3428 = !DILocation(line: 57, column: 21, scope: !3427)
!3429 = !DILocation(line: 57, column: 11, scope: !3417)
!3430 = !DILocation(line: 59, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3427, file: !3411, line: 58, column: 9)
!3432 = !DILocation(line: 59, column: 17, scope: !3431)
!3433 = !DILocation(line: 65, column: 12, scope: !3410)
!3434 = !DILocation(line: 44, column: 9, scope: !3410)
!3435 = !DILocation(line: 72, column: 3, scope: !3410)
!3436 = !DILocation(line: 0, scope: !3431)
!3437 = !DILocation(line: 73, column: 1, scope: !3410)
!3438 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3439, file: !3439, line: 385, type: !3440, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !207, retainedNodes: !3454)
!3439 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!117, !3442, !17, !117, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1375, line: 6, baseType: !3445)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1377, line: 21, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1377, line: 13, size: 64, elements: !3447)
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3446, file: !1377, line: 15, baseType: !20, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3446, file: !1377, line: 20, baseType: !3450, size: 32, offset: 32)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !1377, line: 16, size: 32, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3450, file: !1377, line: 18, baseType: !38, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3450, file: !1377, line: 19, baseType: !1386, size: 32)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3455 = !DILocalVariable(name: "pwc", arg: 1, scope: !3438, file: !3439, line: 385, type: !3442)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !3439, line: 385, type: !17)
!3457 = !DILocalVariable(name: "n", arg: 3, scope: !3438, file: !3439, line: 385, type: !117)
!3458 = !DILocalVariable(name: "ps", arg: 4, scope: !3438, file: !3439, line: 385, type: !3443)
!3459 = !DILocalVariable(name: "ret", scope: !3438, file: !3439, line: 387, type: !117)
!3460 = !DILocalVariable(name: "wc", scope: !3438, file: !3439, line: 388, type: !1391)
!3461 = !DILocalVariable(name: "uc", scope: !3462, file: !3439, line: 449, type: !9)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3439, line: 448, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3438, file: !3439, line: 447, column: 7)
!3464 = !DILocation(line: 385, column: 23, scope: !3438)
!3465 = !DILocation(line: 385, column: 40, scope: !3438)
!3466 = !DILocation(line: 385, column: 50, scope: !3438)
!3467 = !DILocation(line: 385, column: 64, scope: !3438)
!3468 = !DILocation(line: 388, column: 3, scope: !3438)
!3469 = !DILocation(line: 404, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3438, file: !3439, line: 404, column: 7)
!3471 = !DILocation(line: 404, column: 7, scope: !3438)
!3472 = !DILocation(line: 439, column: 9, scope: !3438)
!3473 = !DILocation(line: 387, column: 10, scope: !3438)
!3474 = !DILocation(line: 447, column: 19, scope: !3463)
!3475 = !DILocation(line: 447, column: 31, scope: !3463)
!3476 = !DILocation(line: 447, column: 26, scope: !3463)
!3477 = !DILocation(line: 447, column: 41, scope: !3463)
!3478 = !DILocation(line: 447, column: 7, scope: !3438)
!3479 = !DILocation(line: 449, column: 26, scope: !3462)
!3480 = !DILocation(line: 449, column: 21, scope: !3462)
!3481 = !DILocation(line: 450, column: 14, scope: !3462)
!3482 = !DILocation(line: 450, column: 12, scope: !3462)
!3483 = !DILocation(line: 0, scope: !3462)
!3484 = !DILocation(line: 456, column: 1, scope: !3438)
!3485 = distinct !DISubprogram(name: "close_stream", scope: !3486, file: !3486, line: 56, type: !3487, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !3523)
!3486 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!20, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2933, line: 49, size: 1728, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3491, file: !2933, line: 51, baseType: !20, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3491, file: !2933, line: 54, baseType: !6, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3491, file: !2933, line: 55, baseType: !6, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3491, file: !2933, line: 56, baseType: !6, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3491, file: !2933, line: 57, baseType: !6, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3491, file: !2933, line: 58, baseType: !6, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3491, file: !2933, line: 59, baseType: !6, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3491, file: !2933, line: 60, baseType: !6, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3491, file: !2933, line: 61, baseType: !6, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3491, file: !2933, line: 64, baseType: !6, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3491, file: !2933, line: 65, baseType: !6, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3491, file: !2933, line: 66, baseType: !6, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3491, file: !2933, line: 68, baseType: !2948, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3491, file: !2933, line: 70, baseType: !3507, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3491, file: !2933, line: 72, baseType: !20, size: 32, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3491, file: !2933, line: 73, baseType: !20, size: 32, offset: 928)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3491, file: !2933, line: 74, baseType: !2955, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3491, file: !2933, line: 77, baseType: !116, size: 16, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3491, file: !2933, line: 78, baseType: !2959, size: 8, offset: 1040)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3491, file: !2933, line: 79, baseType: !2961, size: 8, offset: 1048)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3491, file: !2933, line: 81, baseType: !2965, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3491, file: !2933, line: 89, baseType: !2968, size: 64, offset: 1152)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3491, file: !2933, line: 91, baseType: !2970, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3491, file: !2933, line: 92, baseType: !2973, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3491, file: !2933, line: 93, baseType: !3507, size: 64, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3491, file: !2933, line: 94, baseType: !8, size: 64, offset: 1408)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3491, file: !2933, line: 95, baseType: !117, size: 64, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3491, file: !2933, line: 96, baseType: !20, size: 32, offset: 1536)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3491, file: !2933, line: 98, baseType: !2980, size: 160, offset: 1568)
!3523 = !{!3524, !3525, !3527, !3528}
!3524 = !DILocalVariable(name: "stream", arg: 1, scope: !3485, file: !3486, line: 56, type: !3489)
!3525 = !DILocalVariable(name: "some_pending", scope: !3485, file: !3486, line: 58, type: !3526)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3527 = !DILocalVariable(name: "prev_fail", scope: !3485, file: !3486, line: 59, type: !3526)
!3528 = !DILocalVariable(name: "fclose_fail", scope: !3485, file: !3486, line: 60, type: !3526)
!3529 = !DILocation(line: 56, column: 21, scope: !3485)
!3530 = !DILocation(line: 58, column: 30, scope: !3485)
!3531 = !DILocalVariable(name: "__stream", arg: 1, scope: !3532, file: !820, line: 135, type: !3489)
!3532 = distinct !DISubprogram(name: "ferror_unlocked", scope: !820, file: !820, line: 135, type: !3487, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !3533)
!3533 = !{!3531}
!3534 = !DILocation(line: 135, column: 1, scope: !3532, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 59, column: 27, scope: !3485)
!3536 = !DILocation(line: 137, column: 10, scope: !3532, inlinedAt: !3535)
!3537 = !{!828, !780, i64 0}
!3538 = !DILocation(line: 59, column: 43, scope: !3485)
!3539 = !DILocation(line: 60, column: 29, scope: !3485)
!3540 = !DILocation(line: 60, column: 45, scope: !3485)
!3541 = !DILocation(line: 70, column: 17, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3485, file: !3486, line: 70, column: 7)
!3543 = !DILocation(line: 58, column: 50, scope: !3485)
!3544 = !DILocation(line: 70, column: 33, scope: !3542)
!3545 = !DILocation(line: 70, column: 53, scope: !3542)
!3546 = !DILocation(line: 70, column: 59, scope: !3542)
!3547 = !DILocation(line: 70, column: 7, scope: !3485)
!3548 = !DILocation(line: 72, column: 11, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !3486, line: 71, column: 5)
!3550 = !DILocation(line: 73, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3549, file: !3486, line: 72, column: 11)
!3552 = !DILocation(line: 73, column: 15, scope: !3551)
!3553 = !DILocation(line: 0, scope: !3485)
!3554 = !DILocation(line: 78, column: 1, scope: !3485)
!3555 = distinct !DISubprogram(name: "hard_locale", scope: !3556, file: !3556, line: 38, type: !3557, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !212, retainedNodes: !3559)
!3556 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!61, !20}
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "category", arg: 1, scope: !3555, file: !3556, line: 38, type: !20)
!3561 = !DILocalVariable(name: "hard", scope: !3555, file: !3556, line: 40, type: !61)
!3562 = !DILocalVariable(name: "p", scope: !3555, file: !3556, line: 41, type: !17)
!3563 = !DILocation(line: 38, column: 18, scope: !3555)
!3564 = !DILocation(line: 40, column: 8, scope: !3555)
!3565 = !DILocation(line: 41, column: 19, scope: !3555)
!3566 = !DILocation(line: 41, column: 15, scope: !3555)
!3567 = !DILocation(line: 43, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3555, file: !3556, line: 43, column: 7)
!3569 = !DILocation(line: 43, column: 7, scope: !3555)
!3570 = !DILocation(line: 47, column: 15, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3556, line: 47, column: 15)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3556, line: 46, column: 9)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3556, line: 45, column: 11)
!3574 = distinct !DILexicalBlock(scope: !3568, file: !3556, line: 44, column: 5)
!3575 = !DILocation(line: 47, column: 31, scope: !3571)
!3576 = !DILocation(line: 47, column: 36, scope: !3571)
!3577 = !DILocation(line: 47, column: 39, scope: !3571)
!3578 = !DILocation(line: 47, column: 59, scope: !3571)
!3579 = !DILocation(line: 47, column: 15, scope: !3572)
!3580 = !DILocation(line: 48, column: 13, scope: !3571)
!3581 = !DILocation(line: 71, column: 3, scope: !3555)
!3582 = distinct !DISubprogram(name: "locale_charset", scope: !3583, file: !3583, line: 687, type: !3584, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !3586)
!3583 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!17}
!3586 = !{!3587}
!3587 = !DILocalVariable(name: "codeset", scope: !3582, file: !3583, line: 689, type: !17)
!3588 = !DILocation(line: 696, column: 13, scope: !3582)
!3589 = !DILocation(line: 689, column: 15, scope: !3582)
!3590 = !DILocation(line: 754, column: 15, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3582, file: !3583, line: 754, column: 7)
!3592 = !DILocation(line: 754, column: 7, scope: !3582)
!3593 = !DILocation(line: 907, column: 13, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3583, line: 907, column: 13)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3583, line: 897, column: 7)
!3596 = distinct !DILexicalBlock(scope: !3582, file: !3583, line: 856, column: 3)
!3597 = !DILocation(line: 907, column: 24, scope: !3594)
!3598 = !DILocation(line: 907, column: 13, scope: !3595)
!3599 = !DILocation(line: 995, column: 3, scope: !3582)
!3600 = !DILocation(line: 66, column: 25, scope: !608)
!3601 = !DILocation(line: 66, column: 41, scope: !608)
!3602 = !DILocation(line: 66, column: 54, scope: !608)
!3603 = !DILocation(line: 68, column: 3, scope: !608)
!3604 = !DILocation(line: 81, column: 7, scope: !623)
!3605 = !DILocation(line: 81, column: 7, scope: !608)
!3606 = !DILocation(line: 68, column: 7, scope: !608)
!3607 = !DILocation(line: 84, column: 20, scope: !622)
!3608 = !DILocalVariable(name: "g", arg: 1, scope: !3609, file: !607, line: 43, type: !612)
!3609 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !607, file: !607, line: 43, type: !3610, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !603, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!612, !612, !117}
!3612 = !{!3608, !3613}
!3613 = !DILocalVariable(name: "num", arg: 2, scope: !3609, file: !607, line: 43, type: !117)
!3614 = !DILocation(line: 43, column: 26, scope: !3609, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 86, column: 11, scope: !622)
!3616 = !DILocation(line: 43, column: 36, scope: !3609, inlinedAt: !3615)
!3617 = !DILocation(line: 51, column: 10, scope: !3609, inlinedAt: !3615)
!3618 = !DILocation(line: 70, column: 10, scope: !608)
!3619 = !DILocation(line: 87, column: 13, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !622, file: !607, line: 87, column: 11)
!3621 = !DILocation(line: 87, column: 11, scope: !622)
!3622 = !DILocation(line: 93, column: 31, scope: !621)
!3623 = !DILocation(line: 86, column: 9, scope: !622)
!3624 = !DILocation(line: 93, column: 15, scope: !621)
!3625 = !DILocation(line: 96, column: 16, scope: !621)
!3626 = !DILocation(line: 69, column: 7, scope: !608)
!3627 = !DILocation(line: 100, column: 18, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !621, file: !607, line: 100, column: 15)
!3629 = !DILocation(line: 0, scope: !627)
!3630 = !DILocation(line: 100, column: 39, scope: !3628)
!3631 = !DILocation(line: 100, column: 22, scope: !3628)
!3632 = !DILocation(line: 101, column: 26, scope: !3628)
!3633 = !DILocation(line: 101, column: 13, scope: !3628)
!3634 = !DILocation(line: 103, column: 41, scope: !627)
!3635 = !DILocation(line: 43, column: 26, scope: !3609, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 103, column: 20, scope: !627)
!3637 = !DILocation(line: 45, column: 7, scope: !3638, inlinedAt: !3636)
!3638 = distinct !DILexicalBlock(scope: !3609, file: !607, line: 45, column: 7)
!3639 = !DILocation(line: 45, column: 7, scope: !3609, inlinedAt: !3636)
!3640 = !DILocation(line: 47, column: 7, scope: !3641, inlinedAt: !3636)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !607, line: 46, column: 5)
!3642 = !DILocation(line: 47, column: 13, scope: !3641, inlinedAt: !3636)
!3643 = !DILocation(line: 92, column: 18, scope: !621)
!3644 = !DILocation(line: 103, column: 15, scope: !621)
!3645 = !DILocation(line: 43, column: 36, scope: !3609, inlinedAt: !3636)
!3646 = !DILocation(line: 51, column: 26, scope: !3609, inlinedAt: !3636)
!3647 = !DILocation(line: 51, column: 10, scope: !3609, inlinedAt: !3636)
!3648 = !DILocation(line: 103, column: 56, scope: !627)
!3649 = !DILocation(line: 105, column: 33, scope: !626)
!3650 = !DILocation(line: 105, column: 19, scope: !626)
!3651 = !DILocation(line: 106, column: 15, scope: !626)
!3652 = !DILocation(line: 107, column: 21, scope: !626)
!3653 = !DILocation(line: 112, column: 17, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !621, file: !607, line: 112, column: 15)
!3655 = !DILocation(line: 112, column: 15, scope: !621)
!3656 = !DILocation(line: 114, column: 23, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !607, line: 113, column: 13)
!3658 = !DILocation(line: 117, column: 22, scope: !3657)
!3659 = !DILocation(line: 117, column: 15, scope: !3657)
!3660 = !DILocation(line: 126, column: 21, scope: !608)
!3661 = !DILocation(line: 124, column: 16, scope: !608)
!3662 = !DILocation(line: 131, column: 20, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !608, file: !607, line: 131, column: 7)
!3664 = !DILocation(line: 131, column: 7, scope: !608)
!3665 = !DILocation(line: 133, column: 11, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !607, line: 133, column: 11)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !607, line: 132, column: 5)
!3668 = !DILocation(line: 133, column: 17, scope: !3666)
!3669 = !DILocation(line: 133, column: 27, scope: !3666)
!3670 = !DILocation(line: 43, column: 26, scope: !3609, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 133, column: 35, scope: !3666)
!3672 = !DILocation(line: 43, column: 36, scope: !3609, inlinedAt: !3671)
!3673 = !DILocation(line: 51, column: 10, scope: !3609, inlinedAt: !3671)
!3674 = !DILocation(line: 133, column: 33, scope: !3666)
!3675 = !DILocation(line: 133, column: 11, scope: !3667)
!3676 = !DILocation(line: 135, column: 19, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3666, file: !607, line: 134, column: 9)
!3678 = !DILocation(line: 136, column: 14, scope: !3677)
!3679 = !DILocation(line: 137, column: 22, scope: !3677)
!3680 = !DILocation(line: 137, column: 11, scope: !3677)
!3681 = !DILocation(line: 142, column: 20, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !608, file: !607, line: 142, column: 7)
!3683 = !DILocation(line: 142, column: 46, scope: !3682)
!3684 = !DILocation(line: 142, column: 25, scope: !3682)
!3685 = !DILocation(line: 143, column: 17, scope: !3682)
!3686 = !DILocation(line: 43, column: 26, scope: !3609, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 144, column: 7, scope: !608)
!3688 = !DILocation(line: 45, column: 7, scope: !3638, inlinedAt: !3687)
!3689 = !DILocation(line: 45, column: 7, scope: !3609, inlinedAt: !3687)
!3690 = !DILocation(line: 47, column: 7, scope: !3641, inlinedAt: !3687)
!3691 = !DILocation(line: 47, column: 13, scope: !3641, inlinedAt: !3687)
!3692 = !DILocation(line: 145, column: 7, scope: !608)
!3693 = !DILocation(line: 144, column: 31, scope: !608)
!3694 = !DILocation(line: 43, column: 36, scope: !3609, inlinedAt: !3687)
!3695 = !DILocation(line: 51, column: 26, scope: !3609, inlinedAt: !3687)
!3696 = !DILocation(line: 51, column: 10, scope: !3609, inlinedAt: !3687)
!3697 = !DILocation(line: 145, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !608, file: !607, line: 145, column: 7)
!3699 = !DILocation(line: 150, column: 42, scope: !608)
!3700 = !DILocation(line: 150, column: 35, scope: !608)
!3701 = !DILocation(line: 151, column: 35, scope: !608)
!3702 = !DILocation(line: 150, column: 11, scope: !608)
!3703 = !DILocation(line: 153, column: 10, scope: !630)
!3704 = !DILocation(line: 153, column: 7, scope: !608)
!3705 = !DILocation(line: 156, column: 25, scope: !629)
!3706 = !DILocation(line: 156, column: 11, scope: !629)
!3707 = !DILocation(line: 157, column: 7, scope: !629)
!3708 = !DILocation(line: 158, column: 13, scope: !629)
!3709 = !DILocation(line: 162, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !608, file: !607, line: 162, column: 7)
!3711 = !DILocation(line: 164, column: 10, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3710, file: !607, line: 163, column: 5)
!3713 = !DILocation(line: 165, column: 9, scope: !3712)
!3714 = !DILocation(line: 166, column: 5, scope: !3712)
!3715 = !DILocation(line: 0, scope: !608)
!3716 = !DILocation(line: 167, column: 11, scope: !608)
!3717 = !DILocation(line: 185, column: 9, scope: !633)
!3718 = !DILocation(line: 185, column: 7, scope: !608)
!3719 = !DILocation(line: 187, column: 21, scope: !632)
!3720 = !DILocation(line: 187, column: 13, scope: !632)
!3721 = !DILocation(line: 189, column: 29, scope: !632)
!3722 = !DILocation(line: 189, column: 14, scope: !632)
!3723 = !DILocation(line: 188, column: 14, scope: !632)
!3724 = !DILocation(line: 0, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !607, line: 191, column: 7)
!3726 = distinct !DILexicalBlock(scope: !632, file: !607, line: 191, column: 7)
!3727 = !DILocation(line: 191, column: 31, scope: !3725)
!3728 = !DILocation(line: 191, column: 7, scope: !3726)
!3729 = !DILocation(line: 193, column: 15, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !607, line: 193, column: 15)
!3731 = distinct !DILexicalBlock(scope: !3725, file: !607, line: 192, column: 9)
!3732 = !DILocation(line: 193, column: 39, scope: !3730)
!3733 = !DILocation(line: 193, column: 30, scope: !3730)
!3734 = !DILocation(line: 196, column: 14, scope: !3730)
!3735 = !DILocation(line: 196, column: 18, scope: !3730)
!3736 = !DILocation(line: 194, column: 15, scope: !3730)
!3737 = !DILocation(line: 194, column: 13, scope: !3730)
!3738 = !DILocation(line: 0, scope: !3730)
!3739 = !DILocation(line: 0, scope: !3712)
!3740 = !DILocation(line: 193, column: 21, scope: !3730)
!3741 = !DILocation(line: 201, column: 1, scope: !608)
!3742 = distinct !{!3742, !3728, !3743}
!3743 = !DILocation(line: 197, column: 9, scope: !3726)
!3744 = distinct !DISubprogram(name: "rpl_fclose", scope: !3745, file: !3745, line: 58, type: !3746, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !639, retainedNodes: !3782)
!3745 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!20, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !3750)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2933, line: 49, size: 1728, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3750, file: !2933, line: 51, baseType: !20, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3750, file: !2933, line: 54, baseType: !6, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3750, file: !2933, line: 55, baseType: !6, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3750, file: !2933, line: 56, baseType: !6, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3750, file: !2933, line: 57, baseType: !6, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3750, file: !2933, line: 58, baseType: !6, size: 64, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3750, file: !2933, line: 59, baseType: !6, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3750, file: !2933, line: 60, baseType: !6, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3750, file: !2933, line: 61, baseType: !6, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3750, file: !2933, line: 64, baseType: !6, size: 64, offset: 576)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3750, file: !2933, line: 65, baseType: !6, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3750, file: !2933, line: 66, baseType: !6, size: 64, offset: 704)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3750, file: !2933, line: 68, baseType: !2948, size: 64, offset: 768)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3750, file: !2933, line: 70, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3750, file: !2933, line: 72, baseType: !20, size: 32, offset: 896)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3750, file: !2933, line: 73, baseType: !20, size: 32, offset: 928)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3750, file: !2933, line: 74, baseType: !2955, size: 64, offset: 960)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3750, file: !2933, line: 77, baseType: !116, size: 16, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3750, file: !2933, line: 78, baseType: !2959, size: 8, offset: 1040)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3750, file: !2933, line: 79, baseType: !2961, size: 8, offset: 1048)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3750, file: !2933, line: 81, baseType: !2965, size: 64, offset: 1088)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3750, file: !2933, line: 89, baseType: !2968, size: 64, offset: 1152)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3750, file: !2933, line: 91, baseType: !2970, size: 64, offset: 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3750, file: !2933, line: 92, baseType: !2973, size: 64, offset: 1280)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3750, file: !2933, line: 93, baseType: !3766, size: 64, offset: 1344)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3750, file: !2933, line: 94, baseType: !8, size: 64, offset: 1408)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3750, file: !2933, line: 95, baseType: !117, size: 64, offset: 1472)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3750, file: !2933, line: 96, baseType: !20, size: 32, offset: 1536)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3750, file: !2933, line: 98, baseType: !2980, size: 160, offset: 1568)
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DILocalVariable(name: "fp", arg: 1, scope: !3744, file: !3745, line: 58, type: !3748)
!3784 = !DILocalVariable(name: "saved_errno", scope: !3744, file: !3745, line: 60, type: !20)
!3785 = !DILocalVariable(name: "fd", scope: !3744, file: !3745, line: 61, type: !20)
!3786 = !DILocalVariable(name: "result", scope: !3744, file: !3745, line: 62, type: !20)
!3787 = !DILocation(line: 58, column: 19, scope: !3744)
!3788 = !DILocation(line: 60, column: 7, scope: !3744)
!3789 = !DILocation(line: 62, column: 7, scope: !3744)
!3790 = !DILocation(line: 65, column: 8, scope: !3744)
!3791 = !DILocation(line: 61, column: 7, scope: !3744)
!3792 = !DILocation(line: 66, column: 10, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3744, file: !3745, line: 66, column: 7)
!3794 = !DILocation(line: 66, column: 7, scope: !3744)
!3795 = !DILocation(line: 67, column: 12, scope: !3793)
!3796 = !DILocation(line: 67, column: 5, scope: !3793)
!3797 = !DILocation(line: 72, column: 9, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3744, file: !3745, line: 72, column: 7)
!3799 = !DILocation(line: 72, column: 23, scope: !3798)
!3800 = !DILocation(line: 72, column: 33, scope: !3798)
!3801 = !DILocation(line: 72, column: 26, scope: !3798)
!3802 = !DILocation(line: 72, column: 59, scope: !3798)
!3803 = !DILocation(line: 73, column: 7, scope: !3798)
!3804 = !DILocation(line: 73, column: 10, scope: !3798)
!3805 = !DILocation(line: 72, column: 7, scope: !3744)
!3806 = !DILocation(line: 100, column: 12, scope: !3744)
!3807 = !DILocation(line: 105, column: 7, scope: !3744)
!3808 = !DILocation(line: 74, column: 19, scope: !3798)
!3809 = !DILocation(line: 105, column: 19, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3744, file: !3745, line: 105, column: 7)
!3811 = !DILocation(line: 107, column: 13, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3810, file: !3745, line: 106, column: 5)
!3813 = !DILocation(line: 109, column: 5, scope: !3812)
!3814 = !DILocation(line: 0, scope: !3744)
!3815 = !DILocation(line: 112, column: 1, scope: !3744)
!3816 = distinct !DISubprogram(name: "rpl_fflush", scope: !3817, file: !3817, line: 129, type: !3818, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !641, retainedNodes: !3854)
!3817 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!20, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2933, line: 49, size: 1728, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3822, file: !2933, line: 51, baseType: !20, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3822, file: !2933, line: 54, baseType: !6, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3822, file: !2933, line: 55, baseType: !6, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3822, file: !2933, line: 56, baseType: !6, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3822, file: !2933, line: 57, baseType: !6, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3822, file: !2933, line: 58, baseType: !6, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3822, file: !2933, line: 59, baseType: !6, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3822, file: !2933, line: 60, baseType: !6, size: 64, offset: 448)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3822, file: !2933, line: 61, baseType: !6, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3822, file: !2933, line: 64, baseType: !6, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3822, file: !2933, line: 65, baseType: !6, size: 64, offset: 640)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3822, file: !2933, line: 66, baseType: !6, size: 64, offset: 704)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3822, file: !2933, line: 68, baseType: !2948, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3822, file: !2933, line: 70, baseType: !3838, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3822, file: !2933, line: 72, baseType: !20, size: 32, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3822, file: !2933, line: 73, baseType: !20, size: 32, offset: 928)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3822, file: !2933, line: 74, baseType: !2955, size: 64, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3822, file: !2933, line: 77, baseType: !116, size: 16, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3822, file: !2933, line: 78, baseType: !2959, size: 8, offset: 1040)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3822, file: !2933, line: 79, baseType: !2961, size: 8, offset: 1048)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3822, file: !2933, line: 81, baseType: !2965, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3822, file: !2933, line: 89, baseType: !2968, size: 64, offset: 1152)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3822, file: !2933, line: 91, baseType: !2970, size: 64, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3822, file: !2933, line: 92, baseType: !2973, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3822, file: !2933, line: 93, baseType: !3838, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3822, file: !2933, line: 94, baseType: !8, size: 64, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3822, file: !2933, line: 95, baseType: !117, size: 64, offset: 1472)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3822, file: !2933, line: 96, baseType: !20, size: 32, offset: 1536)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3822, file: !2933, line: 98, baseType: !2980, size: 160, offset: 1568)
!3854 = !{!3855}
!3855 = !DILocalVariable(name: "stream", arg: 1, scope: !3816, file: !3817, line: 129, type: !3820)
!3856 = !DILocation(line: 129, column: 19, scope: !3816)
!3857 = !DILocation(line: 150, column: 14, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3816, file: !3817, line: 150, column: 7)
!3859 = !DILocation(line: 150, column: 22, scope: !3858)
!3860 = !DILocation(line: 150, column: 27, scope: !3858)
!3861 = !DILocation(line: 150, column: 7, scope: !3816)
!3862 = !DILocation(line: 151, column: 12, scope: !3858)
!3863 = !DILocation(line: 151, column: 5, scope: !3858)
!3864 = !DILocalVariable(name: "fp", arg: 1, scope: !3865, file: !3817, line: 41, type: !3820)
!3865 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3817, file: !3817, line: 41, type: !3866, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !641, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3820}
!3868 = !{!3864}
!3869 = !DILocation(line: 41, column: 48, scope: !3865, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 156, column: 3, scope: !3816)
!3871 = !DILocation(line: 43, column: 11, scope: !3872, inlinedAt: !3870)
!3872 = distinct !DILexicalBlock(scope: !3865, file: !3817, line: 43, column: 7)
!3873 = !DILocation(line: 43, column: 18, scope: !3872, inlinedAt: !3870)
!3874 = !DILocation(line: 43, column: 7, scope: !3865, inlinedAt: !3870)
!3875 = !DILocation(line: 45, column: 5, scope: !3872, inlinedAt: !3870)
!3876 = !DILocation(line: 158, column: 10, scope: !3816)
!3877 = !DILocation(line: 158, column: 3, scope: !3816)
!3878 = !DILocation(line: 0, scope: !3816)
!3879 = !DILocation(line: 232, column: 1, scope: !3816)
!3880 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3881, file: !3881, line: 28, type: !3882, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !643, retainedNodes: !3919)
!3881 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!20, !3884, !3918, !20}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2933, line: 49, size: 1728, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3886, file: !2933, line: 51, baseType: !20, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3886, file: !2933, line: 54, baseType: !6, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3886, file: !2933, line: 55, baseType: !6, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3886, file: !2933, line: 56, baseType: !6, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3886, file: !2933, line: 57, baseType: !6, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3886, file: !2933, line: 58, baseType: !6, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3886, file: !2933, line: 59, baseType: !6, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3886, file: !2933, line: 60, baseType: !6, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3886, file: !2933, line: 61, baseType: !6, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3886, file: !2933, line: 64, baseType: !6, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3886, file: !2933, line: 65, baseType: !6, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3886, file: !2933, line: 66, baseType: !6, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3886, file: !2933, line: 68, baseType: !2948, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3886, file: !2933, line: 70, baseType: !3902, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3886, file: !2933, line: 72, baseType: !20, size: 32, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3886, file: !2933, line: 73, baseType: !20, size: 32, offset: 928)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3886, file: !2933, line: 74, baseType: !2955, size: 64, offset: 960)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3886, file: !2933, line: 77, baseType: !116, size: 16, offset: 1024)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3886, file: !2933, line: 78, baseType: !2959, size: 8, offset: 1040)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3886, file: !2933, line: 79, baseType: !2961, size: 8, offset: 1048)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3886, file: !2933, line: 81, baseType: !2965, size: 64, offset: 1088)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3886, file: !2933, line: 89, baseType: !2968, size: 64, offset: 1152)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3886, file: !2933, line: 91, baseType: !2970, size: 64, offset: 1216)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3886, file: !2933, line: 92, baseType: !2973, size: 64, offset: 1280)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3886, file: !2933, line: 93, baseType: !3902, size: 64, offset: 1344)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3886, file: !2933, line: 94, baseType: !8, size: 64, offset: 1408)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3886, file: !2933, line: 95, baseType: !117, size: 64, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3886, file: !2933, line: 96, baseType: !20, size: 32, offset: 1536)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3886, file: !2933, line: 98, baseType: !2980, size: 160, offset: 1568)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3102, line: 63, baseType: !2955)
!3919 = !{!3920, !3921, !3922, !3923}
!3920 = !DILocalVariable(name: "fp", arg: 1, scope: !3880, file: !3881, line: 28, type: !3884)
!3921 = !DILocalVariable(name: "offset", arg: 2, scope: !3880, file: !3881, line: 28, type: !3918)
!3922 = !DILocalVariable(name: "whence", arg: 3, scope: !3880, file: !3881, line: 28, type: !20)
!3923 = !DILocalVariable(name: "pos", scope: !3924, file: !3881, line: 117, type: !3918)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3881, line: 113, column: 5)
!3925 = distinct !DILexicalBlock(scope: !3880, file: !3881, line: 52, column: 7)
!3926 = !DILocation(line: 28, column: 15, scope: !3880)
!3927 = !DILocation(line: 28, column: 25, scope: !3880)
!3928 = !DILocation(line: 28, column: 37, scope: !3880)
!3929 = !DILocation(line: 52, column: 11, scope: !3925)
!3930 = !{!828, !685, i64 16}
!3931 = !DILocation(line: 52, column: 31, scope: !3925)
!3932 = !{!828, !685, i64 8}
!3933 = !DILocation(line: 52, column: 24, scope: !3925)
!3934 = !DILocation(line: 53, column: 7, scope: !3925)
!3935 = !DILocation(line: 53, column: 14, scope: !3925)
!3936 = !DILocation(line: 53, column: 35, scope: !3925)
!3937 = !{!828, !685, i64 32}
!3938 = !DILocation(line: 53, column: 28, scope: !3925)
!3939 = !DILocation(line: 54, column: 7, scope: !3925)
!3940 = !DILocation(line: 54, column: 14, scope: !3925)
!3941 = !{!828, !685, i64 72}
!3942 = !DILocation(line: 54, column: 28, scope: !3925)
!3943 = !DILocation(line: 52, column: 7, scope: !3880)
!3944 = !DILocation(line: 117, column: 26, scope: !3924)
!3945 = !DILocation(line: 117, column: 19, scope: !3924)
!3946 = !DILocation(line: 117, column: 13, scope: !3924)
!3947 = !DILocation(line: 118, column: 15, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3924, file: !3881, line: 118, column: 11)
!3949 = !DILocation(line: 118, column: 11, scope: !3924)
!3950 = !DILocation(line: 129, column: 11, scope: !3924)
!3951 = !DILocation(line: 129, column: 18, scope: !3924)
!3952 = !DILocation(line: 130, column: 11, scope: !3924)
!3953 = !DILocation(line: 130, column: 19, scope: !3924)
!3954 = !{!828, !829, i64 144}
!3955 = !DILocation(line: 161, column: 7, scope: !3924)
!3956 = !DILocation(line: 163, column: 10, scope: !3880)
!3957 = !DILocation(line: 163, column: 3, scope: !3880)
!3958 = !DILocation(line: 0, scope: !3880)
!3959 = !DILocation(line: 164, column: 1, scope: !3880)
