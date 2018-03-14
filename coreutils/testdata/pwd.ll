; ModuleID = 'coreutils-8.27/src/pwd.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"  -L, --logical   use PWD from environment, even if it contains symlinks\0A  -P, --physical  avoid all symlinks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !65
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !71
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !76
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !80
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !87
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !94
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !122
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !129
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !142
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !149
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !156
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !144
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !158
@.str.75 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
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
@.str.18.96 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !164
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !173
@.str.3.124 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.125 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.126 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.128 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !574 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !578, metadata !579), !dbg !580
  %2 = icmp eq i32 %0, 0, !dbg !581
  br i1 %2, label %8, label %3, !dbg !583

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !584, !tbaa !586
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !584
  %6 = load i8*, i8** @program_name, align 8, !dbg !584, !tbaa !586
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !584
  br label %44, !dbg !584

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !590
  %10 = load i8*, i8** @program_name, align 8, !dbg !590, !tbaa !586
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !590
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !592
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !586
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !592
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !593
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !593, !tbaa !586
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !593
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !594
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !594, !tbaa !586
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !594
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !595
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !595, !tbaa !586
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !595
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !596
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !596, !tbaa !586
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !596
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !597
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !597
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !40, metadata !579) #11, !dbg !598
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !40, metadata !579) #11, !dbg !598
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !600
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !600
  %31 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !601
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !48, metadata !579) #11, !dbg !602
  %32 = icmp eq i8* %31, null, !dbg !603
  br i1 %32, label %39, label %33, !dbg !605

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !606
  %35 = icmp eq i32 %34, 0, !dbg !606
  br i1 %35, label %39, label %36, !dbg !607

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !608
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !608
  br label %39, !dbg !610

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !611
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !611
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !612
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !612
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #15, !dbg !613
  unreachable, !dbg !613
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !614 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !619, metadata !579), !dbg !634
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !620, metadata !579), !dbg !635
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !636
  %10 = icmp ne i8* %9, null, !dbg !637
  %11 = zext i1 %10 to i8, !dbg !638
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !622, metadata !579), !dbg !638
  %12 = load i8*, i8** %1, align 8, !dbg !639, !tbaa !586
  tail call void @set_program_name(i8* %12) #11, !dbg !640
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !641
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !642
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !643
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !644
  br label %17, !dbg !645

; <label>:17:                                     ; preds = %21, %2
  %18 = phi i8 [ %11, %2 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !622, metadata !579), !dbg !638
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !623, metadata !579), !dbg !647
  switch i32 %19, label %27 [
    i32 -1, label %28
    i32 76, label %21
    i32 80, label %20
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !648

; <label>:20:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !622, metadata !579), !dbg !638
  br label %21, !dbg !649

; <label>:21:                                     ; preds = %20, %17
  %22 = phi i8 [ 0, %20 ], [ 1, %17 ]
  br label %17, !dbg !638, !llvm.loop !651

; <label>:23:                                     ; preds = %17
  tail call void @usage(i32 0) #16, !dbg !653
  unreachable, !dbg !653

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !586
  %26 = load i8*, i8** @Version, align 8, !dbg !654, !tbaa !586
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #11, !dbg !654
  tail call void @exit(i32 0) #15, !dbg !654
  unreachable, !dbg !654

; <label>:27:                                     ; preds = %17
  tail call void @usage(i32 1) #16, !dbg !655
  unreachable, !dbg !655

; <label>:28:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !622, metadata !579), !dbg !638
  %29 = load i32, i32* @optind, align 4, !dbg !656, !tbaa !658
  %30 = icmp slt i32 %29, %0, !dbg !660
  br i1 %30, label %31, label %33, !dbg !661

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !662
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #11, !dbg !663
  br label %33, !dbg !663

; <label>:33:                                     ; preds = %31, %28
  %34 = icmp eq i8 %18, 0, !dbg !664
  br i1 %34, label %79, label %35, !dbg !666

; <label>:35:                                     ; preds = %33
  %36 = bitcast %struct.stat* %7 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %36) #11, !dbg !667
  %37 = bitcast %struct.stat* %8 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %37) #11, !dbg !717
  %38 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !718
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !713, metadata !579) #11, !dbg !719
  %39 = icmp eq i8* %38, null, !dbg !720
  br i1 %39, label %76, label %40, !dbg !722

; <label>:40:                                     ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !723, !tbaa !724
  %42 = icmp eq i8 %41, 47, !dbg !725
  br i1 %42, label %43, label %76, !dbg !726

; <label>:43:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !714, metadata !579) #11, !dbg !727
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !714, metadata !579) #11, !dbg !727
  %44 = tail call i8* @strstr(i8* nonnull %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #14, !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !714, metadata !579) #11, !dbg !727
  %45 = icmp eq i8* %44, null, !dbg !729
  br i1 %45, label %58, label %46, !dbg !729

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !730

; <label>:47:                                     ; preds = %46, %54
  %48 = phi i8* [ %56, %54 ], [ %44, %46 ]
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !730
  %50 = load i8, i8* %49, align 1, !dbg !730, !tbaa !724
  switch i8 %50, label %54 [
    i8 0, label %76
    i8 47, label %76
    i8 46, label %51
  ], !dbg !733

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %48, i64 3, !dbg !734
  %53 = load i8, i8* %52, align 1, !dbg !734, !tbaa !724
  switch i8 %53, label %54 [
    i8 0, label %76
    i8 47, label %76
  ], !dbg !735

; <label>:54:                                     ; preds = %51, %47
  %55 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !736
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !714, metadata !579) #11, !dbg !727
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !714, metadata !579) #11, !dbg !727
  %56 = tail call i8* @strstr(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #14, !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !714, metadata !579) #11, !dbg !727
  %57 = icmp eq i8* %56, null, !dbg !729
  br i1 %57, label %58, label %47, !dbg !729, !llvm.loop !737

; <label>:58:                                     ; preds = %54, %43
  tail call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !672, metadata !579) #11, !dbg !740
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !741, metadata !579) #11, !dbg !749
  tail call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !748, metadata !579) #11, !dbg !749
  %59 = call i32 @__xstat(i32 1, i8* nonnull %38, %struct.stat* nonnull %7) #11, !dbg !752
  %60 = icmp eq i32 %59, 0, !dbg !753
  br i1 %60, label %61, label %76, !dbg !754

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !712, metadata !579) #11, !dbg !755
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !741, metadata !579) #11, !dbg !756
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !748, metadata !579) #11, !dbg !756
  %62 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %8) #11, !dbg !758
  %63 = icmp eq i32 %62, 0, !dbg !759
  br i1 %63, label %64, label %76, !dbg !760

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !761
  %66 = load i64, i64* %65, align 8, !dbg !761, !tbaa !762
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !761
  %68 = load i64, i64* %67, align 8, !dbg !761, !tbaa !762
  %69 = icmp eq i64 %66, %68, !dbg !761
  br i1 %69, label %70, label %76, !dbg !761

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !761
  %72 = load i64, i64* %71, align 8, !dbg !761, !tbaa !766
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !761
  %74 = load i64, i64* %73, align 8, !dbg !761, !tbaa !766
  %75 = icmp eq i64 %72, %74, !dbg !761
  br i1 %75, label %77, label %76, !dbg !767

; <label>:76:                                     ; preds = %51, %51, %47, %47, %40, %35, %70, %64, %61, %58
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #11, !dbg !768
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #11, !dbg !768
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !621, metadata !579), !dbg !769
  br label %79, !dbg !770

; <label>:77:                                     ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #11, !dbg !768
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #11, !dbg !768
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !621, metadata !579), !dbg !769
  %78 = call i32 @puts(i8* nonnull %38), !dbg !771
  br label %300, !dbg !774

; <label>:79:                                     ; preds = %76, %33
  %80 = call i8* @xgetcwd() #11, !dbg !775
  call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !621, metadata !579), !dbg !769
  %81 = icmp eq i8* %80, null, !dbg !776
  br i1 %81, label %84, label %82, !dbg !777

; <label>:82:                                     ; preds = %79
  %83 = call i32 @puts(i8* nonnull %80), !dbg !778
  call void @free(i8* nonnull %80) #11, !dbg !780
  br label %300, !dbg !781

; <label>:84:                                     ; preds = %79
  %85 = call noalias i8* @xmalloc(i64 24) #11, !dbg !782
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !787, metadata !579) #11, !dbg !789
  %86 = getelementptr inbounds i8, i8* %85, i64 8, !dbg !790
  %87 = bitcast i8* %86 to i64*, !dbg !790
  store i64 8192, i64* %87, align 8, !dbg !791, !tbaa !792
  %88 = call noalias i8* @xmalloc(i64 8192) #11, !dbg !794
  %89 = bitcast i8* %85 to i8**, !dbg !795
  store i8* %88, i8** %89, align 8, !dbg !796, !tbaa !797
  %90 = getelementptr inbounds i8, i8* %88, i64 8191, !dbg !798
  %91 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !799
  %92 = bitcast i8* %91 to i8**, !dbg !799
  store i8* %90, i8** %92, align 8, !dbg !800, !tbaa !801
  store i8 0, i8* %90, align 1, !dbg !802, !tbaa !724
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !625, metadata !579), !dbg !803
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !804, metadata !579) #11, !dbg !822
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !809, metadata !579) #11, !dbg !824
  %93 = bitcast %struct.timespec* %5 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %93) #11, !dbg !825
  call void @llvm.dbg.value(metadata %struct.timespec* %5, i64 0, metadata !810, metadata !579) #11, !dbg !826
  %94 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull %5) #11, !dbg !827
  call void @llvm.dbg.value(metadata %struct.timespec* %94, i64 0, metadata !819, metadata !579) #11, !dbg !828
  %95 = bitcast %struct.stat* %6 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %95) #11, !dbg !829
  %96 = icmp eq %struct.timespec* %94, null, !dbg !830
  %97 = ptrtoint i8* %90 to i64, !dbg !832
  br i1 %96, label %98, label %103, !dbg !832

; <label>:98:                                     ; preds = %84
  %99 = tail call i32* @__errno_location() #17, !dbg !833
  %100 = load i32, i32* %99, align 4, !dbg !833, !tbaa !658
  %101 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !833
  %102 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !833
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* %101, i8* %102) #11, !dbg !833
  unreachable, !dbg !833

; <label>:103:                                    ; preds = %84
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !821, metadata !579) #11, !dbg !834
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !741, metadata !579) #11, !dbg !835
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !748, metadata !579) #11, !dbg !835
  %104 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %6) #11, !dbg !838
  %105 = icmp slt i32 %104, 0, !dbg !839
  br i1 %105, label %106, label %111, !dbg !840

; <label>:106:                                    ; preds = %103
  %107 = tail call i32* @__errno_location() #17, !dbg !841
  %108 = load i32, i32* %107, align 4, !dbg !841, !tbaa !658
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !841
  %110 = call i8* @quotearg_style(i32 4, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !841
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %108, i8* %109, i8* %110) #11, !dbg !841
  unreachable, !dbg !841

; <label>:111:                                    ; preds = %103
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 0
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 1
  %116 = bitcast %struct.stat* %3 to i8*
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %118 = bitcast %struct.stat* %4 to i8*
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %121 = bitcast i8* %85 to i64*
  br label %122, !dbg !842

; <label>:122:                                    ; preds = %272, %111
  %123 = phi i8* [ %90, %111 ], [ %256, %272 ]
  %124 = phi i64 [ %97, %111 ], [ %257, %272 ]
  %125 = phi i64 [ 1, %111 ], [ %134, %272 ]
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !809, metadata !579) #11, !dbg !824
  %126 = load i64, i64* %112, align 8, !dbg !843, !tbaa !762
  %127 = load i64, i64* %113, align 8, !dbg !843, !tbaa !846
  %128 = icmp eq i64 %126, %127, !dbg !843
  br i1 %128, label %129, label %133, !dbg !843

; <label>:129:                                    ; preds = %122
  %130 = load i64, i64* %114, align 8, !dbg !843, !tbaa !766
  %131 = load i64, i64* %115, align 8, !dbg !843, !tbaa !848
  %132 = icmp eq i64 %130, %131, !dbg !843
  br i1 %132, label %273, label %133, !dbg !849

; <label>:133:                                    ; preds = %129, %122
  %134 = add i64 %125, 1, !dbg !850
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !809, metadata !579) #11, !dbg !824
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !821, metadata !579) #11, !dbg !834
  call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !851, metadata !579) #11, !dbg !886
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !856, metadata !579) #11, !dbg !888
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !857, metadata !579) #11, !dbg !889
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %116) #11, !dbg !890
  %135 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !891
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  %136 = icmp eq %struct.__dirstream* %135, null, !dbg !893
  br i1 %136, label %137, label %143, !dbg !895

; <label>:137:                                    ; preds = %133
  %138 = tail call i32* @__errno_location() #17, !dbg !896
  %139 = load i32, i32* %138, align 4, !dbg !896, !tbaa !658
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !896
  %141 = call fastcc i8* @nth_parent(i64 %125) #11, !dbg !896
  %142 = call i8* @quote(i8* %141) #11, !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* %140, i8* %142) #11, !dbg !896
  unreachable, !dbg !896

; <label>:143:                                    ; preds = %133
  %144 = call i32 @dirfd(%struct.__dirstream* nonnull %135) #11, !dbg !897
  call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !863, metadata !579) #11, !dbg !898
  %145 = icmp sgt i32 %144, -1, !dbg !899
  br i1 %145, label %146, label %148, !dbg !901

; <label>:146:                                    ; preds = %143
  %147 = call i32 @fchdir(i32 %144) #11, !dbg !902
  br label %150, !dbg !901

; <label>:148:                                    ; preds = %143
  %149 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !903
  br label %150, !dbg !901

; <label>:150:                                    ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ], !dbg !901
  %152 = icmp slt i32 %151, 0, !dbg !904
  br i1 %152, label %153, label %159, !dbg !905

; <label>:153:                                    ; preds = %150
  %154 = tail call i32* @__errno_location() #17, !dbg !906
  %155 = load i32, i32* %154, align 4, !dbg !906, !tbaa !658
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !906
  %157 = call fastcc i8* @nth_parent(i64 %125) #11, !dbg !906
  %158 = call i8* @quote(i8* %157) #11, !dbg !906
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %155, i8* %156, i8* %158) #11, !dbg !906
  unreachable, !dbg !906

; <label>:159:                                    ; preds = %150
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !864, metadata !579) #11, !dbg !907
  br i1 %145, label %160, label %162, !dbg !908

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !910, metadata !579) #11, !dbg !916
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !915, metadata !579) #11, !dbg !916
  %161 = call i32 @__fxstat(i32 1, i32 %144, %struct.stat* nonnull %3) #11, !dbg !918
  br label %164, !dbg !908

; <label>:162:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 0, metadata !741, metadata !579) #11, !dbg !919
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !748, metadata !579) #11, !dbg !919
  %163 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %3) #11, !dbg !921
  br label %164, !dbg !908

; <label>:164:                                    ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ], !dbg !908
  %166 = icmp slt i32 %165, 0, !dbg !922
  br i1 %166, label %167, label %173, !dbg !923

; <label>:167:                                    ; preds = %164
  %168 = tail call i32* @__errno_location() #17, !dbg !924
  %169 = load i32, i32* %168, align 4, !dbg !924, !tbaa !658
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !924
  %171 = call fastcc i8* @nth_parent(i64 %125) #11, !dbg !924
  %172 = call i8* @quote(i8* %171) #11, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %169, i8* %170, i8* %172) #11, !dbg !924
  unreachable, !dbg !924

; <label>:173:                                    ; preds = %164
  %174 = load i64, i64* %117, align 8, !dbg !925, !tbaa !766
  %175 = load i64, i64* %114, align 8, !dbg !926, !tbaa !766
  %176 = icmp ne i64 %174, %175, !dbg !927
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %118) #11, !dbg !929
  %177 = tail call i32* @__errno_location() #17, !dbg !930
  store i32 0, i32* %177, align 4, !dbg !931, !tbaa !658
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !932, metadata !579) #11, !dbg !939
  %178 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %135) #11, !dbg !941
  call void @llvm.dbg.value(metadata %struct.dirent* %178, i64 0, metadata !937, metadata !579) #11, !dbg !942
  %179 = icmp eq %struct.dirent* %178, null, !dbg !943
  br i1 %179, label %198, label %180, !dbg !945

; <label>:180:                                    ; preds = %173
  br label %181, !dbg !946

; <label>:181:                                    ; preds = %196, %180
  %182 = phi %struct.dirent* [ %178, %180 ], [ %197, %196 ]
  %183 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i64 0, i32 4, i64 0, !dbg !946
  call void @llvm.dbg.value(metadata i8* %183, i64 0, metadata !947, metadata !579) #11, !dbg !955
  %184 = load i8, i8* %183, align 1, !dbg !957, !tbaa !724
  %185 = icmp eq i8 %184, 46, !dbg !958
  br i1 %185, label %186, label %203, !dbg !959

; <label>:186:                                    ; preds = %181
  %187 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i64 0, i32 4, i64 1, !dbg !960
  %188 = load i8, i8* %187, align 1, !dbg !960, !tbaa !724
  %189 = icmp eq i8 %188, 46, !dbg !961
  %190 = select i1 %189, i64 2, i64 1, !dbg !962
  %191 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i64 0, i32 4, i64 %190, !dbg !962
  %192 = load i8, i8* %191, align 1, !dbg !962, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %192, i64 0, metadata !952, metadata !579) #11, !dbg !963
  switch i8 %192, label %203 [
    i8 47, label %193
    i8 0, label %193
  ], !dbg !964

; <label>:193:                                    ; preds = %186, %186
  %194 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %135) #11, !dbg !941
  call void @llvm.dbg.value(metadata %struct.dirent* %194, i64 0, metadata !937, metadata !579) #11, !dbg !942
  %195 = icmp eq %struct.dirent* %194, null, !dbg !943
  br i1 %195, label %198, label %196, !dbg !945

; <label>:196:                                    ; preds = %193, %252
  %197 = phi %struct.dirent* [ %194, %193 ], [ %253, %252 ]
  br label %181, !dbg !946, !llvm.loop !965

; <label>:198:                                    ; preds = %252, %193, %173
  call void @llvm.dbg.value(metadata %struct.dirent* %182, i64 0, metadata !867, metadata !579) #11, !dbg !968
  %199 = load i32, i32* %177, align 4, !dbg !969, !tbaa !658
  %200 = icmp eq i32 %199, 0, !dbg !969
  br i1 %200, label %255, label %201, !dbg !970

; <label>:201:                                    ; preds = %198
  call void @llvm.dbg.value(metadata i32 %199, i64 0, metadata !881, metadata !579) #11, !dbg !971
  %202 = call i32 @closedir(%struct.__dirstream* nonnull %135) #11, !dbg !972
  store i32 %199, i32* %177, align 4, !dbg !973, !tbaa !658
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %118) #11, !dbg !974
  br label %261, !dbg !975

; <label>:203:                                    ; preds = %186, %181
  call void @llvm.dbg.value(metadata %struct.dirent* %182, i64 0, metadata !867, metadata !579) #11, !dbg !968
  %204 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i64 0, i32 0, !dbg !977
  %205 = load i64, i64* %204, align 8, !dbg !977, !tbaa !978
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !880, metadata !579) #11, !dbg !981
  %206 = icmp eq i64 %205, 0, !dbg !982
  %207 = or i1 %176, %206, !dbg !984
  br i1 %207, label %208, label %213, !dbg !984

; <label>:208:                                    ; preds = %203
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !879, metadata !579) #11, !dbg !985
  call void @llvm.dbg.value(metadata i8* %183, i64 0, metadata !986, metadata !579) #11, !dbg !990
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !989, metadata !579) #11, !dbg !990
  %209 = call i32 @__lxstat(i32 1, i8* nonnull %183, %struct.stat* nonnull %4) #11, !dbg !994
  %210 = icmp slt i32 %209, 0, !dbg !995
  br i1 %210, label %250, label %211, !dbg !996, !llvm.loop !965

; <label>:211:                                    ; preds = %208
  %212 = load i64, i64* %119, align 8, !dbg !997, !tbaa !762
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !880, metadata !579) #11, !dbg !981
  br label %213, !dbg !998

; <label>:213:                                    ; preds = %211, %203
  %214 = phi i64 [ %212, %211 ], [ %205, %203 ]
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !880, metadata !579) #11, !dbg !981
  %215 = load i64, i64* %112, align 8, !dbg !999, !tbaa !762
  %216 = icmp eq i64 %214, %215, !dbg !1001
  br i1 %216, label %217, label %250, !dbg !1002, !llvm.loop !965

; <label>:217:                                    ; preds = %213
  br i1 %176, label %218, label %222, !dbg !1003

; <label>:218:                                    ; preds = %217
  %219 = load i64, i64* %120, align 8, !dbg !1005, !tbaa !766
  %220 = load i64, i64* %114, align 8, !dbg !1006, !tbaa !766
  %221 = icmp eq i64 %219, %220, !dbg !1007
  br i1 %221, label %222, label %251, !dbg !1008

; <label>:222:                                    ; preds = %218, %217
  %223 = call i64 @strlen(i8* nonnull %183) #14, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1011, metadata !579) #11, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %183, i64 0, metadata !1016, metadata !579) #11, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !1017, metadata !579) #11, !dbg !1027
  %224 = load i64, i64* %121, align 8, !dbg !1028, !tbaa !797
  %225 = sub i64 %124, %224, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1018, metadata !579) #11, !dbg !1030
  %226 = add i64 %223, 1, !dbg !1031
  %227 = icmp ult i64 %225, %226, !dbg !1032
  %228 = inttoptr i64 %124 to i8*, !dbg !1033
  %229 = inttoptr i64 %224 to i8*, !dbg !1033
  br i1 %227, label %230, label %243, !dbg !1033

; <label>:230:                                    ; preds = %222
  %231 = load i64, i64* %87, align 8, !dbg !1034, !tbaa !792
  %232 = add i64 %231, %226, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !1019, metadata !579) #11, !dbg !1036
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1037, metadata !579) #11, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !1042, metadata !579) #11, !dbg !1045
  %233 = icmp ugt i64 %232, 4611686018427387903, !dbg !1046
  br i1 %233, label %234, label %235, !dbg !1048

; <label>:234:                                    ; preds = %230
  call void @xalloc_die() #15, !dbg !1049
  unreachable, !dbg !1049

; <label>:235:                                    ; preds = %230
  %236 = shl i64 %232, 1, !dbg !1050
  %237 = call noalias i8* @xmalloc(i64 %236) #11, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !1022, metadata !579) #11, !dbg !1052
  %238 = sub i64 %231, %225, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !1023, metadata !579) #11, !dbg !1054
  %239 = getelementptr inbounds i8, i8* %237, i64 %236, !dbg !1055
  %240 = sub i64 0, %238, !dbg !1056
  %241 = getelementptr inbounds i8, i8* %239, i64 %240, !dbg !1056
  store i8* %241, i8** %92, align 8, !dbg !1057, !tbaa !801
  %242 = getelementptr inbounds i8, i8* %229, i64 %225, !dbg !1058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 %238, i32 1, i1 false) #11, !dbg !1059
  call void @free(i8* %229) #11, !dbg !1060
  store i8* %237, i8** %89, align 8, !dbg !1061, !tbaa !797
  store i64 %236, i64* %87, align 8, !dbg !1062, !tbaa !792
  br label %243, !dbg !1063

; <label>:243:                                    ; preds = %235, %222
  %244 = phi i8* [ %241, %235 ], [ %228, %222 ], !dbg !1064
  %245 = xor i64 %223, -1, !dbg !1064
  %246 = getelementptr inbounds i8, i8* %244, i64 %245, !dbg !1064
  store i8* %246, i8** %92, align 8, !dbg !1064, !tbaa !801
  store i8 47, i8* %246, align 1, !dbg !1065, !tbaa !724
  %247 = load i8*, i8** %92, align 8, !dbg !1066, !tbaa !801
  %248 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* nonnull %183, i64 %223, i32 1, i1 false) #11, !dbg !1068
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !866, metadata !579) #11, !dbg !928
  %249 = ptrtoint i8* %247 to i64, !dbg !1069
  br label %255, !dbg !1069

; <label>:250:                                    ; preds = %213, %208
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %118) #11, !dbg !974
  br label %252

; <label>:251:                                    ; preds = %218
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %118) #11, !dbg !974
  br label %252, !dbg !1070

; <label>:252:                                    ; preds = %251, %250
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %118) #11, !dbg !929
  store i32 0, i32* %177, align 4, !dbg !931, !tbaa !658
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !932, metadata !579) #11, !dbg !939
  %253 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %135) #11, !dbg !941
  call void @llvm.dbg.value(metadata %struct.dirent* %253, i64 0, metadata !937, metadata !579) #11, !dbg !942
  %254 = icmp eq %struct.dirent* %253, null, !dbg !943
  br i1 %254, label %198, label %196, !dbg !945

; <label>:255:                                    ; preds = %243, %198
  %256 = phi i8* [ %123, %198 ], [ %247, %243 ]
  %257 = phi i64 [ %124, %198 ], [ %249, %243 ]
  %258 = phi i8 [ 0, %198 ], [ 1, %243 ]
  call void @llvm.dbg.value(metadata %struct.__dirstream* %135, i64 0, metadata !858, metadata !579) #11, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !866, metadata !579) #11, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %118) #11, !dbg !974
  %259 = call i32 @closedir(%struct.__dirstream* nonnull %135) #11, !dbg !1071
  %260 = icmp eq i32 %259, 0, !dbg !1072
  br i1 %260, label %266, label %261, !dbg !1073

; <label>:261:                                    ; preds = %255, %201
  %262 = load i32, i32* %177, align 4, !dbg !1074, !tbaa !658
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !1074
  %264 = call fastcc i8* @nth_parent(i64 %125) #11, !dbg !1074
  %265 = call i8* @quote(i8* %264) #11, !dbg !1074
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* %263, i8* %265) #11, !dbg !1074
  unreachable, !dbg !1074

; <label>:266:                                    ; preds = %255
  %267 = icmp eq i8 %258, 0, !dbg !1076
  br i1 %267, label %268, label %272, !dbg !1078

; <label>:268:                                    ; preds = %266
  %269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1079
  %270 = call fastcc i8* @nth_parent(i64 %125) #11, !dbg !1079
  %271 = call i8* @quote(i8* %270) #11, !dbg !1079
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %269, i8* %271) #11, !dbg !1079
  unreachable, !dbg !1079

; <label>:272:                                    ; preds = %266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %95, i8* nonnull %116, i64 144, i32 8, i1 false) #11, !dbg !1080, !tbaa.struct !1081
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %116) #11, !dbg !1083
  br label %122, !dbg !842, !llvm.loop !1084

; <label>:273:                                    ; preds = %129
  %274 = load i8, i8* %123, align 1, !dbg !1087, !tbaa !724
  %275 = icmp eq i8 %274, 0, !dbg !1089
  br i1 %275, label %276, label %296, !dbg !1090

; <label>:276:                                    ; preds = %273
  %277 = ptrtoint i8* %123 to i64, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1011, metadata !579) #11, !dbg !1091
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !1016, metadata !579) #11, !dbg !1093
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1017, metadata !579) #11, !dbg !1094
  %278 = load i64, i64* %121, align 8, !dbg !1095, !tbaa !797
  %279 = icmp eq i64 %278, %277, !dbg !1096
  %280 = inttoptr i64 %278 to i8*, !dbg !1097
  br i1 %279, label %281, label %292, !dbg !1097

; <label>:281:                                    ; preds = %276
  %282 = load i64, i64* %87, align 8, !dbg !1098, !tbaa !792
  %283 = add i64 %282, 1, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1019, metadata !579) #11, !dbg !1100
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1037, metadata !579) #11, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1042, metadata !579) #11, !dbg !1103
  %284 = icmp ugt i64 %283, 4611686018427387903, !dbg !1104
  br i1 %284, label %285, label %286, !dbg !1105

; <label>:285:                                    ; preds = %281
  call void @xalloc_die() #15, !dbg !1106
  unreachable, !dbg !1106

; <label>:286:                                    ; preds = %281
  %287 = shl i64 %283, 1, !dbg !1107
  %288 = call noalias i8* @xmalloc(i64 %287) #11, !dbg !1108
  call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !1022, metadata !579) #11, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1023, metadata !579) #11, !dbg !1110
  %289 = getelementptr inbounds i8, i8* %288, i64 %287, !dbg !1111
  %290 = sub i64 0, %282, !dbg !1112
  %291 = getelementptr inbounds i8, i8* %289, i64 %290, !dbg !1112
  store i8* %291, i8** %92, align 8, !dbg !1113, !tbaa !801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %291, i8* %280, i64 %282, i32 1, i1 false) #11, !dbg !1114
  call void @free(i8* %280) #11, !dbg !1115
  store i8* %288, i8** %89, align 8, !dbg !1116, !tbaa !797
  store i64 %287, i64* %87, align 8, !dbg !1117, !tbaa !792
  br label %292, !dbg !1118

; <label>:292:                                    ; preds = %286, %276
  %293 = phi i8* [ %291, %286 ], [ %123, %276 ], !dbg !1119
  %294 = getelementptr inbounds i8, i8* %293, i64 -1, !dbg !1119
  store i8* %294, i8** %92, align 8, !dbg !1119, !tbaa !801
  store i8 47, i8* %294, align 1, !dbg !1120, !tbaa !724
  %295 = load i8*, i8** %92, align 8, !dbg !1121, !tbaa !801
  br label %296, !dbg !1122

; <label>:296:                                    ; preds = %273, %292
  %297 = phi i8* [ %123, %273 ], [ %295, %292 ], !dbg !1121
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %95) #11, !dbg !1123
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %93) #11, !dbg !1123
  %298 = call i32 @puts(i8* %297), !dbg !1124
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1125, metadata !579) #11, !dbg !1128
  %299 = load i8*, i8** %89, align 8, !dbg !1130, !tbaa !797
  call void @free(i8* %299) #11, !dbg !1131
  call void @free(i8* nonnull %85) #11, !dbg !1132
  br label %300

; <label>:300:                                    ; preds = %82, %296, %77
  ret i32 0, !dbg !1133
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @nth_parent(i64) unnamed_addr #6 !dbg !1134 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1138, metadata !579), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1037, metadata !579) #11, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1042, metadata !579) #11, !dbg !1145
  %2 = icmp ugt i64 %0, 3074457345618258602, !dbg !1146
  br i1 %2, label %3, label %4, !dbg !1147

; <label>:3:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !1148
  unreachable, !dbg !1148

; <label>:4:                                      ; preds = %1
  %5 = mul i64 %0, 3, !dbg !1149
  %6 = tail call noalias i8* @xmalloc(i64 %5) #11, !dbg !1150
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1139, metadata !579), !dbg !1151
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1140, metadata !579), !dbg !1152
  %7 = icmp eq i64 %0, 0, !dbg !1154
  br i1 %7, label %39, label %8, !dbg !1157

; <label>:8:                                      ; preds = %4
  %9 = add i64 %0, -1, !dbg !1158
  %10 = and i64 %0, 7, !dbg !1158
  %11 = icmp ult i64 %9, 7, !dbg !1158
  br i1 %11, label %27, label %12, !dbg !1158

; <label>:12:                                     ; preds = %8
  %13 = sub i64 %0, %10, !dbg !1158
  br label %14, !dbg !1158

; <label>:14:                                     ; preds = %14, %12
  %15 = phi i8* [ %6, %12 ], [ %24, %14 ]
  %16 = phi i64 [ %13, %12 ], [ %25, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %17 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %18 = getelementptr inbounds i8, i8* %15, i64 6, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %19 = getelementptr inbounds i8, i8* %15, i64 9, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %20 = getelementptr inbounds i8, i8* %15, i64 12, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %21 = getelementptr inbounds i8, i8* %15, i64 15, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %22 = getelementptr inbounds i8, i8* %15, i64 18, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %23 = getelementptr inbounds i8, i8* %15, i64 21, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %24 = getelementptr inbounds i8, i8* %15, i64 24, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1140, metadata !579), !dbg !1152
  %25 = add i64 %16, -8, !dbg !1157
  %26 = icmp eq i64 %25, 0, !dbg !1157
  br i1 %26, label %27, label %14, !dbg !1157, !llvm.loop !1161

; <label>:27:                                     ; preds = %14, %8
  %28 = phi i8* [ %6, %8 ], [ %24, %14 ]
  %29 = icmp eq i64 %10, 0, !dbg !1157
  br i1 %29, label %37, label %30, !dbg !1157

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !1157

; <label>:31:                                     ; preds = %31, %30
  %32 = phi i8* [ %34, %31 ], [ %28, %30 ]
  %33 = phi i64 [ %35, %31 ], [ %10, %30 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1141, metadata !579), !dbg !1153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !1158
  %34 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1140, metadata !579), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1140, metadata !579), !dbg !1152
  %35 = add i64 %33, -1, !dbg !1157
  %36 = icmp eq i64 %35, 0, !dbg !1157
  br i1 %36, label %37, label %31, !dbg !1157, !llvm.loop !1163

; <label>:37:                                     ; preds = %31, %27
  %38 = getelementptr i8, i8* %6, i64 %5, !dbg !1157
  br label %39, !dbg !1165

; <label>:39:                                     ; preds = %37, %4
  %40 = phi i8* [ %6, %4 ], [ %38, %37 ]
  %41 = getelementptr inbounds i8, i8* %40, i64 -1, !dbg !1165
  store i8 0, i8* %41, align 1, !dbg !1166, !tbaa !724
  ret i8* %6, !dbg !1167
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1168 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1170, metadata !579), !dbg !1171
  store i8* %0, i8** @file_name, align 8, !dbg !1172, !tbaa !586
  ret void, !dbg !1173
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1174 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1178, metadata !579), !dbg !1179
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1180, !tbaa !1181
  ret void, !dbg !1183
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1184 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1191, !tbaa !586
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1192
  %3 = icmp eq i32 %2, 0, !dbg !1193
  br i1 %3, label %21, label %4, !dbg !1194

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1195, !tbaa !1181, !range !1196
  %6 = icmp eq i8 %5, 0, !dbg !1195
  %7 = tail call i32* @__errno_location() #17, !dbg !1197
  br i1 %6, label %11, label %8, !dbg !1199

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1200, !tbaa !658
  %10 = icmp eq i32 %9, 32, !dbg !1201
  br i1 %10, label %21, label %11, !dbg !1202

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1203
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1188, metadata !579), !dbg !1204
  %13 = load i8*, i8** @file_name, align 8, !dbg !1205, !tbaa !586
  %14 = icmp eq i8* %13, null, !dbg !1205
  %15 = load i32, i32* %7, align 4, !tbaa !658
  br i1 %14, label %18, label %16, !dbg !1206

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1207
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1208
  br label %19, !dbg !1208

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #11, !dbg !1209
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1210, !tbaa !658
  tail call void @_exit(i32 %20) #15, !dbg !1211
  unreachable, !dbg !1211

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1212, !tbaa !586
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1214
  %24 = icmp eq i32 %23, 0, !dbg !1215
  br i1 %24, label %27, label %25, !dbg !1216

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1217, !tbaa !658
  tail call void @_exit(i32 %26) #15, !dbg !1218
  unreachable, !dbg !1218

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1219
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1220 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1222, metadata !579), !dbg !1225
  %2 = icmp eq i8* %0, null, !dbg !1226
  br i1 %2, label %3, label %6, !dbg !1228

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1229, !tbaa !586
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1231
  tail call void @abort() #15, !dbg !1232
  unreachable, !dbg !1232

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1233
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1223, metadata !579), !dbg !1234
  %8 = icmp eq i8* %7, null, !dbg !1235
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1236
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1237
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1224, metadata !579), !dbg !1238
  %11 = ptrtoint i8* %10 to i64, !dbg !1239
  %12 = ptrtoint i8* %0 to i64, !dbg !1239
  %13 = sub i64 %11, %12, !dbg !1239
  %14 = icmp sgt i64 %13, 6, !dbg !1241
  br i1 %14, label %15, label %24, !dbg !1242

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1243
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !1244
  %18 = icmp eq i32 %17, 0, !dbg !1245
  br i1 %18, label %19, label %24, !dbg !1246

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1222, metadata !579), !dbg !1225
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !1247
  %21 = icmp eq i32 %20, 0, !dbg !1250
  br i1 %21, label %22, label %24, !dbg !1251

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1222, metadata !579), !dbg !1225
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1254, !tbaa !586
  br label %24, !dbg !1255

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1222, metadata !579), !dbg !1225
  store i8* %25, i8** @program_name, align 8, !dbg !1256, !tbaa !586
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1257, !tbaa !586
  ret void, !dbg !1258
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1259 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1264, metadata !579), !dbg !1267
  %2 = tail call i32* @__errno_location() #17, !dbg !1268
  %3 = load i32, i32* %2, align 4, !dbg !1268, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1265, metadata !579), !dbg !1269
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1270
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1270
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1270
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1271
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1271
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1266, metadata !579), !dbg !1272
  store i32 %3, i32* %2, align 4, !dbg !1273, !tbaa !658
  ret %struct.quoting_options* %8, !dbg !1274
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1275 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1281, metadata !579), !dbg !1282
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1283
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1283
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1284
  %5 = load i32, i32* %4, align 8, !dbg !1284, !tbaa !1285
  ret i32 %5, !dbg !1287
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1288 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1292, metadata !579), !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1293, metadata !579), !dbg !1295
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1296
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1296
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1297
  store i32 %1, i32* %5, align 8, !dbg !1298, !tbaa !1285
  ret void, !dbg !1299
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1300 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1304, metadata !579), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1305, metadata !579), !dbg !1313
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1306, metadata !579), !dbg !1314
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1307, metadata !579), !dbg !1315
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1316
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1316
  %6 = lshr i8 %1, 5, !dbg !1317
  %7 = zext i8 %6 to i64, !dbg !1317
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1318
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1308, metadata !579), !dbg !1319
  %9 = and i8 %1, 31, !dbg !1320
  %10 = zext i8 %9 to i32, !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1310, metadata !579), !dbg !1322
  %11 = load i32, i32* %8, align 4, !dbg !1323, !tbaa !658
  %12 = lshr i32 %11, %10, !dbg !1324
  %13 = and i32 %12, 1, !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1311, metadata !579), !dbg !1326
  %14 = and i32 %2, 1, !dbg !1327
  %15 = xor i32 %13, %14, !dbg !1328
  %16 = shl i32 %15, %10, !dbg !1329
  %17 = xor i32 %16, %11, !dbg !1330
  store i32 %17, i32* %8, align 4, !dbg !1330, !tbaa !658
  ret i32 %13, !dbg !1331
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1332 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1336, metadata !579), !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1337, metadata !579), !dbg !1340
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1336, metadata !579), !dbg !1339
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1336, metadata !579), !dbg !1339
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1344
  %6 = load i32, i32* %5, align 4, !dbg !1344, !tbaa !1345
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1338, metadata !579), !dbg !1346
  store i32 %1, i32* %5, align 4, !dbg !1347, !tbaa !1345
  ret i32 %6, !dbg !1348
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1349 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1353, metadata !579), !dbg !1356
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1354, metadata !579), !dbg !1357
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1355, metadata !579), !dbg !1358
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1359
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1353, metadata !579), !dbg !1356
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1353, metadata !579), !dbg !1356
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1362
  store i32 10, i32* %6, align 8, !dbg !1363, !tbaa !1285
  %7 = icmp ne i8* %1, null, !dbg !1364
  %8 = icmp ne i8* %2, null, !dbg !1366
  %9 = and i1 %7, %8, !dbg !1367
  br i1 %9, label %11, label %10, !dbg !1367

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1368
  unreachable, !dbg !1368

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1369
  store i8* %1, i8** %12, align 8, !dbg !1370, !tbaa !1371
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1372
  store i8* %2, i8** %13, align 8, !dbg !1373, !tbaa !1374
  ret void, !dbg !1375
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1376 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1380, metadata !579), !dbg !1388
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1381, metadata !579), !dbg !1389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1382, metadata !579), !dbg !1390
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1383, metadata !579), !dbg !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1384, metadata !579), !dbg !1392
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1393
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1385, metadata !579), !dbg !1394
  %8 = tail call i32* @__errno_location() #17, !dbg !1395
  %9 = load i32, i32* %8, align 4, !dbg !1395, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1386, metadata !579), !dbg !1396
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1397
  %11 = load i32, i32* %10, align 8, !dbg !1397, !tbaa !1285
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1398
  %13 = load i32, i32* %12, align 4, !dbg !1398, !tbaa !1345
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1399
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1400
  %16 = load i8*, i8** %15, align 8, !dbg !1400, !tbaa !1371
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1401
  %18 = load i8*, i8** %17, align 8, !dbg !1401, !tbaa !1374
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1402
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1387, metadata !579), !dbg !1403
  store i32 %9, i32* %8, align 4, !dbg !1404, !tbaa !658
  ret i64 %19, !dbg !1405
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1406 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1412, metadata !579), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1413, metadata !579), !dbg !1477
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1414, metadata !579), !dbg !1478
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1415, metadata !579), !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1416, metadata !579), !dbg !1480
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1417, metadata !579), !dbg !1481
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1418, metadata !579), !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1419, metadata !579), !dbg !1483
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1420, metadata !579), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !579), !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1423, metadata !579), !dbg !1486
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1424, metadata !579), !dbg !1487
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1425, metadata !579), !dbg !1488
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1426, metadata !579), !dbg !1489
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1490
  %14 = icmp eq i64 %13, 1, !dbg !1491
  %15 = lshr i32 %5, 1, !dbg !1492
  %16 = trunc i32 %15 to i8, !dbg !1492
  %17 = and i8 %16, 1, !dbg !1492
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1428, metadata !579), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !579), !dbg !1493
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1430, metadata !579), !dbg !1494
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1431, metadata !579), !dbg !1495
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1496

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1431, metadata !579), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1426, metadata !579), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1425, metadata !579), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1420, metadata !579), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1419, metadata !579), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1416, metadata !579), !dbg !1480
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
  ], !dbg !1497

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !579), !dbg !1480
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !579), !dbg !1480
  br label %94, !dbg !1498

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !579), !dbg !1480
  %43 = and i8 %36, 1, !dbg !1500
  %44 = icmp eq i8 %43, 0, !dbg !1500
  br i1 %44, label %45, label %94, !dbg !1498

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1502
  br i1 %46, label %94, label %47, !dbg !1505

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1502, !tbaa !724
  br label %94, !dbg !1502

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1506
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1419, metadata !579), !dbg !1483
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1510
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1420, metadata !579), !dbg !1484
  br label %51, !dbg !1511

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1420, metadata !579), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1419, metadata !579), !dbg !1483
  %54 = and i8 %36, 1, !dbg !1512
  %55 = icmp eq i8 %54, 0, !dbg !1512
  br i1 %55, label %56, label %72, !dbg !1514

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !579), !dbg !1485
  %57 = load i8, i8* %52, align 1, !dbg !1515, !tbaa !724
  %58 = icmp eq i8 %57, 0, !dbg !1518
  br i1 %58, label %72, label %59, !dbg !1518

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1519

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1424, metadata !579), !dbg !1487
  %64 = icmp ult i64 %63, %40, !dbg !1519
  br i1 %64, label %65, label %67, !dbg !1522

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1519
  store i8 %61, i8* %66, align 1, !dbg !1519, !tbaa !724
  br label %67, !dbg !1519

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1422, metadata !579), !dbg !1485
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1422, metadata !579), !dbg !1485
  %70 = load i8, i8* %69, align 1, !dbg !1515, !tbaa !724
  %71 = icmp eq i8 %70, 0, !dbg !1518
  br i1 %71, label %72, label %60, !dbg !1518, !llvm.loop !1524

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !579), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1424, metadata !579), !dbg !1487
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1425, metadata !579), !dbg !1488
  br label %94, !dbg !1527

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !579), !dbg !1489
  br label %76, !dbg !1528

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1426, metadata !579), !dbg !1489
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1428, metadata !579), !dbg !1492
  br label %78, !dbg !1529

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1426, metadata !579), !dbg !1489
  %81 = and i8 %80, 1, !dbg !1530
  %82 = icmp eq i8 %81, 0, !dbg !1530
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !579), !dbg !1489
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1532
  br label %84, !dbg !1532

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1426, metadata !579), !dbg !1489
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1416, metadata !579), !dbg !1480
  %87 = and i8 %86, 1, !dbg !1533
  %88 = icmp eq i8 %87, 0, !dbg !1533
  br i1 %88, label %89, label %94, !dbg !1535

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1536
  br i1 %90, label %94, label %91, !dbg !1539

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1536, !tbaa !724
  br label %94, !dbg !1536

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1428, metadata !579), !dbg !1492
  br label %94, !dbg !1540

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1541
  unreachable, !dbg !1541

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1428, metadata !579), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1426, metadata !579), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1425, metadata !579), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1420, metadata !579), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1419, metadata !579), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1416, metadata !579), !dbg !1480
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1421, metadata !579), !dbg !1542
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
  br label %122, !dbg !1543

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1431, metadata !579), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1421, metadata !579), !dbg !1542
  %131 = icmp eq i64 %126, -1, !dbg !1544
  br i1 %131, label %134, label %132, !dbg !1545

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1546
  br i1 %133, label %590, label %138, !dbg !1547

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1548
  %136 = load i8, i8* %135, align 1, !dbg !1548, !tbaa !724
  %137 = icmp eq i8 %136, 0, !dbg !1549
  br i1 %137, label %590, label %138, !dbg !1547

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !579), !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1439, metadata !579), !dbg !1552
  br i1 %108, label %139, label %154, !dbg !1553

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1555
  %141 = and i1 %109, %131, !dbg !1556
  br i1 %141, label %142, label %144, !dbg !1556

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1415, metadata !579), !dbg !1479
  br label %144, !dbg !1558

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1415, metadata !579), !dbg !1479
  %146 = icmp ugt i64 %140, %145, !dbg !1559
  br i1 %146, label %154, label %147, !dbg !1560

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1561
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1562
  %150 = icmp ne i32 %149, 0, !dbg !1563
  %151 = or i1 %150, %111, !dbg !1564
  %152 = xor i1 %150, true, !dbg !1564
  %153 = zext i1 %152 to i8, !dbg !1564
  br i1 %151, label %154, label %635, !dbg !1564

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1437, metadata !579), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1415, metadata !579), !dbg !1479
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1565
  %158 = load i8, i8* %157, align 1, !dbg !1565, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1432, metadata !579), !dbg !1566
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
  ], !dbg !1567

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1568

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1569

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !579), !dbg !1551
  %162 = and i8 %127, 1, !dbg !1573
  %163 = icmp eq i8 %162, 0, !dbg !1573
  %164 = and i1 %113, %163, !dbg !1573
  br i1 %164, label %165, label %181, !dbg !1573

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1575
  br i1 %166, label %167, label %169, !dbg !1579

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1575
  store i8 39, i8* %168, align 1, !dbg !1575, !tbaa !724
  br label %169, !dbg !1575

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1422, metadata !579), !dbg !1485
  %171 = icmp ult i64 %170, %130, !dbg !1580
  br i1 %171, label %172, label %174, !dbg !1583

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1580
  store i8 36, i8* %173, align 1, !dbg !1580, !tbaa !724
  br label %174, !dbg !1580

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1422, metadata !579), !dbg !1485
  %176 = icmp ult i64 %175, %130, !dbg !1584
  br i1 %176, label %177, label %179, !dbg !1587

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1584
  store i8 39, i8* %178, align 1, !dbg !1584, !tbaa !724
  br label %179, !dbg !1584

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %181, !dbg !1588

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1422, metadata !579), !dbg !1485
  %184 = icmp ult i64 %182, %130, !dbg !1589
  br i1 %184, label %185, label %187, !dbg !1592

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1589
  store i8 92, i8* %186, align 1, !dbg !1589, !tbaa !724
  br label %187, !dbg !1589

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1422, metadata !579), !dbg !1485
  br i1 %105, label %189, label %470, !dbg !1593

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1595
  %191 = icmp ult i64 %190, %155, !dbg !1596
  br i1 %191, label %192, label %470, !dbg !1597

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1598
  %194 = load i8, i8* %193, align 1, !dbg !1598, !tbaa !724
  %195 = add i8 %194, -48, !dbg !1599
  %196 = icmp ult i8 %195, 10, !dbg !1599
  br i1 %196, label %197, label %470, !dbg !1599

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1600
  br i1 %198, label %199, label %201, !dbg !1604

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1600
  store i8 48, i8* %200, align 1, !dbg !1600, !tbaa !724
  br label %201, !dbg !1600

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1422, metadata !579), !dbg !1485
  %203 = icmp ult i64 %202, %130, !dbg !1605
  br i1 %203, label %204, label %206, !dbg !1608

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1605
  store i8 48, i8* %205, align 1, !dbg !1605, !tbaa !724
  br label %206, !dbg !1605

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1422, metadata !579), !dbg !1485
  br label %470, !dbg !1609

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1610

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1611

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1612

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1614

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1616
  %214 = icmp ult i64 %213, %155, !dbg !1617
  br i1 %214, label %215, label %470, !dbg !1618

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1619
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1620
  %218 = load i8, i8* %217, align 1, !dbg !1620, !tbaa !724
  %219 = icmp eq i8 %218, 63, !dbg !1621
  br i1 %219, label %220, label %470, !dbg !1622

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1623
  %222 = load i8, i8* %221, align 1, !dbg !1623, !tbaa !724
  %223 = sext i8 %222 to i32, !dbg !1623
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
  ], !dbg !1624

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1625

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1421, metadata !579), !dbg !1542
  %226 = icmp ult i64 %124, %130, !dbg !1627
  br i1 %226, label %227, label %229, !dbg !1630

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1627
  store i8 63, i8* %228, align 1, !dbg !1627, !tbaa !724
  br label %229, !dbg !1627

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1422, metadata !579), !dbg !1485
  %231 = icmp ult i64 %230, %130, !dbg !1631
  br i1 %231, label %232, label %234, !dbg !1634

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1631
  store i8 34, i8* %233, align 1, !dbg !1631, !tbaa !724
  br label %234, !dbg !1631

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1422, metadata !579), !dbg !1485
  %236 = icmp ult i64 %235, %130, !dbg !1635
  br i1 %236, label %237, label %239, !dbg !1638

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1635
  store i8 34, i8* %238, align 1, !dbg !1635, !tbaa !724
  br label %239, !dbg !1635

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1422, metadata !579), !dbg !1485
  %241 = icmp ult i64 %240, %130, !dbg !1639
  br i1 %241, label %242, label %244, !dbg !1642

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1639
  store i8 63, i8* %243, align 1, !dbg !1639, !tbaa !724
  br label %244, !dbg !1639

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1422, metadata !579), !dbg !1485
  br label %470, !dbg !1643

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1436, metadata !579), !dbg !1644
  br label %256, !dbg !1645

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1436, metadata !579), !dbg !1644
  br label %256, !dbg !1646

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1436, metadata !579), !dbg !1644
  br label %254, !dbg !1647

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1436, metadata !579), !dbg !1644
  br label %254, !dbg !1648

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1436, metadata !579), !dbg !1644
  br label %256, !dbg !1649

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1436, metadata !579), !dbg !1644
  br i1 %113, label %252, label %253, !dbg !1650

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1651

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1654

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1436, metadata !579), !dbg !1644
  br i1 %117, label %256, label %635, !dbg !1656

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1436, metadata !579), !dbg !1644
  br i1 %104, label %497, label %470, !dbg !1658

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1659
  br i1 %259, label %260, label %265, !dbg !1661

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1662, !tbaa !724
  %262 = icmp ne i8 %261, 0, !dbg !1663
  %263 = icmp ne i64 %123, 0, !dbg !1664
  %264 = or i1 %263, %262, !dbg !1666
  br i1 %264, label %470, label %271, !dbg !1666

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1667
  %267 = icmp ne i64 %123, 0, !dbg !1664
  %268 = or i1 %267, %266, !dbg !1661
  br i1 %268, label %470, label %271, !dbg !1661

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1664
  br i1 %270, label %271, label %470, !dbg !1668

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1439, metadata !579), !dbg !1552
  br label %272, !dbg !1669

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1439, metadata !579), !dbg !1552
  br i1 %117, label %470, label %635, !dbg !1670

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1439, metadata !579), !dbg !1552
  br i1 %113, label %275, label %470, !dbg !1672

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1673

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1676
  %278 = icmp ne i64 %125, 0, !dbg !1678
  %279 = or i1 %278, %277, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1413, metadata !579), !dbg !1477
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1679
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1423, metadata !579), !dbg !1486
  %282 = icmp ult i64 %124, %281, !dbg !1680
  br i1 %282, label %283, label %285, !dbg !1683

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1680
  store i8 39, i8* %284, align 1, !dbg !1680, !tbaa !724
  br label %285, !dbg !1680

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1422, metadata !579), !dbg !1485
  %287 = icmp ult i64 %286, %281, !dbg !1684
  br i1 %287, label %288, label %290, !dbg !1687

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1684
  store i8 92, i8* %289, align 1, !dbg !1684, !tbaa !724
  br label %290, !dbg !1684

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1422, metadata !579), !dbg !1485
  %292 = icmp ult i64 %291, %281, !dbg !1688
  br i1 %292, label %293, label %295, !dbg !1691

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1688
  store i8 39, i8* %294, align 1, !dbg !1688, !tbaa !724
  br label %295, !dbg !1688

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %470, !dbg !1692

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1693

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1440, metadata !579), !dbg !1694
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1695
  %300 = load i16*, i16** %299, align 8, !dbg !1695, !tbaa !586
  %301 = zext i8 %158 to i64, !dbg !1695
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1695
  %303 = load i16, i16* %302, align 2, !dbg !1695, !tbaa !1697
  %304 = lshr i16 %303, 14, !dbg !1698
  %305 = trunc i16 %304 to i8, !dbg !1698
  %306 = and i8 %305, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1443, metadata !579), !dbg !1699
  br label %362, !dbg !1700

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1701
  store i64 0, i64* %10, align 8, !dbg !1702
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1443, metadata !579), !dbg !1699
  %308 = icmp eq i64 %155, -1, !dbg !1703
  br i1 %308, label %309, label %311, !dbg !1705

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1415, metadata !579), !dbg !1479
  br label %311, !dbg !1707

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1415, metadata !579), !dbg !1479
  br label %313, !dbg !1708, !llvm.loop !1709

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1711
  %316 = add i64 %314, %123, !dbg !1712
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1713
  %318 = sub i64 %312, %316, !dbg !1714
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1444, metadata !579), !dbg !1715
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1462, metadata !579), !dbg !1716
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1465, metadata !579), !dbg !1718
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1719

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1440, metadata !579), !dbg !1694
  %321 = icmp ugt i64 %312, %316, !dbg !1720
  br i1 %321, label %322, label %347, !dbg !1722

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1723

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1440, metadata !579), !dbg !1694
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1723
  %327 = load i8, i8* %326, align 1, !dbg !1723, !tbaa !724
  %328 = icmp eq i8 %327, 0, !dbg !1722
  br i1 %328, label %347, label %329, !dbg !1724

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1440, metadata !579), !dbg !1694
  %331 = add i64 %330, %123, !dbg !1726
  %332 = icmp ult i64 %331, %312, !dbg !1720
  br i1 %332, label %323, label %347, !dbg !1722, !llvm.loop !1727

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1728
  %335 = and i1 %115, %334, !dbg !1731
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1466, metadata !579), !dbg !1732
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1466, metadata !579), !dbg !1732
  br i1 %335, label %336, label %350, !dbg !1731

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1733

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1466, metadata !579), !dbg !1732
  %339 = add i64 %338, %316, !dbg !1733
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1734
  %341 = load i8, i8* %340, align 1, !dbg !1734, !tbaa !724
  %342 = sext i8 %341 to i32, !dbg !1734
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1735

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1466, metadata !579), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1466, metadata !579), !dbg !1732
  %345 = icmp ult i64 %344, %319, !dbg !1728
  br i1 %345, label %337, label %350, !dbg !1737, !llvm.loop !1738

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1740

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1740
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1741, !tbaa !658
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1462, metadata !579), !dbg !1716
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1743
  %353 = icmp eq i32 %352, 0, !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1443, metadata !579), !dbg !1699
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1744
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1443, metadata !579), !dbg !1699
  %355 = add i64 %319, %314, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1740
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1444, metadata !579), !dbg !1715
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1746
  %357 = icmp eq i32 %356, 0, !dbg !1747
  br i1 %357, label %313, label %358, !dbg !1748, !llvm.loop !1709

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1749
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1749
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1443, metadata !579), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1440, metadata !579), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1415, metadata !579), !dbg !1479
  %366 = and i8 %365, 1, !dbg !1750
  %367 = icmp ne i8 %366, 0, !dbg !1750
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1439, metadata !579), !dbg !1552
  %368 = icmp ult i64 %364, 2, !dbg !1751
  %369 = or i1 %367, %112, !dbg !1752
  %370 = and i1 %368, %369, !dbg !1753
  br i1 %370, label %470, label %371, !dbg !1753

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1473, metadata !579), !dbg !1755
  br label %373, !dbg !1756

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1437, metadata !579), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1421, metadata !579), !dbg !1542
  br i1 %369, label %426, label %380, !dbg !1757

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1762

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !579), !dbg !1551
  %382 = and i8 %376, 1, !dbg !1765
  %383 = icmp eq i8 %382, 0, !dbg !1765
  %384 = and i1 %113, %383, !dbg !1765
  br i1 %384, label %385, label %401, !dbg !1765

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1767
  br i1 %386, label %387, label %389, !dbg !1771

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1767
  store i8 39, i8* %388, align 1, !dbg !1767, !tbaa !724
  br label %389, !dbg !1767

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1422, metadata !579), !dbg !1485
  %391 = icmp ult i64 %390, %130, !dbg !1772
  br i1 %391, label %392, label %394, !dbg !1775

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1772
  store i8 36, i8* %393, align 1, !dbg !1772, !tbaa !724
  br label %394, !dbg !1772

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1422, metadata !579), !dbg !1485
  %396 = icmp ult i64 %395, %130, !dbg !1776
  br i1 %396, label %397, label %399, !dbg !1779

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1776
  store i8 39, i8* %398, align 1, !dbg !1776, !tbaa !724
  br label %399, !dbg !1776

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %401, !dbg !1780

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1422, metadata !579), !dbg !1485
  %404 = icmp ult i64 %402, %130, !dbg !1781
  br i1 %404, label %405, label %407, !dbg !1784

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1781
  store i8 92, i8* %406, align 1, !dbg !1781, !tbaa !724
  br label %407, !dbg !1781

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1422, metadata !579), !dbg !1485
  %409 = icmp ult i64 %408, %130, !dbg !1785
  br i1 %409, label %410, label %414, !dbg !1788

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1785
  %412 = or i8 %411, 48, !dbg !1785
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1785
  store i8 %412, i8* %413, align 1, !dbg !1785, !tbaa !724
  br label %414, !dbg !1785

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1422, metadata !579), !dbg !1485
  %416 = icmp ult i64 %415, %130, !dbg !1789
  br i1 %416, label %417, label %422, !dbg !1792

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1789
  %419 = and i8 %418, 7, !dbg !1789
  %420 = or i8 %419, 48, !dbg !1789
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1789
  store i8 %420, i8* %421, align 1, !dbg !1789, !tbaa !724
  br label %422, !dbg !1789

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1422, metadata !579), !dbg !1485
  %424 = and i8 %377, 7, !dbg !1793
  %425 = or i8 %424, 48, !dbg !1794
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1432, metadata !579), !dbg !1566
  br label %435, !dbg !1795

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1796
  %428 = icmp eq i8 %427, 0, !dbg !1796
  br i1 %428, label %435, label %429, !dbg !1798

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1799
  br i1 %430, label %431, label %433, !dbg !1803

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1799
  store i8 92, i8* %432, align 1, !dbg !1799, !tbaa !724
  br label %433, !dbg !1799

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !579), !dbg !1550
  br label %435, !dbg !1804

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1437, metadata !579), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1422, metadata !579), !dbg !1485
  %441 = add i64 %374, 1, !dbg !1805
  %442 = icmp ugt i64 %372, %441, !dbg !1807
  br i1 %442, label %443, label %535, !dbg !1808

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1809
  %445 = icmp ne i8 %444, 0, !dbg !1809
  %446 = and i8 %440, 1, !dbg !1809
  %447 = icmp eq i8 %446, 0, !dbg !1809
  %448 = and i1 %445, %447, !dbg !1809
  br i1 %448, label %449, label %460, !dbg !1809

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1812
  br i1 %450, label %451, label %453, !dbg !1816

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1812
  store i8 39, i8* %452, align 1, !dbg !1812, !tbaa !724
  br label %453, !dbg !1812

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1422, metadata !579), !dbg !1485
  %455 = icmp ult i64 %454, %130, !dbg !1817
  br i1 %455, label %456, label %458, !dbg !1820

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1817
  store i8 39, i8* %457, align 1, !dbg !1817, !tbaa !724
  br label %458, !dbg !1817

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %460, !dbg !1821

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1422, metadata !579), !dbg !1485
  %463 = icmp ult i64 %461, %130, !dbg !1822
  br i1 %463, label %464, label %466, !dbg !1825

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1822
  store i8 %438, i8* %465, align 1, !dbg !1822, !tbaa !724
  br label %466, !dbg !1822

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1421, metadata !579), !dbg !1542
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1826
  %469 = load i8, i8* %468, align 1, !dbg !1826, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1432, metadata !579), !dbg !1566
  br label %373, !dbg !1827, !llvm.loop !1828

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1439, metadata !579), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1437, metadata !579), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1421, metadata !579), !dbg !1542
  br i1 %106, label %482, label %481, !dbg !1831

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1833

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1834

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1835
  %485 = zext i8 %484 to i64, !dbg !1835
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1836
  %487 = load i32, i32* %486, align 4, !dbg !1836, !tbaa !658
  %488 = and i8 %477, 31, !dbg !1837
  %489 = zext i8 %488 to i32, !dbg !1838
  %490 = shl i32 1, %489, !dbg !1839
  %491 = and i32 %487, %490, !dbg !1839
  %492 = icmp eq i32 %491, 0, !dbg !1839
  %493 = icmp eq i8 %156, 0, !dbg !1840
  %494 = and i1 %493, %492, !dbg !1841
  br i1 %494, label %535, label %497, !dbg !1841

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1840
  br i1 %496, label %535, label %497, !dbg !1842

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1439, metadata !579), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1421, metadata !579), !dbg !1542
  br i1 %111, label %507, label %635, !dbg !1843

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !579), !dbg !1551
  %508 = and i8 %502, 1, !dbg !1845
  %509 = icmp eq i8 %508, 0, !dbg !1845
  %510 = and i1 %113, %509, !dbg !1845
  br i1 %510, label %511, label %527, !dbg !1845

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1847
  br i1 %512, label %513, label %515, !dbg !1851

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1847
  store i8 39, i8* %514, align 1, !dbg !1847, !tbaa !724
  br label %515, !dbg !1847

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1422, metadata !579), !dbg !1485
  %517 = icmp ult i64 %516, %506, !dbg !1852
  br i1 %517, label %518, label %520, !dbg !1855

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1852
  store i8 36, i8* %519, align 1, !dbg !1852, !tbaa !724
  br label %520, !dbg !1852

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1422, metadata !579), !dbg !1485
  %522 = icmp ult i64 %521, %506, !dbg !1856
  br i1 %522, label %523, label %525, !dbg !1859

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1856
  store i8 39, i8* %524, align 1, !dbg !1856, !tbaa !724
  br label %525, !dbg !1856

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %527, !dbg !1860

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1422, metadata !579), !dbg !1485
  %530 = icmp ult i64 %528, %506, !dbg !1861
  br i1 %530, label %531, label %533, !dbg !1864

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1861
  store i8 92, i8* %532, align 1, !dbg !1861, !tbaa !724
  br label %533, !dbg !1861

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1439, metadata !579), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1421, metadata !579), !dbg !1542
  br label %562, !dbg !1865

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1439, metadata !579), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1438, metadata !579), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1432, metadata !579), !dbg !1566
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1421, metadata !579), !dbg !1542
  %546 = and i8 %540, 1, !dbg !1865
  %547 = icmp ne i8 %546, 0, !dbg !1865
  %548 = and i8 %543, 1, !dbg !1865
  %549 = icmp eq i8 %548, 0, !dbg !1865
  %550 = and i1 %547, %549, !dbg !1865
  br i1 %550, label %551, label %562, !dbg !1865

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1868
  br i1 %552, label %553, label %555, !dbg !1872

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1868
  store i8 39, i8* %554, align 1, !dbg !1868, !tbaa !724
  br label %555, !dbg !1868

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1422, metadata !579), !dbg !1485
  %557 = icmp ult i64 %556, %545, !dbg !1873
  br i1 %557, label %558, label %560, !dbg !1876

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1873
  store i8 39, i8* %559, align 1, !dbg !1873, !tbaa !724
  br label %560, !dbg !1873

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !579), !dbg !1493
  br label %562, !dbg !1877

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1422, metadata !579), !dbg !1485
  %572 = icmp ult i64 %570, %563, !dbg !1878
  br i1 %572, label %573, label %575, !dbg !1881

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1878
  store i8 %565, i8* %574, align 1, !dbg !1878, !tbaa !724
  br label %575, !dbg !1878

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1422, metadata !579), !dbg !1485
  %577 = and i8 %564, 1, !dbg !1882
  %578 = icmp eq i8 %577, 0, !dbg !1882
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1431, metadata !579), !dbg !1495
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1884
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1431, metadata !579), !dbg !1495
  br label %580, !dbg !1885

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1431, metadata !579), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1430, metadata !579), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1429, metadata !579), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1415, metadata !579), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1423, metadata !579), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1421, metadata !579), !dbg !1542
  %589 = add i64 %581, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1421, metadata !579), !dbg !1542
  br label %122, !dbg !1887, !llvm.loop !1888

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1890
  %593 = and i1 %113, %592, !dbg !1892
  %594 = xor i1 %593, true, !dbg !1892
  %595 = or i1 %111, %594, !dbg !1892
  br i1 %595, label %596, label %635, !dbg !1892

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1893
  %598 = xor i1 %597, true, !dbg !1893
  %599 = and i8 %128, 1, !dbg !1895
  %600 = icmp eq i8 %599, 0, !dbg !1895
  %601 = or i1 %600, %598, !dbg !1893
  br i1 %601, label %611, label %602, !dbg !1893

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1896
  %604 = icmp eq i8 %603, 0, !dbg !1896
  br i1 %604, label %607, label %605, !dbg !1899

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1900
  br label %645, !dbg !1901

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1902
  %609 = icmp ne i64 %125, 0, !dbg !1904
  %610 = and i1 %609, %608, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !579), !dbg !1485
  br i1 %610, label %27, label %611, !dbg !1905

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1906
  %613 = and i1 %612, %111, !dbg !1908
  br i1 %613, label %614, label %630, !dbg !1908

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1422, metadata !579), !dbg !1485
  %615 = load i8, i8* %99, align 1, !dbg !1909, !tbaa !724
  %616 = icmp eq i8 %615, 0, !dbg !1912
  br i1 %616, label %630, label %617, !dbg !1912

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1913

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1422, metadata !579), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1424, metadata !579), !dbg !1487
  %622 = icmp ult i64 %621, %130, !dbg !1913
  br i1 %622, label %623, label %625, !dbg !1916

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1913
  store i8 %619, i8* %624, align 1, !dbg !1913, !tbaa !724
  br label %625, !dbg !1913

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1422, metadata !579), !dbg !1485
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1917
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1424, metadata !579), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1422, metadata !579), !dbg !1485
  %628 = load i8, i8* %627, align 1, !dbg !1909, !tbaa !724
  %629 = icmp eq i8 %628, 0, !dbg !1912
  br i1 %629, label %630, label %618, !dbg !1912, !llvm.loop !1918

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1422, metadata !579), !dbg !1485
  %632 = icmp ult i64 %631, %130, !dbg !1920
  br i1 %632, label %633, label %645, !dbg !1922

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1923
  store i8 0, i8* %634, align 1, !dbg !1924, !tbaa !724
  br label %645, !dbg !1923

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1413, metadata !579), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1415, metadata !579), !dbg !1479
  %639 = icmp ne i32 %636, 2, !dbg !1925
  %640 = icmp eq i8 %103, 0, !dbg !1927
  %641 = or i1 %639, %640, !dbg !1928
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1416, metadata !579), !dbg !1480
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1416, metadata !579), !dbg !1480
  %643 = and i32 %5, -3, !dbg !1929
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1930
  br label %645, !dbg !1931

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1932
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1933 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1937, metadata !579), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1938, metadata !579), !dbg !1942
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1943
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1939, metadata !579), !dbg !1944
  %4 = icmp eq i8* %3, %0, !dbg !1945
  br i1 %4, label %5, label %75, !dbg !1947

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1948
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1940, metadata !579), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1950, metadata !579), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !579), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1965, metadata !579), !dbg !1970
  %7 = load i8, i8* %6, align 1, !dbg !1971, !tbaa !724
  %8 = sext i8 %7 to i32, !dbg !1971
  %9 = and i32 %8, -33, !dbg !1971
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1971

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1973, metadata !579), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !579), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1986, metadata !579), !dbg !1992
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1993
  %12 = load i8, i8* %11, align 1, !dbg !1993, !tbaa !724
  %13 = sext i8 %12 to i32, !dbg !1993
  %14 = and i32 %13, -33, !dbg !1993
  %15 = icmp eq i32 %14, 84, !dbg !1993
  br i1 %15, label %16, label %72, !dbg !1993

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1995, metadata !579), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !579), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !579), !dbg !2013
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2014
  %18 = load i8, i8* %17, align 1, !dbg !2014, !tbaa !724
  %19 = sext i8 %18 to i32, !dbg !2014
  %20 = and i32 %19, -33, !dbg !2014
  %21 = icmp eq i32 %20, 70, !dbg !2014
  br i1 %21, label %22, label %72, !dbg !2014

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2016, metadata !579), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !579), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !579), !dbg !2033
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2034
  %24 = load i8, i8* %23, align 1, !dbg !2034, !tbaa !724
  %25 = icmp eq i8 %24, 45, !dbg !2034
  br i1 %25, label %26, label %72, !dbg !2036

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2037, metadata !579), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !579), !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2047, metadata !579), !dbg !2053
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2054
  %28 = load i8, i8* %27, align 1, !dbg !2054, !tbaa !724
  %29 = icmp eq i8 %28, 56, !dbg !2054
  br i1 %29, label %30, label %72, !dbg !2056

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2057, metadata !579), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !579), !dbg !2071
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !579), !dbg !2072
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2073
  %32 = load i8, i8* %31, align 1, !dbg !2073, !tbaa !724
  %33 = icmp eq i8 %32, 0, !dbg !2073
  br i1 %33, label %34, label %72, !dbg !2075

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2076, !tbaa !724
  %36 = icmp eq i8 %35, 96, !dbg !2077
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2076
  br label %75, !dbg !2078

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1973, metadata !579), !dbg !2079
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !579), !dbg !2083
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1986, metadata !579), !dbg !2084
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2085
  %40 = load i8, i8* %39, align 1, !dbg !2085, !tbaa !724
  %41 = sext i8 %40 to i32, !dbg !2085
  %42 = and i32 %41, -33, !dbg !2085
  %43 = icmp eq i32 %42, 66, !dbg !2085
  br i1 %43, label %44, label %72, !dbg !2085

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1995, metadata !579), !dbg !2086
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !579), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !579), !dbg !2089
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2090
  %46 = load i8, i8* %45, align 1, !dbg !2090, !tbaa !724
  %47 = icmp eq i8 %46, 49, !dbg !2090
  br i1 %47, label %48, label %72, !dbg !2091

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2016, metadata !579), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !579), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !579), !dbg !2095
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2096
  %50 = load i8, i8* %49, align 1, !dbg !2096, !tbaa !724
  %51 = icmp eq i8 %50, 56, !dbg !2096
  br i1 %51, label %52, label %72, !dbg !2097

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2037, metadata !579), !dbg !2098
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !579), !dbg !2100
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2047, metadata !579), !dbg !2101
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2102
  %54 = load i8, i8* %53, align 1, !dbg !2102, !tbaa !724
  %55 = icmp eq i8 %54, 48, !dbg !2102
  br i1 %55, label %56, label %72, !dbg !2103

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2057, metadata !579), !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !579), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !579), !dbg !2107
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2108
  %58 = load i8, i8* %57, align 1, !dbg !2108, !tbaa !724
  %59 = icmp eq i8 %58, 51, !dbg !2108
  br i1 %59, label %60, label %72, !dbg !2109

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2110, metadata !579), !dbg !2119
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2117, metadata !579), !dbg !2123
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2118, metadata !579), !dbg !2124
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2125
  %62 = load i8, i8* %61, align 1, !dbg !2125, !tbaa !724
  %63 = icmp eq i8 %62, 48, !dbg !2125
  br i1 %63, label %64, label %72, !dbg !2127

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2128, metadata !579), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2134, metadata !579), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !579), !dbg !2141
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2142
  %66 = load i8, i8* %65, align 1, !dbg !2142, !tbaa !724
  %67 = icmp eq i8 %66, 0, !dbg !2142
  br i1 %67, label %68, label %72, !dbg !2144

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2145, !tbaa !724
  %70 = icmp eq i8 %69, 96, !dbg !2146
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2145
  br label %75, !dbg !2147

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2148
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2149
  br label %75, !dbg !2150

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2151
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2152 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2156, metadata !579), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2157, metadata !579), !dbg !2160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2158, metadata !579), !dbg !2161
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2162, metadata !579) #11, !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2167, metadata !579) #11, !dbg !2177
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2168, metadata !579) #11, !dbg !2178
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2169, metadata !579) #11, !dbg !2179
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2180
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !579) #11, !dbg !2181
  %6 = tail call i32* @__errno_location() #17, !dbg !2182
  %7 = load i32, i32* %6, align 4, !dbg !2182, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2171, metadata !579) #11, !dbg !2183
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2184
  %9 = load i32, i32* %8, align 4, !dbg !2184, !tbaa !1345
  %10 = or i32 %9, 1, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2172, metadata !579) #11, !dbg !2186
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2187
  %12 = load i32, i32* %11, align 8, !dbg !2187, !tbaa !1285
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2188
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2189
  %15 = load i8*, i8** %14, align 8, !dbg !2189, !tbaa !1371
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2190
  %17 = load i8*, i8** %16, align 8, !dbg !2190, !tbaa !1374
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2191
  %19 = add i64 %18, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2173, metadata !579) #11, !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2194, metadata !579) #11, !dbg !2197
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2174, metadata !579) #11, !dbg !2200
  %21 = load i32, i32* %11, align 8, !dbg !2201, !tbaa !1285
  %22 = load i8*, i8** %14, align 8, !dbg !2202, !tbaa !1371
  %23 = load i8*, i8** %16, align 8, !dbg !2203, !tbaa !1374
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2204
  store i32 %7, i32* %6, align 4, !dbg !2205, !tbaa !658
  ret i8* %20, !dbg !2206
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2163 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2162, metadata !579), !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2167, metadata !579), !dbg !2208
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2168, metadata !579), !dbg !2209
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2169, metadata !579), !dbg !2210
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2211
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2211
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2170, metadata !579), !dbg !2212
  %7 = tail call i32* @__errno_location() #17, !dbg !2213
  %8 = load i32, i32* %7, align 4, !dbg !2213, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2171, metadata !579), !dbg !2214
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2215
  %10 = load i32, i32* %9, align 4, !dbg !2215, !tbaa !1345
  %11 = icmp ne i64* %2, null, !dbg !2216
  %12 = xor i1 %11, true, !dbg !2216
  %13 = zext i1 %12 to i32, !dbg !2216
  %14 = or i32 %10, %13, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2172, metadata !579), !dbg !2218
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2219
  %16 = load i32, i32* %15, align 8, !dbg !2219, !tbaa !1285
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2220
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2221
  %19 = load i8*, i8** %18, align 8, !dbg !2221, !tbaa !1371
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2222
  %21 = load i8*, i8** %20, align 8, !dbg !2222, !tbaa !1374
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2223
  %23 = add i64 %22, 1, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2173, metadata !579), !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2194, metadata !579) #11, !dbg !2226
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2228
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2174, metadata !579), !dbg !2229
  %25 = load i32, i32* %15, align 8, !dbg !2230, !tbaa !1285
  %26 = load i8*, i8** %18, align 8, !dbg !2231, !tbaa !1371
  %27 = load i8*, i8** %20, align 8, !dbg !2232, !tbaa !1374
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2233
  store i32 %8, i32* %7, align 4, !dbg !2234, !tbaa !658
  br i1 %11, label %29, label %30, !dbg !2235

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2236, !tbaa !1082
  br label %30, !dbg !2238

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2240 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2244, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2242, metadata !579), !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2243, metadata !579), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2243, metadata !579), !dbg !2246
  %2 = load i32, i32* @nslots, align 4, !dbg !2247, !tbaa !658
  %3 = icmp sgt i32 %2, 1, !dbg !2250
  br i1 %3, label %4, label %13, !dbg !2251

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2252

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2243, metadata !579), !dbg !2246
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2252
  %8 = load i8*, i8** %7, align 8, !dbg !2252, !tbaa !2253
  tail call void @free(i8* %8) #11, !dbg !2255
  %9 = add nuw i64 %6, 1, !dbg !2256
  %10 = load i32, i32* @nslots, align 4, !dbg !2247, !tbaa !658
  %11 = sext i32 %10 to i64, !dbg !2250
  %12 = icmp slt i64 %9, %11, !dbg !2250
  br i1 %12, label %5, label %13, !dbg !2251, !llvm.loop !2257

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2259
  %15 = load i8*, i8** %14, align 8, !dbg !2259, !tbaa !2253
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2261
  br i1 %16, label %18, label %17, !dbg !2262

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2263
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2265, !tbaa !2266
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2267, !tbaa !2253
  br label %18, !dbg !2268

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2269
  br i1 %19, label %22, label %20, !dbg !2271

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2272
  tail call void @free(i8* %21) #11, !dbg !2274
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2275, !tbaa !586
  br label %22, !dbg !2276

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2277, !tbaa !658
  ret void, !dbg !2278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2279 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2283, metadata !579), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2284, metadata !579), !dbg !2286
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2287
  ret i8* %3, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2289 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2293, metadata !579), !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2294, metadata !579), !dbg !2308
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2295, metadata !579), !dbg !2309
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2296, metadata !579), !dbg !2310
  %5 = tail call i32* @__errno_location() #17, !dbg !2311
  %6 = load i32, i32* %5, align 4, !dbg !2311, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2297, metadata !579), !dbg !2312
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2313, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2298, metadata !579), !dbg !2314
  %8 = icmp slt i32 %0, 0, !dbg !2315
  br i1 %8, label %9, label %10, !dbg !2317

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2318
  unreachable, !dbg !2318

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2319, !tbaa !658
  %12 = icmp sgt i32 %11, %0, !dbg !2320
  br i1 %12, label %34, label %13, !dbg !2321

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2322
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2323
  br i1 %15, label %16, label %17, !dbg !2325

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2326
  unreachable, !dbg !2326

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2327
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2327
  %20 = add nsw i32 %0, 1, !dbg !2328
  %21 = sext i32 %20 to i64, !dbg !2329
  %22 = shl nsw i64 %21, 4, !dbg !2330
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2331
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2331
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2298, metadata !579), !dbg !2314
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2332, !tbaa !586
  br i1 %14, label %25, label %26, !dbg !2333

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2334, !tbaa.struct !2336
  br label %26, !dbg !2337

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2338, !tbaa !658
  %28 = sext i32 %27 to i64, !dbg !2339
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2339
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2340
  %31 = sub nsw i32 %20, %27, !dbg !2341
  %32 = sext i32 %31 to i64, !dbg !2342
  %33 = shl nsw i64 %32, 4, !dbg !2343
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2340
  store i32 %20, i32* @nslots, align 4, !dbg !2344, !tbaa !658
  br label %34, !dbg !2345

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2298, metadata !579), !dbg !2314
  %36 = sext i32 %0 to i64, !dbg !2346
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2347
  %38 = load i64, i64* %37, align 8, !dbg !2347, !tbaa !2266
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2302, metadata !579), !dbg !2348
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2349
  %40 = load i8*, i8** %39, align 8, !dbg !2349, !tbaa !2253
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2304, metadata !579), !dbg !2350
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2351
  %42 = load i32, i32* %41, align 4, !dbg !2351, !tbaa !1345
  %43 = or i32 %42, 1, !dbg !2352
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2305, metadata !579), !dbg !2353
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2354
  %45 = load i32, i32* %44, align 8, !dbg !2354, !tbaa !1285
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2355
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2356
  %48 = load i8*, i8** %47, align 8, !dbg !2356, !tbaa !1371
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2357
  %50 = load i8*, i8** %49, align 8, !dbg !2357, !tbaa !1374
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2306, metadata !579), !dbg !2359
  %52 = icmp ugt i64 %38, %51, !dbg !2360
  br i1 %52, label %63, label %53, !dbg !2362

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2302, metadata !579), !dbg !2348
  store i64 %54, i64* %37, align 8, !dbg !2365, !tbaa !2266
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2366
  br i1 %55, label %57, label %56, !dbg !2368

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2369
  br label %57, !dbg !2369

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2194, metadata !579) #11, !dbg !2370
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2304, metadata !579), !dbg !2350
  store i8* %58, i8** %39, align 8, !dbg !2373, !tbaa !2253
  %59 = load i32, i32* %44, align 8, !dbg !2374, !tbaa !1285
  %60 = load i8*, i8** %47, align 8, !dbg !2375, !tbaa !1371
  %61 = load i8*, i8** %49, align 8, !dbg !2376, !tbaa !1374
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2377
  br label %63, !dbg !2378

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2304, metadata !579), !dbg !2350
  store i32 %6, i32* %5, align 4, !dbg !2379, !tbaa !658
  ret i8* %64, !dbg !2380
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2381 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2385, metadata !579), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2386, metadata !579), !dbg !2389
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2387, metadata !579), !dbg !2390
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2391
  ret i8* %4, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2393 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2397, metadata !579), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !579) #11, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2284, metadata !579) #11, !dbg !2401
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2402
  ret i8* %2, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2404 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2408, metadata !579), !dbg !2410
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2409, metadata !579), !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2385, metadata !579) #11, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2386, metadata !579) #11, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2387, metadata !579) #11, !dbg !2415
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2416
  ret i8* %3, !dbg !2417
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2418 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2426, metadata !2432), !dbg !2433
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2422, metadata !579), !dbg !2435
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2423, metadata !579), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2424, metadata !579), !dbg !2437
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2425, metadata !579), !dbg !2439
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2431, metadata !579) #11, !dbg !2440
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2441
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2426, metadata !579) #11, !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2433
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2433
  %8 = icmp eq i32 %1, 10, !dbg !2443
  br i1 %8, label %9, label %10, !dbg !2445

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2446, !noalias !2447
  unreachable, !dbg !2446

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2426, metadata !2442) #11, !dbg !2433
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2450
  store i32 %1, i32* %11, align 8, !dbg !2450, !alias.scope !2447
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2450
  %13 = bitcast i32* %12 to i8*, !dbg !2450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2425, metadata !579), !dbg !2439
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2453
  ret i8* %14, !dbg !2454
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2455 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2426, metadata !2432), !dbg !2464
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2459, metadata !579), !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2460, metadata !579), !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2461, metadata !579), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2462, metadata !579), !dbg !2469
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2470
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2463, metadata !579), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2431, metadata !579) #11, !dbg !2472
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2473
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2426, metadata !579) #11, !dbg !2464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2464
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2464
  %9 = icmp eq i32 %1, 10, !dbg !2474
  br i1 %9, label %10, label %11, !dbg !2475

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2476, !noalias !2477
  unreachable, !dbg !2476

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2426, metadata !2442) #11, !dbg !2464
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2480
  store i32 %1, i32* %12, align 8, !dbg !2480, !alias.scope !2477
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2480
  %14 = bitcast i32* %13 to i8*, !dbg !2480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2463, metadata !579), !dbg !2471
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2483
  ret i8* %15, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2485 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2426, metadata !2432), !dbg !2491
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2489, metadata !579), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2490, metadata !579), !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2422, metadata !579) #11, !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2423, metadata !579) #11, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !579) #11, !dbg !2498
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2425, metadata !579) #11, !dbg !2500
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2431, metadata !579) #11, !dbg !2501
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2502
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2426, metadata !579) #11, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2491
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2491
  %7 = icmp eq i32 %0, 10, !dbg !2503
  br i1 %7, label %8, label %9, !dbg !2504

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2505, !noalias !2506
  unreachable, !dbg !2505

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2491
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2509
  store i32 %0, i32* %10, align 8, !dbg !2509, !alias.scope !2506
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2509
  %12 = bitcast i32* %11 to i8*, !dbg !2509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2509
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2510
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2425, metadata !579) #11, !dbg !2500
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2512
  ret i8* %13, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2514 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2426, metadata !2432), !dbg !2521
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2518, metadata !579), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2519, metadata !579), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2520, metadata !579), !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2459, metadata !579) #11, !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2460, metadata !579) #11, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2461, metadata !579) #11, !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2462, metadata !579) #11, !dbg !2530
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2463, metadata !579) #11, !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2431, metadata !579) #11, !dbg !2533
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2534
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2426, metadata !579) #11, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2521
  %8 = icmp eq i32 %0, 10, !dbg !2535
  br i1 %8, label %9, label %10, !dbg !2536

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2537, !noalias !2538
  unreachable, !dbg !2537

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2521
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2541
  store i32 %0, i32* %11, align 8, !dbg !2541, !alias.scope !2538
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2541
  %13 = bitcast i32* %12 to i8*, !dbg !2541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2541
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2463, metadata !579) #11, !dbg !2532
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2544
  ret i8* %14, !dbg !2545
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2546 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !579), !dbg !2554
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2551, metadata !579), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2552, metadata !579), !dbg !2556
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2558, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2553, metadata !579), !dbg !2560
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1304, metadata !579), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1305, metadata !579), !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1306, metadata !579), !dbg !2564
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1307, metadata !579), !dbg !2565
  %6 = lshr i8 %2, 5, !dbg !2566
  %7 = zext i8 %6 to i64, !dbg !2566
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2567
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1308, metadata !579), !dbg !2568
  %9 = and i8 %2, 31, !dbg !2569
  %10 = zext i8 %9 to i32, !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1310, metadata !579), !dbg !2571
  %11 = load i32, i32* %8, align 4, !dbg !2572, !tbaa !658
  %12 = lshr i32 %11, %10, !dbg !2573
  %13 = and i32 %12, 1, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1311, metadata !579), !dbg !2575
  %14 = xor i32 %13, 1, !dbg !2576
  %15 = shl i32 %14, %10, !dbg !2577
  %16 = xor i32 %15, %11, !dbg !2578
  store i32 %16, i32* %8, align 4, !dbg !2578, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2553, metadata !579), !dbg !2560
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2579
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2580
  ret i8* %17, !dbg !2581
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2582 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2586, metadata !579), !dbg !2588
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2587, metadata !579), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !579) #11, !dbg !2590
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2551, metadata !579) #11, !dbg !2592
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2552, metadata !579) #11, !dbg !2593
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2595, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2553, metadata !579) #11, !dbg !2596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1304, metadata !579) #11, !dbg !2597
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1305, metadata !579) #11, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1306, metadata !579) #11, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1307, metadata !579) #11, !dbg !2601
  %5 = lshr i8 %1, 5, !dbg !2602
  %6 = zext i8 %5 to i64, !dbg !2602
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1308, metadata !579) #11, !dbg !2604
  %8 = and i8 %1, 31, !dbg !2605
  %9 = zext i8 %8 to i32, !dbg !2606
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1310, metadata !579) #11, !dbg !2607
  %10 = load i32, i32* %7, align 4, !dbg !2608, !tbaa !658
  %11 = lshr i32 %10, %9, !dbg !2609
  %12 = and i32 %11, 1, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1311, metadata !579) #11, !dbg !2611
  %13 = xor i32 %12, 1, !dbg !2612
  %14 = shl i32 %13, %9, !dbg !2613
  %15 = xor i32 %14, %10, !dbg !2614
  store i32 %15, i32* %7, align 4, !dbg !2614, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2553, metadata !579) #11, !dbg !2596
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2616
  ret i8* %16, !dbg !2617
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2618 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2620, metadata !579), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2586, metadata !579) #11, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2587, metadata !579) #11, !dbg !2624
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !579) #11, !dbg !2625
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2551, metadata !579) #11, !dbg !2627
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2552, metadata !579) #11, !dbg !2628
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2629
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2630, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2553, metadata !579) #11, !dbg !2631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1304, metadata !579) #11, !dbg !2632
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !579) #11, !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1306, metadata !579) #11, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1307, metadata !579) #11, !dbg !2636
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1308, metadata !579) #11, !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1310, metadata !579) #11, !dbg !2639
  %5 = load i32, i32* %4, align 4, !dbg !2640, !tbaa !658
  %6 = or i32 %5, 67108864, !dbg !2641
  store i32 %6, i32* %4, align 4, !dbg !2641, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2553, metadata !579) #11, !dbg !2631
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2643
  ret i8* %7, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2645 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2647, metadata !579), !dbg !2649
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2648, metadata !579), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !579) #11, !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2551, metadata !579) #11, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2552, metadata !579) #11, !dbg !2654
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2656, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2553, metadata !579) #11, !dbg !2657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1304, metadata !579) #11, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !579) #11, !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1306, metadata !579) #11, !dbg !2661
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1307, metadata !579) #11, !dbg !2662
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2663
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1308, metadata !579) #11, !dbg !2664
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1310, metadata !579) #11, !dbg !2665
  %6 = load i32, i32* %5, align 4, !dbg !2666, !tbaa !658
  %7 = or i32 %6, 67108864, !dbg !2667
  store i32 %7, i32* %5, align 4, !dbg !2667, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2553, metadata !579) #11, !dbg !2657
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2669
  ret i8* %8, !dbg !2670
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2671 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2426, metadata !2432), !dbg !2677
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2673, metadata !579), !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2674, metadata !579), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2675, metadata !579), !dbg !2681
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2431, metadata !579) #11, !dbg !2683
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2684
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2684
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2426, metadata !579) #11, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !2442) #11, !dbg !2677
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2677
  %9 = icmp eq i32 %1, 10, !dbg !2685
  br i1 %9, label %10, label %11, !dbg !2686

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2687, !noalias !2688
  unreachable, !dbg !2687

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2426, metadata !2442) #11, !dbg !2677
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2691
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2692
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2693
  store i32 %1, i32* %13, align 8, !dbg !2693
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2693
  %15 = bitcast i32* %14 to i8*, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2676, metadata !579), !dbg !2694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1304, metadata !579), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !579), !dbg !2697
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1306, metadata !579), !dbg !2698
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1307, metadata !579), !dbg !2699
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2700
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1308, metadata !579), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1310, metadata !579), !dbg !2702
  %17 = load i32, i32* %16, align 4, !dbg !2703, !tbaa !658
  %18 = or i32 %17, 67108864, !dbg !2704
  store i32 %18, i32* %16, align 4, !dbg !2704, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2676, metadata !579), !dbg !2694
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2705
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2706
  ret i8* %19, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2708 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2712, metadata !579), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2713, metadata !579), !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2714, metadata !579), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2715, metadata !579), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2720, metadata !579) #11, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2725, metadata !579) #11, !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2726, metadata !579) #11, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2727, metadata !579) #11, !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2728, metadata !579) #11, !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2737, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2729, metadata !579) #11, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1353, metadata !579) #11, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1354, metadata !579) #11, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1355, metadata !579) #11, !dbg !2742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1353, metadata !579) #11, !dbg !2739
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1353, metadata !579) #11, !dbg !2739
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  store i32 10, i32* %7, align 8, !dbg !2744, !tbaa !1285
  %8 = icmp ne i8* %1, null, !dbg !2745
  %9 = icmp ne i8* %2, null, !dbg !2746
  %10 = and i1 %8, %9, !dbg !2747
  br i1 %10, label %12, label %11, !dbg !2747

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2748
  unreachable, !dbg !2748

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2749
  store i8* %1, i8** %13, align 8, !dbg !2750, !tbaa !1371
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2751
  store i8* %2, i8** %14, align 8, !dbg !2752, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2729, metadata !579) #11, !dbg !2738
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2754
  ret i8* %15, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2721 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2720, metadata !579), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2725, metadata !579), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2726, metadata !579), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2727, metadata !579), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2728, metadata !579), !dbg !2760
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2761
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2762, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2729, metadata !579), !dbg !2763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1353, metadata !579) #11, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1354, metadata !579) #11, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1355, metadata !579) #11, !dbg !2767
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1353, metadata !579) #11, !dbg !2764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1353, metadata !579) #11, !dbg !2764
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2768
  store i32 10, i32* %8, align 8, !dbg !2769, !tbaa !1285
  %9 = icmp ne i8* %1, null, !dbg !2770
  %10 = icmp ne i8* %2, null, !dbg !2771
  %11 = and i1 %9, %10, !dbg !2772
  br i1 %11, label %13, label %12, !dbg !2772

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2773
  unreachable, !dbg !2773

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2774
  store i8* %1, i8** %14, align 8, !dbg !2775, !tbaa !1371
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2776
  store i8* %2, i8** %15, align 8, !dbg !2777, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2729, metadata !579), !dbg !2763
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2779
  ret i8* %16, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2781 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2785, metadata !579), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2786, metadata !579), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2787, metadata !579), !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2712, metadata !579) #11, !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !579) #11, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2714, metadata !579) #11, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2715, metadata !579) #11, !dbg !2795
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2720, metadata !579) #11, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2725, metadata !579) #11, !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2726, metadata !579) #11, !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2727, metadata !579) #11, !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2728, metadata !579) #11, !dbg !2801
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2802
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2803, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2729, metadata !579) #11, !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1353, metadata !579) #11, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1354, metadata !579) #11, !dbg !2807
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1355, metadata !579) #11, !dbg !2808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1353, metadata !579) #11, !dbg !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1353, metadata !579) #11, !dbg !2805
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2809
  store i32 10, i32* %6, align 8, !dbg !2810, !tbaa !1285
  %7 = icmp ne i8* %0, null, !dbg !2811
  %8 = icmp ne i8* %1, null, !dbg !2812
  %9 = and i1 %7, %8, !dbg !2813
  br i1 %9, label %11, label %10, !dbg !2813

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2814
  unreachable, !dbg !2814

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2815
  store i8* %0, i8** %12, align 8, !dbg !2816, !tbaa !1371
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2817
  store i8* %1, i8** %13, align 8, !dbg !2818, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2729, metadata !579) #11, !dbg !2804
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2819
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2820
  ret i8* %14, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2822 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2826, metadata !579), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2827, metadata !579), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2828, metadata !579), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2829, metadata !579), !dbg !2833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2720, metadata !579) #11, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2725, metadata !579) #11, !dbg !2836
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2726, metadata !579) #11, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2727, metadata !579) #11, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2728, metadata !579) #11, !dbg !2839
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2841, !tbaa.struct !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2729, metadata !579) #11, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1353, metadata !579) #11, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1354, metadata !579) #11, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1355, metadata !579) #11, !dbg !2846
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1353, metadata !579) #11, !dbg !2843
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1353, metadata !579) #11, !dbg !2843
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2847
  store i32 10, i32* %7, align 8, !dbg !2848, !tbaa !1285
  %8 = icmp ne i8* %0, null, !dbg !2849
  %9 = icmp ne i8* %1, null, !dbg !2850
  %10 = and i1 %8, %9, !dbg !2851
  br i1 %10, label %12, label %11, !dbg !2851

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2852
  unreachable, !dbg !2852

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2853
  store i8* %0, i8** %13, align 8, !dbg !2854, !tbaa !1371
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2855
  store i8* %1, i8** %14, align 8, !dbg !2856, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2729, metadata !579) #11, !dbg !2842
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2858
  ret i8* %15, !dbg !2859
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2860 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2864, metadata !579), !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2865, metadata !579), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2866, metadata !579), !dbg !2869
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2870
  ret i8* %4, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2872 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2876, metadata !579), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2877, metadata !579), !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2864, metadata !579) #11, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !579) #11, !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2866, metadata !579) #11, !dbg !2883
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2884
  ret i8* %3, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2886 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2890, metadata !579), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2891, metadata !579), !dbg !2893
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2864, metadata !579) #11, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2865, metadata !579) #11, !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2866, metadata !579) #11, !dbg !2897
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2898
  ret i8* %3, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !579), !dbg !2905
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2890, metadata !579) #11, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !579) #11, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2864, metadata !579) #11, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !579) #11, !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2866, metadata !579) #11, !dbg !2912
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2913
  ret i8* %2, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.timespec* @get_root_dev_ino(%struct.timespec*) local_unnamed_addr #6 !dbg !2915 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata %struct.timespec* %0, i64 0, metadata !2925, metadata !579), !dbg !2948
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #11, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2926, metadata !579), !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 0, metadata !2951, metadata !579) #11, !dbg !2958
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2957, metadata !579) #11, !dbg !2958
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), %struct.stat* nonnull %2) #11, !dbg !2961
  %5 = icmp eq i32 %4, 0, !dbg !2962
  br i1 %5, label %6, label %13, !dbg !2963

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !2964
  %8 = load i64, i64* %7, align 8, !dbg !2964, !tbaa !762
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !2965
  store i64 %8, i64* %9, align 8, !dbg !2966, !tbaa !846
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !2967
  %11 = load i64, i64* %10, align 8, !dbg !2967, !tbaa !766
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !2968
  store i64 %11, i64* %12, align 8, !dbg !2969, !tbaa !848
  br label %13, !dbg !2970

; <label>:13:                                     ; preds = %1, %6
  %14 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #11, !dbg !2971
  ret %struct.timespec* %14, !dbg !2971
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2972 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3029, metadata !579), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3030, metadata !579), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !579), !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3032, metadata !579), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3033, metadata !579), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3034, metadata !579), !dbg !3040
  %7 = icmp eq i8* %1, null, !dbg !3041
  br i1 %7, label %10, label %8, !dbg !3043

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3044
  br label %12, !dbg !3044

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3045
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #11, !dbg !3046
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3046
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #11, !dbg !3047
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3047
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
  ], !dbg !3048

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3049
  unreachable, !dbg !3049

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #11, !dbg !3051
  %20 = load i8*, i8** %4, align 8, !dbg !3051, !tbaa !586
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3051
  br label %146, !dbg !3052

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #11, !dbg !3053
  %24 = load i8*, i8** %4, align 8, !dbg !3053, !tbaa !586
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3053
  %26 = load i8*, i8** %25, align 8, !dbg !3053, !tbaa !586
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3053
  br label %146, !dbg !3054

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #11, !dbg !3055
  %30 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !586
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %32 = load i8*, i8** %31, align 8, !dbg !3055, !tbaa !586
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %34 = load i8*, i8** %33, align 8, !dbg !3055, !tbaa !586
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3055
  br label %146, !dbg !3056

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #11, !dbg !3057
  %38 = load i8*, i8** %4, align 8, !dbg !3057, !tbaa !586
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3057
  %40 = load i8*, i8** %39, align 8, !dbg !3057, !tbaa !586
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3057
  %42 = load i8*, i8** %41, align 8, !dbg !3057, !tbaa !586
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3057
  %44 = load i8*, i8** %43, align 8, !dbg !3057, !tbaa !586
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3057
  br label %146, !dbg !3058

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #11, !dbg !3059
  %48 = load i8*, i8** %4, align 8, !dbg !3059, !tbaa !586
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3059
  %50 = load i8*, i8** %49, align 8, !dbg !3059, !tbaa !586
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3059
  %52 = load i8*, i8** %51, align 8, !dbg !3059, !tbaa !586
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3059
  %54 = load i8*, i8** %53, align 8, !dbg !3059, !tbaa !586
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3059
  %56 = load i8*, i8** %55, align 8, !dbg !3059, !tbaa !586
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3059
  br label %146, !dbg !3060

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #11, !dbg !3061
  %60 = load i8*, i8** %4, align 8, !dbg !3061, !tbaa !586
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3061
  %62 = load i8*, i8** %61, align 8, !dbg !3061, !tbaa !586
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3061
  %64 = load i8*, i8** %63, align 8, !dbg !3061, !tbaa !586
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3061
  %66 = load i8*, i8** %65, align 8, !dbg !3061, !tbaa !586
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3061
  %68 = load i8*, i8** %67, align 8, !dbg !3061, !tbaa !586
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3061
  %70 = load i8*, i8** %69, align 8, !dbg !3061, !tbaa !586
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3061
  br label %146, !dbg !3062

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #11, !dbg !3063
  %74 = load i8*, i8** %4, align 8, !dbg !3063, !tbaa !586
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3063
  %76 = load i8*, i8** %75, align 8, !dbg !3063, !tbaa !586
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3063
  %78 = load i8*, i8** %77, align 8, !dbg !3063, !tbaa !586
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3063
  %80 = load i8*, i8** %79, align 8, !dbg !3063, !tbaa !586
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3063
  %82 = load i8*, i8** %81, align 8, !dbg !3063, !tbaa !586
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3063
  %84 = load i8*, i8** %83, align 8, !dbg !3063, !tbaa !586
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3063
  %86 = load i8*, i8** %85, align 8, !dbg !3063, !tbaa !586
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3063
  br label %146, !dbg !3064

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #11, !dbg !3065
  %90 = load i8*, i8** %4, align 8, !dbg !3065, !tbaa !586
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3065
  %92 = load i8*, i8** %91, align 8, !dbg !3065, !tbaa !586
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3065
  %94 = load i8*, i8** %93, align 8, !dbg !3065, !tbaa !586
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3065
  %96 = load i8*, i8** %95, align 8, !dbg !3065, !tbaa !586
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3065
  %98 = load i8*, i8** %97, align 8, !dbg !3065, !tbaa !586
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3065
  %100 = load i8*, i8** %99, align 8, !dbg !3065, !tbaa !586
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3065
  %102 = load i8*, i8** %101, align 8, !dbg !3065, !tbaa !586
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3065
  %104 = load i8*, i8** %103, align 8, !dbg !3065, !tbaa !586
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3065
  br label %146, !dbg !3066

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #11, !dbg !3067
  %108 = load i8*, i8** %4, align 8, !dbg !3067, !tbaa !586
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3067
  %110 = load i8*, i8** %109, align 8, !dbg !3067, !tbaa !586
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3067
  %112 = load i8*, i8** %111, align 8, !dbg !3067, !tbaa !586
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3067
  %114 = load i8*, i8** %113, align 8, !dbg !3067, !tbaa !586
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3067
  %116 = load i8*, i8** %115, align 8, !dbg !3067, !tbaa !586
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3067
  %118 = load i8*, i8** %117, align 8, !dbg !3067, !tbaa !586
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3067
  %120 = load i8*, i8** %119, align 8, !dbg !3067, !tbaa !586
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3067
  %122 = load i8*, i8** %121, align 8, !dbg !3067, !tbaa !586
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3067
  %124 = load i8*, i8** %123, align 8, !dbg !3067, !tbaa !586
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3067
  br label %146, !dbg !3068

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #11, !dbg !3069
  %128 = load i8*, i8** %4, align 8, !dbg !3069, !tbaa !586
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3069
  %130 = load i8*, i8** %129, align 8, !dbg !3069, !tbaa !586
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3069
  %132 = load i8*, i8** %131, align 8, !dbg !3069, !tbaa !586
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3069
  %134 = load i8*, i8** %133, align 8, !dbg !3069, !tbaa !586
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3069
  %136 = load i8*, i8** %135, align 8, !dbg !3069, !tbaa !586
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3069
  %138 = load i8*, i8** %137, align 8, !dbg !3069, !tbaa !586
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3069
  %140 = load i8*, i8** %139, align 8, !dbg !3069, !tbaa !586
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3069
  %142 = load i8*, i8** %141, align 8, !dbg !3069, !tbaa !586
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3069
  %144 = load i8*, i8** %143, align 8, !dbg !3069, !tbaa !586
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3069
  br label %146, !dbg !3070

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3072 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3076, metadata !579), !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3077, metadata !579), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3078, metadata !579), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3079, metadata !579), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3080, metadata !579), !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3081, metadata !579), !dbg !3087
  br label %6, !dbg !3088

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3081, metadata !579), !dbg !3087
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3090
  %9 = load i8*, i8** %8, align 8, !dbg !3090, !tbaa !586
  %10 = icmp eq i8* %9, null, !dbg !3092
  %11 = add i64 %7, 1, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3081, metadata !579), !dbg !3087
  br i1 %10, label %12, label %6, !dbg !3092, !llvm.loop !3094

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3096
  ret void, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3098 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3109, metadata !579), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3110, metadata !579), !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3111, metadata !579), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3112, metadata !579), !dbg !3120
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3113, metadata !579), !dbg !3121
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3122
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3122
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3115, metadata !579), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %11 = load i32, i32* %8, align 8, !dbg !3125
  %12 = icmp ult i32 %11, 41, !dbg !3125
  br i1 %12, label %13, label %18, !dbg !3125

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3125
  %15 = sext i32 %11 to i64, !dbg !3125
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3125
  %17 = add i32 %11, 8, !dbg !3125
  store i32 %17, i32* %8, align 8, !dbg !3125
  br label %21, !dbg !3125

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3125
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3125
  store i8* %20, i8** %10, align 8, !dbg !3125
  br label %21, !dbg !3125

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3125
  %25 = load i8*, i8** %24, align 8, !dbg !3125
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3128
  store i8* %25, i8** %26, align 16, !dbg !3129, !tbaa !586
  %27 = icmp eq i8* %25, null, !dbg !3130
  br i1 %27, label %30, label %28, !dbg !3131

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %29 = icmp ult i32 %22, 41, !dbg !3125
  br i1 %29, label %35, label %32, !dbg !3125

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3133
  ret void, !dbg !3133

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3125
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3125
  store i8* %34, i8** %10, align 8, !dbg !3125
  br label %40, !dbg !3125

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3125
  %37 = sext i32 %22 to i64, !dbg !3125
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3125
  %39 = add i32 %22, 8, !dbg !3125
  store i32 %39, i32* %8, align 8, !dbg !3125
  br label %40, !dbg !3125

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3125
  %44 = load i8*, i8** %43, align 8, !dbg !3125
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3128
  store i8* %44, i8** %45, align 8, !dbg !3129, !tbaa !586
  %46 = icmp eq i8* %44, null, !dbg !3130
  br i1 %46, label %30, label %47, !dbg !3131

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %48 = icmp ult i32 %41, 41, !dbg !3125
  br i1 %48, label %52, label %49, !dbg !3125

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3125
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3125
  store i8* %51, i8** %10, align 8, !dbg !3125
  br label %57, !dbg !3125

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3125
  %54 = sext i32 %41 to i64, !dbg !3125
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3125
  %56 = add i32 %41, 8, !dbg !3125
  store i32 %56, i32* %8, align 8, !dbg !3125
  br label %57, !dbg !3125

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3125
  %61 = load i8*, i8** %60, align 8, !dbg !3125
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3128
  store i8* %61, i8** %62, align 16, !dbg !3129, !tbaa !586
  %63 = icmp eq i8* %61, null, !dbg !3130
  br i1 %63, label %30, label %64, !dbg !3131

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %65 = icmp ult i32 %58, 41, !dbg !3125
  br i1 %65, label %69, label %66, !dbg !3125

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3125
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3125
  store i8* %68, i8** %10, align 8, !dbg !3125
  br label %74, !dbg !3125

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3125
  %71 = sext i32 %58 to i64, !dbg !3125
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3125
  %73 = add i32 %58, 8, !dbg !3125
  store i32 %73, i32* %8, align 8, !dbg !3125
  br label %74, !dbg !3125

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3125
  %78 = load i8*, i8** %77, align 8, !dbg !3125
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3128
  store i8* %78, i8** %79, align 8, !dbg !3129, !tbaa !586
  %80 = icmp eq i8* %78, null, !dbg !3130
  br i1 %80, label %30, label %81, !dbg !3131

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %82 = icmp ult i32 %75, 41, !dbg !3125
  br i1 %82, label %86, label %83, !dbg !3125

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3125
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3125
  store i8* %85, i8** %10, align 8, !dbg !3125
  br label %91, !dbg !3125

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3125
  %88 = sext i32 %75 to i64, !dbg !3125
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3125
  %90 = add i32 %75, 8, !dbg !3125
  store i32 %90, i32* %8, align 8, !dbg !3125
  br label %91, !dbg !3125

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3125
  %95 = load i8*, i8** %94, align 8, !dbg !3125
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3128
  store i8* %95, i8** %96, align 16, !dbg !3129, !tbaa !586
  %97 = icmp eq i8* %95, null, !dbg !3130
  br i1 %97, label %30, label %98, !dbg !3131

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %99 = icmp ult i32 %92, 41, !dbg !3125
  br i1 %99, label %103, label %100, !dbg !3125

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3125
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3125
  store i8* %102, i8** %10, align 8, !dbg !3125
  br label %108, !dbg !3125

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3125
  %105 = sext i32 %92 to i64, !dbg !3125
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3125
  %107 = add i32 %92, 8, !dbg !3125
  store i32 %107, i32* %8, align 8, !dbg !3125
  br label %108, !dbg !3125

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3125
  %111 = load i8*, i8** %110, align 8, !dbg !3125
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3128
  store i8* %111, i8** %112, align 8, !dbg !3129, !tbaa !586
  %113 = icmp eq i8* %111, null, !dbg !3130
  br i1 %113, label %30, label %114, !dbg !3131

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %115 = load i8*, i8** %10, align 8, !dbg !3125
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3125
  store i8* %116, i8** %10, align 8, !dbg !3125
  %117 = bitcast i8* %115 to i8**, !dbg !3125
  %118 = load i8*, i8** %117, align 8, !dbg !3125
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3128
  store i8* %118, i8** %119, align 16, !dbg !3129, !tbaa !586
  %120 = icmp eq i8* %118, null, !dbg !3130
  br i1 %120, label %30, label %121, !dbg !3131

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %122 = load i8*, i8** %10, align 8, !dbg !3125
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3125
  store i8* %123, i8** %10, align 8, !dbg !3125
  %124 = bitcast i8* %122 to i8**, !dbg !3125
  %125 = load i8*, i8** %124, align 8, !dbg !3125
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3128
  store i8* %125, i8** %126, align 8, !dbg !3129, !tbaa !586
  %127 = icmp eq i8* %125, null, !dbg !3130
  br i1 %127, label %30, label %128, !dbg !3131

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %129 = load i8*, i8** %10, align 8, !dbg !3125
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3125
  store i8* %130, i8** %10, align 8, !dbg !3125
  %131 = bitcast i8* %129 to i8**, !dbg !3125
  %132 = load i8*, i8** %131, align 8, !dbg !3125
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3128
  store i8* %132, i8** %133, align 16, !dbg !3129, !tbaa !586
  %134 = icmp eq i8* %132, null, !dbg !3130
  br i1 %134, label %30, label %135, !dbg !3131

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !579), !dbg !3124
  %136 = load i8*, i8** %10, align 8, !dbg !3125
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3125
  store i8* %137, i8** %10, align 8, !dbg !3125
  %138 = bitcast i8* %136 to i8**, !dbg !3125
  %139 = load i8*, i8** %138, align 8, !dbg !3125
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3128
  store i8* %139, i8** %140, align 8, !dbg !3129, !tbaa !586
  %141 = icmp eq i8* %139, null, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3114, metadata !579), !dbg !3124
  %142 = select i1 %141, i64 9, i64 10, !dbg !3131
  br label %30, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3134 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3138, metadata !579), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3139, metadata !579), !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3140, metadata !579), !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3141, metadata !579), !dbg !3152
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3153
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3142, metadata !579), !dbg !3154
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3155
  call void @llvm.va_start(i8* nonnull %6), !dbg !3155
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3156
  call void @llvm.va_end(i8* nonnull %6), !dbg !3157
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3158
  ret void, !dbg !3158
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3159 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #11, !dbg !3160
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #11, !dbg !3160
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #11, !dbg !3161
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #11, !dbg !3161
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !3162
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3162, !tbaa !586
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3162
  ret void, !dbg !3163
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3166, metadata !579), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3167, metadata !579), !dbg !3169
  %3 = udiv i64 9223372036854775807, %1, !dbg !3170
  %4 = icmp ult i64 %3, %0, !dbg !3170
  br i1 %4, label %5, label %6, !dbg !3172

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3173
  unreachable, !dbg !3173

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3175, metadata !579) #11, !dbg !3182
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3181, metadata !579) #11, !dbg !3185
  %9 = icmp eq i8* %8, null, !dbg !3186
  %10 = icmp ne i64 %7, 0, !dbg !3188
  %11 = and i1 %10, %9, !dbg !3189
  br i1 %11, label %12, label %13, !dbg !3189

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3191
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3176 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3175, metadata !579), !dbg !3192
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3181, metadata !579), !dbg !3194
  %3 = icmp eq i8* %2, null, !dbg !3195
  %4 = icmp ne i64 %0, 0, !dbg !3196
  %5 = and i1 %4, %3, !dbg !3197
  br i1 %5, label %6, label %7, !dbg !3197

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3198
  unreachable, !dbg !3198

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3199
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3204, metadata !579), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3205, metadata !579), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3206, metadata !579), !dbg !3209
  %4 = udiv i64 9223372036854775807, %2, !dbg !3210
  %5 = icmp ult i64 %4, %1, !dbg !3210
  br i1 %5, label %6, label %7, !dbg !3212

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3213
  unreachable, !dbg !3213

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579) #11, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3220, metadata !579) #11, !dbg !3223
  %9 = icmp eq i64 %8, 0, !dbg !3224
  %10 = icmp ne i8* %0, null, !dbg !3226
  %11 = and i1 %10, %9, !dbg !3227
  br i1 %11, label %12, label %13, !dbg !3227

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3228
  br label %19, !dbg !3230

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3215, metadata !579) #11, !dbg !3221
  %15 = icmp eq i8* %14, null, !dbg !3232
  %16 = icmp ne i64 %8, 0, !dbg !3234
  %17 = and i1 %16, %15, !dbg !3235
  br i1 %17, label %18, label %19, !dbg !3235

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3236
  unreachable, !dbg !3236

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3237
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3220, metadata !579), !dbg !3239
  %3 = icmp eq i64 %1, 0, !dbg !3240
  %4 = icmp ne i8* %0, null, !dbg !3241
  %5 = and i1 %4, %3, !dbg !3242
  br i1 %5, label %6, label %7, !dbg !3242

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3243
  br label %13, !dbg !3244

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3215, metadata !579), !dbg !3238
  %9 = icmp eq i8* %8, null, !dbg !3246
  %10 = icmp ne i64 %1, 0, !dbg !3247
  %11 = and i1 %10, %9, !dbg !3248
  br i1 %11, label %12, label %13, !dbg !3248

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3249
  unreachable, !dbg !3249

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3250
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !537 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !542, metadata !579), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !543, metadata !579), !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !544, metadata !579), !dbg !3253
  %4 = load i64, i64* %1, align 8, !dbg !3254, !tbaa !1082
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !545, metadata !579), !dbg !3255
  %5 = icmp eq i8* %0, null, !dbg !3256
  br i1 %5, label %6, label %13, !dbg !3258

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3259
  br i1 %7, label %8, label %17, !dbg !3262

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !545, metadata !579), !dbg !3255
  %10 = icmp ugt i64 %2, 128, !dbg !3265
  %11 = zext i1 %10 to i64, !dbg !3265
  %12 = add nuw nsw i64 %9, %11, !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !545, metadata !579), !dbg !3255
  br label %17, !dbg !3267

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3268
  %15 = icmp ugt i64 %14, %4, !dbg !3271
  br i1 %15, label %20, label %16, !dbg !3272

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3273
  unreachable, !dbg !3273

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !545, metadata !579), !dbg !3255
  store i64 %18, i64* %1, align 8, !dbg !3274, !tbaa !1082
  %19 = mul i64 %18, %2, !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579) #11, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3220, metadata !579) #11, !dbg !3278
  br label %27, !dbg !3279

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3280
  %22 = add i64 %4, 1, !dbg !3281
  %23 = add i64 %22, %21, !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !545, metadata !579), !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !545, metadata !579), !dbg !3255
  store i64 %23, i64* %1, align 8, !dbg !3274, !tbaa !1082
  %24 = mul i64 %23, %2, !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579) #11, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3220, metadata !579) #11, !dbg !3278
  %25 = icmp eq i64 %24, 0, !dbg !3283
  br i1 %25, label %26, label %27, !dbg !3279

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3284
  br label %34, !dbg !3285

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3286
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3215, metadata !579) #11, !dbg !3276
  %30 = icmp eq i8* %29, null, !dbg !3287
  %31 = icmp ne i64 %28, 0, !dbg !3288
  %32 = and i1 %31, %30, !dbg !3289
  br i1 %32, label %33, label %34, !dbg !3289

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3290
  unreachable, !dbg !3290

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3291
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3292 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3294, metadata !579), !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3175, metadata !579) #11, !dbg !3296
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3181, metadata !579) #11, !dbg !3299
  %3 = icmp eq i8* %2, null, !dbg !3300
  %4 = icmp ne i64 %0, 0, !dbg !3301
  %5 = and i1 %4, %3, !dbg !3302
  br i1 %5, label %6, label %7, !dbg !3302

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3303
  unreachable, !dbg !3303

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3304
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3305 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3309, metadata !579), !dbg !3311
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3310, metadata !579), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !542, metadata !579) #11, !dbg !3313
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !543, metadata !579) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !544, metadata !579) #11, !dbg !3316
  %3 = load i64, i64* %1, align 8, !dbg !3317, !tbaa !1082
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  %4 = icmp eq i8* %0, null, !dbg !3319
  br i1 %4, label %5, label %8, !dbg !3320

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  store i64 %7, i64* %1, align 8, !dbg !3323, !tbaa !1082
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579) #11, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3220, metadata !579) #11, !dbg !3326
  br label %17, !dbg !3327

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3328
  br i1 %9, label %11, label %10, !dbg !3329

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3330
  unreachable, !dbg !3330

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3331
  %13 = add i64 %3, 1, !dbg !3332
  %14 = add i64 %13, %12, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !545, metadata !579) #11, !dbg !3318
  store i64 %14, i64* %1, align 8, !dbg !3323, !tbaa !1082
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !579) #11, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3220, metadata !579) #11, !dbg !3326
  %15 = icmp eq i64 %14, 0, !dbg !3334
  br i1 %15, label %16, label %17, !dbg !3327

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3335
  br label %24, !dbg !3336

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3215, metadata !579) #11, !dbg !3324
  %20 = icmp eq i8* %19, null, !dbg !3338
  %21 = icmp ne i64 %18, 0, !dbg !3339
  %22 = and i1 %21, %20, !dbg !3340
  br i1 %22, label %23, label %24, !dbg !3340

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3341
  unreachable, !dbg !3341

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3345, metadata !579), !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3175, metadata !579) #11, !dbg !3347
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3181, metadata !579) #11, !dbg !3350
  %3 = icmp eq i8* %2, null, !dbg !3351
  %4 = icmp ne i64 %0, 0, !dbg !3352
  %5 = and i1 %4, %3, !dbg !3353
  br i1 %5, label %6, label %7, !dbg !3353

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3354
  unreachable, !dbg !3354

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3355
  ret i8* %2, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3357 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3359, metadata !579), !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3360, metadata !579), !dbg !3363
  %3 = udiv i64 9223372036854775807, %1, !dbg !3364
  %4 = icmp ult i64 %3, %0, !dbg !3364
  br i1 %4, label %8, label %5, !dbg !3366

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3361, metadata !579), !dbg !3368
  %7 = icmp eq i8* %6, null, !dbg !3369
  br i1 %7, label %8, label %9, !dbg !3370

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3371
  unreachable, !dbg !3371

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3372
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3373 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3379, metadata !579), !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3380, metadata !579), !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3175, metadata !579) #11, !dbg !3383
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3181, metadata !579) #11, !dbg !3386
  %4 = icmp eq i8* %3, null, !dbg !3387
  %5 = icmp ne i64 %1, 0, !dbg !3388
  %6 = and i1 %5, %4, !dbg !3389
  br i1 %6, label %7, label %8, !dbg !3389

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3390
  unreachable, !dbg !3390

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3391
  ret i8* %3, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3395, metadata !579), !dbg !3396
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3397
  %3 = add i64 %2, 1, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3379, metadata !579) #11, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3380, metadata !579) #11, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3175, metadata !579) #11, !dbg !3402
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3181, metadata !579) #11, !dbg !3405
  %5 = icmp eq i8* %4, null, !dbg !3406
  %6 = icmp ne i64 %3, 0, !dbg !3407
  %7 = and i1 %6, %5, !dbg !3408
  br i1 %7, label %8, label %9, !dbg !3408

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3409
  unreachable, !dbg !3409

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3410
  ret i8* %4, !dbg !3411
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3412 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3414, !tbaa !658
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #11, !dbg !3415
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #11, !dbg !3416
  tail call void @abort() #15, !dbg !3417
  unreachable, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xgetcwd() local_unnamed_addr #6 !dbg !3418 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #11, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3421, metadata !579), !dbg !3423
  %2 = icmp eq i8* %1, null, !dbg !3424
  br i1 %2, label %3, label %8, !dbg !3426

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #17, !dbg !3427
  %5 = load i32, i32* %4, align 4, !dbg !3427, !tbaa !658
  %6 = icmp eq i32 %5, 12, !dbg !3428
  br i1 %6, label %7, label %8, !dbg !3429

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3430
  unreachable, !dbg !3430

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1, !dbg !3431
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3432 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3435, metadata !579), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3436, metadata !579), !dbg !3442
  %3 = icmp eq i64 %0, 0, !dbg !3443
  %4 = icmp eq i64 %1, 0, !dbg !3444
  %5 = or i1 %3, %4, !dbg !3445
  br i1 %5, label %12, label %6, !dbg !3445

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3438, metadata !579), !dbg !3447
  %8 = udiv i64 %7, %1, !dbg !3448
  %9 = icmp eq i64 %8, %0, !dbg !3450
  br i1 %9, label %12, label %10, !dbg !3451

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3452
  store i32 12, i32* %11, align 4, !dbg !3454, !tbaa !658
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3435, metadata !579), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3436, metadata !579), !dbg !3442
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3455
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3437, metadata !579), !dbg !3456
  br label %16, !dbg !3457

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3458
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3459 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3476, metadata !579), !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3477, metadata !579), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3478, metadata !579), !dbg !3487
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3479, metadata !579), !dbg !3488
  %6 = bitcast i32* %5 to i8*, !dbg !3489
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3489
  %7 = icmp eq i32* %0, null, !dbg !3490
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3476, metadata !579), !dbg !3485
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3492
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3476, metadata !579), !dbg !3485
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3480, metadata !579), !dbg !3494
  %10 = icmp ugt i64 %9, -3, !dbg !3495
  %11 = icmp ne i64 %2, 0, !dbg !3496
  %12 = and i1 %11, %10, !dbg !3497
  br i1 %12, label %13, label %18, !dbg !3497

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3498
  br i1 %14, label %18, label %15, !dbg !3499

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3500, !tbaa !724
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3482, metadata !579), !dbg !3501
  %17 = zext i8 %16 to i32, !dbg !3502
  store i32 %17, i32* %8, align 4, !dbg !3503, !tbaa !658
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3504
  ret i64 %19, !dbg !3504
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3505 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3550, metadata !579), !dbg !3555
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3556
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3557, metadata !579), !dbg !3561
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3563
  %4 = load i32, i32* %3, align 8, !dbg !3563, !tbaa !3564
  %5 = and i32 %4, 32, !dbg !3563
  %6 = icmp eq i32 %5, 0, !dbg !3566
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3567
  %8 = icmp ne i32 %7, 0, !dbg !3568
  br i1 %6, label %9, label %19, !dbg !3569

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3571
  %11 = xor i1 %8, true, !dbg !3572
  %12 = or i1 %10, %11, !dbg !3572
  %13 = sext i1 %8 to i32, !dbg !3572
  br i1 %12, label %22, label %14, !dbg !3572

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3573
  %16 = load i32, i32* %15, align 4, !dbg !3573, !tbaa !658
  %17 = icmp ne i32 %16, 9, !dbg !3574
  %18 = sext i1 %17 to i32, !dbg !3575
  br label %22, !dbg !3575

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3576

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3578
  store i32 0, i32* %21, align 4, !dbg !3580, !tbaa !658
  br label %22, !dbg !3578

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3581
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3587, metadata !579), !dbg !3590
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3588, metadata !579), !dbg !3591
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3589, metadata !579), !dbg !3593
  %3 = icmp eq i8* %2, null, !dbg !3594
  br i1 %3, label %11, label %4, !dbg !3596

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #14, !dbg !3597
  %6 = icmp eq i32 %5, 0, !dbg !3602
  br i1 %6, label %10, label %7, !dbg !3603

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0)) #14, !dbg !3604
  %9 = icmp eq i32 %8, 0, !dbg !3605
  br i1 %9, label %10, label %11, !dbg !3606

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3588, metadata !579), !dbg !3591
  br label %11, !dbg !3607

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3608
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3609 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3615, metadata !579), !dbg !3689
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3682, metadata !579), !dbg !3692
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3613, metadata !579), !dbg !3694
  %4 = icmp eq i8* %3, null, !dbg !3695
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), i8* %3, !dbg !3697
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3613, metadata !579), !dbg !3694
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3698, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3629, metadata !579) #11, !dbg !3699
  %7 = icmp eq i8* %6, null, !dbg !3700
  br i1 %7, label %8, label %123, !dbg !3701

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.124, i64 0, i64 0)) #11, !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3630, metadata !579) #11, !dbg !3703
  %10 = icmp eq i8* %9, null, !dbg !3704
  br i1 %10, label %14, label %11, !dbg !3706

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3707, !tbaa !724
  %13 = icmp eq i8 %12, 0, !dbg !3708
  br i1 %13, label %14, label %15, !dbg !3709

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3710

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.125, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3630, metadata !579) #11, !dbg !3703
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3633, metadata !579) #11, !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3635, metadata !579) #11, !dbg !3713
  %18 = icmp eq i64 %17, 0, !dbg !3714
  br i1 %18, label %24, label %19, !dbg !3715

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3716
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3716
  %22 = load i8, i8* %21, align 1, !dbg !3716, !tbaa !724
  %23 = icmp ne i8 %22, 47, !dbg !3716
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3717
  %27 = add i64 %17, 14, !dbg !3718
  %28 = add i64 %27, %26, !dbg !3719
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3632, metadata !579) #11, !dbg !3721
  %30 = icmp eq i8* %29, null, !dbg !3722
  br i1 %30, label %121, label %31, !dbg !3722

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3723
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3726

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3727, !tbaa !724
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3730
  br label %37, !dbg !3731

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3730
  br label %37, !dbg !3731

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3637, metadata !579) #11, !dbg !3733
  %39 = icmp slt i32 %38, 0, !dbg !3734
  br i1 %39, label %119, label %40, !dbg !3735

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.127, i64 0, i64 0)) #11, !dbg !3736
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3638, metadata !579) #11, !dbg !3737
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3738
  br i1 %42, label %43, label %45, !dbg !3739

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3740
  br label %119, !dbg !3742

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3745

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3746

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3746
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3747
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3748, metadata !579) #11, !dbg !3753
  %54 = load i8*, i8** %48, align 8, !dbg !3755, !tbaa !3756
  %55 = load i8*, i8** %49, align 8, !dbg !3755, !tbaa !3757
  %56 = icmp ult i8* %54, %55, !dbg !3755
  br i1 %56, label %59, label %57, !dbg !3755, !prof !3758

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3755
  br label %63, !dbg !3755

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3755
  store i8* %60, i8** %48, align 8, !dbg !3755, !tbaa !3756
  %61 = load i8, i8* %54, align 1, !dbg !3755, !tbaa !724
  %62 = zext i8 %61 to i32, !dbg !3755
  br label %63, !dbg !3755

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3755
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3681, metadata !579) #11, !dbg !3759
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3760, !llvm.loop !3761

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3766

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3748, metadata !579) #11, !dbg !3768
  %67 = load i8*, i8** %48, align 8, !dbg !3766, !tbaa !3756
  %68 = load i8*, i8** %49, align 8, !dbg !3766, !tbaa !3757
  %69 = icmp ult i8* %67, %68, !dbg !3766
  br i1 %69, label %72, label %70, !dbg !3766, !prof !3758

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3766
  br label %76, !dbg !3766

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3766
  store i8* %73, i8** %48, align 8, !dbg !3766, !tbaa !3756
  %74 = load i8, i8* %67, align 1, !dbg !3766, !tbaa !724
  %75 = zext i8 %74 to i32, !dbg !3766
  br label %76, !dbg !3766

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3766
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3681, metadata !579) #11, !dbg !3759
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3769, !llvm.loop !3770

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3773
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.128, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3774
  %81 = icmp slt i32 %80, 2, !dbg !3776
  br i1 %81, label %112, label %82, !dbg !3777

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3686, metadata !579) #11, !dbg !3779
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3687, metadata !579) #11, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3688, metadata !579) #11, !dbg !3782
  %85 = icmp eq i64 %51, 0, !dbg !3783
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3785

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  %90 = add i64 %87, 2, !dbg !3786
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  br label %96, !dbg !3789

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  %94 = add i64 %93, 1, !dbg !3792
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  %99 = icmp eq i8* %98, null, !dbg !3794
  br i1 %99, label %100, label %102, !dbg !3796

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  call void @free(i8* %52) #11, !dbg !3797
  br label %112, !dbg !3799

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3800
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3800
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3801
  %104 = xor i64 %84, -1, !dbg !3802
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3802
  %106 = xor i64 %83, -1, !dbg !3803
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3804, metadata !579) #11, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3812, metadata !579) #11, !dbg !3813
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3815
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3804, metadata !579) #11, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3812, metadata !579) #11, !dbg !3817
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3819
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3679, metadata !579) #11, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3680, metadata !579) #11, !dbg !3744
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3800
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3800
  br label %50, !dbg !3821, !llvm.loop !3770

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3800
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3800
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3822
  %116 = icmp eq i64 %113, 0, !dbg !3823
  br i1 %116, label %119, label %117, !dbg !3825

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3826
  store i8 0, i8* %118, align 1, !dbg !3828, !tbaa !724
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3629, metadata !579) #11, !dbg !3699
  call void @free(i8* %29) #11, !dbg !3829
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3629, metadata !579) #11, !dbg !3699
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3830, !tbaa !586
  br label %123, !dbg !3831

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3629, metadata !579) #11, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3614, metadata !579), !dbg !3832
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3614, metadata !579), !dbg !3832
  %125 = load i8, i8* %124, align 1, !dbg !3833, !tbaa !724
  %126 = icmp eq i8 %125, 0, !dbg !3835
  br i1 %126, label %152, label %127, !dbg !3836

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3837

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3614, metadata !579), !dbg !3832
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3837
  %132 = icmp eq i32 %131, 0, !dbg !3839
  br i1 %132, label %139, label %133, !dbg !3840

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3841
  br i1 %134, label %135, label %143, !dbg !3842

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3843
  %137 = load i8, i8* %136, align 1, !dbg !3843, !tbaa !724
  %138 = icmp eq i8 %137, 0, !dbg !3844
  br i1 %138, label %139, label %143, !dbg !3845

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3846
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3848
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3613, metadata !579), !dbg !3694
  br label %152, !dbg !3850

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3851
  %145 = add i64 %144, 1, !dbg !3852
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3614, metadata !579), !dbg !3832
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3854
  %148 = add i64 %147, 1, !dbg !3855
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3614, metadata !579), !dbg !3832
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3614, metadata !579), !dbg !3832
  %150 = load i8, i8* %149, align 1, !dbg !3833, !tbaa !724
  %151 = icmp eq i8 %150, 0, !dbg !3835
  br i1 %151, label %152, label %128, !dbg !3836, !llvm.loop !3857

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3613, metadata !579), !dbg !3694
  %154 = load i8, i8* %153, align 1, !dbg !3859, !tbaa !724
  %155 = icmp eq i8 %154, 0, !dbg !3861
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i8* %153, !dbg !3862
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3613, metadata !579), !dbg !3694
  ret i8* %156, !dbg !3863
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3864 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3909, metadata !579), !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3910, metadata !579), !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3912, metadata !579), !dbg !3915
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3911, metadata !579), !dbg !3917
  %3 = icmp slt i32 %2, 0, !dbg !3918
  br i1 %3, label %4, label %6, !dbg !3920

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3921
  br label %24, !dbg !3922

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3923
  %8 = icmp eq i32 %7, 0, !dbg !3923
  br i1 %8, label %13, label %9, !dbg !3925

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3926
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3927
  %12 = icmp eq i64 %11, -1, !dbg !3928
  br i1 %12, label %16, label %13, !dbg !3929

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3930
  %15 = icmp eq i32 %14, 0, !dbg !3930
  br i1 %15, label %16, label %18, !dbg !3931

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3910, metadata !579), !dbg !3914
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3912, metadata !579), !dbg !3915
  br label %24, !dbg !3933

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3934
  %20 = load i32, i32* %19, align 4, !dbg !3934, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3910, metadata !579), !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3910, metadata !579), !dbg !3914
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3912, metadata !579), !dbg !3915
  %22 = icmp eq i32 %20, 0, !dbg !3935
  br i1 %22, label %24, label %23, !dbg !3933

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3937, !tbaa !658
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3912, metadata !579), !dbg !3915
  br label %24, !dbg !3939

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3940
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3941 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3986, metadata !579), !dbg !3987
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3988
  br i1 %2, label %6, label %3, !dbg !3990

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3991
  %5 = icmp eq i32 %4, 0, !dbg !3991
  br i1 %5, label %6, label %8, !dbg !3992

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3993
  br label %17, !dbg !3994

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3995, metadata !579) #11, !dbg !4000
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4002
  %10 = load i32, i32* %9, align 8, !dbg !4002, !tbaa !3564
  %11 = and i32 %10, 256, !dbg !4004
  %12 = icmp eq i32 %11, 0, !dbg !4004
  br i1 %12, label %15, label %13, !dbg !4005

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4006
  br label %15, !dbg !4006

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4007
  br label %17, !dbg !4008

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4009
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4056, metadata !579), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4057, metadata !579), !dbg !4063
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4058, metadata !579), !dbg !4064
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4065
  %5 = load i8*, i8** %4, align 8, !dbg !4065, !tbaa !3757
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4066
  %7 = load i8*, i8** %6, align 8, !dbg !4066, !tbaa !3756
  %8 = icmp eq i8* %5, %7, !dbg !4067
  br i1 %8, label %9, label %28, !dbg !4068

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4069
  %11 = load i8*, i8** %10, align 8, !dbg !4069, !tbaa !4070
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4071
  %13 = load i8*, i8** %12, align 8, !dbg !4071, !tbaa !4072
  %14 = icmp eq i8* %11, %13, !dbg !4073
  br i1 %14, label %15, label %28, !dbg !4074

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4075
  %17 = load i8*, i8** %16, align 8, !dbg !4075, !tbaa !4076
  %18 = icmp eq i8* %17, null, !dbg !4077
  br i1 %18, label %19, label %28, !dbg !4078

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4079
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4080
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4059, metadata !579), !dbg !4081
  %22 = icmp eq i64 %21, -1, !dbg !4082
  br i1 %22, label %30, label %23, !dbg !4084

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4085
  %25 = load i32, i32* %24, align 8, !dbg !4086, !tbaa !3564
  %26 = and i32 %25, -17, !dbg !4086
  store i32 %26, i32* %24, align 8, !dbg !4086, !tbaa !3564
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4087
  store i64 %21, i64* %27, align 8, !dbg !4088, !tbaa !4089
  br label %30, !dbg !4090

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4091
  br label %30, !dbg !4092

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4093
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !67, !73, !82, !89, !96, !522, !524, !166, !532, !549, !551, !553, !555, !558, !560, !175, !562, !564, !566}
!llvm.ident = !{!568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568}
!llvm.module.flags = !{!569, !570, !571, !572, !573}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !30)
!3 = !DIFile(filename: "src/pwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!8 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!9 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!10 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!11 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!12 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!13 = !DIEnumerator(name: "c_quoting_style", value: 5)
!14 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!15 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!16 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!17 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!18 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 112, size: 32, elements: !21)
!20 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22}
!22 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!23 = !{!24, !25, !27}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !0}
!31 = !DIGlobalVariableExpression(var: !32)
!32 = distinct !DIGlobalVariable(name: "infomap", scope: !33, file: !20, line: 632, type: !49, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !20, file: !20, line: 630, type: !34, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !38)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!38 = !{!39, !40, !41, !48}
!39 = !DILocalVariable(name: "program", arg: 1, scope: !33, file: !20, line: 630, type: !36)
!40 = !DILocalVariable(name: "node", scope: !33, file: !20, line: 642, type: !36)
!41 = !DILocalVariable(name: "map_prog", scope: !33, file: !20, line: 643, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !33, file: !20, line: 632, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !44, file: !20, line: 632, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !20, line: 632, baseType: !36, size: 64, offset: 64)
!48 = !DILocalVariable(name: "lc_messages", scope: !33, file: !20, line: 655, type: !36)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 896, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1280, elements: !63)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !55, line: 50, size: 256, elements: !56)
!55 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !{!57, !58, !60, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 52, baseType: !36, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !55, line: 55, baseType: !59, size: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !55, line: 56, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !55, line: 57, baseType: !59, size: 32, offset: 192)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "Version", scope: !67, file: !68, line: 2, type: !36, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !70)
!68 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "file_name", scope: !73, file: !78, line: 36, type: !36, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !75)
!74 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!71, !76}
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !73, file: !78, line: 46, type: !79, isLocal: true, isDefinition: true)
!78 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "exit_failure", scope: !82, file: !85, line: 24, type: !86, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !84)
!83 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!80}
!85 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "program_name", scope: !89, file: !93, line: 33, type: !36, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !91, globals: !92)
!90 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !{!24, !25}
!92 = !{!87}
!93 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !96, file: !124, line: 77, type: !160, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !119, globals: !121)
!97 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!5, !99, !104}
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !100)
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
!119 = !{!59, !120, !27, !25}
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !{!94, !122, !129, !142, !144, !149, !156, !158}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !96, file: !124, line: 93, type: !125, isLocal: false, isDefinition: true)
!124 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !127)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !96, file: !124, line: 1043, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !124, line: 57, size: 448, elements: !132)
!132 = !{!133, !134, !135, !140, !141}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !131, file: !124, line: 60, baseType: !5, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !124, line: 63, baseType: !59, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !131, file: !124, line: 67, baseType: !136, size: 256, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !138)
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !131, file: !124, line: 70, baseType: !36, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !131, file: !124, line: 73, baseType: !36, size: 64, offset: 384)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !96, file: !124, line: 108, type: !131, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "slot0", scope: !96, file: !124, line: 834, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 256)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "slotvec", scope: !96, file: !124, line: 837, type: !151, isLocal: true, isDefinition: true)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !124, line: 826, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !124, line: 828, baseType: !27, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !124, line: 829, baseType: !25, size: 64, offset: 64)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "nslots", scope: !96, file: !124, line: 835, type: !59, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "slotvec0", scope: !96, file: !124, line: 836, type: !152, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 704, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!162 = !{!163}
!163 = !DISubrange(count: 11)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !166, file: !169, line: 26, type: !170, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !168)
!167 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!168 = !{!164}
!169 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 47)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !175, file: !520, line: 120, type: !521, isLocal: true, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !516, globals: !519)
!176 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, size: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!181 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!182 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!183 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!184 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!185 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!186 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!187 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!188 = !DIEnumerator(name: "DAY_1", value: 131079)
!189 = !DIEnumerator(name: "DAY_2", value: 131080)
!190 = !DIEnumerator(name: "DAY_3", value: 131081)
!191 = !DIEnumerator(name: "DAY_4", value: 131082)
!192 = !DIEnumerator(name: "DAY_5", value: 131083)
!193 = !DIEnumerator(name: "DAY_6", value: 131084)
!194 = !DIEnumerator(name: "DAY_7", value: 131085)
!195 = !DIEnumerator(name: "ABMON_1", value: 131086)
!196 = !DIEnumerator(name: "ABMON_2", value: 131087)
!197 = !DIEnumerator(name: "ABMON_3", value: 131088)
!198 = !DIEnumerator(name: "ABMON_4", value: 131089)
!199 = !DIEnumerator(name: "ABMON_5", value: 131090)
!200 = !DIEnumerator(name: "ABMON_6", value: 131091)
!201 = !DIEnumerator(name: "ABMON_7", value: 131092)
!202 = !DIEnumerator(name: "ABMON_8", value: 131093)
!203 = !DIEnumerator(name: "ABMON_9", value: 131094)
!204 = !DIEnumerator(name: "ABMON_10", value: 131095)
!205 = !DIEnumerator(name: "ABMON_11", value: 131096)
!206 = !DIEnumerator(name: "ABMON_12", value: 131097)
!207 = !DIEnumerator(name: "MON_1", value: 131098)
!208 = !DIEnumerator(name: "MON_2", value: 131099)
!209 = !DIEnumerator(name: "MON_3", value: 131100)
!210 = !DIEnumerator(name: "MON_4", value: 131101)
!211 = !DIEnumerator(name: "MON_5", value: 131102)
!212 = !DIEnumerator(name: "MON_6", value: 131103)
!213 = !DIEnumerator(name: "MON_7", value: 131104)
!214 = !DIEnumerator(name: "MON_8", value: 131105)
!215 = !DIEnumerator(name: "MON_9", value: 131106)
!216 = !DIEnumerator(name: "MON_10", value: 131107)
!217 = !DIEnumerator(name: "MON_11", value: 131108)
!218 = !DIEnumerator(name: "MON_12", value: 131109)
!219 = !DIEnumerator(name: "AM_STR", value: 131110)
!220 = !DIEnumerator(name: "PM_STR", value: 131111)
!221 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!222 = !DIEnumerator(name: "D_FMT", value: 131113)
!223 = !DIEnumerator(name: "T_FMT", value: 131114)
!224 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!225 = !DIEnumerator(name: "ERA", value: 131116)
!226 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!227 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!228 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!229 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!230 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!231 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!232 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!233 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!234 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!235 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!236 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!237 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!238 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!239 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!240 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!241 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!242 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!243 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!244 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!245 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!246 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!247 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!248 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!249 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!250 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!251 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!252 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!253 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!254 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!255 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!256 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!257 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!258 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!259 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!260 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!261 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!262 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!263 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!264 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!265 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!266 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!267 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!268 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!269 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!270 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!271 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!272 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!273 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!274 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!275 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!276 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!277 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!278 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!279 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!280 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!281 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!282 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!283 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!284 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!285 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!286 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!287 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!288 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!289 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!290 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!291 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!292 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!293 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!294 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!295 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!296 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!297 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!298 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!299 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!300 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!301 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!302 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!303 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!304 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!305 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!306 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!307 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!308 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!309 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!310 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!311 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!312 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!313 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!314 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!316 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!318 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!319 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!321 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!323 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!324 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!325 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!326 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!327 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!328 = !DIEnumerator(name: "CODESET", value: 14)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!332 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!384 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!385 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!400 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!401 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!402 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!403 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!404 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!405 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!406 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!407 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!408 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!409 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!410 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!411 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!412 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!413 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!414 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!415 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!416 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!417 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!418 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!419 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!420 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!421 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!422 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!439 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!440 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!443 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!444 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!445 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!446 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!447 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!448 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!449 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!450 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!451 = !DIEnumerator(name: "THOUSEP", value: 65537)
!452 = !DIEnumerator(name: "__GROUPING", value: 65538)
!453 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!454 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!455 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!456 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!457 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!458 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!459 = !DIEnumerator(name: "__YESSTR", value: 327682)
!460 = !DIEnumerator(name: "__NOSTR", value: 327683)
!461 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!462 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!463 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!464 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!465 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!466 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!473 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!475 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!483 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!484 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!485 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!487 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!488 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!491 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!494 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!495 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!496 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!497 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!514 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!515 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!516 = !{!24, !25, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!519 = !{!173}
!520 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!521 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!523 = !DIFile(filename: "./lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !526, retainedTypes: !531)
!525 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!526 = !{!527}
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !528, line: 41, size: 32, elements: !529)
!528 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!529 = !{!530}
!530 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!531 = !{!24}
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !534, retainedTypes: !548)
!533 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !{!535}
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !537, file: !536, line: 192, size: 32, elements: !546)
!536 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = distinct !DISubprogram(name: "x2nrealloc", scope: !536, file: !536, line: 180, type: !538, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !541)
!538 = !DISubroutineType(types: !539)
!539 = !{!24, !24, !540, !27}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!541 = !{!542, !543, !544, !545}
!542 = !DILocalVariable(name: "p", arg: 1, scope: !537, file: !536, line: 180, type: !24)
!543 = !DILocalVariable(name: "pn", arg: 2, scope: !537, file: !536, line: 180, type: !540)
!544 = !DILocalVariable(name: "s", arg: 3, scope: !537, file: !536, line: 180, type: !27)
!545 = !DILocalVariable(name: "n", scope: !537, file: !536, line: 182, type: !27)
!546 = !{!547}
!547 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!548 = !{!27, !25, !24}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!550 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!552 = !DIFile(filename: "./lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !531)
!554 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !557)
!556 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!27}
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!559 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!561 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!563 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !531)
!565 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !531)
!567 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!569 = !{i32 2, !"Dwarf Version", i32 4}
!570 = !{i32 2, !"Debug Info Version", i32 3}
!571 = !{i32 1, !"wchar_size", i32 4}
!572 = !{i32 7, !"PIC Level", i32 2}
!573 = !{i32 7, !"PIE Level", i32 2}
!574 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !575, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !59}
!577 = !{!578}
!578 = !DILocalVariable(name: "status", arg: 1, scope: !574, file: !3, line: 51, type: !59)
!579 = !DIExpression()
!580 = !DILocation(line: 51, column: 12, scope: !574)
!581 = !DILocation(line: 53, column: 14, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 53, column: 7)
!583 = !DILocation(line: 53, column: 7, scope: !574)
!584 = !DILocation(line: 54, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 54, column: 5)
!586 = !{!587, !587, i64 0}
!587 = !{!"any pointer", !588, i64 0}
!588 = !{!"omnipotent char", !589, i64 0}
!589 = !{!"Simple C/C++ TBAA"}
!590 = !DILocation(line: 57, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !582, file: !3, line: 56, column: 5)
!592 = !DILocation(line: 58, column: 7, scope: !591)
!593 = !DILocation(line: 62, column: 7, scope: !591)
!594 = !DILocation(line: 66, column: 7, scope: !591)
!595 = !DILocation(line: 67, column: 7, scope: !591)
!596 = !DILocation(line: 68, column: 7, scope: !591)
!597 = !DILocation(line: 71, column: 7, scope: !591)
!598 = !DILocation(line: 642, column: 15, scope: !33, inlinedAt: !599)
!599 = distinct !DILocation(line: 72, column: 7, scope: !591)
!600 = !DILocation(line: 651, column: 3, scope: !33, inlinedAt: !599)
!601 = !DILocation(line: 655, column: 29, scope: !33, inlinedAt: !599)
!602 = !DILocation(line: 655, column: 15, scope: !33, inlinedAt: !599)
!603 = !DILocation(line: 656, column: 7, scope: !604, inlinedAt: !599)
!604 = distinct !DILexicalBlock(scope: !33, file: !20, line: 656, column: 7)
!605 = !DILocation(line: 656, column: 19, scope: !604, inlinedAt: !599)
!606 = !DILocation(line: 656, column: 22, scope: !604, inlinedAt: !599)
!607 = !DILocation(line: 656, column: 7, scope: !33, inlinedAt: !599)
!608 = !DILocation(line: 662, column: 7, scope: !609, inlinedAt: !599)
!609 = distinct !DILexicalBlock(scope: !604, file: !20, line: 657, column: 5)
!610 = !DILocation(line: 664, column: 5, scope: !609, inlinedAt: !599)
!611 = !DILocation(line: 665, column: 3, scope: !33, inlinedAt: !599)
!612 = !DILocation(line: 667, column: 3, scope: !33, inlinedAt: !599)
!613 = !DILocation(line: 74, column: 3, scope: !574)
!614 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 328, type: !615, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !618)
!615 = !DISubroutineType(types: !616)
!616 = !{!59, !59, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!618 = !{!619, !620, !621, !622, !623, !625}
!619 = !DILocalVariable(name: "argc", arg: 1, scope: !614, file: !3, line: 328, type: !59)
!620 = !DILocalVariable(name: "argv", arg: 2, scope: !614, file: !3, line: 328, type: !617)
!621 = !DILocalVariable(name: "wd", scope: !614, file: !3, line: 330, type: !25)
!622 = !DILocalVariable(name: "logical", scope: !614, file: !3, line: 334, type: !79)
!623 = !DILocalVariable(name: "c", scope: !624, file: !3, line: 346, type: !59)
!624 = distinct !DILexicalBlock(scope: !614, file: !3, line: 345, column: 5)
!625 = !DILocalVariable(name: "file_name", scope: !626, file: !3, line: 388, type: !628)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 387, column: 5)
!627 = distinct !DILexicalBlock(scope: !614, file: !3, line: 381, column: 7)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 34, size: 192, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !629, file: !3, line: 36, baseType: !25, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !629, file: !3, line: 37, baseType: !27, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !629, file: !3, line: 38, baseType: !25, size: 64, offset: 128)
!634 = !DILocation(line: 328, column: 11, scope: !614)
!635 = !DILocation(line: 328, column: 24, scope: !614)
!636 = !DILocation(line: 334, column: 19, scope: !614)
!637 = !DILocation(line: 334, column: 46, scope: !614)
!638 = !DILocation(line: 334, column: 8, scope: !614)
!639 = !DILocation(line: 337, column: 21, scope: !614)
!640 = !DILocation(line: 337, column: 3, scope: !614)
!641 = !DILocation(line: 338, column: 3, scope: !614)
!642 = !DILocation(line: 339, column: 3, scope: !614)
!643 = !DILocation(line: 340, column: 3, scope: !614)
!644 = !DILocation(line: 342, column: 3, scope: !614)
!645 = !DILocation(line: 344, column: 3, scope: !614)
!646 = !DILocation(line: 346, column: 15, scope: !624)
!647 = !DILocation(line: 346, column: 11, scope: !624)
!648 = !DILocation(line: 347, column: 11, scope: !624)
!649 = !DILocation(line: 356, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !624, file: !3, line: 350, column: 9)
!651 = distinct !{!651, !645, !652}
!652 = !DILocation(line: 365, column: 5, scope: !614)
!653 = !DILocation(line: 358, column: 9, scope: !650)
!654 = !DILocation(line: 360, column: 9, scope: !650)
!655 = !DILocation(line: 363, column: 11, scope: !650)
!656 = !DILocation(line: 367, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !614, file: !3, line: 367, column: 7)
!658 = !{!659, !659, i64 0}
!659 = !{!"int", !588, i64 0}
!660 = !DILocation(line: 367, column: 14, scope: !657)
!661 = !DILocation(line: 367, column: 7, scope: !614)
!662 = !DILocation(line: 368, column: 18, scope: !657)
!663 = !DILocation(line: 368, column: 5, scope: !657)
!664 = !DILocation(line: 370, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !614, file: !3, line: 370, column: 7)
!666 = !DILocation(line: 370, column: 7, scope: !614)
!667 = !DILocation(line: 303, column: 3, scope: !668, inlinedAt: !715)
!668 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 301, type: !669, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!25}
!671 = !{!672, !712, !713, !714}
!672 = !DILocalVariable(name: "st1", scope: !668, file: !3, line: 303, type: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !674, line: 46, size: 1152, elements: !675)
!674 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !{!676, !679, !681, !683, !685, !687, !689, !690, !691, !694, !696, !698, !706, !707, !708}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !673, file: !674, line: 48, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !678, line: 133, baseType: !29)
!678 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !673, file: !674, line: 53, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !678, line: 136, baseType: !29)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !673, file: !674, line: 61, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !678, line: 139, baseType: !29)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !673, file: !674, line: 62, baseType: !684, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !678, line: 138, baseType: !137)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !673, file: !674, line: 64, baseType: !686, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !678, line: 134, baseType: !137)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !673, file: !674, line: 65, baseType: !688, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !678, line: 135, baseType: !137)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !673, file: !674, line: 67, baseType: !59, size: 32, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !673, file: !674, line: 69, baseType: !677, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !673, file: !674, line: 74, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !678, line: 140, baseType: !693)
!693 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !673, file: !674, line: 78, baseType: !695, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !678, line: 162, baseType: !693)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !673, file: !674, line: 80, baseType: !697, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !678, line: 167, baseType: !693)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !673, file: !674, line: 91, baseType: !699, size: 128, offset: 576)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !700, line: 8, size: 128, elements: !701)
!700 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = !{!702, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !699, file: !700, line: 10, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !678, line: 148, baseType: !693)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !699, file: !700, line: 11, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !678, line: 184, baseType: !693)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !673, file: !674, line: 92, baseType: !699, size: 128, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !673, file: !674, line: 93, baseType: !699, size: 128, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !673, file: !674, line: 106, baseType: !709, size: 192, offset: 960)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 192, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 3)
!712 = !DILocalVariable(name: "st2", scope: !668, file: !3, line: 304, type: !673)
!713 = !DILocalVariable(name: "wd", scope: !668, file: !3, line: 305, type: !25)
!714 = !DILocalVariable(name: "p", scope: !668, file: !3, line: 306, type: !25)
!715 = distinct !DILocation(line: 372, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !665, file: !3, line: 371, column: 5)
!717 = !DILocation(line: 304, column: 3, scope: !668, inlinedAt: !715)
!718 = !DILocation(line: 305, column: 14, scope: !668, inlinedAt: !715)
!719 = !DILocation(line: 305, column: 9, scope: !668, inlinedAt: !715)
!720 = !DILocation(line: 309, column: 8, scope: !721, inlinedAt: !715)
!721 = distinct !DILexicalBlock(scope: !668, file: !3, line: 309, column: 7)
!722 = !DILocation(line: 309, column: 11, scope: !721, inlinedAt: !715)
!723 = !DILocation(line: 309, column: 14, scope: !721, inlinedAt: !715)
!724 = !{!588, !588, i64 0}
!725 = !DILocation(line: 309, column: 20, scope: !721, inlinedAt: !715)
!726 = !DILocation(line: 309, column: 7, scope: !668, inlinedAt: !715)
!727 = !DILocation(line: 306, column: 9, scope: !668, inlinedAt: !715)
!728 = !DILocation(line: 312, column: 15, scope: !668, inlinedAt: !715)
!729 = !DILocation(line: 312, column: 3, scope: !668, inlinedAt: !715)
!730 = !DILocation(line: 314, column: 12, scope: !731, inlinedAt: !715)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 314, column: 11)
!732 = distinct !DILexicalBlock(scope: !668, file: !3, line: 313, column: 5)
!733 = !DILocation(line: 314, column: 17, scope: !731, inlinedAt: !715)
!734 = !DILocation(line: 315, column: 32, scope: !731, inlinedAt: !715)
!735 = !DILocation(line: 315, column: 37, scope: !731, inlinedAt: !715)
!736 = !DILocation(line: 317, column: 8, scope: !732, inlinedAt: !715)
!737 = distinct !{!737, !738, !739}
!738 = !DILocation(line: 312, column: 3, scope: !668)
!739 = !DILocation(line: 318, column: 5, scope: !668)
!740 = !DILocation(line: 303, column: 15, scope: !668, inlinedAt: !715)
!741 = !DILocalVariable(name: "__path", arg: 1, scope: !742, file: !743, line: 449, type: !36)
!742 = distinct !DISubprogram(name: "stat", scope: !743, file: !743, line: 449, type: !744, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !747)
!743 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!744 = !DISubroutineType(types: !745)
!745 = !{!59, !36, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!747 = !{!741, !748}
!748 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !742, file: !743, line: 449, type: !746)
!749 = !DILocation(line: 449, column: 1, scope: !742, inlinedAt: !750)
!750 = distinct !DILocation(line: 321, column: 7, scope: !751, inlinedAt: !715)
!751 = distinct !DILexicalBlock(scope: !668, file: !3, line: 321, column: 7)
!752 = !DILocation(line: 451, column: 10, scope: !742, inlinedAt: !750)
!753 = !DILocation(line: 321, column: 23, scope: !751, inlinedAt: !715)
!754 = !DILocation(line: 321, column: 28, scope: !751, inlinedAt: !715)
!755 = !DILocation(line: 304, column: 15, scope: !668, inlinedAt: !715)
!756 = !DILocation(line: 449, column: 1, scope: !742, inlinedAt: !757)
!757 = distinct !DILocation(line: 321, column: 31, scope: !751, inlinedAt: !715)
!758 = !DILocation(line: 451, column: 10, scope: !742, inlinedAt: !757)
!759 = !DILocation(line: 321, column: 48, scope: !751, inlinedAt: !715)
!760 = !DILocation(line: 321, column: 53, scope: !751, inlinedAt: !715)
!761 = !DILocation(line: 321, column: 56, scope: !751, inlinedAt: !715)
!762 = !{!763, !764, i64 8}
!763 = !{!"stat", !764, i64 0, !764, i64 8, !764, i64 16, !659, i64 24, !659, i64 28, !659, i64 32, !659, i64 36, !764, i64 40, !764, i64 48, !764, i64 56, !764, i64 64, !765, i64 72, !765, i64 88, !765, i64 104, !588, i64 120}
!764 = !{!"long", !588, i64 0}
!765 = !{!"timespec", !764, i64 0, !764, i64 8}
!766 = !{!763, !764, i64 0}
!767 = !DILocation(line: 321, column: 7, scope: !668, inlinedAt: !715)
!768 = !DILocation(line: 324, column: 1, scope: !668, inlinedAt: !715)
!769 = !DILocation(line: 330, column: 9, scope: !614)
!770 = !DILocation(line: 373, column: 11, scope: !716)
!771 = !DILocation(line: 375, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 374, column: 9)
!773 = distinct !DILexicalBlock(scope: !716, file: !3, line: 373, column: 11)
!774 = !DILocation(line: 376, column: 11, scope: !772)
!775 = !DILocation(line: 380, column: 8, scope: !614)
!776 = !DILocation(line: 381, column: 10, scope: !627)
!777 = !DILocation(line: 381, column: 7, scope: !614)
!778 = !DILocation(line: 383, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !627, file: !3, line: 382, column: 5)
!780 = !DILocation(line: 384, column: 7, scope: !779)
!781 = !DILocation(line: 385, column: 5, scope: !779)
!782 = !DILocation(line: 87, column: 25, scope: !783, inlinedAt: !788)
!783 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 85, type: !784, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!628}
!786 = !{!787}
!787 = !DILocalVariable(name: "p", scope: !783, file: !3, line: 87, type: !628)
!788 = distinct !DILocation(line: 388, column: 37, scope: !626)
!789 = !DILocation(line: 87, column: 21, scope: !783, inlinedAt: !788)
!790 = !DILocation(line: 91, column: 6, scope: !783, inlinedAt: !788)
!791 = !DILocation(line: 91, column: 14, scope: !783, inlinedAt: !788)
!792 = !{!793, !764, i64 8}
!793 = !{!"file_name", !587, i64 0, !764, i64 8, !587, i64 16}
!794 = !DILocation(line: 93, column: 12, scope: !783, inlinedAt: !788)
!795 = !DILocation(line: 93, column: 6, scope: !783, inlinedAt: !788)
!796 = !DILocation(line: 93, column: 10, scope: !783, inlinedAt: !788)
!797 = !{!793, !587, i64 0}
!798 = !DILocation(line: 94, column: 21, scope: !783, inlinedAt: !788)
!799 = !DILocation(line: 94, column: 6, scope: !783, inlinedAt: !788)
!800 = !DILocation(line: 94, column: 12, scope: !783, inlinedAt: !788)
!801 = !{!793, !587, i64 16}
!802 = !DILocation(line: 95, column: 15, scope: !783, inlinedAt: !788)
!803 = !DILocation(line: 388, column: 25, scope: !626)
!804 = !DILocalVariable(name: "file_name", arg: 1, scope: !805, file: !3, line: 269, type: !628)
!805 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 269, type: !806, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !628}
!808 = !{!804, !809, !810, !819, !821}
!809 = !DILocalVariable(name: "height", scope: !805, file: !3, line: 271, type: !27)
!810 = !DILocalVariable(name: "dev_ino_buf", scope: !805, file: !3, line: 272, type: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !812, line: 7, size: 128, elements: !813)
!812 = !DIFile(filename: "./lib/dev-ino.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!813 = !{!814, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !811, file: !812, line: 9, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !816, line: 48, baseType: !680)
!816 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !811, file: !812, line: 10, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !816, line: 60, baseType: !677)
!819 = !DILocalVariable(name: "root_dev_ino", scope: !805, file: !3, line: 273, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!821 = !DILocalVariable(name: "dot_sb", scope: !805, file: !3, line: 274, type: !673)
!822 = !DILocation(line: 269, column: 34, scope: !805, inlinedAt: !823)
!823 = distinct !DILocation(line: 389, column: 7, scope: !626)
!824 = !DILocation(line: 271, column: 10, scope: !805, inlinedAt: !823)
!825 = !DILocation(line: 272, column: 3, scope: !805, inlinedAt: !823)
!826 = !DILocation(line: 272, column: 18, scope: !805, inlinedAt: !823)
!827 = !DILocation(line: 273, column: 34, scope: !805, inlinedAt: !823)
!828 = !DILocation(line: 273, column: 19, scope: !805, inlinedAt: !823)
!829 = !DILocation(line: 274, column: 3, scope: !805, inlinedAt: !823)
!830 = !DILocation(line: 276, column: 20, scope: !831, inlinedAt: !823)
!831 = distinct !DILexicalBlock(scope: !805, file: !3, line: 276, column: 7)
!832 = !DILocation(line: 276, column: 7, scope: !805, inlinedAt: !823)
!833 = !DILocation(line: 277, column: 5, scope: !831, inlinedAt: !823)
!834 = !DILocation(line: 274, column: 15, scope: !805, inlinedAt: !823)
!835 = !DILocation(line: 449, column: 1, scope: !742, inlinedAt: !836)
!836 = distinct !DILocation(line: 280, column: 7, scope: !837, inlinedAt: !823)
!837 = distinct !DILexicalBlock(scope: !805, file: !3, line: 280, column: 7)
!838 = !DILocation(line: 451, column: 10, scope: !742, inlinedAt: !836)
!839 = !DILocation(line: 280, column: 27, scope: !837, inlinedAt: !823)
!840 = !DILocation(line: 280, column: 7, scope: !805, inlinedAt: !823)
!841 = !DILocation(line: 281, column: 5, scope: !837, inlinedAt: !823)
!842 = !DILocation(line: 283, column: 3, scope: !805, inlinedAt: !823)
!843 = !DILocation(line: 286, column: 11, scope: !844, inlinedAt: !823)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 286, column: 11)
!845 = distinct !DILexicalBlock(scope: !805, file: !3, line: 284, column: 5)
!846 = !{!847, !764, i64 0}
!847 = !{!"dev_ino", !764, i64 0, !764, i64 8}
!848 = !{!847, !764, i64 8}
!849 = !DILocation(line: 286, column: 11, scope: !845, inlinedAt: !823)
!850 = !DILocation(line: 289, column: 49, scope: !845, inlinedAt: !823)
!851 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !852, file: !3, line: 154, type: !746)
!852 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 154, type: !853, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !746, !628, !27}
!855 = !{!851, !856, !857, !858, !863, !864, !865, !866, !867, !879, !880, !881}
!856 = !DILocalVariable(name: "file_name", arg: 2, scope: !852, file: !3, line: 154, type: !628)
!857 = !DILocalVariable(name: "parent_height", arg: 3, scope: !852, file: !3, line: 155, type: !27)
!858 = !DILocalVariable(name: "dirp", scope: !852, file: !3, line: 157, type: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !861, line: 127, baseType: !862)
!861 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !861, line: 127, flags: DIFlagFwdDecl)
!863 = !DILocalVariable(name: "fd", scope: !852, file: !3, line: 158, type: !59)
!864 = !DILocalVariable(name: "parent_sb", scope: !852, file: !3, line: 159, type: !673)
!865 = !DILocalVariable(name: "use_lstat", scope: !852, file: !3, line: 160, type: !79)
!866 = !DILocalVariable(name: "found", scope: !852, file: !3, line: 161, type: !79)
!867 = !DILocalVariable(name: "dp", scope: !868, file: !3, line: 184, type: !869)
!868 = distinct !DILexicalBlock(scope: !852, file: !3, line: 183, column: 5)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !872, line: 22, size: 2240, elements: !873)
!872 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !871, file: !872, line: 25, baseType: !680, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !871, file: !872, line: 26, baseType: !692, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !871, file: !872, line: 31, baseType: !120, size: 16, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !871, file: !872, line: 32, baseType: !518, size: 8, offset: 144)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !871, file: !872, line: 33, baseType: !146, size: 2048, offset: 152)
!879 = !DILocalVariable(name: "ent_sb", scope: !868, file: !3, line: 185, type: !673)
!880 = !DILocalVariable(name: "ino", scope: !868, file: !3, line: 186, type: !815)
!881 = !DILocalVariable(name: "e", scope: !882, file: !3, line: 194, type: !59)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 192, column: 13)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 191, column: 15)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 190, column: 9)
!885 = distinct !DILexicalBlock(scope: !868, file: !3, line: 189, column: 11)
!886 = !DILocation(line: 154, column: 30, scope: !852, inlinedAt: !887)
!887 = distinct !DILocation(line: 289, column: 7, scope: !845, inlinedAt: !823)
!888 = !DILocation(line: 154, column: 56, scope: !852, inlinedAt: !887)
!889 = !DILocation(line: 155, column: 24, scope: !852, inlinedAt: !887)
!890 = !DILocation(line: 159, column: 3, scope: !852, inlinedAt: !887)
!891 = !DILocation(line: 163, column: 10, scope: !852, inlinedAt: !887)
!892 = !DILocation(line: 157, column: 8, scope: !852, inlinedAt: !887)
!893 = !DILocation(line: 164, column: 12, scope: !894, inlinedAt: !887)
!894 = distinct !DILexicalBlock(scope: !852, file: !3, line: 164, column: 7)
!895 = !DILocation(line: 164, column: 7, scope: !852, inlinedAt: !887)
!896 = !DILocation(line: 165, column: 5, scope: !894, inlinedAt: !887)
!897 = !DILocation(line: 168, column: 8, scope: !852, inlinedAt: !887)
!898 = !DILocation(line: 158, column: 7, scope: !852, inlinedAt: !887)
!899 = !DILocation(line: 169, column: 10, scope: !900, inlinedAt: !887)
!900 = distinct !DILexicalBlock(scope: !852, file: !3, line: 169, column: 7)
!901 = !DILocation(line: 169, column: 8, scope: !900, inlinedAt: !887)
!902 = !DILocation(line: 169, column: 18, scope: !900, inlinedAt: !887)
!903 = !DILocation(line: 169, column: 32, scope: !900, inlinedAt: !887)
!904 = !DILocation(line: 169, column: 46, scope: !900, inlinedAt: !887)
!905 = !DILocation(line: 169, column: 7, scope: !852, inlinedAt: !887)
!906 = !DILocation(line: 170, column: 5, scope: !900, inlinedAt: !887)
!907 = !DILocation(line: 159, column: 15, scope: !852, inlinedAt: !887)
!908 = !DILocation(line: 173, column: 8, scope: !909, inlinedAt: !887)
!909 = distinct !DILexicalBlock(scope: !852, file: !3, line: 173, column: 7)
!910 = !DILocalVariable(name: "__fd", arg: 1, scope: !911, file: !743, line: 463, type: !59)
!911 = distinct !DISubprogram(name: "fstat", scope: !743, file: !743, line: 463, type: !912, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!59, !59, !746}
!914 = !{!910, !915}
!915 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !911, file: !743, line: 463, type: !746)
!916 = !DILocation(line: 463, column: 1, scope: !911, inlinedAt: !917)
!917 = distinct !DILocation(line: 173, column: 18, scope: !909, inlinedAt: !887)
!918 = !DILocation(line: 465, column: 10, scope: !911, inlinedAt: !917)
!919 = !DILocation(line: 449, column: 1, scope: !742, inlinedAt: !920)
!920 = distinct !DILocation(line: 173, column: 43, scope: !909, inlinedAt: !887)
!921 = !DILocation(line: 451, column: 10, scope: !742, inlinedAt: !920)
!922 = !DILocation(line: 173, column: 67, scope: !909, inlinedAt: !887)
!923 = !DILocation(line: 173, column: 7, scope: !852, inlinedAt: !887)
!924 = !DILocation(line: 174, column: 5, scope: !909, inlinedAt: !887)
!925 = !DILocation(line: 179, column: 26, scope: !852, inlinedAt: !887)
!926 = !DILocation(line: 179, column: 44, scope: !852, inlinedAt: !887)
!927 = !DILocation(line: 179, column: 33, scope: !852, inlinedAt: !887)
!928 = !DILocation(line: 161, column: 8, scope: !852, inlinedAt: !887)
!929 = !DILocation(line: 185, column: 7, scope: !868, inlinedAt: !887)
!930 = !DILocation(line: 188, column: 7, scope: !868, inlinedAt: !887)
!931 = !DILocation(line: 188, column: 13, scope: !868, inlinedAt: !887)
!932 = !DILocalVariable(name: "dirp", arg: 1, scope: !933, file: !20, line: 278, type: !859)
!933 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !20, file: !20, line: 278, type: !934, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!869, !859}
!936 = !{!932, !937}
!937 = !DILocalVariable(name: "dp", scope: !938, file: !20, line: 282, type: !869)
!938 = distinct !DILexicalBlock(scope: !933, file: !20, line: 281, column: 5)
!939 = !DILocation(line: 278, column: 39, scope: !933, inlinedAt: !940)
!940 = distinct !DILocation(line: 189, column: 17, scope: !885, inlinedAt: !887)
!941 = !DILocation(line: 282, column: 33, scope: !938, inlinedAt: !940)
!942 = !DILocation(line: 282, column: 28, scope: !938, inlinedAt: !940)
!943 = !DILocation(line: 283, column: 14, scope: !944, inlinedAt: !940)
!944 = distinct !DILexicalBlock(scope: !938, file: !20, line: 283, column: 11)
!945 = !DILocation(line: 283, column: 22, scope: !944, inlinedAt: !940)
!946 = !DILocation(line: 283, column: 42, scope: !944, inlinedAt: !940)
!947 = !DILocalVariable(name: "file_name", arg: 1, scope: !948, file: !20, line: 265, type: !36)
!948 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !20, file: !20, line: 265, type: !949, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!79, !36}
!951 = !{!947, !952}
!952 = !DILocalVariable(name: "sep", scope: !953, file: !20, line: 269, type: !26)
!953 = distinct !DILexicalBlock(scope: !954, file: !20, line: 268, column: 5)
!954 = distinct !DILexicalBlock(scope: !948, file: !20, line: 267, column: 7)
!955 = !DILocation(line: 265, column: 28, scope: !948, inlinedAt: !956)
!956 = distinct !DILocation(line: 283, column: 27, scope: !944, inlinedAt: !940)
!957 = !DILocation(line: 267, column: 7, scope: !954, inlinedAt: !956)
!958 = !DILocation(line: 267, column: 20, scope: !954, inlinedAt: !956)
!959 = !DILocation(line: 267, column: 7, scope: !948, inlinedAt: !956)
!960 = !DILocation(line: 269, column: 29, scope: !953, inlinedAt: !956)
!961 = !DILocation(line: 269, column: 42, scope: !953, inlinedAt: !956)
!962 = !DILocation(line: 269, column: 18, scope: !953, inlinedAt: !956)
!963 = !DILocation(line: 269, column: 12, scope: !953, inlinedAt: !956)
!964 = !DILocation(line: 283, column: 11, scope: !938, inlinedAt: !940)
!965 = distinct !{!965, !966, !967}
!966 = !DILocation(line: 182, column: 3, scope: !852)
!967 = !DILocation(line: 227, column: 5, scope: !852)
!968 = !DILocation(line: 184, column: 28, scope: !868, inlinedAt: !887)
!969 = !DILocation(line: 191, column: 15, scope: !883, inlinedAt: !887)
!970 = !DILocation(line: 191, column: 15, scope: !884, inlinedAt: !887)
!971 = !DILocation(line: 194, column: 19, scope: !882, inlinedAt: !887)
!972 = !DILocation(line: 195, column: 15, scope: !882, inlinedAt: !887)
!973 = !DILocation(line: 196, column: 21, scope: !882, inlinedAt: !887)
!974 = !DILocation(line: 227, column: 5, scope: !852, inlinedAt: !887)
!975 = !DILocation(line: 229, column: 20, scope: !976, inlinedAt: !887)
!976 = distinct !DILexicalBlock(scope: !852, file: !3, line: 229, column: 7)
!977 = !DILocation(line: 204, column: 13, scope: !868, inlinedAt: !887)
!978 = !{!979, !764, i64 0}
!979 = !{!"dirent", !764, i64 0, !764, i64 8, !980, i64 16, !588, i64 18, !588, i64 19}
!980 = !{!"short", !588, i64 0}
!981 = !DILocation(line: 186, column: 13, scope: !868, inlinedAt: !887)
!982 = !DILocation(line: 206, column: 15, scope: !983, inlinedAt: !887)
!983 = distinct !DILexicalBlock(scope: !868, file: !3, line: 206, column: 11)
!984 = !DILocation(line: 206, column: 38, scope: !983, inlinedAt: !887)
!985 = !DILocation(line: 185, column: 19, scope: !868, inlinedAt: !887)
!986 = !DILocalVariable(name: "__path", arg: 1, scope: !987, file: !743, line: 456, type: !36)
!987 = distinct !DISubprogram(name: "lstat", scope: !743, file: !743, line: 456, type: !744, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !988)
!988 = !{!986, !989}
!989 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !987, file: !743, line: 456, type: !746)
!990 = !DILocation(line: 456, column: 1, scope: !987, inlinedAt: !991)
!991 = distinct !DILocation(line: 208, column: 15, scope: !992, inlinedAt: !887)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 208, column: 15)
!993 = distinct !DILexicalBlock(scope: !983, file: !3, line: 207, column: 9)
!994 = !DILocation(line: 458, column: 10, scope: !987, inlinedAt: !991)
!995 = !DILocation(line: 208, column: 43, scope: !992, inlinedAt: !887)
!996 = !DILocation(line: 208, column: 15, scope: !993, inlinedAt: !887)
!997 = !DILocation(line: 213, column: 24, scope: !993, inlinedAt: !887)
!998 = !DILocation(line: 214, column: 9, scope: !993, inlinedAt: !887)
!999 = !DILocation(line: 216, column: 26, scope: !1000, inlinedAt: !887)
!1000 = distinct !DILexicalBlock(scope: !868, file: !3, line: 216, column: 11)
!1001 = !DILocation(line: 216, column: 15, scope: !1000, inlinedAt: !887)
!1002 = !DILocation(line: 216, column: 11, scope: !868, inlinedAt: !887)
!1003 = !DILocation(line: 221, column: 24, scope: !1004, inlinedAt: !887)
!1004 = distinct !DILexicalBlock(scope: !868, file: !3, line: 221, column: 12)
!1005 = !DILocation(line: 221, column: 34, scope: !1004, inlinedAt: !887)
!1006 = !DILocation(line: 221, column: 52, scope: !1004, inlinedAt: !887)
!1007 = !DILocation(line: 221, column: 41, scope: !1004, inlinedAt: !887)
!1008 = !DILocation(line: 221, column: 12, scope: !868, inlinedAt: !887)
!1009 = !DILocation(line: 223, column: 53, scope: !1010, inlinedAt: !887)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 222, column: 9)
!1011 = !DILocalVariable(name: "p", arg: 1, scope: !1012, file: !3, line: 101, type: !628)
!1012 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 101, type: !1013, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !628, !36, !27}
!1015 = !{!1011, !1016, !1017, !1018, !1019, !1022, !1023}
!1016 = !DILocalVariable(name: "s", arg: 2, scope: !1012, file: !3, line: 101, type: !36)
!1017 = !DILocalVariable(name: "s_len", arg: 3, scope: !1012, file: !3, line: 101, type: !27)
!1018 = !DILocalVariable(name: "n_free", scope: !1012, file: !3, line: 103, type: !27)
!1019 = !DILocalVariable(name: "half", scope: !1020, file: !3, line: 106, type: !27)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 105, column: 5)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 104, column: 7)
!1022 = !DILocalVariable(name: "q", scope: !1020, file: !3, line: 111, type: !25)
!1023 = !DILocalVariable(name: "n_used", scope: !1020, file: !3, line: 112, type: !27)
!1024 = !DILocation(line: 101, column: 38, scope: !1012, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 223, column: 11, scope: !1010, inlinedAt: !887)
!1026 = !DILocation(line: 101, column: 53, scope: !1012, inlinedAt: !1025)
!1027 = !DILocation(line: 101, column: 63, scope: !1012, inlinedAt: !1025)
!1028 = !DILocation(line: 103, column: 33, scope: !1012, inlinedAt: !1025)
!1029 = !DILocation(line: 103, column: 28, scope: !1012, inlinedAt: !1025)
!1030 = !DILocation(line: 103, column: 10, scope: !1012, inlinedAt: !1025)
!1031 = !DILocation(line: 104, column: 18, scope: !1021, inlinedAt: !1025)
!1032 = !DILocation(line: 104, column: 14, scope: !1021, inlinedAt: !1025)
!1033 = !DILocation(line: 104, column: 7, scope: !1012, inlinedAt: !1025)
!1034 = !DILocation(line: 106, column: 24, scope: !1020, inlinedAt: !1025)
!1035 = !DILocation(line: 106, column: 36, scope: !1020, inlinedAt: !1025)
!1036 = !DILocation(line: 106, column: 14, scope: !1020, inlinedAt: !1025)
!1037 = !DILocalVariable(name: "n", arg: 1, scope: !1038, file: !536, line: 105, type: !27)
!1038 = distinct !DISubprogram(name: "xnmalloc", scope: !536, file: !536, line: 105, type: !1039, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!24, !27, !27}
!1041 = !{!1037, !1042}
!1042 = !DILocalVariable(name: "s", arg: 2, scope: !1038, file: !536, line: 105, type: !27)
!1043 = !DILocation(line: 105, column: 18, scope: !1038, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 111, column: 17, scope: !1020, inlinedAt: !1025)
!1045 = !DILocation(line: 105, column: 28, scope: !1038, inlinedAt: !1044)
!1046 = !DILocation(line: 107, column: 7, scope: !1047, inlinedAt: !1044)
!1047 = distinct !DILexicalBlock(scope: !1038, file: !536, line: 107, column: 7)
!1048 = !DILocation(line: 107, column: 7, scope: !1038, inlinedAt: !1044)
!1049 = !DILocation(line: 108, column: 5, scope: !1047, inlinedAt: !1044)
!1050 = !DILocation(line: 109, column: 21, scope: !1038, inlinedAt: !1044)
!1051 = !DILocation(line: 109, column: 10, scope: !1038, inlinedAt: !1044)
!1052 = !DILocation(line: 111, column: 13, scope: !1020, inlinedAt: !1025)
!1053 = !DILocation(line: 112, column: 34, scope: !1020, inlinedAt: !1025)
!1054 = !DILocation(line: 112, column: 14, scope: !1020, inlinedAt: !1025)
!1055 = !DILocation(line: 113, column: 20, scope: !1020, inlinedAt: !1025)
!1056 = !DILocation(line: 113, column: 31, scope: !1020, inlinedAt: !1025)
!1057 = !DILocation(line: 113, column: 16, scope: !1020, inlinedAt: !1025)
!1058 = !DILocation(line: 114, column: 32, scope: !1020, inlinedAt: !1025)
!1059 = !DILocation(line: 114, column: 7, scope: !1020, inlinedAt: !1025)
!1060 = !DILocation(line: 115, column: 7, scope: !1020, inlinedAt: !1025)
!1061 = !DILocation(line: 116, column: 14, scope: !1020, inlinedAt: !1025)
!1062 = !DILocation(line: 117, column: 18, scope: !1020, inlinedAt: !1025)
!1063 = !DILocation(line: 118, column: 5, scope: !1020, inlinedAt: !1025)
!1064 = !DILocation(line: 120, column: 12, scope: !1012, inlinedAt: !1025)
!1065 = !DILocation(line: 121, column: 15, scope: !1012, inlinedAt: !1025)
!1066 = !DILocation(line: 122, column: 14, scope: !1012, inlinedAt: !1025)
!1067 = !DILocation(line: 122, column: 20, scope: !1012, inlinedAt: !1025)
!1068 = !DILocation(line: 122, column: 3, scope: !1012, inlinedAt: !1025)
!1069 = !DILocation(line: 225, column: 11, scope: !1010, inlinedAt: !887)
!1070 = !DILocation(line: 182, column: 3, scope: !852, inlinedAt: !887)
!1071 = !DILocation(line: 229, column: 23, scope: !976, inlinedAt: !887)
!1072 = !DILocation(line: 229, column: 39, scope: !976, inlinedAt: !887)
!1073 = !DILocation(line: 229, column: 7, scope: !852, inlinedAt: !887)
!1074 = !DILocation(line: 233, column: 7, scope: !1075, inlinedAt: !887)
!1075 = distinct !DILexicalBlock(scope: !976, file: !3, line: 230, column: 5)
!1076 = !DILocation(line: 237, column: 10, scope: !1077, inlinedAt: !887)
!1077 = distinct !DILexicalBlock(scope: !852, file: !3, line: 237, column: 8)
!1078 = !DILocation(line: 237, column: 8, scope: !852, inlinedAt: !887)
!1079 = !DILocation(line: 238, column: 5, scope: !1077, inlinedAt: !887)
!1080 = !DILocation(line: 242, column: 13, scope: !852, inlinedAt: !887)
!1081 = !{i64 0, i64 8, !1082, i64 8, i64 8, !1082, i64 16, i64 8, !1082, i64 24, i64 4, !658, i64 28, i64 4, !658, i64 32, i64 4, !658, i64 36, i64 4, !658, i64 40, i64 8, !1082, i64 48, i64 8, !1082, i64 56, i64 8, !1082, i64 64, i64 8, !1082, i64 72, i64 8, !1082, i64 80, i64 8, !1082, i64 88, i64 8, !1082, i64 96, i64 8, !1082, i64 104, i64 8, !1082, i64 112, i64 8, !1082, i64 120, i64 24, !724}
!1082 = !{!764, !764, i64 0}
!1083 = !DILocation(line: 243, column: 1, scope: !852, inlinedAt: !887)
!1084 = distinct !{!1084, !1085, !1086}
!1085 = !DILocation(line: 283, column: 3, scope: !805)
!1086 = !DILocation(line: 290, column: 5, scope: !805)
!1087 = !DILocation(line: 293, column: 7, scope: !1088, inlinedAt: !823)
!1088 = distinct !DILexicalBlock(scope: !805, file: !3, line: 293, column: 7)
!1089 = !DILocation(line: 293, column: 27, scope: !1088, inlinedAt: !823)
!1090 = !DILocation(line: 293, column: 7, scope: !805, inlinedAt: !823)
!1091 = !DILocation(line: 101, column: 38, scope: !1012, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 294, column: 5, scope: !1088, inlinedAt: !823)
!1093 = !DILocation(line: 101, column: 53, scope: !1012, inlinedAt: !1092)
!1094 = !DILocation(line: 101, column: 63, scope: !1012, inlinedAt: !1092)
!1095 = !DILocation(line: 103, column: 33, scope: !1012, inlinedAt: !1092)
!1096 = !DILocation(line: 104, column: 14, scope: !1021, inlinedAt: !1092)
!1097 = !DILocation(line: 104, column: 7, scope: !1012, inlinedAt: !1092)
!1098 = !DILocation(line: 106, column: 24, scope: !1020, inlinedAt: !1092)
!1099 = !DILocation(line: 106, column: 36, scope: !1020, inlinedAt: !1092)
!1100 = !DILocation(line: 106, column: 14, scope: !1020, inlinedAt: !1092)
!1101 = !DILocation(line: 105, column: 18, scope: !1038, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 111, column: 17, scope: !1020, inlinedAt: !1092)
!1103 = !DILocation(line: 105, column: 28, scope: !1038, inlinedAt: !1102)
!1104 = !DILocation(line: 107, column: 7, scope: !1047, inlinedAt: !1102)
!1105 = !DILocation(line: 107, column: 7, scope: !1038, inlinedAt: !1102)
!1106 = !DILocation(line: 108, column: 5, scope: !1047, inlinedAt: !1102)
!1107 = !DILocation(line: 109, column: 21, scope: !1038, inlinedAt: !1102)
!1108 = !DILocation(line: 109, column: 10, scope: !1038, inlinedAt: !1102)
!1109 = !DILocation(line: 111, column: 13, scope: !1020, inlinedAt: !1092)
!1110 = !DILocation(line: 112, column: 14, scope: !1020, inlinedAt: !1092)
!1111 = !DILocation(line: 113, column: 20, scope: !1020, inlinedAt: !1092)
!1112 = !DILocation(line: 113, column: 31, scope: !1020, inlinedAt: !1092)
!1113 = !DILocation(line: 113, column: 16, scope: !1020, inlinedAt: !1092)
!1114 = !DILocation(line: 114, column: 7, scope: !1020, inlinedAt: !1092)
!1115 = !DILocation(line: 115, column: 7, scope: !1020, inlinedAt: !1092)
!1116 = !DILocation(line: 116, column: 14, scope: !1020, inlinedAt: !1092)
!1117 = !DILocation(line: 117, column: 18, scope: !1020, inlinedAt: !1092)
!1118 = !DILocation(line: 118, column: 5, scope: !1020, inlinedAt: !1092)
!1119 = !DILocation(line: 120, column: 12, scope: !1012, inlinedAt: !1092)
!1120 = !DILocation(line: 121, column: 15, scope: !1012, inlinedAt: !1092)
!1121 = !DILocation(line: 390, column: 24, scope: !626)
!1122 = !DILocation(line: 294, column: 5, scope: !1088, inlinedAt: !823)
!1123 = !DILocation(line: 295, column: 1, scope: !805, inlinedAt: !823)
!1124 = !DILocation(line: 390, column: 7, scope: !626)
!1125 = !DILocalVariable(name: "p", arg: 1, scope: !1126, file: !3, line: 78, type: !628)
!1126 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 78, type: !806, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1127)
!1127 = !{!1125}
!1128 = !DILocation(line: 78, column: 35, scope: !1126, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 391, column: 7, scope: !626)
!1130 = !DILocation(line: 80, column: 12, scope: !1126, inlinedAt: !1129)
!1131 = !DILocation(line: 80, column: 3, scope: !1126, inlinedAt: !1129)
!1132 = !DILocation(line: 81, column: 3, scope: !1126, inlinedAt: !1129)
!1133 = !DILocation(line: 395, column: 1, scope: !614)
!1134 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1135, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!25, !27}
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "n", arg: 1, scope: !1134, file: !3, line: 127, type: !27)
!1139 = !DILocalVariable(name: "buf", scope: !1134, file: !3, line: 129, type: !25)
!1140 = !DILocalVariable(name: "p", scope: !1134, file: !3, line: 130, type: !25)
!1141 = !DILocalVariable(name: "i", scope: !1134, file: !3, line: 131, type: !27)
!1142 = !DILocation(line: 127, column: 20, scope: !1134)
!1143 = !DILocation(line: 105, column: 18, scope: !1038, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 129, column: 15, scope: !1134)
!1145 = !DILocation(line: 105, column: 28, scope: !1038, inlinedAt: !1144)
!1146 = !DILocation(line: 107, column: 7, scope: !1047, inlinedAt: !1144)
!1147 = !DILocation(line: 107, column: 7, scope: !1038, inlinedAt: !1144)
!1148 = !DILocation(line: 108, column: 5, scope: !1047, inlinedAt: !1144)
!1149 = !DILocation(line: 109, column: 21, scope: !1038, inlinedAt: !1144)
!1150 = !DILocation(line: 109, column: 10, scope: !1038, inlinedAt: !1144)
!1151 = !DILocation(line: 129, column: 9, scope: !1134)
!1152 = !DILocation(line: 130, column: 9, scope: !1134)
!1153 = !DILocation(line: 131, column: 10, scope: !1134)
!1154 = !DILocation(line: 133, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 133, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 133, column: 3)
!1157 = !DILocation(line: 133, column: 3, scope: !1156)
!1158 = !DILocation(line: 135, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 134, column: 5)
!1160 = !DILocation(line: 136, column: 9, scope: !1159)
!1161 = distinct !{!1161, !1157, !1162}
!1162 = !DILocation(line: 137, column: 5, scope: !1156)
!1163 = distinct !{!1163, !1164}
!1164 = !{!"llvm.loop.unroll.disable"}
!1165 = !DILocation(line: 138, column: 3, scope: !1134)
!1166 = !DILocation(line: 138, column: 9, scope: !1134)
!1167 = !DILocation(line: 139, column: 3, scope: !1134)
!1168 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !78, file: !78, line: 41, type: !34, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "file", arg: 1, scope: !1168, file: !78, line: 41, type: !36)
!1171 = !DILocation(line: 41, column: 41, scope: !1168)
!1172 = !DILocation(line: 43, column: 13, scope: !1168)
!1173 = !DILocation(line: 44, column: 1, scope: !1168)
!1174 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !78, file: !78, line: 78, type: !1175, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !79}
!1177 = !{!1178}
!1178 = !DILocalVariable(name: "ignore", arg: 1, scope: !1174, file: !78, line: 78, type: !79)
!1179 = !DILocation(line: 78, column: 37, scope: !1174)
!1180 = !DILocation(line: 80, column: 16, scope: !1174)
!1181 = !{!1182, !1182, i64 0}
!1182 = !{!"_Bool", !588, i64 0}
!1183 = !DILocation(line: 81, column: 1, scope: !1174)
!1184 = distinct !DISubprogram(name: "close_stdout", scope: !78, file: !78, line: 107, type: !1185, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null}
!1187 = !{!1188}
!1188 = !DILocalVariable(name: "write_error", scope: !1189, file: !78, line: 112, type: !36)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !78, line: 111, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !78, line: 109, column: 7)
!1191 = !DILocation(line: 109, column: 21, scope: !1190)
!1192 = !DILocation(line: 109, column: 7, scope: !1190)
!1193 = !DILocation(line: 109, column: 29, scope: !1190)
!1194 = !DILocation(line: 110, column: 7, scope: !1190)
!1195 = !DILocation(line: 110, column: 12, scope: !1190)
!1196 = !{i8 0, i8 2}
!1197 = !DILocation(line: 114, column: 19, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !78, line: 113, column: 11)
!1199 = !DILocation(line: 110, column: 25, scope: !1190)
!1200 = !DILocation(line: 110, column: 28, scope: !1190)
!1201 = !DILocation(line: 110, column: 34, scope: !1190)
!1202 = !DILocation(line: 109, column: 7, scope: !1184)
!1203 = !DILocation(line: 112, column: 33, scope: !1189)
!1204 = !DILocation(line: 112, column: 19, scope: !1189)
!1205 = !DILocation(line: 113, column: 11, scope: !1198)
!1206 = !DILocation(line: 113, column: 11, scope: !1189)
!1207 = !DILocation(line: 114, column: 36, scope: !1198)
!1208 = !DILocation(line: 114, column: 9, scope: !1198)
!1209 = !DILocation(line: 117, column: 9, scope: !1198)
!1210 = !DILocation(line: 119, column: 14, scope: !1189)
!1211 = !DILocation(line: 119, column: 7, scope: !1189)
!1212 = !DILocation(line: 122, column: 22, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1184, file: !78, line: 122, column: 8)
!1214 = !DILocation(line: 122, column: 8, scope: !1213)
!1215 = !DILocation(line: 122, column: 30, scope: !1213)
!1216 = !DILocation(line: 122, column: 8, scope: !1184)
!1217 = !DILocation(line: 123, column: 13, scope: !1213)
!1218 = !DILocation(line: 123, column: 6, scope: !1213)
!1219 = !DILocation(line: 124, column: 1, scope: !1184)
!1220 = distinct !DISubprogram(name: "set_program_name", scope: !93, file: !93, line: 39, type: !34, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !89, variables: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DILocalVariable(name: "argv0", arg: 1, scope: !1220, file: !93, line: 39, type: !36)
!1223 = !DILocalVariable(name: "slash", scope: !1220, file: !93, line: 46, type: !36)
!1224 = !DILocalVariable(name: "base", scope: !1220, file: !93, line: 47, type: !36)
!1225 = !DILocation(line: 39, column: 31, scope: !1220)
!1226 = !DILocation(line: 51, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !93, line: 51, column: 7)
!1228 = !DILocation(line: 51, column: 7, scope: !1220)
!1229 = !DILocation(line: 55, column: 14, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !93, line: 52, column: 5)
!1231 = !DILocation(line: 54, column: 7, scope: !1230)
!1232 = !DILocation(line: 56, column: 7, scope: !1230)
!1233 = !DILocation(line: 59, column: 11, scope: !1220)
!1234 = !DILocation(line: 46, column: 15, scope: !1220)
!1235 = !DILocation(line: 60, column: 17, scope: !1220)
!1236 = !DILocation(line: 60, column: 33, scope: !1220)
!1237 = !DILocation(line: 60, column: 11, scope: !1220)
!1238 = !DILocation(line: 47, column: 15, scope: !1220)
!1239 = !DILocation(line: 61, column: 12, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1220, file: !93, line: 61, column: 7)
!1241 = !DILocation(line: 61, column: 20, scope: !1240)
!1242 = !DILocation(line: 61, column: 25, scope: !1240)
!1243 = !DILocation(line: 61, column: 42, scope: !1240)
!1244 = !DILocation(line: 61, column: 28, scope: !1240)
!1245 = !DILocation(line: 61, column: 61, scope: !1240)
!1246 = !DILocation(line: 61, column: 7, scope: !1220)
!1247 = !DILocation(line: 64, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !93, line: 64, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1240, file: !93, line: 62, column: 5)
!1250 = !DILocation(line: 64, column: 36, scope: !1248)
!1251 = !DILocation(line: 64, column: 11, scope: !1249)
!1252 = !DILocation(line: 66, column: 24, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !93, line: 65, column: 9)
!1254 = !DILocation(line: 70, column: 41, scope: !1253)
!1255 = !DILocation(line: 72, column: 9, scope: !1253)
!1256 = !DILocation(line: 84, column: 16, scope: !1220)
!1257 = !DILocation(line: 90, column: 27, scope: !1220)
!1258 = !DILocation(line: 92, column: 1, scope: !1220)
!1259 = distinct !DISubprogram(name: "clone_quoting_options", scope: !124, file: !124, line: 114, type: !1260, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1263)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1262, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1263 = !{!1264, !1265, !1266}
!1264 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !124, line: 114, type: !1262)
!1265 = !DILocalVariable(name: "e", scope: !1259, file: !124, line: 116, type: !59)
!1266 = !DILocalVariable(name: "p", scope: !1259, file: !124, line: 117, type: !1262)
!1267 = !DILocation(line: 114, column: 48, scope: !1259)
!1268 = !DILocation(line: 116, column: 11, scope: !1259)
!1269 = !DILocation(line: 116, column: 7, scope: !1259)
!1270 = !DILocation(line: 117, column: 40, scope: !1259)
!1271 = !DILocation(line: 117, column: 31, scope: !1259)
!1272 = !DILocation(line: 117, column: 27, scope: !1259)
!1273 = !DILocation(line: 119, column: 9, scope: !1259)
!1274 = !DILocation(line: 120, column: 3, scope: !1259)
!1275 = distinct !DISubprogram(name: "get_quoting_style", scope: !124, file: !124, line: 125, type: !1276, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1280)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!5, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "o", arg: 1, scope: !1275, file: !124, line: 125, type: !1278)
!1282 = !DILocation(line: 125, column: 50, scope: !1275)
!1283 = !DILocation(line: 127, column: 11, scope: !1275)
!1284 = !DILocation(line: 127, column: 46, scope: !1275)
!1285 = !{!1286, !588, i64 0}
!1286 = !{!"quoting_options", !588, i64 0, !659, i64 4, !588, i64 8, !587, i64 40, !587, i64 48}
!1287 = !DILocation(line: 127, column: 3, scope: !1275)
!1288 = distinct !DISubprogram(name: "set_quoting_style", scope: !124, file: !124, line: 133, type: !1289, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1262, !5}
!1291 = !{!1292, !1293}
!1292 = !DILocalVariable(name: "o", arg: 1, scope: !1288, file: !124, line: 133, type: !1262)
!1293 = !DILocalVariable(name: "s", arg: 2, scope: !1288, file: !124, line: 133, type: !5)
!1294 = !DILocation(line: 133, column: 44, scope: !1288)
!1295 = !DILocation(line: 133, column: 66, scope: !1288)
!1296 = !DILocation(line: 135, column: 4, scope: !1288)
!1297 = !DILocation(line: 135, column: 39, scope: !1288)
!1298 = !DILocation(line: 135, column: 45, scope: !1288)
!1299 = !DILocation(line: 136, column: 1, scope: !1288)
!1300 = distinct !DISubprogram(name: "set_char_quoting", scope: !124, file: !124, line: 144, type: !1301, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!59, !1262, !26, !59}
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1310, !1311}
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1300, file: !124, line: 144, type: !1262)
!1305 = !DILocalVariable(name: "c", arg: 2, scope: !1300, file: !124, line: 144, type: !26)
!1306 = !DILocalVariable(name: "i", arg: 3, scope: !1300, file: !124, line: 144, type: !59)
!1307 = !DILocalVariable(name: "uc", scope: !1300, file: !124, line: 146, type: !518)
!1308 = !DILocalVariable(name: "p", scope: !1300, file: !124, line: 147, type: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1310 = !DILocalVariable(name: "shift", scope: !1300, file: !124, line: 149, type: !59)
!1311 = !DILocalVariable(name: "r", scope: !1300, file: !124, line: 150, type: !59)
!1312 = !DILocation(line: 144, column: 43, scope: !1300)
!1313 = !DILocation(line: 144, column: 51, scope: !1300)
!1314 = !DILocation(line: 144, column: 58, scope: !1300)
!1315 = !DILocation(line: 146, column: 17, scope: !1300)
!1316 = !DILocation(line: 148, column: 6, scope: !1300)
!1317 = !DILocation(line: 148, column: 62, scope: !1300)
!1318 = !DILocation(line: 148, column: 57, scope: !1300)
!1319 = !DILocation(line: 147, column: 17, scope: !1300)
!1320 = !DILocation(line: 149, column: 18, scope: !1300)
!1321 = !DILocation(line: 149, column: 15, scope: !1300)
!1322 = !DILocation(line: 149, column: 7, scope: !1300)
!1323 = !DILocation(line: 150, column: 12, scope: !1300)
!1324 = !DILocation(line: 150, column: 15, scope: !1300)
!1325 = !DILocation(line: 150, column: 25, scope: !1300)
!1326 = !DILocation(line: 150, column: 7, scope: !1300)
!1327 = !DILocation(line: 151, column: 13, scope: !1300)
!1328 = !DILocation(line: 151, column: 18, scope: !1300)
!1329 = !DILocation(line: 151, column: 23, scope: !1300)
!1330 = !DILocation(line: 151, column: 6, scope: !1300)
!1331 = !DILocation(line: 152, column: 3, scope: !1300)
!1332 = distinct !DISubprogram(name: "set_quoting_flags", scope: !124, file: !124, line: 160, type: !1333, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!59, !1262, !59}
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "o", arg: 1, scope: !1332, file: !124, line: 160, type: !1262)
!1337 = !DILocalVariable(name: "i", arg: 2, scope: !1332, file: !124, line: 160, type: !59)
!1338 = !DILocalVariable(name: "r", scope: !1332, file: !124, line: 162, type: !59)
!1339 = !DILocation(line: 160, column: 44, scope: !1332)
!1340 = !DILocation(line: 160, column: 51, scope: !1332)
!1341 = !DILocation(line: 163, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !124, line: 163, column: 7)
!1343 = !DILocation(line: 163, column: 7, scope: !1332)
!1344 = !DILocation(line: 165, column: 10, scope: !1332)
!1345 = !{!1286, !659, i64 4}
!1346 = !DILocation(line: 162, column: 7, scope: !1332)
!1347 = !DILocation(line: 166, column: 12, scope: !1332)
!1348 = !DILocation(line: 167, column: 3, scope: !1332)
!1349 = distinct !DISubprogram(name: "set_custom_quoting", scope: !124, file: !124, line: 171, type: !1350, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1262, !36, !36}
!1352 = !{!1353, !1354, !1355}
!1353 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !124, line: 171, type: !1262)
!1354 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1349, file: !124, line: 172, type: !36)
!1355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1349, file: !124, line: 172, type: !36)
!1356 = !DILocation(line: 171, column: 45, scope: !1349)
!1357 = !DILocation(line: 172, column: 33, scope: !1349)
!1358 = !DILocation(line: 172, column: 57, scope: !1349)
!1359 = !DILocation(line: 174, column: 8, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1349, file: !124, line: 174, column: 7)
!1361 = !DILocation(line: 174, column: 7, scope: !1349)
!1362 = !DILocation(line: 176, column: 6, scope: !1349)
!1363 = !DILocation(line: 176, column: 12, scope: !1349)
!1364 = !DILocation(line: 177, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1349, file: !124, line: 177, column: 7)
!1366 = !DILocation(line: 177, column: 23, scope: !1365)
!1367 = !DILocation(line: 177, column: 19, scope: !1365)
!1368 = !DILocation(line: 178, column: 5, scope: !1365)
!1369 = !DILocation(line: 179, column: 6, scope: !1349)
!1370 = !DILocation(line: 179, column: 17, scope: !1349)
!1371 = !{!1286, !587, i64 40}
!1372 = !DILocation(line: 180, column: 6, scope: !1349)
!1373 = !DILocation(line: 180, column: 18, scope: !1349)
!1374 = !{!1286, !587, i64 48}
!1375 = !DILocation(line: 181, column: 1, scope: !1349)
!1376 = distinct !DISubprogram(name: "quotearg_buffer", scope: !124, file: !124, line: 776, type: !1377, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!27, !25, !27, !36, !27, !1278}
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1380 = !DILocalVariable(name: "buffer", arg: 1, scope: !1376, file: !124, line: 776, type: !25)
!1381 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1376, file: !124, line: 776, type: !27)
!1382 = !DILocalVariable(name: "arg", arg: 3, scope: !1376, file: !124, line: 777, type: !36)
!1383 = !DILocalVariable(name: "argsize", arg: 4, scope: !1376, file: !124, line: 777, type: !27)
!1384 = !DILocalVariable(name: "o", arg: 5, scope: !1376, file: !124, line: 778, type: !1278)
!1385 = !DILocalVariable(name: "p", scope: !1376, file: !124, line: 780, type: !1278)
!1386 = !DILocalVariable(name: "e", scope: !1376, file: !124, line: 781, type: !59)
!1387 = !DILocalVariable(name: "r", scope: !1376, file: !124, line: 782, type: !27)
!1388 = !DILocation(line: 776, column: 24, scope: !1376)
!1389 = !DILocation(line: 776, column: 39, scope: !1376)
!1390 = !DILocation(line: 777, column: 30, scope: !1376)
!1391 = !DILocation(line: 777, column: 42, scope: !1376)
!1392 = !DILocation(line: 778, column: 48, scope: !1376)
!1393 = !DILocation(line: 780, column: 37, scope: !1376)
!1394 = !DILocation(line: 780, column: 33, scope: !1376)
!1395 = !DILocation(line: 781, column: 11, scope: !1376)
!1396 = !DILocation(line: 781, column: 7, scope: !1376)
!1397 = !DILocation(line: 783, column: 43, scope: !1376)
!1398 = !DILocation(line: 783, column: 53, scope: !1376)
!1399 = !DILocation(line: 783, column: 60, scope: !1376)
!1400 = !DILocation(line: 784, column: 43, scope: !1376)
!1401 = !DILocation(line: 784, column: 58, scope: !1376)
!1402 = !DILocation(line: 782, column: 14, scope: !1376)
!1403 = !DILocation(line: 782, column: 10, scope: !1376)
!1404 = !DILocation(line: 785, column: 9, scope: !1376)
!1405 = !DILocation(line: 786, column: 3, scope: !1376)
!1406 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !124, file: !124, line: 248, type: !1407, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1411)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!27, !25, !27, !36, !27, !5, !59, !1409, !36, !36}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1436, !1437, !1438, !1439, !1440, !1443, !1444, !1462, !1465, !1466, !1473}
!1412 = !DILocalVariable(name: "buffer", arg: 1, scope: !1406, file: !124, line: 248, type: !25)
!1413 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1406, file: !124, line: 248, type: !27)
!1414 = !DILocalVariable(name: "arg", arg: 3, scope: !1406, file: !124, line: 249, type: !36)
!1415 = !DILocalVariable(name: "argsize", arg: 4, scope: !1406, file: !124, line: 249, type: !27)
!1416 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1406, file: !124, line: 250, type: !5)
!1417 = !DILocalVariable(name: "flags", arg: 6, scope: !1406, file: !124, line: 250, type: !59)
!1418 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1406, file: !124, line: 251, type: !1409)
!1419 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1406, file: !124, line: 252, type: !36)
!1420 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1406, file: !124, line: 253, type: !36)
!1421 = !DILocalVariable(name: "i", scope: !1406, file: !124, line: 255, type: !27)
!1422 = !DILocalVariable(name: "len", scope: !1406, file: !124, line: 256, type: !27)
!1423 = !DILocalVariable(name: "orig_buffersize", scope: !1406, file: !124, line: 257, type: !27)
!1424 = !DILocalVariable(name: "quote_string", scope: !1406, file: !124, line: 258, type: !36)
!1425 = !DILocalVariable(name: "quote_string_len", scope: !1406, file: !124, line: 259, type: !27)
!1426 = !DILocalVariable(name: "backslash_escapes", scope: !1406, file: !124, line: 260, type: !79)
!1427 = !DILocalVariable(name: "unibyte_locale", scope: !1406, file: !124, line: 261, type: !79)
!1428 = !DILocalVariable(name: "elide_outer_quotes", scope: !1406, file: !124, line: 262, type: !79)
!1429 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1406, file: !124, line: 263, type: !79)
!1430 = !DILocalVariable(name: "encountered_single_quote", scope: !1406, file: !124, line: 264, type: !79)
!1431 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1406, file: !124, line: 265, type: !79)
!1432 = !DILocalVariable(name: "c", scope: !1433, file: !124, line: 394, type: !518)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !124, line: 393, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !124, line: 392, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 392, column: 3)
!1436 = !DILocalVariable(name: "esc", scope: !1433, file: !124, line: 395, type: !518)
!1437 = !DILocalVariable(name: "is_right_quote", scope: !1433, file: !124, line: 396, type: !79)
!1438 = !DILocalVariable(name: "escaping", scope: !1433, file: !124, line: 397, type: !79)
!1439 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1433, file: !124, line: 398, type: !79)
!1440 = !DILocalVariable(name: "m", scope: !1441, file: !124, line: 602, type: !27)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 600, column: 11)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 418, column: 9)
!1443 = !DILocalVariable(name: "printable", scope: !1441, file: !124, line: 604, type: !79)
!1444 = !DILocalVariable(name: "mbstate", scope: !1445, file: !124, line: 613, type: !1447)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !124, line: 612, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !124, line: 606, column: 17)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1448, line: 6, baseType: !1449)
!1448 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1450, line: 21, baseType: !1451)
!1450 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1450, line: 13, size: 64, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1451, file: !1450, line: 15, baseType: !59, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1451, file: !1450, line: 20, baseType: !1455, size: 32, offset: 32)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !1450, line: 16, size: 32, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1455, file: !1450, line: 18, baseType: !137, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1455, file: !1450, line: 19, baseType: !1459, size: 32)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 4)
!1462 = !DILocalVariable(name: "w", scope: !1463, file: !124, line: 623, type: !1464)
!1463 = distinct !DILexicalBlock(scope: !1445, file: !124, line: 622, column: 19)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !59)
!1465 = !DILocalVariable(name: "bytes", scope: !1463, file: !124, line: 624, type: !27)
!1466 = !DILocalVariable(name: "j", scope: !1467, file: !124, line: 649, type: !27)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !124, line: 648, column: 27)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !124, line: 646, column: 29)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !124, line: 641, column: 23)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !124, line: 633, column: 30)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !124, line: 628, column: 30)
!1472 = distinct !DILexicalBlock(scope: !1463, file: !124, line: 626, column: 25)
!1473 = !DILocalVariable(name: "ilim", scope: !1474, file: !124, line: 676, type: !27)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !124, line: 673, column: 15)
!1475 = distinct !DILexicalBlock(scope: !1441, file: !124, line: 672, column: 17)
!1476 = !DILocation(line: 248, column: 33, scope: !1406)
!1477 = !DILocation(line: 248, column: 48, scope: !1406)
!1478 = !DILocation(line: 249, column: 39, scope: !1406)
!1479 = !DILocation(line: 249, column: 51, scope: !1406)
!1480 = !DILocation(line: 250, column: 46, scope: !1406)
!1481 = !DILocation(line: 250, column: 65, scope: !1406)
!1482 = !DILocation(line: 251, column: 47, scope: !1406)
!1483 = !DILocation(line: 252, column: 39, scope: !1406)
!1484 = !DILocation(line: 253, column: 39, scope: !1406)
!1485 = !DILocation(line: 256, column: 10, scope: !1406)
!1486 = !DILocation(line: 257, column: 10, scope: !1406)
!1487 = !DILocation(line: 258, column: 15, scope: !1406)
!1488 = !DILocation(line: 259, column: 10, scope: !1406)
!1489 = !DILocation(line: 260, column: 8, scope: !1406)
!1490 = !DILocation(line: 261, column: 25, scope: !1406)
!1491 = !DILocation(line: 261, column: 36, scope: !1406)
!1492 = !DILocation(line: 262, column: 8, scope: !1406)
!1493 = !DILocation(line: 263, column: 8, scope: !1406)
!1494 = !DILocation(line: 264, column: 8, scope: !1406)
!1495 = !DILocation(line: 265, column: 8, scope: !1406)
!1496 = !DILocation(line: 265, column: 3, scope: !1406)
!1497 = !DILocation(line: 308, column: 3, scope: !1406)
!1498 = !DILocation(line: 315, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 309, column: 5)
!1500 = !DILocation(line: 315, column: 12, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 315, column: 11)
!1502 = !DILocation(line: 316, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !124, line: 316, column: 9)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !124, line: 316, column: 9)
!1505 = !DILocation(line: 316, column: 9, scope: !1504)
!1506 = !DILocation(line: 354, column: 26, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !124, line: 332, column: 11)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !124, line: 331, column: 13)
!1509 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 330, column: 7)
!1510 = !DILocation(line: 355, column: 27, scope: !1507)
!1511 = !DILocation(line: 356, column: 11, scope: !1507)
!1512 = !DILocation(line: 357, column: 14, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !124, line: 357, column: 13)
!1514 = !DILocation(line: 357, column: 13, scope: !1509)
!1515 = !DILocation(line: 358, column: 43, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !124, line: 358, column: 11)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !124, line: 358, column: 11)
!1518 = !DILocation(line: 358, column: 11, scope: !1517)
!1519 = !DILocation(line: 359, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !124, line: 359, column: 13)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !124, line: 359, column: 13)
!1522 = !DILocation(line: 359, column: 13, scope: !1521)
!1523 = !DILocation(line: 358, column: 70, scope: !1516)
!1524 = distinct !{!1524, !1518, !1525}
!1525 = !DILocation(line: 359, column: 13, scope: !1517)
!1526 = !DILocation(line: 362, column: 28, scope: !1509)
!1527 = !DILocation(line: 364, column: 7, scope: !1499)
!1528 = !DILocation(line: 367, column: 7, scope: !1499)
!1529 = !DILocation(line: 370, column: 7, scope: !1499)
!1530 = !DILocation(line: 373, column: 12, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 373, column: 11)
!1532 = !DILocation(line: 373, column: 11, scope: !1499)
!1533 = !DILocation(line: 378, column: 12, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 378, column: 11)
!1535 = !DILocation(line: 378, column: 11, scope: !1499)
!1536 = !DILocation(line: 379, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !124, line: 379, column: 9)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !124, line: 379, column: 9)
!1539 = !DILocation(line: 379, column: 9, scope: !1538)
!1540 = !DILocation(line: 386, column: 7, scope: !1499)
!1541 = !DILocation(line: 389, column: 7, scope: !1499)
!1542 = !DILocation(line: 255, column: 10, scope: !1406)
!1543 = !DILocation(line: 392, column: 8, scope: !1435)
!1544 = !DILocation(line: 392, column: 27, scope: !1434)
!1545 = !DILocation(line: 392, column: 19, scope: !1434)
!1546 = !DILocation(line: 392, column: 60, scope: !1434)
!1547 = !DILocation(line: 392, column: 3, scope: !1435)
!1548 = !DILocation(line: 392, column: 41, scope: !1434)
!1549 = !DILocation(line: 392, column: 48, scope: !1434)
!1550 = !DILocation(line: 396, column: 12, scope: !1433)
!1551 = !DILocation(line: 397, column: 12, scope: !1433)
!1552 = !DILocation(line: 398, column: 12, scope: !1433)
!1553 = !DILocation(line: 401, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 400, column: 11)
!1555 = !DILocation(line: 403, column: 17, scope: !1554)
!1556 = !DILocation(line: 404, column: 39, scope: !1554)
!1557 = !DILocation(line: 408, column: 32, scope: !1554)
!1558 = !DILocation(line: 404, column: 19, scope: !1554)
!1559 = !DILocation(line: 404, column: 15, scope: !1554)
!1560 = !DILocation(line: 409, column: 11, scope: !1554)
!1561 = !DILocation(line: 409, column: 26, scope: !1554)
!1562 = !DILocation(line: 409, column: 14, scope: !1554)
!1563 = !DILocation(line: 409, column: 63, scope: !1554)
!1564 = !DILocation(line: 400, column: 11, scope: !1433)
!1565 = !DILocation(line: 416, column: 11, scope: !1433)
!1566 = !DILocation(line: 394, column: 21, scope: !1433)
!1567 = !DILocation(line: 417, column: 7, scope: !1433)
!1568 = !DILocation(line: 420, column: 15, scope: !1442)
!1569 = !DILocation(line: 422, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !124, line: 422, column: 15)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 421, column: 13)
!1572 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 420, column: 15)
!1573 = !DILocation(line: 422, column: 15, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !124, line: 422, column: 15)
!1575 = !DILocation(line: 422, column: 15, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !124, line: 422, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !124, line: 422, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !124, line: 422, column: 15)
!1579 = !DILocation(line: 422, column: 15, scope: !1577)
!1580 = !DILocation(line: 422, column: 15, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !124, line: 422, column: 15)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !124, line: 422, column: 15)
!1583 = !DILocation(line: 422, column: 15, scope: !1582)
!1584 = !DILocation(line: 422, column: 15, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !124, line: 422, column: 15)
!1586 = distinct !DILexicalBlock(scope: !1578, file: !124, line: 422, column: 15)
!1587 = !DILocation(line: 422, column: 15, scope: !1586)
!1588 = !DILocation(line: 422, column: 15, scope: !1578)
!1589 = !DILocation(line: 422, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !124, line: 422, column: 15)
!1591 = distinct !DILexicalBlock(scope: !1570, file: !124, line: 422, column: 15)
!1592 = !DILocation(line: 422, column: 15, scope: !1591)
!1593 = !DILocation(line: 430, column: 19, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1571, file: !124, line: 429, column: 19)
!1595 = !DILocation(line: 430, column: 24, scope: !1594)
!1596 = !DILocation(line: 430, column: 28, scope: !1594)
!1597 = !DILocation(line: 430, column: 38, scope: !1594)
!1598 = !DILocation(line: 430, column: 48, scope: !1594)
!1599 = !DILocation(line: 430, column: 59, scope: !1594)
!1600 = !DILocation(line: 432, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !124, line: 432, column: 19)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !124, line: 432, column: 19)
!1603 = distinct !DILexicalBlock(scope: !1594, file: !124, line: 431, column: 17)
!1604 = !DILocation(line: 432, column: 19, scope: !1602)
!1605 = !DILocation(line: 433, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !124, line: 433, column: 19)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !124, line: 433, column: 19)
!1608 = !DILocation(line: 433, column: 19, scope: !1607)
!1609 = !DILocation(line: 434, column: 17, scope: !1603)
!1610 = !DILocation(line: 441, column: 20, scope: !1572)
!1611 = !DILocation(line: 446, column: 11, scope: !1442)
!1612 = !DILocation(line: 449, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 447, column: 13)
!1614 = !DILocation(line: 455, column: 19, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1613, file: !124, line: 454, column: 19)
!1616 = !DILocation(line: 455, column: 24, scope: !1615)
!1617 = !DILocation(line: 455, column: 28, scope: !1615)
!1618 = !DILocation(line: 455, column: 38, scope: !1615)
!1619 = !DILocation(line: 455, column: 47, scope: !1615)
!1620 = !DILocation(line: 455, column: 41, scope: !1615)
!1621 = !DILocation(line: 455, column: 52, scope: !1615)
!1622 = !DILocation(line: 454, column: 19, scope: !1613)
!1623 = !DILocation(line: 456, column: 25, scope: !1615)
!1624 = !DILocation(line: 456, column: 17, scope: !1615)
!1625 = !DILocation(line: 463, column: 25, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1615, file: !124, line: 457, column: 19)
!1627 = !DILocation(line: 467, column: 21, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !124, line: 467, column: 21)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 467, column: 21)
!1630 = !DILocation(line: 467, column: 21, scope: !1629)
!1631 = !DILocation(line: 468, column: 21, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !124, line: 468, column: 21)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 468, column: 21)
!1634 = !DILocation(line: 468, column: 21, scope: !1633)
!1635 = !DILocation(line: 469, column: 21, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !124, line: 469, column: 21)
!1637 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 469, column: 21)
!1638 = !DILocation(line: 469, column: 21, scope: !1637)
!1639 = !DILocation(line: 470, column: 21, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !124, line: 470, column: 21)
!1641 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 470, column: 21)
!1642 = !DILocation(line: 470, column: 21, scope: !1641)
!1643 = !DILocation(line: 471, column: 21, scope: !1626)
!1644 = !DILocation(line: 395, column: 21, scope: !1433)
!1645 = !DILocation(line: 484, column: 31, scope: !1442)
!1646 = !DILocation(line: 485, column: 31, scope: !1442)
!1647 = !DILocation(line: 487, column: 31, scope: !1442)
!1648 = !DILocation(line: 488, column: 31, scope: !1442)
!1649 = !DILocation(line: 489, column: 31, scope: !1442)
!1650 = !DILocation(line: 492, column: 15, scope: !1442)
!1651 = !DILocation(line: 494, column: 19, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !124, line: 493, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 492, column: 15)
!1654 = !DILocation(line: 501, column: 33, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 501, column: 15)
!1656 = !DILocation(line: 506, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 505, column: 15)
!1658 = !DILocation(line: 510, column: 15, scope: !1442)
!1659 = !DILocation(line: 518, column: 26, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 518, column: 15)
!1661 = !DILocation(line: 518, column: 15, scope: !1442)
!1662 = !DILocation(line: 518, column: 40, scope: !1660)
!1663 = !DILocation(line: 518, column: 47, scope: !1660)
!1664 = !DILocation(line: 522, column: 17, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 522, column: 15)
!1666 = !DILocation(line: 518, column: 18, scope: !1660)
!1667 = !DILocation(line: 518, column: 65, scope: !1660)
!1668 = !DILocation(line: 522, column: 15, scope: !1442)
!1669 = !DILocation(line: 526, column: 11, scope: !1442)
!1670 = !DILocation(line: 541, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 540, column: 15)
!1672 = !DILocation(line: 548, column: 15, scope: !1442)
!1673 = !DILocation(line: 550, column: 19, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !124, line: 549, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1442, file: !124, line: 548, column: 15)
!1676 = !DILocation(line: 553, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 553, column: 19)
!1678 = !DILocation(line: 553, column: 35, scope: !1677)
!1679 = !DILocation(line: 553, column: 30, scope: !1677)
!1680 = !DILocation(line: 562, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !124, line: 562, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 562, column: 15)
!1683 = !DILocation(line: 562, column: 15, scope: !1682)
!1684 = !DILocation(line: 563, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 563, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 563, column: 15)
!1687 = !DILocation(line: 563, column: 15, scope: !1686)
!1688 = !DILocation(line: 564, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !124, line: 564, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 564, column: 15)
!1691 = !DILocation(line: 564, column: 15, scope: !1690)
!1692 = !DILocation(line: 566, column: 13, scope: !1674)
!1693 = !DILocation(line: 606, column: 17, scope: !1441)
!1694 = !DILocation(line: 602, column: 20, scope: !1441)
!1695 = !DILocation(line: 609, column: 29, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1446, file: !124, line: 607, column: 15)
!1697 = !{!980, !980, i64 0}
!1698 = !DILocation(line: 609, column: 27, scope: !1696)
!1699 = !DILocation(line: 604, column: 18, scope: !1441)
!1700 = !DILocation(line: 610, column: 15, scope: !1696)
!1701 = !DILocation(line: 613, column: 17, scope: !1445)
!1702 = !DILocation(line: 614, column: 17, scope: !1445)
!1703 = !DILocation(line: 618, column: 29, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1445, file: !124, line: 618, column: 21)
!1705 = !DILocation(line: 618, column: 21, scope: !1445)
!1706 = !DILocation(line: 619, column: 29, scope: !1704)
!1707 = !DILocation(line: 619, column: 19, scope: !1704)
!1708 = !DILocation(line: 621, column: 17, scope: !1445)
!1709 = distinct !{!1709, !1708, !1710}
!1710 = !DILocation(line: 667, column: 44, scope: !1445)
!1711 = !DILocation(line: 623, column: 21, scope: !1463)
!1712 = !DILocation(line: 624, column: 56, scope: !1463)
!1713 = !DILocation(line: 624, column: 50, scope: !1463)
!1714 = !DILocation(line: 625, column: 53, scope: !1463)
!1715 = !DILocation(line: 613, column: 27, scope: !1445)
!1716 = !DILocation(line: 623, column: 29, scope: !1463)
!1717 = !DILocation(line: 624, column: 36, scope: !1463)
!1718 = !DILocation(line: 624, column: 28, scope: !1463)
!1719 = !DILocation(line: 626, column: 25, scope: !1463)
!1720 = !DILocation(line: 636, column: 38, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1470, file: !124, line: 634, column: 23)
!1722 = !DILocation(line: 636, column: 48, scope: !1721)
!1723 = !DILocation(line: 636, column: 51, scope: !1721)
!1724 = !DILocation(line: 636, column: 25, scope: !1721)
!1725 = !DILocation(line: 637, column: 28, scope: !1721)
!1726 = !DILocation(line: 636, column: 34, scope: !1721)
!1727 = distinct !{!1727, !1724, !1725}
!1728 = !DILocation(line: 650, column: 43, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !124, line: 650, column: 29)
!1730 = distinct !DILexicalBlock(scope: !1467, file: !124, line: 650, column: 29)
!1731 = !DILocation(line: 647, column: 29, scope: !1468)
!1732 = !DILocation(line: 649, column: 36, scope: !1467)
!1733 = !DILocation(line: 651, column: 49, scope: !1729)
!1734 = !DILocation(line: 651, column: 39, scope: !1729)
!1735 = !DILocation(line: 651, column: 31, scope: !1729)
!1736 = !DILocation(line: 650, column: 53, scope: !1729)
!1737 = !DILocation(line: 650, column: 29, scope: !1730)
!1738 = distinct !{!1738, !1737, !1739}
!1739 = !DILocation(line: 659, column: 33, scope: !1730)
!1740 = !DILocation(line: 666, column: 19, scope: !1445)
!1741 = !DILocation(line: 662, column: 41, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1469, file: !124, line: 662, column: 29)
!1743 = !DILocation(line: 662, column: 31, scope: !1742)
!1744 = !DILocation(line: 662, column: 29, scope: !1469)
!1745 = !DILocation(line: 664, column: 27, scope: !1469)
!1746 = !DILocation(line: 667, column: 26, scope: !1445)
!1747 = !DILocation(line: 667, column: 24, scope: !1445)
!1748 = !DILocation(line: 666, column: 19, scope: !1463)
!1749 = !DILocation(line: 668, column: 15, scope: !1446)
!1750 = !DILocation(line: 670, column: 40, scope: !1441)
!1751 = !DILocation(line: 672, column: 19, scope: !1475)
!1752 = !DILocation(line: 672, column: 45, scope: !1475)
!1753 = !DILocation(line: 672, column: 23, scope: !1475)
!1754 = !DILocation(line: 676, column: 33, scope: !1474)
!1755 = !DILocation(line: 676, column: 24, scope: !1474)
!1756 = !DILocation(line: 678, column: 17, scope: !1474)
!1757 = !DILocation(line: 680, column: 43, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !124, line: 680, column: 25)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !124, line: 679, column: 19)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !124, line: 678, column: 17)
!1761 = distinct !DILexicalBlock(scope: !1474, file: !124, line: 678, column: 17)
!1762 = !DILocation(line: 682, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !124, line: 682, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !124, line: 681, column: 23)
!1765 = !DILocation(line: 682, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !124, line: 682, column: 25)
!1767 = !DILocation(line: 682, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !124, line: 682, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !124, line: 682, column: 25)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !124, line: 682, column: 25)
!1771 = !DILocation(line: 682, column: 25, scope: !1769)
!1772 = !DILocation(line: 682, column: 25, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !124, line: 682, column: 25)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !124, line: 682, column: 25)
!1775 = !DILocation(line: 682, column: 25, scope: !1774)
!1776 = !DILocation(line: 682, column: 25, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !124, line: 682, column: 25)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !124, line: 682, column: 25)
!1779 = !DILocation(line: 682, column: 25, scope: !1778)
!1780 = !DILocation(line: 682, column: 25, scope: !1770)
!1781 = !DILocation(line: 682, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !124, line: 682, column: 25)
!1783 = distinct !DILexicalBlock(scope: !1763, file: !124, line: 682, column: 25)
!1784 = !DILocation(line: 682, column: 25, scope: !1783)
!1785 = !DILocation(line: 683, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !124, line: 683, column: 25)
!1787 = distinct !DILexicalBlock(scope: !1764, file: !124, line: 683, column: 25)
!1788 = !DILocation(line: 683, column: 25, scope: !1787)
!1789 = !DILocation(line: 684, column: 25, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !124, line: 684, column: 25)
!1791 = distinct !DILexicalBlock(scope: !1764, file: !124, line: 684, column: 25)
!1792 = !DILocation(line: 684, column: 25, scope: !1791)
!1793 = !DILocation(line: 685, column: 38, scope: !1764)
!1794 = !DILocation(line: 685, column: 33, scope: !1764)
!1795 = !DILocation(line: 686, column: 23, scope: !1764)
!1796 = !DILocation(line: 687, column: 30, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1758, file: !124, line: 687, column: 30)
!1798 = !DILocation(line: 687, column: 30, scope: !1758)
!1799 = !DILocation(line: 689, column: 25, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !124, line: 689, column: 25)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 689, column: 25)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !124, line: 688, column: 23)
!1803 = !DILocation(line: 689, column: 25, scope: !1801)
!1804 = !DILocation(line: 691, column: 23, scope: !1802)
!1805 = !DILocation(line: 692, column: 35, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1759, file: !124, line: 692, column: 25)
!1807 = !DILocation(line: 692, column: 30, scope: !1806)
!1808 = !DILocation(line: 692, column: 25, scope: !1759)
!1809 = !DILocation(line: 694, column: 21, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !124, line: 694, column: 21)
!1811 = distinct !DILexicalBlock(scope: !1759, file: !124, line: 694, column: 21)
!1812 = !DILocation(line: 694, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !124, line: 694, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !124, line: 694, column: 21)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !124, line: 694, column: 21)
!1816 = !DILocation(line: 694, column: 21, scope: !1814)
!1817 = !DILocation(line: 694, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !124, line: 694, column: 21)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !124, line: 694, column: 21)
!1820 = !DILocation(line: 694, column: 21, scope: !1819)
!1821 = !DILocation(line: 694, column: 21, scope: !1815)
!1822 = !DILocation(line: 695, column: 21, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !124, line: 695, column: 21)
!1824 = distinct !DILexicalBlock(scope: !1759, file: !124, line: 695, column: 21)
!1825 = !DILocation(line: 695, column: 21, scope: !1824)
!1826 = !DILocation(line: 696, column: 25, scope: !1759)
!1827 = !DILocation(line: 678, column: 17, scope: !1760)
!1828 = distinct !{!1828, !1829, !1830}
!1829 = !DILocation(line: 678, column: 17, scope: !1761)
!1830 = !DILocation(line: 697, column: 19, scope: !1761)
!1831 = !DILocation(line: 704, column: 34, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 704, column: 11)
!1833 = !DILocation(line: 706, column: 14, scope: !1832)
!1834 = !DILocation(line: 707, column: 14, scope: !1832)
!1835 = !DILocation(line: 707, column: 35, scope: !1832)
!1836 = !DILocation(line: 707, column: 17, scope: !1832)
!1837 = !DILocation(line: 707, column: 53, scope: !1832)
!1838 = !DILocation(line: 707, column: 47, scope: !1832)
!1839 = !DILocation(line: 707, column: 65, scope: !1832)
!1840 = !DILocation(line: 708, column: 15, scope: !1832)
!1841 = !DILocation(line: 708, column: 11, scope: !1832)
!1842 = !DILocation(line: 704, column: 11, scope: !1433)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 712, column: 7)
!1845 = !DILocation(line: 712, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1844, file: !124, line: 712, column: 7)
!1847 = !DILocation(line: 712, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !124, line: 712, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !124, line: 712, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !124, line: 712, column: 7)
!1851 = !DILocation(line: 712, column: 7, scope: !1849)
!1852 = !DILocation(line: 712, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !124, line: 712, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !124, line: 712, column: 7)
!1855 = !DILocation(line: 712, column: 7, scope: !1854)
!1856 = !DILocation(line: 712, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !124, line: 712, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !124, line: 712, column: 7)
!1859 = !DILocation(line: 712, column: 7, scope: !1858)
!1860 = !DILocation(line: 712, column: 7, scope: !1850)
!1861 = !DILocation(line: 712, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !124, line: 712, column: 7)
!1863 = distinct !DILexicalBlock(scope: !1844, file: !124, line: 712, column: 7)
!1864 = !DILocation(line: 712, column: 7, scope: !1863)
!1865 = !DILocation(line: 715, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 715, column: 7)
!1867 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 715, column: 7)
!1868 = !DILocation(line: 715, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !124, line: 715, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !124, line: 715, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !124, line: 715, column: 7)
!1872 = !DILocation(line: 715, column: 7, scope: !1870)
!1873 = !DILocation(line: 715, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !124, line: 715, column: 7)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !124, line: 715, column: 7)
!1876 = !DILocation(line: 715, column: 7, scope: !1875)
!1877 = !DILocation(line: 715, column: 7, scope: !1871)
!1878 = !DILocation(line: 716, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !124, line: 716, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 716, column: 7)
!1881 = !DILocation(line: 716, column: 7, scope: !1880)
!1882 = !DILocation(line: 718, column: 13, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 718, column: 11)
!1884 = !DILocation(line: 718, column: 11, scope: !1433)
!1885 = !DILocation(line: 720, column: 5, scope: !1434)
!1886 = !DILocation(line: 392, column: 75, scope: !1434)
!1887 = !DILocation(line: 392, column: 3, scope: !1434)
!1888 = distinct !{!1888, !1547, !1889}
!1889 = !DILocation(line: 720, column: 5, scope: !1435)
!1890 = !DILocation(line: 722, column: 11, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 722, column: 7)
!1892 = !DILocation(line: 722, column: 16, scope: !1891)
!1893 = !DILocation(line: 730, column: 51, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 730, column: 7)
!1895 = !DILocation(line: 731, column: 10, scope: !1894)
!1896 = !DILocation(line: 733, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !124, line: 733, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !124, line: 732, column: 5)
!1899 = !DILocation(line: 733, column: 11, scope: !1898)
!1900 = !DILocation(line: 734, column: 16, scope: !1897)
!1901 = !DILocation(line: 734, column: 9, scope: !1897)
!1902 = !DILocation(line: 738, column: 18, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !124, line: 738, column: 16)
!1904 = !DILocation(line: 738, column: 32, scope: !1903)
!1905 = !DILocation(line: 738, column: 29, scope: !1903)
!1906 = !DILocation(line: 747, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 747, column: 7)
!1908 = !DILocation(line: 747, column: 20, scope: !1907)
!1909 = !DILocation(line: 748, column: 12, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !124, line: 748, column: 5)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !124, line: 748, column: 5)
!1912 = !DILocation(line: 748, column: 5, scope: !1911)
!1913 = !DILocation(line: 749, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !124, line: 749, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !124, line: 749, column: 7)
!1916 = !DILocation(line: 749, column: 7, scope: !1915)
!1917 = !DILocation(line: 748, column: 39, scope: !1910)
!1918 = distinct !{!1918, !1912, !1919}
!1919 = !DILocation(line: 749, column: 7, scope: !1911)
!1920 = !DILocation(line: 751, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 751, column: 7)
!1922 = !DILocation(line: 751, column: 7, scope: !1406)
!1923 = !DILocation(line: 752, column: 5, scope: !1921)
!1924 = !DILocation(line: 752, column: 17, scope: !1921)
!1925 = !DILocation(line: 758, column: 21, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1406, file: !124, line: 758, column: 7)
!1927 = !DILocation(line: 758, column: 54, scope: !1926)
!1928 = !DILocation(line: 758, column: 51, scope: !1926)
!1929 = !DILocation(line: 762, column: 42, scope: !1406)
!1930 = !DILocation(line: 760, column: 10, scope: !1406)
!1931 = !DILocation(line: 760, column: 3, scope: !1406)
!1932 = !DILocation(line: 764, column: 1, scope: !1406)
!1933 = distinct !DISubprogram(name: "gettext_quote", scope: !124, file: !124, line: 199, type: !1934, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!36, !36, !5}
!1936 = !{!1937, !1938, !1939, !1940}
!1937 = !DILocalVariable(name: "msgid", arg: 1, scope: !1933, file: !124, line: 199, type: !36)
!1938 = !DILocalVariable(name: "s", arg: 2, scope: !1933, file: !124, line: 199, type: !5)
!1939 = !DILocalVariable(name: "translation", scope: !1933, file: !124, line: 201, type: !36)
!1940 = !DILocalVariable(name: "locale_code", scope: !1933, file: !124, line: 202, type: !36)
!1941 = !DILocation(line: 199, column: 28, scope: !1933)
!1942 = !DILocation(line: 199, column: 54, scope: !1933)
!1943 = !DILocation(line: 201, column: 29, scope: !1933)
!1944 = !DILocation(line: 201, column: 15, scope: !1933)
!1945 = !DILocation(line: 204, column: 19, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1933, file: !124, line: 204, column: 7)
!1947 = !DILocation(line: 204, column: 7, scope: !1933)
!1948 = !DILocation(line: 225, column: 17, scope: !1933)
!1949 = !DILocation(line: 202, column: 15, scope: !1933)
!1950 = !DILocalVariable(name: "s2", arg: 2, scope: !1951, file: !1952, line: 160, type: !36)
!1951 = distinct !DISubprogram(name: "strcaseeq0", scope: !1952, file: !1952, line: 160, type: !1953, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1955)
!1952 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!59, !36, !36, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!1955 = !{!1956, !1950, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1956 = !DILocalVariable(name: "s1", arg: 1, scope: !1951, file: !1952, line: 160, type: !36)
!1957 = !DILocalVariable(name: "s20", arg: 3, scope: !1951, file: !1952, line: 160, type: !26)
!1958 = !DILocalVariable(name: "s21", arg: 4, scope: !1951, file: !1952, line: 160, type: !26)
!1959 = !DILocalVariable(name: "s22", arg: 5, scope: !1951, file: !1952, line: 160, type: !26)
!1960 = !DILocalVariable(name: "s23", arg: 6, scope: !1951, file: !1952, line: 160, type: !26)
!1961 = !DILocalVariable(name: "s24", arg: 7, scope: !1951, file: !1952, line: 160, type: !26)
!1962 = !DILocalVariable(name: "s25", arg: 8, scope: !1951, file: !1952, line: 160, type: !26)
!1963 = !DILocalVariable(name: "s26", arg: 9, scope: !1951, file: !1952, line: 160, type: !26)
!1964 = !DILocalVariable(name: "s27", arg: 10, scope: !1951, file: !1952, line: 160, type: !26)
!1965 = !DILocalVariable(name: "s28", arg: 11, scope: !1951, file: !1952, line: 160, type: !26)
!1966 = !DILocation(line: 160, column: 41, scope: !1951, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 226, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1933, file: !124, line: 226, column: 7)
!1969 = !DILocation(line: 160, column: 120, scope: !1951, inlinedAt: !1967)
!1970 = !DILocation(line: 160, column: 130, scope: !1951, inlinedAt: !1967)
!1971 = !DILocation(line: 162, column: 7, scope: !1972, inlinedAt: !1967)
!1972 = distinct !DILexicalBlock(scope: !1951, file: !1952, line: 162, column: 7)
!1973 = !DILocalVariable(name: "s2", arg: 2, scope: !1974, file: !1952, line: 146, type: !36)
!1974 = distinct !DISubprogram(name: "strcaseeq1", scope: !1952, file: !1952, line: 146, type: !1975, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!59, !36, !36, !26, !26, !26, !26, !26, !26, !26, !26}
!1977 = !{!1978, !1973, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1978 = !DILocalVariable(name: "s1", arg: 1, scope: !1974, file: !1952, line: 146, type: !36)
!1979 = !DILocalVariable(name: "s21", arg: 3, scope: !1974, file: !1952, line: 146, type: !26)
!1980 = !DILocalVariable(name: "s22", arg: 4, scope: !1974, file: !1952, line: 146, type: !26)
!1981 = !DILocalVariable(name: "s23", arg: 5, scope: !1974, file: !1952, line: 146, type: !26)
!1982 = !DILocalVariable(name: "s24", arg: 6, scope: !1974, file: !1952, line: 146, type: !26)
!1983 = !DILocalVariable(name: "s25", arg: 7, scope: !1974, file: !1952, line: 146, type: !26)
!1984 = !DILocalVariable(name: "s26", arg: 8, scope: !1974, file: !1952, line: 146, type: !26)
!1985 = !DILocalVariable(name: "s27", arg: 9, scope: !1974, file: !1952, line: 146, type: !26)
!1986 = !DILocalVariable(name: "s28", arg: 10, scope: !1974, file: !1952, line: 146, type: !26)
!1987 = !DILocation(line: 146, column: 41, scope: !1974, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 167, column: 16, scope: !1989, inlinedAt: !1967)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1952, line: 164, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1972, file: !1952, line: 163, column: 5)
!1991 = !DILocation(line: 146, column: 110, scope: !1974, inlinedAt: !1988)
!1992 = !DILocation(line: 146, column: 120, scope: !1974, inlinedAt: !1988)
!1993 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !1988)
!1994 = distinct !DILexicalBlock(scope: !1974, file: !1952, line: 148, column: 7)
!1995 = !DILocalVariable(name: "s2", arg: 2, scope: !1996, file: !1952, line: 132, type: !36)
!1996 = distinct !DISubprogram(name: "strcaseeq2", scope: !1952, file: !1952, line: 132, type: !1997, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!59, !36, !36, !26, !26, !26, !26, !26, !26, !26}
!1999 = !{!2000, !1995, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!2000 = !DILocalVariable(name: "s1", arg: 1, scope: !1996, file: !1952, line: 132, type: !36)
!2001 = !DILocalVariable(name: "s22", arg: 3, scope: !1996, file: !1952, line: 132, type: !26)
!2002 = !DILocalVariable(name: "s23", arg: 4, scope: !1996, file: !1952, line: 132, type: !26)
!2003 = !DILocalVariable(name: "s24", arg: 5, scope: !1996, file: !1952, line: 132, type: !26)
!2004 = !DILocalVariable(name: "s25", arg: 6, scope: !1996, file: !1952, line: 132, type: !26)
!2005 = !DILocalVariable(name: "s26", arg: 7, scope: !1996, file: !1952, line: 132, type: !26)
!2006 = !DILocalVariable(name: "s27", arg: 8, scope: !1996, file: !1952, line: 132, type: !26)
!2007 = !DILocalVariable(name: "s28", arg: 9, scope: !1996, file: !1952, line: 132, type: !26)
!2008 = !DILocation(line: 132, column: 41, scope: !1996, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !1988)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1952, line: 150, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1994, file: !1952, line: 149, column: 5)
!2012 = !DILocation(line: 132, column: 100, scope: !1996, inlinedAt: !2009)
!2013 = !DILocation(line: 132, column: 110, scope: !1996, inlinedAt: !2009)
!2014 = !DILocation(line: 134, column: 7, scope: !2015, inlinedAt: !2009)
!2015 = distinct !DILexicalBlock(scope: !1996, file: !1952, line: 134, column: 7)
!2016 = !DILocalVariable(name: "s2", arg: 2, scope: !2017, file: !1952, line: 118, type: !36)
!2017 = distinct !DISubprogram(name: "strcaseeq3", scope: !1952, file: !1952, line: 118, type: !2018, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!59, !36, !36, !26, !26, !26, !26, !26, !26}
!2020 = !{!2021, !2016, !2022, !2023, !2024, !2025, !2026, !2027}
!2021 = !DILocalVariable(name: "s1", arg: 1, scope: !2017, file: !1952, line: 118, type: !36)
!2022 = !DILocalVariable(name: "s23", arg: 3, scope: !2017, file: !1952, line: 118, type: !26)
!2023 = !DILocalVariable(name: "s24", arg: 4, scope: !2017, file: !1952, line: 118, type: !26)
!2024 = !DILocalVariable(name: "s25", arg: 5, scope: !2017, file: !1952, line: 118, type: !26)
!2025 = !DILocalVariable(name: "s26", arg: 6, scope: !2017, file: !1952, line: 118, type: !26)
!2026 = !DILocalVariable(name: "s27", arg: 7, scope: !2017, file: !1952, line: 118, type: !26)
!2027 = !DILocalVariable(name: "s28", arg: 8, scope: !2017, file: !1952, line: 118, type: !26)
!2028 = !DILocation(line: 118, column: 41, scope: !2017, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 139, column: 16, scope: !2030, inlinedAt: !2009)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !1952, line: 136, column: 11)
!2031 = distinct !DILexicalBlock(scope: !2015, file: !1952, line: 135, column: 5)
!2032 = !DILocation(line: 118, column: 90, scope: !2017, inlinedAt: !2029)
!2033 = !DILocation(line: 118, column: 100, scope: !2017, inlinedAt: !2029)
!2034 = !DILocation(line: 120, column: 7, scope: !2035, inlinedAt: !2029)
!2035 = distinct !DILexicalBlock(scope: !2017, file: !1952, line: 120, column: 7)
!2036 = !DILocation(line: 120, column: 7, scope: !2017, inlinedAt: !2029)
!2037 = !DILocalVariable(name: "s2", arg: 2, scope: !2038, file: !1952, line: 104, type: !36)
!2038 = distinct !DISubprogram(name: "strcaseeq4", scope: !1952, file: !1952, line: 104, type: !2039, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!59, !36, !36, !26, !26, !26, !26, !26}
!2041 = !{!2042, !2037, !2043, !2044, !2045, !2046, !2047}
!2042 = !DILocalVariable(name: "s1", arg: 1, scope: !2038, file: !1952, line: 104, type: !36)
!2043 = !DILocalVariable(name: "s24", arg: 3, scope: !2038, file: !1952, line: 104, type: !26)
!2044 = !DILocalVariable(name: "s25", arg: 4, scope: !2038, file: !1952, line: 104, type: !26)
!2045 = !DILocalVariable(name: "s26", arg: 5, scope: !2038, file: !1952, line: 104, type: !26)
!2046 = !DILocalVariable(name: "s27", arg: 6, scope: !2038, file: !1952, line: 104, type: !26)
!2047 = !DILocalVariable(name: "s28", arg: 7, scope: !2038, file: !1952, line: 104, type: !26)
!2048 = !DILocation(line: 104, column: 41, scope: !2038, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 125, column: 16, scope: !2050, inlinedAt: !2029)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1952, line: 122, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2035, file: !1952, line: 121, column: 5)
!2052 = !DILocation(line: 104, column: 80, scope: !2038, inlinedAt: !2049)
!2053 = !DILocation(line: 104, column: 90, scope: !2038, inlinedAt: !2049)
!2054 = !DILocation(line: 106, column: 7, scope: !2055, inlinedAt: !2049)
!2055 = distinct !DILexicalBlock(scope: !2038, file: !1952, line: 106, column: 7)
!2056 = !DILocation(line: 106, column: 7, scope: !2038, inlinedAt: !2049)
!2057 = !DILocalVariable(name: "s2", arg: 2, scope: !2058, file: !1952, line: 90, type: !36)
!2058 = distinct !DISubprogram(name: "strcaseeq5", scope: !1952, file: !1952, line: 90, type: !2059, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!59, !36, !36, !26, !26, !26, !26}
!2061 = !{!2062, !2057, !2063, !2064, !2065, !2066}
!2062 = !DILocalVariable(name: "s1", arg: 1, scope: !2058, file: !1952, line: 90, type: !36)
!2063 = !DILocalVariable(name: "s25", arg: 3, scope: !2058, file: !1952, line: 90, type: !26)
!2064 = !DILocalVariable(name: "s26", arg: 4, scope: !2058, file: !1952, line: 90, type: !26)
!2065 = !DILocalVariable(name: "s27", arg: 5, scope: !2058, file: !1952, line: 90, type: !26)
!2066 = !DILocalVariable(name: "s28", arg: 6, scope: !2058, file: !1952, line: 90, type: !26)
!2067 = !DILocation(line: 90, column: 41, scope: !2058, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 111, column: 16, scope: !2069, inlinedAt: !2049)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1952, line: 108, column: 11)
!2070 = distinct !DILexicalBlock(scope: !2055, file: !1952, line: 107, column: 5)
!2071 = !DILocation(line: 90, column: 70, scope: !2058, inlinedAt: !2068)
!2072 = !DILocation(line: 90, column: 80, scope: !2058, inlinedAt: !2068)
!2073 = !DILocation(line: 92, column: 7, scope: !2074, inlinedAt: !2068)
!2074 = distinct !DILexicalBlock(scope: !2058, file: !1952, line: 92, column: 7)
!2075 = !DILocation(line: 92, column: 7, scope: !2058, inlinedAt: !2068)
!2076 = !DILocation(line: 227, column: 12, scope: !1968)
!2077 = !DILocation(line: 227, column: 21, scope: !1968)
!2078 = !DILocation(line: 227, column: 5, scope: !1968)
!2079 = !DILocation(line: 146, column: 41, scope: !1974, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 167, column: 16, scope: !1989, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 228, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1933, file: !124, line: 228, column: 7)
!2083 = !DILocation(line: 146, column: 110, scope: !1974, inlinedAt: !2080)
!2084 = !DILocation(line: 146, column: 120, scope: !1974, inlinedAt: !2080)
!2085 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !2080)
!2086 = !DILocation(line: 132, column: 41, scope: !1996, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !2080)
!2088 = !DILocation(line: 132, column: 100, scope: !1996, inlinedAt: !2087)
!2089 = !DILocation(line: 132, column: 110, scope: !1996, inlinedAt: !2087)
!2090 = !DILocation(line: 134, column: 7, scope: !2015, inlinedAt: !2087)
!2091 = !DILocation(line: 134, column: 7, scope: !1996, inlinedAt: !2087)
!2092 = !DILocation(line: 118, column: 41, scope: !2017, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 139, column: 16, scope: !2030, inlinedAt: !2087)
!2094 = !DILocation(line: 118, column: 90, scope: !2017, inlinedAt: !2093)
!2095 = !DILocation(line: 118, column: 100, scope: !2017, inlinedAt: !2093)
!2096 = !DILocation(line: 120, column: 7, scope: !2035, inlinedAt: !2093)
!2097 = !DILocation(line: 120, column: 7, scope: !2017, inlinedAt: !2093)
!2098 = !DILocation(line: 104, column: 41, scope: !2038, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 125, column: 16, scope: !2050, inlinedAt: !2093)
!2100 = !DILocation(line: 104, column: 80, scope: !2038, inlinedAt: !2099)
!2101 = !DILocation(line: 104, column: 90, scope: !2038, inlinedAt: !2099)
!2102 = !DILocation(line: 106, column: 7, scope: !2055, inlinedAt: !2099)
!2103 = !DILocation(line: 106, column: 7, scope: !2038, inlinedAt: !2099)
!2104 = !DILocation(line: 90, column: 41, scope: !2058, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 111, column: 16, scope: !2069, inlinedAt: !2099)
!2106 = !DILocation(line: 90, column: 70, scope: !2058, inlinedAt: !2105)
!2107 = !DILocation(line: 90, column: 80, scope: !2058, inlinedAt: !2105)
!2108 = !DILocation(line: 92, column: 7, scope: !2074, inlinedAt: !2105)
!2109 = !DILocation(line: 92, column: 7, scope: !2058, inlinedAt: !2105)
!2110 = !DILocalVariable(name: "s2", arg: 2, scope: !2111, file: !1952, line: 76, type: !36)
!2111 = distinct !DISubprogram(name: "strcaseeq6", scope: !1952, file: !1952, line: 76, type: !2112, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!59, !36, !36, !26, !26, !26}
!2114 = !{!2115, !2110, !2116, !2117, !2118}
!2115 = !DILocalVariable(name: "s1", arg: 1, scope: !2111, file: !1952, line: 76, type: !36)
!2116 = !DILocalVariable(name: "s26", arg: 3, scope: !2111, file: !1952, line: 76, type: !26)
!2117 = !DILocalVariable(name: "s27", arg: 4, scope: !2111, file: !1952, line: 76, type: !26)
!2118 = !DILocalVariable(name: "s28", arg: 5, scope: !2111, file: !1952, line: 76, type: !26)
!2119 = !DILocation(line: 76, column: 41, scope: !2111, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 97, column: 16, scope: !2121, inlinedAt: !2105)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !1952, line: 94, column: 11)
!2122 = distinct !DILexicalBlock(scope: !2074, file: !1952, line: 93, column: 5)
!2123 = !DILocation(line: 76, column: 60, scope: !2111, inlinedAt: !2120)
!2124 = !DILocation(line: 76, column: 70, scope: !2111, inlinedAt: !2120)
!2125 = !DILocation(line: 78, column: 7, scope: !2126, inlinedAt: !2120)
!2126 = distinct !DILexicalBlock(scope: !2111, file: !1952, line: 78, column: 7)
!2127 = !DILocation(line: 78, column: 7, scope: !2111, inlinedAt: !2120)
!2128 = !DILocalVariable(name: "s2", arg: 2, scope: !2129, file: !1952, line: 62, type: !36)
!2129 = distinct !DISubprogram(name: "strcaseeq7", scope: !1952, file: !1952, line: 62, type: !2130, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!59, !36, !36, !26, !26}
!2132 = !{!2133, !2128, !2134, !2135}
!2133 = !DILocalVariable(name: "s1", arg: 1, scope: !2129, file: !1952, line: 62, type: !36)
!2134 = !DILocalVariable(name: "s27", arg: 3, scope: !2129, file: !1952, line: 62, type: !26)
!2135 = !DILocalVariable(name: "s28", arg: 4, scope: !2129, file: !1952, line: 62, type: !26)
!2136 = !DILocation(line: 62, column: 41, scope: !2129, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 83, column: 16, scope: !2138, inlinedAt: !2120)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !1952, line: 80, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2126, file: !1952, line: 79, column: 5)
!2140 = !DILocation(line: 62, column: 50, scope: !2129, inlinedAt: !2137)
!2141 = !DILocation(line: 62, column: 60, scope: !2129, inlinedAt: !2137)
!2142 = !DILocation(line: 64, column: 7, scope: !2143, inlinedAt: !2137)
!2143 = distinct !DILexicalBlock(scope: !2129, file: !1952, line: 64, column: 7)
!2144 = !DILocation(line: 228, column: 7, scope: !1933)
!2145 = !DILocation(line: 229, column: 12, scope: !2082)
!2146 = !DILocation(line: 229, column: 21, scope: !2082)
!2147 = !DILocation(line: 229, column: 5, scope: !2082)
!2148 = !DILocation(line: 231, column: 13, scope: !1933)
!2149 = !DILocation(line: 231, column: 11, scope: !1933)
!2150 = !DILocation(line: 231, column: 3, scope: !1933)
!2151 = !DILocation(line: 232, column: 1, scope: !1933)
!2152 = distinct !DISubprogram(name: "quotearg_alloc", scope: !124, file: !124, line: 791, type: !2153, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!25, !36, !27, !1278}
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "arg", arg: 1, scope: !2152, file: !124, line: 791, type: !36)
!2157 = !DILocalVariable(name: "argsize", arg: 2, scope: !2152, file: !124, line: 791, type: !27)
!2158 = !DILocalVariable(name: "o", arg: 3, scope: !2152, file: !124, line: 792, type: !1278)
!2159 = !DILocation(line: 791, column: 29, scope: !2152)
!2160 = !DILocation(line: 791, column: 41, scope: !2152)
!2161 = !DILocation(line: 792, column: 47, scope: !2152)
!2162 = !DILocalVariable(name: "arg", arg: 1, scope: !2163, file: !124, line: 804, type: !36)
!2163 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !124, file: !124, line: 804, type: !2164, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!25, !36, !27, !540, !1278}
!2166 = !{!2162, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2167 = !DILocalVariable(name: "argsize", arg: 2, scope: !2163, file: !124, line: 804, type: !27)
!2168 = !DILocalVariable(name: "size", arg: 3, scope: !2163, file: !124, line: 804, type: !540)
!2169 = !DILocalVariable(name: "o", arg: 4, scope: !2163, file: !124, line: 805, type: !1278)
!2170 = !DILocalVariable(name: "p", scope: !2163, file: !124, line: 807, type: !1278)
!2171 = !DILocalVariable(name: "e", scope: !2163, file: !124, line: 808, type: !59)
!2172 = !DILocalVariable(name: "flags", scope: !2163, file: !124, line: 810, type: !59)
!2173 = !DILocalVariable(name: "bufsize", scope: !2163, file: !124, line: 811, type: !27)
!2174 = !DILocalVariable(name: "buf", scope: !2163, file: !124, line: 815, type: !25)
!2175 = !DILocation(line: 804, column: 33, scope: !2163, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 794, column: 10, scope: !2152)
!2177 = !DILocation(line: 804, column: 45, scope: !2163, inlinedAt: !2176)
!2178 = !DILocation(line: 804, column: 62, scope: !2163, inlinedAt: !2176)
!2179 = !DILocation(line: 805, column: 51, scope: !2163, inlinedAt: !2176)
!2180 = !DILocation(line: 807, column: 37, scope: !2163, inlinedAt: !2176)
!2181 = !DILocation(line: 807, column: 33, scope: !2163, inlinedAt: !2176)
!2182 = !DILocation(line: 808, column: 11, scope: !2163, inlinedAt: !2176)
!2183 = !DILocation(line: 808, column: 7, scope: !2163, inlinedAt: !2176)
!2184 = !DILocation(line: 810, column: 18, scope: !2163, inlinedAt: !2176)
!2185 = !DILocation(line: 810, column: 24, scope: !2163, inlinedAt: !2176)
!2186 = !DILocation(line: 810, column: 7, scope: !2163, inlinedAt: !2176)
!2187 = !DILocation(line: 811, column: 69, scope: !2163, inlinedAt: !2176)
!2188 = !DILocation(line: 812, column: 53, scope: !2163, inlinedAt: !2176)
!2189 = !DILocation(line: 813, column: 49, scope: !2163, inlinedAt: !2176)
!2190 = !DILocation(line: 814, column: 49, scope: !2163, inlinedAt: !2176)
!2191 = !DILocation(line: 811, column: 20, scope: !2163, inlinedAt: !2176)
!2192 = !DILocation(line: 814, column: 62, scope: !2163, inlinedAt: !2176)
!2193 = !DILocation(line: 811, column: 10, scope: !2163, inlinedAt: !2176)
!2194 = !DILocalVariable(name: "n", arg: 1, scope: !2195, file: !536, line: 220, type: !27)
!2195 = distinct !DISubprogram(name: "xcharalloc", scope: !536, file: !536, line: 220, type: !1135, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2196)
!2196 = !{!2194}
!2197 = !DILocation(line: 220, column: 20, scope: !2195, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 815, column: 15, scope: !2163, inlinedAt: !2176)
!2199 = !DILocation(line: 222, column: 10, scope: !2195, inlinedAt: !2198)
!2200 = !DILocation(line: 815, column: 9, scope: !2163, inlinedAt: !2176)
!2201 = !DILocation(line: 816, column: 60, scope: !2163, inlinedAt: !2176)
!2202 = !DILocation(line: 818, column: 32, scope: !2163, inlinedAt: !2176)
!2203 = !DILocation(line: 818, column: 47, scope: !2163, inlinedAt: !2176)
!2204 = !DILocation(line: 816, column: 3, scope: !2163, inlinedAt: !2176)
!2205 = !DILocation(line: 819, column: 9, scope: !2163, inlinedAt: !2176)
!2206 = !DILocation(line: 794, column: 3, scope: !2152)
!2207 = !DILocation(line: 804, column: 33, scope: !2163)
!2208 = !DILocation(line: 804, column: 45, scope: !2163)
!2209 = !DILocation(line: 804, column: 62, scope: !2163)
!2210 = !DILocation(line: 805, column: 51, scope: !2163)
!2211 = !DILocation(line: 807, column: 37, scope: !2163)
!2212 = !DILocation(line: 807, column: 33, scope: !2163)
!2213 = !DILocation(line: 808, column: 11, scope: !2163)
!2214 = !DILocation(line: 808, column: 7, scope: !2163)
!2215 = !DILocation(line: 810, column: 18, scope: !2163)
!2216 = !DILocation(line: 810, column: 27, scope: !2163)
!2217 = !DILocation(line: 810, column: 24, scope: !2163)
!2218 = !DILocation(line: 810, column: 7, scope: !2163)
!2219 = !DILocation(line: 811, column: 69, scope: !2163)
!2220 = !DILocation(line: 812, column: 53, scope: !2163)
!2221 = !DILocation(line: 813, column: 49, scope: !2163)
!2222 = !DILocation(line: 814, column: 49, scope: !2163)
!2223 = !DILocation(line: 811, column: 20, scope: !2163)
!2224 = !DILocation(line: 814, column: 62, scope: !2163)
!2225 = !DILocation(line: 811, column: 10, scope: !2163)
!2226 = !DILocation(line: 220, column: 20, scope: !2195, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 815, column: 15, scope: !2163)
!2228 = !DILocation(line: 222, column: 10, scope: !2195, inlinedAt: !2227)
!2229 = !DILocation(line: 815, column: 9, scope: !2163)
!2230 = !DILocation(line: 816, column: 60, scope: !2163)
!2231 = !DILocation(line: 818, column: 32, scope: !2163)
!2232 = !DILocation(line: 818, column: 47, scope: !2163)
!2233 = !DILocation(line: 816, column: 3, scope: !2163)
!2234 = !DILocation(line: 819, column: 9, scope: !2163)
!2235 = !DILocation(line: 820, column: 7, scope: !2163)
!2236 = !DILocation(line: 821, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2163, file: !124, line: 820, column: 7)
!2238 = !DILocation(line: 821, column: 5, scope: !2237)
!2239 = !DILocation(line: 822, column: 3, scope: !2163)
!2240 = distinct !DISubprogram(name: "quotearg_free", scope: !124, file: !124, line: 840, type: !1185, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "sv", scope: !2240, file: !124, line: 842, type: !151)
!2243 = !DILocalVariable(name: "i", scope: !2240, file: !124, line: 843, type: !59)
!2244 = !DILocation(line: 842, column: 24, scope: !2240)
!2245 = !DILocation(line: 842, column: 19, scope: !2240)
!2246 = !DILocation(line: 843, column: 7, scope: !2240)
!2247 = !DILocation(line: 844, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !124, line: 844, column: 3)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !124, line: 844, column: 3)
!2250 = !DILocation(line: 844, column: 17, scope: !2248)
!2251 = !DILocation(line: 844, column: 3, scope: !2249)
!2252 = !DILocation(line: 845, column: 17, scope: !2248)
!2253 = !{!2254, !587, i64 8}
!2254 = !{!"slotvec", !764, i64 0, !587, i64 8}
!2255 = !DILocation(line: 845, column: 5, scope: !2248)
!2256 = !DILocation(line: 844, column: 28, scope: !2248)
!2257 = distinct !{!2257, !2251, !2258}
!2258 = !DILocation(line: 845, column: 20, scope: !2249)
!2259 = !DILocation(line: 846, column: 13, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2240, file: !124, line: 846, column: 7)
!2261 = !DILocation(line: 846, column: 17, scope: !2260)
!2262 = !DILocation(line: 846, column: 7, scope: !2240)
!2263 = !DILocation(line: 848, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !124, line: 847, column: 5)
!2265 = !DILocation(line: 849, column: 21, scope: !2264)
!2266 = !{!2254, !764, i64 0}
!2267 = !DILocation(line: 850, column: 20, scope: !2264)
!2268 = !DILocation(line: 851, column: 5, scope: !2264)
!2269 = !DILocation(line: 852, column: 10, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2240, file: !124, line: 852, column: 7)
!2271 = !DILocation(line: 852, column: 7, scope: !2240)
!2272 = !DILocation(line: 854, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !124, line: 853, column: 5)
!2274 = !DILocation(line: 854, column: 7, scope: !2273)
!2275 = !DILocation(line: 855, column: 15, scope: !2273)
!2276 = !DILocation(line: 856, column: 5, scope: !2273)
!2277 = !DILocation(line: 857, column: 10, scope: !2240)
!2278 = !DILocation(line: 858, column: 1, scope: !2240)
!2279 = distinct !DISubprogram(name: "quotearg_n", scope: !124, file: !124, line: 922, type: !2280, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!25, !59, !36}
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2279, file: !124, line: 922, type: !59)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2279, file: !124, line: 922, type: !36)
!2285 = !DILocation(line: 922, column: 17, scope: !2279)
!2286 = !DILocation(line: 922, column: 32, scope: !2279)
!2287 = !DILocation(line: 924, column: 10, scope: !2279)
!2288 = !DILocation(line: 924, column: 3, scope: !2279)
!2289 = distinct !DISubprogram(name: "quotearg_n_options", scope: !124, file: !124, line: 869, type: !2290, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!25, !59, !36, !27, !1278}
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2302, !2304, !2305, !2306}
!2293 = !DILocalVariable(name: "n", arg: 1, scope: !2289, file: !124, line: 869, type: !59)
!2294 = !DILocalVariable(name: "arg", arg: 2, scope: !2289, file: !124, line: 869, type: !36)
!2295 = !DILocalVariable(name: "argsize", arg: 3, scope: !2289, file: !124, line: 869, type: !27)
!2296 = !DILocalVariable(name: "options", arg: 4, scope: !2289, file: !124, line: 870, type: !1278)
!2297 = !DILocalVariable(name: "e", scope: !2289, file: !124, line: 872, type: !59)
!2298 = !DILocalVariable(name: "sv", scope: !2289, file: !124, line: 874, type: !151)
!2299 = !DILocalVariable(name: "preallocated", scope: !2300, file: !124, line: 881, type: !79)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !124, line: 880, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2289, file: !124, line: 879, column: 7)
!2302 = !DILocalVariable(name: "size", scope: !2303, file: !124, line: 894, type: !27)
!2303 = distinct !DILexicalBlock(scope: !2289, file: !124, line: 893, column: 3)
!2304 = !DILocalVariable(name: "val", scope: !2303, file: !124, line: 895, type: !25)
!2305 = !DILocalVariable(name: "flags", scope: !2303, file: !124, line: 897, type: !59)
!2306 = !DILocalVariable(name: "qsize", scope: !2303, file: !124, line: 898, type: !27)
!2307 = !DILocation(line: 869, column: 25, scope: !2289)
!2308 = !DILocation(line: 869, column: 40, scope: !2289)
!2309 = !DILocation(line: 869, column: 52, scope: !2289)
!2310 = !DILocation(line: 870, column: 51, scope: !2289)
!2311 = !DILocation(line: 872, column: 11, scope: !2289)
!2312 = !DILocation(line: 872, column: 7, scope: !2289)
!2313 = !DILocation(line: 874, column: 24, scope: !2289)
!2314 = !DILocation(line: 874, column: 19, scope: !2289)
!2315 = !DILocation(line: 876, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2289, file: !124, line: 876, column: 7)
!2317 = !DILocation(line: 876, column: 7, scope: !2289)
!2318 = !DILocation(line: 877, column: 5, scope: !2316)
!2319 = !DILocation(line: 879, column: 7, scope: !2301)
!2320 = !DILocation(line: 879, column: 14, scope: !2301)
!2321 = !DILocation(line: 879, column: 7, scope: !2289)
!2322 = !DILocation(line: 881, column: 31, scope: !2300)
!2323 = !DILocation(line: 883, column: 67, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2300, file: !124, line: 883, column: 11)
!2325 = !DILocation(line: 883, column: 11, scope: !2300)
!2326 = !DILocation(line: 884, column: 9, scope: !2324)
!2327 = !DILocation(line: 886, column: 32, scope: !2300)
!2328 = !DILocation(line: 886, column: 61, scope: !2300)
!2329 = !DILocation(line: 886, column: 58, scope: !2300)
!2330 = !DILocation(line: 886, column: 66, scope: !2300)
!2331 = !DILocation(line: 886, column: 22, scope: !2300)
!2332 = !DILocation(line: 886, column: 15, scope: !2300)
!2333 = !DILocation(line: 887, column: 11, scope: !2300)
!2334 = !DILocation(line: 888, column: 15, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2300, file: !124, line: 887, column: 11)
!2336 = !{i64 0, i64 8, !1082, i64 8, i64 8, !586}
!2337 = !DILocation(line: 888, column: 9, scope: !2335)
!2338 = !DILocation(line: 889, column: 20, scope: !2300)
!2339 = !DILocation(line: 889, column: 18, scope: !2300)
!2340 = !DILocation(line: 889, column: 7, scope: !2300)
!2341 = !DILocation(line: 889, column: 38, scope: !2300)
!2342 = !DILocation(line: 889, column: 31, scope: !2300)
!2343 = !DILocation(line: 889, column: 48, scope: !2300)
!2344 = !DILocation(line: 890, column: 14, scope: !2300)
!2345 = !DILocation(line: 891, column: 5, scope: !2300)
!2346 = !DILocation(line: 894, column: 19, scope: !2303)
!2347 = !DILocation(line: 894, column: 25, scope: !2303)
!2348 = !DILocation(line: 894, column: 12, scope: !2303)
!2349 = !DILocation(line: 895, column: 23, scope: !2303)
!2350 = !DILocation(line: 895, column: 11, scope: !2303)
!2351 = !DILocation(line: 897, column: 26, scope: !2303)
!2352 = !DILocation(line: 897, column: 32, scope: !2303)
!2353 = !DILocation(line: 897, column: 9, scope: !2303)
!2354 = !DILocation(line: 899, column: 55, scope: !2303)
!2355 = !DILocation(line: 900, column: 46, scope: !2303)
!2356 = !DILocation(line: 901, column: 55, scope: !2303)
!2357 = !DILocation(line: 902, column: 55, scope: !2303)
!2358 = !DILocation(line: 898, column: 20, scope: !2303)
!2359 = !DILocation(line: 898, column: 12, scope: !2303)
!2360 = !DILocation(line: 904, column: 14, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2303, file: !124, line: 904, column: 9)
!2362 = !DILocation(line: 904, column: 9, scope: !2303)
!2363 = !DILocation(line: 906, column: 35, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !124, line: 905, column: 7)
!2365 = !DILocation(line: 906, column: 20, scope: !2364)
!2366 = !DILocation(line: 907, column: 17, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !124, line: 907, column: 13)
!2368 = !DILocation(line: 907, column: 13, scope: !2364)
!2369 = !DILocation(line: 908, column: 11, scope: !2367)
!2370 = !DILocation(line: 220, column: 20, scope: !2195, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 909, column: 27, scope: !2364)
!2372 = !DILocation(line: 222, column: 10, scope: !2195, inlinedAt: !2371)
!2373 = !DILocation(line: 909, column: 19, scope: !2364)
!2374 = !DILocation(line: 910, column: 69, scope: !2364)
!2375 = !DILocation(line: 912, column: 44, scope: !2364)
!2376 = !DILocation(line: 913, column: 44, scope: !2364)
!2377 = !DILocation(line: 910, column: 9, scope: !2364)
!2378 = !DILocation(line: 914, column: 7, scope: !2364)
!2379 = !DILocation(line: 916, column: 11, scope: !2303)
!2380 = !DILocation(line: 917, column: 5, scope: !2303)
!2381 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !124, file: !124, line: 928, type: !2382, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!25, !59, !36, !27}
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !124, line: 928, type: !59)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !124, line: 928, type: !36)
!2387 = !DILocalVariable(name: "argsize", arg: 3, scope: !2381, file: !124, line: 928, type: !27)
!2388 = !DILocation(line: 928, column: 21, scope: !2381)
!2389 = !DILocation(line: 928, column: 36, scope: !2381)
!2390 = !DILocation(line: 928, column: 48, scope: !2381)
!2391 = !DILocation(line: 930, column: 10, scope: !2381)
!2392 = !DILocation(line: 930, column: 3, scope: !2381)
!2393 = distinct !DISubprogram(name: "quotearg", scope: !124, file: !124, line: 934, type: !2394, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!25, !36}
!2396 = !{!2397}
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2393, file: !124, line: 934, type: !36)
!2398 = !DILocation(line: 934, column: 23, scope: !2393)
!2399 = !DILocation(line: 922, column: 17, scope: !2279, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 936, column: 10, scope: !2393)
!2401 = !DILocation(line: 922, column: 32, scope: !2279, inlinedAt: !2400)
!2402 = !DILocation(line: 924, column: 10, scope: !2279, inlinedAt: !2400)
!2403 = !DILocation(line: 936, column: 3, scope: !2393)
!2404 = distinct !DISubprogram(name: "quotearg_mem", scope: !124, file: !124, line: 940, type: !2405, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!25, !36, !27}
!2407 = !{!2408, !2409}
!2408 = !DILocalVariable(name: "arg", arg: 1, scope: !2404, file: !124, line: 940, type: !36)
!2409 = !DILocalVariable(name: "argsize", arg: 2, scope: !2404, file: !124, line: 940, type: !27)
!2410 = !DILocation(line: 940, column: 27, scope: !2404)
!2411 = !DILocation(line: 940, column: 39, scope: !2404)
!2412 = !DILocation(line: 928, column: 21, scope: !2381, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 942, column: 10, scope: !2404)
!2414 = !DILocation(line: 928, column: 36, scope: !2381, inlinedAt: !2413)
!2415 = !DILocation(line: 928, column: 48, scope: !2381, inlinedAt: !2413)
!2416 = !DILocation(line: 930, column: 10, scope: !2381, inlinedAt: !2413)
!2417 = !DILocation(line: 942, column: 3, scope: !2404)
!2418 = distinct !DISubprogram(name: "quotearg_n_style", scope: !124, file: !124, line: 946, type: !2419, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!25, !59, !5, !36}
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !124, line: 946, type: !59)
!2423 = !DILocalVariable(name: "s", arg: 2, scope: !2418, file: !124, line: 946, type: !5)
!2424 = !DILocalVariable(name: "arg", arg: 3, scope: !2418, file: !124, line: 946, type: !36)
!2425 = !DILocalVariable(name: "o", scope: !2418, file: !124, line: 948, type: !1279)
!2426 = !DILocalVariable(name: "o", scope: !2427, file: !124, line: 187, type: !131)
!2427 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !124, file: !124, line: 185, type: !2428, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!131, !5}
!2430 = !{!2431, !2426}
!2431 = !DILocalVariable(name: "style", arg: 1, scope: !2427, file: !124, line: 185, type: !5)
!2432 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2433 = !DILocation(line: 187, column: 26, scope: !2427, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 948, column: 36, scope: !2418)
!2435 = !DILocation(line: 946, column: 23, scope: !2418)
!2436 = !DILocation(line: 946, column: 45, scope: !2418)
!2437 = !DILocation(line: 946, column: 60, scope: !2418)
!2438 = !DILocation(line: 948, column: 3, scope: !2418)
!2439 = !DILocation(line: 948, column: 32, scope: !2418)
!2440 = !DILocation(line: 185, column: 48, scope: !2427, inlinedAt: !2434)
!2441 = !DILocation(line: 187, column: 3, scope: !2427, inlinedAt: !2434)
!2442 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2443 = !DILocation(line: 188, column: 13, scope: !2444, inlinedAt: !2434)
!2444 = distinct !DILexicalBlock(scope: !2427, file: !124, line: 188, column: 7)
!2445 = !DILocation(line: 188, column: 7, scope: !2427, inlinedAt: !2434)
!2446 = !DILocation(line: 189, column: 5, scope: !2444, inlinedAt: !2434)
!2447 = !{!2448}
!2448 = distinct !{!2448, !2449, !"quoting_options_from_style: argument 0"}
!2449 = distinct !{!2449, !"quoting_options_from_style"}
!2450 = !DILocation(line: 191, column: 10, scope: !2427, inlinedAt: !2434)
!2451 = !DILocation(line: 192, column: 1, scope: !2427, inlinedAt: !2434)
!2452 = !DILocation(line: 949, column: 10, scope: !2418)
!2453 = !DILocation(line: 950, column: 1, scope: !2418)
!2454 = !DILocation(line: 949, column: 3, scope: !2418)
!2455 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !124, file: !124, line: 953, type: !2456, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!25, !59, !5, !36, !27}
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DILocalVariable(name: "n", arg: 1, scope: !2455, file: !124, line: 953, type: !59)
!2460 = !DILocalVariable(name: "s", arg: 2, scope: !2455, file: !124, line: 953, type: !5)
!2461 = !DILocalVariable(name: "arg", arg: 3, scope: !2455, file: !124, line: 954, type: !36)
!2462 = !DILocalVariable(name: "argsize", arg: 4, scope: !2455, file: !124, line: 954, type: !27)
!2463 = !DILocalVariable(name: "o", scope: !2455, file: !124, line: 956, type: !1279)
!2464 = !DILocation(line: 187, column: 26, scope: !2427, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 956, column: 36, scope: !2455)
!2466 = !DILocation(line: 953, column: 27, scope: !2455)
!2467 = !DILocation(line: 953, column: 49, scope: !2455)
!2468 = !DILocation(line: 954, column: 35, scope: !2455)
!2469 = !DILocation(line: 954, column: 47, scope: !2455)
!2470 = !DILocation(line: 956, column: 3, scope: !2455)
!2471 = !DILocation(line: 956, column: 32, scope: !2455)
!2472 = !DILocation(line: 185, column: 48, scope: !2427, inlinedAt: !2465)
!2473 = !DILocation(line: 187, column: 3, scope: !2427, inlinedAt: !2465)
!2474 = !DILocation(line: 188, column: 13, scope: !2444, inlinedAt: !2465)
!2475 = !DILocation(line: 188, column: 7, scope: !2427, inlinedAt: !2465)
!2476 = !DILocation(line: 189, column: 5, scope: !2444, inlinedAt: !2465)
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"quoting_options_from_style: argument 0"}
!2479 = distinct !{!2479, !"quoting_options_from_style"}
!2480 = !DILocation(line: 191, column: 10, scope: !2427, inlinedAt: !2465)
!2481 = !DILocation(line: 192, column: 1, scope: !2427, inlinedAt: !2465)
!2482 = !DILocation(line: 957, column: 10, scope: !2455)
!2483 = !DILocation(line: 958, column: 1, scope: !2455)
!2484 = !DILocation(line: 957, column: 3, scope: !2455)
!2485 = distinct !DISubprogram(name: "quotearg_style", scope: !124, file: !124, line: 961, type: !2486, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!25, !5, !36}
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "s", arg: 1, scope: !2485, file: !124, line: 961, type: !5)
!2490 = !DILocalVariable(name: "arg", arg: 2, scope: !2485, file: !124, line: 961, type: !36)
!2491 = !DILocation(line: 187, column: 26, scope: !2427, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 948, column: 36, scope: !2418, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 963, column: 10, scope: !2485)
!2494 = !DILocation(line: 961, column: 36, scope: !2485)
!2495 = !DILocation(line: 961, column: 51, scope: !2485)
!2496 = !DILocation(line: 946, column: 23, scope: !2418, inlinedAt: !2493)
!2497 = !DILocation(line: 946, column: 45, scope: !2418, inlinedAt: !2493)
!2498 = !DILocation(line: 946, column: 60, scope: !2418, inlinedAt: !2493)
!2499 = !DILocation(line: 948, column: 3, scope: !2418, inlinedAt: !2493)
!2500 = !DILocation(line: 948, column: 32, scope: !2418, inlinedAt: !2493)
!2501 = !DILocation(line: 185, column: 48, scope: !2427, inlinedAt: !2492)
!2502 = !DILocation(line: 187, column: 3, scope: !2427, inlinedAt: !2492)
!2503 = !DILocation(line: 188, column: 13, scope: !2444, inlinedAt: !2492)
!2504 = !DILocation(line: 188, column: 7, scope: !2427, inlinedAt: !2492)
!2505 = !DILocation(line: 189, column: 5, scope: !2444, inlinedAt: !2492)
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"quoting_options_from_style: argument 0"}
!2508 = distinct !{!2508, !"quoting_options_from_style"}
!2509 = !DILocation(line: 191, column: 10, scope: !2427, inlinedAt: !2492)
!2510 = !DILocation(line: 192, column: 1, scope: !2427, inlinedAt: !2492)
!2511 = !DILocation(line: 949, column: 10, scope: !2418, inlinedAt: !2493)
!2512 = !DILocation(line: 950, column: 1, scope: !2418, inlinedAt: !2493)
!2513 = !DILocation(line: 963, column: 3, scope: !2485)
!2514 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !124, file: !124, line: 967, type: !2515, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!25, !5, !36, !27}
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "s", arg: 1, scope: !2514, file: !124, line: 967, type: !5)
!2519 = !DILocalVariable(name: "arg", arg: 2, scope: !2514, file: !124, line: 967, type: !36)
!2520 = !DILocalVariable(name: "argsize", arg: 3, scope: !2514, file: !124, line: 967, type: !27)
!2521 = !DILocation(line: 187, column: 26, scope: !2427, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 956, column: 36, scope: !2455, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 969, column: 10, scope: !2514)
!2524 = !DILocation(line: 967, column: 40, scope: !2514)
!2525 = !DILocation(line: 967, column: 55, scope: !2514)
!2526 = !DILocation(line: 967, column: 67, scope: !2514)
!2527 = !DILocation(line: 953, column: 27, scope: !2455, inlinedAt: !2523)
!2528 = !DILocation(line: 953, column: 49, scope: !2455, inlinedAt: !2523)
!2529 = !DILocation(line: 954, column: 35, scope: !2455, inlinedAt: !2523)
!2530 = !DILocation(line: 954, column: 47, scope: !2455, inlinedAt: !2523)
!2531 = !DILocation(line: 956, column: 3, scope: !2455, inlinedAt: !2523)
!2532 = !DILocation(line: 956, column: 32, scope: !2455, inlinedAt: !2523)
!2533 = !DILocation(line: 185, column: 48, scope: !2427, inlinedAt: !2522)
!2534 = !DILocation(line: 187, column: 3, scope: !2427, inlinedAt: !2522)
!2535 = !DILocation(line: 188, column: 13, scope: !2444, inlinedAt: !2522)
!2536 = !DILocation(line: 188, column: 7, scope: !2427, inlinedAt: !2522)
!2537 = !DILocation(line: 189, column: 5, scope: !2444, inlinedAt: !2522)
!2538 = !{!2539}
!2539 = distinct !{!2539, !2540, !"quoting_options_from_style: argument 0"}
!2540 = distinct !{!2540, !"quoting_options_from_style"}
!2541 = !DILocation(line: 191, column: 10, scope: !2427, inlinedAt: !2522)
!2542 = !DILocation(line: 192, column: 1, scope: !2427, inlinedAt: !2522)
!2543 = !DILocation(line: 957, column: 10, scope: !2455, inlinedAt: !2523)
!2544 = !DILocation(line: 958, column: 1, scope: !2455, inlinedAt: !2523)
!2545 = !DILocation(line: 969, column: 3, scope: !2514)
!2546 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !124, file: !124, line: 973, type: !2547, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!25, !36, !27, !26}
!2549 = !{!2550, !2551, !2552, !2553}
!2550 = !DILocalVariable(name: "arg", arg: 1, scope: !2546, file: !124, line: 973, type: !36)
!2551 = !DILocalVariable(name: "argsize", arg: 2, scope: !2546, file: !124, line: 973, type: !27)
!2552 = !DILocalVariable(name: "ch", arg: 3, scope: !2546, file: !124, line: 973, type: !26)
!2553 = !DILocalVariable(name: "options", scope: !2546, file: !124, line: 975, type: !131)
!2554 = !DILocation(line: 973, column: 32, scope: !2546)
!2555 = !DILocation(line: 973, column: 44, scope: !2546)
!2556 = !DILocation(line: 973, column: 58, scope: !2546)
!2557 = !DILocation(line: 975, column: 3, scope: !2546)
!2558 = !DILocation(line: 976, column: 13, scope: !2546)
!2559 = !{i64 0, i64 4, !724, i64 4, i64 4, !658, i64 8, i64 32, !724, i64 40, i64 8, !586, i64 48, i64 8, !586}
!2560 = !DILocation(line: 975, column: 26, scope: !2546)
!2561 = !DILocation(line: 144, column: 43, scope: !1300, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 977, column: 3, scope: !2546)
!2563 = !DILocation(line: 144, column: 51, scope: !1300, inlinedAt: !2562)
!2564 = !DILocation(line: 144, column: 58, scope: !1300, inlinedAt: !2562)
!2565 = !DILocation(line: 146, column: 17, scope: !1300, inlinedAt: !2562)
!2566 = !DILocation(line: 148, column: 62, scope: !1300, inlinedAt: !2562)
!2567 = !DILocation(line: 148, column: 57, scope: !1300, inlinedAt: !2562)
!2568 = !DILocation(line: 147, column: 17, scope: !1300, inlinedAt: !2562)
!2569 = !DILocation(line: 149, column: 18, scope: !1300, inlinedAt: !2562)
!2570 = !DILocation(line: 149, column: 15, scope: !1300, inlinedAt: !2562)
!2571 = !DILocation(line: 149, column: 7, scope: !1300, inlinedAt: !2562)
!2572 = !DILocation(line: 150, column: 12, scope: !1300, inlinedAt: !2562)
!2573 = !DILocation(line: 150, column: 15, scope: !1300, inlinedAt: !2562)
!2574 = !DILocation(line: 150, column: 25, scope: !1300, inlinedAt: !2562)
!2575 = !DILocation(line: 150, column: 7, scope: !1300, inlinedAt: !2562)
!2576 = !DILocation(line: 151, column: 18, scope: !1300, inlinedAt: !2562)
!2577 = !DILocation(line: 151, column: 23, scope: !1300, inlinedAt: !2562)
!2578 = !DILocation(line: 151, column: 6, scope: !1300, inlinedAt: !2562)
!2579 = !DILocation(line: 978, column: 10, scope: !2546)
!2580 = !DILocation(line: 979, column: 1, scope: !2546)
!2581 = !DILocation(line: 978, column: 3, scope: !2546)
!2582 = distinct !DISubprogram(name: "quotearg_char", scope: !124, file: !124, line: 982, type: !2583, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!25, !36, !26}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "arg", arg: 1, scope: !2582, file: !124, line: 982, type: !36)
!2587 = !DILocalVariable(name: "ch", arg: 2, scope: !2582, file: !124, line: 982, type: !26)
!2588 = !DILocation(line: 982, column: 28, scope: !2582)
!2589 = !DILocation(line: 982, column: 38, scope: !2582)
!2590 = !DILocation(line: 973, column: 32, scope: !2546, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 984, column: 10, scope: !2582)
!2592 = !DILocation(line: 973, column: 44, scope: !2546, inlinedAt: !2591)
!2593 = !DILocation(line: 973, column: 58, scope: !2546, inlinedAt: !2591)
!2594 = !DILocation(line: 975, column: 3, scope: !2546, inlinedAt: !2591)
!2595 = !DILocation(line: 976, column: 13, scope: !2546, inlinedAt: !2591)
!2596 = !DILocation(line: 975, column: 26, scope: !2546, inlinedAt: !2591)
!2597 = !DILocation(line: 144, column: 43, scope: !1300, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 977, column: 3, scope: !2546, inlinedAt: !2591)
!2599 = !DILocation(line: 144, column: 51, scope: !1300, inlinedAt: !2598)
!2600 = !DILocation(line: 144, column: 58, scope: !1300, inlinedAt: !2598)
!2601 = !DILocation(line: 146, column: 17, scope: !1300, inlinedAt: !2598)
!2602 = !DILocation(line: 148, column: 62, scope: !1300, inlinedAt: !2598)
!2603 = !DILocation(line: 148, column: 57, scope: !1300, inlinedAt: !2598)
!2604 = !DILocation(line: 147, column: 17, scope: !1300, inlinedAt: !2598)
!2605 = !DILocation(line: 149, column: 18, scope: !1300, inlinedAt: !2598)
!2606 = !DILocation(line: 149, column: 15, scope: !1300, inlinedAt: !2598)
!2607 = !DILocation(line: 149, column: 7, scope: !1300, inlinedAt: !2598)
!2608 = !DILocation(line: 150, column: 12, scope: !1300, inlinedAt: !2598)
!2609 = !DILocation(line: 150, column: 15, scope: !1300, inlinedAt: !2598)
!2610 = !DILocation(line: 150, column: 25, scope: !1300, inlinedAt: !2598)
!2611 = !DILocation(line: 150, column: 7, scope: !1300, inlinedAt: !2598)
!2612 = !DILocation(line: 151, column: 18, scope: !1300, inlinedAt: !2598)
!2613 = !DILocation(line: 151, column: 23, scope: !1300, inlinedAt: !2598)
!2614 = !DILocation(line: 151, column: 6, scope: !1300, inlinedAt: !2598)
!2615 = !DILocation(line: 978, column: 10, scope: !2546, inlinedAt: !2591)
!2616 = !DILocation(line: 979, column: 1, scope: !2546, inlinedAt: !2591)
!2617 = !DILocation(line: 984, column: 3, scope: !2582)
!2618 = distinct !DISubprogram(name: "quotearg_colon", scope: !124, file: !124, line: 988, type: !2394, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2619)
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "arg", arg: 1, scope: !2618, file: !124, line: 988, type: !36)
!2621 = !DILocation(line: 988, column: 29, scope: !2618)
!2622 = !DILocation(line: 982, column: 28, scope: !2582, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 990, column: 10, scope: !2618)
!2624 = !DILocation(line: 982, column: 38, scope: !2582, inlinedAt: !2623)
!2625 = !DILocation(line: 973, column: 32, scope: !2546, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 984, column: 10, scope: !2582, inlinedAt: !2623)
!2627 = !DILocation(line: 973, column: 44, scope: !2546, inlinedAt: !2626)
!2628 = !DILocation(line: 973, column: 58, scope: !2546, inlinedAt: !2626)
!2629 = !DILocation(line: 975, column: 3, scope: !2546, inlinedAt: !2626)
!2630 = !DILocation(line: 976, column: 13, scope: !2546, inlinedAt: !2626)
!2631 = !DILocation(line: 975, column: 26, scope: !2546, inlinedAt: !2626)
!2632 = !DILocation(line: 144, column: 43, scope: !1300, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 977, column: 3, scope: !2546, inlinedAt: !2626)
!2634 = !DILocation(line: 144, column: 51, scope: !1300, inlinedAt: !2633)
!2635 = !DILocation(line: 144, column: 58, scope: !1300, inlinedAt: !2633)
!2636 = !DILocation(line: 146, column: 17, scope: !1300, inlinedAt: !2633)
!2637 = !DILocation(line: 148, column: 57, scope: !1300, inlinedAt: !2633)
!2638 = !DILocation(line: 147, column: 17, scope: !1300, inlinedAt: !2633)
!2639 = !DILocation(line: 149, column: 7, scope: !1300, inlinedAt: !2633)
!2640 = !DILocation(line: 150, column: 12, scope: !1300, inlinedAt: !2633)
!2641 = !DILocation(line: 151, column: 6, scope: !1300, inlinedAt: !2633)
!2642 = !DILocation(line: 978, column: 10, scope: !2546, inlinedAt: !2626)
!2643 = !DILocation(line: 979, column: 1, scope: !2546, inlinedAt: !2626)
!2644 = !DILocation(line: 990, column: 3, scope: !2618)
!2645 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !124, file: !124, line: 994, type: !2405, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2646)
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "arg", arg: 1, scope: !2645, file: !124, line: 994, type: !36)
!2648 = !DILocalVariable(name: "argsize", arg: 2, scope: !2645, file: !124, line: 994, type: !27)
!2649 = !DILocation(line: 994, column: 33, scope: !2645)
!2650 = !DILocation(line: 994, column: 45, scope: !2645)
!2651 = !DILocation(line: 973, column: 32, scope: !2546, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 996, column: 10, scope: !2645)
!2653 = !DILocation(line: 973, column: 44, scope: !2546, inlinedAt: !2652)
!2654 = !DILocation(line: 973, column: 58, scope: !2546, inlinedAt: !2652)
!2655 = !DILocation(line: 975, column: 3, scope: !2546, inlinedAt: !2652)
!2656 = !DILocation(line: 976, column: 13, scope: !2546, inlinedAt: !2652)
!2657 = !DILocation(line: 975, column: 26, scope: !2546, inlinedAt: !2652)
!2658 = !DILocation(line: 144, column: 43, scope: !1300, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 977, column: 3, scope: !2546, inlinedAt: !2652)
!2660 = !DILocation(line: 144, column: 51, scope: !1300, inlinedAt: !2659)
!2661 = !DILocation(line: 144, column: 58, scope: !1300, inlinedAt: !2659)
!2662 = !DILocation(line: 146, column: 17, scope: !1300, inlinedAt: !2659)
!2663 = !DILocation(line: 148, column: 57, scope: !1300, inlinedAt: !2659)
!2664 = !DILocation(line: 147, column: 17, scope: !1300, inlinedAt: !2659)
!2665 = !DILocation(line: 149, column: 7, scope: !1300, inlinedAt: !2659)
!2666 = !DILocation(line: 150, column: 12, scope: !1300, inlinedAt: !2659)
!2667 = !DILocation(line: 151, column: 6, scope: !1300, inlinedAt: !2659)
!2668 = !DILocation(line: 978, column: 10, scope: !2546, inlinedAt: !2652)
!2669 = !DILocation(line: 979, column: 1, scope: !2546, inlinedAt: !2652)
!2670 = !DILocation(line: 996, column: 3, scope: !2645)
!2671 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !124, file: !124, line: 1000, type: !2419, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2672)
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2671, file: !124, line: 1000, type: !59)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2671, file: !124, line: 1000, type: !5)
!2675 = !DILocalVariable(name: "arg", arg: 3, scope: !2671, file: !124, line: 1000, type: !36)
!2676 = !DILocalVariable(name: "options", scope: !2671, file: !124, line: 1002, type: !131)
!2677 = !DILocation(line: 187, column: 26, scope: !2427, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 1003, column: 13, scope: !2671)
!2679 = !DILocation(line: 1000, column: 29, scope: !2671)
!2680 = !DILocation(line: 1000, column: 51, scope: !2671)
!2681 = !DILocation(line: 1000, column: 66, scope: !2671)
!2682 = !DILocation(line: 1002, column: 3, scope: !2671)
!2683 = !DILocation(line: 185, column: 48, scope: !2427, inlinedAt: !2678)
!2684 = !DILocation(line: 187, column: 3, scope: !2427, inlinedAt: !2678)
!2685 = !DILocation(line: 188, column: 13, scope: !2444, inlinedAt: !2678)
!2686 = !DILocation(line: 188, column: 7, scope: !2427, inlinedAt: !2678)
!2687 = !DILocation(line: 189, column: 5, scope: !2444, inlinedAt: !2678)
!2688 = !{!2689}
!2689 = distinct !{!2689, !2690, !"quoting_options_from_style: argument 0"}
!2690 = distinct !{!2690, !"quoting_options_from_style"}
!2691 = !DILocation(line: 191, column: 10, scope: !2427, inlinedAt: !2678)
!2692 = !DILocation(line: 192, column: 1, scope: !2427, inlinedAt: !2678)
!2693 = !DILocation(line: 1003, column: 13, scope: !2671)
!2694 = !DILocation(line: 1002, column: 26, scope: !2671)
!2695 = !DILocation(line: 144, column: 43, scope: !1300, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1004, column: 3, scope: !2671)
!2697 = !DILocation(line: 144, column: 51, scope: !1300, inlinedAt: !2696)
!2698 = !DILocation(line: 144, column: 58, scope: !1300, inlinedAt: !2696)
!2699 = !DILocation(line: 146, column: 17, scope: !1300, inlinedAt: !2696)
!2700 = !DILocation(line: 148, column: 57, scope: !1300, inlinedAt: !2696)
!2701 = !DILocation(line: 147, column: 17, scope: !1300, inlinedAt: !2696)
!2702 = !DILocation(line: 149, column: 7, scope: !1300, inlinedAt: !2696)
!2703 = !DILocation(line: 150, column: 12, scope: !1300, inlinedAt: !2696)
!2704 = !DILocation(line: 151, column: 6, scope: !1300, inlinedAt: !2696)
!2705 = !DILocation(line: 1005, column: 10, scope: !2671)
!2706 = !DILocation(line: 1006, column: 1, scope: !2671)
!2707 = !DILocation(line: 1005, column: 3, scope: !2671)
!2708 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !124, file: !124, line: 1009, type: !2709, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!25, !59, !36, !36, !36}
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !124, line: 1009, type: !59)
!2713 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2708, file: !124, line: 1009, type: !36)
!2714 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2708, file: !124, line: 1010, type: !36)
!2715 = !DILocalVariable(name: "arg", arg: 4, scope: !2708, file: !124, line: 1010, type: !36)
!2716 = !DILocation(line: 1009, column: 24, scope: !2708)
!2717 = !DILocation(line: 1009, column: 39, scope: !2708)
!2718 = !DILocation(line: 1010, column: 32, scope: !2708)
!2719 = !DILocation(line: 1010, column: 57, scope: !2708)
!2720 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !124, line: 1017, type: !59)
!2721 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !124, file: !124, line: 1017, type: !2722, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!25, !59, !36, !36, !36, !27}
!2724 = !{!2720, !2725, !2726, !2727, !2728, !2729}
!2725 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2721, file: !124, line: 1017, type: !36)
!2726 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2721, file: !124, line: 1018, type: !36)
!2727 = !DILocalVariable(name: "arg", arg: 4, scope: !2721, file: !124, line: 1019, type: !36)
!2728 = !DILocalVariable(name: "argsize", arg: 5, scope: !2721, file: !124, line: 1019, type: !27)
!2729 = !DILocalVariable(name: "o", scope: !2721, file: !124, line: 1021, type: !131)
!2730 = !DILocation(line: 1017, column: 28, scope: !2721, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1012, column: 10, scope: !2708)
!2732 = !DILocation(line: 1017, column: 43, scope: !2721, inlinedAt: !2731)
!2733 = !DILocation(line: 1018, column: 36, scope: !2721, inlinedAt: !2731)
!2734 = !DILocation(line: 1019, column: 36, scope: !2721, inlinedAt: !2731)
!2735 = !DILocation(line: 1019, column: 48, scope: !2721, inlinedAt: !2731)
!2736 = !DILocation(line: 1021, column: 3, scope: !2721, inlinedAt: !2731)
!2737 = !DILocation(line: 1021, column: 30, scope: !2721, inlinedAt: !2731)
!2738 = !DILocation(line: 1021, column: 26, scope: !2721, inlinedAt: !2731)
!2739 = !DILocation(line: 171, column: 45, scope: !1349, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1022, column: 3, scope: !2721, inlinedAt: !2731)
!2741 = !DILocation(line: 172, column: 33, scope: !1349, inlinedAt: !2740)
!2742 = !DILocation(line: 172, column: 57, scope: !1349, inlinedAt: !2740)
!2743 = !DILocation(line: 176, column: 6, scope: !1349, inlinedAt: !2740)
!2744 = !DILocation(line: 176, column: 12, scope: !1349, inlinedAt: !2740)
!2745 = !DILocation(line: 177, column: 8, scope: !1365, inlinedAt: !2740)
!2746 = !DILocation(line: 177, column: 23, scope: !1365, inlinedAt: !2740)
!2747 = !DILocation(line: 177, column: 19, scope: !1365, inlinedAt: !2740)
!2748 = !DILocation(line: 178, column: 5, scope: !1365, inlinedAt: !2740)
!2749 = !DILocation(line: 179, column: 6, scope: !1349, inlinedAt: !2740)
!2750 = !DILocation(line: 179, column: 17, scope: !1349, inlinedAt: !2740)
!2751 = !DILocation(line: 180, column: 6, scope: !1349, inlinedAt: !2740)
!2752 = !DILocation(line: 180, column: 18, scope: !1349, inlinedAt: !2740)
!2753 = !DILocation(line: 1023, column: 10, scope: !2721, inlinedAt: !2731)
!2754 = !DILocation(line: 1024, column: 1, scope: !2721, inlinedAt: !2731)
!2755 = !DILocation(line: 1012, column: 3, scope: !2708)
!2756 = !DILocation(line: 1017, column: 28, scope: !2721)
!2757 = !DILocation(line: 1017, column: 43, scope: !2721)
!2758 = !DILocation(line: 1018, column: 36, scope: !2721)
!2759 = !DILocation(line: 1019, column: 36, scope: !2721)
!2760 = !DILocation(line: 1019, column: 48, scope: !2721)
!2761 = !DILocation(line: 1021, column: 3, scope: !2721)
!2762 = !DILocation(line: 1021, column: 30, scope: !2721)
!2763 = !DILocation(line: 1021, column: 26, scope: !2721)
!2764 = !DILocation(line: 171, column: 45, scope: !1349, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 1022, column: 3, scope: !2721)
!2766 = !DILocation(line: 172, column: 33, scope: !1349, inlinedAt: !2765)
!2767 = !DILocation(line: 172, column: 57, scope: !1349, inlinedAt: !2765)
!2768 = !DILocation(line: 176, column: 6, scope: !1349, inlinedAt: !2765)
!2769 = !DILocation(line: 176, column: 12, scope: !1349, inlinedAt: !2765)
!2770 = !DILocation(line: 177, column: 8, scope: !1365, inlinedAt: !2765)
!2771 = !DILocation(line: 177, column: 23, scope: !1365, inlinedAt: !2765)
!2772 = !DILocation(line: 177, column: 19, scope: !1365, inlinedAt: !2765)
!2773 = !DILocation(line: 178, column: 5, scope: !1365, inlinedAt: !2765)
!2774 = !DILocation(line: 179, column: 6, scope: !1349, inlinedAt: !2765)
!2775 = !DILocation(line: 179, column: 17, scope: !1349, inlinedAt: !2765)
!2776 = !DILocation(line: 180, column: 6, scope: !1349, inlinedAt: !2765)
!2777 = !DILocation(line: 180, column: 18, scope: !1349, inlinedAt: !2765)
!2778 = !DILocation(line: 1023, column: 10, scope: !2721)
!2779 = !DILocation(line: 1024, column: 1, scope: !2721)
!2780 = !DILocation(line: 1023, column: 3, scope: !2721)
!2781 = distinct !DISubprogram(name: "quotearg_custom", scope: !124, file: !124, line: 1027, type: !2782, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!25, !36, !36, !36}
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2781, file: !124, line: 1027, type: !36)
!2786 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2781, file: !124, line: 1027, type: !36)
!2787 = !DILocalVariable(name: "arg", arg: 3, scope: !2781, file: !124, line: 1028, type: !36)
!2788 = !DILocation(line: 1027, column: 30, scope: !2781)
!2789 = !DILocation(line: 1027, column: 54, scope: !2781)
!2790 = !DILocation(line: 1028, column: 30, scope: !2781)
!2791 = !DILocation(line: 1009, column: 24, scope: !2708, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1030, column: 10, scope: !2781)
!2793 = !DILocation(line: 1009, column: 39, scope: !2708, inlinedAt: !2792)
!2794 = !DILocation(line: 1010, column: 32, scope: !2708, inlinedAt: !2792)
!2795 = !DILocation(line: 1010, column: 57, scope: !2708, inlinedAt: !2792)
!2796 = !DILocation(line: 1017, column: 28, scope: !2721, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1012, column: 10, scope: !2708, inlinedAt: !2792)
!2798 = !DILocation(line: 1017, column: 43, scope: !2721, inlinedAt: !2797)
!2799 = !DILocation(line: 1018, column: 36, scope: !2721, inlinedAt: !2797)
!2800 = !DILocation(line: 1019, column: 36, scope: !2721, inlinedAt: !2797)
!2801 = !DILocation(line: 1019, column: 48, scope: !2721, inlinedAt: !2797)
!2802 = !DILocation(line: 1021, column: 3, scope: !2721, inlinedAt: !2797)
!2803 = !DILocation(line: 1021, column: 30, scope: !2721, inlinedAt: !2797)
!2804 = !DILocation(line: 1021, column: 26, scope: !2721, inlinedAt: !2797)
!2805 = !DILocation(line: 171, column: 45, scope: !1349, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1022, column: 3, scope: !2721, inlinedAt: !2797)
!2807 = !DILocation(line: 172, column: 33, scope: !1349, inlinedAt: !2806)
!2808 = !DILocation(line: 172, column: 57, scope: !1349, inlinedAt: !2806)
!2809 = !DILocation(line: 176, column: 6, scope: !1349, inlinedAt: !2806)
!2810 = !DILocation(line: 176, column: 12, scope: !1349, inlinedAt: !2806)
!2811 = !DILocation(line: 177, column: 8, scope: !1365, inlinedAt: !2806)
!2812 = !DILocation(line: 177, column: 23, scope: !1365, inlinedAt: !2806)
!2813 = !DILocation(line: 177, column: 19, scope: !1365, inlinedAt: !2806)
!2814 = !DILocation(line: 178, column: 5, scope: !1365, inlinedAt: !2806)
!2815 = !DILocation(line: 179, column: 6, scope: !1349, inlinedAt: !2806)
!2816 = !DILocation(line: 179, column: 17, scope: !1349, inlinedAt: !2806)
!2817 = !DILocation(line: 180, column: 6, scope: !1349, inlinedAt: !2806)
!2818 = !DILocation(line: 180, column: 18, scope: !1349, inlinedAt: !2806)
!2819 = !DILocation(line: 1023, column: 10, scope: !2721, inlinedAt: !2797)
!2820 = !DILocation(line: 1024, column: 1, scope: !2721, inlinedAt: !2797)
!2821 = !DILocation(line: 1030, column: 3, scope: !2781)
!2822 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !124, file: !124, line: 1034, type: !2823, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!25, !36, !36, !36, !27}
!2825 = !{!2826, !2827, !2828, !2829}
!2826 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2822, file: !124, line: 1034, type: !36)
!2827 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2822, file: !124, line: 1034, type: !36)
!2828 = !DILocalVariable(name: "arg", arg: 3, scope: !2822, file: !124, line: 1035, type: !36)
!2829 = !DILocalVariable(name: "argsize", arg: 4, scope: !2822, file: !124, line: 1035, type: !27)
!2830 = !DILocation(line: 1034, column: 34, scope: !2822)
!2831 = !DILocation(line: 1034, column: 58, scope: !2822)
!2832 = !DILocation(line: 1035, column: 34, scope: !2822)
!2833 = !DILocation(line: 1035, column: 46, scope: !2822)
!2834 = !DILocation(line: 1017, column: 28, scope: !2721, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1037, column: 10, scope: !2822)
!2836 = !DILocation(line: 1017, column: 43, scope: !2721, inlinedAt: !2835)
!2837 = !DILocation(line: 1018, column: 36, scope: !2721, inlinedAt: !2835)
!2838 = !DILocation(line: 1019, column: 36, scope: !2721, inlinedAt: !2835)
!2839 = !DILocation(line: 1019, column: 48, scope: !2721, inlinedAt: !2835)
!2840 = !DILocation(line: 1021, column: 3, scope: !2721, inlinedAt: !2835)
!2841 = !DILocation(line: 1021, column: 30, scope: !2721, inlinedAt: !2835)
!2842 = !DILocation(line: 1021, column: 26, scope: !2721, inlinedAt: !2835)
!2843 = !DILocation(line: 171, column: 45, scope: !1349, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 1022, column: 3, scope: !2721, inlinedAt: !2835)
!2845 = !DILocation(line: 172, column: 33, scope: !1349, inlinedAt: !2844)
!2846 = !DILocation(line: 172, column: 57, scope: !1349, inlinedAt: !2844)
!2847 = !DILocation(line: 176, column: 6, scope: !1349, inlinedAt: !2844)
!2848 = !DILocation(line: 176, column: 12, scope: !1349, inlinedAt: !2844)
!2849 = !DILocation(line: 177, column: 8, scope: !1365, inlinedAt: !2844)
!2850 = !DILocation(line: 177, column: 23, scope: !1365, inlinedAt: !2844)
!2851 = !DILocation(line: 177, column: 19, scope: !1365, inlinedAt: !2844)
!2852 = !DILocation(line: 178, column: 5, scope: !1365, inlinedAt: !2844)
!2853 = !DILocation(line: 179, column: 6, scope: !1349, inlinedAt: !2844)
!2854 = !DILocation(line: 179, column: 17, scope: !1349, inlinedAt: !2844)
!2855 = !DILocation(line: 180, column: 6, scope: !1349, inlinedAt: !2844)
!2856 = !DILocation(line: 180, column: 18, scope: !1349, inlinedAt: !2844)
!2857 = !DILocation(line: 1023, column: 10, scope: !2721, inlinedAt: !2835)
!2858 = !DILocation(line: 1024, column: 1, scope: !2721, inlinedAt: !2835)
!2859 = !DILocation(line: 1037, column: 3, scope: !2822)
!2860 = distinct !DISubprogram(name: "quote_n_mem", scope: !124, file: !124, line: 1052, type: !2861, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!36, !59, !36, !27}
!2863 = !{!2864, !2865, !2866}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2860, file: !124, line: 1052, type: !59)
!2865 = !DILocalVariable(name: "arg", arg: 2, scope: !2860, file: !124, line: 1052, type: !36)
!2866 = !DILocalVariable(name: "argsize", arg: 3, scope: !2860, file: !124, line: 1052, type: !27)
!2867 = !DILocation(line: 1052, column: 18, scope: !2860)
!2868 = !DILocation(line: 1052, column: 33, scope: !2860)
!2869 = !DILocation(line: 1052, column: 45, scope: !2860)
!2870 = !DILocation(line: 1054, column: 10, scope: !2860)
!2871 = !DILocation(line: 1054, column: 3, scope: !2860)
!2872 = distinct !DISubprogram(name: "quote_mem", scope: !124, file: !124, line: 1058, type: !2873, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!36, !36, !27}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "arg", arg: 1, scope: !2872, file: !124, line: 1058, type: !36)
!2877 = !DILocalVariable(name: "argsize", arg: 2, scope: !2872, file: !124, line: 1058, type: !27)
!2878 = !DILocation(line: 1058, column: 24, scope: !2872)
!2879 = !DILocation(line: 1058, column: 36, scope: !2872)
!2880 = !DILocation(line: 1052, column: 18, scope: !2860, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1060, column: 10, scope: !2872)
!2882 = !DILocation(line: 1052, column: 33, scope: !2860, inlinedAt: !2881)
!2883 = !DILocation(line: 1052, column: 45, scope: !2860, inlinedAt: !2881)
!2884 = !DILocation(line: 1054, column: 10, scope: !2860, inlinedAt: !2881)
!2885 = !DILocation(line: 1060, column: 3, scope: !2872)
!2886 = distinct !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 1064, type: !2887, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!36, !59, !36}
!2889 = !{!2890, !2891}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !124, line: 1064, type: !59)
!2891 = !DILocalVariable(name: "arg", arg: 2, scope: !2886, file: !124, line: 1064, type: !36)
!2892 = !DILocation(line: 1064, column: 14, scope: !2886)
!2893 = !DILocation(line: 1064, column: 29, scope: !2886)
!2894 = !DILocation(line: 1052, column: 18, scope: !2860, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1066, column: 10, scope: !2886)
!2896 = !DILocation(line: 1052, column: 33, scope: !2860, inlinedAt: !2895)
!2897 = !DILocation(line: 1052, column: 45, scope: !2860, inlinedAt: !2895)
!2898 = !DILocation(line: 1054, column: 10, scope: !2860, inlinedAt: !2895)
!2899 = !DILocation(line: 1066, column: 3, scope: !2886)
!2900 = distinct !DISubprogram(name: "quote", scope: !124, file: !124, line: 1070, type: !2901, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!36, !36}
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !124, line: 1070, type: !36)
!2905 = !DILocation(line: 1070, column: 20, scope: !2900)
!2906 = !DILocation(line: 1064, column: 14, scope: !2886, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 1072, column: 10, scope: !2900)
!2908 = !DILocation(line: 1064, column: 29, scope: !2886, inlinedAt: !2907)
!2909 = !DILocation(line: 1052, column: 18, scope: !2860, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 1066, column: 10, scope: !2886, inlinedAt: !2907)
!2911 = !DILocation(line: 1052, column: 33, scope: !2860, inlinedAt: !2910)
!2912 = !DILocation(line: 1052, column: 45, scope: !2860, inlinedAt: !2910)
!2913 = !DILocation(line: 1054, column: 10, scope: !2860, inlinedAt: !2910)
!2914 = !DILocation(line: 1072, column: 3, scope: !2900)
!2915 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !2916, file: !2916, line: 29, type: !2917, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2924)
!2916 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!2919, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !812, line: 7, size: 128, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2920, file: !812, line: 9, baseType: !815, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2920, file: !812, line: 10, baseType: !818, size: 64, offset: 64)
!2924 = !{!2925, !2926}
!2925 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !2915, file: !2916, line: 29, type: !2919)
!2926 = !DILocalVariable(name: "statbuf", scope: !2915, file: !2916, line: 31, type: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !674, line: 46, size: 1152, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2945, !2946, !2947}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2927, file: !674, line: 48, baseType: !677, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2927, file: !674, line: 53, baseType: !680, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2927, file: !674, line: 61, baseType: !682, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2927, file: !674, line: 62, baseType: !684, size: 32, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2927, file: !674, line: 64, baseType: !686, size: 32, offset: 224)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2927, file: !674, line: 65, baseType: !688, size: 32, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2927, file: !674, line: 67, baseType: !59, size: 32, offset: 288)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2927, file: !674, line: 69, baseType: !677, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2927, file: !674, line: 74, baseType: !692, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2927, file: !674, line: 78, baseType: !695, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2927, file: !674, line: 80, baseType: !697, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2927, file: !674, line: 91, baseType: !2941, size: 128, offset: 576)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !700, line: 8, size: 128, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2941, file: !700, line: 10, baseType: !703, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2941, file: !700, line: 11, baseType: !705, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2927, file: !674, line: 92, baseType: !2941, size: 128, offset: 704)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2927, file: !674, line: 93, baseType: !2941, size: 128, offset: 832)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2927, file: !674, line: 106, baseType: !709, size: 192, offset: 960)
!2948 = !DILocation(line: 29, column: 35, scope: !2915)
!2949 = !DILocation(line: 31, column: 3, scope: !2915)
!2950 = !DILocation(line: 31, column: 15, scope: !2915)
!2951 = !DILocalVariable(name: "__path", arg: 1, scope: !2952, file: !743, line: 456, type: !36)
!2952 = distinct !DISubprogram(name: "lstat", scope: !743, file: !743, line: 456, type: !2953, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2956)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!59, !36, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2956 = !{!2951, !2957}
!2957 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2952, file: !743, line: 456, type: !2955)
!2958 = !DILocation(line: 456, column: 1, scope: !2952, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 32, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2915, file: !2916, line: 32, column: 7)
!2961 = !DILocation(line: 458, column: 10, scope: !2952, inlinedAt: !2959)
!2962 = !DILocation(line: 32, column: 7, scope: !2960)
!2963 = !DILocation(line: 32, column: 7, scope: !2915)
!2964 = !DILocation(line: 34, column: 30, scope: !2915)
!2965 = !DILocation(line: 34, column: 13, scope: !2915)
!2966 = !DILocation(line: 34, column: 20, scope: !2915)
!2967 = !DILocation(line: 35, column: 30, scope: !2915)
!2968 = !DILocation(line: 35, column: 13, scope: !2915)
!2969 = !DILocation(line: 35, column: 20, scope: !2915)
!2970 = !DILocation(line: 36, column: 3, scope: !2915)
!2971 = !DILocation(line: 37, column: 1, scope: !2915)
!2972 = distinct !DISubprogram(name: "version_etc_arn", scope: !528, file: !528, line: 62, type: !2973, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !3028)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2975, !36, !36, !36, !3027, !27}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !2978)
!2977 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !2980)
!2979 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3001, !3002, !3003, !3004, !3005, !3006, !3008, !3012, !3015, !3017, !3018, !3019, !3020, !3021, !3022, !3023}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2978, file: !2979, line: 242, baseType: !59, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2978, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2978, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2978, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2978, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2978, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2978, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2978, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2978, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2978, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2978, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2978, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2978, file: !2979, line: 260, baseType: !2994, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !2996)
!2996 = !{!2997, !2998, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2995, file: !2979, line: 157, baseType: !2994, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2995, file: !2979, line: 158, baseType: !2999, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2995, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2978, file: !2979, line: 262, baseType: !2999, size: 64, offset: 832)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2978, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2978, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2978, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2978, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2978, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!3007 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2978, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 1)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2978, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2979, line: 150, baseType: null)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2978, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !678, line: 141, baseType: !693)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2978, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2978, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2978, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2978, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2978, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2978, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2978, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !3025)
!3025 = !{!3026}
!3026 = !DISubrange(count: 20)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034}
!3029 = !DILocalVariable(name: "stream", arg: 1, scope: !2972, file: !528, line: 62, type: !2975)
!3030 = !DILocalVariable(name: "command_name", arg: 2, scope: !2972, file: !528, line: 63, type: !36)
!3031 = !DILocalVariable(name: "package", arg: 3, scope: !2972, file: !528, line: 63, type: !36)
!3032 = !DILocalVariable(name: "version", arg: 4, scope: !2972, file: !528, line: 64, type: !36)
!3033 = !DILocalVariable(name: "authors", arg: 5, scope: !2972, file: !528, line: 65, type: !3027)
!3034 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2972, file: !528, line: 65, type: !27)
!3035 = !DILocation(line: 62, column: 24, scope: !2972)
!3036 = !DILocation(line: 63, column: 30, scope: !2972)
!3037 = !DILocation(line: 63, column: 56, scope: !2972)
!3038 = !DILocation(line: 64, column: 30, scope: !2972)
!3039 = !DILocation(line: 65, column: 39, scope: !2972)
!3040 = !DILocation(line: 65, column: 55, scope: !2972)
!3041 = !DILocation(line: 67, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2972, file: !528, line: 67, column: 7)
!3043 = !DILocation(line: 67, column: 7, scope: !2972)
!3044 = !DILocation(line: 68, column: 5, scope: !3042)
!3045 = !DILocation(line: 70, column: 5, scope: !3042)
!3046 = !DILocation(line: 84, column: 3, scope: !2972)
!3047 = !DILocation(line: 86, column: 3, scope: !2972)
!3048 = !DILocation(line: 95, column: 3, scope: !2972)
!3049 = !DILocation(line: 99, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2972, file: !528, line: 96, column: 5)
!3051 = !DILocation(line: 102, column: 7, scope: !3050)
!3052 = !DILocation(line: 103, column: 7, scope: !3050)
!3053 = !DILocation(line: 106, column: 7, scope: !3050)
!3054 = !DILocation(line: 107, column: 7, scope: !3050)
!3055 = !DILocation(line: 110, column: 7, scope: !3050)
!3056 = !DILocation(line: 112, column: 7, scope: !3050)
!3057 = !DILocation(line: 117, column: 7, scope: !3050)
!3058 = !DILocation(line: 119, column: 7, scope: !3050)
!3059 = !DILocation(line: 124, column: 7, scope: !3050)
!3060 = !DILocation(line: 126, column: 7, scope: !3050)
!3061 = !DILocation(line: 131, column: 7, scope: !3050)
!3062 = !DILocation(line: 134, column: 7, scope: !3050)
!3063 = !DILocation(line: 139, column: 7, scope: !3050)
!3064 = !DILocation(line: 142, column: 7, scope: !3050)
!3065 = !DILocation(line: 147, column: 7, scope: !3050)
!3066 = !DILocation(line: 151, column: 7, scope: !3050)
!3067 = !DILocation(line: 156, column: 7, scope: !3050)
!3068 = !DILocation(line: 160, column: 7, scope: !3050)
!3069 = !DILocation(line: 167, column: 7, scope: !3050)
!3070 = !DILocation(line: 171, column: 7, scope: !3050)
!3071 = !DILocation(line: 173, column: 1, scope: !2972)
!3072 = distinct !DISubprogram(name: "version_etc_ar", scope: !528, file: !528, line: 180, type: !3073, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !2975, !36, !36, !36, !3027}
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081}
!3076 = !DILocalVariable(name: "stream", arg: 1, scope: !3072, file: !528, line: 180, type: !2975)
!3077 = !DILocalVariable(name: "command_name", arg: 2, scope: !3072, file: !528, line: 181, type: !36)
!3078 = !DILocalVariable(name: "package", arg: 3, scope: !3072, file: !528, line: 181, type: !36)
!3079 = !DILocalVariable(name: "version", arg: 4, scope: !3072, file: !528, line: 182, type: !36)
!3080 = !DILocalVariable(name: "authors", arg: 5, scope: !3072, file: !528, line: 182, type: !3027)
!3081 = !DILocalVariable(name: "n_authors", scope: !3072, file: !528, line: 184, type: !27)
!3082 = !DILocation(line: 180, column: 23, scope: !3072)
!3083 = !DILocation(line: 181, column: 29, scope: !3072)
!3084 = !DILocation(line: 181, column: 55, scope: !3072)
!3085 = !DILocation(line: 182, column: 29, scope: !3072)
!3086 = !DILocation(line: 182, column: 59, scope: !3072)
!3087 = !DILocation(line: 184, column: 10, scope: !3072)
!3088 = !DILocation(line: 186, column: 8, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3072, file: !528, line: 186, column: 3)
!3090 = !DILocation(line: 186, column: 23, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3089, file: !528, line: 186, column: 3)
!3092 = !DILocation(line: 186, column: 3, scope: !3089)
!3093 = !DILocation(line: 186, column: 52, scope: !3091)
!3094 = distinct !{!3094, !3092, !3095}
!3095 = !DILocation(line: 187, column: 5, scope: !3089)
!3096 = !DILocation(line: 188, column: 3, scope: !3072)
!3097 = !DILocation(line: 189, column: 1, scope: !3072)
!3098 = distinct !DISubprogram(name: "version_etc_va", scope: !528, file: !528, line: 196, type: !3099, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !3108)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !2975, !36, !36, !36, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !525, line: 189, size: 192, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3102, file: !525, line: 189, baseType: !137, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3102, file: !525, line: 189, baseType: !137, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3102, file: !525, line: 189, baseType: !24, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3102, file: !525, line: 189, baseType: !24, size: 64, offset: 128)
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3109 = !DILocalVariable(name: "stream", arg: 1, scope: !3098, file: !528, line: 196, type: !2975)
!3110 = !DILocalVariable(name: "command_name", arg: 2, scope: !3098, file: !528, line: 197, type: !36)
!3111 = !DILocalVariable(name: "package", arg: 3, scope: !3098, file: !528, line: 197, type: !36)
!3112 = !DILocalVariable(name: "version", arg: 4, scope: !3098, file: !528, line: 198, type: !36)
!3113 = !DILocalVariable(name: "authors", arg: 5, scope: !3098, file: !528, line: 198, type: !3101)
!3114 = !DILocalVariable(name: "n_authors", scope: !3098, file: !528, line: 200, type: !27)
!3115 = !DILocalVariable(name: "authtab", scope: !3098, file: !528, line: 201, type: !3116)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !127)
!3117 = !DILocation(line: 196, column: 23, scope: !3098)
!3118 = !DILocation(line: 197, column: 29, scope: !3098)
!3119 = !DILocation(line: 197, column: 55, scope: !3098)
!3120 = !DILocation(line: 198, column: 29, scope: !3098)
!3121 = !DILocation(line: 198, column: 46, scope: !3098)
!3122 = !DILocation(line: 201, column: 3, scope: !3098)
!3123 = !DILocation(line: 201, column: 15, scope: !3098)
!3124 = !DILocation(line: 200, column: 10, scope: !3098)
!3125 = !DILocation(line: 205, column: 35, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !528, line: 203, column: 3)
!3127 = distinct !DILexicalBlock(scope: !3098, file: !528, line: 203, column: 3)
!3128 = !DILocation(line: 205, column: 14, scope: !3126)
!3129 = !DILocation(line: 205, column: 33, scope: !3126)
!3130 = !DILocation(line: 205, column: 67, scope: !3126)
!3131 = !DILocation(line: 203, column: 3, scope: !3127)
!3132 = !DILocation(line: 208, column: 3, scope: !3098)
!3133 = !DILocation(line: 210, column: 1, scope: !3098)
!3134 = distinct !DISubprogram(name: "version_etc", scope: !528, file: !528, line: 227, type: !3135, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !2975, !36, !36, !36, null}
!3137 = !{!3138, !3139, !3140, !3141, !3142}
!3138 = !DILocalVariable(name: "stream", arg: 1, scope: !3134, file: !528, line: 227, type: !2975)
!3139 = !DILocalVariable(name: "command_name", arg: 2, scope: !3134, file: !528, line: 228, type: !36)
!3140 = !DILocalVariable(name: "package", arg: 3, scope: !3134, file: !528, line: 228, type: !36)
!3141 = !DILocalVariable(name: "version", arg: 4, scope: !3134, file: !528, line: 229, type: !36)
!3142 = !DILocalVariable(name: "authors", scope: !3134, file: !528, line: 231, type: !3143)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3144, line: 46, baseType: !3145)
!3144 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3146, line: 48, baseType: !3147)
!3146 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !525, line: 231, baseType: !3148)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3102, size: 192, elements: !3010)
!3149 = !DILocation(line: 227, column: 20, scope: !3134)
!3150 = !DILocation(line: 228, column: 26, scope: !3134)
!3151 = !DILocation(line: 228, column: 52, scope: !3134)
!3152 = !DILocation(line: 229, column: 26, scope: !3134)
!3153 = !DILocation(line: 231, column: 3, scope: !3134)
!3154 = !DILocation(line: 231, column: 11, scope: !3134)
!3155 = !DILocation(line: 233, column: 3, scope: !3134)
!3156 = !DILocation(line: 234, column: 3, scope: !3134)
!3157 = !DILocation(line: 235, column: 3, scope: !3134)
!3158 = !DILocation(line: 236, column: 1, scope: !3134)
!3159 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !528, file: !528, line: 239, type: !1185, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !69)
!3160 = !DILocation(line: 245, column: 3, scope: !3159)
!3161 = !DILocation(line: 251, column: 3, scope: !3159)
!3162 = !DILocation(line: 256, column: 3, scope: !3159)
!3163 = !DILocation(line: 258, column: 1, scope: !3159)
!3164 = distinct !DISubprogram(name: "xnmalloc", scope: !536, file: !536, line: 105, type: !1039, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3165)
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !536, line: 105, type: !27)
!3167 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !536, line: 105, type: !27)
!3168 = !DILocation(line: 105, column: 18, scope: !3164)
!3169 = !DILocation(line: 105, column: 28, scope: !3164)
!3170 = !DILocation(line: 107, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3164, file: !536, line: 107, column: 7)
!3172 = !DILocation(line: 107, column: 7, scope: !3164)
!3173 = !DILocation(line: 108, column: 5, scope: !3171)
!3174 = !DILocation(line: 109, column: 21, scope: !3164)
!3175 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !3177, line: 39, type: !27)
!3176 = distinct !DISubprogram(name: "xmalloc", scope: !3177, file: !3177, line: 39, type: !3178, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3180)
!3177 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!24, !27}
!3180 = !{!3175, !3181}
!3181 = !DILocalVariable(name: "p", scope: !3176, file: !3177, line: 41, type: !24)
!3182 = !DILocation(line: 39, column: 17, scope: !3176, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 109, column: 10, scope: !3164)
!3184 = !DILocation(line: 41, column: 13, scope: !3176, inlinedAt: !3183)
!3185 = !DILocation(line: 41, column: 9, scope: !3176, inlinedAt: !3183)
!3186 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3183)
!3187 = distinct !DILexicalBlock(scope: !3176, file: !3177, line: 42, column: 7)
!3188 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3183)
!3189 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3183)
!3190 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3183)
!3191 = !DILocation(line: 109, column: 3, scope: !3164)
!3192 = !DILocation(line: 39, column: 17, scope: !3176)
!3193 = !DILocation(line: 41, column: 13, scope: !3176)
!3194 = !DILocation(line: 41, column: 9, scope: !3176)
!3195 = !DILocation(line: 42, column: 8, scope: !3187)
!3196 = !DILocation(line: 42, column: 15, scope: !3187)
!3197 = !DILocation(line: 42, column: 10, scope: !3187)
!3198 = !DILocation(line: 43, column: 5, scope: !3187)
!3199 = !DILocation(line: 44, column: 3, scope: !3176)
!3200 = distinct !DISubprogram(name: "xnrealloc", scope: !536, file: !536, line: 118, type: !3201, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!24, !24, !27, !27}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "p", arg: 1, scope: !3200, file: !536, line: 118, type: !24)
!3205 = !DILocalVariable(name: "n", arg: 2, scope: !3200, file: !536, line: 118, type: !27)
!3206 = !DILocalVariable(name: "s", arg: 3, scope: !3200, file: !536, line: 118, type: !27)
!3207 = !DILocation(line: 118, column: 18, scope: !3200)
!3208 = !DILocation(line: 118, column: 28, scope: !3200)
!3209 = !DILocation(line: 118, column: 38, scope: !3200)
!3210 = !DILocation(line: 120, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !536, line: 120, column: 7)
!3212 = !DILocation(line: 120, column: 7, scope: !3200)
!3213 = !DILocation(line: 121, column: 5, scope: !3211)
!3214 = !DILocation(line: 122, column: 25, scope: !3200)
!3215 = !DILocalVariable(name: "p", arg: 1, scope: !3216, file: !3177, line: 51, type: !24)
!3216 = distinct !DISubprogram(name: "xrealloc", scope: !3177, file: !3177, line: 51, type: !3217, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!24, !24, !27}
!3219 = !{!3215, !3220}
!3220 = !DILocalVariable(name: "n", arg: 2, scope: !3216, file: !3177, line: 51, type: !27)
!3221 = !DILocation(line: 51, column: 17, scope: !3216, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 122, column: 10, scope: !3200)
!3223 = !DILocation(line: 51, column: 27, scope: !3216, inlinedAt: !3222)
!3224 = !DILocation(line: 53, column: 8, scope: !3225, inlinedAt: !3222)
!3225 = distinct !DILexicalBlock(scope: !3216, file: !3177, line: 53, column: 7)
!3226 = !DILocation(line: 53, column: 13, scope: !3225, inlinedAt: !3222)
!3227 = !DILocation(line: 53, column: 10, scope: !3225, inlinedAt: !3222)
!3228 = !DILocation(line: 57, column: 7, scope: !3229, inlinedAt: !3222)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !3177, line: 54, column: 5)
!3230 = !DILocation(line: 58, column: 7, scope: !3229, inlinedAt: !3222)
!3231 = !DILocation(line: 61, column: 7, scope: !3216, inlinedAt: !3222)
!3232 = !DILocation(line: 62, column: 8, scope: !3233, inlinedAt: !3222)
!3233 = distinct !DILexicalBlock(scope: !3216, file: !3177, line: 62, column: 7)
!3234 = !DILocation(line: 62, column: 13, scope: !3233, inlinedAt: !3222)
!3235 = !DILocation(line: 62, column: 10, scope: !3233, inlinedAt: !3222)
!3236 = !DILocation(line: 63, column: 5, scope: !3233, inlinedAt: !3222)
!3237 = !DILocation(line: 122, column: 3, scope: !3200)
!3238 = !DILocation(line: 51, column: 17, scope: !3216)
!3239 = !DILocation(line: 51, column: 27, scope: !3216)
!3240 = !DILocation(line: 53, column: 8, scope: !3225)
!3241 = !DILocation(line: 53, column: 13, scope: !3225)
!3242 = !DILocation(line: 53, column: 10, scope: !3225)
!3243 = !DILocation(line: 57, column: 7, scope: !3229)
!3244 = !DILocation(line: 58, column: 7, scope: !3229)
!3245 = !DILocation(line: 61, column: 7, scope: !3216)
!3246 = !DILocation(line: 62, column: 8, scope: !3233)
!3247 = !DILocation(line: 62, column: 13, scope: !3233)
!3248 = !DILocation(line: 62, column: 10, scope: !3233)
!3249 = !DILocation(line: 63, column: 5, scope: !3233)
!3250 = !DILocation(line: 65, column: 1, scope: !3216)
!3251 = !DILocation(line: 180, column: 19, scope: !537)
!3252 = !DILocation(line: 180, column: 30, scope: !537)
!3253 = !DILocation(line: 180, column: 41, scope: !537)
!3254 = !DILocation(line: 182, column: 14, scope: !537)
!3255 = !DILocation(line: 182, column: 10, scope: !537)
!3256 = !DILocation(line: 184, column: 9, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !537, file: !536, line: 184, column: 7)
!3258 = !DILocation(line: 184, column: 7, scope: !537)
!3259 = !DILocation(line: 186, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !536, line: 186, column: 11)
!3261 = distinct !DILexicalBlock(scope: !3257, file: !536, line: 185, column: 5)
!3262 = !DILocation(line: 186, column: 11, scope: !3261)
!3263 = !DILocation(line: 194, column: 30, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !536, line: 187, column: 9)
!3265 = !DILocation(line: 195, column: 16, scope: !3264)
!3266 = !DILocation(line: 195, column: 13, scope: !3264)
!3267 = !DILocation(line: 196, column: 9, scope: !3264)
!3268 = !DILocation(line: 204, column: 69, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !536, line: 204, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3257, file: !536, line: 199, column: 5)
!3271 = !DILocation(line: 205, column: 11, scope: !3269)
!3272 = !DILocation(line: 204, column: 11, scope: !3270)
!3273 = !DILocation(line: 206, column: 9, scope: !3269)
!3274 = !DILocation(line: 210, column: 7, scope: !537)
!3275 = !DILocation(line: 211, column: 25, scope: !537)
!3276 = !DILocation(line: 51, column: 17, scope: !3216, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 211, column: 10, scope: !537)
!3278 = !DILocation(line: 51, column: 27, scope: !3216, inlinedAt: !3277)
!3279 = !DILocation(line: 53, column: 10, scope: !3225, inlinedAt: !3277)
!3280 = !DILocation(line: 207, column: 14, scope: !3270)
!3281 = !DILocation(line: 207, column: 18, scope: !3270)
!3282 = !DILocation(line: 207, column: 9, scope: !3270)
!3283 = !DILocation(line: 53, column: 8, scope: !3225, inlinedAt: !3277)
!3284 = !DILocation(line: 57, column: 7, scope: !3229, inlinedAt: !3277)
!3285 = !DILocation(line: 58, column: 7, scope: !3229, inlinedAt: !3277)
!3286 = !DILocation(line: 61, column: 7, scope: !3216, inlinedAt: !3277)
!3287 = !DILocation(line: 62, column: 8, scope: !3233, inlinedAt: !3277)
!3288 = !DILocation(line: 62, column: 13, scope: !3233, inlinedAt: !3277)
!3289 = !DILocation(line: 62, column: 10, scope: !3233, inlinedAt: !3277)
!3290 = !DILocation(line: 63, column: 5, scope: !3233, inlinedAt: !3277)
!3291 = !DILocation(line: 211, column: 3, scope: !537)
!3292 = distinct !DISubprogram(name: "xcharalloc", scope: !536, file: !536, line: 220, type: !1135, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3293)
!3293 = !{!3294}
!3294 = !DILocalVariable(name: "n", arg: 1, scope: !3292, file: !536, line: 220, type: !27)
!3295 = !DILocation(line: 220, column: 20, scope: !3292)
!3296 = !DILocation(line: 39, column: 17, scope: !3176, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 222, column: 10, scope: !3292)
!3298 = !DILocation(line: 41, column: 13, scope: !3176, inlinedAt: !3297)
!3299 = !DILocation(line: 41, column: 9, scope: !3176, inlinedAt: !3297)
!3300 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3297)
!3301 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3297)
!3302 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3297)
!3303 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3297)
!3304 = !DILocation(line: 222, column: 3, scope: !3292)
!3305 = distinct !DISubprogram(name: "x2realloc", scope: !3177, file: !3177, line: 74, type: !3306, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!24, !24, !540}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "p", arg: 1, scope: !3305, file: !3177, line: 74, type: !24)
!3310 = !DILocalVariable(name: "pn", arg: 2, scope: !3305, file: !3177, line: 74, type: !540)
!3311 = !DILocation(line: 74, column: 18, scope: !3305)
!3312 = !DILocation(line: 74, column: 29, scope: !3305)
!3313 = !DILocation(line: 180, column: 19, scope: !537, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 76, column: 10, scope: !3305)
!3315 = !DILocation(line: 180, column: 30, scope: !537, inlinedAt: !3314)
!3316 = !DILocation(line: 180, column: 41, scope: !537, inlinedAt: !3314)
!3317 = !DILocation(line: 182, column: 14, scope: !537, inlinedAt: !3314)
!3318 = !DILocation(line: 182, column: 10, scope: !537, inlinedAt: !3314)
!3319 = !DILocation(line: 184, column: 9, scope: !3257, inlinedAt: !3314)
!3320 = !DILocation(line: 184, column: 7, scope: !537, inlinedAt: !3314)
!3321 = !DILocation(line: 186, column: 13, scope: !3260, inlinedAt: !3314)
!3322 = !DILocation(line: 186, column: 11, scope: !3261, inlinedAt: !3314)
!3323 = !DILocation(line: 210, column: 7, scope: !537, inlinedAt: !3314)
!3324 = !DILocation(line: 51, column: 17, scope: !3216, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 211, column: 10, scope: !537, inlinedAt: !3314)
!3326 = !DILocation(line: 51, column: 27, scope: !3216, inlinedAt: !3325)
!3327 = !DILocation(line: 53, column: 10, scope: !3225, inlinedAt: !3325)
!3328 = !DILocation(line: 205, column: 11, scope: !3269, inlinedAt: !3314)
!3329 = !DILocation(line: 204, column: 11, scope: !3270, inlinedAt: !3314)
!3330 = !DILocation(line: 206, column: 9, scope: !3269, inlinedAt: !3314)
!3331 = !DILocation(line: 207, column: 14, scope: !3270, inlinedAt: !3314)
!3332 = !DILocation(line: 207, column: 18, scope: !3270, inlinedAt: !3314)
!3333 = !DILocation(line: 207, column: 9, scope: !3270, inlinedAt: !3314)
!3334 = !DILocation(line: 53, column: 8, scope: !3225, inlinedAt: !3325)
!3335 = !DILocation(line: 57, column: 7, scope: !3229, inlinedAt: !3325)
!3336 = !DILocation(line: 58, column: 7, scope: !3229, inlinedAt: !3325)
!3337 = !DILocation(line: 61, column: 7, scope: !3216, inlinedAt: !3325)
!3338 = !DILocation(line: 62, column: 8, scope: !3233, inlinedAt: !3325)
!3339 = !DILocation(line: 62, column: 13, scope: !3233, inlinedAt: !3325)
!3340 = !DILocation(line: 62, column: 10, scope: !3233, inlinedAt: !3325)
!3341 = !DILocation(line: 63, column: 5, scope: !3233, inlinedAt: !3325)
!3342 = !DILocation(line: 76, column: 3, scope: !3305)
!3343 = distinct !DISubprogram(name: "xzalloc", scope: !3177, file: !3177, line: 84, type: !3178, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3344)
!3344 = !{!3345}
!3345 = !DILocalVariable(name: "s", arg: 1, scope: !3343, file: !3177, line: 84, type: !27)
!3346 = !DILocation(line: 84, column: 17, scope: !3343)
!3347 = !DILocation(line: 39, column: 17, scope: !3176, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 86, column: 18, scope: !3343)
!3349 = !DILocation(line: 41, column: 13, scope: !3176, inlinedAt: !3348)
!3350 = !DILocation(line: 41, column: 9, scope: !3176, inlinedAt: !3348)
!3351 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3348)
!3352 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3348)
!3353 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3348)
!3354 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3348)
!3355 = !DILocation(line: 86, column: 10, scope: !3343)
!3356 = !DILocation(line: 86, column: 3, scope: !3343)
!3357 = distinct !DISubprogram(name: "xcalloc", scope: !3177, file: !3177, line: 93, type: !1039, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3358)
!3358 = !{!3359, !3360, !3361}
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3357, file: !3177, line: 93, type: !27)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3357, file: !3177, line: 93, type: !27)
!3361 = !DILocalVariable(name: "p", scope: !3357, file: !3177, line: 95, type: !24)
!3362 = !DILocation(line: 93, column: 17, scope: !3357)
!3363 = !DILocation(line: 93, column: 27, scope: !3357)
!3364 = !DILocation(line: 100, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3357, file: !3177, line: 100, column: 7)
!3366 = !DILocation(line: 101, column: 7, scope: !3365)
!3367 = !DILocation(line: 101, column: 18, scope: !3365)
!3368 = !DILocation(line: 95, column: 9, scope: !3357)
!3369 = !DILocation(line: 101, column: 16, scope: !3365)
!3370 = !DILocation(line: 100, column: 7, scope: !3357)
!3371 = !DILocation(line: 102, column: 5, scope: !3365)
!3372 = !DILocation(line: 103, column: 3, scope: !3357)
!3373 = distinct !DISubprogram(name: "xmemdup", scope: !3177, file: !3177, line: 111, type: !3374, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3378)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!24, !3376, !27}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "p", arg: 1, scope: !3373, file: !3177, line: 111, type: !3376)
!3380 = !DILocalVariable(name: "s", arg: 2, scope: !3373, file: !3177, line: 111, type: !27)
!3381 = !DILocation(line: 111, column: 22, scope: !3373)
!3382 = !DILocation(line: 111, column: 32, scope: !3373)
!3383 = !DILocation(line: 39, column: 17, scope: !3176, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 113, column: 18, scope: !3373)
!3385 = !DILocation(line: 41, column: 13, scope: !3176, inlinedAt: !3384)
!3386 = !DILocation(line: 41, column: 9, scope: !3176, inlinedAt: !3384)
!3387 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3384)
!3388 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3384)
!3389 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3384)
!3390 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3384)
!3391 = !DILocation(line: 113, column: 10, scope: !3373)
!3392 = !DILocation(line: 113, column: 3, scope: !3373)
!3393 = distinct !DISubprogram(name: "xstrdup", scope: !3177, file: !3177, line: 119, type: !2394, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "string", arg: 1, scope: !3393, file: !3177, line: 119, type: !36)
!3396 = !DILocation(line: 119, column: 22, scope: !3393)
!3397 = !DILocation(line: 121, column: 27, scope: !3393)
!3398 = !DILocation(line: 121, column: 43, scope: !3393)
!3399 = !DILocation(line: 111, column: 22, scope: !3373, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 121, column: 10, scope: !3393)
!3401 = !DILocation(line: 111, column: 32, scope: !3373, inlinedAt: !3400)
!3402 = !DILocation(line: 39, column: 17, scope: !3176, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 113, column: 18, scope: !3373, inlinedAt: !3400)
!3404 = !DILocation(line: 41, column: 13, scope: !3176, inlinedAt: !3403)
!3405 = !DILocation(line: 41, column: 9, scope: !3176, inlinedAt: !3403)
!3406 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3403)
!3407 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3403)
!3408 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3403)
!3409 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3403)
!3410 = !DILocation(line: 113, column: 10, scope: !3373, inlinedAt: !3400)
!3411 = !DILocation(line: 121, column: 3, scope: !3393)
!3412 = distinct !DISubprogram(name: "xalloc_die", scope: !3413, file: !3413, line: 32, type: !1185, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !549, variables: !69)
!3413 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3414 = !DILocation(line: 34, column: 10, scope: !3412)
!3415 = !DILocation(line: 34, column: 33, scope: !3412)
!3416 = !DILocation(line: 34, column: 3, scope: !3412)
!3417 = !DILocation(line: 40, column: 3, scope: !3412)
!3418 = distinct !DISubprogram(name: "xgetcwd", scope: !3419, file: !3419, line: 35, type: !669, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3420)
!3419 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3420 = !{!3421}
!3421 = !DILocalVariable(name: "cwd", scope: !3418, file: !3419, line: 37, type: !25)
!3422 = !DILocation(line: 37, column: 15, scope: !3418)
!3423 = !DILocation(line: 37, column: 9, scope: !3418)
!3424 = !DILocation(line: 38, column: 9, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !3419, line: 38, column: 7)
!3426 = !DILocation(line: 38, column: 13, scope: !3425)
!3427 = !DILocation(line: 38, column: 16, scope: !3425)
!3428 = !DILocation(line: 38, column: 22, scope: !3425)
!3429 = !DILocation(line: 38, column: 7, scope: !3418)
!3430 = !DILocation(line: 39, column: 5, scope: !3425)
!3431 = !DILocation(line: 40, column: 3, scope: !3418)
!3432 = distinct !DISubprogram(name: "rpl_calloc", scope: !3433, file: !3433, line: 42, type: !1039, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3434)
!3433 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !3433, line: 42, type: !27)
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3432, file: !3433, line: 42, type: !27)
!3437 = !DILocalVariable(name: "result", scope: !3432, file: !3433, line: 44, type: !24)
!3438 = !DILocalVariable(name: "bytes", scope: !3439, file: !3433, line: 56, type: !27)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3433, line: 53, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3432, file: !3433, line: 47, column: 7)
!3441 = !DILocation(line: 42, column: 20, scope: !3432)
!3442 = !DILocation(line: 42, column: 30, scope: !3432)
!3443 = !DILocation(line: 47, column: 9, scope: !3440)
!3444 = !DILocation(line: 47, column: 19, scope: !3440)
!3445 = !DILocation(line: 47, column: 14, scope: !3440)
!3446 = !DILocation(line: 56, column: 24, scope: !3439)
!3447 = !DILocation(line: 56, column: 14, scope: !3439)
!3448 = !DILocation(line: 57, column: 17, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3439, file: !3433, line: 57, column: 11)
!3450 = !DILocation(line: 57, column: 21, scope: !3449)
!3451 = !DILocation(line: 57, column: 11, scope: !3439)
!3452 = !DILocation(line: 59, column: 11, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !3433, line: 58, column: 9)
!3454 = !DILocation(line: 59, column: 17, scope: !3453)
!3455 = !DILocation(line: 65, column: 12, scope: !3432)
!3456 = !DILocation(line: 44, column: 9, scope: !3432)
!3457 = !DILocation(line: 72, column: 3, scope: !3432)
!3458 = !DILocation(line: 73, column: 1, scope: !3432)
!3459 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3460, file: !3460, line: 334, type: !3461, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3475)
!3460 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!27, !3463, !36, !27, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1448, line: 6, baseType: !3466)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1450, line: 21, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1450, line: 13, size: 64, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3467, file: !1450, line: 15, baseType: !59, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3467, file: !1450, line: 20, baseType: !3471, size: 32, offset: 32)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3467, file: !1450, line: 16, size: 32, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3471, file: !1450, line: 18, baseType: !137, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3471, file: !1450, line: 19, baseType: !1459, size: 32)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3476 = !DILocalVariable(name: "pwc", arg: 1, scope: !3459, file: !3460, line: 334, type: !3463)
!3477 = !DILocalVariable(name: "s", arg: 2, scope: !3459, file: !3460, line: 334, type: !36)
!3478 = !DILocalVariable(name: "n", arg: 3, scope: !3459, file: !3460, line: 334, type: !27)
!3479 = !DILocalVariable(name: "ps", arg: 4, scope: !3459, file: !3460, line: 334, type: !3464)
!3480 = !DILocalVariable(name: "ret", scope: !3459, file: !3460, line: 336, type: !27)
!3481 = !DILocalVariable(name: "wc", scope: !3459, file: !3460, line: 337, type: !1464)
!3482 = !DILocalVariable(name: "uc", scope: !3483, file: !3460, line: 398, type: !518)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3460, line: 397, column: 5)
!3484 = distinct !DILexicalBlock(scope: !3459, file: !3460, line: 396, column: 7)
!3485 = !DILocation(line: 334, column: 23, scope: !3459)
!3486 = !DILocation(line: 334, column: 40, scope: !3459)
!3487 = !DILocation(line: 334, column: 50, scope: !3459)
!3488 = !DILocation(line: 334, column: 64, scope: !3459)
!3489 = !DILocation(line: 337, column: 3, scope: !3459)
!3490 = !DILocation(line: 353, column: 9, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3459, file: !3460, line: 353, column: 7)
!3492 = !DILocation(line: 353, column: 7, scope: !3459)
!3493 = !DILocation(line: 388, column: 9, scope: !3459)
!3494 = !DILocation(line: 336, column: 10, scope: !3459)
!3495 = !DILocation(line: 396, column: 19, scope: !3484)
!3496 = !DILocation(line: 396, column: 31, scope: !3484)
!3497 = !DILocation(line: 396, column: 26, scope: !3484)
!3498 = !DILocation(line: 396, column: 41, scope: !3484)
!3499 = !DILocation(line: 396, column: 7, scope: !3459)
!3500 = !DILocation(line: 398, column: 26, scope: !3483)
!3501 = !DILocation(line: 398, column: 21, scope: !3483)
!3502 = !DILocation(line: 399, column: 14, scope: !3483)
!3503 = !DILocation(line: 399, column: 12, scope: !3483)
!3504 = !DILocation(line: 405, column: 1, scope: !3459)
!3505 = distinct !DISubprogram(name: "close_stream", scope: !3506, file: !3506, line: 56, type: !3507, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3549)
!3506 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!59, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3511, file: !2979, line: 242, baseType: !59, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3511, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3511, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3511, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3511, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3511, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3511, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3511, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3511, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3511, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3511, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3511, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3511, file: !2979, line: 260, baseType: !3526, size: 64, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !3528)
!3528 = !{!3529, !3530, !3532}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3527, file: !2979, line: 157, baseType: !3526, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3527, file: !2979, line: 158, baseType: !3531, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3527, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3511, file: !2979, line: 262, baseType: !3531, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3511, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3511, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3511, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3511, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3511, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3511, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3511, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3511, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3511, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3511, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3511, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3511, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3511, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3511, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3511, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!3549 = !{!3550, !3551, !3553, !3554}
!3550 = !DILocalVariable(name: "stream", arg: 1, scope: !3505, file: !3506, line: 56, type: !3509)
!3551 = !DILocalVariable(name: "some_pending", scope: !3505, file: !3506, line: 58, type: !3552)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3553 = !DILocalVariable(name: "prev_fail", scope: !3505, file: !3506, line: 59, type: !3552)
!3554 = !DILocalVariable(name: "fclose_fail", scope: !3505, file: !3506, line: 60, type: !3552)
!3555 = !DILocation(line: 56, column: 21, scope: !3505)
!3556 = !DILocation(line: 58, column: 30, scope: !3505)
!3557 = !DILocalVariable(name: "__stream", arg: 1, scope: !3558, file: !3559, line: 132, type: !3509)
!3558 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3559, file: !3559, line: 132, type: !3507, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3560)
!3559 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3560 = !{!3557}
!3561 = !DILocation(line: 132, column: 1, scope: !3558, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 59, column: 27, scope: !3505)
!3563 = !DILocation(line: 134, column: 10, scope: !3558, inlinedAt: !3562)
!3564 = !{!3565, !659, i64 0}
!3565 = !{!"_IO_FILE", !659, i64 0, !587, i64 8, !587, i64 16, !587, i64 24, !587, i64 32, !587, i64 40, !587, i64 48, !587, i64 56, !587, i64 64, !587, i64 72, !587, i64 80, !587, i64 88, !587, i64 96, !587, i64 104, !659, i64 112, !659, i64 116, !764, i64 120, !980, i64 128, !588, i64 130, !588, i64 131, !587, i64 136, !764, i64 144, !587, i64 152, !587, i64 160, !587, i64 168, !587, i64 176, !764, i64 184, !659, i64 192, !588, i64 196}
!3566 = !DILocation(line: 59, column: 43, scope: !3505)
!3567 = !DILocation(line: 60, column: 29, scope: !3505)
!3568 = !DILocation(line: 60, column: 45, scope: !3505)
!3569 = !DILocation(line: 70, column: 17, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 70, column: 7)
!3571 = !DILocation(line: 58, column: 50, scope: !3505)
!3572 = !DILocation(line: 70, column: 33, scope: !3570)
!3573 = !DILocation(line: 70, column: 53, scope: !3570)
!3574 = !DILocation(line: 70, column: 59, scope: !3570)
!3575 = !DILocation(line: 70, column: 7, scope: !3505)
!3576 = !DILocation(line: 72, column: 11, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3570, file: !3506, line: 71, column: 5)
!3578 = !DILocation(line: 73, column: 9, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3577, file: !3506, line: 72, column: 11)
!3580 = !DILocation(line: 73, column: 15, scope: !3579)
!3581 = !DILocation(line: 78, column: 1, scope: !3505)
!3582 = distinct !DISubprogram(name: "hard_locale", scope: !3583, file: !3583, line: 38, type: !3584, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3586)
!3583 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!79, !59}
!3586 = !{!3587, !3588, !3589}
!3587 = !DILocalVariable(name: "category", arg: 1, scope: !3582, file: !3583, line: 38, type: !59)
!3588 = !DILocalVariable(name: "hard", scope: !3582, file: !3583, line: 40, type: !79)
!3589 = !DILocalVariable(name: "p", scope: !3582, file: !3583, line: 41, type: !36)
!3590 = !DILocation(line: 38, column: 18, scope: !3582)
!3591 = !DILocation(line: 40, column: 8, scope: !3582)
!3592 = !DILocation(line: 41, column: 19, scope: !3582)
!3593 = !DILocation(line: 41, column: 15, scope: !3582)
!3594 = !DILocation(line: 43, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3582, file: !3583, line: 43, column: 7)
!3596 = !DILocation(line: 43, column: 7, scope: !3582)
!3597 = !DILocation(line: 47, column: 15, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3583, line: 47, column: 15)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3583, line: 46, column: 9)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3583, line: 45, column: 11)
!3601 = distinct !DILexicalBlock(scope: !3595, file: !3583, line: 44, column: 5)
!3602 = !DILocation(line: 47, column: 31, scope: !3598)
!3603 = !DILocation(line: 47, column: 36, scope: !3598)
!3604 = !DILocation(line: 47, column: 39, scope: !3598)
!3605 = !DILocation(line: 47, column: 59, scope: !3598)
!3606 = !DILocation(line: 47, column: 15, scope: !3599)
!3607 = !DILocation(line: 48, column: 13, scope: !3598)
!3608 = !DILocation(line: 71, column: 3, scope: !3582)
!3609 = distinct !DISubprogram(name: "locale_charset", scope: !520, file: !520, line: 393, type: !3610, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!36}
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "codeset", scope: !3609, file: !520, line: 395, type: !36)
!3614 = !DILocalVariable(name: "aliases", scope: !3609, file: !520, line: 396, type: !36)
!3615 = !DILocalVariable(name: "buf1", scope: !3616, file: !520, line: 196, type: !3683)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !520, line: 194, column: 21)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !520, line: 193, column: 19)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !520, line: 193, column: 19)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !520, line: 188, column: 17)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !520, line: 181, column: 19)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !520, line: 177, column: 13)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !520, line: 173, column: 15)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !520, line: 161, column: 9)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !520, line: 157, column: 11)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !520, line: 130, column: 5)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !520, line: 129, column: 7)
!3627 = distinct !DISubprogram(name: "get_charset_aliases", scope: !520, file: !520, line: 124, type: !3610, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3635, !3636, !3637, !3638, !3679, !3680, !3681, !3615, !3682, !3686, !3687, !3688}
!3629 = !DILocalVariable(name: "cp", scope: !3627, file: !520, line: 126, type: !36)
!3630 = !DILocalVariable(name: "dir", scope: !3625, file: !520, line: 132, type: !36)
!3631 = !DILocalVariable(name: "base", scope: !3625, file: !520, line: 133, type: !36)
!3632 = !DILocalVariable(name: "file_name", scope: !3625, file: !520, line: 134, type: !25)
!3633 = !DILocalVariable(name: "dir_len", scope: !3634, file: !520, line: 144, type: !27)
!3634 = distinct !DILexicalBlock(scope: !3625, file: !520, line: 143, column: 7)
!3635 = !DILocalVariable(name: "base_len", scope: !3634, file: !520, line: 145, type: !27)
!3636 = !DILocalVariable(name: "add_slash", scope: !3634, file: !520, line: 146, type: !59)
!3637 = !DILocalVariable(name: "fd", scope: !3623, file: !520, line: 162, type: !59)
!3638 = !DILocalVariable(name: "fp", scope: !3621, file: !520, line: 178, type: !3639)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3641, file: !2979, line: 242, baseType: !59, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3641, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3641, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3641, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3641, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3641, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3641, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3641, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3641, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3641, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3641, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3641, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3641, file: !2979, line: 260, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !3658)
!3658 = !{!3659, !3660, !3662}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3657, file: !2979, line: 157, baseType: !3656, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3657, file: !2979, line: 158, baseType: !3661, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3657, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3641, file: !2979, line: 262, baseType: !3661, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3641, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3641, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3641, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3641, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3641, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3641, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3641, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3641, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3641, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3641, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3641, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3641, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3641, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3641, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3641, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!3679 = !DILocalVariable(name: "res_ptr", scope: !3619, file: !520, line: 190, type: !25)
!3680 = !DILocalVariable(name: "res_size", scope: !3619, file: !520, line: 191, type: !27)
!3681 = !DILocalVariable(name: "c", scope: !3616, file: !520, line: 195, type: !59)
!3682 = !DILocalVariable(name: "buf2", scope: !3616, file: !520, line: 197, type: !3683)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 408, elements: !3684)
!3684 = !{!3685}
!3685 = !DISubrange(count: 51)
!3686 = !DILocalVariable(name: "l1", scope: !3616, file: !520, line: 198, type: !27)
!3687 = !DILocalVariable(name: "l2", scope: !3616, file: !520, line: 198, type: !27)
!3688 = !DILocalVariable(name: "old_res_ptr", scope: !3616, file: !520, line: 199, type: !25)
!3689 = !DILocation(line: 196, column: 28, scope: !3616, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 589, column: 18, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3609, file: !520, line: 589, column: 3)
!3692 = !DILocation(line: 197, column: 28, scope: !3616, inlinedAt: !3690)
!3693 = !DILocation(line: 403, column: 13, scope: !3609)
!3694 = !DILocation(line: 395, column: 15, scope: !3609)
!3695 = !DILocation(line: 584, column: 15, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3609, file: !520, line: 584, column: 7)
!3697 = !DILocation(line: 584, column: 7, scope: !3609)
!3698 = !DILocation(line: 128, column: 8, scope: !3627, inlinedAt: !3690)
!3699 = !DILocation(line: 126, column: 15, scope: !3627, inlinedAt: !3690)
!3700 = !DILocation(line: 129, column: 10, scope: !3626, inlinedAt: !3690)
!3701 = !DILocation(line: 129, column: 7, scope: !3627, inlinedAt: !3690)
!3702 = !DILocation(line: 138, column: 13, scope: !3625, inlinedAt: !3690)
!3703 = !DILocation(line: 132, column: 19, scope: !3625, inlinedAt: !3690)
!3704 = !DILocation(line: 139, column: 15, scope: !3705, inlinedAt: !3690)
!3705 = distinct !DILexicalBlock(scope: !3625, file: !520, line: 139, column: 11)
!3706 = !DILocation(line: 139, column: 23, scope: !3705, inlinedAt: !3690)
!3707 = !DILocation(line: 139, column: 26, scope: !3705, inlinedAt: !3690)
!3708 = !DILocation(line: 139, column: 33, scope: !3705, inlinedAt: !3690)
!3709 = !DILocation(line: 139, column: 11, scope: !3625, inlinedAt: !3690)
!3710 = !DILocation(line: 140, column: 9, scope: !3705, inlinedAt: !3690)
!3711 = !DILocation(line: 144, column: 26, scope: !3634, inlinedAt: !3690)
!3712 = !DILocation(line: 144, column: 16, scope: !3634, inlinedAt: !3690)
!3713 = !DILocation(line: 145, column: 16, scope: !3634, inlinedAt: !3690)
!3714 = !DILocation(line: 146, column: 34, scope: !3634, inlinedAt: !3690)
!3715 = !DILocation(line: 146, column: 38, scope: !3634, inlinedAt: !3690)
!3716 = !DILocation(line: 146, column: 42, scope: !3634, inlinedAt: !3690)
!3717 = !DILocation(line: 147, column: 48, scope: !3634, inlinedAt: !3690)
!3718 = !DILocation(line: 147, column: 46, scope: !3634, inlinedAt: !3690)
!3719 = !DILocation(line: 147, column: 69, scope: !3634, inlinedAt: !3690)
!3720 = !DILocation(line: 147, column: 30, scope: !3634, inlinedAt: !3690)
!3721 = !DILocation(line: 134, column: 13, scope: !3625, inlinedAt: !3690)
!3722 = !DILocation(line: 148, column: 13, scope: !3634, inlinedAt: !3690)
!3723 = !DILocation(line: 150, column: 13, scope: !3724, inlinedAt: !3690)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !520, line: 149, column: 11)
!3725 = distinct !DILexicalBlock(scope: !3634, file: !520, line: 148, column: 13)
!3726 = !DILocation(line: 151, column: 17, scope: !3724, inlinedAt: !3690)
!3727 = !DILocation(line: 152, column: 34, scope: !3728, inlinedAt: !3690)
!3728 = distinct !DILexicalBlock(scope: !3724, file: !520, line: 151, column: 17)
!3729 = !DILocation(line: 153, column: 41, scope: !3724, inlinedAt: !3690)
!3730 = !DILocation(line: 153, column: 13, scope: !3724, inlinedAt: !3690)
!3731 = !DILocation(line: 157, column: 11, scope: !3625, inlinedAt: !3690)
!3732 = !DILocation(line: 171, column: 16, scope: !3623, inlinedAt: !3690)
!3733 = !DILocation(line: 162, column: 15, scope: !3623, inlinedAt: !3690)
!3734 = !DILocation(line: 173, column: 18, scope: !3622, inlinedAt: !3690)
!3735 = !DILocation(line: 173, column: 15, scope: !3623, inlinedAt: !3690)
!3736 = !DILocation(line: 180, column: 20, scope: !3621, inlinedAt: !3690)
!3737 = !DILocation(line: 178, column: 21, scope: !3621, inlinedAt: !3690)
!3738 = !DILocation(line: 181, column: 22, scope: !3620, inlinedAt: !3690)
!3739 = !DILocation(line: 181, column: 19, scope: !3621, inlinedAt: !3690)
!3740 = !DILocation(line: 184, column: 19, scope: !3741, inlinedAt: !3690)
!3741 = distinct !DILexicalBlock(scope: !3620, file: !520, line: 182, column: 17)
!3742 = !DILocation(line: 186, column: 17, scope: !3741, inlinedAt: !3690)
!3743 = !DILocation(line: 190, column: 25, scope: !3619, inlinedAt: !3690)
!3744 = !DILocation(line: 191, column: 26, scope: !3619, inlinedAt: !3690)
!3745 = !DILocation(line: 193, column: 19, scope: !3619, inlinedAt: !3690)
!3746 = !DILocation(line: 196, column: 23, scope: !3616, inlinedAt: !3690)
!3747 = !DILocation(line: 197, column: 23, scope: !3616, inlinedAt: !3690)
!3748 = !DILocalVariable(name: "__fp", arg: 1, scope: !3749, file: !3559, line: 63, type: !3639)
!3749 = distinct !DISubprogram(name: "getc_unlocked", scope: !3559, file: !3559, line: 63, type: !3750, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!59, !3639}
!3752 = !{!3748}
!3753 = !DILocation(line: 63, column: 22, scope: !3749, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 201, column: 27, scope: !3616, inlinedAt: !3690)
!3755 = !DILocation(line: 65, column: 10, scope: !3749, inlinedAt: !3754)
!3756 = !{!3565, !587, i64 8}
!3757 = !{!3565, !587, i64 16}
!3758 = !{!"branch_weights", i32 2000, i32 1}
!3759 = !DILocation(line: 195, column: 27, scope: !3616, inlinedAt: !3690)
!3760 = !DILocation(line: 202, column: 27, scope: !3616, inlinedAt: !3690)
!3761 = distinct !{!3761, !3762, !3765}
!3762 = !DILocation(line: 209, column: 27, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !520, line: 207, column: 25)
!3764 = distinct !DILexicalBlock(scope: !3616, file: !520, line: 206, column: 27)
!3765 = !DILocation(line: 211, column: 58, scope: !3763)
!3766 = !DILocation(line: 65, column: 10, scope: !3749, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 210, column: 33, scope: !3763, inlinedAt: !3690)
!3768 = !DILocation(line: 63, column: 22, scope: !3749, inlinedAt: !3767)
!3769 = !DILocation(line: 210, column: 29, scope: !3763, inlinedAt: !3690)
!3770 = distinct !{!3770, !3771, !3772}
!3771 = !DILocation(line: 193, column: 19, scope: !3618)
!3772 = !DILocation(line: 241, column: 21, scope: !3618)
!3773 = !DILocation(line: 216, column: 23, scope: !3616, inlinedAt: !3690)
!3774 = !DILocation(line: 217, column: 27, scope: !3775, inlinedAt: !3690)
!3775 = distinct !DILexicalBlock(scope: !3616, file: !520, line: 217, column: 27)
!3776 = !DILocation(line: 217, column: 64, scope: !3775, inlinedAt: !3690)
!3777 = !DILocation(line: 217, column: 27, scope: !3616, inlinedAt: !3690)
!3778 = !DILocation(line: 219, column: 28, scope: !3616, inlinedAt: !3690)
!3779 = !DILocation(line: 198, column: 30, scope: !3616, inlinedAt: !3690)
!3780 = !DILocation(line: 220, column: 28, scope: !3616, inlinedAt: !3690)
!3781 = !DILocation(line: 198, column: 34, scope: !3616, inlinedAt: !3690)
!3782 = !DILocation(line: 199, column: 29, scope: !3616, inlinedAt: !3690)
!3783 = !DILocation(line: 222, column: 36, scope: !3784, inlinedAt: !3690)
!3784 = distinct !DILexicalBlock(scope: !3616, file: !520, line: 222, column: 27)
!3785 = !DILocation(line: 222, column: 27, scope: !3616, inlinedAt: !3690)
!3786 = !DILocation(line: 225, column: 63, scope: !3787, inlinedAt: !3690)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !520, line: 223, column: 25)
!3788 = !DILocation(line: 225, column: 46, scope: !3787, inlinedAt: !3690)
!3789 = !DILocation(line: 226, column: 25, scope: !3787, inlinedAt: !3690)
!3790 = !DILocation(line: 229, column: 36, scope: !3791, inlinedAt: !3690)
!3791 = distinct !DILexicalBlock(scope: !3784, file: !520, line: 228, column: 25)
!3792 = !DILocation(line: 230, column: 73, scope: !3791, inlinedAt: !3690)
!3793 = !DILocation(line: 230, column: 46, scope: !3791, inlinedAt: !3690)
!3794 = !DILocation(line: 232, column: 35, scope: !3795, inlinedAt: !3690)
!3795 = distinct !DILexicalBlock(scope: !3616, file: !520, line: 232, column: 27)
!3796 = !DILocation(line: 232, column: 27, scope: !3616, inlinedAt: !3690)
!3797 = !DILocation(line: 236, column: 27, scope: !3798, inlinedAt: !3690)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !520, line: 233, column: 25)
!3799 = !DILocation(line: 237, column: 27, scope: !3798, inlinedAt: !3690)
!3800 = !DILocation(line: 241, column: 21, scope: !3617, inlinedAt: !3690)
!3801 = !DILocation(line: 239, column: 39, scope: !3616, inlinedAt: !3690)
!3802 = !DILocation(line: 239, column: 50, scope: !3616, inlinedAt: !3690)
!3803 = !DILocation(line: 239, column: 61, scope: !3616, inlinedAt: !3690)
!3804 = !DILocalVariable(name: "__dest", arg: 1, scope: !3805, file: !3806, line: 88, type: !3809)
!3805 = distinct !DISubprogram(name: "strcpy", scope: !3806, file: !3806, line: 88, type: !3807, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3811)
!3806 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!25, !3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!3810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!3811 = !{!3804, !3812}
!3812 = !DILocalVariable(name: "__src", arg: 2, scope: !3805, file: !3806, line: 88, type: !3810)
!3813 = !DILocation(line: 88, column: 1, scope: !3805, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 239, column: 23, scope: !3616, inlinedAt: !3690)
!3815 = !DILocation(line: 90, column: 49, scope: !3805, inlinedAt: !3814)
!3816 = !DILocation(line: 90, column: 10, scope: !3805, inlinedAt: !3814)
!3817 = !DILocation(line: 88, column: 1, scope: !3805, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 240, column: 23, scope: !3616, inlinedAt: !3690)
!3819 = !DILocation(line: 90, column: 49, scope: !3805, inlinedAt: !3818)
!3820 = !DILocation(line: 90, column: 10, scope: !3805, inlinedAt: !3818)
!3821 = !DILocation(line: 193, column: 19, scope: !3617, inlinedAt: !3690)
!3822 = !DILocation(line: 242, column: 19, scope: !3619, inlinedAt: !3690)
!3823 = !DILocation(line: 243, column: 32, scope: !3824, inlinedAt: !3690)
!3824 = distinct !DILexicalBlock(scope: !3619, file: !520, line: 243, column: 23)
!3825 = !DILocation(line: 243, column: 23, scope: !3619, inlinedAt: !3690)
!3826 = !DILocation(line: 247, column: 33, scope: !3827, inlinedAt: !3690)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !520, line: 246, column: 21)
!3828 = !DILocation(line: 247, column: 45, scope: !3827, inlinedAt: !3690)
!3829 = !DILocation(line: 253, column: 11, scope: !3623, inlinedAt: !3690)
!3830 = !DILocation(line: 377, column: 23, scope: !3625, inlinedAt: !3690)
!3831 = !DILocation(line: 378, column: 5, scope: !3625, inlinedAt: !3690)
!3832 = !DILocation(line: 396, column: 15, scope: !3609)
!3833 = !DILocation(line: 590, column: 8, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3691, file: !520, line: 589, column: 3)
!3835 = !DILocation(line: 590, column: 17, scope: !3834)
!3836 = !DILocation(line: 589, column: 3, scope: !3691)
!3837 = !DILocation(line: 592, column: 9, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3834, file: !520, line: 592, column: 9)
!3839 = !DILocation(line: 592, column: 35, scope: !3838)
!3840 = !DILocation(line: 593, column: 9, scope: !3838)
!3841 = !DILocation(line: 593, column: 24, scope: !3838)
!3842 = !DILocation(line: 593, column: 31, scope: !3838)
!3843 = !DILocation(line: 593, column: 34, scope: !3838)
!3844 = !DILocation(line: 593, column: 45, scope: !3838)
!3845 = !DILocation(line: 592, column: 9, scope: !3834)
!3846 = !DILocation(line: 595, column: 29, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3838, file: !520, line: 594, column: 7)
!3848 = !DILocation(line: 595, column: 27, scope: !3847)
!3849 = !DILocation(line: 595, column: 46, scope: !3847)
!3850 = !DILocation(line: 596, column: 9, scope: !3847)
!3851 = !DILocation(line: 591, column: 19, scope: !3834)
!3852 = !DILocation(line: 591, column: 36, scope: !3834)
!3853 = !DILocation(line: 591, column: 16, scope: !3834)
!3854 = !DILocation(line: 591, column: 52, scope: !3834)
!3855 = !DILocation(line: 591, column: 69, scope: !3834)
!3856 = !DILocation(line: 591, column: 49, scope: !3834)
!3857 = distinct !{!3857, !3836, !3858}
!3858 = !DILocation(line: 597, column: 7, scope: !3691)
!3859 = !DILocation(line: 602, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3609, file: !520, line: 602, column: 7)
!3861 = !DILocation(line: 602, column: 18, scope: !3860)
!3862 = !DILocation(line: 602, column: 7, scope: !3609)
!3863 = !DILocation(line: 612, column: 3, scope: !3609)
!3864 = distinct !DISubprogram(name: "rpl_fclose", scope: !3865, file: !3865, line: 56, type: !3866, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3908)
!3865 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!59, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !3870)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3870, file: !2979, line: 242, baseType: !59, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3870, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3870, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3870, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3870, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3870, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3870, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3870, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3870, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3870, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3870, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3870, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3870, file: !2979, line: 260, baseType: !3885, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !3887)
!3887 = !{!3888, !3889, !3891}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3886, file: !2979, line: 157, baseType: !3885, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3886, file: !2979, line: 158, baseType: !3890, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3886, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3870, file: !2979, line: 262, baseType: !3890, size: 64, offset: 832)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3870, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3870, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3870, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3870, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3870, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3870, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3870, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3870, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3870, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3870, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3870, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3870, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3870, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3870, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3870, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!3908 = !{!3909, !3910, !3911, !3912}
!3909 = !DILocalVariable(name: "fp", arg: 1, scope: !3864, file: !3865, line: 56, type: !3868)
!3910 = !DILocalVariable(name: "saved_errno", scope: !3864, file: !3865, line: 58, type: !59)
!3911 = !DILocalVariable(name: "fd", scope: !3864, file: !3865, line: 59, type: !59)
!3912 = !DILocalVariable(name: "result", scope: !3864, file: !3865, line: 60, type: !59)
!3913 = !DILocation(line: 56, column: 19, scope: !3864)
!3914 = !DILocation(line: 58, column: 7, scope: !3864)
!3915 = !DILocation(line: 60, column: 7, scope: !3864)
!3916 = !DILocation(line: 63, column: 8, scope: !3864)
!3917 = !DILocation(line: 59, column: 7, scope: !3864)
!3918 = !DILocation(line: 64, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3864, file: !3865, line: 64, column: 7)
!3920 = !DILocation(line: 64, column: 7, scope: !3864)
!3921 = !DILocation(line: 65, column: 12, scope: !3919)
!3922 = !DILocation(line: 65, column: 5, scope: !3919)
!3923 = !DILocation(line: 70, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3864, file: !3865, line: 70, column: 7)
!3925 = !DILocation(line: 70, column: 23, scope: !3924)
!3926 = !DILocation(line: 70, column: 33, scope: !3924)
!3927 = !DILocation(line: 70, column: 26, scope: !3924)
!3928 = !DILocation(line: 70, column: 59, scope: !3924)
!3929 = !DILocation(line: 71, column: 7, scope: !3924)
!3930 = !DILocation(line: 71, column: 10, scope: !3924)
!3931 = !DILocation(line: 70, column: 7, scope: !3864)
!3932 = !DILocation(line: 98, column: 12, scope: !3864)
!3933 = !DILocation(line: 103, column: 7, scope: !3864)
!3934 = !DILocation(line: 72, column: 19, scope: !3924)
!3935 = !DILocation(line: 103, column: 19, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3864, file: !3865, line: 103, column: 7)
!3937 = !DILocation(line: 105, column: 13, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !3865, line: 104, column: 5)
!3939 = !DILocation(line: 107, column: 5, scope: !3938)
!3940 = !DILocation(line: 110, column: 1, scope: !3864)
!3941 = distinct !DISubprogram(name: "rpl_fflush", scope: !3942, file: !3942, line: 127, type: !3943, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3985)
!3942 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!59, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !3947)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3947, file: !2979, line: 242, baseType: !59, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3947, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3947, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3947, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3947, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3947, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3947, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3947, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3947, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3947, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3947, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3947, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3947, file: !2979, line: 260, baseType: !3962, size: 64, offset: 768)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !3964)
!3964 = !{!3965, !3966, !3968}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3963, file: !2979, line: 157, baseType: !3962, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3963, file: !2979, line: 158, baseType: !3967, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3963, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3947, file: !2979, line: 262, baseType: !3967, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3947, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3947, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3947, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3947, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3947, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3947, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3947, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3947, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3947, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3947, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3947, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3947, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3947, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3947, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3947, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!3985 = !{!3986}
!3986 = !DILocalVariable(name: "stream", arg: 1, scope: !3941, file: !3942, line: 127, type: !3945)
!3987 = !DILocation(line: 127, column: 19, scope: !3941)
!3988 = !DILocation(line: 148, column: 14, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3941, file: !3942, line: 148, column: 7)
!3990 = !DILocation(line: 148, column: 22, scope: !3989)
!3991 = !DILocation(line: 148, column: 27, scope: !3989)
!3992 = !DILocation(line: 148, column: 7, scope: !3941)
!3993 = !DILocation(line: 149, column: 12, scope: !3989)
!3994 = !DILocation(line: 149, column: 5, scope: !3989)
!3995 = !DILocalVariable(name: "fp", arg: 1, scope: !3996, file: !3942, line: 40, type: !3945)
!3996 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3942, file: !3942, line: 40, type: !3997, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3945}
!3999 = !{!3995}
!4000 = !DILocation(line: 40, column: 48, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 153, column: 3, scope: !3941)
!4002 = !DILocation(line: 42, column: 11, scope: !4003, inlinedAt: !4001)
!4003 = distinct !DILexicalBlock(scope: !3996, file: !3942, line: 42, column: 7)
!4004 = !DILocation(line: 42, column: 18, scope: !4003, inlinedAt: !4001)
!4005 = !DILocation(line: 42, column: 7, scope: !3996, inlinedAt: !4001)
!4006 = !DILocation(line: 44, column: 5, scope: !4003, inlinedAt: !4001)
!4007 = !DILocation(line: 155, column: 10, scope: !3941)
!4008 = !DILocation(line: 155, column: 3, scope: !3941)
!4009 = !DILocation(line: 229, column: 1, scope: !3941)
!4010 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4011, file: !4011, line: 28, type: !4012, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !4055)
!4011 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!59, !4014, !4054, !59}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2977, line: 7, baseType: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2979, line: 241, size: 1728, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4016, file: !2979, line: 242, baseType: !59, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4016, file: !2979, line: 247, baseType: !25, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4016, file: !2979, line: 248, baseType: !25, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4016, file: !2979, line: 249, baseType: !25, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4016, file: !2979, line: 250, baseType: !25, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4016, file: !2979, line: 251, baseType: !25, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4016, file: !2979, line: 252, baseType: !25, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4016, file: !2979, line: 253, baseType: !25, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4016, file: !2979, line: 254, baseType: !25, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4016, file: !2979, line: 256, baseType: !25, size: 64, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4016, file: !2979, line: 257, baseType: !25, size: 64, offset: 640)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4016, file: !2979, line: 258, baseType: !25, size: 64, offset: 704)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4016, file: !2979, line: 260, baseType: !4031, size: 64, offset: 768)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2979, line: 156, size: 192, elements: !4033)
!4033 = !{!4034, !4035, !4037}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4032, file: !2979, line: 157, baseType: !4031, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4032, file: !2979, line: 158, baseType: !4036, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4032, file: !2979, line: 162, baseType: !59, size: 32, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4016, file: !2979, line: 262, baseType: !4036, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4016, file: !2979, line: 264, baseType: !59, size: 32, offset: 896)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4016, file: !2979, line: 268, baseType: !59, size: 32, offset: 928)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4016, file: !2979, line: 270, baseType: !692, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4016, file: !2979, line: 274, baseType: !120, size: 16, offset: 1024)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4016, file: !2979, line: 275, baseType: !3007, size: 8, offset: 1040)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4016, file: !2979, line: 276, baseType: !3009, size: 8, offset: 1048)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4016, file: !2979, line: 280, baseType: !3013, size: 64, offset: 1088)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4016, file: !2979, line: 289, baseType: !3016, size: 64, offset: 1152)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4016, file: !2979, line: 297, baseType: !24, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4016, file: !2979, line: 298, baseType: !24, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4016, file: !2979, line: 299, baseType: !24, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4016, file: !2979, line: 300, baseType: !24, size: 64, offset: 1408)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4016, file: !2979, line: 302, baseType: !27, size: 64, offset: 1472)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4016, file: !2979, line: 303, baseType: !59, size: 32, offset: 1536)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4016, file: !2979, line: 305, baseType: !3024, size: 160, offset: 1568)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3144, line: 57, baseType: !692)
!4055 = !{!4056, !4057, !4058, !4059}
!4056 = !DILocalVariable(name: "fp", arg: 1, scope: !4010, file: !4011, line: 28, type: !4014)
!4057 = !DILocalVariable(name: "offset", arg: 2, scope: !4010, file: !4011, line: 28, type: !4054)
!4058 = !DILocalVariable(name: "whence", arg: 3, scope: !4010, file: !4011, line: 28, type: !59)
!4059 = !DILocalVariable(name: "pos", scope: !4060, file: !4011, line: 116, type: !4054)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !4011, line: 112, column: 5)
!4061 = distinct !DILexicalBlock(scope: !4010, file: !4011, line: 51, column: 7)
!4062 = !DILocation(line: 28, column: 15, scope: !4010)
!4063 = !DILocation(line: 28, column: 25, scope: !4010)
!4064 = !DILocation(line: 28, column: 37, scope: !4010)
!4065 = !DILocation(line: 51, column: 11, scope: !4061)
!4066 = !DILocation(line: 51, column: 31, scope: !4061)
!4067 = !DILocation(line: 51, column: 24, scope: !4061)
!4068 = !DILocation(line: 52, column: 7, scope: !4061)
!4069 = !DILocation(line: 52, column: 14, scope: !4061)
!4070 = !{!3565, !587, i64 40}
!4071 = !DILocation(line: 52, column: 35, scope: !4061)
!4072 = !{!3565, !587, i64 32}
!4073 = !DILocation(line: 52, column: 28, scope: !4061)
!4074 = !DILocation(line: 53, column: 7, scope: !4061)
!4075 = !DILocation(line: 53, column: 14, scope: !4061)
!4076 = !{!3565, !587, i64 72}
!4077 = !DILocation(line: 53, column: 28, scope: !4061)
!4078 = !DILocation(line: 51, column: 7, scope: !4010)
!4079 = !DILocation(line: 116, column: 26, scope: !4060)
!4080 = !DILocation(line: 116, column: 19, scope: !4060)
!4081 = !DILocation(line: 116, column: 13, scope: !4060)
!4082 = !DILocation(line: 117, column: 15, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4060, file: !4011, line: 117, column: 11)
!4084 = !DILocation(line: 117, column: 11, scope: !4060)
!4085 = !DILocation(line: 127, column: 11, scope: !4060)
!4086 = !DILocation(line: 127, column: 18, scope: !4060)
!4087 = !DILocation(line: 128, column: 11, scope: !4060)
!4088 = !DILocation(line: 128, column: 19, scope: !4060)
!4089 = !{!3565, !764, i64 144}
!4090 = !DILocation(line: 159, column: 7, scope: !4060)
!4091 = !DILocation(line: 161, column: 10, scope: !4010)
!4092 = !DILocation(line: 161, column: 3, scope: !4010)
!4093 = !DILocation(line: 162, column: 1, scope: !4010)
