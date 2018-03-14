; ModuleID = 'coreutils-8.27/src/sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Print checksum and block counts for each FILE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"\0A  -r              use BSD sum algorithm, use 1K blocks\0A  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [18 x i8] c"Kayvan Aghaiepour\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"sysv\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !89
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !95
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !100
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !103
@.str.39 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.41 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.42 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1, !dbg !110
@.str.4.43 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.44 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.45 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.48, i32 0, i32 0), i8* null], align 16, !dbg !125
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4, !dbg !132
@.str.6.46 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.47 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.48 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !141
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !148
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !176
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !183
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !196
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !203
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !210
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !198
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !212
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !217
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.114 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !226
@.str.127 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.128 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.129 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.130 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.131 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !239
@.str.3.141 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.142 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.143 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.145 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.146 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !664 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !668, metadata !669), !dbg !670
  %2 = icmp eq i32 %0, 0, !dbg !671
  br i1 %2, label %8, label %3, !dbg !673

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !674, !tbaa !676
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !674
  %6 = load i8*, i8** @program_name, align 8, !dbg !674, !tbaa !676
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !674
  br label %42, !dbg !674

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !680
  %10 = load i8*, i8** @program_name, align 8, !dbg !680, !tbaa !676
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !680
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !682
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !676
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !682
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !683
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !676
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !683
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !686
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !676
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !686
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !687
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !676
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !687
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !688
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !676
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !688
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !64, metadata !669) #11, !dbg !689
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !64, metadata !669) #11, !dbg !689
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !691
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !691
  %29 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !692
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !72, metadata !669) #11, !dbg !693
  %30 = icmp eq i8* %29, null, !dbg !694
  br i1 %30, label %37, label %31, !dbg !696

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !697
  %33 = icmp eq i32 %32, 0, !dbg !697
  br i1 %33, label %37, label %34, !dbg !698

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !699
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !699
  br label %37, !dbg !701

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !702
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !702
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !703
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !703
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #15, !dbg !704
  unreachable, !dbg !704
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !705 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !710, metadata !669), !dbg !719
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !711, metadata !669), !dbg !720
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* @bsd_sum_file, i64 0, metadata !715, metadata !669), !dbg !721
  %3 = load i8*, i8** %1, align 8, !dbg !722, !tbaa !676
  tail call void @set_program_name(i8* %3) #11, !dbg !723
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !724
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !725
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !726
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !727
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !676
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #11, !dbg !729
  store i1 false, i1* @have_read_stdin, align 1
  br label %10, !dbg !730

; <label>:10:                                     ; preds = %13, %2
  %11 = phi i1 (i8*, i32)* [ @bsd_sum_file, %2 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, i64 0, metadata !715, metadata !669), !dbg !721
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !713, metadata !669), !dbg !732
  switch i32 %12, label %20 [
    i32 -1, label %21
    i32 114, label %13
    i32 115, label %15
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !730

; <label>:13:                                     ; preds = %10, %15
  %14 = phi i1 (i8*, i32)* [ @sysv_sum_file, %15 ], [ @bsd_sum_file, %10 ]
  br label %10, !dbg !721, !llvm.loop !733

; <label>:15:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* @sysv_sum_file, i64 0, metadata !715, metadata !669), !dbg !721
  br label %13, !dbg !735

; <label>:16:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !738
  unreachable, !dbg !738

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !676
  %19 = load i8*, i8** @Version, align 8, !dbg !739, !tbaa !676
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !739
  tail call void @exit(i32 0) #15, !dbg !739
  unreachable, !dbg !739

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !740
  unreachable, !dbg !740

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* @optind, align 4, !dbg !741, !tbaa !742
  %23 = sub nsw i32 %0, %22, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !714, metadata !669), !dbg !745
  %24 = icmp slt i32 %23, 1, !dbg !746
  br i1 %24, label %25, label %28, !dbg !748

; <label>:25:                                     ; preds = %21
  %26 = tail call zeroext i1 %11(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %23) #11, !dbg !749
  %27 = zext i1 %26 to i8, !dbg !750
  tail call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !712, metadata !669), !dbg !751
  br label %43, !dbg !752

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !712, metadata !669), !dbg !751
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !712, metadata !669), !dbg !751
  %29 = icmp slt i32 %22, %0, !dbg !753
  br i1 %29, label %30, label %43, !dbg !756

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !757

; <label>:31:                                     ; preds = %30, %31
  %32 = phi i32 [ %41, %31 ], [ %22, %30 ]
  %33 = phi i8 [ %39, %31 ], [ 1, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !712, metadata !669), !dbg !751
  %34 = sext i32 %32 to i64, !dbg !757
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !757
  %36 = load i8*, i8** %35, align 8, !dbg !757, !tbaa !676
  %37 = tail call zeroext i1 %11(i8* %36, i32 %23) #11, !dbg !758
  %38 = zext i1 %37 to i8, !dbg !758
  %39 = and i8 %33, %38, !dbg !759
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !712, metadata !669), !dbg !751
  %40 = load i32, i32* @optind, align 4, !dbg !760, !tbaa !742
  %41 = add nsw i32 %40, 1, !dbg !760
  store i32 %41, i32* @optind, align 4, !dbg !760, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !712, metadata !669), !dbg !751
  %42 = icmp slt i32 %41, %0, !dbg !753
  br i1 %42, label %31, label %43, !dbg !756, !llvm.loop !761

; <label>:43:                                     ; preds = %31, %28, %25
  %44 = phi i8 [ %27, %25 ], [ 1, %28 ], [ %39, %31 ]
  tail call void @llvm.dbg.value(metadata i8 %44, i64 0, metadata !712, metadata !669), !dbg !751
  %45 = load i1, i1* @have_read_stdin, align 1
  br i1 %45, label %46, label %54, !dbg !763

; <label>:46:                                     ; preds = %43
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !765, !tbaa !676
  %48 = tail call i32 @rpl_fclose(%struct._IO_FILE* %47) #11, !dbg !766
  %49 = icmp eq i32 %48, -1, !dbg !767
  br i1 %49, label %50, label %54, !dbg !768

; <label>:50:                                     ; preds = %46
  %51 = tail call i32* @__errno_location() #17, !dbg !769
  %52 = load i32, i32* %51, align 4, !dbg !769, !tbaa !742
  %53 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !769
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %53) #11, !dbg !769
  unreachable, !dbg !769

; <label>:54:                                     ; preds = %46, %43
  %55 = and i8 %44, 1, !dbg !770
  %56 = xor i8 %55, 1, !dbg !770
  %57 = zext i8 %56 to i32, !dbg !770
  ret i32 %57, !dbg !771
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @bsd_sum_file(i8*, i32) unnamed_addr #6 !dbg !772 {
  %3 = alloca [652 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !774, metadata !669), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !775, metadata !669), !dbg !842
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !830, metadata !669), !dbg !843
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !831, metadata !669), !dbg !844
  %4 = getelementptr inbounds [652 x i8], [652 x i8]* %3, i64 0, i64 0, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %4) #11, !dbg !845
  tail call void @llvm.dbg.declare(metadata [652 x i8]* %3, metadata !836, metadata !669), !dbg !846
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !847
  %6 = icmp eq i32 %5, 0, !dbg !847
  br i1 %6, label %7, label %9, !dbg !848

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !849, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, i64 0, metadata !776, metadata !669), !dbg !852
  store i1 true, i1* @have_read_stdin, align 1
  br label %16, !dbg !853

; <label>:9:                                      ; preds = %2
  %10 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)), !dbg !854
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !776, metadata !669), !dbg !852
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !856
  br i1 %11, label %12, label %16, !dbg !858

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #17, !dbg !859
  %14 = load i32, i32* %13, align 4, !dbg !859, !tbaa !742
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !861
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %15) #11, !dbg !862
  br label %77, !dbg !863

; <label>:16:                                     ; preds = %9, %7
  %17 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, i64 0, metadata !776, metadata !669), !dbg !852
  tail call void @fadvise(%struct._IO_FILE* %17, i32 2) #11, !dbg !864
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 2
  br label %20, !dbg !865

; <label>:20:                                     ; preds = %33, %16
  %21 = phi i32 [ 0, %16 ], [ %40, %33 ]
  %22 = phi i64 [ 0, %16 ], [ %35, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !831, metadata !669), !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !830, metadata !669), !dbg !843
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, i64 0, metadata !866, metadata !669) #11, !dbg !872
  %23 = load i8*, i8** %18, align 8, !dbg !874, !tbaa !875
  %24 = load i8*, i8** %19, align 8, !dbg !874, !tbaa !879
  %25 = icmp ult i8* %23, %24, !dbg !874
  br i1 %25, label %26, label %30, !dbg !874, !prof !880

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !874
  store i8* %27, i8** %18, align 8, !dbg !874, !tbaa !875
  %28 = load i8, i8* %23, align 1, !dbg !874, !tbaa !881
  %29 = zext i8 %28 to i32, !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !835, metadata !669), !dbg !882
  br label %33, !dbg !865

; <label>:30:                                     ; preds = %20
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %17) #11, !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !835, metadata !669), !dbg !882
  %32 = icmp eq i32 %31, -1, !dbg !883
  br i1 %32, label %41, label %33, !dbg !865

; <label>:33:                                     ; preds = %26, %30
  %34 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %35 = add i64 %22, 1, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !831, metadata !669), !dbg !844
  %36 = lshr i32 %21, 1, !dbg !886
  %37 = shl nuw nsw i32 %21, 15, !dbg !887
  %38 = or i32 %36, %37, !dbg !888
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !830, metadata !669), !dbg !843
  %39 = add i32 %34, %38, !dbg !889
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !830, metadata !669), !dbg !843
  %40 = and i32 %39, 65535, !dbg !890
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !830, metadata !669), !dbg !843
  br label %20, !dbg !865, !llvm.loop !891

; <label>:41:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, i64 0, metadata !893, metadata !669), !dbg !896
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 0, !dbg !899
  %43 = load i32, i32* %42, align 8, !dbg !899, !tbaa !900
  %44 = and i32 %43, 32, !dbg !899
  %45 = icmp eq i32 %44, 0, !dbg !901
  br i1 %45, label %52, label %46, !dbg !902

; <label>:46:                                     ; preds = %41
  %47 = tail call i32* @__errno_location() #17, !dbg !903
  %48 = load i32, i32* %47, align 4, !dbg !903, !tbaa !742
  %49 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !905
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %49) #11, !dbg !906
  br i1 %6, label %77, label %50, !dbg !907

; <label>:50:                                     ; preds = %46
  %51 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #11, !dbg !908
  br label %77, !dbg !908

; <label>:52:                                     ; preds = %41
  br i1 %6, label %60, label %53, !dbg !910

; <label>:53:                                     ; preds = %52
  %54 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #11, !dbg !912
  %55 = icmp eq i32 %54, 0, !dbg !913
  br i1 %55, label %60, label %56, !dbg !914

; <label>:56:                                     ; preds = %53
  %57 = tail call i32* @__errno_location() #17, !dbg !915
  %58 = load i32, i32* %57, align 4, !dbg !915, !tbaa !742
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !917
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %59) #11, !dbg !918
  br label %77, !dbg !919

; <label>:60:                                     ; preds = %53, %52
  %61 = call i8* @human_readable(i64 %22, i8* nonnull %4, i32 0, i64 1, i64 1024) #11, !dbg !920
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %21, i8* %61) #11, !dbg !920
  %63 = icmp sgt i32 %1, 1, !dbg !921
  br i1 %63, label %64, label %66, !dbg !923

; <label>:64:                                     ; preds = %60
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #11, !dbg !924
  br label %66, !dbg !924

; <label>:66:                                     ; preds = %64, %60
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !925, metadata !669) #11, !dbg !930
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !932, !tbaa !676
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !932
  %69 = load i8*, i8** %68, align 8, !dbg !932, !tbaa !933
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !932
  %71 = load i8*, i8** %70, align 8, !dbg !932, !tbaa !934
  %72 = icmp ult i8* %69, %71, !dbg !932
  br i1 %72, label %75, label %73, !dbg !932, !prof !880

; <label>:73:                                     ; preds = %66
  %74 = call i32 @__overflow(%struct._IO_FILE* %67, i32 10) #11, !dbg !932
  br label %77, !dbg !932

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !932
  store i8* %76, i8** %68, align 8, !dbg !932, !tbaa !933
  store i8 10, i8* %69, align 1, !dbg !932, !tbaa !881
  br label %77, !dbg !932

; <label>:77:                                     ; preds = %75, %73, %46, %50, %56, %12
  %78 = phi i1 [ false, %56 ], [ false, %12 ], [ false, %50 ], [ false, %46 ], [ true, %73 ], [ true, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %4) #11, !dbg !935
  ret i1 %78, !dbg !935
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sysv_sum_file(i8*, i32) unnamed_addr #6 !dbg !936 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [652 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !938, metadata !669), !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !939, metadata !669), !dbg !955
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #11, !dbg !956
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !941, metadata !669), !dbg !957
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !945, metadata !669), !dbg !958
  %6 = getelementptr inbounds [652 x i8], [652 x i8]* %4, i64 0, i64 0, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %6) #11, !dbg !959
  tail call void @llvm.dbg.declare(metadata [652 x i8]* %4, metadata !946, metadata !669), !dbg !960
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !949, metadata !669), !dbg !961
  %7 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !962
  %8 = icmp eq i32 %7, 0, !dbg !962
  br i1 %8, label %9, label %10, !dbg !963

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !940, metadata !669), !dbg !964
  store i1 true, i1* @have_read_stdin, align 1
  br label %17, !dbg !965

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 0) #11, !dbg !968
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !940, metadata !669), !dbg !964
  %12 = icmp eq i32 %11, -1, !dbg !970
  br i1 %12, label %13, label %17, !dbg !972

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #17, !dbg !973
  %15 = load i32, i32* %14, align 4, !dbg !973, !tbaa !742
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !975
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %16) #11, !dbg !976
  br label %144, !dbg !977

; <label>:17:                                     ; preds = %10, %9
  %18 = phi i32 [ 0, %9 ], [ %11, %10 ]
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !940, metadata !669), !dbg !964
  br label %19, !dbg !978

; <label>:19:                                     ; preds = %110, %17
  %20 = phi i64 [ 0, %17 ], [ %112, %110 ]
  %21 = phi i32 [ 0, %17 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !949, metadata !669), !dbg !961
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !945, metadata !669), !dbg !958
  %22 = call i64 @safe_read(i32 %18, i8* nonnull %5, i64 8192) #11, !dbg !979
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !953, metadata !669), !dbg !980
  switch i64 %22, label %29 [
    i64 0, label %113
    i64 -1, label %23
  ], !dbg !981

; <label>:23:                                     ; preds = %19
  %24 = tail call i32* @__errno_location() #17, !dbg !982
  %25 = load i32, i32* %24, align 4, !dbg !982, !tbaa !742
  %26 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !985
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %26) #11, !dbg !986
  br i1 %8, label %144, label %27, !dbg !987

; <label>:27:                                     ; preds = %23
  %28 = call i32 @close(i32 %18) #11, !dbg !988
  br label %144, !dbg !988

; <label>:29:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !951, metadata !669), !dbg !990
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !951, metadata !669), !dbg !990
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !949, metadata !669), !dbg !961
  %30 = icmp ult i64 %22, 8, !dbg !991
  br i1 %30, label %98, label %31, !dbg !991

; <label>:31:                                     ; preds = %29
  %32 = and i64 %22, -8, !dbg !991
  %33 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %21, i32 0, !dbg !991
  %34 = add i64 %32, -8, !dbg !991
  %35 = lshr exact i64 %34, 3, !dbg !991
  %36 = add nuw nsw i64 %35, 1, !dbg !991
  %37 = and i64 %36, 1, !dbg !991
  %38 = icmp eq i64 %35, 0, !dbg !991
  br i1 %38, label %70, label %39, !dbg !991

; <label>:39:                                     ; preds = %31
  %40 = sub nsw i64 %36, %37, !dbg !991
  br label %41, !dbg !991

; <label>:41:                                     ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %67, %41 ], !dbg !993
  %43 = phi <4 x i32> [ %33, %39 ], [ %65, %41 ]
  %44 = phi <4 x i32> [ zeroinitializer, %39 ], [ %66, %41 ]
  %45 = phi i64 [ %40, %39 ], [ %68, %41 ]
  %46 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %42, !dbg !995
  %47 = bitcast i8* %46 to <4 x i8>*, !dbg !995
  %48 = load <4 x i8>, <4 x i8>* %47, align 16, !dbg !995, !tbaa !881
  %49 = getelementptr i8, i8* %46, i64 4, !dbg !995
  %50 = bitcast i8* %49 to <4 x i8>*, !dbg !995
  %51 = load <4 x i8>, <4 x i8>* %50, align 4, !dbg !995, !tbaa !881
  %52 = zext <4 x i8> %48 to <4 x i32>, !dbg !995
  %53 = zext <4 x i8> %51 to <4 x i32>, !dbg !995
  %54 = add <4 x i32> %43, %52, !dbg !996
  %55 = add <4 x i32> %44, %53, !dbg !996
  %56 = or i64 %42, 8, !dbg !993
  %57 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %56, !dbg !995
  %58 = bitcast i8* %57 to <4 x i8>*, !dbg !995
  %59 = load <4 x i8>, <4 x i8>* %58, align 8, !dbg !995, !tbaa !881
  %60 = getelementptr i8, i8* %57, i64 4, !dbg !995
  %61 = bitcast i8* %60 to <4 x i8>*, !dbg !995
  %62 = load <4 x i8>, <4 x i8>* %61, align 4, !dbg !995, !tbaa !881
  %63 = zext <4 x i8> %59 to <4 x i32>, !dbg !995
  %64 = zext <4 x i8> %62 to <4 x i32>, !dbg !995
  %65 = add <4 x i32> %54, %63, !dbg !996
  %66 = add <4 x i32> %55, %64, !dbg !996
  %67 = add i64 %42, 16, !dbg !993
  %68 = add i64 %45, -2, !dbg !993
  %69 = icmp eq i64 %68, 0, !dbg !993
  br i1 %69, label %70, label %41, !dbg !993, !llvm.loop !997

; <label>:70:                                     ; preds = %41, %31
  %71 = phi <4 x i32> [ undef, %31 ], [ %65, %41 ]
  %72 = phi <4 x i32> [ undef, %31 ], [ %66, %41 ]
  %73 = phi i64 [ 0, %31 ], [ %67, %41 ]
  %74 = phi <4 x i32> [ %33, %31 ], [ %65, %41 ]
  %75 = phi <4 x i32> [ zeroinitializer, %31 ], [ %66, %41 ]
  %76 = icmp eq i64 %37, 0, !dbg !996
  br i1 %76, label %88, label %77, !dbg !996

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %73, !dbg !995
  %79 = getelementptr i8, i8* %78, i64 4, !dbg !995
  %80 = bitcast i8* %79 to <4 x i8>*, !dbg !995
  %81 = load <4 x i8>, <4 x i8>* %80, align 4, !dbg !995, !tbaa !881
  %82 = zext <4 x i8> %81 to <4 x i32>, !dbg !995
  %83 = add <4 x i32> %75, %82, !dbg !996
  %84 = bitcast i8* %78 to <4 x i8>*, !dbg !995
  %85 = load <4 x i8>, <4 x i8>* %84, align 8, !dbg !995, !tbaa !881
  %86 = zext <4 x i8> %85 to <4 x i32>, !dbg !995
  %87 = add <4 x i32> %74, %86, !dbg !996
  br label %88, !dbg !996

; <label>:88:                                     ; preds = %70, %77
  %89 = phi <4 x i32> [ %71, %70 ], [ %87, %77 ]
  %90 = phi <4 x i32> [ %72, %70 ], [ %83, %77 ]
  %91 = add <4 x i32> %90, %89, !dbg !996
  %92 = shufflevector <4 x i32> %91, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !996
  %93 = add <4 x i32> %91, %92, !dbg !996
  %94 = shufflevector <4 x i32> %93, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !996
  %95 = add <4 x i32> %93, %94, !dbg !996
  %96 = extractelement <4 x i32> %95, i32 0, !dbg !996
  %97 = icmp eq i64 %22, %32
  br i1 %97, label %110, label %98, !dbg !991

; <label>:98:                                     ; preds = %88, %29
  %99 = phi i64 [ 0, %29 ], [ %32, %88 ]
  %100 = phi i32 [ %21, %29 ], [ %96, %88 ]
  br label %101, !dbg !995

; <label>:101:                                    ; preds = %98, %101
  %102 = phi i64 [ %108, %101 ], [ %99, %98 ]
  %103 = phi i32 [ %107, %101 ], [ %100, %98 ]
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !949, metadata !669), !dbg !961
  call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !951, metadata !669), !dbg !990
  %104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %102, !dbg !995
  %105 = load i8, i8* %104, align 1, !dbg !995, !tbaa !881
  %106 = zext i8 %105 to i32, !dbg !995
  %107 = add i32 %103, %106, !dbg !996
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !949, metadata !669), !dbg !961
  %108 = add nuw i64 %102, 1, !dbg !993
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !951, metadata !669), !dbg !990
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !951, metadata !669), !dbg !990
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !949, metadata !669), !dbg !961
  %109 = icmp eq i64 %108, %22, !dbg !1001
  br i1 %109, label %110, label %101, !dbg !991, !llvm.loop !1002

; <label>:110:                                    ; preds = %101, %88
  %111 = phi i32 [ %96, %88 ], [ %107, %101 ]
  %112 = add i64 %22, %20, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !945, metadata !669), !dbg !958
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !949, metadata !669), !dbg !961
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !945, metadata !669), !dbg !958
  br label %19, !dbg !978, !llvm.loop !1005

; <label>:113:                                    ; preds = %19
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !949, metadata !669), !dbg !961
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !945, metadata !669), !dbg !958
  br i1 %8, label %121, label %114, !dbg !1007

; <label>:114:                                    ; preds = %113
  %115 = call i32 @close(i32 %18) #11, !dbg !1009
  %116 = icmp eq i32 %115, 0, !dbg !1010
  br i1 %116, label %121, label %117, !dbg !1011

; <label>:117:                                    ; preds = %114
  %118 = tail call i32* @__errno_location() #17, !dbg !1012
  %119 = load i32, i32* %118, align 4, !dbg !1012, !tbaa !742
  %120 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %120) #11, !dbg !1015
  br label %144, !dbg !1016

; <label>:121:                                    ; preds = %114, %113
  %122 = and i32 %21, 65535, !dbg !1017
  %123 = lshr i32 %21, 16, !dbg !1018
  %124 = add nuw nsw i32 %122, %123, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !947, metadata !669), !dbg !1020
  %125 = and i32 %124, 65535, !dbg !1021
  %126 = lshr i32 %124, 16, !dbg !1022
  %127 = add nuw nsw i32 %125, %126, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !948, metadata !669), !dbg !1024
  %128 = call i8* @human_readable(i64 %20, i8* nonnull %6, i32 0, i64 1, i64 512) #11, !dbg !1025
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %127, i8* %128) #11, !dbg !1025
  %130 = icmp eq i32 %1, 0, !dbg !1026
  br i1 %130, label %133, label %131, !dbg !1028

; <label>:131:                                    ; preds = %121
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #11, !dbg !1029
  br label %133, !dbg !1029

; <label>:133:                                    ; preds = %121, %131
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !925, metadata !669) #11, !dbg !1030
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1032, !tbaa !676
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 5, !dbg !1032
  %136 = load i8*, i8** %135, align 8, !dbg !1032, !tbaa !933
  %137 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 6, !dbg !1032
  %138 = load i8*, i8** %137, align 8, !dbg !1032, !tbaa !934
  %139 = icmp ult i8* %136, %138, !dbg !1032
  br i1 %139, label %142, label %140, !dbg !1032, !prof !880

; <label>:140:                                    ; preds = %133
  %141 = call i32 @__overflow(%struct._IO_FILE* %134, i32 10) #11, !dbg !1032
  br label %144, !dbg !1032

; <label>:142:                                    ; preds = %133
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1032
  store i8* %143, i8** %135, align 8, !dbg !1032, !tbaa !933
  store i8 10, i8* %136, align 1, !dbg !1032, !tbaa !881
  br label %144, !dbg !1032

; <label>:144:                                    ; preds = %23, %27, %142, %140, %117, %13
  %145 = phi i1 [ false, %117 ], [ false, %13 ], [ true, %140 ], [ true, %142 ], [ false, %27 ], [ false, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %6) #11, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #11, !dbg !1033
  ret i1 %145, !dbg !1033
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1034 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1036, metadata !669), !dbg !1037
  store i8* %0, i8** @file_name, align 8, !dbg !1038, !tbaa !676
  ret void, !dbg !1039
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1040 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1044, metadata !669), !dbg !1045
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1046, !tbaa !1047
  ret void, !dbg !1049
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1050 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1055, !tbaa !676
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1056
  %3 = icmp eq i32 %2, 0, !dbg !1057
  br i1 %3, label %21, label %4, !dbg !1058

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1059, !tbaa !1047, !range !1060
  %6 = icmp eq i8 %5, 0, !dbg !1059
  %7 = tail call i32* @__errno_location() #17, !dbg !1061
  br i1 %6, label %11, label %8, !dbg !1063

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1064, !tbaa !742
  %10 = icmp eq i32 %9, 32, !dbg !1065
  br i1 %10, label %21, label %11, !dbg !1066

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1067
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1052, metadata !669), !dbg !1068
  %13 = load i8*, i8** @file_name, align 8, !dbg !1069, !tbaa !676
  %14 = icmp eq i8* %13, null, !dbg !1069
  %15 = load i32, i32* %7, align 4, !tbaa !742
  br i1 %14, label %18, label %16, !dbg !1070

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1071
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1072
  br label %19, !dbg !1072

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #11, !dbg !1073
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1074, !tbaa !742
  tail call void @_exit(i32 %20) #15, !dbg !1075
  unreachable, !dbg !1075

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1076, !tbaa !676
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1078
  %24 = icmp eq i32 %23, 0, !dbg !1079
  br i1 %24, label %27, label %25, !dbg !1080

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1081, !tbaa !742
  tail call void @_exit(i32 %26) #15, !dbg !1082
  unreachable, !dbg !1082

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1083
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1084 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1092, metadata !669), !dbg !1098
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1093, metadata !669), !dbg !1099
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1094, metadata !669), !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1095, metadata !669), !dbg !1101
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1096, metadata !669), !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1104 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1148, metadata !669), !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1149, metadata !669), !dbg !1151
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1152
  br i1 %3, label %7, label %4, !dbg !1154

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1155
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1092, metadata !669) #11, !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1093, metadata !669) #11, !dbg !1158
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1094, metadata !669) #11, !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1095, metadata !669) #11, !dbg !1160
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1096, metadata !669) #11, !dbg !1161
  br label %7, !dbg !1162

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1163
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #6 !dbg !1164 {
  %6 = alloca [41 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [41 x i8]* %6, metadata !1252, metadata !669), !dbg !1272
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1168, metadata !669), !dbg !1275
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1169, metadata !669), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1170, metadata !669), !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1171, metadata !669), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1172, metadata !669), !dbg !1279
  %7 = and i32 %2, 3, !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1173, metadata !669), !dbg !1281
  %8 = and i32 %2, 32, !dbg !1282
  %9 = icmp ne i32 %8, 0, !dbg !1283
  %10 = select i1 %9, i32 1024, i32 1000, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1174, metadata !669), !dbg !1284
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !1178, metadata !669), !dbg !1286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1184, metadata !669), !dbg !1287
  %11 = tail call %struct.lconv* @localeconv() #11, !dbg !1288
  tail call void @llvm.dbg.value(metadata %struct.lconv* %11, i64 0, metadata !1187, metadata !669), !dbg !1289
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0, !dbg !1290
  %13 = load i8*, i8** %12, align 8, !dbg !1290, !tbaa !1291
  %14 = tail call i64 @strlen(i8* %13) #14, !dbg !1293
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1217, metadata !669), !dbg !1294
  %15 = add i64 %14, -1, !dbg !1295
  %16 = icmp ult i64 %15, 16, !dbg !1295
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1183, metadata !669), !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1184, metadata !669), !dbg !1287
  %17 = select i1 %16, i64 %14, i64 1, !dbg !1295
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1295
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1183, metadata !669), !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1184, metadata !669), !dbg !1287
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2, !dbg !1298
  %20 = load i8*, i8** %19, align 8, !dbg !1298, !tbaa !1299
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1185, metadata !669), !dbg !1300
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1, !dbg !1301
  %22 = load i8*, i8** %21, align 8, !dbg !1301, !tbaa !1303
  %23 = tail call i64 @strlen(i8* %22) #14, !dbg !1304
  %24 = icmp ult i64 %23, 17, !dbg !1305
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1186, metadata !669), !dbg !1306
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.40, i64 0, i64 0), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1186, metadata !669), !dbg !1306
  %26 = getelementptr inbounds i8, i8* %1, i64 647, !dbg !1308
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1180, metadata !669), !dbg !1309
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1179, metadata !669), !dbg !1310
  %27 = icmp ugt i64 %4, %3, !dbg !1311
  br i1 %27, label %36, label %28, !dbg !1312

; <label>:28:                                     ; preds = %5
  %29 = urem i64 %3, %4, !dbg !1313
  %30 = icmp eq i64 %29, 0, !dbg !1314
  br i1 %30, label %31, label %56, !dbg !1315

; <label>:31:                                     ; preds = %28
  %32 = udiv i64 %3, %4, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1218, metadata !669), !dbg !1317
  %33 = mul i64 %32, %0, !dbg !1318
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1175, metadata !669), !dbg !1319
  %34 = udiv i64 %33, %32, !dbg !1320
  %35 = icmp eq i64 %34, %0, !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1176, metadata !669), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1182, metadata !669), !dbg !1324
  br i1 %35, label %148, label %56

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i64 %3, 0, !dbg !1325
  br i1 %37, label %56, label %38, !dbg !1326

; <label>:38:                                     ; preds = %36
  %39 = urem i64 %4, %3, !dbg !1327
  %40 = icmp eq i64 %39, 0, !dbg !1328
  br i1 %40, label %41, label %56, !dbg !1329

; <label>:41:                                     ; preds = %38
  %42 = udiv i64 %4, %3, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1223, metadata !669), !dbg !1331
  %43 = urem i64 %0, %42, !dbg !1332
  %44 = mul i64 %43, 10, !dbg !1333
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1226, metadata !669), !dbg !1334
  %45 = urem i64 %44, %42, !dbg !1335
  %46 = shl i64 %45, 1, !dbg !1336
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !1227, metadata !669), !dbg !1337
  %47 = udiv i64 %0, %42, !dbg !1338
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !1175, metadata !669), !dbg !1319
  %48 = udiv i64 %44, %42, !dbg !1339
  %49 = trunc i64 %48 to i32, !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !1176, metadata !669), !dbg !1323
  %50 = icmp ult i64 %46, %42, !dbg !1341
  %51 = icmp ne i64 %46, 0, !dbg !1342
  %52 = zext i1 %51 to i32, !dbg !1342
  %53 = icmp ult i64 %42, %46, !dbg !1343
  %54 = select i1 %53, i32 3, i32 2, !dbg !1344
  %55 = select i1 %50, i32 %52, i32 %54, !dbg !1345
  br label %148, !dbg !1345

; <label>:56:                                     ; preds = %31, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80, !dbg !1346
  tail call void @llvm.dbg.value(metadata x86_fp80 %57, i64 0, metadata !1228, metadata !669), !dbg !1347
  %58 = uitofp i64 %0 to x86_fp80, !dbg !1348
  %59 = uitofp i64 %3 to x86_fp80, !dbg !1349
  %60 = fdiv x86_fp80 %59, %57, !dbg !1350
  %61 = fmul x86_fp80 %60, %58, !dbg !1351
  tail call void @llvm.dbg.value(metadata x86_fp80 %61, i64 0, metadata !1231, metadata !669), !dbg !1352
  %62 = and i32 %2, 16, !dbg !1353
  %63 = icmp eq i32 %62, 0, !dbg !1353
  br i1 %63, label %64, label %82, !dbg !1354

; <label>:64:                                     ; preds = %56
  %65 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1357, metadata !669), !dbg !1366
  tail call void @llvm.dbg.value(metadata x86_fp80 %61, i64 0, metadata !1362, metadata !669), !dbg !1368
  %66 = icmp ne i32 %7, 1, !dbg !1369
  %67 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1370
  %68 = and i1 %66, %67, !dbg !1371
  br i1 %68, label %69, label %78, !dbg !1371

; <label>:69:                                     ; preds = %64
  %70 = fptoui x86_fp80 %61 to i64, !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !1363, metadata !669), !dbg !1373
  %71 = icmp eq i32 %7, 0, !dbg !1374
  %72 = uitofp i64 %70 to x86_fp80, !dbg !1375
  %73 = fcmp une x86_fp80 %61, %72, !dbg !1376
  %74 = and i1 %71, %73, !dbg !1377
  %75 = zext i1 %74 to i64, !dbg !1377
  %76 = add i64 %75, %70, !dbg !1378
  %77 = uitofp i64 %76 to x86_fp80, !dbg !1379
  tail call void @llvm.dbg.value(metadata x86_fp80 %77, i64 0, metadata !1362, metadata !669), !dbg !1368
  br label %78, !dbg !1380

; <label>:78:                                     ; preds = %64, %69
  %79 = phi x86_fp80 [ %77, %69 ], [ %61, %64 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %79, i64 0, metadata !1362, metadata !669), !dbg !1368
  %80 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.41, i64 0, i64 0), x86_fp80 %79) #11, !dbg !1355
  %81 = tail call i64 @strlen(i8* %1) #14, !dbg !1381
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !1232, metadata !669), !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1233, metadata !669), !dbg !1383
  br label %139, !dbg !1384

; <label>:82:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %83 = uitofp i32 %10 to x86_fp80
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %84 = fmul x86_fp80 %83, %83, !dbg !1386
  %85 = fcmp ugt x86_fp80 %84, %61, !dbg !1387
  br i1 %85, label %86, label %384, !dbg !1388, !llvm.loop !1389

; <label>:86:                                     ; preds = %404, %400, %396, %392, %388, %384, %82, %408
  %87 = phi x86_fp80 [ %83, %82 ], [ %385, %384 ], [ %389, %388 ], [ %393, %392 ], [ %397, %396 ], [ %401, %400 ], [ %405, %404 ], [ %409, %408 ]
  %88 = phi i32 [ 1, %82 ], [ 2, %384 ], [ 3, %388 ], [ 4, %392 ], [ 5, %396 ], [ 6, %400 ], [ 7, %404 ], [ 8, %408 ]
  %89 = fdiv x86_fp80 %61, %87, !dbg !1392
  tail call void @llvm.dbg.value(metadata x86_fp80 %89, i64 0, metadata !1231, metadata !669), !dbg !1352
  %90 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true), !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1357, metadata !669), !dbg !1394
  tail call void @llvm.dbg.value(metadata x86_fp80 %89, i64 0, metadata !1362, metadata !669), !dbg !1396
  %91 = icmp ne i32 %7, 1, !dbg !1397
  %92 = fcmp olt x86_fp80 %89, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1398
  %93 = and i1 %91, %92, !dbg !1399
  br i1 %93, label %94, label %103, !dbg !1399

; <label>:94:                                     ; preds = %86
  %95 = fptoui x86_fp80 %89 to i64, !dbg !1400
  tail call void @llvm.dbg.value(metadata i64 %95, i64 0, metadata !1363, metadata !669), !dbg !1401
  %96 = icmp eq i32 %7, 0, !dbg !1402
  %97 = uitofp i64 %95 to x86_fp80, !dbg !1403
  %98 = fcmp une x86_fp80 %89, %97, !dbg !1404
  %99 = and i1 %96, %98, !dbg !1405
  %100 = zext i1 %99 to i64, !dbg !1405
  %101 = add i64 %100, %95, !dbg !1406
  %102 = uitofp i64 %101 to x86_fp80, !dbg !1407
  tail call void @llvm.dbg.value(metadata x86_fp80 %102, i64 0, metadata !1362, metadata !669), !dbg !1396
  br label %103, !dbg !1408

; <label>:103:                                    ; preds = %86, %94
  %104 = phi x86_fp80 [ %102, %94 ], [ %89, %86 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %104, i64 0, metadata !1362, metadata !669), !dbg !1396
  %105 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.42, i64 0, i64 0), x86_fp80 %104) #11, !dbg !1393
  %106 = tail call i64 @strlen(i8* %1) #14, !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !1232, metadata !669), !dbg !1382
  %107 = add i64 %17, 1, !dbg !1410
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1233, metadata !669), !dbg !1383
  %108 = zext i32 %8 to i64, !dbg !1411
  %109 = lshr exact i64 %108, 5, !dbg !1411
  %110 = xor i64 %109, 3, !dbg !1411
  %111 = add i64 %110, %17, !dbg !1413
  %112 = icmp ult i64 %111, %106, !dbg !1414
  br i1 %112, label %121, label %113, !dbg !1415

; <label>:113:                                    ; preds = %103
  %114 = and i32 %2, 8, !dbg !1416
  %115 = icmp eq i32 %114, 0, !dbg !1416
  br i1 %115, label %139, label %116, !dbg !1417

; <label>:116:                                    ; preds = %113
  %117 = add i64 %106, -1, !dbg !1418
  %118 = getelementptr inbounds i8, i8* %1, i64 %117, !dbg !1419
  %119 = load i8, i8* %118, align 1, !dbg !1419, !tbaa !881
  %120 = icmp eq i8 %119, 48, !dbg !1420
  br i1 %120, label %121, label %139, !dbg !1421

; <label>:121:                                    ; preds = %116, %103
  %122 = fmul x86_fp80 %89, 0xK4002A000000000000000, !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1357, metadata !669), !dbg !1424
  tail call void @llvm.dbg.value(metadata x86_fp80 %122, i64 0, metadata !1362, metadata !669), !dbg !1426
  %123 = fcmp olt x86_fp80 %122, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1427
  %124 = and i1 %91, %123, !dbg !1428
  br i1 %124, label %125, label %134, !dbg !1428

; <label>:125:                                    ; preds = %121
  %126 = fptoui x86_fp80 %122 to i64, !dbg !1429
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1363, metadata !669), !dbg !1430
  %127 = icmp eq i32 %7, 0, !dbg !1431
  %128 = uitofp i64 %126 to x86_fp80, !dbg !1432
  %129 = fcmp une x86_fp80 %122, %128, !dbg !1433
  %130 = and i1 %127, %129, !dbg !1434
  %131 = zext i1 %130 to i64, !dbg !1434
  %132 = add i64 %131, %126, !dbg !1435
  %133 = uitofp i64 %132 to x86_fp80, !dbg !1436
  tail call void @llvm.dbg.value(metadata x86_fp80 %133, i64 0, metadata !1362, metadata !669), !dbg !1426
  br label %134, !dbg !1437

; <label>:134:                                    ; preds = %121, %125
  %135 = phi x86_fp80 [ %133, %125 ], [ %122, %121 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %135, i64 0, metadata !1362, metadata !669), !dbg !1426
  %136 = fdiv x86_fp80 %135, 0xK4002A000000000000000, !dbg !1422
  %137 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.41, i64 0, i64 0), x86_fp80 %136) #11, !dbg !1422
  %138 = tail call i64 @strlen(i8* %1) #14, !dbg !1438
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !1232, metadata !669), !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1233, metadata !669), !dbg !1383
  br label %139, !dbg !1439

; <label>:139:                                    ; preds = %116, %134, %113, %78
  %140 = phi i64 [ %81, %78 ], [ %138, %134 ], [ %106, %116 ], [ %106, %113 ]
  %141 = phi i64 [ 0, %78 ], [ 0, %134 ], [ %107, %116 ], [ %107, %113 ]
  %142 = phi i32 [ -1, %78 ], [ %88, %134 ], [ %88, %116 ], [ %88, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !1233, metadata !669), !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !1232, metadata !669), !dbg !1382
  %143 = sub i64 0, %140, !dbg !1440
  %144 = getelementptr inbounds i8, i8* %26, i64 %143, !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %144, i8* %1, i64 %140, i32 1, i1 false), !dbg !1441
  %145 = getelementptr inbounds i8, i8* %144, i64 %140, !dbg !1442
  %146 = sub i64 0, %141, !dbg !1443
  %147 = getelementptr inbounds i8, i8* %145, i64 %146, !dbg !1443
  tail call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !1181, metadata !669), !dbg !1444
  br label %267, !dbg !1445

; <label>:148:                                    ; preds = %31, %41
  %149 = phi i32 [ 0, %31 ], [ %55, %41 ]
  %150 = phi i32 [ 0, %31 ], [ %49, %41 ]
  %151 = phi i64 [ %33, %31 ], [ %47, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1176, metadata !669), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !1182, metadata !669), !dbg !1324
  %152 = and i32 %2, 16, !dbg !1446
  %153 = icmp ne i32 %152, 0, !dbg !1446
  br i1 %153, label %154, label %221, !dbg !1447

; <label>:154:                                    ; preds = %148
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %155 = zext i32 %10 to i64, !dbg !1448
  %156 = icmp ult i64 %151, %155, !dbg !1449
  br i1 %156, label %221, label %157, !dbg !1450, !llvm.loop !1451

; <label>:157:                                    ; preds = %154
  br label %158, !dbg !1454

; <label>:158:                                    ; preds = %157, %183
  %159 = phi i32 [ %184, %183 ], [ %149, %157 ]
  %160 = phi i32 [ %185, %183 ], [ 0, %157 ]
  %161 = phi i32 [ %173, %183 ], [ %150, %157 ]
  %162 = phi i64 [ %172, %183 ], [ %151, %157 ]
  tail call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !1176, metadata !669), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %160, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !1182, metadata !669), !dbg !1324
  %163 = urem i64 %162, %155, !dbg !1454
  %164 = mul nuw nsw i64 %163, 10, !dbg !1455
  %165 = zext i32 %161 to i64, !dbg !1456
  %166 = add nuw nsw i64 %164, %165, !dbg !1457
  %167 = trunc i64 %166 to i32, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !1237, metadata !669), !dbg !1459
  %168 = urem i32 %167, %10, !dbg !1460
  %169 = shl nuw nsw i32 %168, 1, !dbg !1461
  %170 = ashr i32 %159, 1, !dbg !1462
  %171 = add nsw i32 %169, %170, !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !1244, metadata !669), !dbg !1464
  %172 = udiv i64 %162, %155, !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !1175, metadata !669), !dbg !1319
  %173 = udiv i32 %167, %10, !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !1176, metadata !669), !dbg !1323
  %174 = icmp ult i32 %171, %10, !dbg !1467
  br i1 %174, label %175, label %179, !dbg !1468

; <label>:175:                                    ; preds = %158
  %176 = sub nsw i32 0, %159, !dbg !1469
  %177 = icmp ne i32 %171, %176, !dbg !1469
  %178 = zext i1 %177 to i32, !dbg !1469
  br label %183, !dbg !1468

; <label>:179:                                    ; preds = %158
  %180 = add i32 %171, %159, !dbg !1470
  %181 = icmp ult i32 %10, %180, !dbg !1471
  %182 = select i1 %181, i32 3, i32 2, !dbg !1472
  br label %183, !dbg !1468

; <label>:183:                                    ; preds = %179, %175
  %184 = phi i32 [ %178, %175 ], [ %182, %179 ], !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !1182, metadata !669), !dbg !1324
  %185 = add nuw nsw i32 %160, 1, !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %185, i64 0, metadata !1177, metadata !669), !dbg !1285
  %186 = icmp uge i64 %172, %155, !dbg !1474
  %187 = icmp ult i32 %160, 7, !dbg !1475
  %188 = and i1 %187, %186, !dbg !1476
  br i1 %188, label %158, label %189, !dbg !1476, !llvm.loop !1451

; <label>:189:                                    ; preds = %183
  %190 = icmp ult i64 %172, 10, !dbg !1477
  br i1 %190, label %191, label %221, !dbg !1479

; <label>:191:                                    ; preds = %189
  %192 = icmp eq i32 %7, 1, !dbg !1480
  br i1 %192, label %193, label %197, !dbg !1483

; <label>:193:                                    ; preds = %191
  %194 = and i32 %173, 1, !dbg !1484
  %195 = add nuw nsw i32 %184, %194, !dbg !1485
  %196 = icmp ugt i32 %195, 2, !dbg !1486
  br i1 %196, label %201, label %207, !dbg !1487

; <label>:197:                                    ; preds = %191
  %198 = icmp eq i32 %7, 0, !dbg !1488
  %199 = icmp ne i32 %184, 0, !dbg !1489
  %200 = and i1 %198, %199, !dbg !1490
  br i1 %200, label %201, label %207, !dbg !1490

; <label>:201:                                    ; preds = %197, %193
  %202 = add nsw i32 %173, 1, !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !1176, metadata !669), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1182, metadata !669), !dbg !1324
  %203 = icmp eq i32 %202, 10, !dbg !1493
  %204 = add i64 %172, 1, !dbg !1495
  tail call void @llvm.dbg.value(metadata i64 %204, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1176, metadata !669), !dbg !1323
  br i1 %203, label %205, label %207

; <label>:205:                                    ; preds = %201
  tail call void @llvm.dbg.value(metadata i64 %204, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1182, metadata !669), !dbg !1324
  %206 = icmp ult i64 %204, 10, !dbg !1497
  br i1 %206, label %207, label %221, !dbg !1499

; <label>:207:                                    ; preds = %201, %197, %193, %205
  %208 = phi i64 [ %204, %205 ], [ %172, %193 ], [ %172, %197 ], [ %172, %201 ]
  %209 = phi i32 [ 0, %205 ], [ %173, %193 ], [ %173, %197 ], [ %202, %201 ]
  %210 = phi i32 [ 0, %205 ], [ %184, %193 ], [ %184, %197 ], [ 0, %201 ]
  %211 = icmp ne i32 %209, 0, !dbg !1500
  %212 = and i32 %2, 8, !dbg !1501
  %213 = icmp eq i32 %212, 0, !dbg !1501
  %214 = or i1 %213, %211, !dbg !1502
  br i1 %214, label %215, label %221, !dbg !1502

; <label>:215:                                    ; preds = %207
  %216 = add nsw i32 %209, 48, !dbg !1503
  %217 = trunc i32 %216 to i8, !dbg !1505
  %218 = getelementptr inbounds i8, i8* %1, i64 646, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !1179, metadata !669), !dbg !1310
  store i8 %217, i8* %218, align 1, !dbg !1507, !tbaa !881
  %219 = sub i64 0, %17, !dbg !1508
  %220 = getelementptr inbounds i8, i8* %218, i64 %219, !dbg !1508
  tail call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %18, i64 %17, i32 1, i1 false), !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1182, metadata !669), !dbg !1324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1176, metadata !669), !dbg !1323
  br label %221, !dbg !1510

; <label>:221:                                    ; preds = %207, %154, %205, %215, %189, %148
  %222 = phi i32 [ 0, %215 ], [ 0, %205 ], [ %184, %189 ], [ %149, %154 ], [ %149, %148 ], [ %210, %207 ]
  %223 = phi i8* [ %220, %215 ], [ %26, %205 ], [ %26, %189 ], [ %26, %154 ], [ %26, %148 ], [ %26, %207 ]
  %224 = phi i32 [ %185, %215 ], [ %185, %205 ], [ %185, %189 ], [ 0, %154 ], [ -1, %148 ], [ %185, %207 ]
  %225 = phi i32 [ 0, %215 ], [ 0, %205 ], [ %173, %189 ], [ %150, %154 ], [ %150, %148 ], [ 0, %207 ]
  %226 = phi i64 [ %208, %215 ], [ 10, %205 ], [ %172, %189 ], [ %151, %154 ], [ %151, %148 ], [ %208, %207 ]
  tail call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1176, metadata !669), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !1182, metadata !669), !dbg !1324
  %227 = trunc i32 %2 to i2, !dbg !1511
  switch i2 %227, label %254 [
    i2 1, label %228
    i2 0, label %236
  ], !dbg !1511

; <label>:228:                                    ; preds = %221
  %229 = sext i32 %222 to i64, !dbg !1512
  %230 = and i64 %226, 1, !dbg !1514
  %231 = sub nsw i64 0, %229, !dbg !1515
  %232 = icmp ne i64 %230, %231, !dbg !1515
  %233 = zext i1 %232 to i32, !dbg !1515
  %234 = add nsw i32 %225, %233, !dbg !1516
  %235 = icmp sgt i32 %234, 5, !dbg !1517
  br i1 %235, label %239, label %254, !dbg !1518

; <label>:236:                                    ; preds = %221
  %237 = add nsw i32 %225, %222, !dbg !1519
  %238 = icmp sgt i32 %237, 0, !dbg !1520
  br i1 %238, label %239, label %254, !dbg !1511

; <label>:239:                                    ; preds = %236, %228
  %240 = add i64 %226, 1, !dbg !1521
  tail call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1175, metadata !669), !dbg !1319
  %241 = zext i32 %10 to i64, !dbg !1523
  %242 = icmp eq i64 %240, %241, !dbg !1525
  %243 = and i1 %153, %242, !dbg !1526
  %244 = icmp slt i32 %224, 8, !dbg !1527
  %245 = and i1 %244, %243, !dbg !1526
  br i1 %245, label %246, label %254, !dbg !1526

; <label>:246:                                    ; preds = %239
  %247 = add nsw i32 %224, 1, !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !1177, metadata !669), !dbg !1285
  %248 = and i32 %2, 8, !dbg !1530
  %249 = icmp eq i32 %248, 0, !dbg !1530
  br i1 %249, label %250, label %254, !dbg !1532

; <label>:250:                                    ; preds = %246
  %251 = getelementptr inbounds i8, i8* %223, i64 -1, !dbg !1533
  tail call void @llvm.dbg.value(metadata i8* %251, i64 0, metadata !1179, metadata !669), !dbg !1310
  store i8 48, i8* %251, align 1, !dbg !1535, !tbaa !881
  %252 = sub i64 0, %17, !dbg !1536
  %253 = getelementptr inbounds i8, i8* %251, i64 %252, !dbg !1536
  tail call void @llvm.dbg.value(metadata i8* %253, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %253, i8* %18, i64 %17, i32 1, i1 false), !dbg !1537
  br label %254, !dbg !1538

; <label>:254:                                    ; preds = %250, %246, %221, %239, %236, %228
  %255 = phi i8* [ %223, %239 ], [ %223, %228 ], [ %223, %236 ], [ %223, %221 ], [ %223, %246 ], [ %253, %250 ]
  %256 = phi i32 [ %224, %239 ], [ %224, %228 ], [ %224, %236 ], [ %224, %221 ], [ %247, %246 ], [ %247, %250 ]
  %257 = phi i64 [ %240, %239 ], [ %226, %228 ], [ %226, %236 ], [ %226, %221 ], [ 1, %246 ], [ 1, %250 ]
  tail call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i8* %255, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %255, i64 0, metadata !1181, metadata !669), !dbg !1444
  br label %258, !dbg !1539, !llvm.loop !1540

; <label>:258:                                    ; preds = %258, %254
  %259 = phi i8* [ %255, %254 ], [ %264, %258 ]
  %260 = phi i64 [ %257, %254 ], [ %265, %258 ]
  tail call void @llvm.dbg.value(metadata i64 %260, i64 0, metadata !1175, metadata !669), !dbg !1319
  tail call void @llvm.dbg.value(metadata i8* %259, i64 0, metadata !1179, metadata !669), !dbg !1310
  %261 = urem i64 %260, 10, !dbg !1542
  %262 = trunc i64 %261 to i8, !dbg !1543
  %263 = or i8 %262, 48, !dbg !1544
  %264 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !1545
  tail call void @llvm.dbg.value(metadata i8* %264, i64 0, metadata !1179, metadata !669), !dbg !1310
  store i8 %263, i8* %264, align 1, !dbg !1546, !tbaa !881
  %265 = udiv i64 %260, 10, !dbg !1547
  tail call void @llvm.dbg.value(metadata i64 %265, i64 0, metadata !1175, metadata !669), !dbg !1319
  %266 = icmp ugt i64 %260, 9, !dbg !1548
  br i1 %266, label %258, label %267, !dbg !1549, !llvm.loop !1540

; <label>:267:                                    ; preds = %258, %139
  %268 = phi i8* [ %147, %139 ], [ %255, %258 ]
  %269 = phi i8* [ %144, %139 ], [ %264, %258 ]
  %270 = phi i32 [ %142, %139 ], [ %256, %258 ]
  tail call void @llvm.dbg.value(metadata i32 %270, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i8* %269, i64 0, metadata !1179, metadata !669), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !1181, metadata !669), !dbg !1444
  %271 = and i32 %2, 4, !dbg !1550
  %272 = icmp eq i32 %271, 0, !dbg !1550
  br i1 %272, label %318, label %273, !dbg !1551

; <label>:273:                                    ; preds = %267
  %274 = ptrtoint i8* %268 to i64, !dbg !1552
  %275 = ptrtoint i8* %269 to i64, !dbg !1552
  %276 = sub i64 %274, %275, !dbg !1552
  tail call void @llvm.dbg.value(metadata i8* %269, i64 0, metadata !1257, metadata !669) #11, !dbg !1553
  tail call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1258, metadata !669) #11, !dbg !1554
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1260, metadata !669) #11, !dbg !1556
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %277 = tail call i64 @strlen(i8* %25) #14, !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %277, i64 0, metadata !1263, metadata !669) #11, !dbg !1559
  tail call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1264, metadata !669) #11, !dbg !1560
  %278 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %278) #11, !dbg !1561
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %278, i8* %269, i64 %276, i32 1, i1 false) #11, !dbg !1562
  tail call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  tail call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1264, metadata !669) #11, !dbg !1560
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  tail call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  %279 = load i8, i8* %20, align 1, !dbg !1564, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8 %279, i64 0, metadata !1265, metadata !669) #11, !dbg !1565
  %280 = icmp eq i8 %279, 0, !dbg !1566
  %281 = icmp ult i8 %279, 127, !dbg !1568
  %282 = zext i8 %279 to i64, !dbg !1570
  %283 = select i1 %281, i64 %282, i64 %276, !dbg !1571
  tail call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %284 = select i1 %280, i64 -1, i64 %283, !dbg !1572
  tail call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %285 = icmp ugt i64 %284, %276, !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %286 = select i1 %285, i64 %276, i64 %284, !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %287 = sub i64 0, %286, !dbg !1576
  %288 = getelementptr inbounds i8, i8* %268, i64 %287, !dbg !1576
  tail call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  %289 = sub i64 %276, %286, !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %289, i64 0, metadata !1264, metadata !669) #11, !dbg !1560
  %290 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %289, !dbg !1578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %290, i64 %286, i32 1, i1 false) #11, !dbg !1579
  %291 = icmp eq i64 %289, 0, !dbg !1580
  br i1 %291, label %316, label %292, !dbg !1582

; <label>:292:                                    ; preds = %273
  %293 = sub i64 0, %277
  br label %294, !dbg !1582

; <label>:294:                                    ; preds = %294, %292
  %295 = phi i64 [ %289, %292 ], [ %313, %294 ]
  %296 = phi i8* [ %288, %292 ], [ %312, %294 ]
  %297 = phi i64 [ %286, %292 ], [ %310, %294 ]
  %298 = phi i1 [ %280, %292 ], [ %304, %294 ]
  %299 = phi i8* [ %20, %292 ], [ %301, %294 ]
  tail call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  %300 = getelementptr inbounds i8, i8* %299, i64 1, !dbg !1583
  %301 = select i1 %298, i8* %299, i8* %300, !dbg !1572
  %302 = getelementptr inbounds i8, i8* %296, i64 %293, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %302, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %302, i8* %25, i64 %277, i32 1, i1 false) #11, !dbg !1585
  tail call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  tail call void @llvm.dbg.value(metadata i64 %295, i64 0, metadata !1264, metadata !669) #11, !dbg !1560
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  tail call void @llvm.dbg.value(metadata i8* %302, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  %303 = load i8, i8* %301, align 1, !dbg !1564, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8 %303, i64 0, metadata !1265, metadata !669) #11, !dbg !1565
  %304 = icmp eq i8 %303, 0, !dbg !1566
  %305 = icmp ult i8 %303, 127, !dbg !1568
  %306 = zext i8 %303 to i64, !dbg !1570
  %307 = select i1 %305, i64 %306, i64 %295, !dbg !1571
  tail call void @llvm.dbg.value(metadata i64 %307, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  tail call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  %308 = select i1 %304, i64 %297, i64 %307, !dbg !1572
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1259, metadata !669) #11, !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %308, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %309 = icmp ult i64 %295, %308, !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %295, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %310 = select i1 %309, i64 %295, i64 %308, !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1262, metadata !669) #11, !dbg !1557
  %311 = sub i64 0, %310, !dbg !1576
  %312 = getelementptr inbounds i8, i8* %302, i64 %311, !dbg !1576
  tail call void @llvm.dbg.value(metadata i8* %312, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  %313 = sub i64 %295, %310, !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1264, metadata !669) #11, !dbg !1560
  %314 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %313, !dbg !1578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %312, i8* %314, i64 %310, i32 1, i1 false) #11, !dbg !1579
  %315 = icmp eq i64 %313, 0, !dbg !1580
  br i1 %315, label %316, label %294, !dbg !1582, !llvm.loop !1586

; <label>:316:                                    ; preds = %294, %273
  %317 = phi i8* [ %288, %273 ], [ %312, %294 ]
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1261, metadata !669) #11, !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %278) #11, !dbg !1589
  tail call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1179, metadata !669), !dbg !1310
  br label %318, !dbg !1590

; <label>:318:                                    ; preds = %267, %316
  %319 = phi i8* [ %317, %316 ], [ %269, %267 ]
  tail call void @llvm.dbg.value(metadata i8* %319, i64 0, metadata !1179, metadata !669), !dbg !1310
  %320 = trunc i32 %2 to i8, !dbg !1591
  %321 = icmp slt i8 %320, 0, !dbg !1591
  br i1 %321, label %322, label %363, !dbg !1592

; <label>:322:                                    ; preds = %318
  %323 = icmp slt i32 %270, 0, !dbg !1593
  br i1 %323, label %324, label %329, !dbg !1594

; <label>:324:                                    ; preds = %322
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %325 = icmp ugt i64 %4, 1, !dbg !1596
  br i1 %325, label %326, label %329, !dbg !1599

; <label>:326:                                    ; preds = %324
  %327 = zext i32 %10 to i64
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %328 = icmp ult i64 %327, %4, !dbg !1596
  br i1 %328, label %365, label %329, !dbg !1599, !llvm.loop !1600

; <label>:329:                                    ; preds = %380, %326, %365, %368, %371, %374, %377, %324, %322
  %330 = phi i32 [ %270, %322 ], [ 0, %324 ], [ 1, %326 ], [ 2, %365 ], [ 3, %368 ], [ 4, %371 ], [ 5, %374 ], [ 6, %377 ], [ %383, %380 ]
  tail call void @llvm.dbg.value(metadata i32 %330, i64 0, metadata !1177, metadata !669), !dbg !1285
  %331 = and i32 %2, 256, !dbg !1602
  %332 = or i32 %330, %331, !dbg !1604
  %333 = icmp eq i32 %332, 0, !dbg !1604
  %334 = and i32 %2, 64, !dbg !1605
  %335 = icmp eq i32 %334, 0, !dbg !1605
  %336 = or i1 %335, %333, !dbg !1606
  br i1 %336, label %339, label %337, !dbg !1606

; <label>:337:                                    ; preds = %329
  %338 = getelementptr inbounds i8, i8* %1, i64 648, !dbg !1607
  tail call void @llvm.dbg.value(metadata i8* %338, i64 0, metadata !1180, metadata !669), !dbg !1309
  store i8 32, i8* %26, align 1, !dbg !1608, !tbaa !881
  br label %339, !dbg !1609

; <label>:339:                                    ; preds = %329, %337
  %340 = phi i8* [ %338, %337 ], [ %26, %329 ]
  tail call void @llvm.dbg.value(metadata i8* %340, i64 0, metadata !1180, metadata !669), !dbg !1309
  %341 = icmp ne i32 %330, 0, !dbg !1610
  br i1 %341, label %342, label %353, !dbg !1612

; <label>:342:                                    ; preds = %339
  %343 = icmp eq i32 %8, 0, !dbg !1613
  %344 = icmp eq i32 %330, 1, !dbg !1614
  %345 = and i1 %343, %344, !dbg !1615
  br i1 %345, label %350, label %346, !dbg !1615

; <label>:346:                                    ; preds = %342
  %347 = sext i32 %330 to i64, !dbg !1616
  %348 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %347, !dbg !1616
  %349 = load i8, i8* %348, align 1, !dbg !1616, !tbaa !881
  br label %350, !dbg !1617

; <label>:350:                                    ; preds = %342, %346
  %351 = phi i8 [ %349, %346 ], [ 107, %342 ]
  %352 = getelementptr inbounds i8, i8* %340, i64 1, !dbg !1618
  tail call void @llvm.dbg.value(metadata i8* %352, i64 0, metadata !1180, metadata !669), !dbg !1309
  store i8 %351, i8* %340, align 1, !dbg !1619, !tbaa !881
  br label %353, !dbg !1620

; <label>:353:                                    ; preds = %350, %339
  %354 = phi i8* [ %352, %350 ], [ %340, %339 ]
  tail call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1180, metadata !669), !dbg !1309
  %355 = icmp eq i32 %331, 0, !dbg !1621
  br i1 %355, label %363, label %356, !dbg !1623

; <label>:356:                                    ; preds = %353
  %357 = and i1 %9, %341, !dbg !1624
  br i1 %357, label %358, label %360, !dbg !1624

; <label>:358:                                    ; preds = %356
  %359 = getelementptr inbounds i8, i8* %354, i64 1, !dbg !1627
  tail call void @llvm.dbg.value(metadata i8* %359, i64 0, metadata !1180, metadata !669), !dbg !1309
  store i8 105, i8* %354, align 1, !dbg !1628, !tbaa !881
  br label %360, !dbg !1629

; <label>:360:                                    ; preds = %358, %356
  %361 = phi i8* [ %359, %358 ], [ %354, %356 ]
  tail call void @llvm.dbg.value(metadata i8* %361, i64 0, metadata !1180, metadata !669), !dbg !1309
  %362 = getelementptr inbounds i8, i8* %361, i64 1, !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !1180, metadata !669), !dbg !1309
  store i8 66, i8* %361, align 1, !dbg !1631, !tbaa !881
  br label %363, !dbg !1632

; <label>:363:                                    ; preds = %353, %360, %318
  %364 = phi i8* [ %362, %360 ], [ %354, %353 ], [ %26, %318 ]
  tail call void @llvm.dbg.value(metadata i8* %364, i64 0, metadata !1180, metadata !669), !dbg !1309
  store i8 0, i8* %364, align 1, !dbg !1633, !tbaa !881
  ret i8* %319, !dbg !1634

; <label>:365:                                    ; preds = %326
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %366 = mul nuw nsw i64 %327, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %367 = icmp ult i64 %366, %4, !dbg !1596
  br i1 %367, label %368, label %329, !dbg !1599, !llvm.loop !1600

; <label>:368:                                    ; preds = %365
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %369 = mul nuw nsw i64 %366, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %370 = icmp ult i64 %369, %4, !dbg !1596
  br i1 %370, label %371, label %329, !dbg !1599, !llvm.loop !1600

; <label>:371:                                    ; preds = %368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %372 = mul nuw nsw i64 %369, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %373 = icmp ult i64 %372, %4, !dbg !1596
  br i1 %373, label %374, label %329, !dbg !1599, !llvm.loop !1600

; <label>:374:                                    ; preds = %371
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %375 = mul nuw nsw i64 %372, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %376 = icmp ult i64 %375, %4, !dbg !1596
  br i1 %376, label %377, label %329, !dbg !1599, !llvm.loop !1600

; <label>:377:                                    ; preds = %374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %378 = mul i64 %375, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %379 = icmp ult i64 %378, %4, !dbg !1596
  br i1 %379, label %380, label %329, !dbg !1599, !llvm.loop !1600

; <label>:380:                                    ; preds = %377
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %381 = mul i64 %378, %327, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %327, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %382 = icmp ult i64 %381, %4, !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1247, metadata !669), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %383 = select i1 %382, i32 8, i32 7, !dbg !1599
  br label %329, !dbg !1599

; <label>:384:                                    ; preds = %82
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %385 = fmul x86_fp80 %83, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %386 = fmul x86_fp80 %385, %83, !dbg !1386
  %387 = fcmp ugt x86_fp80 %386, %61, !dbg !1387
  br i1 %387, label %86, label %388, !dbg !1388, !llvm.loop !1389

; <label>:388:                                    ; preds = %384
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %389 = fmul x86_fp80 %385, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %390 = fmul x86_fp80 %389, %83, !dbg !1386
  %391 = fcmp ugt x86_fp80 %390, %61, !dbg !1387
  br i1 %391, label %86, label %392, !dbg !1388, !llvm.loop !1389

; <label>:392:                                    ; preds = %388
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %393 = fmul x86_fp80 %389, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %394 = fmul x86_fp80 %393, %83, !dbg !1386
  %395 = fcmp ugt x86_fp80 %394, %61, !dbg !1387
  br i1 %395, label %86, label %396, !dbg !1388, !llvm.loop !1389

; <label>:396:                                    ; preds = %392
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %397 = fmul x86_fp80 %393, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %398 = fmul x86_fp80 %397, %83, !dbg !1386
  %399 = fcmp ugt x86_fp80 %398, %61, !dbg !1387
  br i1 %399, label %86, label %400, !dbg !1388, !llvm.loop !1389

; <label>:400:                                    ; preds = %396
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %401 = fmul x86_fp80 %397, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %402 = fmul x86_fp80 %401, %83, !dbg !1386
  %403 = fcmp ugt x86_fp80 %402, %61, !dbg !1387
  br i1 %403, label %86, label %404, !dbg !1388, !llvm.loop !1389

; <label>:404:                                    ; preds = %400
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %405 = fmul x86_fp80 %401, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  %406 = fmul x86_fp80 %405, %83, !dbg !1386
  %407 = fcmp ugt x86_fp80 %406, %61, !dbg !1387
  br i1 %407, label %86, label %408, !dbg !1388, !llvm.loop !1389

; <label>:408:                                    ; preds = %404
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1177, metadata !669), !dbg !1285
  %409 = fmul x86_fp80 %405, %83, !dbg !1636
  tail call void @llvm.dbg.value(metadata x86_fp80 %83, i64 0, metadata !1234, metadata !669), !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1177, metadata !669), !dbg !1285
  br label %86
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 !dbg !1638 {
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1643, metadata !669), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !1644, metadata !669), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1645, metadata !669), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1656, metadata !669) #11, !dbg !1668
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !1657, metadata !669) #11, !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  %5 = icmp eq i8* %0, null, !dbg !1671
  br i1 %5, label %6, label %16, !dbg !1672

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.43, i64 0, i64 0)) #11, !dbg !1673
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %8 = icmp eq i8* %7, null, !dbg !1674
  br i1 %8, label %9, label %16, !dbg !1675

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.44, i64 0, i64 0)) #11, !dbg !1676
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %11 = icmp eq i8* %10, null, !dbg !1677
  br i1 %11, label %12, label %16, !dbg !1678

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.45, i64 0, i64 0)) #11, !dbg !1679
  %14 = icmp eq i8* %13, null, !dbg !1679
  %15 = select i1 %14, i64 1024, i64 512, !dbg !1679
  br label %66, !dbg !1684

; <label>:16:                                     ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %18 = load i8, i8* %17, align 1, !dbg !1685, !tbaa !881
  %19 = icmp eq i8 %18, 39, !dbg !1687
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1688
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %21 = select i1 %19, i8* %20, i8* %17, !dbg !1690
  %22 = select i1 %19, i32 4, i32 0, !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #14, !dbg !1691
  %24 = trunc i64 %23 to i32, !dbg !1691
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !1658, metadata !669) #11, !dbg !1692
  %25 = icmp sgt i32 %24, -1, !dbg !1693
  br i1 %25, label %26, label %32, !dbg !1694

; <label>:26:                                     ; preds = %16
  %27 = shl i64 %23, 32, !dbg !1695
  %28 = ashr exact i64 %27, 32, !dbg !1695
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28, !dbg !1695
  %30 = load i32, i32* %29, align 4, !dbg !1695, !tbaa !742
  %31 = or i32 %30, %22, !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  br label %66, !dbg !1698

; <label>:32:                                     ; preds = %16
  %33 = bitcast i8** %4 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1699
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1660, metadata !669) #11, !dbg !1700
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.46, i64 0, i64 0)) #11, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !1665, metadata !669) #11, !dbg !1702
  %35 = icmp eq i32 %34, 0, !dbg !1703
  br i1 %35, label %36, label %65, !dbg !1705

; <label>:36:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %37 = load i8, i8* %21, align 1, !dbg !1706, !tbaa !881
  %38 = add i8 %37, -48, !dbg !1709
  %39 = icmp ult i8 %38, 10, !dbg !1709
  br i1 %39, label %63, label %40, !dbg !1710

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %4, align 8, !tbaa !676
  br label %46, !dbg !1710

; <label>:42:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  %43 = load i8, i8* %49, align 1, !dbg !1706, !tbaa !881
  %44 = add i8 %43, -48, !dbg !1709
  %45 = icmp ult i8 %44, 10, !dbg !1709
  br i1 %45, label %63, label %46, !dbg !1710, !llvm.loop !1711

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i8* [ %21, %40 ], [ %49, %42 ]
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1660, metadata !669) #11, !dbg !1700
  %48 = icmp eq i8* %47, %41, !dbg !1714
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1651, metadata !669) #11, !dbg !1666
  br i1 %48, label %50, label %42, !dbg !1717

; <label>:50:                                     ; preds = %46
  %51 = or i32 %22, 128, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  %52 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !1720
  %53 = load i8, i8* %52, align 1, !dbg !1720, !tbaa !881
  %54 = icmp eq i8 %53, 66, !dbg !1722
  %55 = or i32 %22, 384, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  %56 = select i1 %54, i32 %55, i32 %51, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1660, metadata !669) #11, !dbg !1700
  br i1 %54, label %57, label %61, !dbg !1725

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %41, i64 -2, !dbg !1727
  %59 = load i8, i8* %58, align 1, !dbg !1727, !tbaa !881
  %60 = icmp eq i8 %59, 105, !dbg !1728
  br i1 %60, label %61, label %63, !dbg !1729

; <label>:61:                                     ; preds = %57, %50
  %62 = or i32 %56, 32, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  br label %63, !dbg !1731

; <label>:63:                                     ; preds = %42, %61, %57, %36
  %64 = phi i32 [ %55, %57 ], [ %62, %61 ], [ %22, %36 ], [ %22, %42 ]
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1732
  br label %69

; <label>:65:                                     ; preds = %32
  store i32 0, i32* %1, align 4, !dbg !1733, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1732
  br label %71

; <label>:66:                                     ; preds = %26, %12
  %67 = phi i64 [ 1, %26 ], [ %15, %12 ]
  %68 = phi i32 [ %31, %26 ], [ 0, %12 ]
  store i64 %67, i64* %2, align 8, !tbaa !1735
  br label %69, !dbg !1736

; <label>:69:                                     ; preds = %66, %63
  %70 = phi i32 [ %68, %66 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !1659, metadata !669) #11, !dbg !1670
  store i32 %70, i32* %1, align 4, !dbg !1736, !tbaa !742
  br label %71, !dbg !1737

; <label>:71:                                     ; preds = %65, %69
  %72 = phi i32 [ 0, %69 ], [ %34, %65 ]
  call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1646, metadata !669), !dbg !1738
  %73 = load i64, i64* %2, align 8, !dbg !1739, !tbaa !1735
  %74 = icmp eq i64 %73, 0, !dbg !1741
  br i1 %74, label %75, label %79, !dbg !1742

; <label>:75:                                     ; preds = %71
  %76 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.45, i64 0, i64 0)) #11, !dbg !1743
  %77 = icmp eq i8* %76, null, !dbg !1743
  %78 = select i1 %77, i64 1024, i64 512, !dbg !1743
  store i64 %78, i64* %2, align 8, !dbg !1746, !tbaa !1735
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1646, metadata !669), !dbg !1738
  br label %79, !dbg !1747

; <label>:79:                                     ; preds = %75, %71
  %80 = phi i32 [ 4, %75 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !1646, metadata !669), !dbg !1738
  ret i32 %80, !dbg !1748
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1749 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1751, metadata !669), !dbg !1754
  %2 = icmp eq i8* %0, null, !dbg !1755
  br i1 %2, label %3, label %6, !dbg !1757

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1758, !tbaa !676
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1760
  tail call void @abort() #15, !dbg !1761
  unreachable, !dbg !1761

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1762
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1752, metadata !669), !dbg !1763
  %8 = icmp eq i8* %7, null, !dbg !1764
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1765
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1753, metadata !669), !dbg !1767
  %11 = ptrtoint i8* %10 to i64, !dbg !1768
  %12 = ptrtoint i8* %0 to i64, !dbg !1768
  %13 = sub i64 %11, %12, !dbg !1768
  %14 = icmp sgt i64 %13, 6, !dbg !1770
  br i1 %14, label %15, label %24, !dbg !1771

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1772
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #14, !dbg !1773
  %18 = icmp eq i32 %17, 0, !dbg !1774
  br i1 %18, label %19, label %24, !dbg !1775

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1751, metadata !669), !dbg !1754
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #14, !dbg !1776
  %21 = icmp eq i32 %20, 0, !dbg !1779
  br i1 %21, label %22, label %24, !dbg !1780

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1781
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1751, metadata !669), !dbg !1754
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1783, !tbaa !676
  br label %24, !dbg !1784

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1751, metadata !669), !dbg !1754
  store i8* %25, i8** @program_name, align 8, !dbg !1785, !tbaa !676
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1786, !tbaa !676
  ret void, !dbg !1787
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1788 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1793, metadata !669), !dbg !1796
  %2 = tail call i32* @__errno_location() #17, !dbg !1797
  %3 = load i32, i32* %2, align 4, !dbg !1797, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1794, metadata !669), !dbg !1798
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1799
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1799
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1799
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1800
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1795, metadata !669), !dbg !1801
  store i32 %3, i32* %2, align 4, !dbg !1802, !tbaa !742
  ret %struct.quoting_options* %8, !dbg !1803
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1804 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1810, metadata !669), !dbg !1811
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1812
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1812
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1813
  %5 = load i32, i32* %4, align 8, !dbg !1813, !tbaa !1814
  ret i32 %5, !dbg !1816
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1817 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1821, metadata !669), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1822, metadata !669), !dbg !1824
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1825
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1825
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1826
  store i32 %1, i32* %5, align 8, !dbg !1827, !tbaa !1814
  ret void, !dbg !1828
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1829 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1833, metadata !669), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1834, metadata !669), !dbg !1842
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1835, metadata !669), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1836, metadata !669), !dbg !1844
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1845
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1845
  %6 = lshr i8 %1, 5, !dbg !1846
  %7 = zext i8 %6 to i64, !dbg !1846
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1847
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1837, metadata !669), !dbg !1848
  %9 = and i8 %1, 31, !dbg !1849
  %10 = zext i8 %9 to i32, !dbg !1850
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1839, metadata !669), !dbg !1851
  %11 = load i32, i32* %8, align 4, !dbg !1852, !tbaa !742
  %12 = lshr i32 %11, %10, !dbg !1853
  %13 = and i32 %12, 1, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1840, metadata !669), !dbg !1855
  %14 = and i32 %2, 1, !dbg !1856
  %15 = xor i32 %13, %14, !dbg !1857
  %16 = shl i32 %15, %10, !dbg !1858
  %17 = xor i32 %16, %11, !dbg !1859
  store i32 %17, i32* %8, align 4, !dbg !1859, !tbaa !742
  ret i32 %13, !dbg !1860
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1861 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1865, metadata !669), !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1866, metadata !669), !dbg !1869
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1865, metadata !669), !dbg !1868
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1865, metadata !669), !dbg !1868
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1873
  %6 = load i32, i32* %5, align 4, !dbg !1873, !tbaa !1874
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1867, metadata !669), !dbg !1875
  store i32 %1, i32* %5, align 4, !dbg !1876, !tbaa !1874
  ret i32 %6, !dbg !1877
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1878 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1882, metadata !669), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1883, metadata !669), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1884, metadata !669), !dbg !1887
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1888
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1882, metadata !669), !dbg !1885
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1882, metadata !669), !dbg !1885
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1891
  store i32 10, i32* %6, align 8, !dbg !1892, !tbaa !1814
  %7 = icmp ne i8* %1, null, !dbg !1893
  %8 = icmp ne i8* %2, null, !dbg !1895
  %9 = and i1 %7, %8, !dbg !1896
  br i1 %9, label %11, label %10, !dbg !1896

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1897
  unreachable, !dbg !1897

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1898
  store i8* %1, i8** %12, align 8, !dbg !1899, !tbaa !1900
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1901
  store i8* %2, i8** %13, align 8, !dbg !1902, !tbaa !1903
  ret void, !dbg !1904
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1905 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1909, metadata !669), !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1910, metadata !669), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1911, metadata !669), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1912, metadata !669), !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1913, metadata !669), !dbg !1921
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1922
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1914, metadata !669), !dbg !1923
  %8 = tail call i32* @__errno_location() #17, !dbg !1924
  %9 = load i32, i32* %8, align 4, !dbg !1924, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1915, metadata !669), !dbg !1925
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1926
  %11 = load i32, i32* %10, align 8, !dbg !1926, !tbaa !1814
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1927
  %13 = load i32, i32* %12, align 4, !dbg !1927, !tbaa !1874
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1928
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1929
  %16 = load i8*, i8** %15, align 8, !dbg !1929, !tbaa !1900
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1930
  %18 = load i8*, i8** %17, align 8, !dbg !1930, !tbaa !1903
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1916, metadata !669), !dbg !1932
  store i32 %9, i32* %8, align 4, !dbg !1933, !tbaa !742
  ret i64 %19, !dbg !1934
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1935 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1941, metadata !669), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1942, metadata !669), !dbg !2004
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1943, metadata !669), !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1944, metadata !669), !dbg !2006
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1945, metadata !669), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1946, metadata !669), !dbg !2008
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1947, metadata !669), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1948, metadata !669), !dbg !2010
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1949, metadata !669), !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1951, metadata !669), !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1952, metadata !669), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1953, metadata !669), !dbg !2014
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1954, metadata !669), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1955, metadata !669), !dbg !2016
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2017
  %14 = icmp eq i64 %13, 1, !dbg !2018
  %15 = lshr i32 %5, 1, !dbg !2019
  %16 = trunc i32 %15 to i8, !dbg !2019
  %17 = and i8 %16, 1, !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1957, metadata !669), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !669), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !669), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !669), !dbg !2022
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2023

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1960, metadata !669), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1955, metadata !669), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1954, metadata !669), !dbg !2015
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1949, metadata !669), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1948, metadata !669), !dbg !2010
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1945, metadata !669), !dbg !2007
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
  ], !dbg !2024

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1945, metadata !669), !dbg !2007
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1945, metadata !669), !dbg !2007
  br label %94, !dbg !2025

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1945, metadata !669), !dbg !2007
  %43 = and i8 %36, 1, !dbg !2027
  %44 = icmp eq i8 %43, 0, !dbg !2027
  br i1 %44, label %45, label %94, !dbg !2025

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2029
  br i1 %46, label %94, label %47, !dbg !2032

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2029, !tbaa !881
  br label %94, !dbg !2029

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !2033
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1948, metadata !669), !dbg !2010
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !2037
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1949, metadata !669), !dbg !2011
  br label %51, !dbg !2038

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1949, metadata !669), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1948, metadata !669), !dbg !2010
  %54 = and i8 %36, 1, !dbg !2039
  %55 = icmp eq i8 %54, 0, !dbg !2039
  br i1 %55, label %56, label %72, !dbg !2041

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1951, metadata !669), !dbg !2012
  %57 = load i8, i8* %52, align 1, !dbg !2042, !tbaa !881
  %58 = icmp eq i8 %57, 0, !dbg !2045
  br i1 %58, label %72, label %59, !dbg !2045

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2046

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1953, metadata !669), !dbg !2014
  %64 = icmp ult i64 %63, %40, !dbg !2046
  br i1 %64, label %65, label %67, !dbg !2049

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2046
  store i8 %61, i8* %66, align 1, !dbg !2046, !tbaa !881
  br label %67, !dbg !2046

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1951, metadata !669), !dbg !2012
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1951, metadata !669), !dbg !2012
  %70 = load i8, i8* %69, align 1, !dbg !2042, !tbaa !881
  %71 = icmp eq i8 %70, 0, !dbg !2045
  br i1 %71, label %72, label %60, !dbg !2045, !llvm.loop !2051

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1955, metadata !669), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1953, metadata !669), !dbg !2014
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1954, metadata !669), !dbg !2015
  br label %94, !dbg !2054

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1955, metadata !669), !dbg !2016
  br label %76, !dbg !2055

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1955, metadata !669), !dbg !2016
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1957, metadata !669), !dbg !2019
  br label %78, !dbg !2056

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1955, metadata !669), !dbg !2016
  %81 = and i8 %80, 1, !dbg !2057
  %82 = icmp eq i8 %81, 0, !dbg !2057
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1955, metadata !669), !dbg !2016
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2059
  br label %84, !dbg !2059

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1955, metadata !669), !dbg !2016
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1945, metadata !669), !dbg !2007
  %87 = and i8 %86, 1, !dbg !2060
  %88 = icmp eq i8 %87, 0, !dbg !2060
  br i1 %88, label %89, label %94, !dbg !2062

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2063
  br i1 %90, label %94, label %91, !dbg !2066

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2063, !tbaa !881
  br label %94, !dbg !2063

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1957, metadata !669), !dbg !2019
  br label %94, !dbg !2067

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2068
  unreachable, !dbg !2068

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1957, metadata !669), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1955, metadata !669), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1954, metadata !669), !dbg !2015
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1949, metadata !669), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1948, metadata !669), !dbg !2010
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1945, metadata !669), !dbg !2007
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1950, metadata !669), !dbg !2069
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
  br label %122, !dbg !2070

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1960, metadata !669), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1950, metadata !669), !dbg !2069
  %131 = icmp eq i64 %126, -1, !dbg !2071
  br i1 %131, label %134, label %132, !dbg !2072

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2073
  br i1 %133, label %590, label %138, !dbg !2074

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2075
  %136 = load i8, i8* %135, align 1, !dbg !2075, !tbaa !881
  %137 = icmp eq i8 %136, 0, !dbg !2076
  br i1 %137, label %590, label %138, !dbg !2074

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !669), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1968, metadata !669), !dbg !2079
  br i1 %108, label %139, label %154, !dbg !2080

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2082
  %141 = and i1 %109, %131, !dbg !2083
  br i1 %141, label %142, label %144, !dbg !2083

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1944, metadata !669), !dbg !2006
  br label %144, !dbg !2085

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1944, metadata !669), !dbg !2006
  %146 = icmp ugt i64 %140, %145, !dbg !2086
  br i1 %146, label %154, label %147, !dbg !2087

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2088
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2089
  %150 = icmp ne i32 %149, 0, !dbg !2090
  %151 = or i1 %150, %111, !dbg !2091
  %152 = xor i1 %150, true, !dbg !2091
  %153 = zext i1 %152 to i8, !dbg !2091
  br i1 %151, label %154, label %635, !dbg !2091

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1966, metadata !669), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1944, metadata !669), !dbg !2006
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2092
  %158 = load i8, i8* %157, align 1, !dbg !2092, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1961, metadata !669), !dbg !2093
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
  ], !dbg !2094

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2095

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2096

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1967, metadata !669), !dbg !2078
  %162 = and i8 %127, 1, !dbg !2100
  %163 = icmp eq i8 %162, 0, !dbg !2100
  %164 = and i1 %113, %163, !dbg !2100
  br i1 %164, label %165, label %181, !dbg !2100

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2102
  br i1 %166, label %167, label %169, !dbg !2106

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2102
  store i8 39, i8* %168, align 1, !dbg !2102, !tbaa !881
  br label %169, !dbg !2102

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1951, metadata !669), !dbg !2012
  %171 = icmp ult i64 %170, %130, !dbg !2107
  br i1 %171, label %172, label %174, !dbg !2110

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2107
  store i8 36, i8* %173, align 1, !dbg !2107, !tbaa !881
  br label %174, !dbg !2107

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1951, metadata !669), !dbg !2012
  %176 = icmp ult i64 %175, %130, !dbg !2111
  br i1 %176, label %177, label %179, !dbg !2114

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2111
  store i8 39, i8* %178, align 1, !dbg !2111, !tbaa !881
  br label %179, !dbg !2111

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %181, !dbg !2115

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1951, metadata !669), !dbg !2012
  %184 = icmp ult i64 %182, %130, !dbg !2116
  br i1 %184, label %185, label %187, !dbg !2119

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2116
  store i8 92, i8* %186, align 1, !dbg !2116, !tbaa !881
  br label %187, !dbg !2116

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1951, metadata !669), !dbg !2012
  br i1 %105, label %189, label %470, !dbg !2120

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2122
  %191 = icmp ult i64 %190, %155, !dbg !2123
  br i1 %191, label %192, label %470, !dbg !2124

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2125
  %194 = load i8, i8* %193, align 1, !dbg !2125, !tbaa !881
  %195 = add i8 %194, -48, !dbg !2126
  %196 = icmp ult i8 %195, 10, !dbg !2126
  br i1 %196, label %197, label %470, !dbg !2126

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2127
  br i1 %198, label %199, label %201, !dbg !2131

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2127
  store i8 48, i8* %200, align 1, !dbg !2127, !tbaa !881
  br label %201, !dbg !2127

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1951, metadata !669), !dbg !2012
  %203 = icmp ult i64 %202, %130, !dbg !2132
  br i1 %203, label %204, label %206, !dbg !2135

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2132
  store i8 48, i8* %205, align 1, !dbg !2132, !tbaa !881
  br label %206, !dbg !2132

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1951, metadata !669), !dbg !2012
  br label %470, !dbg !2136

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2137

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2138

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2139

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2141

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2143
  %214 = icmp ult i64 %213, %155, !dbg !2144
  br i1 %214, label %215, label %470, !dbg !2145

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2146
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2147
  %218 = load i8, i8* %217, align 1, !dbg !2147, !tbaa !881
  %219 = icmp eq i8 %218, 63, !dbg !2148
  br i1 %219, label %220, label %470, !dbg !2149

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2150
  %222 = load i8, i8* %221, align 1, !dbg !2150, !tbaa !881
  %223 = sext i8 %222 to i32, !dbg !2150
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
  ], !dbg !2151

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2152

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1950, metadata !669), !dbg !2069
  %226 = icmp ult i64 %124, %130, !dbg !2154
  br i1 %226, label %227, label %229, !dbg !2157

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2154
  store i8 63, i8* %228, align 1, !dbg !2154, !tbaa !881
  br label %229, !dbg !2154

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1951, metadata !669), !dbg !2012
  %231 = icmp ult i64 %230, %130, !dbg !2158
  br i1 %231, label %232, label %234, !dbg !2161

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2158
  store i8 34, i8* %233, align 1, !dbg !2158, !tbaa !881
  br label %234, !dbg !2158

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1951, metadata !669), !dbg !2012
  %236 = icmp ult i64 %235, %130, !dbg !2162
  br i1 %236, label %237, label %239, !dbg !2165

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2162
  store i8 34, i8* %238, align 1, !dbg !2162, !tbaa !881
  br label %239, !dbg !2162

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1951, metadata !669), !dbg !2012
  %241 = icmp ult i64 %240, %130, !dbg !2166
  br i1 %241, label %242, label %244, !dbg !2169

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2166
  store i8 63, i8* %243, align 1, !dbg !2166, !tbaa !881
  br label %244, !dbg !2166

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1951, metadata !669), !dbg !2012
  br label %470, !dbg !2170

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1965, metadata !669), !dbg !2171
  br label %256, !dbg !2172

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1965, metadata !669), !dbg !2171
  br label %256, !dbg !2173

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1965, metadata !669), !dbg !2171
  br label %254, !dbg !2174

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1965, metadata !669), !dbg !2171
  br label %254, !dbg !2175

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1965, metadata !669), !dbg !2171
  br label %256, !dbg !2176

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1965, metadata !669), !dbg !2171
  br i1 %113, label %252, label %253, !dbg !2177

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2178

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2181

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1965, metadata !669), !dbg !2171
  br i1 %117, label %256, label %635, !dbg !2183

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1965, metadata !669), !dbg !2171
  br i1 %104, label %497, label %470, !dbg !2185

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2186
  br i1 %259, label %260, label %265, !dbg !2188

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2189, !tbaa !881
  %262 = icmp ne i8 %261, 0, !dbg !2190
  %263 = icmp ne i64 %123, 0, !dbg !2191
  %264 = or i1 %263, %262, !dbg !2193
  br i1 %264, label %470, label %271, !dbg !2193

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2194
  %267 = icmp ne i64 %123, 0, !dbg !2191
  %268 = or i1 %267, %266, !dbg !2188
  br i1 %268, label %470, label %271, !dbg !2188

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2191
  br i1 %270, label %271, label %470, !dbg !2195

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1968, metadata !669), !dbg !2079
  br label %272, !dbg !2196

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1968, metadata !669), !dbg !2079
  br i1 %117, label %470, label %635, !dbg !2197

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1968, metadata !669), !dbg !2079
  br i1 %113, label %275, label %470, !dbg !2199

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2200

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2203
  %278 = icmp ne i64 %125, 0, !dbg !2205
  %279 = or i1 %278, %277, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1942, metadata !669), !dbg !2004
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2206
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1952, metadata !669), !dbg !2013
  %282 = icmp ult i64 %124, %281, !dbg !2207
  br i1 %282, label %283, label %285, !dbg !2210

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2207
  store i8 39, i8* %284, align 1, !dbg !2207, !tbaa !881
  br label %285, !dbg !2207

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1951, metadata !669), !dbg !2012
  %287 = icmp ult i64 %286, %281, !dbg !2211
  br i1 %287, label %288, label %290, !dbg !2214

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2211
  store i8 92, i8* %289, align 1, !dbg !2211, !tbaa !881
  br label %290, !dbg !2211

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1951, metadata !669), !dbg !2012
  %292 = icmp ult i64 %291, %281, !dbg !2215
  br i1 %292, label %293, label %295, !dbg !2218

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2215
  store i8 39, i8* %294, align 1, !dbg !2215, !tbaa !881
  br label %295, !dbg !2215

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %470, !dbg !2219

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2220

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1969, metadata !669), !dbg !2221
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2222
  %300 = load i16*, i16** %299, align 8, !dbg !2222, !tbaa !676
  %301 = zext i8 %158 to i64, !dbg !2222
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2222
  %303 = load i16, i16* %302, align 2, !dbg !2222, !tbaa !2224
  %304 = lshr i16 %303, 14, !dbg !2225
  %305 = trunc i16 %304 to i8, !dbg !2225
  %306 = and i8 %305, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1972, metadata !669), !dbg !2226
  br label %362, !dbg !2227

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2228
  store i64 0, i64* %10, align 8, !dbg !2229
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1972, metadata !669), !dbg !2226
  %308 = icmp eq i64 %155, -1, !dbg !2230
  br i1 %308, label %309, label %311, !dbg !2232

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1944, metadata !669), !dbg !2006
  br label %311, !dbg !2234

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1944, metadata !669), !dbg !2006
  br label %313, !dbg !2235, !llvm.loop !2236

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2238
  %316 = add i64 %314, %123, !dbg !2239
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2240
  %318 = sub i64 %312, %316, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1973, metadata !669), !dbg !2242
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1989, metadata !669), !dbg !2243
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1992, metadata !669), !dbg !2245
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2246

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1969, metadata !669), !dbg !2221
  %321 = icmp ugt i64 %312, %316, !dbg !2247
  br i1 %321, label %322, label %347, !dbg !2249

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2250

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1969, metadata !669), !dbg !2221
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2250
  %327 = load i8, i8* %326, align 1, !dbg !2250, !tbaa !881
  %328 = icmp eq i8 %327, 0, !dbg !2249
  br i1 %328, label %347, label %329, !dbg !2251

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1969, metadata !669), !dbg !2221
  %331 = add i64 %330, %123, !dbg !2253
  %332 = icmp ult i64 %331, %312, !dbg !2247
  br i1 %332, label %323, label %347, !dbg !2249, !llvm.loop !2254

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2255
  %335 = and i1 %115, %334, !dbg !2258
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1993, metadata !669), !dbg !2259
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1993, metadata !669), !dbg !2259
  br i1 %335, label %336, label %350, !dbg !2258

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2260

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1993, metadata !669), !dbg !2259
  %339 = add i64 %338, %316, !dbg !2260
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2261
  %341 = load i8, i8* %340, align 1, !dbg !2261, !tbaa !881
  %342 = sext i8 %341 to i32, !dbg !2261
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2262

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1993, metadata !669), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1993, metadata !669), !dbg !2259
  %345 = icmp ult i64 %344, %319, !dbg !2255
  br i1 %345, label %337, label %350, !dbg !2264, !llvm.loop !2265

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2267

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2267
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2268, !tbaa !742
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1989, metadata !669), !dbg !2243
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2270
  %353 = icmp eq i32 %352, 0, !dbg !2270
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1972, metadata !669), !dbg !2226
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2271
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1972, metadata !669), !dbg !2226
  %355 = add i64 %319, %314, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1973, metadata !669), !dbg !2242
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2273
  %357 = icmp eq i32 %356, 0, !dbg !2274
  br i1 %357, label %313, label %358, !dbg !2275, !llvm.loop !2236

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2276
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2276
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1972, metadata !669), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1969, metadata !669), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1944, metadata !669), !dbg !2006
  %366 = and i8 %365, 1, !dbg !2277
  %367 = icmp ne i8 %366, 0, !dbg !2277
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1968, metadata !669), !dbg !2079
  %368 = icmp ult i64 %364, 2, !dbg !2278
  %369 = or i1 %367, %112, !dbg !2279
  %370 = and i1 %368, %369, !dbg !2280
  br i1 %370, label %470, label %371, !dbg !2280

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2000, metadata !669), !dbg !2282
  br label %373, !dbg !2283

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1966, metadata !669), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1950, metadata !669), !dbg !2069
  br i1 %369, label %426, label %380, !dbg !2284

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2289

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1967, metadata !669), !dbg !2078
  %382 = and i8 %376, 1, !dbg !2292
  %383 = icmp eq i8 %382, 0, !dbg !2292
  %384 = and i1 %113, %383, !dbg !2292
  br i1 %384, label %385, label %401, !dbg !2292

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2294
  br i1 %386, label %387, label %389, !dbg !2298

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2294
  store i8 39, i8* %388, align 1, !dbg !2294, !tbaa !881
  br label %389, !dbg !2294

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1951, metadata !669), !dbg !2012
  %391 = icmp ult i64 %390, %130, !dbg !2299
  br i1 %391, label %392, label %394, !dbg !2302

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2299
  store i8 36, i8* %393, align 1, !dbg !2299, !tbaa !881
  br label %394, !dbg !2299

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1951, metadata !669), !dbg !2012
  %396 = icmp ult i64 %395, %130, !dbg !2303
  br i1 %396, label %397, label %399, !dbg !2306

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2303
  store i8 39, i8* %398, align 1, !dbg !2303, !tbaa !881
  br label %399, !dbg !2303

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %401, !dbg !2307

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1951, metadata !669), !dbg !2012
  %404 = icmp ult i64 %402, %130, !dbg !2308
  br i1 %404, label %405, label %407, !dbg !2311

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2308
  store i8 92, i8* %406, align 1, !dbg !2308, !tbaa !881
  br label %407, !dbg !2308

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1951, metadata !669), !dbg !2012
  %409 = icmp ult i64 %408, %130, !dbg !2312
  br i1 %409, label %410, label %414, !dbg !2315

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2312
  %412 = or i8 %411, 48, !dbg !2312
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2312
  store i8 %412, i8* %413, align 1, !dbg !2312, !tbaa !881
  br label %414, !dbg !2312

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1951, metadata !669), !dbg !2012
  %416 = icmp ult i64 %415, %130, !dbg !2316
  br i1 %416, label %417, label %422, !dbg !2319

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2316
  %419 = and i8 %418, 7, !dbg !2316
  %420 = or i8 %419, 48, !dbg !2316
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2316
  store i8 %420, i8* %421, align 1, !dbg !2316, !tbaa !881
  br label %422, !dbg !2316

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1951, metadata !669), !dbg !2012
  %424 = and i8 %377, 7, !dbg !2320
  %425 = or i8 %424, 48, !dbg !2321
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1961, metadata !669), !dbg !2093
  br label %435, !dbg !2322

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2323
  %428 = icmp eq i8 %427, 0, !dbg !2323
  br i1 %428, label %435, label %429, !dbg !2325

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2326
  br i1 %430, label %431, label %433, !dbg !2330

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2326
  store i8 92, i8* %432, align 1, !dbg !2326, !tbaa !881
  br label %433, !dbg !2326

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !669), !dbg !2077
  br label %435, !dbg !2331

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1966, metadata !669), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1951, metadata !669), !dbg !2012
  %441 = add i64 %374, 1, !dbg !2332
  %442 = icmp ugt i64 %372, %441, !dbg !2334
  br i1 %442, label %443, label %535, !dbg !2335

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2336
  %445 = icmp ne i8 %444, 0, !dbg !2336
  %446 = and i8 %440, 1, !dbg !2336
  %447 = icmp eq i8 %446, 0, !dbg !2336
  %448 = and i1 %445, %447, !dbg !2336
  br i1 %448, label %449, label %460, !dbg !2336

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2339
  br i1 %450, label %451, label %453, !dbg !2343

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2339
  store i8 39, i8* %452, align 1, !dbg !2339, !tbaa !881
  br label %453, !dbg !2339

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1951, metadata !669), !dbg !2012
  %455 = icmp ult i64 %454, %130, !dbg !2344
  br i1 %455, label %456, label %458, !dbg !2347

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2344
  store i8 39, i8* %457, align 1, !dbg !2344, !tbaa !881
  br label %458, !dbg !2344

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %460, !dbg !2348

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1951, metadata !669), !dbg !2012
  %463 = icmp ult i64 %461, %130, !dbg !2349
  br i1 %463, label %464, label %466, !dbg !2352

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2349
  store i8 %438, i8* %465, align 1, !dbg !2349, !tbaa !881
  br label %466, !dbg !2349

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1950, metadata !669), !dbg !2069
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2353
  %469 = load i8, i8* %468, align 1, !dbg !2353, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1961, metadata !669), !dbg !2093
  br label %373, !dbg !2354, !llvm.loop !2355

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1968, metadata !669), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1966, metadata !669), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1950, metadata !669), !dbg !2069
  br i1 %106, label %482, label %481, !dbg !2358

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2360

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2361

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2362
  %485 = zext i8 %484 to i64, !dbg !2362
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2363
  %487 = load i32, i32* %486, align 4, !dbg !2363, !tbaa !742
  %488 = and i8 %477, 31, !dbg !2364
  %489 = zext i8 %488 to i32, !dbg !2365
  %490 = shl i32 1, %489, !dbg !2366
  %491 = and i32 %487, %490, !dbg !2366
  %492 = icmp eq i32 %491, 0, !dbg !2366
  %493 = icmp eq i8 %156, 0, !dbg !2367
  %494 = and i1 %493, %492, !dbg !2368
  br i1 %494, label %535, label %497, !dbg !2368

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2367
  br i1 %496, label %535, label %497, !dbg !2369

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1968, metadata !669), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1950, metadata !669), !dbg !2069
  br i1 %111, label %507, label %635, !dbg !2370

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1967, metadata !669), !dbg !2078
  %508 = and i8 %502, 1, !dbg !2372
  %509 = icmp eq i8 %508, 0, !dbg !2372
  %510 = and i1 %113, %509, !dbg !2372
  br i1 %510, label %511, label %527, !dbg !2372

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2374
  br i1 %512, label %513, label %515, !dbg !2378

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2374
  store i8 39, i8* %514, align 1, !dbg !2374, !tbaa !881
  br label %515, !dbg !2374

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1951, metadata !669), !dbg !2012
  %517 = icmp ult i64 %516, %506, !dbg !2379
  br i1 %517, label %518, label %520, !dbg !2382

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2379
  store i8 36, i8* %519, align 1, !dbg !2379, !tbaa !881
  br label %520, !dbg !2379

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1951, metadata !669), !dbg !2012
  %522 = icmp ult i64 %521, %506, !dbg !2383
  br i1 %522, label %523, label %525, !dbg !2386

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2383
  store i8 39, i8* %524, align 1, !dbg !2383, !tbaa !881
  br label %525, !dbg !2383

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %527, !dbg !2387

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1951, metadata !669), !dbg !2012
  %530 = icmp ult i64 %528, %506, !dbg !2388
  br i1 %530, label %531, label %533, !dbg !2391

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2388
  store i8 92, i8* %532, align 1, !dbg !2388, !tbaa !881
  br label %533, !dbg !2388

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1968, metadata !669), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1950, metadata !669), !dbg !2069
  br label %562, !dbg !2392

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1968, metadata !669), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1967, metadata !669), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1961, metadata !669), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1950, metadata !669), !dbg !2069
  %546 = and i8 %540, 1, !dbg !2392
  %547 = icmp ne i8 %546, 0, !dbg !2392
  %548 = and i8 %543, 1, !dbg !2392
  %549 = icmp eq i8 %548, 0, !dbg !2392
  %550 = and i1 %547, %549, !dbg !2392
  br i1 %550, label %551, label %562, !dbg !2392

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2395
  br i1 %552, label %553, label %555, !dbg !2399

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2395
  store i8 39, i8* %554, align 1, !dbg !2395, !tbaa !881
  br label %555, !dbg !2395

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1951, metadata !669), !dbg !2012
  %557 = icmp ult i64 %556, %545, !dbg !2400
  br i1 %557, label %558, label %560, !dbg !2403

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2400
  store i8 39, i8* %559, align 1, !dbg !2400, !tbaa !881
  br label %560, !dbg !2400

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !669), !dbg !2020
  br label %562, !dbg !2404

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1951, metadata !669), !dbg !2012
  %572 = icmp ult i64 %570, %563, !dbg !2405
  br i1 %572, label %573, label %575, !dbg !2408

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2405
  store i8 %565, i8* %574, align 1, !dbg !2405, !tbaa !881
  br label %575, !dbg !2405

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1951, metadata !669), !dbg !2012
  %577 = and i8 %564, 1, !dbg !2409
  %578 = icmp eq i8 %577, 0, !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !669), !dbg !2022
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2411
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1960, metadata !669), !dbg !2022
  br label %580, !dbg !2412

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1960, metadata !669), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1959, metadata !669), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1958, metadata !669), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1944, metadata !669), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1952, metadata !669), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1950, metadata !669), !dbg !2069
  %589 = add i64 %581, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1950, metadata !669), !dbg !2069
  br label %122, !dbg !2414, !llvm.loop !2415

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2417
  %593 = and i1 %113, %592, !dbg !2419
  %594 = xor i1 %593, true, !dbg !2419
  %595 = or i1 %111, %594, !dbg !2419
  br i1 %595, label %596, label %635, !dbg !2419

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2420
  %598 = xor i1 %597, true, !dbg !2420
  %599 = and i8 %128, 1, !dbg !2422
  %600 = icmp eq i8 %599, 0, !dbg !2422
  %601 = or i1 %600, %598, !dbg !2420
  br i1 %601, label %611, label %602, !dbg !2420

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2423
  %604 = icmp eq i8 %603, 0, !dbg !2423
  br i1 %604, label %607, label %605, !dbg !2426

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2427
  br label %645, !dbg !2428

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2429
  %609 = icmp ne i64 %125, 0, !dbg !2431
  %610 = and i1 %609, %608, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1951, metadata !669), !dbg !2012
  br i1 %610, label %27, label %611, !dbg !2432

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2433
  %613 = and i1 %612, %111, !dbg !2435
  br i1 %613, label %614, label %630, !dbg !2435

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1951, metadata !669), !dbg !2012
  %615 = load i8, i8* %99, align 1, !dbg !2436, !tbaa !881
  %616 = icmp eq i8 %615, 0, !dbg !2439
  br i1 %616, label %630, label %617, !dbg !2439

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2440

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1951, metadata !669), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1953, metadata !669), !dbg !2014
  %622 = icmp ult i64 %621, %130, !dbg !2440
  br i1 %622, label %623, label %625, !dbg !2443

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2440
  store i8 %619, i8* %624, align 1, !dbg !2440, !tbaa !881
  br label %625, !dbg !2440

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1951, metadata !669), !dbg !2012
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1953, metadata !669), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1951, metadata !669), !dbg !2012
  %628 = load i8, i8* %627, align 1, !dbg !2436, !tbaa !881
  %629 = icmp eq i8 %628, 0, !dbg !2439
  br i1 %629, label %630, label %618, !dbg !2439, !llvm.loop !2445

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1951, metadata !669), !dbg !2012
  %632 = icmp ult i64 %631, %130, !dbg !2447
  br i1 %632, label %633, label %645, !dbg !2449

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2450
  store i8 0, i8* %634, align 1, !dbg !2451, !tbaa !881
  br label %645, !dbg !2450

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1942, metadata !669), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1944, metadata !669), !dbg !2006
  %639 = icmp ne i32 %636, 2, !dbg !2452
  %640 = icmp eq i8 %103, 0, !dbg !2454
  %641 = or i1 %639, %640, !dbg !2455
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1945, metadata !669), !dbg !2007
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1945, metadata !669), !dbg !2007
  %643 = and i32 %5, -3, !dbg !2456
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2457
  br label %645, !dbg !2458

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2459
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2460 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2464, metadata !669), !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2465, metadata !669), !dbg !2469
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2466, metadata !669), !dbg !2471
  %4 = icmp eq i8* %3, %0, !dbg !2472
  br i1 %4, label %5, label %75, !dbg !2474

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2467, metadata !669), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2477, metadata !669), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2491, metadata !669), !dbg !2496
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2492, metadata !669), !dbg !2497
  %7 = load i8, i8* %6, align 1, !dbg !2498, !tbaa !881
  %8 = sext i8 %7 to i32, !dbg !2498
  %9 = and i32 %8, -33, !dbg !2498
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2498

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2500, metadata !669), !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2512, metadata !669), !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2513, metadata !669), !dbg !2519
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2520
  %12 = load i8, i8* %11, align 1, !dbg !2520, !tbaa !881
  %13 = sext i8 %12 to i32, !dbg !2520
  %14 = and i32 %13, -33, !dbg !2520
  %15 = icmp eq i32 %14, 84, !dbg !2520
  br i1 %15, label %16, label %72, !dbg !2520

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2522, metadata !669), !dbg !2535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2533, metadata !669), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2534, metadata !669), !dbg !2540
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2541
  %18 = load i8, i8* %17, align 1, !dbg !2541, !tbaa !881
  %19 = sext i8 %18 to i32, !dbg !2541
  %20 = and i32 %19, -33, !dbg !2541
  %21 = icmp eq i32 %20, 70, !dbg !2541
  br i1 %21, label %22, label %72, !dbg !2541

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2543, metadata !669), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !669), !dbg !2559
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2554, metadata !669), !dbg !2560
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2561
  %24 = load i8, i8* %23, align 1, !dbg !2561, !tbaa !881
  %25 = icmp eq i8 %24, 45, !dbg !2561
  br i1 %25, label %26, label %72, !dbg !2563

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2564, metadata !669), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2573, metadata !669), !dbg !2579
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !669), !dbg !2580
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2581
  %28 = load i8, i8* %27, align 1, !dbg !2581, !tbaa !881
  %29 = icmp eq i8 %28, 56, !dbg !2581
  br i1 %29, label %30, label %72, !dbg !2583

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2584, metadata !669), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2592, metadata !669), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !669), !dbg !2599
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2600
  %32 = load i8, i8* %31, align 1, !dbg !2600, !tbaa !881
  %33 = icmp eq i8 %32, 0, !dbg !2600
  br i1 %33, label %34, label %72, !dbg !2602

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2603, !tbaa !881
  %36 = icmp eq i8 %35, 96, !dbg !2604
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2603
  br label %75, !dbg !2605

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2500, metadata !669), !dbg !2606
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2512, metadata !669), !dbg !2610
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2513, metadata !669), !dbg !2611
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2612
  %40 = load i8, i8* %39, align 1, !dbg !2612, !tbaa !881
  %41 = sext i8 %40 to i32, !dbg !2612
  %42 = and i32 %41, -33, !dbg !2612
  %43 = icmp eq i32 %42, 66, !dbg !2612
  br i1 %43, label %44, label %72, !dbg !2612

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2522, metadata !669), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2533, metadata !669), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2534, metadata !669), !dbg !2616
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2617
  %46 = load i8, i8* %45, align 1, !dbg !2617, !tbaa !881
  %47 = icmp eq i8 %46, 49, !dbg !2617
  br i1 %47, label %48, label %72, !dbg !2618

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2543, metadata !669), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !669), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2554, metadata !669), !dbg !2622
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2623
  %50 = load i8, i8* %49, align 1, !dbg !2623, !tbaa !881
  %51 = icmp eq i8 %50, 56, !dbg !2623
  br i1 %51, label %52, label %72, !dbg !2624

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2564, metadata !669), !dbg !2625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2573, metadata !669), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !669), !dbg !2628
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2629
  %54 = load i8, i8* %53, align 1, !dbg !2629, !tbaa !881
  %55 = icmp eq i8 %54, 48, !dbg !2629
  br i1 %55, label %56, label %72, !dbg !2630

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2584, metadata !669), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2592, metadata !669), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !669), !dbg !2634
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2635
  %58 = load i8, i8* %57, align 1, !dbg !2635, !tbaa !881
  %59 = icmp eq i8 %58, 51, !dbg !2635
  br i1 %59, label %60, label %72, !dbg !2636

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2637, metadata !669), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !669), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2645, metadata !669), !dbg !2651
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2652
  %62 = load i8, i8* %61, align 1, !dbg !2652, !tbaa !881
  %63 = icmp eq i8 %62, 48, !dbg !2652
  br i1 %63, label %64, label %72, !dbg !2654

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2655, metadata !669), !dbg !2663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2661, metadata !669), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2662, metadata !669), !dbg !2668
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2669
  %66 = load i8, i8* %65, align 1, !dbg !2669, !tbaa !881
  %67 = icmp eq i8 %66, 0, !dbg !2669
  br i1 %67, label %68, label %72, !dbg !2671

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2672, !tbaa !881
  %70 = icmp eq i8 %69, 96, !dbg !2673
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2672
  br label %75, !dbg !2674

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2675
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2676
  br label %75, !dbg !2677

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2678
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2679 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2683, metadata !669), !dbg !2686
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2684, metadata !669), !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2685, metadata !669), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !669) #11, !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2694, metadata !669) #11, !dbg !2704
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2695, metadata !669) #11, !dbg !2705
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2696, metadata !669) #11, !dbg !2706
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2707
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2707
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2697, metadata !669) #11, !dbg !2708
  %6 = tail call i32* @__errno_location() #17, !dbg !2709
  %7 = load i32, i32* %6, align 4, !dbg !2709, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2698, metadata !669) #11, !dbg !2710
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2711
  %9 = load i32, i32* %8, align 4, !dbg !2711, !tbaa !1874
  %10 = or i32 %9, 1, !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2699, metadata !669) #11, !dbg !2713
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2714
  %12 = load i32, i32* %11, align 8, !dbg !2714, !tbaa !1814
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2715
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2716
  %15 = load i8*, i8** %14, align 8, !dbg !2716, !tbaa !1900
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2717
  %17 = load i8*, i8** %16, align 8, !dbg !2717, !tbaa !1903
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2718
  %19 = add i64 %18, 1, !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2700, metadata !669) #11, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2721, metadata !669) #11, !dbg !2726
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2701, metadata !669) #11, !dbg !2729
  %21 = load i32, i32* %11, align 8, !dbg !2730, !tbaa !1814
  %22 = load i8*, i8** %14, align 8, !dbg !2731, !tbaa !1900
  %23 = load i8*, i8** %16, align 8, !dbg !2732, !tbaa !1903
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2733
  store i32 %7, i32* %6, align 4, !dbg !2734, !tbaa !742
  ret i8* %20, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2690 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !669), !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2694, metadata !669), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2695, metadata !669), !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2696, metadata !669), !dbg !2739
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2740
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2697, metadata !669), !dbg !2741
  %7 = tail call i32* @__errno_location() #17, !dbg !2742
  %8 = load i32, i32* %7, align 4, !dbg !2742, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2698, metadata !669), !dbg !2743
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2744
  %10 = load i32, i32* %9, align 4, !dbg !2744, !tbaa !1874
  %11 = icmp ne i64* %2, null, !dbg !2745
  %12 = xor i1 %11, true, !dbg !2745
  %13 = zext i1 %12 to i32, !dbg !2745
  %14 = or i32 %10, %13, !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2699, metadata !669), !dbg !2747
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2748
  %16 = load i32, i32* %15, align 8, !dbg !2748, !tbaa !1814
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2749
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2750
  %19 = load i8*, i8** %18, align 8, !dbg !2750, !tbaa !1900
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2751
  %21 = load i8*, i8** %20, align 8, !dbg !2751, !tbaa !1903
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2752
  %23 = add i64 %22, 1, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2700, metadata !669), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2721, metadata !669) #11, !dbg !2755
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2701, metadata !669), !dbg !2758
  %25 = load i32, i32* %15, align 8, !dbg !2759, !tbaa !1814
  %26 = load i8*, i8** %18, align 8, !dbg !2760, !tbaa !1900
  %27 = load i8*, i8** %20, align 8, !dbg !2761, !tbaa !1903
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2762
  store i32 %8, i32* %7, align 4, !dbg !2763, !tbaa !742
  br i1 %11, label %29, label %30, !dbg !2764

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2765, !tbaa !1735
  br label %30, !dbg !2767

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2769 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2773, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2771, metadata !669), !dbg !2774
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2772, metadata !669), !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2772, metadata !669), !dbg !2775
  %2 = load i32, i32* @nslots, align 4, !dbg !2776, !tbaa !742
  %3 = icmp sgt i32 %2, 1, !dbg !2779
  br i1 %3, label %4, label %13, !dbg !2780

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2781

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2772, metadata !669), !dbg !2775
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2781
  %8 = load i8*, i8** %7, align 8, !dbg !2781, !tbaa !2782
  tail call void @free(i8* %8) #11, !dbg !2784
  %9 = add nuw i64 %6, 1, !dbg !2785
  %10 = load i32, i32* @nslots, align 4, !dbg !2776, !tbaa !742
  %11 = sext i32 %10 to i64, !dbg !2779
  %12 = icmp slt i64 %9, %11, !dbg !2779
  br i1 %12, label %5, label %13, !dbg !2780, !llvm.loop !2786

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2788
  %15 = load i8*, i8** %14, align 8, !dbg !2788, !tbaa !2782
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2790
  br i1 %16, label %18, label %17, !dbg !2791

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2792
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2794, !tbaa !2795
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2796, !tbaa !2782
  br label %18, !dbg !2797

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2798
  br i1 %19, label %22, label %20, !dbg !2800

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2801
  tail call void @free(i8* %21) #11, !dbg !2803
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2804, !tbaa !676
  br label %22, !dbg !2805

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2806, !tbaa !742
  ret void, !dbg !2807
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2808 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2812, metadata !669), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2813, metadata !669), !dbg !2815
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2816
  ret i8* %3, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2818 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2822, metadata !669), !dbg !2836
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2823, metadata !669), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2824, metadata !669), !dbg !2838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2825, metadata !669), !dbg !2839
  %5 = tail call i32* @__errno_location() #17, !dbg !2840
  %6 = load i32, i32* %5, align 4, !dbg !2840, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2826, metadata !669), !dbg !2841
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2842, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2827, metadata !669), !dbg !2843
  %8 = icmp slt i32 %0, 0, !dbg !2844
  br i1 %8, label %9, label %10, !dbg !2846

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2847
  unreachable, !dbg !2847

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2848, !tbaa !742
  %12 = icmp sgt i32 %11, %0, !dbg !2849
  br i1 %12, label %34, label %13, !dbg !2850

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2851
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2852
  br i1 %15, label %16, label %17, !dbg !2854

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2855
  unreachable, !dbg !2855

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2856
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2856
  %20 = add nsw i32 %0, 1, !dbg !2857
  %21 = sext i32 %20 to i64, !dbg !2858
  %22 = shl nsw i64 %21, 4, !dbg !2859
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2860
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2827, metadata !669), !dbg !2843
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2861, !tbaa !676
  br i1 %14, label %25, label %26, !dbg !2862

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2863, !tbaa.struct !2865
  br label %26, !dbg !2866

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2867, !tbaa !742
  %28 = sext i32 %27 to i64, !dbg !2868
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2868
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2869
  %31 = sub nsw i32 %20, %27, !dbg !2870
  %32 = sext i32 %31 to i64, !dbg !2871
  %33 = shl nsw i64 %32, 4, !dbg !2872
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2869
  store i32 %20, i32* @nslots, align 4, !dbg !2873, !tbaa !742
  br label %34, !dbg !2874

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2827, metadata !669), !dbg !2843
  %36 = sext i32 %0 to i64, !dbg !2875
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2876
  %38 = load i64, i64* %37, align 8, !dbg !2876, !tbaa !2795
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2831, metadata !669), !dbg !2877
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2878
  %40 = load i8*, i8** %39, align 8, !dbg !2878, !tbaa !2782
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2833, metadata !669), !dbg !2879
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2880
  %42 = load i32, i32* %41, align 4, !dbg !2880, !tbaa !1874
  %43 = or i32 %42, 1, !dbg !2881
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2834, metadata !669), !dbg !2882
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2883
  %45 = load i32, i32* %44, align 8, !dbg !2883, !tbaa !1814
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2884
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2885
  %48 = load i8*, i8** %47, align 8, !dbg !2885, !tbaa !1900
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2886
  %50 = load i8*, i8** %49, align 8, !dbg !2886, !tbaa !1903
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2835, metadata !669), !dbg !2888
  %52 = icmp ugt i64 %38, %51, !dbg !2889
  br i1 %52, label %63, label %53, !dbg !2891

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2831, metadata !669), !dbg !2877
  store i64 %54, i64* %37, align 8, !dbg !2894, !tbaa !2795
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2895
  br i1 %55, label %57, label %56, !dbg !2897

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2898
  br label %57, !dbg !2898

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2721, metadata !669) #11, !dbg !2899
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2833, metadata !669), !dbg !2879
  store i8* %58, i8** %39, align 8, !dbg !2902, !tbaa !2782
  %59 = load i32, i32* %44, align 8, !dbg !2903, !tbaa !1814
  %60 = load i8*, i8** %47, align 8, !dbg !2904, !tbaa !1900
  %61 = load i8*, i8** %49, align 8, !dbg !2905, !tbaa !1903
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2906
  br label %63, !dbg !2907

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2833, metadata !669), !dbg !2879
  store i32 %6, i32* %5, align 4, !dbg !2908, !tbaa !742
  ret i8* %64, !dbg !2909
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2910 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2914, metadata !669), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2915, metadata !669), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2916, metadata !669), !dbg !2919
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2920
  ret i8* %4, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2922 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2926, metadata !669), !dbg !2927
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2812, metadata !669) #11, !dbg !2928
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2813, metadata !669) #11, !dbg !2930
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2931
  ret i8* %2, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2937, metadata !669), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2938, metadata !669), !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2914, metadata !669) #11, !dbg !2941
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2915, metadata !669) #11, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2916, metadata !669) #11, !dbg !2944
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2945
  ret i8* %3, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2947 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2955, metadata !2961), !dbg !2962
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2951, metadata !669), !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2952, metadata !669), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2953, metadata !669), !dbg !2966
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2954, metadata !669), !dbg !2968
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2960, metadata !669) #11, !dbg !2969
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2970
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2970
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2955, metadata !669) #11, !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2955, metadata !2971) #11, !dbg !2962
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2962
  %8 = icmp eq i32 %1, 10, !dbg !2972
  br i1 %8, label %9, label %10, !dbg !2974

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2975, !noalias !2976
  unreachable, !dbg !2975

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2955, metadata !2971) #11, !dbg !2962
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2979
  store i32 %1, i32* %11, align 8, !dbg !2979, !alias.scope !2976
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2979
  %13 = bitcast i32* %12 to i8*, !dbg !2979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2979
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2954, metadata !669), !dbg !2968
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2981
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2982
  ret i8* %14, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2984 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2955, metadata !2961), !dbg !2993
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2988, metadata !669), !dbg !2995
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2989, metadata !669), !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2990, metadata !669), !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2991, metadata !669), !dbg !2998
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2992, metadata !669), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2960, metadata !669) #11, !dbg !3001
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3002
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3002
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2955, metadata !669) #11, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2955, metadata !2971) #11, !dbg !2993
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2993
  %9 = icmp eq i32 %1, 10, !dbg !3003
  br i1 %9, label %10, label %11, !dbg !3004

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3005, !noalias !3006
  unreachable, !dbg !3005

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2955, metadata !2971) #11, !dbg !2993
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3009
  store i32 %1, i32* %12, align 8, !dbg !3009, !alias.scope !3006
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3009
  %14 = bitcast i32* %13 to i8*, !dbg !3009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3009
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2992, metadata !669), !dbg !3000
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3012
  ret i8* %15, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3014 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2955, metadata !2961), !dbg !3020
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3018, metadata !669), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3019, metadata !669), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2951, metadata !669) #11, !dbg !3025
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2952, metadata !669) #11, !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2953, metadata !669) #11, !dbg !3027
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3028
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3028
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2954, metadata !669) #11, !dbg !3029
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2960, metadata !669) #11, !dbg !3030
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3031
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2955, metadata !669) #11, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2955, metadata !2971) #11, !dbg !3020
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3020
  %7 = icmp eq i32 %0, 10, !dbg !3032
  br i1 %7, label %8, label %9, !dbg !3033

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3034, !noalias !3035
  unreachable, !dbg !3034

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2955, metadata !2971) #11, !dbg !3020
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3038
  store i32 %0, i32* %10, align 8, !dbg !3038, !alias.scope !3035
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3038
  %12 = bitcast i32* %11 to i8*, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2954, metadata !669) #11, !dbg !3029
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3041
  ret i8* %13, !dbg !3042
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3043 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2955, metadata !2961), !dbg !3050
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3047, metadata !669), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3048, metadata !669), !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3049, metadata !669), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2988, metadata !669) #11, !dbg !3056
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2989, metadata !669) #11, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2990, metadata !669) #11, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2991, metadata !669) #11, !dbg !3059
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3060
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2992, metadata !669) #11, !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2960, metadata !669) #11, !dbg !3062
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3063
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2955, metadata !669) #11, !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2955, metadata !2971) #11, !dbg !3050
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3050
  %8 = icmp eq i32 %0, 10, !dbg !3064
  br i1 %8, label %9, label %10, !dbg !3065

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3066, !noalias !3067
  unreachable, !dbg !3066

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2955, metadata !2971) #11, !dbg !3050
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3070
  store i32 %0, i32* %11, align 8, !dbg !3070, !alias.scope !3067
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3070
  %13 = bitcast i32* %12 to i8*, !dbg !3070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3070
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3071
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2992, metadata !669) #11, !dbg !3061
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3073
  ret i8* %14, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3075 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !669), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3080, metadata !669), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3081, metadata !669), !dbg !3085
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3087, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3082, metadata !669), !dbg !3089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1833, metadata !669), !dbg !3090
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1834, metadata !669), !dbg !3092
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1835, metadata !669), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1836, metadata !669), !dbg !3094
  %6 = lshr i8 %2, 5, !dbg !3095
  %7 = zext i8 %6 to i64, !dbg !3095
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3096
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1837, metadata !669), !dbg !3097
  %9 = and i8 %2, 31, !dbg !3098
  %10 = zext i8 %9 to i32, !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1839, metadata !669), !dbg !3100
  %11 = load i32, i32* %8, align 4, !dbg !3101, !tbaa !742
  %12 = lshr i32 %11, %10, !dbg !3102
  %13 = and i32 %12, 1, !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1840, metadata !669), !dbg !3104
  %14 = xor i32 %13, 1, !dbg !3105
  %15 = shl i32 %14, %10, !dbg !3106
  %16 = xor i32 %15, %11, !dbg !3107
  store i32 %16, i32* %8, align 4, !dbg !3107, !tbaa !742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3082, metadata !669), !dbg !3089
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3108
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3109
  ret i8* %17, !dbg !3110
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3111 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3115, metadata !669), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3116, metadata !669), !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !669) #11, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3080, metadata !669) #11, !dbg !3121
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3081, metadata !669) #11, !dbg !3122
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3124, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3082, metadata !669) #11, !dbg !3125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1833, metadata !669) #11, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1834, metadata !669) #11, !dbg !3128
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1835, metadata !669) #11, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1836, metadata !669) #11, !dbg !3130
  %5 = lshr i8 %1, 5, !dbg !3131
  %6 = zext i8 %5 to i64, !dbg !3131
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3132
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1837, metadata !669) #11, !dbg !3133
  %8 = and i8 %1, 31, !dbg !3134
  %9 = zext i8 %8 to i32, !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1839, metadata !669) #11, !dbg !3136
  %10 = load i32, i32* %7, align 4, !dbg !3137, !tbaa !742
  %11 = lshr i32 %10, %9, !dbg !3138
  %12 = and i32 %11, 1, !dbg !3139
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1840, metadata !669) #11, !dbg !3140
  %13 = xor i32 %12, 1, !dbg !3141
  %14 = shl i32 %13, %9, !dbg !3142
  %15 = xor i32 %14, %10, !dbg !3143
  store i32 %15, i32* %7, align 4, !dbg !3143, !tbaa !742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3082, metadata !669) #11, !dbg !3125
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3145
  ret i8* %16, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3147 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !669), !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3115, metadata !669) #11, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3116, metadata !669) #11, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !669) #11, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3080, metadata !669) #11, !dbg !3156
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3081, metadata !669) #11, !dbg !3157
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3159, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3082, metadata !669) #11, !dbg !3160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1833, metadata !669) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1834, metadata !669) #11, !dbg !3163
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1835, metadata !669) #11, !dbg !3164
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1836, metadata !669) #11, !dbg !3165
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3166
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1837, metadata !669) #11, !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1839, metadata !669) #11, !dbg !3168
  %5 = load i32, i32* %4, align 4, !dbg !3169, !tbaa !742
  %6 = or i32 %5, 67108864, !dbg !3170
  store i32 %6, i32* %4, align 4, !dbg !3170, !tbaa !742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3082, metadata !669) #11, !dbg !3160
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3171
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3172
  ret i8* %7, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3174 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !669), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3177, metadata !669), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !669) #11, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3080, metadata !669) #11, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3081, metadata !669) #11, !dbg !3183
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3185, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3082, metadata !669) #11, !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1833, metadata !669) #11, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1834, metadata !669) #11, !dbg !3189
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1835, metadata !669) #11, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1836, metadata !669) #11, !dbg !3191
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3192
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1837, metadata !669) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1839, metadata !669) #11, !dbg !3194
  %6 = load i32, i32* %5, align 4, !dbg !3195, !tbaa !742
  %7 = or i32 %6, 67108864, !dbg !3196
  store i32 %7, i32* %5, align 4, !dbg !3196, !tbaa !742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3082, metadata !669) #11, !dbg !3186
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3198
  ret i8* %8, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3200 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2955, metadata !2961), !dbg !3206
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3202, metadata !669), !dbg !3208
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3203, metadata !669), !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3204, metadata !669), !dbg !3210
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3211
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3211
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2960, metadata !669) #11, !dbg !3212
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3213
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2955, metadata !669) #11, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2955, metadata !2971) #11, !dbg !3206
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3206
  %9 = icmp eq i32 %1, 10, !dbg !3214
  br i1 %9, label %10, label %11, !dbg !3215

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3216, !noalias !3217
  unreachable, !dbg !3216

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2955, metadata !2971) #11, !dbg !3206
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3221
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3222
  store i32 %1, i32* %13, align 8, !dbg !3222
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3222
  %15 = bitcast i32* %14 to i8*, !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3222
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3205, metadata !669), !dbg !3223
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1833, metadata !669), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1834, metadata !669), !dbg !3226
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1835, metadata !669), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1836, metadata !669), !dbg !3228
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3229
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1837, metadata !669), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1839, metadata !669), !dbg !3231
  %17 = load i32, i32* %16, align 4, !dbg !3232, !tbaa !742
  %18 = or i32 %17, 67108864, !dbg !3233
  store i32 %18, i32* %16, align 4, !dbg !3233, !tbaa !742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3205, metadata !669), !dbg !3223
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3235
  ret i8* %19, !dbg !3236
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3237 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3241, metadata !669), !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3242, metadata !669), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3243, metadata !669), !dbg !3247
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3244, metadata !669), !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3249, metadata !669) #11, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3254, metadata !669) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3255, metadata !669) #11, !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3256, metadata !669) #11, !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3257, metadata !669) #11, !dbg !3264
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3266, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3258, metadata !669) #11, !dbg !3267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1882, metadata !669) #11, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1883, metadata !669) #11, !dbg !3270
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1884, metadata !669) #11, !dbg !3271
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1882, metadata !669) #11, !dbg !3268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1882, metadata !669) #11, !dbg !3268
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3272
  store i32 10, i32* %7, align 8, !dbg !3273, !tbaa !1814
  %8 = icmp ne i8* %1, null, !dbg !3274
  %9 = icmp ne i8* %2, null, !dbg !3275
  %10 = and i1 %8, %9, !dbg !3276
  br i1 %10, label %12, label %11, !dbg !3276

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3277
  unreachable, !dbg !3277

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3278
  store i8* %1, i8** %13, align 8, !dbg !3279, !tbaa !1900
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3280
  store i8* %2, i8** %14, align 8, !dbg !3281, !tbaa !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3258, metadata !669) #11, !dbg !3267
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3282
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3283
  ret i8* %15, !dbg !3284
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3250 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3249, metadata !669), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3254, metadata !669), !dbg !3286
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3255, metadata !669), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3256, metadata !669), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3257, metadata !669), !dbg !3289
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3291, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3258, metadata !669), !dbg !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1882, metadata !669) #11, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1883, metadata !669) #11, !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1884, metadata !669) #11, !dbg !3296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1882, metadata !669) #11, !dbg !3293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1882, metadata !669) #11, !dbg !3293
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3297
  store i32 10, i32* %8, align 8, !dbg !3298, !tbaa !1814
  %9 = icmp ne i8* %1, null, !dbg !3299
  %10 = icmp ne i8* %2, null, !dbg !3300
  %11 = and i1 %9, %10, !dbg !3301
  br i1 %11, label %13, label %12, !dbg !3301

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3302
  unreachable, !dbg !3302

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3303
  store i8* %1, i8** %14, align 8, !dbg !3304, !tbaa !1900
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3305
  store i8* %2, i8** %15, align 8, !dbg !3306, !tbaa !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3258, metadata !669), !dbg !3292
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3308
  ret i8* %16, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3310 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !669), !dbg !3317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3315, metadata !669), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3316, metadata !669), !dbg !3319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3241, metadata !669) #11, !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3242, metadata !669) #11, !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3243, metadata !669) #11, !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3244, metadata !669) #11, !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3249, metadata !669) #11, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3254, metadata !669) #11, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3255, metadata !669) #11, !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !669) #11, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3257, metadata !669) #11, !dbg !3330
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3332, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3258, metadata !669) #11, !dbg !3333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1882, metadata !669) #11, !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1883, metadata !669) #11, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1884, metadata !669) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1882, metadata !669) #11, !dbg !3334
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1882, metadata !669) #11, !dbg !3334
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3338
  store i32 10, i32* %6, align 8, !dbg !3339, !tbaa !1814
  %7 = icmp ne i8* %0, null, !dbg !3340
  %8 = icmp ne i8* %1, null, !dbg !3341
  %9 = and i1 %7, %8, !dbg !3342
  br i1 %9, label %11, label %10, !dbg !3342

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3343
  unreachable, !dbg !3343

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3344
  store i8* %0, i8** %12, align 8, !dbg !3345, !tbaa !1900
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3346
  store i8* %1, i8** %13, align 8, !dbg !3347, !tbaa !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3258, metadata !669) #11, !dbg !3333
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3349
  ret i8* %14, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3351 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3355, metadata !669), !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3356, metadata !669), !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3357, metadata !669), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3358, metadata !669), !dbg !3362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3249, metadata !669) #11, !dbg !3363
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3254, metadata !669) #11, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3255, metadata !669) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !669) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3257, metadata !669) #11, !dbg !3368
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3370, !tbaa.struct !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3258, metadata !669) #11, !dbg !3371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1882, metadata !669) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1883, metadata !669) #11, !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1884, metadata !669) #11, !dbg !3375
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1882, metadata !669) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1882, metadata !669) #11, !dbg !3372
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3376
  store i32 10, i32* %7, align 8, !dbg !3377, !tbaa !1814
  %8 = icmp ne i8* %0, null, !dbg !3378
  %9 = icmp ne i8* %1, null, !dbg !3379
  %10 = and i1 %8, %9, !dbg !3380
  br i1 %10, label %12, label %11, !dbg !3380

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3381
  unreachable, !dbg !3381

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3382
  store i8* %0, i8** %13, align 8, !dbg !3383, !tbaa !1900
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3384
  store i8* %1, i8** %14, align 8, !dbg !3385, !tbaa !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3258, metadata !669) #11, !dbg !3371
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3387
  ret i8* %15, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3389 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3393, metadata !669), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3394, metadata !669), !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3395, metadata !669), !dbg !3398
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3399
  ret i8* %4, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3405, metadata !669), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3406, metadata !669), !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3393, metadata !669) #11, !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3394, metadata !669) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3395, metadata !669) #11, !dbg !3412
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3413
  ret i8* %3, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3419, metadata !669), !dbg !3421
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3420, metadata !669), !dbg !3422
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3393, metadata !669) #11, !dbg !3423
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3394, metadata !669) #11, !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3395, metadata !669) #11, !dbg !3426
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3427
  ret i8* %3, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3429 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !669), !dbg !3434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3419, metadata !669) #11, !dbg !3435
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3420, metadata !669) #11, !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3393, metadata !669) #11, !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3394, metadata !669) #11, !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3395, metadata !669) #11, !dbg !3441
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3442
  ret i8* %2, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !594 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !598, metadata !669), !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !599, metadata !669), !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !600, metadata !669), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !600, metadata !669), !dbg !3446
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !601, metadata !669), !dbg !3448
  %5 = icmp sgt i64 %4, -1, !dbg !3449
  br i1 %5, label %25, label %6, !dbg !3451

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3452
  br label %11, !dbg !3451

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !600, metadata !669), !dbg !3446
  %9 = tail call i64 @read(i32 %0, i8* %1, i64 2147475456) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !601, metadata !669), !dbg !3448
  %10 = icmp sgt i64 %9, -1, !dbg !3449
  br i1 %10, label %25, label %11, !dbg !3451, !llvm.loop !3454

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !600, metadata !669), !dbg !3446
  br label %17, !dbg !3451

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !600, metadata !669), !dbg !3446
  %15 = tail call i64 @read(i32 %0, i8* %1, i64 %13) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !601, metadata !669), !dbg !3448
  %16 = icmp sgt i64 %15, -1, !dbg !3449
  br i1 %16, label %25, label %17, !dbg !3451

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !3452, !tbaa !742
  %20 = icmp eq i32 %19, 4, !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !600, metadata !669), !dbg !3446
  br i1 %20, label %14, label %21, !dbg !3457, !llvm.loop !3454

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !3458
  %23 = icmp ugt i64 %13, 2147475456, !dbg !3460
  %24 = and i1 %23, %22, !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !600, metadata !669), !dbg !3446
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !3462
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3463 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3508, metadata !669), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3509, metadata !669), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3510, metadata !669), !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3511, metadata !669), !dbg !3517
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3512, metadata !669), !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3513, metadata !669), !dbg !3519
  %7 = icmp eq i8* %1, null, !dbg !3520
  br i1 %7, label %10, label %8, !dbg !3522

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3523
  br label %12, !dbg !3523

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3524
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #11, !dbg !3525
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3525
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #11, !dbg !3526
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3526
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
  ], !dbg !3527

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3528
  unreachable, !dbg !3528

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #11, !dbg !3530
  %20 = load i8*, i8** %4, align 8, !dbg !3530, !tbaa !676
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3530
  br label %146, !dbg !3531

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #11, !dbg !3532
  %24 = load i8*, i8** %4, align 8, !dbg !3532, !tbaa !676
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3532
  %26 = load i8*, i8** %25, align 8, !dbg !3532, !tbaa !676
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3532
  br label %146, !dbg !3533

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #11, !dbg !3534
  %30 = load i8*, i8** %4, align 8, !dbg !3534, !tbaa !676
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3534
  %32 = load i8*, i8** %31, align 8, !dbg !3534, !tbaa !676
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3534
  %34 = load i8*, i8** %33, align 8, !dbg !3534, !tbaa !676
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3534
  br label %146, !dbg !3535

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #11, !dbg !3536
  %38 = load i8*, i8** %4, align 8, !dbg !3536, !tbaa !676
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3536
  %40 = load i8*, i8** %39, align 8, !dbg !3536, !tbaa !676
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3536
  %42 = load i8*, i8** %41, align 8, !dbg !3536, !tbaa !676
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3536
  %44 = load i8*, i8** %43, align 8, !dbg !3536, !tbaa !676
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3536
  br label %146, !dbg !3537

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #11, !dbg !3538
  %48 = load i8*, i8** %4, align 8, !dbg !3538, !tbaa !676
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3538
  %50 = load i8*, i8** %49, align 8, !dbg !3538, !tbaa !676
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3538
  %52 = load i8*, i8** %51, align 8, !dbg !3538, !tbaa !676
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3538
  %54 = load i8*, i8** %53, align 8, !dbg !3538, !tbaa !676
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3538
  %56 = load i8*, i8** %55, align 8, !dbg !3538, !tbaa !676
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3538
  br label %146, !dbg !3539

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #11, !dbg !3540
  %60 = load i8*, i8** %4, align 8, !dbg !3540, !tbaa !676
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3540
  %62 = load i8*, i8** %61, align 8, !dbg !3540, !tbaa !676
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3540
  %64 = load i8*, i8** %63, align 8, !dbg !3540, !tbaa !676
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3540
  %66 = load i8*, i8** %65, align 8, !dbg !3540, !tbaa !676
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3540
  %68 = load i8*, i8** %67, align 8, !dbg !3540, !tbaa !676
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3540
  %70 = load i8*, i8** %69, align 8, !dbg !3540, !tbaa !676
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3540
  br label %146, !dbg !3541

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #11, !dbg !3542
  %74 = load i8*, i8** %4, align 8, !dbg !3542, !tbaa !676
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3542
  %76 = load i8*, i8** %75, align 8, !dbg !3542, !tbaa !676
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3542
  %78 = load i8*, i8** %77, align 8, !dbg !3542, !tbaa !676
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3542
  %80 = load i8*, i8** %79, align 8, !dbg !3542, !tbaa !676
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3542
  %82 = load i8*, i8** %81, align 8, !dbg !3542, !tbaa !676
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3542
  %84 = load i8*, i8** %83, align 8, !dbg !3542, !tbaa !676
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3542
  %86 = load i8*, i8** %85, align 8, !dbg !3542, !tbaa !676
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3542
  br label %146, !dbg !3543

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #11, !dbg !3544
  %90 = load i8*, i8** %4, align 8, !dbg !3544, !tbaa !676
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3544
  %92 = load i8*, i8** %91, align 8, !dbg !3544, !tbaa !676
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3544
  %94 = load i8*, i8** %93, align 8, !dbg !3544, !tbaa !676
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3544
  %96 = load i8*, i8** %95, align 8, !dbg !3544, !tbaa !676
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3544
  %98 = load i8*, i8** %97, align 8, !dbg !3544, !tbaa !676
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3544
  %100 = load i8*, i8** %99, align 8, !dbg !3544, !tbaa !676
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3544
  %102 = load i8*, i8** %101, align 8, !dbg !3544, !tbaa !676
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3544
  %104 = load i8*, i8** %103, align 8, !dbg !3544, !tbaa !676
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3544
  br label %146, !dbg !3545

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #11, !dbg !3546
  %108 = load i8*, i8** %4, align 8, !dbg !3546, !tbaa !676
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3546
  %110 = load i8*, i8** %109, align 8, !dbg !3546, !tbaa !676
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3546
  %112 = load i8*, i8** %111, align 8, !dbg !3546, !tbaa !676
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3546
  %114 = load i8*, i8** %113, align 8, !dbg !3546, !tbaa !676
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3546
  %116 = load i8*, i8** %115, align 8, !dbg !3546, !tbaa !676
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3546
  %118 = load i8*, i8** %117, align 8, !dbg !3546, !tbaa !676
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3546
  %120 = load i8*, i8** %119, align 8, !dbg !3546, !tbaa !676
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3546
  %122 = load i8*, i8** %121, align 8, !dbg !3546, !tbaa !676
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3546
  %124 = load i8*, i8** %123, align 8, !dbg !3546, !tbaa !676
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3546
  br label %146, !dbg !3547

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #11, !dbg !3548
  %128 = load i8*, i8** %4, align 8, !dbg !3548, !tbaa !676
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3548
  %130 = load i8*, i8** %129, align 8, !dbg !3548, !tbaa !676
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3548
  %132 = load i8*, i8** %131, align 8, !dbg !3548, !tbaa !676
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3548
  %134 = load i8*, i8** %133, align 8, !dbg !3548, !tbaa !676
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3548
  %136 = load i8*, i8** %135, align 8, !dbg !3548, !tbaa !676
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3548
  %138 = load i8*, i8** %137, align 8, !dbg !3548, !tbaa !676
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3548
  %140 = load i8*, i8** %139, align 8, !dbg !3548, !tbaa !676
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3548
  %142 = load i8*, i8** %141, align 8, !dbg !3548, !tbaa !676
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3548
  %144 = load i8*, i8** %143, align 8, !dbg !3548, !tbaa !676
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3548
  br label %146, !dbg !3549

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3551 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3555, metadata !669), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3556, metadata !669), !dbg !3562
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3557, metadata !669), !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3558, metadata !669), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3559, metadata !669), !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3560, metadata !669), !dbg !3566
  br label %6, !dbg !3567

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3560, metadata !669), !dbg !3566
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3569
  %9 = load i8*, i8** %8, align 8, !dbg !3569, !tbaa !676
  %10 = icmp eq i8* %9, null, !dbg !3571
  %11 = add i64 %7, 1, !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3560, metadata !669), !dbg !3566
  br i1 %10, label %12, label %6, !dbg !3571, !llvm.loop !3573

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3575
  ret void, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3577 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3588, metadata !669), !dbg !3596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3589, metadata !669), !dbg !3597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3590, metadata !669), !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3591, metadata !669), !dbg !3599
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3592, metadata !669), !dbg !3600
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3601
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3601
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3594, metadata !669), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %11 = load i32, i32* %8, align 8, !dbg !3604
  %12 = icmp ult i32 %11, 41, !dbg !3604
  br i1 %12, label %13, label %18, !dbg !3604

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3604
  %15 = sext i32 %11 to i64, !dbg !3604
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3604
  %17 = add i32 %11, 8, !dbg !3604
  store i32 %17, i32* %8, align 8, !dbg !3604
  br label %21, !dbg !3604

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3604
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3604
  store i8* %20, i8** %10, align 8, !dbg !3604
  br label %21, !dbg !3604

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3604
  %25 = load i8*, i8** %24, align 8, !dbg !3604
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3607
  store i8* %25, i8** %26, align 16, !dbg !3608, !tbaa !676
  %27 = icmp eq i8* %25, null, !dbg !3609
  br i1 %27, label %30, label %28, !dbg !3610

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %29 = icmp ult i32 %22, 41, !dbg !3604
  br i1 %29, label %35, label %32, !dbg !3604

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3611
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3612
  ret void, !dbg !3612

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3604
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3604
  store i8* %34, i8** %10, align 8, !dbg !3604
  br label %40, !dbg !3604

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3604
  %37 = sext i32 %22 to i64, !dbg !3604
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3604
  %39 = add i32 %22, 8, !dbg !3604
  store i32 %39, i32* %8, align 8, !dbg !3604
  br label %40, !dbg !3604

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3604
  %44 = load i8*, i8** %43, align 8, !dbg !3604
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3607
  store i8* %44, i8** %45, align 8, !dbg !3608, !tbaa !676
  %46 = icmp eq i8* %44, null, !dbg !3609
  br i1 %46, label %30, label %47, !dbg !3610

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %48 = icmp ult i32 %41, 41, !dbg !3604
  br i1 %48, label %52, label %49, !dbg !3604

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3604
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3604
  store i8* %51, i8** %10, align 8, !dbg !3604
  br label %57, !dbg !3604

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3604
  %54 = sext i32 %41 to i64, !dbg !3604
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3604
  %56 = add i32 %41, 8, !dbg !3604
  store i32 %56, i32* %8, align 8, !dbg !3604
  br label %57, !dbg !3604

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3604
  %61 = load i8*, i8** %60, align 8, !dbg !3604
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3607
  store i8* %61, i8** %62, align 16, !dbg !3608, !tbaa !676
  %63 = icmp eq i8* %61, null, !dbg !3609
  br i1 %63, label %30, label %64, !dbg !3610

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %65 = icmp ult i32 %58, 41, !dbg !3604
  br i1 %65, label %69, label %66, !dbg !3604

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3604
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3604
  store i8* %68, i8** %10, align 8, !dbg !3604
  br label %74, !dbg !3604

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3604
  %71 = sext i32 %58 to i64, !dbg !3604
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3604
  %73 = add i32 %58, 8, !dbg !3604
  store i32 %73, i32* %8, align 8, !dbg !3604
  br label %74, !dbg !3604

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3604
  %78 = load i8*, i8** %77, align 8, !dbg !3604
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3607
  store i8* %78, i8** %79, align 8, !dbg !3608, !tbaa !676
  %80 = icmp eq i8* %78, null, !dbg !3609
  br i1 %80, label %30, label %81, !dbg !3610

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %82 = icmp ult i32 %75, 41, !dbg !3604
  br i1 %82, label %86, label %83, !dbg !3604

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3604
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3604
  store i8* %85, i8** %10, align 8, !dbg !3604
  br label %91, !dbg !3604

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3604
  %88 = sext i32 %75 to i64, !dbg !3604
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3604
  %90 = add i32 %75, 8, !dbg !3604
  store i32 %90, i32* %8, align 8, !dbg !3604
  br label %91, !dbg !3604

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3604
  %95 = load i8*, i8** %94, align 8, !dbg !3604
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3607
  store i8* %95, i8** %96, align 16, !dbg !3608, !tbaa !676
  %97 = icmp eq i8* %95, null, !dbg !3609
  br i1 %97, label %30, label %98, !dbg !3610

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %99 = icmp ult i32 %92, 41, !dbg !3604
  br i1 %99, label %103, label %100, !dbg !3604

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3604
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3604
  store i8* %102, i8** %10, align 8, !dbg !3604
  br label %108, !dbg !3604

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3604
  %105 = sext i32 %92 to i64, !dbg !3604
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3604
  %107 = add i32 %92, 8, !dbg !3604
  store i32 %107, i32* %8, align 8, !dbg !3604
  br label %108, !dbg !3604

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3604
  %111 = load i8*, i8** %110, align 8, !dbg !3604
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3607
  store i8* %111, i8** %112, align 8, !dbg !3608, !tbaa !676
  %113 = icmp eq i8* %111, null, !dbg !3609
  br i1 %113, label %30, label %114, !dbg !3610

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %115 = load i8*, i8** %10, align 8, !dbg !3604
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3604
  store i8* %116, i8** %10, align 8, !dbg !3604
  %117 = bitcast i8* %115 to i8**, !dbg !3604
  %118 = load i8*, i8** %117, align 8, !dbg !3604
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3607
  store i8* %118, i8** %119, align 16, !dbg !3608, !tbaa !676
  %120 = icmp eq i8* %118, null, !dbg !3609
  br i1 %120, label %30, label %121, !dbg !3610

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %122 = load i8*, i8** %10, align 8, !dbg !3604
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3604
  store i8* %123, i8** %10, align 8, !dbg !3604
  %124 = bitcast i8* %122 to i8**, !dbg !3604
  %125 = load i8*, i8** %124, align 8, !dbg !3604
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3607
  store i8* %125, i8** %126, align 8, !dbg !3608, !tbaa !676
  %127 = icmp eq i8* %125, null, !dbg !3609
  br i1 %127, label %30, label %128, !dbg !3610

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %129 = load i8*, i8** %10, align 8, !dbg !3604
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3604
  store i8* %130, i8** %10, align 8, !dbg !3604
  %131 = bitcast i8* %129 to i8**, !dbg !3604
  %132 = load i8*, i8** %131, align 8, !dbg !3604
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3607
  store i8* %132, i8** %133, align 16, !dbg !3608, !tbaa !676
  %134 = icmp eq i8* %132, null, !dbg !3609
  br i1 %134, label %30, label %135, !dbg !3610

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3593, metadata !669), !dbg !3603
  %136 = load i8*, i8** %10, align 8, !dbg !3604
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3604
  store i8* %137, i8** %10, align 8, !dbg !3604
  %138 = bitcast i8* %136 to i8**, !dbg !3604
  %139 = load i8*, i8** %138, align 8, !dbg !3604
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3607
  store i8* %139, i8** %140, align 8, !dbg !3608, !tbaa !676
  %141 = icmp eq i8* %139, null, !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3593, metadata !669), !dbg !3603
  %142 = select i1 %141, i64 9, i64 10, !dbg !3610
  br label %30, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3613 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3617, metadata !669), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3618, metadata !669), !dbg !3628
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3619, metadata !669), !dbg !3629
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3620, metadata !669), !dbg !3630
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3631
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3631
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3621, metadata !669), !dbg !3632
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3633
  call void @llvm.va_start(i8* nonnull %6), !dbg !3633
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3634
  call void @llvm.va_end(i8* nonnull %6), !dbg !3635
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3636
  ret void, !dbg !3636
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3637 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #11, !dbg !3638
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #11, !dbg !3638
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #11, !dbg !3639
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.98, i64 0, i64 0)) #11, !dbg !3639
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !3640
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3640, !tbaa !676
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3646, metadata !669), !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3647, metadata !669), !dbg !3649
  %3 = udiv i64 9223372036854775807, %1, !dbg !3650
  %4 = icmp ult i64 %3, %0, !dbg !3650
  br i1 %4, label %5, label %6, !dbg !3652

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3653
  unreachable, !dbg !3653

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3655, metadata !669) #11, !dbg !3662
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3664
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3661, metadata !669) #11, !dbg !3665
  %9 = icmp eq i8* %8, null, !dbg !3666
  %10 = icmp ne i64 %7, 0, !dbg !3668
  %11 = and i1 %10, %9, !dbg !3669
  br i1 %11, label %12, label %13, !dbg !3669

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3670
  unreachable, !dbg !3670

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3671
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3656 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3655, metadata !669), !dbg !3672
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3661, metadata !669), !dbg !3674
  %3 = icmp eq i8* %2, null, !dbg !3675
  %4 = icmp ne i64 %0, 0, !dbg !3676
  %5 = and i1 %4, %3, !dbg !3677
  br i1 %5, label %6, label %7, !dbg !3677

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3678
  unreachable, !dbg !3678

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3679
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3680 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3684, metadata !669), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3685, metadata !669), !dbg !3688
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3686, metadata !669), !dbg !3689
  %4 = udiv i64 9223372036854775807, %2, !dbg !3690
  %5 = icmp ult i64 %4, %1, !dbg !3690
  br i1 %5, label %6, label %7, !dbg !3692

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3693
  unreachable, !dbg !3693

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669) #11, !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3700, metadata !669) #11, !dbg !3703
  %9 = icmp eq i64 %8, 0, !dbg !3704
  %10 = icmp ne i8* %0, null, !dbg !3706
  %11 = and i1 %10, %9, !dbg !3707
  br i1 %11, label %12, label %13, !dbg !3707

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3708
  br label %19, !dbg !3710

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3695, metadata !669) #11, !dbg !3701
  %15 = icmp eq i8* %14, null, !dbg !3712
  %16 = icmp ne i64 %8, 0, !dbg !3714
  %17 = and i1 %16, %15, !dbg !3715
  br i1 %17, label %18, label %19, !dbg !3715

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3716
  unreachable, !dbg !3716

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3717
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3696 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3700, metadata !669), !dbg !3719
  %3 = icmp eq i64 %1, 0, !dbg !3720
  %4 = icmp ne i8* %0, null, !dbg !3721
  %5 = and i1 %4, %3, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3722

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3723
  br label %13, !dbg !3724

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3725
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3695, metadata !669), !dbg !3718
  %9 = icmp eq i8* %8, null, !dbg !3726
  %10 = icmp ne i64 %1, 0, !dbg !3727
  %11 = and i1 %10, %9, !dbg !3728
  br i1 %11, label %12, label %13, !dbg !3728

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3729
  unreachable, !dbg !3729

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3730
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !625 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !669), !dbg !3731
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !669), !dbg !3732
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !632, metadata !669), !dbg !3733
  %4 = load i64, i64* %1, align 8, !dbg !3734, !tbaa !1735
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !633, metadata !669), !dbg !3735
  %5 = icmp eq i8* %0, null, !dbg !3736
  br i1 %5, label %6, label %13, !dbg !3738

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3739
  br i1 %7, label %8, label %17, !dbg !3742

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !633, metadata !669), !dbg !3735
  %10 = icmp ugt i64 %2, 128, !dbg !3745
  %11 = zext i1 %10 to i64, !dbg !3745
  %12 = add nuw nsw i64 %9, %11, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !633, metadata !669), !dbg !3735
  br label %17, !dbg !3747

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3748
  %15 = icmp ugt i64 %14, %4, !dbg !3751
  br i1 %15, label %20, label %16, !dbg !3752

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3753
  unreachable, !dbg !3753

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !669), !dbg !3735
  store i64 %18, i64* %1, align 8, !dbg !3754, !tbaa !1735
  %19 = mul i64 %18, %2, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669) #11, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3700, metadata !669) #11, !dbg !3758
  br label %27, !dbg !3759

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3760
  %22 = add i64 %4, 1, !dbg !3761
  %23 = add i64 %22, %21, !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !669), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !669), !dbg !3735
  store i64 %23, i64* %1, align 8, !dbg !3754, !tbaa !1735
  %24 = mul i64 %23, %2, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669) #11, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3700, metadata !669) #11, !dbg !3758
  %25 = icmp eq i64 %24, 0, !dbg !3763
  br i1 %25, label %26, label %27, !dbg !3759

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3764
  br label %34, !dbg !3765

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3695, metadata !669) #11, !dbg !3756
  %30 = icmp eq i8* %29, null, !dbg !3767
  %31 = icmp ne i64 %28, 0, !dbg !3768
  %32 = and i1 %31, %30, !dbg !3769
  br i1 %32, label %33, label %34, !dbg !3769

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3770
  unreachable, !dbg !3770

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3771
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3774, metadata !669), !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3655, metadata !669) #11, !dbg !3776
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3661, metadata !669) #11, !dbg !3779
  %3 = icmp eq i8* %2, null, !dbg !3780
  %4 = icmp ne i64 %0, 0, !dbg !3781
  %5 = and i1 %4, %3, !dbg !3782
  br i1 %5, label %6, label %7, !dbg !3782

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3783
  unreachable, !dbg !3783

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3784
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3789, metadata !669), !dbg !3791
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3790, metadata !669), !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !669) #11, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !669) #11, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !632, metadata !669) #11, !dbg !3796
  %3 = load i64, i64* %1, align 8, !dbg !3797, !tbaa !1735
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  %4 = icmp eq i8* %0, null, !dbg !3799
  br i1 %4, label %5, label %8, !dbg !3800

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  store i64 %7, i64* %1, align 8, !dbg !3803, !tbaa !1735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669) #11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3700, metadata !669) #11, !dbg !3806
  br label %17, !dbg !3807

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3808
  br i1 %9, label %11, label %10, !dbg !3809

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3810
  unreachable, !dbg !3810

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3811
  %13 = add i64 %3, 1, !dbg !3812
  %14 = add i64 %13, %12, !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !669) #11, !dbg !3798
  store i64 %14, i64* %1, align 8, !dbg !3803, !tbaa !1735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !669) #11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3700, metadata !669) #11, !dbg !3806
  %15 = icmp eq i64 %14, 0, !dbg !3814
  br i1 %15, label %16, label %17, !dbg !3807

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3815
  br label %24, !dbg !3816

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3695, metadata !669) #11, !dbg !3804
  %20 = icmp eq i8* %19, null, !dbg !3818
  %21 = icmp ne i64 %18, 0, !dbg !3819
  %22 = and i1 %21, %20, !dbg !3820
  br i1 %22, label %23, label %24, !dbg !3820

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3821
  unreachable, !dbg !3821

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3825, metadata !669), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3655, metadata !669) #11, !dbg !3827
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3661, metadata !669) #11, !dbg !3830
  %3 = icmp eq i8* %2, null, !dbg !3831
  %4 = icmp ne i64 %0, 0, !dbg !3832
  %5 = and i1 %4, %3, !dbg !3833
  br i1 %5, label %6, label %7, !dbg !3833

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3834
  unreachable, !dbg !3834

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3835
  ret i8* %2, !dbg !3836
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3839, metadata !669), !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3840, metadata !669), !dbg !3843
  %3 = udiv i64 9223372036854775807, %1, !dbg !3844
  %4 = icmp ult i64 %3, %0, !dbg !3844
  br i1 %4, label %8, label %5, !dbg !3846

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3841, metadata !669), !dbg !3848
  %7 = icmp eq i8* %6, null, !dbg !3849
  br i1 %7, label %8, label %9, !dbg !3850

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3851
  unreachable, !dbg !3851

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3853 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !669), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3860, metadata !669), !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3655, metadata !669) #11, !dbg !3863
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3865
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3661, metadata !669) #11, !dbg !3866
  %4 = icmp eq i8* %3, null, !dbg !3867
  %5 = icmp ne i64 %1, 0, !dbg !3868
  %6 = and i1 %5, %4, !dbg !3869
  br i1 %6, label %7, label %8, !dbg !3869

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3870
  unreachable, !dbg !3870

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3871
  ret i8* %3, !dbg !3872
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3875, metadata !669), !dbg !3876
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3877
  %3 = add i64 %2, 1, !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !669) #11, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3860, metadata !669) #11, !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3655, metadata !669) #11, !dbg !3882
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3884
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3661, metadata !669) #11, !dbg !3885
  %5 = icmp eq i8* %4, null, !dbg !3886
  %6 = icmp ne i64 %3, 0, !dbg !3887
  %7 = and i1 %6, %5, !dbg !3888
  br i1 %7, label %8, label %9, !dbg !3888

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3889
  unreachable, !dbg !3889

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3890
  ret i8* %4, !dbg !3891
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3892 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3894, !tbaa !742
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #11, !dbg !3895
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #11, !dbg !3896
  tail call void @abort() #15, !dbg !3897
  unreachable, !dbg !3897
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3898 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !669), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3904, metadata !669), !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3905, metadata !669), !dbg !3923
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3906, metadata !669), !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3907, metadata !669), !dbg !3925
  %7 = bitcast i8** %6 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3911, metadata !669), !dbg !3927
  %8 = icmp ult i32 %2, 37, !dbg !3928
  br i1 %8, label %10, label %9, !dbg !3928

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.114, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3928
  unreachable, !dbg !3928

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3931
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3909, metadata !669), !dbg !3932
  %12 = tail call i32* @__errno_location() #17, !dbg !3933
  store i32 0, i32* %12, align 4, !dbg !3934, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3912, metadata !669), !dbg !3935
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3915, metadata !3936), !dbg !3937
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3938
  %14 = load i16*, i16** %13, align 8, !tbaa !676
  br label %15, !dbg !3939

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3915, metadata !669), !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3912, metadata !669), !dbg !3935
  %18 = zext i8 %17 to i64, !dbg !3938
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3938
  %20 = load i16, i16* %19, align 2, !dbg !3938, !tbaa !2224
  %21 = and i16 %20, 8192, !dbg !3938
  %22 = icmp eq i16 %21, 0, !dbg !3939
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3940
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3912, metadata !669), !dbg !3935
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3915, metadata !3936), !dbg !3937
  br i1 %22, label %24, label %15, !dbg !3939, !llvm.loop !3941

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3931
  %26 = icmp eq i8 %17, 45, !dbg !3943
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3945, metadata !669) #11, !dbg !3955
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3953, metadata !669) #11, !dbg !3955
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3954, metadata !669) #11, !dbg !3955
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3910, metadata !669), !dbg !3958
  %29 = load i8*, i8** %25, align 8, !dbg !3959, !tbaa !676
  %30 = icmp eq i8* %29, %0, !dbg !3961
  br i1 %30, label %31, label %40, !dbg !3962

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3963
  br i1 %32, label %265, label %33, !dbg !3966

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3967, !tbaa !881
  %35 = icmp eq i8 %34, 0, !dbg !3967
  br i1 %35, label %265, label %36, !dbg !3968

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3967
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3969
  %39 = icmp eq i8* %38, null, !dbg !3969
  br i1 %39, label %265, label %47, !dbg !3970

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3971, !tbaa !742
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3973

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3911, metadata !669), !dbg !3927
  br label %43, !dbg !3974

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3911, metadata !669), !dbg !3927
  %45 = icmp eq i8* %4, null, !dbg !3976
  br i1 %45, label %46, label %47, !dbg !3978

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3910, metadata !669), !dbg !3958
  store i64 %28, i64* %3, align 8, !dbg !3979, !tbaa !1735
  br label %265, !dbg !3981

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3982, !tbaa !881
  %51 = sext i8 %50 to i32, !dbg !3982
  %52 = icmp eq i8 %50, 0, !dbg !3983
  br i1 %52, label %262, label %53, !dbg !3984

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3916, metadata !669), !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3919, metadata !669), !dbg !3986
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3987
  %55 = icmp eq i8* %54, null, !dbg !3987
  br i1 %55, label %56, label %58, !dbg !3989

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3910, metadata !669), !dbg !3958
  store i64 %49, i64* %3, align 8, !dbg !3990, !tbaa !1735
  %57 = or i32 %48, 2, !dbg !3992
  br label %265, !dbg !3993

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
  ], !dbg !3994

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3995
  %61 = icmp eq i8* %60, null, !dbg !3995
  br i1 %61, label %72, label %62, !dbg !3998

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3999
  %64 = load i8, i8* %63, align 1, !dbg !3999, !tbaa !881
  %65 = sext i8 %64 to i32, !dbg !3999
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4000

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4001
  %68 = load i8, i8* %67, align 1, !dbg !4001, !tbaa !881
  %69 = icmp eq i8 %68, 66, !dbg !4004
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3919, metadata !669), !dbg !3986
  %70 = select i1 %69, i64 3, i64 1, !dbg !4005
  br label %72, !dbg !4005

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3916, metadata !669), !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3919, metadata !669), !dbg !3986
  br label %72, !dbg !4006

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
  ], !dbg !4007

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4008, metadata !669), !dbg !4014
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4017
  %77 = shl i64 %49, 9, !dbg !4019
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4020
  %79 = zext i1 %76 to i32, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3920, metadata !669), !dbg !4021
  br label %253, !dbg !4022

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4008, metadata !669), !dbg !4023
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4025
  %82 = shl i64 %49, 10, !dbg !4026
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4027
  %84 = zext i1 %81 to i32, !dbg !4027
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3920, metadata !669), !dbg !4021
  br label %253, !dbg !4028

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %87 = icmp ult i64 %86, %49, !dbg !4040
  %88 = mul i64 %49, %73, !dbg !4042
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4043
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %90 = icmp ult i64 %86, %89, !dbg !4040
  %91 = mul i64 %89, %73, !dbg !4042
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4043
  %93 = or i1 %87, %90, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %94 = icmp ult i64 %86, %92, !dbg !4040
  %95 = mul i64 %92, %73, !dbg !4042
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4043
  %97 = or i1 %93, %94, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %98 = icmp ult i64 %86, %96, !dbg !4040
  %99 = mul i64 %96, %73, !dbg !4042
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4043
  %101 = or i1 %97, %98, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %102 = icmp ult i64 %86, %100, !dbg !4040
  %103 = mul i64 %100, %73, !dbg !4042
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4043
  %105 = or i1 %101, %102, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4039
  %106 = icmp ult i64 %86, %104, !dbg !4040
  %107 = mul i64 %104, %73, !dbg !4042
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4043
  %109 = or i1 %105, %106, !dbg !4044
  %110 = zext i1 %109 to i32, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4037
  br label %253, !dbg !4045

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4046
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4048
  %113 = icmp ult i64 %112, %49, !dbg !4049
  %114 = mul i64 %49, %73, !dbg !4051
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4052
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4048
  %116 = icmp ult i64 %112, %115, !dbg !4049
  %117 = mul i64 %115, %73, !dbg !4051
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4052
  %119 = or i1 %113, %116, !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4048
  %120 = icmp ult i64 %112, %118, !dbg !4049
  %121 = mul i64 %118, %73, !dbg !4051
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4052
  %123 = or i1 %119, %120, !dbg !4053
  %124 = zext i1 %123 to i32, !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4046
  br label %253, !dbg !4045

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4054
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4054
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4029, metadata !669), !dbg !4054
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4056
  %127 = icmp ult i64 %126, %49, !dbg !4057
  %128 = mul i64 %49, %73, !dbg !4059
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4060
  %130 = zext i1 %127 to i32, !dbg !4060
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4036, metadata !669), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4036, metadata !669), !dbg !4056
  br label %253, !dbg !4045

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4063
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4063
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4061
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4063
  %133 = icmp ult i64 %132, %49, !dbg !4064
  %134 = mul i64 %49, %73, !dbg !4066
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4063
  %136 = icmp ult i64 %132, %135, !dbg !4064
  %137 = mul i64 %135, %73, !dbg !4066
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4067
  %139 = or i1 %133, %136, !dbg !4068
  %140 = zext i1 %139 to i32, !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4029, metadata !669), !dbg !4061
  br label %253, !dbg !4045

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  %143 = icmp ult i64 %142, %49, !dbg !4072
  %144 = mul i64 %49, %73, !dbg !4074
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4075
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  %146 = icmp ult i64 %142, %145, !dbg !4072
  %147 = mul i64 %145, %73, !dbg !4074
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4075
  %149 = or i1 %143, %146, !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  %150 = icmp ult i64 %142, %148, !dbg !4072
  %151 = mul i64 %148, %73, !dbg !4074
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4075
  %153 = or i1 %149, %150, !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  %154 = icmp ult i64 %142, %152, !dbg !4072
  %155 = mul i64 %152, %73, !dbg !4074
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4075
  %157 = or i1 %153, %154, !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4071
  %158 = icmp ult i64 %142, %156, !dbg !4072
  %159 = mul i64 %156, %73, !dbg !4074
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4075
  %161 = or i1 %157, %158, !dbg !4076
  %162 = zext i1 %161 to i32, !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4069
  br label %253, !dbg !4045

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  %165 = icmp ult i64 %164, %49, !dbg !4080
  %166 = mul i64 %49, %73, !dbg !4082
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  %168 = icmp ult i64 %164, %167, !dbg !4080
  %169 = mul i64 %167, %73, !dbg !4082
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4083
  %171 = or i1 %165, %168, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  %172 = icmp ult i64 %164, %170, !dbg !4080
  %173 = mul i64 %170, %73, !dbg !4082
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4083
  %175 = or i1 %171, %172, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4079
  %176 = icmp ult i64 %164, %174, !dbg !4080
  %177 = mul i64 %174, %73, !dbg !4082
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4083
  %179 = or i1 %175, %176, !dbg !4084
  %180 = zext i1 %179 to i32, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4029, metadata !669), !dbg !4077
  br label %253, !dbg !4045

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4008, metadata !669), !dbg !4085
  %182 = icmp slt i64 %49, 0, !dbg !4087
  %183 = shl i64 %49, 1, !dbg !4088
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4089
  %185 = lshr i64 %49, 63, !dbg !4089
  %186 = trunc i64 %185 to i32, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3920, metadata !669), !dbg !4021
  br label %253, !dbg !4090

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %189 = icmp ult i64 %188, %49, !dbg !4094
  %190 = mul i64 %49, %73, !dbg !4096
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %192 = icmp ult i64 %188, %191, !dbg !4094
  %193 = mul i64 %191, %73, !dbg !4096
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4097
  %195 = or i1 %189, %192, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %196 = icmp ult i64 %188, %194, !dbg !4094
  %197 = mul i64 %194, %73, !dbg !4096
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4097
  %199 = or i1 %195, %196, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %200 = icmp ult i64 %188, %198, !dbg !4094
  %201 = mul i64 %198, %73, !dbg !4096
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4097
  %203 = or i1 %199, %200, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %204 = icmp ult i64 %188, %202, !dbg !4094
  %205 = mul i64 %202, %73, !dbg !4096
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4097
  %207 = or i1 %203, %204, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %208 = icmp ult i64 %188, %206, !dbg !4094
  %209 = mul i64 %206, %73, !dbg !4096
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4097
  %211 = or i1 %207, %208, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %212 = icmp ult i64 %188, %210, !dbg !4094
  %213 = mul i64 %210, %73, !dbg !4096
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4097
  %215 = or i1 %211, %212, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4093
  %216 = icmp ult i64 %188, %214, !dbg !4094
  %217 = mul i64 %214, %73, !dbg !4096
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4097
  %219 = or i1 %215, %216, !dbg !4098
  %220 = zext i1 %219 to i32, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4091
  br label %253, !dbg !4045

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %223 = icmp ult i64 %222, %49, !dbg !4102
  %224 = mul i64 %49, %73, !dbg !4104
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4105
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %226 = icmp ult i64 %222, %225, !dbg !4102
  %227 = mul i64 %225, %73, !dbg !4104
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4105
  %229 = or i1 %223, %226, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %230 = icmp ult i64 %222, %228, !dbg !4102
  %231 = mul i64 %228, %73, !dbg !4104
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4105
  %233 = or i1 %229, %230, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %234 = icmp ult i64 %222, %232, !dbg !4102
  %235 = mul i64 %232, %73, !dbg !4104
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4105
  %237 = or i1 %233, %234, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %238 = icmp ult i64 %222, %236, !dbg !4102
  %239 = mul i64 %236, %73, !dbg !4104
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4105
  %241 = or i1 %237, %238, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %242 = icmp ult i64 %222, %240, !dbg !4102
  %243 = mul i64 %240, %73, !dbg !4104
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4105
  %245 = or i1 %241, %242, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4036, metadata !669), !dbg !4101
  %246 = icmp ult i64 %222, %244, !dbg !4102
  %247 = mul i64 %244, %73, !dbg !4104
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4105
  %249 = or i1 %245, %246, !dbg !4106
  %250 = zext i1 %249 to i32, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4029, metadata !669), !dbg !4099
  br label %253, !dbg !4045

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3910, metadata !669), !dbg !3958
  store i64 %49, i64* %3, align 8, !dbg !4107, !tbaa !1735
  %252 = or i32 %48, 2, !dbg !4108
  br label %265, !dbg !4109

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3920, metadata !669), !dbg !4021
  %256 = or i32 %255, %48, !dbg !4045
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3911, metadata !669), !dbg !3927
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4110
  store i8* %257, i8** %25, align 8, !dbg !4110, !tbaa !676
  %258 = load i8, i8* %257, align 1, !dbg !4111, !tbaa !881
  %259 = icmp eq i8 %258, 0, !dbg !4111
  %260 = or i32 %256, 2, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3911, metadata !669), !dbg !3927
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4114
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3911, metadata !669), !dbg !3927
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3911, metadata !669), !dbg !3927
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3911, metadata !669), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3910, metadata !669), !dbg !3958
  store i64 %263, i64* %3, align 8, !dbg !4115, !tbaa !1735
  br label %265, !dbg !4116

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4117
  ret i32 %266, !dbg !4117
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4118 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4121, metadata !669), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4122, metadata !669), !dbg !4128
  %3 = icmp eq i64 %0, 0, !dbg !4129
  %4 = icmp eq i64 %1, 0, !dbg !4130
  %5 = or i1 %3, %4, !dbg !4131
  br i1 %5, label %12, label %6, !dbg !4131

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4132
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4124, metadata !669), !dbg !4133
  %8 = udiv i64 %7, %1, !dbg !4134
  %9 = icmp eq i64 %8, %0, !dbg !4136
  br i1 %9, label %12, label %10, !dbg !4137

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4138
  store i32 12, i32* %11, align 4, !dbg !4140, !tbaa !742
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4121, metadata !669), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4122, metadata !669), !dbg !4128
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4141
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4123, metadata !669), !dbg !4142
  br label %16, !dbg !4143

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4144
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4145 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4190, metadata !669), !dbg !4194
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !669), !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4193, metadata !669), !dbg !4196
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4192, metadata !669), !dbg !4198
  %3 = icmp slt i32 %2, 0, !dbg !4199
  br i1 %3, label %4, label %6, !dbg !4201

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4202
  br label %24, !dbg !4203

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4204
  %8 = icmp eq i32 %7, 0, !dbg !4204
  br i1 %8, label %13, label %9, !dbg !4206

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4207
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4208
  %12 = icmp eq i64 %11, -1, !dbg !4209
  br i1 %12, label %16, label %13, !dbg !4210

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4211
  %15 = icmp eq i32 %14, 0, !dbg !4211
  br i1 %15, label %16, label %18, !dbg !4212

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4191, metadata !669), !dbg !4195
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4193, metadata !669), !dbg !4196
  br label %24, !dbg !4214

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4215
  %20 = load i32, i32* %19, align 4, !dbg !4215, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4191, metadata !669), !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4191, metadata !669), !dbg !4195
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4193, metadata !669), !dbg !4196
  %22 = icmp eq i32 %20, 0, !dbg !4216
  br i1 %22, label %24, label %23, !dbg !4214

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4218, !tbaa !742
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4193, metadata !669), !dbg !4196
  br label %24, !dbg !4220

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4221
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4222 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4267, metadata !669), !dbg !4268
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4269
  br i1 %2, label %6, label %3, !dbg !4271

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4272
  %5 = icmp eq i32 %4, 0, !dbg !4272
  br i1 %5, label %6, label %8, !dbg !4273

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4274
  br label %17, !dbg !4275

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4276, metadata !669) #11, !dbg !4281
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4283
  %10 = load i32, i32* %9, align 8, !dbg !4283, !tbaa !900
  %11 = and i32 %10, 256, !dbg !4285
  %12 = icmp eq i32 %11, 0, !dbg !4285
  br i1 %12, label %15, label %13, !dbg !4286

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4287
  br label %15, !dbg !4287

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4288
  br label %17, !dbg !4289

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4290
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4291 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4336, metadata !669), !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4337, metadata !669), !dbg !4343
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4338, metadata !669), !dbg !4344
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4345
  %5 = load i8*, i8** %4, align 8, !dbg !4345, !tbaa !879
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4346
  %7 = load i8*, i8** %6, align 8, !dbg !4346, !tbaa !875
  %8 = icmp eq i8* %5, %7, !dbg !4347
  br i1 %8, label %9, label %28, !dbg !4348

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4349
  %11 = load i8*, i8** %10, align 8, !dbg !4349, !tbaa !933
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4350
  %13 = load i8*, i8** %12, align 8, !dbg !4350, !tbaa !4351
  %14 = icmp eq i8* %11, %13, !dbg !4352
  br i1 %14, label %15, label %28, !dbg !4353

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4354
  %17 = load i8*, i8** %16, align 8, !dbg !4354, !tbaa !4355
  %18 = icmp eq i8* %17, null, !dbg !4356
  br i1 %18, label %19, label %28, !dbg !4357

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4358
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4359
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4339, metadata !669), !dbg !4360
  %22 = icmp eq i64 %21, -1, !dbg !4361
  br i1 %22, label %30, label %23, !dbg !4363

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4364
  %25 = load i32, i32* %24, align 8, !dbg !4365, !tbaa !900
  %26 = and i32 %25, -17, !dbg !4365
  store i32 %26, i32* %24, align 8, !dbg !4365, !tbaa !900
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4366
  store i64 %21, i64* %27, align 8, !dbg !4367, !tbaa !4368
  br label %30, !dbg !4369

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4370
  br label %30, !dbg !4371

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4372
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4373 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4390, metadata !669), !dbg !4399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4391, metadata !669), !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4392, metadata !669), !dbg !4401
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4393, metadata !669), !dbg !4402
  %6 = bitcast i32* %5 to i8*, !dbg !4403
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4403
  %7 = icmp eq i32* %0, null, !dbg !4404
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4390, metadata !669), !dbg !4399
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4406
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4390, metadata !669), !dbg !4399
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4394, metadata !669), !dbg !4408
  %10 = icmp ugt i64 %9, -3, !dbg !4409
  %11 = icmp ne i64 %2, 0, !dbg !4410
  %12 = and i1 %11, %10, !dbg !4411
  br i1 %12, label %13, label %18, !dbg !4411

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4412
  br i1 %14, label %18, label %15, !dbg !4413

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4414, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4396, metadata !669), !dbg !4415
  %17 = zext i8 %16 to i32, !dbg !4416
  store i32 %17, i32* %8, align 4, !dbg !4417, !tbaa !742
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4418
  ret i64 %19, !dbg !4418
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !4419 {
  tail call void @usage(i32 1) #11, !dbg !4420
  ret void, !dbg !4421
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #12 !dbg !4422 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4427, metadata !669), !dbg !4435
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4428, metadata !669), !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4429, metadata !669), !dbg !4437
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4430, metadata !669), !dbg !4438
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4433, metadata !669), !dbg !4439
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4434, metadata !669), !dbg !4440
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !4441
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4432, metadata !669), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4431, metadata !669), !dbg !4443
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4434, metadata !669), !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4433, metadata !669), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4431, metadata !669), !dbg !4443
  %6 = load i8*, i8** %1, align 8, !dbg !4444, !tbaa !676
  %7 = icmp eq i8* %6, null, !dbg !4447
  br i1 %7, label %38, label %8, !dbg !4447

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !4447

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4431, metadata !669), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4433, metadata !669), !dbg !4439
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !4434, metadata !669), !dbg !4440
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !4448
  %16 = icmp eq i32 %15, 0, !dbg !4448
  br i1 %16, label %17, label %31, !dbg !4451

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !4452
  %19 = icmp eq i64 %18, %5, !dbg !4455
  br i1 %19, label %44, label %20, !dbg !4456

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !4457
  br i1 %21, label %31, label %22, !dbg !4459

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !4460

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !4463
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !4464
  %26 = mul i64 %14, %3, !dbg !4465
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !4466
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14, !dbg !4467
  %29 = icmp eq i32 %28, 0, !dbg !4467
  br i1 %29, label %31, label %30, !dbg !4468

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4434, metadata !669), !dbg !4440
  br label %31, !dbg !4469

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !4434, metadata !669), !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4433, metadata !669), !dbg !4439
  %34 = add i64 %14, 1, !dbg !4471
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4431, metadata !669), !dbg !4443
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !4434, metadata !669), !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4433, metadata !669), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4431, metadata !669), !dbg !4443
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !4444
  %36 = load i8*, i8** %35, align 8, !dbg !4444, !tbaa !676
  %37 = icmp eq i8* %36, null, !dbg !4447
  br i1 %37, label %38, label %10, !dbg !4447, !llvm.loop !4472

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ]
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ]
  %41 = and i8 %40, 1, !dbg !4474
  %42 = icmp eq i8 %41, 0, !dbg !4474
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !4476
  br label %44, !dbg !4476

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ]
  ret i64 %45, !dbg !4477
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !4478 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4482, metadata !669), !dbg !4486
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4483, metadata !669), !dbg !4487
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4484, metadata !669), !dbg !4488
  %4 = icmp eq i64 %2, -1, !dbg !4489
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.128, i64 0, i64 0), !dbg !4490
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11, !dbg !4491
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4485, metadata !669), !dbg !4492
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !4493
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !4494
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11, !dbg !4495
  ret void, !dbg !4496
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4497 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !4501, metadata !669), !dbg !4506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4502, metadata !669), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4503, metadata !669), !dbg !4508
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4505, metadata !669), !dbg !4509
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #11, !dbg !4510
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4510, !tbaa !676
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11, !dbg !4510
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4504, metadata !669), !dbg !4511
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4505, metadata !669), !dbg !4509
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4504, metadata !669), !dbg !4511
  %7 = load i8*, i8** %0, align 8, !dbg !4512, !tbaa !676
  %8 = icmp eq i8* %7, null, !dbg !4515
  br i1 %8, label %34, label %9, !dbg !4515

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !4516

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4504, metadata !669), !dbg !4511
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4505, metadata !669), !dbg !4509
  %14 = icmp eq i64 %13, 0, !dbg !4516
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !4518

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14, !dbg !4519
  %19 = icmp eq i32 %18, 0, !dbg !4519
  br i1 %19, label %24, label %20, !dbg !4520

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4521, !tbaa !676
  %22 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !4521
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.130, i64 0, i64 0), i8* %22) #11, !dbg !4521
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4505, metadata !669), !dbg !4509
  br label %28, !dbg !4523

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4524, !tbaa !676
  %26 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !4524
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.131, i64 0, i64 0), i8* %26) #11, !dbg !4524
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4505, metadata !669), !dbg !4509
  %30 = add i64 %13, 1, !dbg !4526
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !4504, metadata !669), !dbg !4511
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4505, metadata !669), !dbg !4509
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !4504, metadata !669), !dbg !4511
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !4512
  %32 = load i8*, i8** %31, align 8, !dbg !4512, !tbaa !676
  %33 = icmp eq i8* %32, null, !dbg !4515
  br i1 %33, label %34, label %10, !dbg !4515, !llvm.loop !4527

; <label>:34:                                     ; preds = %28, %3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4529, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !4530, metadata !669) #11, !dbg !4576
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %35, i64 0, metadata !4575, metadata !669) #11, !dbg !4578
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 5, !dbg !4579
  %37 = load i8*, i8** %36, align 8, !dbg !4579, !tbaa !933
  %38 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 6, !dbg !4579
  %39 = load i8*, i8** %38, align 8, !dbg !4579, !tbaa !934
  %40 = icmp ult i8* %37, %39, !dbg !4579
  br i1 %40, label %43, label %41, !dbg !4579, !prof !880

; <label>:41:                                     ; preds = %34
  %42 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %35, i32 10) #11, !dbg !4579
  br label %45, !dbg !4579

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !4579
  store i8* %44, i8** %36, align 8, !dbg !4579, !tbaa !933
  store i8 10, i8* %37, align 1, !dbg !4579, !tbaa !881
  br label %45, !dbg !4579

; <label>:45:                                     ; preds = %41, %43
  ret void, !dbg !4580
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !4581 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4585, metadata !669), !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4586, metadata !669), !dbg !4593
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !4587, metadata !669), !dbg !4594
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4588, metadata !669), !dbg !4595
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4589, metadata !669), !dbg !4596
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !4590, metadata !669), !dbg !4597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4427, metadata !669) #11, !dbg !4598
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !4428, metadata !669) #11, !dbg !4600
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4429, metadata !669) #11, !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4430, metadata !669) #11, !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4433, metadata !669) #11, !dbg !4603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !4605
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4432, metadata !669) #11, !dbg !4606
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4431, metadata !669) #11, !dbg !4607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4433, metadata !669) #11, !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4431, metadata !669) #11, !dbg !4607
  %8 = load i8*, i8** %2, align 8, !dbg !4608, !tbaa !676
  %9 = icmp eq i8* %8, null, !dbg !4609
  br i1 %9, label %48, label %10, !dbg !4609

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !4609

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !4431, metadata !669) #11, !dbg !4607
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4433, metadata !669) #11, !dbg !4603
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !4610
  %18 = icmp eq i32 %17, 0, !dbg !4610
  br i1 %18, label %19, label %33, !dbg !4611

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !4612
  %21 = icmp eq i64 %20, %7, !dbg !4613
  br i1 %21, label %43, label %22, !dbg !4614

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !4615
  br i1 %23, label %33, label %24, !dbg !4616

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !4617

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !4618
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !4619
  %28 = mul i64 %16, %4, !dbg !4620
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !4621
  %30 = tail call i32 @memcmp(i8* %27, i8* %29, i64 %4) #14, !dbg !4622
  %31 = icmp eq i32 %30, 0, !dbg !4622
  br i1 %31, label %33, label %32, !dbg !4623

; <label>:32:                                     ; preds = %25, %24
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  br label %33, !dbg !4624

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ]
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4433, metadata !669) #11, !dbg !4603
  %36 = add i64 %16, 1, !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4431, metadata !669) #11, !dbg !4607
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !4434, metadata !669) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4433, metadata !669) #11, !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4431, metadata !669) #11, !dbg !4607
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !4608
  %38 = load i8*, i8** %37, align 8, !dbg !4608, !tbaa !676
  %39 = icmp eq i8* %38, null, !dbg !4609
  br i1 %39, label %40, label %12, !dbg !4609, !llvm.loop !4472

; <label>:40:                                     ; preds = %33
  %41 = and i8 %35, 1, !dbg !4626
  %42 = icmp eq i8 %41, 0, !dbg !4626
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !4591, metadata !669), !dbg !4627
  %45 = icmp sgt i64 %44, -1, !dbg !4628
  br i1 %45, label %54, label %46, !dbg !4630

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4482, metadata !669) #11, !dbg !4631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4483, metadata !669) #11, !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !4484, metadata !669) #11, !dbg !4634
  %47 = icmp eq i64 %44, -1, !dbg !4635
  br i1 %47, label %48, label %49, !dbg !4636

; <label>:48:                                     ; preds = %6, %46
  br label %49, !dbg !4636

; <label>:49:                                     ; preds = %40, %46, %48
  %50 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i64 0, i64 0), %48 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.128, i64 0, i64 0), %46 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.128, i64 0, i64 0), %40 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* nonnull %50, i32 5) #11, !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4485, metadata !669) #11, !dbg !4638
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !4639
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !4640
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #11, !dbg !4641
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !4642
  tail call void %5() #11, !dbg !4643
  br label %54, !dbg !4644

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ]
  ret i64 %55, !dbg !4645
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #12 !dbg !4646 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4650, metadata !669), !dbg !4655
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4651, metadata !669), !dbg !4656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4652, metadata !669), !dbg !4657
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4653, metadata !669), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4654, metadata !669), !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4654, metadata !669), !dbg !4659
  %5 = load i8*, i8** %1, align 8, !dbg !4660, !tbaa !676
  %6 = icmp eq i8* %5, null, !dbg !4663
  br i1 %6, label %20, label %7, !dbg !4663

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !4664

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4654, metadata !669), !dbg !4659
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !4660
  %10 = load i8*, i8** %9, align 8, !dbg !4660, !tbaa !676
  %11 = icmp eq i8* %10, null, !dbg !4663
  br i1 %11, label %20, label %12, !dbg !4663, !llvm.loop !4666

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4654, metadata !669), !dbg !4659
  %15 = mul i64 %14, %3, !dbg !4664
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !4668
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14, !dbg !4669
  %18 = icmp eq i32 %17, 0, !dbg !4669
  %19 = add i64 %14, 1, !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4654, metadata !669), !dbg !4659
  br i1 %18, label %20, label %8, !dbg !4671

; <label>:20:                                     ; preds = %12, %8, %4
  %21 = phi i8* [ null, %4 ], [ null, %8 ], [ %13, %12 ]
  ret i8* %21, !dbg !4672
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4673 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4718, metadata !669), !dbg !4723
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4724
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4725, metadata !669), !dbg !4728
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4730
  %4 = load i32, i32* %3, align 8, !dbg !4730, !tbaa !900
  %5 = and i32 %4, 32, !dbg !4730
  %6 = icmp eq i32 %5, 0, !dbg !4731
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4732
  %8 = icmp ne i32 %7, 0, !dbg !4733
  br i1 %6, label %9, label %19, !dbg !4734

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4736
  %11 = xor i1 %8, true, !dbg !4737
  %12 = or i1 %10, %11, !dbg !4737
  %13 = sext i1 %8 to i32, !dbg !4737
  br i1 %12, label %22, label %14, !dbg !4737

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4738
  %16 = load i32, i32* %15, align 4, !dbg !4738, !tbaa !742
  %17 = icmp ne i32 %16, 9, !dbg !4739
  %18 = sext i1 %17 to i32, !dbg !4740
  br label %22, !dbg !4740

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4741

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4743
  store i32 0, i32* %21, align 4, !dbg !4745, !tbaa !742
  br label %22, !dbg !4743

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4746
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4747 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4752, metadata !669), !dbg !4755
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4753, metadata !669), !dbg !4756
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4754, metadata !669), !dbg !4758
  %3 = icmp eq i8* %2, null, !dbg !4759
  br i1 %3, label %11, label %4, !dbg !4761

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #14, !dbg !4762
  %6 = icmp eq i32 %5, 0, !dbg !4767
  br i1 %6, label %10, label %7, !dbg !4768

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #14, !dbg !4769
  %9 = icmp eq i32 %8, 0, !dbg !4770
  br i1 %9, label %10, label %11, !dbg !4771

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4753, metadata !669), !dbg !4756
  br label %11, !dbg !4772

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4773
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4774 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4779, metadata !669), !dbg !4853
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4846, metadata !669), !dbg !4856
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4857
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4777, metadata !669), !dbg !4858
  %4 = icmp eq i8* %3, null, !dbg !4859
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), i8* %3, !dbg !4861
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4777, metadata !669), !dbg !4858
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4862, !tbaa !676
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4793, metadata !669) #11, !dbg !4863
  %7 = icmp eq i8* %6, null, !dbg !4864
  br i1 %7, label %8, label %123, !dbg !4865

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.141, i64 0, i64 0)) #11, !dbg !4866
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4794, metadata !669) #11, !dbg !4867
  %10 = icmp eq i8* %9, null, !dbg !4868
  br i1 %10, label %14, label %11, !dbg !4870

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4871, !tbaa !881
  %13 = icmp eq i8 %12, 0, !dbg !4872
  br i1 %13, label %14, label %15, !dbg !4873

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4874

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.142, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4794, metadata !669) #11, !dbg !4867
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4875
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4797, metadata !669) #11, !dbg !4876
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4799, metadata !669) #11, !dbg !4877
  %18 = icmp eq i64 %17, 0, !dbg !4878
  br i1 %18, label %24, label %19, !dbg !4879

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4880
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4880
  %22 = load i8, i8* %21, align 1, !dbg !4880, !tbaa !881
  %23 = icmp ne i8 %22, 47, !dbg !4880
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4881
  %27 = add i64 %17, 14, !dbg !4882
  %28 = add i64 %27, %26, !dbg !4883
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4884
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4796, metadata !669) #11, !dbg !4885
  %30 = icmp eq i8* %29, null, !dbg !4886
  br i1 %30, label %121, label %31, !dbg !4886

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4887
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4890

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4891, !tbaa !881
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4893
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4894
  br label %37, !dbg !4895

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4893
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4894
  br label %37, !dbg !4895

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4896
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4801, metadata !669) #11, !dbg !4897
  %39 = icmp slt i32 %38, 0, !dbg !4898
  br i1 %39, label %119, label %40, !dbg !4899

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.144, i64 0, i64 0)) #11, !dbg !4900
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4802, metadata !669) #11, !dbg !4901
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4902
  br i1 %42, label %43, label %45, !dbg !4903

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4904
  br label %119, !dbg !4906

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4909

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4910

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4910
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4911
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4912, metadata !669) #11, !dbg !4917
  %54 = load i8*, i8** %48, align 8, !dbg !4919, !tbaa !875
  %55 = load i8*, i8** %49, align 8, !dbg !4919, !tbaa !879
  %56 = icmp ult i8* %54, %55, !dbg !4919
  br i1 %56, label %59, label %57, !dbg !4919, !prof !880

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4919
  br label %63, !dbg !4919

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4919
  store i8* %60, i8** %48, align 8, !dbg !4919, !tbaa !875
  %61 = load i8, i8* %54, align 1, !dbg !4919, !tbaa !881
  %62 = zext i8 %61 to i32, !dbg !4919
  br label %63, !dbg !4919

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4919
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4845, metadata !669) #11, !dbg !4920
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4921, !llvm.loop !4922

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4927

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4912, metadata !669) #11, !dbg !4929
  %67 = load i8*, i8** %48, align 8, !dbg !4927, !tbaa !875
  %68 = load i8*, i8** %49, align 8, !dbg !4927, !tbaa !879
  %69 = icmp ult i8* %67, %68, !dbg !4927
  br i1 %69, label %72, label %70, !dbg !4927, !prof !880

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4927
  br label %76, !dbg !4927

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4927
  store i8* %73, i8** %48, align 8, !dbg !4927, !tbaa !875
  %74 = load i8, i8* %67, align 1, !dbg !4927, !tbaa !881
  %75 = zext i8 %74 to i32, !dbg !4927
  br label %76, !dbg !4927

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4927
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4845, metadata !669) #11, !dbg !4920
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4930, !llvm.loop !4931

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4934
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.145, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4935
  %81 = icmp slt i32 %80, 2, !dbg !4937
  br i1 %81, label %112, label %82, !dbg !4938

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4939
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4850, metadata !669) #11, !dbg !4940
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4941
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4851, metadata !669) #11, !dbg !4942
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4852, metadata !669) #11, !dbg !4943
  %85 = icmp eq i64 %51, 0, !dbg !4944
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4946

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  %90 = add i64 %87, 2, !dbg !4947
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  br label %96, !dbg !4950

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4951
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  %94 = add i64 %93, 1, !dbg !4953
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4954
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  %99 = icmp eq i8* %98, null, !dbg !4955
  br i1 %99, label %100, label %102, !dbg !4957

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  call void @free(i8* %52) #11, !dbg !4958
  br label %112, !dbg !4960

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4961
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4961
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4962
  %104 = xor i64 %84, -1, !dbg !4963
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4963
  %106 = xor i64 %83, -1, !dbg !4964
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4964
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4965, metadata !669) #11, !dbg !4973
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4972, metadata !669) #11, !dbg !4973
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4975
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4976
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4965, metadata !669) #11, !dbg !4977
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4972, metadata !669) #11, !dbg !4977
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4979
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4980
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4843, metadata !669) #11, !dbg !4907
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4844, metadata !669) #11, !dbg !4908
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4961
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4961
  br label %50, !dbg !4981, !llvm.loop !4931

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4961
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4961
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4982
  %116 = icmp eq i64 %113, 0, !dbg !4983
  br i1 %116, label %119, label %117, !dbg !4985

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4986
  store i8 0, i8* %118, align 1, !dbg !4988, !tbaa !881
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4793, metadata !669) #11, !dbg !4863
  call void @free(i8* %29) #11, !dbg !4989
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4793, metadata !669) #11, !dbg !4863
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4990, !tbaa !676
  br label %123, !dbg !4991

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4793, metadata !669) #11, !dbg !4863
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4778, metadata !669), !dbg !4992
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4778, metadata !669), !dbg !4992
  %125 = load i8, i8* %124, align 1, !dbg !4993, !tbaa !881
  %126 = icmp eq i8 %125, 0, !dbg !4995
  br i1 %126, label %152, label %127, !dbg !4996

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4997

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4778, metadata !669), !dbg !4992
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4997
  %132 = icmp eq i32 %131, 0, !dbg !4999
  br i1 %132, label %139, label %133, !dbg !5000

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5001
  br i1 %134, label %135, label %143, !dbg !5002

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5003
  %137 = load i8, i8* %136, align 1, !dbg !5003, !tbaa !881
  %138 = icmp eq i8 %137, 0, !dbg !5004
  br i1 %138, label %139, label %143, !dbg !5005

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5006
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5008
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5009
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4777, metadata !669), !dbg !4858
  br label %152, !dbg !5010

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5011
  %145 = add i64 %144, 1, !dbg !5012
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5013
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4778, metadata !669), !dbg !4992
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5014
  %148 = add i64 %147, 1, !dbg !5015
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5016
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4778, metadata !669), !dbg !4992
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4778, metadata !669), !dbg !4992
  %150 = load i8, i8* %149, align 1, !dbg !4993, !tbaa !881
  %151 = icmp eq i8 %150, 0, !dbg !4995
  br i1 %151, label %152, label %128, !dbg !4996, !llvm.loop !5017

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4777, metadata !669), !dbg !4858
  %154 = load i8, i8* %153, align 1, !dbg !5019, !tbaa !881
  %155 = icmp eq i8 %154, 0, !dbg !5021
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0), i8* %153, !dbg !5022
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4777, metadata !669), !dbg !4858
  ret i8* %156, !dbg !5023
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !91, !97, !105, !586, !112, !143, !150, !589, !612, !219, !620, !637, !639, !643, !645, !647, !649, !651, !228, !654, !656, !241}
!llvm.ident = !{!658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658}
!llvm.module.flags = !{!659, !660, !661, !662, !663}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 44, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !50)
!3 = !DIFile(filename: "src/sum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !28}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 43, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/human.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!31 = !DIEnumerator(name: "human_ceiling", value: 0)
!32 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!33 = !DIEnumerator(name: "human_floor", value: 2)
!34 = !DIEnumerator(name: "human_group_digits", value: 4)
!35 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!36 = !DIEnumerator(name: "human_autoscale", value: 16)
!37 = !DIEnumerator(name: "human_base_1024", value: 32)
!38 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!39 = !DIEnumerator(name: "human_SI", value: 128)
!40 = !DIEnumerator(name: "human_B", value: 256)
!41 = !{!42, !44, !45, !46, !47}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 62, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{!51, !54, !0}
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 42, type: !53, isLocal: true, isDefinition: true)
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "infomap", scope: !56, file: !57, line: 632, type: !73, isLocal: true, isDefinition: true)
!56 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !57, file: !57, line: 630, type: !58, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !62)
!57 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!62 = !{!63, !64, !65, !72}
!63 = !DILocalVariable(name: "program", arg: 1, scope: !56, file: !57, line: 630, type: !60)
!64 = !DILocalVariable(name: "node", scope: !56, file: !57, line: 642, type: !60)
!65 = !DILocalVariable(name: "map_prog", scope: !56, file: !57, line: 643, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !56, file: !57, line: 632, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !68, file: !57, line: 632, baseType: !60, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !57, line: 632, baseType: !60, size: 64, offset: 64)
!72 = !DILocalVariable(name: "lc_messages", scope: !56, file: !57, line: 655, type: !60)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 896, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 7)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, elements: !87)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !79, line: 50, size: 256, elements: !80)
!79 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !{!81, !82, !84, !86}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !79, line: 52, baseType: !60, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !78, file: !79, line: 55, baseType: !83, size: 32, offset: 64)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !78, file: !79, line: 56, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !78, file: !79, line: 57, baseType: !83, size: 32, offset: 192)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "Version", scope: !91, file: !92, line: 2, type: !60, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !94)
!92 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{}
!94 = !{!89}
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "file_name", scope: !97, file: !102, line: 36, type: !60, isLocal: true, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !99)
!98 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!95, !100}
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !97, file: !102, line: 46, type: !53, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "exit_failure", scope: !105, file: !108, line: 24, type: !109, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !107)
!106 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{!103}
!108 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "power_letter", scope: !112, file: !127, line: 36, type: !138, isLocal: true, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !123, globals: !124)
!113 = !DIFile(filename: "./lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!28, !115}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !116, line: 26, size: 32, elements: !117)
!116 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !119, !120, !121, !122}
!118 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!119 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!120 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!121 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!122 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!123 = !{!60}
!124 = !{!110, !125, !132}
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "block_size_args", scope: !112, file: !127, line: 398, type: !128, isLocal: true, isDefinition: true)
!127 = !DIFile(filename: "lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 192, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!130 = !{!131}
!131 = !DISubrange(count: 3)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "block_size_opts", scope: !112, file: !127, line: 399, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 72, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 9)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "program_name", scope: !143, file: !147, line: 33, type: !60, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !145, globals: !146)
!144 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !{!44, !42}
!146 = !{!141}
!147 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !150, file: !178, line: 77, type: !214, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !173, globals: !175)
!151 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = !{!5, !153, !158}
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!156 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!157 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 46, size: 32, elements: !160)
!159 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!161 = !DIEnumerator(name: "_ISupper", value: 256)
!162 = !DIEnumerator(name: "_ISlower", value: 512)
!163 = !DIEnumerator(name: "_ISalpha", value: 1024)
!164 = !DIEnumerator(name: "_ISdigit", value: 2048)
!165 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!166 = !DIEnumerator(name: "_ISspace", value: 8192)
!167 = !DIEnumerator(name: "_ISprint", value: 16384)
!168 = !DIEnumerator(name: "_ISgraph", value: 32768)
!169 = !DIEnumerator(name: "_ISblank", value: 1)
!170 = !DIEnumerator(name: "_IScntrl", value: 2)
!171 = !DIEnumerator(name: "_ISpunct", value: 4)
!172 = !DIEnumerator(name: "_ISalnum", value: 8)
!173 = !{!83, !174, !47, !42}
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !{!148, !176, !183, !196, !198, !203, !210, !212}
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !150, file: !178, line: 93, type: !179, isLocal: false, isDefinition: true)
!178 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 320, elements: !181)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !150, file: !178, line: 1043, type: !185, isLocal: false, isDefinition: true)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !178, line: 57, size: 448, elements: !186)
!186 = !{!187, !188, !189, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !185, file: !178, line: 60, baseType: !5, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !178, line: 63, baseType: !83, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !185, file: !178, line: 67, baseType: !190, size: 256, offset: 64)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !192)
!191 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !185, file: !178, line: 70, baseType: !60, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !185, file: !178, line: 73, baseType: !60, size: 64, offset: 384)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !150, file: !178, line: 108, type: !185, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "slot0", scope: !150, file: !178, line: 834, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 256)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "slotvec", scope: !150, file: !178, line: 837, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !178, line: 826, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !178, line: 828, baseType: !47, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !178, line: 829, baseType: !42, size: 64, offset: 64)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "nslots", scope: !150, file: !178, line: 835, type: !83, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "slotvec0", scope: !150, file: !178, line: 836, type: !206, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 704, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 11)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !219, file: !222, line: 26, type: !223, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !221)
!220 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{!217}
!222 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 376, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 47)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !228, file: !233, line: 69, type: !234, isLocal: false, isDefinition: true)
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !231, globals: !232)
!229 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !{!5}
!231 = !{!44, !46}
!232 = !{!226}
!233 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !235, line: 55, baseType: !236)
!235 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null}
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !241, file: !584, line: 120, type: !585, isLocal: true, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !243, retainedTypes: !582, globals: !583)
!242 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!243 = !{!244}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 41, size: 32, elements: !246)
!245 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!247 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!248 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!249 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!250 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!251 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!252 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!253 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!254 = !DIEnumerator(name: "DAY_1", value: 131079)
!255 = !DIEnumerator(name: "DAY_2", value: 131080)
!256 = !DIEnumerator(name: "DAY_3", value: 131081)
!257 = !DIEnumerator(name: "DAY_4", value: 131082)
!258 = !DIEnumerator(name: "DAY_5", value: 131083)
!259 = !DIEnumerator(name: "DAY_6", value: 131084)
!260 = !DIEnumerator(name: "DAY_7", value: 131085)
!261 = !DIEnumerator(name: "ABMON_1", value: 131086)
!262 = !DIEnumerator(name: "ABMON_2", value: 131087)
!263 = !DIEnumerator(name: "ABMON_3", value: 131088)
!264 = !DIEnumerator(name: "ABMON_4", value: 131089)
!265 = !DIEnumerator(name: "ABMON_5", value: 131090)
!266 = !DIEnumerator(name: "ABMON_6", value: 131091)
!267 = !DIEnumerator(name: "ABMON_7", value: 131092)
!268 = !DIEnumerator(name: "ABMON_8", value: 131093)
!269 = !DIEnumerator(name: "ABMON_9", value: 131094)
!270 = !DIEnumerator(name: "ABMON_10", value: 131095)
!271 = !DIEnumerator(name: "ABMON_11", value: 131096)
!272 = !DIEnumerator(name: "ABMON_12", value: 131097)
!273 = !DIEnumerator(name: "MON_1", value: 131098)
!274 = !DIEnumerator(name: "MON_2", value: 131099)
!275 = !DIEnumerator(name: "MON_3", value: 131100)
!276 = !DIEnumerator(name: "MON_4", value: 131101)
!277 = !DIEnumerator(name: "MON_5", value: 131102)
!278 = !DIEnumerator(name: "MON_6", value: 131103)
!279 = !DIEnumerator(name: "MON_7", value: 131104)
!280 = !DIEnumerator(name: "MON_8", value: 131105)
!281 = !DIEnumerator(name: "MON_9", value: 131106)
!282 = !DIEnumerator(name: "MON_10", value: 131107)
!283 = !DIEnumerator(name: "MON_11", value: 131108)
!284 = !DIEnumerator(name: "MON_12", value: 131109)
!285 = !DIEnumerator(name: "AM_STR", value: 131110)
!286 = !DIEnumerator(name: "PM_STR", value: 131111)
!287 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!288 = !DIEnumerator(name: "D_FMT", value: 131113)
!289 = !DIEnumerator(name: "T_FMT", value: 131114)
!290 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!291 = !DIEnumerator(name: "ERA", value: 131116)
!292 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!293 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!294 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!295 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!296 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!297 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!298 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!299 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!300 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!301 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!302 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!303 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!304 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!305 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!306 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!307 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!308 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!309 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!310 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!311 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!312 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!313 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!314 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!315 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!316 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!317 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!318 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!319 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!320 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!321 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!322 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!323 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!324 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!325 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!326 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!327 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!328 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!329 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!330 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!331 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!332 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!333 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!334 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!335 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!336 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!337 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!338 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!339 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!340 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!341 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!342 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!343 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!344 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!345 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!346 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!347 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!348 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!349 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!350 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!351 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!352 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!353 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!354 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!355 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!356 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!357 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!358 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!359 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!360 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!361 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!362 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!363 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!364 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!365 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!366 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!367 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!368 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!369 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!370 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!371 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!372 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!373 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!374 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!375 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!376 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!377 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!378 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!382 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!385 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!389 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!390 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!391 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!392 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!393 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!394 = !DIEnumerator(name: "CODESET", value: 14)
!395 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!450 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!451 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!466 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!467 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!468 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!469 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!470 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!471 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!472 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!473 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!474 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!475 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!476 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!477 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!478 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!479 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!480 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!481 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!482 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!483 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!484 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!485 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!486 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!487 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!488 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!505 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!506 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!509 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!510 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!511 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!512 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!514 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!515 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!516 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!517 = !DIEnumerator(name: "THOUSEP", value: 65537)
!518 = !DIEnumerator(name: "__GROUPING", value: 65538)
!519 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!520 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!521 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!522 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!523 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!524 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!525 = !DIEnumerator(name: "__YESSTR", value: 327682)
!526 = !DIEnumerator(name: "__NOSTR", value: 327683)
!527 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!529 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!530 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!531 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!532 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!539 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!540 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!541 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!549 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!551 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!553 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!554 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!560 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!561 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!562 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!563 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!580 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!581 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!582 = !{!44, !42, !45}
!583 = !{!239}
!584 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !588)
!587 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !{!19}
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !591)
!590 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!592}
!592 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !594, file: !593, line: 62, size: 32, elements: !610)
!593 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DISubprogram(name: "safe_read", scope: !593, file: !593, line: 56, type: !595, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!47, !83, !44, !47}
!597 = !{!598, !599, !600, !601}
!598 = !DILocalVariable(name: "fd", arg: 1, scope: !594, file: !593, line: 56, type: !83)
!599 = !DILocalVariable(name: "buf", arg: 2, scope: !594, file: !593, line: 56, type: !44)
!600 = !DILocalVariable(name: "count", arg: 3, scope: !594, file: !593, line: 56, type: !47)
!601 = !DILocalVariable(name: "result", scope: !602, file: !593, line: 66, type: !605)
!602 = distinct !DILexicalBlock(scope: !603, file: !593, line: 65, column: 5)
!603 = distinct !DILexicalBlock(scope: !604, file: !593, line: 64, column: 3)
!604 = distinct !DILexicalBlock(scope: !594, file: !593, line: 64, column: 3)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !606, line: 109, baseType: !607)
!606 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !608, line: 181, baseType: !609)
!608 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!610 = !{!611}
!611 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !614, retainedTypes: !619)
!613 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = !{!615}
!615 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !616, line: 41, size: 32, elements: !617)
!616 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!618}
!618 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!619 = !{!44}
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !622, retainedTypes: !636)
!621 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!623}
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !625, file: !624, line: 192, size: 32, elements: !634)
!624 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DISubprogram(name: "x2nrealloc", scope: !624, file: !624, line: 180, type: !626, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !629)
!626 = !DISubroutineType(types: !627)
!627 = !{!44, !44, !628, !47}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "p", arg: 1, scope: !625, file: !624, line: 180, type: !44)
!631 = !DILocalVariable(name: "pn", arg: 2, scope: !625, file: !624, line: 180, type: !628)
!632 = !DILocalVariable(name: "s", arg: 3, scope: !625, file: !624, line: 180, type: !47)
!633 = !DILocalVariable(name: "n", scope: !625, file: !624, line: 182, type: !47)
!634 = !{!635}
!635 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!636 = !{!47, !42, !44}
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93)
!638 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !641, retainedTypes: !642)
!640 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = !{!115, !158}
!642 = !{!83, !174}
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !619)
!644 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93)
!646 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !619)
!648 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !619)
!650 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !653)
!652 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = !{!47}
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93)
!655 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93)
!657 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!659 = !{i32 2, !"Dwarf Version", i32 4}
!660 = !{i32 2, !"Debug Info Version", i32 3}
!661 = !{i32 1, !"wchar_size", i32 4}
!662 = !{i32 7, !"PIC Level", i32 2}
!663 = !{i32 7, !"PIE Level", i32 2}
!664 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !665, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !83}
!667 = !{!668}
!668 = !DILocalVariable(name: "status", arg: 1, scope: !664, file: !3, line: 53, type: !83)
!669 = !DIExpression()
!670 = !DILocation(line: 53, column: 12, scope: !664)
!671 = !DILocation(line: 55, column: 14, scope: !672)
!672 = distinct !DILexicalBlock(scope: !664, file: !3, line: 55, column: 7)
!673 = !DILocation(line: 55, column: 7, scope: !664)
!674 = !DILocation(line: 56, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 56, column: 5)
!676 = !{!677, !677, i64 0}
!677 = !{!"any pointer", !678, i64 0}
!678 = !{!"omnipotent char", !679, i64 0}
!679 = !{!"Simple C/C++ TBAA"}
!680 = !DILocation(line: 59, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !3, line: 58, column: 5)
!682 = !DILocation(line: 63, column: 7, scope: !681)
!683 = !DILocation(line: 580, column: 3, scope: !684, inlinedAt: !685)
!684 = distinct !DISubprogram(name: "emit_stdin_note", scope: !57, file: !57, line: 578, type: !237, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !93)
!685 = distinct !DILocation(line: 67, column: 7, scope: !681)
!686 = !DILocation(line: 69, column: 7, scope: !681)
!687 = !DILocation(line: 74, column: 7, scope: !681)
!688 = !DILocation(line: 75, column: 7, scope: !681)
!689 = !DILocation(line: 642, column: 15, scope: !56, inlinedAt: !690)
!690 = distinct !DILocation(line: 76, column: 7, scope: !681)
!691 = !DILocation(line: 651, column: 3, scope: !56, inlinedAt: !690)
!692 = !DILocation(line: 655, column: 29, scope: !56, inlinedAt: !690)
!693 = !DILocation(line: 655, column: 15, scope: !56, inlinedAt: !690)
!694 = !DILocation(line: 656, column: 7, scope: !695, inlinedAt: !690)
!695 = distinct !DILexicalBlock(scope: !56, file: !57, line: 656, column: 7)
!696 = !DILocation(line: 656, column: 19, scope: !695, inlinedAt: !690)
!697 = !DILocation(line: 656, column: 22, scope: !695, inlinedAt: !690)
!698 = !DILocation(line: 656, column: 7, scope: !56, inlinedAt: !690)
!699 = !DILocation(line: 662, column: 7, scope: !700, inlinedAt: !690)
!700 = distinct !DILexicalBlock(scope: !695, file: !57, line: 657, column: 5)
!701 = !DILocation(line: 664, column: 5, scope: !700, inlinedAt: !690)
!702 = !DILocation(line: 665, column: 3, scope: !56, inlinedAt: !690)
!703 = !DILocation(line: 667, column: 3, scope: !56, inlinedAt: !690)
!704 = !DILocation(line: 78, column: 3, scope: !664)
!705 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 222, type: !706, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !709)
!706 = !DISubroutineType(types: !707)
!707 = !{!83, !83, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!709 = !{!710, !711, !712, !713, !714, !715}
!710 = !DILocalVariable(name: "argc", arg: 1, scope: !705, file: !3, line: 222, type: !83)
!711 = !DILocalVariable(name: "argv", arg: 2, scope: !705, file: !3, line: 222, type: !708)
!712 = !DILocalVariable(name: "ok", scope: !705, file: !3, line: 224, type: !53)
!713 = !DILocalVariable(name: "optc", scope: !705, file: !3, line: 225, type: !83)
!714 = !DILocalVariable(name: "files_given", scope: !705, file: !3, line: 226, type: !83)
!715 = !DILocalVariable(name: "sum_func", scope: !705, file: !3, line: 227, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!53, !60, !83}
!719 = !DILocation(line: 222, column: 11, scope: !705)
!720 = !DILocation(line: 222, column: 24, scope: !705)
!721 = !DILocation(line: 227, column: 10, scope: !705)
!722 = !DILocation(line: 230, column: 21, scope: !705)
!723 = !DILocation(line: 230, column: 3, scope: !705)
!724 = !DILocation(line: 231, column: 3, scope: !705)
!725 = !DILocation(line: 232, column: 3, scope: !705)
!726 = !DILocation(line: 233, column: 3, scope: !705)
!727 = !DILocation(line: 235, column: 3, scope: !705)
!728 = !DILocation(line: 239, column: 12, scope: !705)
!729 = !DILocation(line: 239, column: 3, scope: !705)
!730 = !DILocation(line: 243, column: 3, scope: !705)
!731 = !DILocation(line: 243, column: 18, scope: !705)
!732 = !DILocation(line: 225, column: 7, scope: !705)
!733 = distinct !{!733, !730, !734}
!734 = !DILocation(line: 262, column: 5, scope: !705)
!735 = !DILocation(line: 253, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 246, column: 9)
!737 = distinct !DILexicalBlock(scope: !705, file: !3, line: 244, column: 5)
!738 = !DILocation(line: 255, column: 9, scope: !736)
!739 = !DILocation(line: 257, column: 9, scope: !736)
!740 = !DILocation(line: 260, column: 11, scope: !736)
!741 = !DILocation(line: 264, column: 24, scope: !705)
!742 = !{!743, !743, i64 0}
!743 = !{!"int", !678, i64 0}
!744 = !DILocation(line: 264, column: 22, scope: !705)
!745 = !DILocation(line: 226, column: 7, scope: !705)
!746 = !DILocation(line: 265, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !705, file: !3, line: 265, column: 7)
!748 = !DILocation(line: 265, column: 7, scope: !705)
!749 = !DILocation(line: 266, column: 10, scope: !747)
!750 = !DILocation(line: 266, column: 8, scope: !747)
!751 = !DILocation(line: 224, column: 8, scope: !705)
!752 = !DILocation(line: 266, column: 5, scope: !747)
!753 = !DILocation(line: 268, column: 28, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 268, column: 5)
!755 = distinct !DILexicalBlock(scope: !747, file: !3, line: 268, column: 5)
!756 = !DILocation(line: 268, column: 5, scope: !755)
!757 = !DILocation(line: 269, column: 23, scope: !754)
!758 = !DILocation(line: 269, column: 13, scope: !754)
!759 = !DILocation(line: 269, column: 10, scope: !754)
!760 = !DILocation(line: 268, column: 42, scope: !754)
!761 = distinct !{!761, !756, !762}
!762 = !DILocation(line: 269, column: 48, scope: !755)
!763 = !DILocation(line: 271, column: 23, scope: !764)
!764 = distinct !DILexicalBlock(scope: !705, file: !3, line: 271, column: 7)
!765 = !DILocation(line: 271, column: 34, scope: !764)
!766 = !DILocation(line: 271, column: 26, scope: !764)
!767 = !DILocation(line: 271, column: 41, scope: !764)
!768 = !DILocation(line: 271, column: 7, scope: !705)
!769 = !DILocation(line: 272, column: 5, scope: !764)
!770 = !DILocation(line: 273, column: 10, scope: !705)
!771 = !DILocation(line: 274, column: 1, scope: !705)
!772 = distinct !DISubprogram(name: "bsd_sum_file", scope: !3, file: !3, line: 88, type: !717, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !773)
!773 = !{!774, !775, !776, !830, !831, !835, !836, !840}
!774 = !DILocalVariable(name: "file", arg: 1, scope: !772, file: !3, line: 88, type: !60)
!775 = !DILocalVariable(name: "print_name", arg: 2, scope: !772, file: !3, line: 88, type: !83)
!776 = !DILocalVariable(name: "fp", scope: !772, file: !3, line: 90, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !780)
!779 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !782)
!781 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !803, !804, !805, !806, !808, !809, !811, !815, !818, !820, !821, !822, !823, !824, !825, !826}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !780, file: !781, line: 242, baseType: !83, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !780, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !780, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !780, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !780, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !780, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !780, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !780, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !780, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !780, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !780, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !780, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !780, file: !781, line: 260, baseType: !796, size: 64, offset: 768)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !798)
!798 = !{!799, !800, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !797, file: !781, line: 157, baseType: !796, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !797, file: !781, line: 158, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !797, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !780, file: !781, line: 262, baseType: !801, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !780, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !780, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !780, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !608, line: 140, baseType: !609)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !780, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !780, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!810 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !780, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 1)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !780, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !781, line: 150, baseType: null)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !780, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !608, line: 141, baseType: !609)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !780, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !780, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !780, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !780, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !780, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !780, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !780, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 20)
!830 = !DILocalVariable(name: "checksum", scope: !772, file: !3, line: 91, type: !83)
!831 = !DILocalVariable(name: "total_bytes", scope: !772, file: !3, line: 92, type: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !833, line: 112, baseType: !834)
!833 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !608, line: 62, baseType: !49)
!835 = !DILocalVariable(name: "ch", scope: !772, file: !3, line: 93, type: !83)
!836 = !DILocalVariable(name: "hbuf", scope: !772, file: !3, line: 94, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 5216, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 652)
!840 = !DILocalVariable(name: "is_stdin", scope: !772, file: !3, line: 95, type: !53)
!841 = !DILocation(line: 88, column: 27, scope: !772)
!842 = !DILocation(line: 88, column: 37, scope: !772)
!843 = !DILocation(line: 91, column: 7, scope: !772)
!844 = !DILocation(line: 92, column: 13, scope: !772)
!845 = !DILocation(line: 94, column: 3, scope: !772)
!846 = !DILocation(line: 94, column: 8, scope: !772)
!847 = !DILocation(line: 95, column: 19, scope: !772)
!848 = !DILocation(line: 97, column: 7, scope: !772)
!849 = !DILocation(line: 99, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 98, column: 5)
!851 = distinct !DILexicalBlock(scope: !772, file: !3, line: 97, column: 7)
!852 = !DILocation(line: 90, column: 9, scope: !772)
!853 = !DILocation(line: 102, column: 5, scope: !850)
!854 = !DILocation(line: 105, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 104, column: 5)
!856 = !DILocation(line: 106, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !3, line: 106, column: 11)
!858 = !DILocation(line: 106, column: 11, scope: !855)
!859 = !DILocation(line: 108, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 107, column: 9)
!861 = !DILocation(line: 108, column: 34, scope: !860)
!862 = !DILocation(line: 108, column: 11, scope: !860)
!863 = !DILocation(line: 109, column: 11, scope: !860)
!864 = !DILocation(line: 113, column: 3, scope: !772)
!865 = !DILocation(line: 115, column: 3, scope: !772)
!866 = !DILocalVariable(name: "__fp", arg: 1, scope: !867, file: !868, line: 63, type: !777)
!867 = distinct !DISubprogram(name: "getc_unlocked", scope: !868, file: !868, line: 63, type: !869, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !871)
!868 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!869 = !DISubroutineType(types: !870)
!870 = !{!83, !777}
!871 = !{!866}
!872 = !DILocation(line: 63, column: 22, scope: !867, inlinedAt: !873)
!873 = distinct !DILocation(line: 115, column: 16, scope: !772)
!874 = !DILocation(line: 65, column: 10, scope: !867, inlinedAt: !873)
!875 = !{!876, !677, i64 8}
!876 = !{!"_IO_FILE", !743, i64 0, !677, i64 8, !677, i64 16, !677, i64 24, !677, i64 32, !677, i64 40, !677, i64 48, !677, i64 56, !677, i64 64, !677, i64 72, !677, i64 80, !677, i64 88, !677, i64 96, !677, i64 104, !743, i64 112, !743, i64 116, !877, i64 120, !878, i64 128, !678, i64 130, !678, i64 131, !677, i64 136, !877, i64 144, !677, i64 152, !677, i64 160, !677, i64 168, !677, i64 176, !877, i64 184, !743, i64 192, !678, i64 196}
!877 = !{!"long", !678, i64 0}
!878 = !{!"short", !678, i64 0}
!879 = !{!876, !677, i64 16}
!880 = !{!"branch_weights", i32 2000, i32 1}
!881 = !{!678, !678, i64 0}
!882 = !DILocation(line: 93, column: 7, scope: !772)
!883 = !DILocation(line: 115, column: 27, scope: !772)
!884 = !DILocation(line: 117, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !772, file: !3, line: 116, column: 5)
!886 = !DILocation(line: 118, column: 28, scope: !885)
!887 = !DILocation(line: 118, column: 52, scope: !885)
!888 = !DILocation(line: 118, column: 34, scope: !885)
!889 = !DILocation(line: 119, column: 16, scope: !885)
!890 = !DILocation(line: 120, column: 16, scope: !885)
!891 = distinct !{!891, !865, !892}
!892 = !DILocation(line: 121, column: 5, scope: !772)
!893 = !DILocalVariable(name: "__stream", arg: 1, scope: !894, file: !868, line: 132, type: !777)
!894 = distinct !DISubprogram(name: "ferror_unlocked", scope: !868, file: !868, line: 132, type: !869, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !895)
!895 = !{!893}
!896 = !DILocation(line: 132, column: 1, scope: !894, inlinedAt: !897)
!897 = distinct !DILocation(line: 123, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !772, file: !3, line: 123, column: 7)
!899 = !DILocation(line: 134, column: 10, scope: !894, inlinedAt: !897)
!900 = !{!876, !743, i64 0}
!901 = !DILocation(line: 123, column: 7, scope: !898)
!902 = !DILocation(line: 123, column: 7, scope: !772)
!903 = !DILocation(line: 125, column: 17, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 124, column: 5)
!905 = !DILocation(line: 125, column: 30, scope: !904)
!906 = !DILocation(line: 125, column: 7, scope: !904)
!907 = !DILocation(line: 126, column: 11, scope: !904)
!908 = !DILocation(line: 127, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 126, column: 11)
!910 = !DILocation(line: 131, column: 17, scope: !911)
!911 = distinct !DILexicalBlock(scope: !772, file: !3, line: 131, column: 7)
!912 = !DILocation(line: 131, column: 20, scope: !911)
!913 = !DILocation(line: 131, column: 32, scope: !911)
!914 = !DILocation(line: 131, column: 7, scope: !772)
!915 = !DILocation(line: 133, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 132, column: 5)
!917 = !DILocation(line: 133, column: 30, scope: !916)
!918 = !DILocation(line: 133, column: 7, scope: !916)
!919 = !DILocation(line: 134, column: 7, scope: !916)
!920 = !DILocation(line: 137, column: 3, scope: !772)
!921 = !DILocation(line: 139, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !772, file: !3, line: 139, column: 7)
!923 = !DILocation(line: 139, column: 7, scope: !772)
!924 = !DILocation(line: 140, column: 5, scope: !922)
!925 = !DILocalVariable(name: "__c", arg: 1, scope: !926, file: !868, line: 105, type: !83)
!926 = distinct !DISubprogram(name: "putchar_unlocked", scope: !868, file: !868, line: 105, type: !927, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{!83, !83}
!929 = !{!925}
!930 = !DILocation(line: 105, column: 23, scope: !926, inlinedAt: !931)
!931 = distinct !DILocation(line: 141, column: 3, scope: !772)
!932 = !DILocation(line: 107, column: 10, scope: !926, inlinedAt: !931)
!933 = !{!876, !677, i64 40}
!934 = !{!876, !677, i64 48}
!935 = !DILocation(line: 144, column: 1, scope: !772)
!936 = distinct !DISubprogram(name: "sysv_sum_file", scope: !3, file: !3, line: 152, type: !717, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !937)
!937 = !{!938, !939, !940, !941, !945, !946, !947, !948, !949, !950, !951, !953}
!938 = !DILocalVariable(name: "file", arg: 1, scope: !936, file: !3, line: 152, type: !60)
!939 = !DILocalVariable(name: "print_name", arg: 2, scope: !936, file: !3, line: 152, type: !83)
!940 = !DILocalVariable(name: "fd", scope: !936, file: !3, line: 154, type: !83)
!941 = !DILocalVariable(name: "buf", scope: !936, file: !3, line: 155, type: !942)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 65536, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 8192)
!945 = !DILocalVariable(name: "total_bytes", scope: !936, file: !3, line: 156, type: !832)
!946 = !DILocalVariable(name: "hbuf", scope: !936, file: !3, line: 157, type: !837)
!947 = !DILocalVariable(name: "r", scope: !936, file: !3, line: 158, type: !83)
!948 = !DILocalVariable(name: "checksum", scope: !936, file: !3, line: 159, type: !83)
!949 = !DILocalVariable(name: "s", scope: !936, file: !3, line: 162, type: !191)
!950 = !DILocalVariable(name: "is_stdin", scope: !936, file: !3, line: 164, type: !53)
!951 = !DILocalVariable(name: "i", scope: !952, file: !3, line: 184, type: !47)
!952 = distinct !DILexicalBlock(scope: !936, file: !3, line: 183, column: 5)
!953 = !DILocalVariable(name: "bytes_read", scope: !952, file: !3, line: 185, type: !47)
!954 = !DILocation(line: 152, column: 28, scope: !936)
!955 = !DILocation(line: 152, column: 38, scope: !936)
!956 = !DILocation(line: 155, column: 3, scope: !936)
!957 = !DILocation(line: 155, column: 17, scope: !936)
!958 = !DILocation(line: 156, column: 13, scope: !936)
!959 = !DILocation(line: 157, column: 3, scope: !936)
!960 = !DILocation(line: 157, column: 8, scope: !936)
!961 = !DILocation(line: 162, column: 16, scope: !936)
!962 = !DILocation(line: 164, column: 19, scope: !936)
!963 = !DILocation(line: 166, column: 7, scope: !936)
!964 = !DILocation(line: 154, column: 7, scope: !936)
!965 = !DILocation(line: 171, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 167, column: 5)
!967 = distinct !DILexicalBlock(scope: !936, file: !3, line: 166, column: 7)
!968 = !DILocation(line: 174, column: 12, scope: !969)
!969 = distinct !DILexicalBlock(scope: !967, file: !3, line: 173, column: 5)
!970 = !DILocation(line: 175, column: 14, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !3, line: 175, column: 11)
!972 = !DILocation(line: 175, column: 11, scope: !969)
!973 = !DILocation(line: 177, column: 21, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 176, column: 9)
!975 = !DILocation(line: 177, column: 34, scope: !974)
!976 = !DILocation(line: 177, column: 11, scope: !974)
!977 = !DILocation(line: 178, column: 11, scope: !974)
!978 = !DILocation(line: 182, column: 3, scope: !936)
!979 = !DILocation(line: 185, column: 27, scope: !952)
!980 = !DILocation(line: 185, column: 14, scope: !952)
!981 = !DILocation(line: 187, column: 11, scope: !952)
!982 = !DILocation(line: 192, column: 21, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 191, column: 9)
!984 = distinct !DILexicalBlock(scope: !952, file: !3, line: 190, column: 11)
!985 = !DILocation(line: 192, column: 34, scope: !983)
!986 = !DILocation(line: 192, column: 11, scope: !983)
!987 = !DILocation(line: 193, column: 15, scope: !983)
!988 = !DILocation(line: 194, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !3, line: 193, column: 15)
!990 = !DILocation(line: 184, column: 14, scope: !952)
!991 = !DILocation(line: 198, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !952, file: !3, line: 198, column: 7)
!993 = !DILocation(line: 198, column: 36, scope: !994)
!994 = distinct !DILexicalBlock(scope: !992, file: !3, line: 198, column: 7)
!995 = !DILocation(line: 199, column: 14, scope: !994)
!996 = !DILocation(line: 199, column: 11, scope: !994)
!997 = distinct !{!997, !991, !998, !999, !1000}
!998 = !DILocation(line: 199, column: 19, scope: !992)
!999 = !{!"llvm.loop.vectorize.width", i32 1}
!1000 = !{!"llvm.loop.interleave.count", i32 1}
!1001 = !DILocation(line: 198, column: 21, scope: !994)
!1002 = distinct !{!1002, !991, !998, !1003, !999, !1000}
!1003 = !{!"llvm.loop.unroll.runtime.disable"}
!1004 = !DILocation(line: 200, column: 19, scope: !952)
!1005 = distinct !{!1005, !978, !1006}
!1006 = !DILocation(line: 201, column: 5, scope: !936)
!1007 = !DILocation(line: 203, column: 17, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !936, file: !3, line: 203, column: 7)
!1009 = !DILocation(line: 203, column: 20, scope: !1008)
!1010 = !DILocation(line: 203, column: 31, scope: !1008)
!1011 = !DILocation(line: 203, column: 7, scope: !936)
!1012 = !DILocation(line: 205, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 204, column: 5)
!1014 = !DILocation(line: 205, column: 30, scope: !1013)
!1015 = !DILocation(line: 205, column: 7, scope: !1013)
!1016 = !DILocation(line: 206, column: 7, scope: !1013)
!1017 = !DILocation(line: 209, column: 10, scope: !936)
!1018 = !DILocation(line: 209, column: 40, scope: !936)
!1019 = !DILocation(line: 209, column: 20, scope: !936)
!1020 = !DILocation(line: 158, column: 7, scope: !936)
!1021 = !DILocation(line: 210, column: 17, scope: !936)
!1022 = !DILocation(line: 210, column: 32, scope: !936)
!1023 = !DILocation(line: 210, column: 27, scope: !936)
!1024 = !DILocation(line: 159, column: 7, scope: !936)
!1025 = !DILocation(line: 212, column: 3, scope: !936)
!1026 = !DILocation(line: 214, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !936, file: !3, line: 214, column: 7)
!1028 = !DILocation(line: 214, column: 7, scope: !936)
!1029 = !DILocation(line: 215, column: 5, scope: !1027)
!1030 = !DILocation(line: 105, column: 23, scope: !926, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 216, column: 3, scope: !936)
!1032 = !DILocation(line: 107, column: 10, scope: !926, inlinedAt: !1031)
!1033 = !DILocation(line: 219, column: 1, scope: !936)
!1034 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !102, file: !102, line: 41, type: !58, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1035)
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "file", arg: 1, scope: !1034, file: !102, line: 41, type: !60)
!1037 = !DILocation(line: 41, column: 41, scope: !1034)
!1038 = !DILocation(line: 43, column: 13, scope: !1034)
!1039 = !DILocation(line: 44, column: 1, scope: !1034)
!1040 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !102, file: !102, line: 78, type: !1041, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !53}
!1043 = !{!1044}
!1044 = !DILocalVariable(name: "ignore", arg: 1, scope: !1040, file: !102, line: 78, type: !53)
!1045 = !DILocation(line: 78, column: 37, scope: !1040)
!1046 = !DILocation(line: 80, column: 16, scope: !1040)
!1047 = !{!1048, !1048, i64 0}
!1048 = !{!"_Bool", !678, i64 0}
!1049 = !DILocation(line: 81, column: 1, scope: !1040)
!1050 = distinct !DISubprogram(name: "close_stdout", scope: !102, file: !102, line: 107, type: !237, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1051)
!1051 = !{!1052}
!1052 = !DILocalVariable(name: "write_error", scope: !1053, file: !102, line: 112, type: !60)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !102, line: 111, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !102, line: 109, column: 7)
!1055 = !DILocation(line: 109, column: 21, scope: !1054)
!1056 = !DILocation(line: 109, column: 7, scope: !1054)
!1057 = !DILocation(line: 109, column: 29, scope: !1054)
!1058 = !DILocation(line: 110, column: 7, scope: !1054)
!1059 = !DILocation(line: 110, column: 12, scope: !1054)
!1060 = !{i8 0, i8 2}
!1061 = !DILocation(line: 114, column: 19, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !102, line: 113, column: 11)
!1063 = !DILocation(line: 110, column: 25, scope: !1054)
!1064 = !DILocation(line: 110, column: 28, scope: !1054)
!1065 = !DILocation(line: 110, column: 34, scope: !1054)
!1066 = !DILocation(line: 109, column: 7, scope: !1050)
!1067 = !DILocation(line: 112, column: 33, scope: !1053)
!1068 = !DILocation(line: 112, column: 19, scope: !1053)
!1069 = !DILocation(line: 113, column: 11, scope: !1062)
!1070 = !DILocation(line: 113, column: 11, scope: !1053)
!1071 = !DILocation(line: 114, column: 36, scope: !1062)
!1072 = !DILocation(line: 114, column: 9, scope: !1062)
!1073 = !DILocation(line: 117, column: 9, scope: !1062)
!1074 = !DILocation(line: 119, column: 14, scope: !1053)
!1075 = !DILocation(line: 119, column: 7, scope: !1053)
!1076 = !DILocation(line: 122, column: 22, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1050, file: !102, line: 122, column: 8)
!1078 = !DILocation(line: 122, column: 8, scope: !1077)
!1079 = !DILocation(line: 122, column: 30, scope: !1077)
!1080 = !DILocation(line: 122, column: 8, scope: !1050)
!1081 = !DILocation(line: 123, column: 13, scope: !1077)
!1082 = !DILocation(line: 123, column: 6, scope: !1077)
!1083 = !DILocation(line: 124, column: 1, scope: !1050)
!1084 = distinct !DISubprogram(name: "fdadvise", scope: !1085, file: !1085, line: 31, type: !1086, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !1091)
!1085 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !83, !1088, !1088, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1089, line: 57, baseType: !807)
!1089 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1091 = !{!1092, !1093, !1094, !1095, !1096}
!1092 = !DILocalVariable(name: "fd", arg: 1, scope: !1084, file: !1085, line: 31, type: !83)
!1093 = !DILocalVariable(name: "offset", arg: 2, scope: !1084, file: !1085, line: 31, type: !1088)
!1094 = !DILocalVariable(name: "len", arg: 3, scope: !1084, file: !1085, line: 31, type: !1088)
!1095 = !DILocalVariable(name: "advice", arg: 4, scope: !1084, file: !1085, line: 31, type: !1090)
!1096 = !DILocalVariable(name: "__x", scope: !1097, file: !1085, line: 34, type: !83)
!1097 = distinct !DILexicalBlock(scope: !1084, file: !1085, line: 34, column: 3)
!1098 = !DILocation(line: 31, column: 15, scope: !1084)
!1099 = !DILocation(line: 31, column: 25, scope: !1084)
!1100 = !DILocation(line: 31, column: 39, scope: !1084)
!1101 = !DILocation(line: 31, column: 54, scope: !1084)
!1102 = !DILocation(line: 34, column: 3, scope: !1097)
!1103 = !DILocation(line: 36, column: 1, scope: !1084)
!1104 = distinct !DISubprogram(name: "fadvise", scope: !1085, file: !1085, line: 39, type: !1105, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !1147)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107, !1090}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1109, file: !781, line: 242, baseType: !83, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1109, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1109, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1109, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1109, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1109, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1109, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1109, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1109, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1109, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1109, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1109, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1109, file: !781, line: 260, baseType: !1124, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1130}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1125, file: !781, line: 157, baseType: !1124, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1125, file: !781, line: 158, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1125, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1109, file: !781, line: 262, baseType: !1129, size: 64, offset: 832)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1109, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1109, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1109, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1109, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1109, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1109, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1109, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1109, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1109, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1109, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1109, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1109, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1109, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1109, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1109, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!1147 = !{!1148, !1149}
!1148 = !DILocalVariable(name: "fp", arg: 1, scope: !1104, file: !1085, line: 39, type: !1107)
!1149 = !DILocalVariable(name: "advice", arg: 2, scope: !1104, file: !1085, line: 39, type: !1090)
!1150 = !DILocation(line: 39, column: 16, scope: !1104)
!1151 = !DILocation(line: 39, column: 30, scope: !1104)
!1152 = !DILocation(line: 41, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1104, file: !1085, line: 41, column: 7)
!1154 = !DILocation(line: 41, column: 7, scope: !1104)
!1155 = !DILocation(line: 42, column: 15, scope: !1153)
!1156 = !DILocation(line: 31, column: 15, scope: !1084, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 42, column: 5, scope: !1153)
!1158 = !DILocation(line: 31, column: 25, scope: !1084, inlinedAt: !1157)
!1159 = !DILocation(line: 31, column: 39, scope: !1084, inlinedAt: !1157)
!1160 = !DILocation(line: 31, column: 54, scope: !1084, inlinedAt: !1157)
!1161 = !DILocation(line: 34, column: 3, scope: !1097, inlinedAt: !1157)
!1162 = !DILocation(line: 42, column: 5, scope: !1153)
!1163 = !DILocation(line: 43, column: 1, scope: !1104)
!1164 = distinct !DISubprogram(name: "human_readable", scope: !127, file: !127, line: 153, type: !1165, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!42, !832, !42, !83, !832, !832}
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1217, !1218, !1223, !1226, !1227, !1228, !1231, !1232, !1233, !1234, !1237, !1244, !1245, !1247}
!1168 = !DILocalVariable(name: "n", arg: 1, scope: !1164, file: !127, line: 153, type: !832)
!1169 = !DILocalVariable(name: "buf", arg: 2, scope: !1164, file: !127, line: 153, type: !42)
!1170 = !DILocalVariable(name: "opts", arg: 3, scope: !1164, file: !127, line: 153, type: !83)
!1171 = !DILocalVariable(name: "from_block_size", arg: 4, scope: !1164, file: !127, line: 154, type: !832)
!1172 = !DILocalVariable(name: "to_block_size", arg: 5, scope: !1164, file: !127, line: 154, type: !832)
!1173 = !DILocalVariable(name: "inexact_style", scope: !1164, file: !127, line: 156, type: !83)
!1174 = !DILocalVariable(name: "base", scope: !1164, file: !127, line: 158, type: !191)
!1175 = !DILocalVariable(name: "amt", scope: !1164, file: !127, line: 159, type: !832)
!1176 = !DILocalVariable(name: "tenths", scope: !1164, file: !127, line: 160, type: !83)
!1177 = !DILocalVariable(name: "exponent", scope: !1164, file: !127, line: 161, type: !83)
!1178 = !DILocalVariable(name: "exponent_max", scope: !1164, file: !127, line: 162, type: !83)
!1179 = !DILocalVariable(name: "p", scope: !1164, file: !127, line: 163, type: !42)
!1180 = !DILocalVariable(name: "psuffix", scope: !1164, file: !127, line: 164, type: !42)
!1181 = !DILocalVariable(name: "integerlim", scope: !1164, file: !127, line: 165, type: !60)
!1182 = !DILocalVariable(name: "rounding", scope: !1164, file: !127, line: 171, type: !83)
!1183 = !DILocalVariable(name: "decimal_point", scope: !1164, file: !127, line: 173, type: !60)
!1184 = !DILocalVariable(name: "decimal_pointlen", scope: !1164, file: !127, line: 174, type: !47)
!1185 = !DILocalVariable(name: "grouping", scope: !1164, file: !127, line: 175, type: !60)
!1186 = !DILocalVariable(name: "thousands_sep", scope: !1164, file: !127, line: 176, type: !60)
!1187 = !DILocalVariable(name: "l", scope: !1164, file: !127, line: 177, type: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1191, line: 51, size: 768, elements: !1192)
!1191 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !1190, file: !1191, line: 55, baseType: !42, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !1190, file: !1191, line: 56, baseType: !42, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !1190, file: !1191, line: 62, baseType: !42, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !1190, file: !1191, line: 68, baseType: !42, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !1190, file: !1191, line: 69, baseType: !42, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !1190, file: !1191, line: 70, baseType: !42, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !1190, file: !1191, line: 71, baseType: !42, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !1190, file: !1191, line: 72, baseType: !42, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !1190, file: !1191, line: 73, baseType: !42, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !1190, file: !1191, line: 74, baseType: !42, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !1190, file: !1191, line: 75, baseType: !43, size: 8, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !1190, file: !1191, line: 76, baseType: !43, size: 8, offset: 648)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !1190, file: !1191, line: 78, baseType: !43, size: 8, offset: 656)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !1190, file: !1191, line: 80, baseType: !43, size: 8, offset: 664)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !1190, file: !1191, line: 82, baseType: !43, size: 8, offset: 672)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !1190, file: !1191, line: 84, baseType: !43, size: 8, offset: 680)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !1190, file: !1191, line: 91, baseType: !43, size: 8, offset: 688)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !1190, file: !1191, line: 92, baseType: !43, size: 8, offset: 696)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !1190, file: !1191, line: 95, baseType: !43, size: 8, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !1190, file: !1191, line: 97, baseType: !43, size: 8, offset: 712)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !1190, file: !1191, line: 99, baseType: !43, size: 8, offset: 720)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !1190, file: !1191, line: 101, baseType: !43, size: 8, offset: 728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !1190, file: !1191, line: 108, baseType: !43, size: 8, offset: 736)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !1190, file: !1191, line: 109, baseType: !43, size: 8, offset: 744)
!1217 = !DILocalVariable(name: "pointlen", scope: !1164, file: !127, line: 178, type: !47)
!1218 = !DILocalVariable(name: "multiplier", scope: !1219, file: !127, line: 199, type: !832)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !127, line: 198, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !127, line: 197, column: 11)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !127, line: 196, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 195, column: 7)
!1223 = !DILocalVariable(name: "divisor", scope: !1224, file: !127, line: 211, type: !832)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !127, line: 210, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !127, line: 209, column: 12)
!1226 = !DILocalVariable(name: "r10", scope: !1224, file: !127, line: 212, type: !832)
!1227 = !DILocalVariable(name: "r2", scope: !1224, file: !127, line: 213, type: !832)
!1228 = !DILocalVariable(name: "dto_block_size", scope: !1229, file: !127, line: 225, type: !1230)
!1229 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 220, column: 3)
!1230 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1231 = !DILocalVariable(name: "damt", scope: !1229, file: !127, line: 226, type: !1230)
!1232 = !DILocalVariable(name: "buflen", scope: !1229, file: !127, line: 227, type: !47)
!1233 = !DILocalVariable(name: "nonintegerlen", scope: !1229, file: !127, line: 228, type: !47)
!1234 = !DILocalVariable(name: "e", scope: !1235, file: !127, line: 238, type: !1230)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !127, line: 237, column: 7)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !127, line: 230, column: 9)
!1237 = !DILocalVariable(name: "r10", scope: !1238, file: !127, line: 286, type: !191)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !127, line: 285, column: 15)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !127, line: 283, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !127, line: 282, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !127, line: 279, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !127, line: 278, column: 9)
!1243 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 272, column: 3)
!1244 = !DILocalVariable(name: "r2", scope: !1238, file: !127, line: 287, type: !191)
!1245 = !DILocalVariable(name: "digit", scope: !1246, file: !127, line: 349, type: !83)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !127, line: 348, column: 7)
!1247 = !DILocalVariable(name: "power", scope: !1248, file: !127, line: 363, type: !832)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !127, line: 362, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !127, line: 361, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !127, line: 360, column: 5)
!1251 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 359, column: 7)
!1252 = !DILocalVariable(name: "buf", scope: !1253, file: !127, line: 89, type: !1269)
!1253 = distinct !DISubprogram(name: "group_number", scope: !127, file: !127, line: 79, type: !1254, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!42, !42, !47, !60, !60}
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1252, !1265}
!1257 = !DILocalVariable(name: "number", arg: 1, scope: !1253, file: !127, line: 79, type: !42)
!1258 = !DILocalVariable(name: "numberlen", arg: 2, scope: !1253, file: !127, line: 79, type: !47)
!1259 = !DILocalVariable(name: "grouping", arg: 3, scope: !1253, file: !127, line: 80, type: !60)
!1260 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !1253, file: !127, line: 80, type: !60)
!1261 = !DILocalVariable(name: "d", scope: !1253, file: !127, line: 82, type: !42)
!1262 = !DILocalVariable(name: "grouplen", scope: !1253, file: !127, line: 83, type: !47)
!1263 = !DILocalVariable(name: "thousands_seplen", scope: !1253, file: !127, line: 84, type: !47)
!1264 = !DILocalVariable(name: "i", scope: !1253, file: !127, line: 85, type: !47)
!1265 = !DILocalVariable(name: "g", scope: !1266, file: !127, line: 96, type: !46)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !127, line: 95, column: 5)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !127, line: 94, column: 3)
!1268 = distinct !DILexicalBlock(scope: !1253, file: !127, line: 94, column: 3)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 328, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 41)
!1272 = !DILocation(line: 89, column: 8, scope: !1253, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 357, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 356, column: 7)
!1275 = !DILocation(line: 153, column: 27, scope: !1164)
!1276 = !DILocation(line: 153, column: 36, scope: !1164)
!1277 = !DILocation(line: 153, column: 45, scope: !1164)
!1278 = !DILocation(line: 154, column: 27, scope: !1164)
!1279 = !DILocation(line: 154, column: 54, scope: !1164)
!1280 = !DILocation(line: 157, column: 10, scope: !1164)
!1281 = !DILocation(line: 156, column: 7, scope: !1164)
!1282 = !DILocation(line: 158, column: 28, scope: !1164)
!1283 = !DILocation(line: 158, column: 23, scope: !1164)
!1284 = !DILocation(line: 158, column: 16, scope: !1164)
!1285 = !DILocation(line: 161, column: 7, scope: !1164)
!1286 = !DILocation(line: 162, column: 7, scope: !1164)
!1287 = !DILocation(line: 174, column: 10, scope: !1164)
!1288 = !DILocation(line: 177, column: 27, scope: !1164)
!1289 = !DILocation(line: 177, column: 23, scope: !1164)
!1290 = !DILocation(line: 178, column: 32, scope: !1164)
!1291 = !{!1292, !677, i64 0}
!1292 = !{!"lconv", !677, i64 0, !677, i64 8, !677, i64 16, !677, i64 24, !677, i64 32, !677, i64 40, !677, i64 48, !677, i64 56, !677, i64 64, !677, i64 72, !678, i64 80, !678, i64 81, !678, i64 82, !678, i64 83, !678, i64 84, !678, i64 85, !678, i64 86, !678, i64 87, !678, i64 88, !678, i64 89, !678, i64 90, !678, i64 91, !678, i64 92, !678, i64 93}
!1293 = !DILocation(line: 178, column: 21, scope: !1164)
!1294 = !DILocation(line: 178, column: 10, scope: !1164)
!1295 = !DILocation(line: 179, column: 20, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 179, column: 7)
!1297 = !DILocation(line: 173, column: 15, scope: !1164)
!1298 = !DILocation(line: 184, column: 17, scope: !1164)
!1299 = !{!1292, !677, i64 16}
!1300 = !DILocation(line: 175, column: 15, scope: !1164)
!1301 = !DILocation(line: 185, column: 18, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1164, file: !127, line: 185, column: 7)
!1303 = !{!1292, !677, i64 8}
!1304 = !DILocation(line: 185, column: 7, scope: !1302)
!1305 = !DILocation(line: 185, column: 33, scope: !1302)
!1306 = !DILocation(line: 176, column: 15, scope: !1164)
!1307 = !DILocation(line: 185, column: 7, scope: !1164)
!1308 = !DILocation(line: 189, column: 46, scope: !1164)
!1309 = !DILocation(line: 164, column: 9, scope: !1164)
!1310 = !DILocation(line: 163, column: 9, scope: !1164)
!1311 = !DILocation(line: 195, column: 21, scope: !1222)
!1312 = !DILocation(line: 195, column: 7, scope: !1164)
!1313 = !DILocation(line: 197, column: 27, scope: !1220)
!1314 = !DILocation(line: 197, column: 43, scope: !1220)
!1315 = !DILocation(line: 197, column: 11, scope: !1221)
!1316 = !DILocation(line: 199, column: 50, scope: !1219)
!1317 = !DILocation(line: 199, column: 21, scope: !1219)
!1318 = !DILocation(line: 200, column: 19, scope: !1219)
!1319 = !DILocation(line: 159, column: 13, scope: !1164)
!1320 = !DILocation(line: 201, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1219, file: !127, line: 201, column: 15)
!1322 = !DILocation(line: 201, column: 32, scope: !1321)
!1323 = !DILocation(line: 160, column: 7, scope: !1164)
!1324 = !DILocation(line: 171, column: 7, scope: !1164)
!1325 = !DILocation(line: 209, column: 28, scope: !1225)
!1326 = !DILocation(line: 209, column: 33, scope: !1225)
!1327 = !DILocation(line: 209, column: 50, scope: !1225)
!1328 = !DILocation(line: 209, column: 68, scope: !1225)
!1329 = !DILocation(line: 209, column: 12, scope: !1222)
!1330 = !DILocation(line: 211, column: 41, scope: !1224)
!1331 = !DILocation(line: 211, column: 17, scope: !1224)
!1332 = !DILocation(line: 212, column: 26, scope: !1224)
!1333 = !DILocation(line: 212, column: 37, scope: !1224)
!1334 = !DILocation(line: 212, column: 17, scope: !1224)
!1335 = !DILocation(line: 213, column: 27, scope: !1224)
!1336 = !DILocation(line: 213, column: 38, scope: !1224)
!1337 = !DILocation(line: 213, column: 17, scope: !1224)
!1338 = !DILocation(line: 214, column: 15, scope: !1224)
!1339 = !DILocation(line: 215, column: 20, scope: !1224)
!1340 = !DILocation(line: 215, column: 16, scope: !1224)
!1341 = !DILocation(line: 216, column: 21, scope: !1224)
!1342 = !DILocation(line: 216, column: 35, scope: !1224)
!1343 = !DILocation(line: 216, column: 55, scope: !1224)
!1344 = !DILocation(line: 216, column: 44, scope: !1224)
!1345 = !DILocation(line: 216, column: 18, scope: !1224)
!1346 = !DILocation(line: 225, column: 34, scope: !1229)
!1347 = !DILocation(line: 225, column: 17, scope: !1229)
!1348 = !DILocation(line: 226, column: 24, scope: !1229)
!1349 = !DILocation(line: 226, column: 29, scope: !1229)
!1350 = !DILocation(line: 226, column: 45, scope: !1229)
!1351 = !DILocation(line: 226, column: 26, scope: !1229)
!1352 = !DILocation(line: 226, column: 17, scope: !1229)
!1353 = !DILocation(line: 230, column: 17, scope: !1236)
!1354 = !DILocation(line: 230, column: 9, scope: !1229)
!1355 = !DILocation(line: 232, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1236, file: !127, line: 231, column: 7)
!1357 = !DILocalVariable(name: "inexact_style", arg: 1, scope: !1358, file: !127, line: 54, type: !83)
!1358 = distinct !DISubprogram(name: "adjust_value", scope: !127, file: !127, line: 54, type: !1359, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1230, !83, !1230}
!1361 = !{!1357, !1362, !1363}
!1362 = !DILocalVariable(name: "value", arg: 2, scope: !1358, file: !127, line: 54, type: !1230)
!1363 = !DILocalVariable(name: "u", scope: !1364, file: !127, line: 62, type: !832)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !127, line: 61, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !127, line: 60, column: 7)
!1366 = !DILocation(line: 54, column: 19, scope: !1358, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 232, column: 9, scope: !1356)
!1368 = !DILocation(line: 54, column: 46, scope: !1358, inlinedAt: !1367)
!1369 = !DILocation(line: 60, column: 21, scope: !1365, inlinedAt: !1367)
!1370 = !DILocation(line: 60, column: 56, scope: !1365, inlinedAt: !1367)
!1371 = !DILocation(line: 60, column: 47, scope: !1365, inlinedAt: !1367)
!1372 = !DILocation(line: 62, column: 21, scope: !1364, inlinedAt: !1367)
!1373 = !DILocation(line: 62, column: 17, scope: !1364, inlinedAt: !1367)
!1374 = !DILocation(line: 63, column: 34, scope: !1364, inlinedAt: !1367)
!1375 = !DILocation(line: 63, column: 54, scope: !1364, inlinedAt: !1367)
!1376 = !DILocation(line: 63, column: 56, scope: !1364, inlinedAt: !1367)
!1377 = !DILocation(line: 63, column: 51, scope: !1364, inlinedAt: !1367)
!1378 = !DILocation(line: 63, column: 17, scope: !1364, inlinedAt: !1367)
!1379 = !DILocation(line: 63, column: 15, scope: !1364, inlinedAt: !1367)
!1380 = !DILocation(line: 64, column: 5, scope: !1364, inlinedAt: !1367)
!1381 = !DILocation(line: 233, column: 18, scope: !1356)
!1382 = !DILocation(line: 227, column: 12, scope: !1229)
!1383 = !DILocation(line: 228, column: 12, scope: !1229)
!1384 = !DILocation(line: 235, column: 7, scope: !1356)
!1385 = !DILocation(line: 238, column: 21, scope: !1235)
!1386 = !DILocation(line: 246, column: 18, scope: !1235)
!1387 = !DILocation(line: 246, column: 25, scope: !1235)
!1388 = !DILocation(line: 246, column: 33, scope: !1235)
!1389 = distinct !{!1389, !1390, !1391}
!1390 = !DILocation(line: 241, column: 9, scope: !1235)
!1391 = !DILocation(line: 246, column: 59, scope: !1235)
!1392 = !DILocation(line: 248, column: 14, scope: !1235)
!1393 = !DILocation(line: 250, column: 9, scope: !1235)
!1394 = !DILocation(line: 54, column: 19, scope: !1358, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 250, column: 9, scope: !1235)
!1396 = !DILocation(line: 54, column: 46, scope: !1358, inlinedAt: !1395)
!1397 = !DILocation(line: 60, column: 21, scope: !1365, inlinedAt: !1395)
!1398 = !DILocation(line: 60, column: 56, scope: !1365, inlinedAt: !1395)
!1399 = !DILocation(line: 60, column: 47, scope: !1365, inlinedAt: !1395)
!1400 = !DILocation(line: 62, column: 21, scope: !1364, inlinedAt: !1395)
!1401 = !DILocation(line: 62, column: 17, scope: !1364, inlinedAt: !1395)
!1402 = !DILocation(line: 63, column: 34, scope: !1364, inlinedAt: !1395)
!1403 = !DILocation(line: 63, column: 54, scope: !1364, inlinedAt: !1395)
!1404 = !DILocation(line: 63, column: 56, scope: !1364, inlinedAt: !1395)
!1405 = !DILocation(line: 63, column: 51, scope: !1364, inlinedAt: !1395)
!1406 = !DILocation(line: 63, column: 17, scope: !1364, inlinedAt: !1395)
!1407 = !DILocation(line: 63, column: 15, scope: !1364, inlinedAt: !1395)
!1408 = !DILocation(line: 64, column: 5, scope: !1364, inlinedAt: !1395)
!1409 = !DILocation(line: 251, column: 18, scope: !1235)
!1410 = !DILocation(line: 252, column: 42, scope: !1235)
!1411 = !DILocation(line: 254, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1235, file: !127, line: 254, column: 13)
!1413 = !DILocation(line: 254, column: 31, scope: !1412)
!1414 = !DILocation(line: 254, column: 60, scope: !1412)
!1415 = !DILocation(line: 255, column: 13, scope: !1412)
!1416 = !DILocation(line: 255, column: 23, scope: !1412)
!1417 = !DILocation(line: 256, column: 17, scope: !1412)
!1418 = !DILocation(line: 256, column: 31, scope: !1412)
!1419 = !DILocation(line: 256, column: 20, scope: !1412)
!1420 = !DILocation(line: 256, column: 36, scope: !1412)
!1421 = !DILocation(line: 254, column: 13, scope: !1235)
!1422 = !DILocation(line: 258, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1412, file: !127, line: 257, column: 11)
!1424 = !DILocation(line: 54, column: 19, scope: !1358, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 258, column: 13, scope: !1423)
!1426 = !DILocation(line: 54, column: 46, scope: !1358, inlinedAt: !1425)
!1427 = !DILocation(line: 60, column: 56, scope: !1365, inlinedAt: !1425)
!1428 = !DILocation(line: 60, column: 47, scope: !1365, inlinedAt: !1425)
!1429 = !DILocation(line: 62, column: 21, scope: !1364, inlinedAt: !1425)
!1430 = !DILocation(line: 62, column: 17, scope: !1364, inlinedAt: !1425)
!1431 = !DILocation(line: 63, column: 34, scope: !1364, inlinedAt: !1425)
!1432 = !DILocation(line: 63, column: 54, scope: !1364, inlinedAt: !1425)
!1433 = !DILocation(line: 63, column: 56, scope: !1364, inlinedAt: !1425)
!1434 = !DILocation(line: 63, column: 51, scope: !1364, inlinedAt: !1425)
!1435 = !DILocation(line: 63, column: 17, scope: !1364, inlinedAt: !1425)
!1436 = !DILocation(line: 63, column: 15, scope: !1364, inlinedAt: !1425)
!1437 = !DILocation(line: 64, column: 5, scope: !1364, inlinedAt: !1425)
!1438 = !DILocation(line: 260, column: 22, scope: !1423)
!1439 = !DILocation(line: 262, column: 11, scope: !1423)
!1440 = !DILocation(line: 265, column: 17, scope: !1229)
!1441 = !DILocation(line: 266, column: 5, scope: !1229)
!1442 = !DILocation(line: 267, column: 20, scope: !1229)
!1443 = !DILocation(line: 267, column: 29, scope: !1229)
!1444 = !DILocation(line: 165, column: 15, scope: !1164)
!1445 = !DILocation(line: 269, column: 3, scope: !1164)
!1446 = !DILocation(line: 278, column: 14, scope: !1242)
!1447 = !DILocation(line: 278, column: 9, scope: !1243)
!1448 = !DILocation(line: 282, column: 13, scope: !1240)
!1449 = !DILocation(line: 282, column: 18, scope: !1240)
!1450 = !DILocation(line: 282, column: 13, scope: !1241)
!1451 = distinct !{!1451, !1452, !1453}
!1452 = !DILocation(line: 284, column: 13, scope: !1239)
!1453 = !DILocation(line: 295, column: 58, scope: !1239)
!1454 = !DILocation(line: 286, column: 41, scope: !1238)
!1455 = !DILocation(line: 286, column: 49, scope: !1238)
!1456 = !DILocation(line: 286, column: 56, scope: !1238)
!1457 = !DILocation(line: 286, column: 54, scope: !1238)
!1458 = !DILocation(line: 286, column: 36, scope: !1238)
!1459 = !DILocation(line: 286, column: 30, scope: !1238)
!1460 = !DILocation(line: 287, column: 40, scope: !1238)
!1461 = !DILocation(line: 287, column: 48, scope: !1238)
!1462 = !DILocation(line: 287, column: 64, scope: !1238)
!1463 = !DILocation(line: 287, column: 52, scope: !1238)
!1464 = !DILocation(line: 287, column: 30, scope: !1238)
!1465 = !DILocation(line: 288, column: 21, scope: !1238)
!1466 = !DILocation(line: 289, column: 30, scope: !1238)
!1467 = !DILocation(line: 290, column: 32, scope: !1238)
!1468 = !DILocation(line: 290, column: 29, scope: !1238)
!1469 = !DILocation(line: 291, column: 47, scope: !1238)
!1470 = !DILocation(line: 292, column: 46, scope: !1238)
!1471 = !DILocation(line: 292, column: 41, scope: !1238)
!1472 = !DILocation(line: 292, column: 33, scope: !1238)
!1473 = !DILocation(line: 293, column: 25, scope: !1238)
!1474 = !DILocation(line: 295, column: 25, scope: !1239)
!1475 = !DILocation(line: 295, column: 44, scope: !1239)
!1476 = !DILocation(line: 295, column: 32, scope: !1239)
!1477 = !DILocation(line: 297, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1239, file: !127, line: 297, column: 17)
!1479 = !DILocation(line: 297, column: 17, scope: !1239)
!1480 = !DILocation(line: 299, column: 35, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !127, line: 299, column: 21)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !127, line: 298, column: 15)
!1483 = !DILocation(line: 299, column: 21, scope: !1482)
!1484 = !DILocation(line: 300, column: 46, scope: !1481)
!1485 = !DILocation(line: 300, column: 36, scope: !1481)
!1486 = !DILocation(line: 300, column: 25, scope: !1481)
!1487 = !DILocation(line: 299, column: 21, scope: !1481)
!1488 = !DILocation(line: 301, column: 37, scope: !1481)
!1489 = !DILocation(line: 301, column: 59, scope: !1481)
!1490 = !DILocation(line: 301, column: 54, scope: !1481)
!1491 = !DILocation(line: 303, column: 27, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1481, file: !127, line: 302, column: 19)
!1493 = !DILocation(line: 306, column: 32, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !127, line: 306, column: 25)
!1495 = !DILocation(line: 308, column: 28, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !127, line: 307, column: 23)
!1497 = !DILocation(line: 313, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1482, file: !127, line: 313, column: 21)
!1499 = !DILocation(line: 314, column: 21, scope: !1498)
!1500 = !DILocation(line: 314, column: 25, scope: !1498)
!1501 = !DILocation(line: 314, column: 43, scope: !1498)
!1502 = !DILocation(line: 314, column: 32, scope: !1498)
!1503 = !DILocation(line: 316, column: 32, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !127, line: 315, column: 19)
!1505 = !DILocation(line: 316, column: 28, scope: !1504)
!1506 = !DILocation(line: 316, column: 22, scope: !1504)
!1507 = !DILocation(line: 316, column: 26, scope: !1504)
!1508 = !DILocation(line: 317, column: 23, scope: !1504)
!1509 = !DILocation(line: 318, column: 21, scope: !1504)
!1510 = !DILocation(line: 320, column: 19, scope: !1504)
!1511 = !DILocation(line: 325, column: 9, scope: !1243)
!1512 = !DILocation(line: 326, column: 29, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1243, file: !127, line: 325, column: 9)
!1514 = !DILocation(line: 326, column: 45, scope: !1513)
!1515 = !DILocation(line: 326, column: 27, scope: !1513)
!1516 = !DILocation(line: 326, column: 22, scope: !1513)
!1517 = !DILocation(line: 326, column: 13, scope: !1513)
!1518 = !DILocation(line: 325, column: 9, scope: !1513)
!1519 = !DILocation(line: 327, column: 56, scope: !1513)
!1520 = !DILocation(line: 327, column: 47, scope: !1513)
!1521 = !DILocation(line: 329, column: 12, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1513, file: !127, line: 328, column: 7)
!1523 = !DILocation(line: 332, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !127, line: 331, column: 13)
!1525 = !DILocation(line: 332, column: 20, scope: !1524)
!1526 = !DILocation(line: 332, column: 13, scope: !1524)
!1527 = !DILocation(line: 332, column: 40, scope: !1524)
!1528 = !DILocation(line: 334, column: 21, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !127, line: 333, column: 11)
!1530 = !DILocation(line: 335, column: 25, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1529, file: !127, line: 335, column: 17)
!1532 = !DILocation(line: 335, column: 17, scope: !1529)
!1533 = !DILocation(line: 337, column: 18, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !127, line: 336, column: 15)
!1535 = !DILocation(line: 337, column: 22, scope: !1534)
!1536 = !DILocation(line: 338, column: 19, scope: !1534)
!1537 = !DILocation(line: 339, column: 17, scope: !1534)
!1538 = !DILocation(line: 340, column: 15, scope: !1534)
!1539 = !DILocation(line: 347, column: 5, scope: !1243)
!1540 = distinct !{!1540, !1539, !1541}
!1541 = !DILocation(line: 352, column: 28, scope: !1243)
!1542 = !DILocation(line: 349, column: 25, scope: !1246)
!1543 = !DILocation(line: 349, column: 21, scope: !1246)
!1544 = !DILocation(line: 350, column: 22, scope: !1246)
!1545 = !DILocation(line: 350, column: 10, scope: !1246)
!1546 = !DILocation(line: 350, column: 14, scope: !1246)
!1547 = !DILocation(line: 352, column: 17, scope: !1243)
!1548 = !DILocation(line: 352, column: 24, scope: !1243)
!1549 = !DILocation(line: 351, column: 7, scope: !1246)
!1550 = !DILocation(line: 356, column: 12, scope: !1274)
!1551 = !DILocation(line: 356, column: 7, scope: !1164)
!1552 = !DILocation(line: 357, column: 37, scope: !1274)
!1553 = !DILocation(line: 79, column: 21, scope: !1253, inlinedAt: !1273)
!1554 = !DILocation(line: 79, column: 36, scope: !1253, inlinedAt: !1273)
!1555 = !DILocation(line: 80, column: 27, scope: !1253, inlinedAt: !1273)
!1556 = !DILocation(line: 80, column: 49, scope: !1253, inlinedAt: !1273)
!1557 = !DILocation(line: 83, column: 10, scope: !1253, inlinedAt: !1273)
!1558 = !DILocation(line: 84, column: 29, scope: !1253, inlinedAt: !1273)
!1559 = !DILocation(line: 84, column: 10, scope: !1253, inlinedAt: !1273)
!1560 = !DILocation(line: 85, column: 10, scope: !1253, inlinedAt: !1273)
!1561 = !DILocation(line: 89, column: 3, scope: !1253, inlinedAt: !1273)
!1562 = !DILocation(line: 91, column: 3, scope: !1253, inlinedAt: !1273)
!1563 = !DILocation(line: 82, column: 18, scope: !1253, inlinedAt: !1273)
!1564 = !DILocation(line: 96, column: 25, scope: !1266, inlinedAt: !1273)
!1565 = !DILocation(line: 96, column: 21, scope: !1266, inlinedAt: !1273)
!1566 = !DILocation(line: 98, column: 11, scope: !1567, inlinedAt: !1273)
!1567 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 98, column: 11)
!1568 = !DILocation(line: 100, column: 24, scope: !1569, inlinedAt: !1273)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !127, line: 99, column: 9)
!1570 = !DILocation(line: 100, column: 37, scope: !1569, inlinedAt: !1273)
!1571 = !DILocation(line: 100, column: 22, scope: !1569, inlinedAt: !1273)
!1572 = !DILocation(line: 98, column: 11, scope: !1266, inlinedAt: !1273)
!1573 = !DILocation(line: 104, column: 13, scope: !1574, inlinedAt: !1273)
!1574 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 104, column: 11)
!1575 = !DILocation(line: 104, column: 11, scope: !1266, inlinedAt: !1273)
!1576 = !DILocation(line: 107, column: 9, scope: !1266, inlinedAt: !1273)
!1577 = !DILocation(line: 108, column: 9, scope: !1266, inlinedAt: !1273)
!1578 = !DILocation(line: 109, column: 22, scope: !1266, inlinedAt: !1273)
!1579 = !DILocation(line: 109, column: 7, scope: !1266, inlinedAt: !1273)
!1580 = !DILocation(line: 110, column: 13, scope: !1581, inlinedAt: !1273)
!1581 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 110, column: 11)
!1582 = !DILocation(line: 110, column: 11, scope: !1266, inlinedAt: !1273)
!1583 = !DILocation(line: 101, column: 19, scope: !1569, inlinedAt: !1273)
!1584 = !DILocation(line: 113, column: 9, scope: !1266, inlinedAt: !1273)
!1585 = !DILocation(line: 114, column: 7, scope: !1266, inlinedAt: !1273)
!1586 = distinct !{!1586, !1587, !1588}
!1587 = !DILocation(line: 94, column: 3, scope: !1268)
!1588 = !DILocation(line: 115, column: 5, scope: !1268)
!1589 = !DILocation(line: 116, column: 1, scope: !1253, inlinedAt: !1273)
!1590 = !DILocation(line: 357, column: 5, scope: !1274)
!1591 = !DILocation(line: 359, column: 12, scope: !1251)
!1592 = !DILocation(line: 359, column: 7, scope: !1164)
!1593 = !DILocation(line: 361, column: 20, scope: !1249)
!1594 = !DILocation(line: 361, column: 11, scope: !1250)
!1595 = !DILocation(line: 363, column: 21, scope: !1248)
!1596 = !DILocation(line: 365, column: 33, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !127, line: 365, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1248, file: !127, line: 365, column: 11)
!1599 = !DILocation(line: 365, column: 11, scope: !1598)
!1600 = distinct !{!1600, !1599, !1601}
!1601 = !DILocation(line: 367, column: 15, scope: !1598)
!1602 = !DILocation(line: 370, column: 29, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1250, file: !127, line: 370, column: 11)
!1604 = !DILocation(line: 370, column: 21, scope: !1603)
!1605 = !DILocation(line: 370, column: 50, scope: !1603)
!1606 = !DILocation(line: 370, column: 41, scope: !1603)
!1607 = !DILocation(line: 371, column: 17, scope: !1603)
!1608 = !DILocation(line: 371, column: 20, scope: !1603)
!1609 = !DILocation(line: 371, column: 9, scope: !1603)
!1610 = !DILocation(line: 373, column: 11, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1250, file: !127, line: 373, column: 11)
!1612 = !DILocation(line: 373, column: 11, scope: !1250)
!1613 = !DILocation(line: 374, column: 31, scope: !1611)
!1614 = !DILocation(line: 374, column: 62, scope: !1611)
!1615 = !DILocation(line: 374, column: 50, scope: !1611)
!1616 = !DILocation(line: 376, column: 25, scope: !1611)
!1617 = !DILocation(line: 374, column: 23, scope: !1611)
!1618 = !DILocation(line: 374, column: 17, scope: !1611)
!1619 = !DILocation(line: 374, column: 20, scope: !1611)
!1620 = !DILocation(line: 374, column: 9, scope: !1611)
!1621 = !DILocation(line: 378, column: 16, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1250, file: !127, line: 378, column: 11)
!1623 = !DILocation(line: 378, column: 11, scope: !1250)
!1624 = !DILocation(line: 380, column: 40, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !127, line: 380, column: 15)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !127, line: 379, column: 9)
!1627 = !DILocation(line: 381, column: 21, scope: !1625)
!1628 = !DILocation(line: 381, column: 24, scope: !1625)
!1629 = !DILocation(line: 381, column: 13, scope: !1625)
!1630 = !DILocation(line: 382, column: 19, scope: !1626)
!1631 = !DILocation(line: 382, column: 22, scope: !1626)
!1632 = !DILocation(line: 383, column: 9, scope: !1626)
!1633 = !DILocation(line: 386, column: 12, scope: !1164)
!1634 = !DILocation(line: 389, column: 1, scope: !1164)
!1635 = !DILocation(line: 365, column: 56, scope: !1597)
!1636 = !DILocation(line: 243, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1235, file: !127, line: 242, column: 11)
!1638 = distinct !DISubprogram(name: "human_options", scope: !127, file: !127, line: 462, type: !1639, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1642)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!115, !60, !85, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1642 = !{!1643, !1644, !1645, !1646}
!1643 = !DILocalVariable(name: "spec", arg: 1, scope: !1638, file: !127, line: 462, type: !60)
!1644 = !DILocalVariable(name: "opts", arg: 2, scope: !1638, file: !127, line: 462, type: !85)
!1645 = !DILocalVariable(name: "block_size", arg: 3, scope: !1638, file: !127, line: 462, type: !1641)
!1646 = !DILocalVariable(name: "e", scope: !1638, file: !127, line: 464, type: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !116, line: 39, baseType: !115)
!1648 = !DILocation(line: 462, column: 28, scope: !1638)
!1649 = !DILocation(line: 462, column: 39, scope: !1638)
!1650 = !DILocation(line: 462, column: 56, scope: !1638)
!1651 = !DILocalVariable(name: "spec", arg: 1, scope: !1652, file: !127, line: 412, type: !60)
!1652 = distinct !DISubprogram(name: "humblock", scope: !127, file: !127, line: 412, type: !1653, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1647, !60, !1641, !85}
!1655 = !{!1651, !1656, !1657, !1658, !1659, !1660, !1665}
!1656 = !DILocalVariable(name: "block_size", arg: 2, scope: !1652, file: !127, line: 412, type: !1641)
!1657 = !DILocalVariable(name: "options", arg: 3, scope: !1652, file: !127, line: 412, type: !85)
!1658 = !DILocalVariable(name: "i", scope: !1652, file: !127, line: 414, type: !83)
!1659 = !DILocalVariable(name: "opts", scope: !1652, file: !127, line: 415, type: !83)
!1660 = !DILocalVariable(name: "ptr", scope: !1661, file: !127, line: 436, type: !42)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !127, line: 435, column: 9)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !127, line: 429, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !127, line: 422, column: 5)
!1664 = distinct !DILexicalBlock(scope: !1652, file: !127, line: 417, column: 7)
!1665 = !DILocalVariable(name: "e", scope: !1661, file: !127, line: 437, type: !1647)
!1666 = !DILocation(line: 412, column: 23, scope: !1652, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 464, column: 20, scope: !1638)
!1668 = !DILocation(line: 412, column: 40, scope: !1652, inlinedAt: !1667)
!1669 = !DILocation(line: 412, column: 57, scope: !1652, inlinedAt: !1667)
!1670 = !DILocation(line: 415, column: 7, scope: !1652, inlinedAt: !1667)
!1671 = !DILocation(line: 417, column: 9, scope: !1664, inlinedAt: !1667)
!1672 = !DILocation(line: 418, column: 7, scope: !1664, inlinedAt: !1667)
!1673 = !DILocation(line: 418, column: 20, scope: !1664, inlinedAt: !1667)
!1674 = !DILocation(line: 418, column: 18, scope: !1664, inlinedAt: !1667)
!1675 = !DILocation(line: 419, column: 7, scope: !1664, inlinedAt: !1667)
!1676 = !DILocation(line: 419, column: 20, scope: !1664, inlinedAt: !1667)
!1677 = !DILocation(line: 419, column: 18, scope: !1664, inlinedAt: !1667)
!1678 = !DILocation(line: 417, column: 7, scope: !1652, inlinedAt: !1667)
!1679 = !DILocation(line: 408, column: 10, scope: !1680, inlinedAt: !1683)
!1680 = distinct !DISubprogram(name: "default_block_size", scope: !127, file: !127, line: 406, type: !1681, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !93)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!832}
!1683 = distinct !DILocation(line: 420, column: 19, scope: !1664, inlinedAt: !1667)
!1684 = !DILocation(line: 420, column: 5, scope: !1664, inlinedAt: !1667)
!1685 = !DILocation(line: 423, column: 11, scope: !1686, inlinedAt: !1667)
!1686 = distinct !DILexicalBlock(scope: !1663, file: !127, line: 423, column: 11)
!1687 = !DILocation(line: 423, column: 17, scope: !1686, inlinedAt: !1667)
!1688 = !DILocation(line: 426, column: 15, scope: !1689, inlinedAt: !1667)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !127, line: 424, column: 9)
!1690 = !DILocation(line: 423, column: 11, scope: !1663, inlinedAt: !1667)
!1691 = !DILocation(line: 429, column: 21, scope: !1662, inlinedAt: !1667)
!1692 = !DILocation(line: 414, column: 7, scope: !1652, inlinedAt: !1667)
!1693 = !DILocation(line: 429, column: 13, scope: !1662, inlinedAt: !1667)
!1694 = !DILocation(line: 429, column: 11, scope: !1663, inlinedAt: !1667)
!1695 = !DILocation(line: 431, column: 19, scope: !1696, inlinedAt: !1667)
!1696 = distinct !DILexicalBlock(scope: !1662, file: !127, line: 430, column: 9)
!1697 = !DILocation(line: 431, column: 16, scope: !1696, inlinedAt: !1667)
!1698 = !DILocation(line: 433, column: 9, scope: !1696, inlinedAt: !1667)
!1699 = !DILocation(line: 436, column: 11, scope: !1661, inlinedAt: !1667)
!1700 = !DILocation(line: 436, column: 17, scope: !1661, inlinedAt: !1667)
!1701 = !DILocation(line: 437, column: 28, scope: !1661, inlinedAt: !1667)
!1702 = !DILocation(line: 437, column: 24, scope: !1661, inlinedAt: !1667)
!1703 = !DILocation(line: 439, column: 17, scope: !1704, inlinedAt: !1667)
!1704 = distinct !DILexicalBlock(scope: !1661, file: !127, line: 439, column: 15)
!1705 = !DILocation(line: 439, column: 15, scope: !1661, inlinedAt: !1667)
!1706 = !DILocation(line: 444, column: 28, scope: !1707, inlinedAt: !1667)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !127, line: 444, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1661, file: !127, line: 444, column: 11)
!1709 = !DILocation(line: 444, column: 34, scope: !1707, inlinedAt: !1667)
!1710 = !DILocation(line: 444, column: 11, scope: !1708, inlinedAt: !1667)
!1711 = distinct !{!1711, !1712, !1713}
!1712 = !DILocation(line: 444, column: 11, scope: !1708)
!1713 = !DILocation(line: 453, column: 15, scope: !1708)
!1714 = !DILocation(line: 445, column: 22, scope: !1715, inlinedAt: !1667)
!1715 = distinct !DILexicalBlock(scope: !1707, file: !127, line: 445, column: 17)
!1716 = !DILocation(line: 444, column: 56, scope: !1707, inlinedAt: !1667)
!1717 = !DILocation(line: 445, column: 17, scope: !1707, inlinedAt: !1667)
!1718 = !DILocation(line: 447, column: 22, scope: !1719, inlinedAt: !1667)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !127, line: 446, column: 15)
!1720 = !DILocation(line: 448, column: 21, scope: !1721, inlinedAt: !1667)
!1721 = distinct !DILexicalBlock(scope: !1719, file: !127, line: 448, column: 21)
!1722 = !DILocation(line: 448, column: 29, scope: !1721, inlinedAt: !1667)
!1723 = !DILocation(line: 449, column: 24, scope: !1721, inlinedAt: !1667)
!1724 = !DILocation(line: 448, column: 21, scope: !1719, inlinedAt: !1667)
!1725 = !DILocation(line: 450, column: 36, scope: !1726, inlinedAt: !1667)
!1726 = distinct !DILexicalBlock(scope: !1719, file: !127, line: 450, column: 21)
!1727 = !DILocation(line: 450, column: 39, scope: !1726, inlinedAt: !1667)
!1728 = !DILocation(line: 450, column: 47, scope: !1726, inlinedAt: !1667)
!1729 = !DILocation(line: 450, column: 21, scope: !1719, inlinedAt: !1667)
!1730 = !DILocation(line: 451, column: 24, scope: !1726, inlinedAt: !1667)
!1731 = !DILocation(line: 451, column: 19, scope: !1726, inlinedAt: !1667)
!1732 = !DILocation(line: 454, column: 9, scope: !1662, inlinedAt: !1667)
!1733 = !DILocation(line: 441, column: 24, scope: !1734, inlinedAt: !1667)
!1734 = distinct !DILexicalBlock(scope: !1704, file: !127, line: 440, column: 13)
!1735 = !{!877, !877, i64 0}
!1736 = !DILocation(line: 457, column: 12, scope: !1652, inlinedAt: !1667)
!1737 = !DILocation(line: 458, column: 3, scope: !1652, inlinedAt: !1667)
!1738 = !DILocation(line: 464, column: 16, scope: !1638)
!1739 = !DILocation(line: 465, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1638, file: !127, line: 465, column: 7)
!1741 = !DILocation(line: 465, column: 19, scope: !1740)
!1742 = !DILocation(line: 465, column: 7, scope: !1638)
!1743 = !DILocation(line: 408, column: 10, scope: !1680, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 467, column: 21, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !127, line: 466, column: 5)
!1746 = !DILocation(line: 467, column: 19, scope: !1745)
!1747 = !DILocation(line: 469, column: 5, scope: !1745)
!1748 = !DILocation(line: 470, column: 3, scope: !1638)
!1749 = distinct !DISubprogram(name: "set_program_name", scope: !147, file: !147, line: 39, type: !58, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1750)
!1750 = !{!1751, !1752, !1753}
!1751 = !DILocalVariable(name: "argv0", arg: 1, scope: !1749, file: !147, line: 39, type: !60)
!1752 = !DILocalVariable(name: "slash", scope: !1749, file: !147, line: 46, type: !60)
!1753 = !DILocalVariable(name: "base", scope: !1749, file: !147, line: 47, type: !60)
!1754 = !DILocation(line: 39, column: 31, scope: !1749)
!1755 = !DILocation(line: 51, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !147, line: 51, column: 7)
!1757 = !DILocation(line: 51, column: 7, scope: !1749)
!1758 = !DILocation(line: 55, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !147, line: 52, column: 5)
!1760 = !DILocation(line: 54, column: 7, scope: !1759)
!1761 = !DILocation(line: 56, column: 7, scope: !1759)
!1762 = !DILocation(line: 59, column: 11, scope: !1749)
!1763 = !DILocation(line: 46, column: 15, scope: !1749)
!1764 = !DILocation(line: 60, column: 17, scope: !1749)
!1765 = !DILocation(line: 60, column: 33, scope: !1749)
!1766 = !DILocation(line: 60, column: 11, scope: !1749)
!1767 = !DILocation(line: 47, column: 15, scope: !1749)
!1768 = !DILocation(line: 61, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1749, file: !147, line: 61, column: 7)
!1770 = !DILocation(line: 61, column: 20, scope: !1769)
!1771 = !DILocation(line: 61, column: 25, scope: !1769)
!1772 = !DILocation(line: 61, column: 42, scope: !1769)
!1773 = !DILocation(line: 61, column: 28, scope: !1769)
!1774 = !DILocation(line: 61, column: 61, scope: !1769)
!1775 = !DILocation(line: 61, column: 7, scope: !1749)
!1776 = !DILocation(line: 64, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !147, line: 64, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !147, line: 62, column: 5)
!1779 = !DILocation(line: 64, column: 36, scope: !1777)
!1780 = !DILocation(line: 64, column: 11, scope: !1778)
!1781 = !DILocation(line: 66, column: 24, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !147, line: 65, column: 9)
!1783 = !DILocation(line: 70, column: 41, scope: !1782)
!1784 = !DILocation(line: 72, column: 9, scope: !1782)
!1785 = !DILocation(line: 84, column: 16, scope: !1749)
!1786 = !DILocation(line: 90, column: 27, scope: !1749)
!1787 = !DILocation(line: 92, column: 1, scope: !1749)
!1788 = distinct !DISubprogram(name: "clone_quoting_options", scope: !178, file: !178, line: 114, type: !1789, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1792)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1791, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1792 = !{!1793, !1794, !1795}
!1793 = !DILocalVariable(name: "o", arg: 1, scope: !1788, file: !178, line: 114, type: !1791)
!1794 = !DILocalVariable(name: "e", scope: !1788, file: !178, line: 116, type: !83)
!1795 = !DILocalVariable(name: "p", scope: !1788, file: !178, line: 117, type: !1791)
!1796 = !DILocation(line: 114, column: 48, scope: !1788)
!1797 = !DILocation(line: 116, column: 11, scope: !1788)
!1798 = !DILocation(line: 116, column: 7, scope: !1788)
!1799 = !DILocation(line: 117, column: 40, scope: !1788)
!1800 = !DILocation(line: 117, column: 31, scope: !1788)
!1801 = !DILocation(line: 117, column: 27, scope: !1788)
!1802 = !DILocation(line: 119, column: 9, scope: !1788)
!1803 = !DILocation(line: 120, column: 3, scope: !1788)
!1804 = distinct !DISubprogram(name: "get_quoting_style", scope: !178, file: !178, line: 125, type: !1805, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1809)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!5, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "o", arg: 1, scope: !1804, file: !178, line: 125, type: !1807)
!1811 = !DILocation(line: 125, column: 50, scope: !1804)
!1812 = !DILocation(line: 127, column: 11, scope: !1804)
!1813 = !DILocation(line: 127, column: 46, scope: !1804)
!1814 = !{!1815, !678, i64 0}
!1815 = !{!"quoting_options", !678, i64 0, !743, i64 4, !678, i64 8, !677, i64 40, !677, i64 48}
!1816 = !DILocation(line: 127, column: 3, scope: !1804)
!1817 = distinct !DISubprogram(name: "set_quoting_style", scope: !178, file: !178, line: 133, type: !1818, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1791, !5}
!1820 = !{!1821, !1822}
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1817, file: !178, line: 133, type: !1791)
!1822 = !DILocalVariable(name: "s", arg: 2, scope: !1817, file: !178, line: 133, type: !5)
!1823 = !DILocation(line: 133, column: 44, scope: !1817)
!1824 = !DILocation(line: 133, column: 66, scope: !1817)
!1825 = !DILocation(line: 135, column: 4, scope: !1817)
!1826 = !DILocation(line: 135, column: 39, scope: !1817)
!1827 = !DILocation(line: 135, column: 45, scope: !1817)
!1828 = !DILocation(line: 136, column: 1, scope: !1817)
!1829 = distinct !DISubprogram(name: "set_char_quoting", scope: !178, file: !178, line: 144, type: !1830, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!83, !1791, !43, !83}
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1839, !1840}
!1833 = !DILocalVariable(name: "o", arg: 1, scope: !1829, file: !178, line: 144, type: !1791)
!1834 = !DILocalVariable(name: "c", arg: 2, scope: !1829, file: !178, line: 144, type: !43)
!1835 = !DILocalVariable(name: "i", arg: 3, scope: !1829, file: !178, line: 144, type: !83)
!1836 = !DILocalVariable(name: "uc", scope: !1829, file: !178, line: 146, type: !46)
!1837 = !DILocalVariable(name: "p", scope: !1829, file: !178, line: 147, type: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1839 = !DILocalVariable(name: "shift", scope: !1829, file: !178, line: 149, type: !83)
!1840 = !DILocalVariable(name: "r", scope: !1829, file: !178, line: 150, type: !83)
!1841 = !DILocation(line: 144, column: 43, scope: !1829)
!1842 = !DILocation(line: 144, column: 51, scope: !1829)
!1843 = !DILocation(line: 144, column: 58, scope: !1829)
!1844 = !DILocation(line: 146, column: 17, scope: !1829)
!1845 = !DILocation(line: 148, column: 6, scope: !1829)
!1846 = !DILocation(line: 148, column: 62, scope: !1829)
!1847 = !DILocation(line: 148, column: 57, scope: !1829)
!1848 = !DILocation(line: 147, column: 17, scope: !1829)
!1849 = !DILocation(line: 149, column: 18, scope: !1829)
!1850 = !DILocation(line: 149, column: 15, scope: !1829)
!1851 = !DILocation(line: 149, column: 7, scope: !1829)
!1852 = !DILocation(line: 150, column: 12, scope: !1829)
!1853 = !DILocation(line: 150, column: 15, scope: !1829)
!1854 = !DILocation(line: 150, column: 25, scope: !1829)
!1855 = !DILocation(line: 150, column: 7, scope: !1829)
!1856 = !DILocation(line: 151, column: 13, scope: !1829)
!1857 = !DILocation(line: 151, column: 18, scope: !1829)
!1858 = !DILocation(line: 151, column: 23, scope: !1829)
!1859 = !DILocation(line: 151, column: 6, scope: !1829)
!1860 = !DILocation(line: 152, column: 3, scope: !1829)
!1861 = distinct !DISubprogram(name: "set_quoting_flags", scope: !178, file: !178, line: 160, type: !1862, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!83, !1791, !83}
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "o", arg: 1, scope: !1861, file: !178, line: 160, type: !1791)
!1866 = !DILocalVariable(name: "i", arg: 2, scope: !1861, file: !178, line: 160, type: !83)
!1867 = !DILocalVariable(name: "r", scope: !1861, file: !178, line: 162, type: !83)
!1868 = !DILocation(line: 160, column: 44, scope: !1861)
!1869 = !DILocation(line: 160, column: 51, scope: !1861)
!1870 = !DILocation(line: 163, column: 8, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1861, file: !178, line: 163, column: 7)
!1872 = !DILocation(line: 163, column: 7, scope: !1861)
!1873 = !DILocation(line: 165, column: 10, scope: !1861)
!1874 = !{!1815, !743, i64 4}
!1875 = !DILocation(line: 162, column: 7, scope: !1861)
!1876 = !DILocation(line: 166, column: 12, scope: !1861)
!1877 = !DILocation(line: 167, column: 3, scope: !1861)
!1878 = distinct !DISubprogram(name: "set_custom_quoting", scope: !178, file: !178, line: 171, type: !1879, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !1791, !60, !60}
!1881 = !{!1882, !1883, !1884}
!1882 = !DILocalVariable(name: "o", arg: 1, scope: !1878, file: !178, line: 171, type: !1791)
!1883 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1878, file: !178, line: 172, type: !60)
!1884 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1878, file: !178, line: 172, type: !60)
!1885 = !DILocation(line: 171, column: 45, scope: !1878)
!1886 = !DILocation(line: 172, column: 33, scope: !1878)
!1887 = !DILocation(line: 172, column: 57, scope: !1878)
!1888 = !DILocation(line: 174, column: 8, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1878, file: !178, line: 174, column: 7)
!1890 = !DILocation(line: 174, column: 7, scope: !1878)
!1891 = !DILocation(line: 176, column: 6, scope: !1878)
!1892 = !DILocation(line: 176, column: 12, scope: !1878)
!1893 = !DILocation(line: 177, column: 8, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1878, file: !178, line: 177, column: 7)
!1895 = !DILocation(line: 177, column: 23, scope: !1894)
!1896 = !DILocation(line: 177, column: 19, scope: !1894)
!1897 = !DILocation(line: 178, column: 5, scope: !1894)
!1898 = !DILocation(line: 179, column: 6, scope: !1878)
!1899 = !DILocation(line: 179, column: 17, scope: !1878)
!1900 = !{!1815, !677, i64 40}
!1901 = !DILocation(line: 180, column: 6, scope: !1878)
!1902 = !DILocation(line: 180, column: 18, scope: !1878)
!1903 = !{!1815, !677, i64 48}
!1904 = !DILocation(line: 181, column: 1, scope: !1878)
!1905 = distinct !DISubprogram(name: "quotearg_buffer", scope: !178, file: !178, line: 776, type: !1906, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!47, !42, !47, !60, !47, !1807}
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1909 = !DILocalVariable(name: "buffer", arg: 1, scope: !1905, file: !178, line: 776, type: !42)
!1910 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1905, file: !178, line: 776, type: !47)
!1911 = !DILocalVariable(name: "arg", arg: 3, scope: !1905, file: !178, line: 777, type: !60)
!1912 = !DILocalVariable(name: "argsize", arg: 4, scope: !1905, file: !178, line: 777, type: !47)
!1913 = !DILocalVariable(name: "o", arg: 5, scope: !1905, file: !178, line: 778, type: !1807)
!1914 = !DILocalVariable(name: "p", scope: !1905, file: !178, line: 780, type: !1807)
!1915 = !DILocalVariable(name: "e", scope: !1905, file: !178, line: 781, type: !83)
!1916 = !DILocalVariable(name: "r", scope: !1905, file: !178, line: 782, type: !47)
!1917 = !DILocation(line: 776, column: 24, scope: !1905)
!1918 = !DILocation(line: 776, column: 39, scope: !1905)
!1919 = !DILocation(line: 777, column: 30, scope: !1905)
!1920 = !DILocation(line: 777, column: 42, scope: !1905)
!1921 = !DILocation(line: 778, column: 48, scope: !1905)
!1922 = !DILocation(line: 780, column: 37, scope: !1905)
!1923 = !DILocation(line: 780, column: 33, scope: !1905)
!1924 = !DILocation(line: 781, column: 11, scope: !1905)
!1925 = !DILocation(line: 781, column: 7, scope: !1905)
!1926 = !DILocation(line: 783, column: 43, scope: !1905)
!1927 = !DILocation(line: 783, column: 53, scope: !1905)
!1928 = !DILocation(line: 783, column: 60, scope: !1905)
!1929 = !DILocation(line: 784, column: 43, scope: !1905)
!1930 = !DILocation(line: 784, column: 58, scope: !1905)
!1931 = !DILocation(line: 782, column: 14, scope: !1905)
!1932 = !DILocation(line: 782, column: 10, scope: !1905)
!1933 = !DILocation(line: 785, column: 9, scope: !1905)
!1934 = !DILocation(line: 786, column: 3, scope: !1905)
!1935 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !178, file: !178, line: 248, type: !1936, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !1940)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!47, !42, !47, !60, !47, !5, !83, !1938, !60, !60}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1965, !1966, !1967, !1968, !1969, !1972, !1973, !1989, !1992, !1993, !2000}
!1941 = !DILocalVariable(name: "buffer", arg: 1, scope: !1935, file: !178, line: 248, type: !42)
!1942 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1935, file: !178, line: 248, type: !47)
!1943 = !DILocalVariable(name: "arg", arg: 3, scope: !1935, file: !178, line: 249, type: !60)
!1944 = !DILocalVariable(name: "argsize", arg: 4, scope: !1935, file: !178, line: 249, type: !47)
!1945 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1935, file: !178, line: 250, type: !5)
!1946 = !DILocalVariable(name: "flags", arg: 6, scope: !1935, file: !178, line: 250, type: !83)
!1947 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1935, file: !178, line: 251, type: !1938)
!1948 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1935, file: !178, line: 252, type: !60)
!1949 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1935, file: !178, line: 253, type: !60)
!1950 = !DILocalVariable(name: "i", scope: !1935, file: !178, line: 255, type: !47)
!1951 = !DILocalVariable(name: "len", scope: !1935, file: !178, line: 256, type: !47)
!1952 = !DILocalVariable(name: "orig_buffersize", scope: !1935, file: !178, line: 257, type: !47)
!1953 = !DILocalVariable(name: "quote_string", scope: !1935, file: !178, line: 258, type: !60)
!1954 = !DILocalVariable(name: "quote_string_len", scope: !1935, file: !178, line: 259, type: !47)
!1955 = !DILocalVariable(name: "backslash_escapes", scope: !1935, file: !178, line: 260, type: !53)
!1956 = !DILocalVariable(name: "unibyte_locale", scope: !1935, file: !178, line: 261, type: !53)
!1957 = !DILocalVariable(name: "elide_outer_quotes", scope: !1935, file: !178, line: 262, type: !53)
!1958 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1935, file: !178, line: 263, type: !53)
!1959 = !DILocalVariable(name: "encountered_single_quote", scope: !1935, file: !178, line: 264, type: !53)
!1960 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1935, file: !178, line: 265, type: !53)
!1961 = !DILocalVariable(name: "c", scope: !1962, file: !178, line: 394, type: !46)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !178, line: 393, column: 5)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !178, line: 392, column: 3)
!1964 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 392, column: 3)
!1965 = !DILocalVariable(name: "esc", scope: !1962, file: !178, line: 395, type: !46)
!1966 = !DILocalVariable(name: "is_right_quote", scope: !1962, file: !178, line: 396, type: !53)
!1967 = !DILocalVariable(name: "escaping", scope: !1962, file: !178, line: 397, type: !53)
!1968 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1962, file: !178, line: 398, type: !53)
!1969 = !DILocalVariable(name: "m", scope: !1970, file: !178, line: 602, type: !47)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 600, column: 11)
!1971 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 418, column: 9)
!1972 = !DILocalVariable(name: "printable", scope: !1970, file: !178, line: 604, type: !53)
!1973 = !DILocalVariable(name: "mbstate", scope: !1974, file: !178, line: 613, type: !1976)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !178, line: 612, column: 15)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !178, line: 606, column: 17)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1977, line: 6, baseType: !1978)
!1977 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1979, line: 21, baseType: !1980)
!1979 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1979, line: 13, size: 64, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1980, file: !1979, line: 15, baseType: !83, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1980, file: !1979, line: 20, baseType: !1984, size: 32, offset: 32)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1980, file: !1979, line: 16, size: 32, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1984, file: !1979, line: 18, baseType: !191, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1984, file: !1979, line: 19, baseType: !1988, size: 32)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !87)
!1989 = !DILocalVariable(name: "w", scope: !1990, file: !178, line: 623, type: !1991)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !178, line: 622, column: 19)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 90, baseType: !83)
!1992 = !DILocalVariable(name: "bytes", scope: !1990, file: !178, line: 624, type: !47)
!1993 = !DILocalVariable(name: "j", scope: !1994, file: !178, line: 649, type: !47)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !178, line: 648, column: 27)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !178, line: 646, column: 29)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !178, line: 641, column: 23)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !178, line: 633, column: 30)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !178, line: 628, column: 30)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !178, line: 626, column: 25)
!2000 = !DILocalVariable(name: "ilim", scope: !2001, file: !178, line: 676, type: !47)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !178, line: 673, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1970, file: !178, line: 672, column: 17)
!2003 = !DILocation(line: 248, column: 33, scope: !1935)
!2004 = !DILocation(line: 248, column: 48, scope: !1935)
!2005 = !DILocation(line: 249, column: 39, scope: !1935)
!2006 = !DILocation(line: 249, column: 51, scope: !1935)
!2007 = !DILocation(line: 250, column: 46, scope: !1935)
!2008 = !DILocation(line: 250, column: 65, scope: !1935)
!2009 = !DILocation(line: 251, column: 47, scope: !1935)
!2010 = !DILocation(line: 252, column: 39, scope: !1935)
!2011 = !DILocation(line: 253, column: 39, scope: !1935)
!2012 = !DILocation(line: 256, column: 10, scope: !1935)
!2013 = !DILocation(line: 257, column: 10, scope: !1935)
!2014 = !DILocation(line: 258, column: 15, scope: !1935)
!2015 = !DILocation(line: 259, column: 10, scope: !1935)
!2016 = !DILocation(line: 260, column: 8, scope: !1935)
!2017 = !DILocation(line: 261, column: 25, scope: !1935)
!2018 = !DILocation(line: 261, column: 36, scope: !1935)
!2019 = !DILocation(line: 262, column: 8, scope: !1935)
!2020 = !DILocation(line: 263, column: 8, scope: !1935)
!2021 = !DILocation(line: 264, column: 8, scope: !1935)
!2022 = !DILocation(line: 265, column: 8, scope: !1935)
!2023 = !DILocation(line: 265, column: 3, scope: !1935)
!2024 = !DILocation(line: 308, column: 3, scope: !1935)
!2025 = !DILocation(line: 315, column: 11, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 309, column: 5)
!2027 = !DILocation(line: 315, column: 12, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2026, file: !178, line: 315, column: 11)
!2029 = !DILocation(line: 316, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !178, line: 316, column: 9)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !178, line: 316, column: 9)
!2032 = !DILocation(line: 316, column: 9, scope: !2031)
!2033 = !DILocation(line: 354, column: 26, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !178, line: 332, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !178, line: 331, column: 13)
!2036 = distinct !DILexicalBlock(scope: !2026, file: !178, line: 330, column: 7)
!2037 = !DILocation(line: 355, column: 27, scope: !2034)
!2038 = !DILocation(line: 356, column: 11, scope: !2034)
!2039 = !DILocation(line: 357, column: 14, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !178, line: 357, column: 13)
!2041 = !DILocation(line: 357, column: 13, scope: !2036)
!2042 = !DILocation(line: 358, column: 43, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !178, line: 358, column: 11)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !178, line: 358, column: 11)
!2045 = !DILocation(line: 358, column: 11, scope: !2044)
!2046 = !DILocation(line: 359, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !178, line: 359, column: 13)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !178, line: 359, column: 13)
!2049 = !DILocation(line: 359, column: 13, scope: !2048)
!2050 = !DILocation(line: 358, column: 70, scope: !2043)
!2051 = distinct !{!2051, !2045, !2052}
!2052 = !DILocation(line: 359, column: 13, scope: !2044)
!2053 = !DILocation(line: 362, column: 28, scope: !2036)
!2054 = !DILocation(line: 364, column: 7, scope: !2026)
!2055 = !DILocation(line: 367, column: 7, scope: !2026)
!2056 = !DILocation(line: 370, column: 7, scope: !2026)
!2057 = !DILocation(line: 373, column: 12, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2026, file: !178, line: 373, column: 11)
!2059 = !DILocation(line: 373, column: 11, scope: !2026)
!2060 = !DILocation(line: 378, column: 12, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2026, file: !178, line: 378, column: 11)
!2062 = !DILocation(line: 378, column: 11, scope: !2026)
!2063 = !DILocation(line: 379, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !178, line: 379, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !178, line: 379, column: 9)
!2066 = !DILocation(line: 379, column: 9, scope: !2065)
!2067 = !DILocation(line: 386, column: 7, scope: !2026)
!2068 = !DILocation(line: 389, column: 7, scope: !2026)
!2069 = !DILocation(line: 255, column: 10, scope: !1935)
!2070 = !DILocation(line: 392, column: 8, scope: !1964)
!2071 = !DILocation(line: 392, column: 27, scope: !1963)
!2072 = !DILocation(line: 392, column: 19, scope: !1963)
!2073 = !DILocation(line: 392, column: 60, scope: !1963)
!2074 = !DILocation(line: 392, column: 3, scope: !1964)
!2075 = !DILocation(line: 392, column: 41, scope: !1963)
!2076 = !DILocation(line: 392, column: 48, scope: !1963)
!2077 = !DILocation(line: 396, column: 12, scope: !1962)
!2078 = !DILocation(line: 397, column: 12, scope: !1962)
!2079 = !DILocation(line: 398, column: 12, scope: !1962)
!2080 = !DILocation(line: 401, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 400, column: 11)
!2082 = !DILocation(line: 403, column: 17, scope: !2081)
!2083 = !DILocation(line: 404, column: 39, scope: !2081)
!2084 = !DILocation(line: 408, column: 32, scope: !2081)
!2085 = !DILocation(line: 404, column: 19, scope: !2081)
!2086 = !DILocation(line: 404, column: 15, scope: !2081)
!2087 = !DILocation(line: 409, column: 11, scope: !2081)
!2088 = !DILocation(line: 409, column: 26, scope: !2081)
!2089 = !DILocation(line: 409, column: 14, scope: !2081)
!2090 = !DILocation(line: 409, column: 63, scope: !2081)
!2091 = !DILocation(line: 400, column: 11, scope: !1962)
!2092 = !DILocation(line: 416, column: 11, scope: !1962)
!2093 = !DILocation(line: 394, column: 21, scope: !1962)
!2094 = !DILocation(line: 417, column: 7, scope: !1962)
!2095 = !DILocation(line: 420, column: 15, scope: !1971)
!2096 = !DILocation(line: 422, column: 15, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !178, line: 422, column: 15)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !178, line: 421, column: 13)
!2099 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 420, column: 15)
!2100 = !DILocation(line: 422, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !178, line: 422, column: 15)
!2102 = !DILocation(line: 422, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !178, line: 422, column: 15)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !178, line: 422, column: 15)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !178, line: 422, column: 15)
!2106 = !DILocation(line: 422, column: 15, scope: !2104)
!2107 = !DILocation(line: 422, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !178, line: 422, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !178, line: 422, column: 15)
!2110 = !DILocation(line: 422, column: 15, scope: !2109)
!2111 = !DILocation(line: 422, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !178, line: 422, column: 15)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !178, line: 422, column: 15)
!2114 = !DILocation(line: 422, column: 15, scope: !2113)
!2115 = !DILocation(line: 422, column: 15, scope: !2105)
!2116 = !DILocation(line: 422, column: 15, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !178, line: 422, column: 15)
!2118 = distinct !DILexicalBlock(scope: !2097, file: !178, line: 422, column: 15)
!2119 = !DILocation(line: 422, column: 15, scope: !2118)
!2120 = !DILocation(line: 430, column: 19, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2098, file: !178, line: 429, column: 19)
!2122 = !DILocation(line: 430, column: 24, scope: !2121)
!2123 = !DILocation(line: 430, column: 28, scope: !2121)
!2124 = !DILocation(line: 430, column: 38, scope: !2121)
!2125 = !DILocation(line: 430, column: 48, scope: !2121)
!2126 = !DILocation(line: 430, column: 59, scope: !2121)
!2127 = !DILocation(line: 432, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !178, line: 432, column: 19)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !178, line: 432, column: 19)
!2130 = distinct !DILexicalBlock(scope: !2121, file: !178, line: 431, column: 17)
!2131 = !DILocation(line: 432, column: 19, scope: !2129)
!2132 = !DILocation(line: 433, column: 19, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !178, line: 433, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !178, line: 433, column: 19)
!2135 = !DILocation(line: 433, column: 19, scope: !2134)
!2136 = !DILocation(line: 434, column: 17, scope: !2130)
!2137 = !DILocation(line: 441, column: 20, scope: !2099)
!2138 = !DILocation(line: 446, column: 11, scope: !1971)
!2139 = !DILocation(line: 449, column: 19, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 447, column: 13)
!2141 = !DILocation(line: 455, column: 19, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2140, file: !178, line: 454, column: 19)
!2143 = !DILocation(line: 455, column: 24, scope: !2142)
!2144 = !DILocation(line: 455, column: 28, scope: !2142)
!2145 = !DILocation(line: 455, column: 38, scope: !2142)
!2146 = !DILocation(line: 455, column: 47, scope: !2142)
!2147 = !DILocation(line: 455, column: 41, scope: !2142)
!2148 = !DILocation(line: 455, column: 52, scope: !2142)
!2149 = !DILocation(line: 454, column: 19, scope: !2140)
!2150 = !DILocation(line: 456, column: 25, scope: !2142)
!2151 = !DILocation(line: 456, column: 17, scope: !2142)
!2152 = !DILocation(line: 463, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2142, file: !178, line: 457, column: 19)
!2154 = !DILocation(line: 467, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !178, line: 467, column: 21)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !178, line: 467, column: 21)
!2157 = !DILocation(line: 467, column: 21, scope: !2156)
!2158 = !DILocation(line: 468, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !178, line: 468, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !178, line: 468, column: 21)
!2161 = !DILocation(line: 468, column: 21, scope: !2160)
!2162 = !DILocation(line: 469, column: 21, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !178, line: 469, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2153, file: !178, line: 469, column: 21)
!2165 = !DILocation(line: 469, column: 21, scope: !2164)
!2166 = !DILocation(line: 470, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !178, line: 470, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2153, file: !178, line: 470, column: 21)
!2169 = !DILocation(line: 470, column: 21, scope: !2168)
!2170 = !DILocation(line: 471, column: 21, scope: !2153)
!2171 = !DILocation(line: 395, column: 21, scope: !1962)
!2172 = !DILocation(line: 484, column: 31, scope: !1971)
!2173 = !DILocation(line: 485, column: 31, scope: !1971)
!2174 = !DILocation(line: 487, column: 31, scope: !1971)
!2175 = !DILocation(line: 488, column: 31, scope: !1971)
!2176 = !DILocation(line: 489, column: 31, scope: !1971)
!2177 = !DILocation(line: 492, column: 15, scope: !1971)
!2178 = !DILocation(line: 494, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !178, line: 493, column: 13)
!2180 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 492, column: 15)
!2181 = !DILocation(line: 501, column: 33, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 501, column: 15)
!2183 = !DILocation(line: 506, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 505, column: 15)
!2185 = !DILocation(line: 510, column: 15, scope: !1971)
!2186 = !DILocation(line: 518, column: 26, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 518, column: 15)
!2188 = !DILocation(line: 518, column: 15, scope: !1971)
!2189 = !DILocation(line: 518, column: 40, scope: !2187)
!2190 = !DILocation(line: 518, column: 47, scope: !2187)
!2191 = !DILocation(line: 522, column: 17, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 522, column: 15)
!2193 = !DILocation(line: 518, column: 18, scope: !2187)
!2194 = !DILocation(line: 518, column: 65, scope: !2187)
!2195 = !DILocation(line: 522, column: 15, scope: !1971)
!2196 = !DILocation(line: 526, column: 11, scope: !1971)
!2197 = !DILocation(line: 541, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 540, column: 15)
!2199 = !DILocation(line: 548, column: 15, scope: !1971)
!2200 = !DILocation(line: 550, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !178, line: 549, column: 13)
!2202 = distinct !DILexicalBlock(scope: !1971, file: !178, line: 548, column: 15)
!2203 = !DILocation(line: 553, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !178, line: 553, column: 19)
!2205 = !DILocation(line: 553, column: 35, scope: !2204)
!2206 = !DILocation(line: 553, column: 30, scope: !2204)
!2207 = !DILocation(line: 562, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !178, line: 562, column: 15)
!2209 = distinct !DILexicalBlock(scope: !2201, file: !178, line: 562, column: 15)
!2210 = !DILocation(line: 562, column: 15, scope: !2209)
!2211 = !DILocation(line: 563, column: 15, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !178, line: 563, column: 15)
!2213 = distinct !DILexicalBlock(scope: !2201, file: !178, line: 563, column: 15)
!2214 = !DILocation(line: 563, column: 15, scope: !2213)
!2215 = !DILocation(line: 564, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !178, line: 564, column: 15)
!2217 = distinct !DILexicalBlock(scope: !2201, file: !178, line: 564, column: 15)
!2218 = !DILocation(line: 564, column: 15, scope: !2217)
!2219 = !DILocation(line: 566, column: 13, scope: !2201)
!2220 = !DILocation(line: 606, column: 17, scope: !1970)
!2221 = !DILocation(line: 602, column: 20, scope: !1970)
!2222 = !DILocation(line: 609, column: 29, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1975, file: !178, line: 607, column: 15)
!2224 = !{!878, !878, i64 0}
!2225 = !DILocation(line: 609, column: 27, scope: !2223)
!2226 = !DILocation(line: 604, column: 18, scope: !1970)
!2227 = !DILocation(line: 610, column: 15, scope: !2223)
!2228 = !DILocation(line: 613, column: 17, scope: !1974)
!2229 = !DILocation(line: 614, column: 17, scope: !1974)
!2230 = !DILocation(line: 618, column: 29, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1974, file: !178, line: 618, column: 21)
!2232 = !DILocation(line: 618, column: 21, scope: !1974)
!2233 = !DILocation(line: 619, column: 29, scope: !2231)
!2234 = !DILocation(line: 619, column: 19, scope: !2231)
!2235 = !DILocation(line: 621, column: 17, scope: !1974)
!2236 = distinct !{!2236, !2235, !2237}
!2237 = !DILocation(line: 667, column: 44, scope: !1974)
!2238 = !DILocation(line: 623, column: 21, scope: !1990)
!2239 = !DILocation(line: 624, column: 56, scope: !1990)
!2240 = !DILocation(line: 624, column: 50, scope: !1990)
!2241 = !DILocation(line: 625, column: 53, scope: !1990)
!2242 = !DILocation(line: 613, column: 27, scope: !1974)
!2243 = !DILocation(line: 623, column: 29, scope: !1990)
!2244 = !DILocation(line: 624, column: 36, scope: !1990)
!2245 = !DILocation(line: 624, column: 28, scope: !1990)
!2246 = !DILocation(line: 626, column: 25, scope: !1990)
!2247 = !DILocation(line: 636, column: 38, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1997, file: !178, line: 634, column: 23)
!2249 = !DILocation(line: 636, column: 48, scope: !2248)
!2250 = !DILocation(line: 636, column: 51, scope: !2248)
!2251 = !DILocation(line: 636, column: 25, scope: !2248)
!2252 = !DILocation(line: 637, column: 28, scope: !2248)
!2253 = !DILocation(line: 636, column: 34, scope: !2248)
!2254 = distinct !{!2254, !2251, !2252}
!2255 = !DILocation(line: 650, column: 43, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !178, line: 650, column: 29)
!2257 = distinct !DILexicalBlock(scope: !1994, file: !178, line: 650, column: 29)
!2258 = !DILocation(line: 647, column: 29, scope: !1995)
!2259 = !DILocation(line: 649, column: 36, scope: !1994)
!2260 = !DILocation(line: 651, column: 49, scope: !2256)
!2261 = !DILocation(line: 651, column: 39, scope: !2256)
!2262 = !DILocation(line: 651, column: 31, scope: !2256)
!2263 = !DILocation(line: 650, column: 53, scope: !2256)
!2264 = !DILocation(line: 650, column: 29, scope: !2257)
!2265 = distinct !{!2265, !2264, !2266}
!2266 = !DILocation(line: 659, column: 33, scope: !2257)
!2267 = !DILocation(line: 666, column: 19, scope: !1974)
!2268 = !DILocation(line: 662, column: 41, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1996, file: !178, line: 662, column: 29)
!2270 = !DILocation(line: 662, column: 31, scope: !2269)
!2271 = !DILocation(line: 662, column: 29, scope: !1996)
!2272 = !DILocation(line: 664, column: 27, scope: !1996)
!2273 = !DILocation(line: 667, column: 26, scope: !1974)
!2274 = !DILocation(line: 667, column: 24, scope: !1974)
!2275 = !DILocation(line: 666, column: 19, scope: !1990)
!2276 = !DILocation(line: 668, column: 15, scope: !1975)
!2277 = !DILocation(line: 670, column: 40, scope: !1970)
!2278 = !DILocation(line: 672, column: 19, scope: !2002)
!2279 = !DILocation(line: 672, column: 45, scope: !2002)
!2280 = !DILocation(line: 672, column: 23, scope: !2002)
!2281 = !DILocation(line: 676, column: 33, scope: !2001)
!2282 = !DILocation(line: 676, column: 24, scope: !2001)
!2283 = !DILocation(line: 678, column: 17, scope: !2001)
!2284 = !DILocation(line: 680, column: 43, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !178, line: 680, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !178, line: 679, column: 19)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !178, line: 678, column: 17)
!2288 = distinct !DILexicalBlock(scope: !2001, file: !178, line: 678, column: 17)
!2289 = !DILocation(line: 682, column: 25, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !178, line: 682, column: 25)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !178, line: 681, column: 23)
!2292 = !DILocation(line: 682, column: 25, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !178, line: 682, column: 25)
!2294 = !DILocation(line: 682, column: 25, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !178, line: 682, column: 25)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !178, line: 682, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !178, line: 682, column: 25)
!2298 = !DILocation(line: 682, column: 25, scope: !2296)
!2299 = !DILocation(line: 682, column: 25, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !178, line: 682, column: 25)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !178, line: 682, column: 25)
!2302 = !DILocation(line: 682, column: 25, scope: !2301)
!2303 = !DILocation(line: 682, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !178, line: 682, column: 25)
!2305 = distinct !DILexicalBlock(scope: !2297, file: !178, line: 682, column: 25)
!2306 = !DILocation(line: 682, column: 25, scope: !2305)
!2307 = !DILocation(line: 682, column: 25, scope: !2297)
!2308 = !DILocation(line: 682, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !178, line: 682, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !178, line: 682, column: 25)
!2311 = !DILocation(line: 682, column: 25, scope: !2310)
!2312 = !DILocation(line: 683, column: 25, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !178, line: 683, column: 25)
!2314 = distinct !DILexicalBlock(scope: !2291, file: !178, line: 683, column: 25)
!2315 = !DILocation(line: 683, column: 25, scope: !2314)
!2316 = !DILocation(line: 684, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !178, line: 684, column: 25)
!2318 = distinct !DILexicalBlock(scope: !2291, file: !178, line: 684, column: 25)
!2319 = !DILocation(line: 684, column: 25, scope: !2318)
!2320 = !DILocation(line: 685, column: 38, scope: !2291)
!2321 = !DILocation(line: 685, column: 33, scope: !2291)
!2322 = !DILocation(line: 686, column: 23, scope: !2291)
!2323 = !DILocation(line: 687, column: 30, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2285, file: !178, line: 687, column: 30)
!2325 = !DILocation(line: 687, column: 30, scope: !2285)
!2326 = !DILocation(line: 689, column: 25, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !178, line: 689, column: 25)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !178, line: 689, column: 25)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !178, line: 688, column: 23)
!2330 = !DILocation(line: 689, column: 25, scope: !2328)
!2331 = !DILocation(line: 691, column: 23, scope: !2329)
!2332 = !DILocation(line: 692, column: 35, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2286, file: !178, line: 692, column: 25)
!2334 = !DILocation(line: 692, column: 30, scope: !2333)
!2335 = !DILocation(line: 692, column: 25, scope: !2286)
!2336 = !DILocation(line: 694, column: 21, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !178, line: 694, column: 21)
!2338 = distinct !DILexicalBlock(scope: !2286, file: !178, line: 694, column: 21)
!2339 = !DILocation(line: 694, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !178, line: 694, column: 21)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !178, line: 694, column: 21)
!2342 = distinct !DILexicalBlock(scope: !2337, file: !178, line: 694, column: 21)
!2343 = !DILocation(line: 694, column: 21, scope: !2341)
!2344 = !DILocation(line: 694, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !178, line: 694, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !178, line: 694, column: 21)
!2347 = !DILocation(line: 694, column: 21, scope: !2346)
!2348 = !DILocation(line: 694, column: 21, scope: !2342)
!2349 = !DILocation(line: 695, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !178, line: 695, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2286, file: !178, line: 695, column: 21)
!2352 = !DILocation(line: 695, column: 21, scope: !2351)
!2353 = !DILocation(line: 696, column: 25, scope: !2286)
!2354 = !DILocation(line: 678, column: 17, scope: !2287)
!2355 = distinct !{!2355, !2356, !2357}
!2356 = !DILocation(line: 678, column: 17, scope: !2288)
!2357 = !DILocation(line: 697, column: 19, scope: !2288)
!2358 = !DILocation(line: 704, column: 34, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 704, column: 11)
!2360 = !DILocation(line: 706, column: 14, scope: !2359)
!2361 = !DILocation(line: 707, column: 14, scope: !2359)
!2362 = !DILocation(line: 707, column: 35, scope: !2359)
!2363 = !DILocation(line: 707, column: 17, scope: !2359)
!2364 = !DILocation(line: 707, column: 53, scope: !2359)
!2365 = !DILocation(line: 707, column: 47, scope: !2359)
!2366 = !DILocation(line: 707, column: 65, scope: !2359)
!2367 = !DILocation(line: 708, column: 15, scope: !2359)
!2368 = !DILocation(line: 708, column: 11, scope: !2359)
!2369 = !DILocation(line: 704, column: 11, scope: !1962)
!2370 = !DILocation(line: 712, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 712, column: 7)
!2372 = !DILocation(line: 712, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2371, file: !178, line: 712, column: 7)
!2374 = !DILocation(line: 712, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !178, line: 712, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !178, line: 712, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !178, line: 712, column: 7)
!2378 = !DILocation(line: 712, column: 7, scope: !2376)
!2379 = !DILocation(line: 712, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !178, line: 712, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !178, line: 712, column: 7)
!2382 = !DILocation(line: 712, column: 7, scope: !2381)
!2383 = !DILocation(line: 712, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !178, line: 712, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2377, file: !178, line: 712, column: 7)
!2386 = !DILocation(line: 712, column: 7, scope: !2385)
!2387 = !DILocation(line: 712, column: 7, scope: !2377)
!2388 = !DILocation(line: 712, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !178, line: 712, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2371, file: !178, line: 712, column: 7)
!2391 = !DILocation(line: 712, column: 7, scope: !2390)
!2392 = !DILocation(line: 715, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !178, line: 715, column: 7)
!2394 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 715, column: 7)
!2395 = !DILocation(line: 715, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !178, line: 715, column: 7)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !178, line: 715, column: 7)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !178, line: 715, column: 7)
!2399 = !DILocation(line: 715, column: 7, scope: !2397)
!2400 = !DILocation(line: 715, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !178, line: 715, column: 7)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !178, line: 715, column: 7)
!2403 = !DILocation(line: 715, column: 7, scope: !2402)
!2404 = !DILocation(line: 715, column: 7, scope: !2398)
!2405 = !DILocation(line: 716, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !178, line: 716, column: 7)
!2407 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 716, column: 7)
!2408 = !DILocation(line: 716, column: 7, scope: !2407)
!2409 = !DILocation(line: 718, column: 13, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1962, file: !178, line: 718, column: 11)
!2411 = !DILocation(line: 718, column: 11, scope: !1962)
!2412 = !DILocation(line: 720, column: 5, scope: !1963)
!2413 = !DILocation(line: 392, column: 75, scope: !1963)
!2414 = !DILocation(line: 392, column: 3, scope: !1963)
!2415 = distinct !{!2415, !2074, !2416}
!2416 = !DILocation(line: 720, column: 5, scope: !1964)
!2417 = !DILocation(line: 722, column: 11, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 722, column: 7)
!2419 = !DILocation(line: 722, column: 16, scope: !2418)
!2420 = !DILocation(line: 730, column: 51, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 730, column: 7)
!2422 = !DILocation(line: 731, column: 10, scope: !2421)
!2423 = !DILocation(line: 733, column: 11, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !178, line: 733, column: 11)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !178, line: 732, column: 5)
!2426 = !DILocation(line: 733, column: 11, scope: !2425)
!2427 = !DILocation(line: 734, column: 16, scope: !2424)
!2428 = !DILocation(line: 734, column: 9, scope: !2424)
!2429 = !DILocation(line: 738, column: 18, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !178, line: 738, column: 16)
!2431 = !DILocation(line: 738, column: 32, scope: !2430)
!2432 = !DILocation(line: 738, column: 29, scope: !2430)
!2433 = !DILocation(line: 747, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 747, column: 7)
!2435 = !DILocation(line: 747, column: 20, scope: !2434)
!2436 = !DILocation(line: 748, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !178, line: 748, column: 5)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !178, line: 748, column: 5)
!2439 = !DILocation(line: 748, column: 5, scope: !2438)
!2440 = !DILocation(line: 749, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !178, line: 749, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !178, line: 749, column: 7)
!2443 = !DILocation(line: 749, column: 7, scope: !2442)
!2444 = !DILocation(line: 748, column: 39, scope: !2437)
!2445 = distinct !{!2445, !2439, !2446}
!2446 = !DILocation(line: 749, column: 7, scope: !2438)
!2447 = !DILocation(line: 751, column: 11, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 751, column: 7)
!2449 = !DILocation(line: 751, column: 7, scope: !1935)
!2450 = !DILocation(line: 752, column: 5, scope: !2448)
!2451 = !DILocation(line: 752, column: 17, scope: !2448)
!2452 = !DILocation(line: 758, column: 21, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !1935, file: !178, line: 758, column: 7)
!2454 = !DILocation(line: 758, column: 54, scope: !2453)
!2455 = !DILocation(line: 758, column: 51, scope: !2453)
!2456 = !DILocation(line: 762, column: 42, scope: !1935)
!2457 = !DILocation(line: 760, column: 10, scope: !1935)
!2458 = !DILocation(line: 760, column: 3, scope: !1935)
!2459 = !DILocation(line: 764, column: 1, scope: !1935)
!2460 = distinct !DISubprogram(name: "gettext_quote", scope: !178, file: !178, line: 199, type: !2461, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!60, !60, !5}
!2463 = !{!2464, !2465, !2466, !2467}
!2464 = !DILocalVariable(name: "msgid", arg: 1, scope: !2460, file: !178, line: 199, type: !60)
!2465 = !DILocalVariable(name: "s", arg: 2, scope: !2460, file: !178, line: 199, type: !5)
!2466 = !DILocalVariable(name: "translation", scope: !2460, file: !178, line: 201, type: !60)
!2467 = !DILocalVariable(name: "locale_code", scope: !2460, file: !178, line: 202, type: !60)
!2468 = !DILocation(line: 199, column: 28, scope: !2460)
!2469 = !DILocation(line: 199, column: 54, scope: !2460)
!2470 = !DILocation(line: 201, column: 29, scope: !2460)
!2471 = !DILocation(line: 201, column: 15, scope: !2460)
!2472 = !DILocation(line: 204, column: 19, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2460, file: !178, line: 204, column: 7)
!2474 = !DILocation(line: 204, column: 7, scope: !2460)
!2475 = !DILocation(line: 225, column: 17, scope: !2460)
!2476 = !DILocation(line: 202, column: 15, scope: !2460)
!2477 = !DILocalVariable(name: "s2", arg: 2, scope: !2478, file: !2479, line: 160, type: !60)
!2478 = distinct !DISubprogram(name: "strcaseeq0", scope: !2479, file: !2479, line: 160, type: !2480, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2482)
!2479 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!83, !60, !60, !43, !43, !43, !43, !43, !43, !43, !43, !43}
!2482 = !{!2483, !2477, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492}
!2483 = !DILocalVariable(name: "s1", arg: 1, scope: !2478, file: !2479, line: 160, type: !60)
!2484 = !DILocalVariable(name: "s20", arg: 3, scope: !2478, file: !2479, line: 160, type: !43)
!2485 = !DILocalVariable(name: "s21", arg: 4, scope: !2478, file: !2479, line: 160, type: !43)
!2486 = !DILocalVariable(name: "s22", arg: 5, scope: !2478, file: !2479, line: 160, type: !43)
!2487 = !DILocalVariable(name: "s23", arg: 6, scope: !2478, file: !2479, line: 160, type: !43)
!2488 = !DILocalVariable(name: "s24", arg: 7, scope: !2478, file: !2479, line: 160, type: !43)
!2489 = !DILocalVariable(name: "s25", arg: 8, scope: !2478, file: !2479, line: 160, type: !43)
!2490 = !DILocalVariable(name: "s26", arg: 9, scope: !2478, file: !2479, line: 160, type: !43)
!2491 = !DILocalVariable(name: "s27", arg: 10, scope: !2478, file: !2479, line: 160, type: !43)
!2492 = !DILocalVariable(name: "s28", arg: 11, scope: !2478, file: !2479, line: 160, type: !43)
!2493 = !DILocation(line: 160, column: 41, scope: !2478, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 226, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2460, file: !178, line: 226, column: 7)
!2496 = !DILocation(line: 160, column: 120, scope: !2478, inlinedAt: !2494)
!2497 = !DILocation(line: 160, column: 130, scope: !2478, inlinedAt: !2494)
!2498 = !DILocation(line: 162, column: 7, scope: !2499, inlinedAt: !2494)
!2499 = distinct !DILexicalBlock(scope: !2478, file: !2479, line: 162, column: 7)
!2500 = !DILocalVariable(name: "s2", arg: 2, scope: !2501, file: !2479, line: 146, type: !60)
!2501 = distinct !DISubprogram(name: "strcaseeq1", scope: !2479, file: !2479, line: 146, type: !2502, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!83, !60, !60, !43, !43, !43, !43, !43, !43, !43, !43}
!2504 = !{!2505, !2500, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2505 = !DILocalVariable(name: "s1", arg: 1, scope: !2501, file: !2479, line: 146, type: !60)
!2506 = !DILocalVariable(name: "s21", arg: 3, scope: !2501, file: !2479, line: 146, type: !43)
!2507 = !DILocalVariable(name: "s22", arg: 4, scope: !2501, file: !2479, line: 146, type: !43)
!2508 = !DILocalVariable(name: "s23", arg: 5, scope: !2501, file: !2479, line: 146, type: !43)
!2509 = !DILocalVariable(name: "s24", arg: 6, scope: !2501, file: !2479, line: 146, type: !43)
!2510 = !DILocalVariable(name: "s25", arg: 7, scope: !2501, file: !2479, line: 146, type: !43)
!2511 = !DILocalVariable(name: "s26", arg: 8, scope: !2501, file: !2479, line: 146, type: !43)
!2512 = !DILocalVariable(name: "s27", arg: 9, scope: !2501, file: !2479, line: 146, type: !43)
!2513 = !DILocalVariable(name: "s28", arg: 10, scope: !2501, file: !2479, line: 146, type: !43)
!2514 = !DILocation(line: 146, column: 41, scope: !2501, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 167, column: 16, scope: !2516, inlinedAt: !2494)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !2479, line: 164, column: 11)
!2517 = distinct !DILexicalBlock(scope: !2499, file: !2479, line: 163, column: 5)
!2518 = !DILocation(line: 146, column: 110, scope: !2501, inlinedAt: !2515)
!2519 = !DILocation(line: 146, column: 120, scope: !2501, inlinedAt: !2515)
!2520 = !DILocation(line: 148, column: 7, scope: !2521, inlinedAt: !2515)
!2521 = distinct !DILexicalBlock(scope: !2501, file: !2479, line: 148, column: 7)
!2522 = !DILocalVariable(name: "s2", arg: 2, scope: !2523, file: !2479, line: 132, type: !60)
!2523 = distinct !DISubprogram(name: "strcaseeq2", scope: !2479, file: !2479, line: 132, type: !2524, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!83, !60, !60, !43, !43, !43, !43, !43, !43, !43}
!2526 = !{!2527, !2522, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2527 = !DILocalVariable(name: "s1", arg: 1, scope: !2523, file: !2479, line: 132, type: !60)
!2528 = !DILocalVariable(name: "s22", arg: 3, scope: !2523, file: !2479, line: 132, type: !43)
!2529 = !DILocalVariable(name: "s23", arg: 4, scope: !2523, file: !2479, line: 132, type: !43)
!2530 = !DILocalVariable(name: "s24", arg: 5, scope: !2523, file: !2479, line: 132, type: !43)
!2531 = !DILocalVariable(name: "s25", arg: 6, scope: !2523, file: !2479, line: 132, type: !43)
!2532 = !DILocalVariable(name: "s26", arg: 7, scope: !2523, file: !2479, line: 132, type: !43)
!2533 = !DILocalVariable(name: "s27", arg: 8, scope: !2523, file: !2479, line: 132, type: !43)
!2534 = !DILocalVariable(name: "s28", arg: 9, scope: !2523, file: !2479, line: 132, type: !43)
!2535 = !DILocation(line: 132, column: 41, scope: !2523, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 153, column: 16, scope: !2537, inlinedAt: !2515)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !2479, line: 150, column: 11)
!2538 = distinct !DILexicalBlock(scope: !2521, file: !2479, line: 149, column: 5)
!2539 = !DILocation(line: 132, column: 100, scope: !2523, inlinedAt: !2536)
!2540 = !DILocation(line: 132, column: 110, scope: !2523, inlinedAt: !2536)
!2541 = !DILocation(line: 134, column: 7, scope: !2542, inlinedAt: !2536)
!2542 = distinct !DILexicalBlock(scope: !2523, file: !2479, line: 134, column: 7)
!2543 = !DILocalVariable(name: "s2", arg: 2, scope: !2544, file: !2479, line: 118, type: !60)
!2544 = distinct !DISubprogram(name: "strcaseeq3", scope: !2479, file: !2479, line: 118, type: !2545, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!83, !60, !60, !43, !43, !43, !43, !43, !43}
!2547 = !{!2548, !2543, !2549, !2550, !2551, !2552, !2553, !2554}
!2548 = !DILocalVariable(name: "s1", arg: 1, scope: !2544, file: !2479, line: 118, type: !60)
!2549 = !DILocalVariable(name: "s23", arg: 3, scope: !2544, file: !2479, line: 118, type: !43)
!2550 = !DILocalVariable(name: "s24", arg: 4, scope: !2544, file: !2479, line: 118, type: !43)
!2551 = !DILocalVariable(name: "s25", arg: 5, scope: !2544, file: !2479, line: 118, type: !43)
!2552 = !DILocalVariable(name: "s26", arg: 6, scope: !2544, file: !2479, line: 118, type: !43)
!2553 = !DILocalVariable(name: "s27", arg: 7, scope: !2544, file: !2479, line: 118, type: !43)
!2554 = !DILocalVariable(name: "s28", arg: 8, scope: !2544, file: !2479, line: 118, type: !43)
!2555 = !DILocation(line: 118, column: 41, scope: !2544, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 139, column: 16, scope: !2557, inlinedAt: !2536)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2479, line: 136, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2542, file: !2479, line: 135, column: 5)
!2559 = !DILocation(line: 118, column: 90, scope: !2544, inlinedAt: !2556)
!2560 = !DILocation(line: 118, column: 100, scope: !2544, inlinedAt: !2556)
!2561 = !DILocation(line: 120, column: 7, scope: !2562, inlinedAt: !2556)
!2562 = distinct !DILexicalBlock(scope: !2544, file: !2479, line: 120, column: 7)
!2563 = !DILocation(line: 120, column: 7, scope: !2544, inlinedAt: !2556)
!2564 = !DILocalVariable(name: "s2", arg: 2, scope: !2565, file: !2479, line: 104, type: !60)
!2565 = distinct !DISubprogram(name: "strcaseeq4", scope: !2479, file: !2479, line: 104, type: !2566, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!83, !60, !60, !43, !43, !43, !43, !43}
!2568 = !{!2569, !2564, !2570, !2571, !2572, !2573, !2574}
!2569 = !DILocalVariable(name: "s1", arg: 1, scope: !2565, file: !2479, line: 104, type: !60)
!2570 = !DILocalVariable(name: "s24", arg: 3, scope: !2565, file: !2479, line: 104, type: !43)
!2571 = !DILocalVariable(name: "s25", arg: 4, scope: !2565, file: !2479, line: 104, type: !43)
!2572 = !DILocalVariable(name: "s26", arg: 5, scope: !2565, file: !2479, line: 104, type: !43)
!2573 = !DILocalVariable(name: "s27", arg: 6, scope: !2565, file: !2479, line: 104, type: !43)
!2574 = !DILocalVariable(name: "s28", arg: 7, scope: !2565, file: !2479, line: 104, type: !43)
!2575 = !DILocation(line: 104, column: 41, scope: !2565, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 125, column: 16, scope: !2577, inlinedAt: !2556)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !2479, line: 122, column: 11)
!2578 = distinct !DILexicalBlock(scope: !2562, file: !2479, line: 121, column: 5)
!2579 = !DILocation(line: 104, column: 80, scope: !2565, inlinedAt: !2576)
!2580 = !DILocation(line: 104, column: 90, scope: !2565, inlinedAt: !2576)
!2581 = !DILocation(line: 106, column: 7, scope: !2582, inlinedAt: !2576)
!2582 = distinct !DILexicalBlock(scope: !2565, file: !2479, line: 106, column: 7)
!2583 = !DILocation(line: 106, column: 7, scope: !2565, inlinedAt: !2576)
!2584 = !DILocalVariable(name: "s2", arg: 2, scope: !2585, file: !2479, line: 90, type: !60)
!2585 = distinct !DISubprogram(name: "strcaseeq5", scope: !2479, file: !2479, line: 90, type: !2586, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!83, !60, !60, !43, !43, !43, !43}
!2588 = !{!2589, !2584, !2590, !2591, !2592, !2593}
!2589 = !DILocalVariable(name: "s1", arg: 1, scope: !2585, file: !2479, line: 90, type: !60)
!2590 = !DILocalVariable(name: "s25", arg: 3, scope: !2585, file: !2479, line: 90, type: !43)
!2591 = !DILocalVariable(name: "s26", arg: 4, scope: !2585, file: !2479, line: 90, type: !43)
!2592 = !DILocalVariable(name: "s27", arg: 5, scope: !2585, file: !2479, line: 90, type: !43)
!2593 = !DILocalVariable(name: "s28", arg: 6, scope: !2585, file: !2479, line: 90, type: !43)
!2594 = !DILocation(line: 90, column: 41, scope: !2585, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 111, column: 16, scope: !2596, inlinedAt: !2576)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !2479, line: 108, column: 11)
!2597 = distinct !DILexicalBlock(scope: !2582, file: !2479, line: 107, column: 5)
!2598 = !DILocation(line: 90, column: 70, scope: !2585, inlinedAt: !2595)
!2599 = !DILocation(line: 90, column: 80, scope: !2585, inlinedAt: !2595)
!2600 = !DILocation(line: 92, column: 7, scope: !2601, inlinedAt: !2595)
!2601 = distinct !DILexicalBlock(scope: !2585, file: !2479, line: 92, column: 7)
!2602 = !DILocation(line: 92, column: 7, scope: !2585, inlinedAt: !2595)
!2603 = !DILocation(line: 227, column: 12, scope: !2495)
!2604 = !DILocation(line: 227, column: 21, scope: !2495)
!2605 = !DILocation(line: 227, column: 5, scope: !2495)
!2606 = !DILocation(line: 146, column: 41, scope: !2501, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 167, column: 16, scope: !2516, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 228, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2460, file: !178, line: 228, column: 7)
!2610 = !DILocation(line: 146, column: 110, scope: !2501, inlinedAt: !2607)
!2611 = !DILocation(line: 146, column: 120, scope: !2501, inlinedAt: !2607)
!2612 = !DILocation(line: 148, column: 7, scope: !2521, inlinedAt: !2607)
!2613 = !DILocation(line: 132, column: 41, scope: !2523, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 153, column: 16, scope: !2537, inlinedAt: !2607)
!2615 = !DILocation(line: 132, column: 100, scope: !2523, inlinedAt: !2614)
!2616 = !DILocation(line: 132, column: 110, scope: !2523, inlinedAt: !2614)
!2617 = !DILocation(line: 134, column: 7, scope: !2542, inlinedAt: !2614)
!2618 = !DILocation(line: 134, column: 7, scope: !2523, inlinedAt: !2614)
!2619 = !DILocation(line: 118, column: 41, scope: !2544, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 139, column: 16, scope: !2557, inlinedAt: !2614)
!2621 = !DILocation(line: 118, column: 90, scope: !2544, inlinedAt: !2620)
!2622 = !DILocation(line: 118, column: 100, scope: !2544, inlinedAt: !2620)
!2623 = !DILocation(line: 120, column: 7, scope: !2562, inlinedAt: !2620)
!2624 = !DILocation(line: 120, column: 7, scope: !2544, inlinedAt: !2620)
!2625 = !DILocation(line: 104, column: 41, scope: !2565, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 125, column: 16, scope: !2577, inlinedAt: !2620)
!2627 = !DILocation(line: 104, column: 80, scope: !2565, inlinedAt: !2626)
!2628 = !DILocation(line: 104, column: 90, scope: !2565, inlinedAt: !2626)
!2629 = !DILocation(line: 106, column: 7, scope: !2582, inlinedAt: !2626)
!2630 = !DILocation(line: 106, column: 7, scope: !2565, inlinedAt: !2626)
!2631 = !DILocation(line: 90, column: 41, scope: !2585, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 111, column: 16, scope: !2596, inlinedAt: !2626)
!2633 = !DILocation(line: 90, column: 70, scope: !2585, inlinedAt: !2632)
!2634 = !DILocation(line: 90, column: 80, scope: !2585, inlinedAt: !2632)
!2635 = !DILocation(line: 92, column: 7, scope: !2601, inlinedAt: !2632)
!2636 = !DILocation(line: 92, column: 7, scope: !2585, inlinedAt: !2632)
!2637 = !DILocalVariable(name: "s2", arg: 2, scope: !2638, file: !2479, line: 76, type: !60)
!2638 = distinct !DISubprogram(name: "strcaseeq6", scope: !2479, file: !2479, line: 76, type: !2639, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!83, !60, !60, !43, !43, !43}
!2641 = !{!2642, !2637, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "s1", arg: 1, scope: !2638, file: !2479, line: 76, type: !60)
!2643 = !DILocalVariable(name: "s26", arg: 3, scope: !2638, file: !2479, line: 76, type: !43)
!2644 = !DILocalVariable(name: "s27", arg: 4, scope: !2638, file: !2479, line: 76, type: !43)
!2645 = !DILocalVariable(name: "s28", arg: 5, scope: !2638, file: !2479, line: 76, type: !43)
!2646 = !DILocation(line: 76, column: 41, scope: !2638, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 97, column: 16, scope: !2648, inlinedAt: !2632)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !2479, line: 94, column: 11)
!2649 = distinct !DILexicalBlock(scope: !2601, file: !2479, line: 93, column: 5)
!2650 = !DILocation(line: 76, column: 60, scope: !2638, inlinedAt: !2647)
!2651 = !DILocation(line: 76, column: 70, scope: !2638, inlinedAt: !2647)
!2652 = !DILocation(line: 78, column: 7, scope: !2653, inlinedAt: !2647)
!2653 = distinct !DILexicalBlock(scope: !2638, file: !2479, line: 78, column: 7)
!2654 = !DILocation(line: 78, column: 7, scope: !2638, inlinedAt: !2647)
!2655 = !DILocalVariable(name: "s2", arg: 2, scope: !2656, file: !2479, line: 62, type: !60)
!2656 = distinct !DISubprogram(name: "strcaseeq7", scope: !2479, file: !2479, line: 62, type: !2657, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!83, !60, !60, !43, !43}
!2659 = !{!2660, !2655, !2661, !2662}
!2660 = !DILocalVariable(name: "s1", arg: 1, scope: !2656, file: !2479, line: 62, type: !60)
!2661 = !DILocalVariable(name: "s27", arg: 3, scope: !2656, file: !2479, line: 62, type: !43)
!2662 = !DILocalVariable(name: "s28", arg: 4, scope: !2656, file: !2479, line: 62, type: !43)
!2663 = !DILocation(line: 62, column: 41, scope: !2656, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 83, column: 16, scope: !2665, inlinedAt: !2647)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !2479, line: 80, column: 11)
!2666 = distinct !DILexicalBlock(scope: !2653, file: !2479, line: 79, column: 5)
!2667 = !DILocation(line: 62, column: 50, scope: !2656, inlinedAt: !2664)
!2668 = !DILocation(line: 62, column: 60, scope: !2656, inlinedAt: !2664)
!2669 = !DILocation(line: 64, column: 7, scope: !2670, inlinedAt: !2664)
!2670 = distinct !DILexicalBlock(scope: !2656, file: !2479, line: 64, column: 7)
!2671 = !DILocation(line: 228, column: 7, scope: !2460)
!2672 = !DILocation(line: 229, column: 12, scope: !2609)
!2673 = !DILocation(line: 229, column: 21, scope: !2609)
!2674 = !DILocation(line: 229, column: 5, scope: !2609)
!2675 = !DILocation(line: 231, column: 13, scope: !2460)
!2676 = !DILocation(line: 231, column: 11, scope: !2460)
!2677 = !DILocation(line: 231, column: 3, scope: !2460)
!2678 = !DILocation(line: 232, column: 1, scope: !2460)
!2679 = distinct !DISubprogram(name: "quotearg_alloc", scope: !178, file: !178, line: 791, type: !2680, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!42, !60, !47, !1807}
!2682 = !{!2683, !2684, !2685}
!2683 = !DILocalVariable(name: "arg", arg: 1, scope: !2679, file: !178, line: 791, type: !60)
!2684 = !DILocalVariable(name: "argsize", arg: 2, scope: !2679, file: !178, line: 791, type: !47)
!2685 = !DILocalVariable(name: "o", arg: 3, scope: !2679, file: !178, line: 792, type: !1807)
!2686 = !DILocation(line: 791, column: 29, scope: !2679)
!2687 = !DILocation(line: 791, column: 41, scope: !2679)
!2688 = !DILocation(line: 792, column: 47, scope: !2679)
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !178, line: 804, type: !60)
!2690 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !178, file: !178, line: 804, type: !2691, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!42, !60, !47, !628, !1807}
!2693 = !{!2689, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2694 = !DILocalVariable(name: "argsize", arg: 2, scope: !2690, file: !178, line: 804, type: !47)
!2695 = !DILocalVariable(name: "size", arg: 3, scope: !2690, file: !178, line: 804, type: !628)
!2696 = !DILocalVariable(name: "o", arg: 4, scope: !2690, file: !178, line: 805, type: !1807)
!2697 = !DILocalVariable(name: "p", scope: !2690, file: !178, line: 807, type: !1807)
!2698 = !DILocalVariable(name: "e", scope: !2690, file: !178, line: 808, type: !83)
!2699 = !DILocalVariable(name: "flags", scope: !2690, file: !178, line: 810, type: !83)
!2700 = !DILocalVariable(name: "bufsize", scope: !2690, file: !178, line: 811, type: !47)
!2701 = !DILocalVariable(name: "buf", scope: !2690, file: !178, line: 815, type: !42)
!2702 = !DILocation(line: 804, column: 33, scope: !2690, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 794, column: 10, scope: !2679)
!2704 = !DILocation(line: 804, column: 45, scope: !2690, inlinedAt: !2703)
!2705 = !DILocation(line: 804, column: 62, scope: !2690, inlinedAt: !2703)
!2706 = !DILocation(line: 805, column: 51, scope: !2690, inlinedAt: !2703)
!2707 = !DILocation(line: 807, column: 37, scope: !2690, inlinedAt: !2703)
!2708 = !DILocation(line: 807, column: 33, scope: !2690, inlinedAt: !2703)
!2709 = !DILocation(line: 808, column: 11, scope: !2690, inlinedAt: !2703)
!2710 = !DILocation(line: 808, column: 7, scope: !2690, inlinedAt: !2703)
!2711 = !DILocation(line: 810, column: 18, scope: !2690, inlinedAt: !2703)
!2712 = !DILocation(line: 810, column: 24, scope: !2690, inlinedAt: !2703)
!2713 = !DILocation(line: 810, column: 7, scope: !2690, inlinedAt: !2703)
!2714 = !DILocation(line: 811, column: 69, scope: !2690, inlinedAt: !2703)
!2715 = !DILocation(line: 812, column: 53, scope: !2690, inlinedAt: !2703)
!2716 = !DILocation(line: 813, column: 49, scope: !2690, inlinedAt: !2703)
!2717 = !DILocation(line: 814, column: 49, scope: !2690, inlinedAt: !2703)
!2718 = !DILocation(line: 811, column: 20, scope: !2690, inlinedAt: !2703)
!2719 = !DILocation(line: 814, column: 62, scope: !2690, inlinedAt: !2703)
!2720 = !DILocation(line: 811, column: 10, scope: !2690, inlinedAt: !2703)
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2722, file: !624, line: 220, type: !47)
!2722 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !2723, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!42, !47}
!2725 = !{!2721}
!2726 = !DILocation(line: 220, column: 20, scope: !2722, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 815, column: 15, scope: !2690, inlinedAt: !2703)
!2728 = !DILocation(line: 222, column: 10, scope: !2722, inlinedAt: !2727)
!2729 = !DILocation(line: 815, column: 9, scope: !2690, inlinedAt: !2703)
!2730 = !DILocation(line: 816, column: 60, scope: !2690, inlinedAt: !2703)
!2731 = !DILocation(line: 818, column: 32, scope: !2690, inlinedAt: !2703)
!2732 = !DILocation(line: 818, column: 47, scope: !2690, inlinedAt: !2703)
!2733 = !DILocation(line: 816, column: 3, scope: !2690, inlinedAt: !2703)
!2734 = !DILocation(line: 819, column: 9, scope: !2690, inlinedAt: !2703)
!2735 = !DILocation(line: 794, column: 3, scope: !2679)
!2736 = !DILocation(line: 804, column: 33, scope: !2690)
!2737 = !DILocation(line: 804, column: 45, scope: !2690)
!2738 = !DILocation(line: 804, column: 62, scope: !2690)
!2739 = !DILocation(line: 805, column: 51, scope: !2690)
!2740 = !DILocation(line: 807, column: 37, scope: !2690)
!2741 = !DILocation(line: 807, column: 33, scope: !2690)
!2742 = !DILocation(line: 808, column: 11, scope: !2690)
!2743 = !DILocation(line: 808, column: 7, scope: !2690)
!2744 = !DILocation(line: 810, column: 18, scope: !2690)
!2745 = !DILocation(line: 810, column: 27, scope: !2690)
!2746 = !DILocation(line: 810, column: 24, scope: !2690)
!2747 = !DILocation(line: 810, column: 7, scope: !2690)
!2748 = !DILocation(line: 811, column: 69, scope: !2690)
!2749 = !DILocation(line: 812, column: 53, scope: !2690)
!2750 = !DILocation(line: 813, column: 49, scope: !2690)
!2751 = !DILocation(line: 814, column: 49, scope: !2690)
!2752 = !DILocation(line: 811, column: 20, scope: !2690)
!2753 = !DILocation(line: 814, column: 62, scope: !2690)
!2754 = !DILocation(line: 811, column: 10, scope: !2690)
!2755 = !DILocation(line: 220, column: 20, scope: !2722, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 815, column: 15, scope: !2690)
!2757 = !DILocation(line: 222, column: 10, scope: !2722, inlinedAt: !2756)
!2758 = !DILocation(line: 815, column: 9, scope: !2690)
!2759 = !DILocation(line: 816, column: 60, scope: !2690)
!2760 = !DILocation(line: 818, column: 32, scope: !2690)
!2761 = !DILocation(line: 818, column: 47, scope: !2690)
!2762 = !DILocation(line: 816, column: 3, scope: !2690)
!2763 = !DILocation(line: 819, column: 9, scope: !2690)
!2764 = !DILocation(line: 820, column: 7, scope: !2690)
!2765 = !DILocation(line: 821, column: 11, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2690, file: !178, line: 820, column: 7)
!2767 = !DILocation(line: 821, column: 5, scope: !2766)
!2768 = !DILocation(line: 822, column: 3, scope: !2690)
!2769 = distinct !DISubprogram(name: "quotearg_free", scope: !178, file: !178, line: 840, type: !237, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2770)
!2770 = !{!2771, !2772}
!2771 = !DILocalVariable(name: "sv", scope: !2769, file: !178, line: 842, type: !205)
!2772 = !DILocalVariable(name: "i", scope: !2769, file: !178, line: 843, type: !83)
!2773 = !DILocation(line: 842, column: 24, scope: !2769)
!2774 = !DILocation(line: 842, column: 19, scope: !2769)
!2775 = !DILocation(line: 843, column: 7, scope: !2769)
!2776 = !DILocation(line: 844, column: 19, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !178, line: 844, column: 3)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !178, line: 844, column: 3)
!2779 = !DILocation(line: 844, column: 17, scope: !2777)
!2780 = !DILocation(line: 844, column: 3, scope: !2778)
!2781 = !DILocation(line: 845, column: 17, scope: !2777)
!2782 = !{!2783, !677, i64 8}
!2783 = !{!"slotvec", !877, i64 0, !677, i64 8}
!2784 = !DILocation(line: 845, column: 5, scope: !2777)
!2785 = !DILocation(line: 844, column: 28, scope: !2777)
!2786 = distinct !{!2786, !2780, !2787}
!2787 = !DILocation(line: 845, column: 20, scope: !2778)
!2788 = !DILocation(line: 846, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2769, file: !178, line: 846, column: 7)
!2790 = !DILocation(line: 846, column: 17, scope: !2789)
!2791 = !DILocation(line: 846, column: 7, scope: !2769)
!2792 = !DILocation(line: 848, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !178, line: 847, column: 5)
!2794 = !DILocation(line: 849, column: 21, scope: !2793)
!2795 = !{!2783, !877, i64 0}
!2796 = !DILocation(line: 850, column: 20, scope: !2793)
!2797 = !DILocation(line: 851, column: 5, scope: !2793)
!2798 = !DILocation(line: 852, column: 10, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2769, file: !178, line: 852, column: 7)
!2800 = !DILocation(line: 852, column: 7, scope: !2769)
!2801 = !DILocation(line: 854, column: 13, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2799, file: !178, line: 853, column: 5)
!2803 = !DILocation(line: 854, column: 7, scope: !2802)
!2804 = !DILocation(line: 855, column: 15, scope: !2802)
!2805 = !DILocation(line: 856, column: 5, scope: !2802)
!2806 = !DILocation(line: 857, column: 10, scope: !2769)
!2807 = !DILocation(line: 858, column: 1, scope: !2769)
!2808 = distinct !DISubprogram(name: "quotearg_n", scope: !178, file: !178, line: 922, type: !2809, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!42, !83, !60}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !178, line: 922, type: !83)
!2813 = !DILocalVariable(name: "arg", arg: 2, scope: !2808, file: !178, line: 922, type: !60)
!2814 = !DILocation(line: 922, column: 17, scope: !2808)
!2815 = !DILocation(line: 922, column: 32, scope: !2808)
!2816 = !DILocation(line: 924, column: 10, scope: !2808)
!2817 = !DILocation(line: 924, column: 3, scope: !2808)
!2818 = distinct !DISubprogram(name: "quotearg_n_options", scope: !178, file: !178, line: 869, type: !2819, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!42, !83, !60, !47, !1807}
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2831, !2833, !2834, !2835}
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !178, line: 869, type: !83)
!2823 = !DILocalVariable(name: "arg", arg: 2, scope: !2818, file: !178, line: 869, type: !60)
!2824 = !DILocalVariable(name: "argsize", arg: 3, scope: !2818, file: !178, line: 869, type: !47)
!2825 = !DILocalVariable(name: "options", arg: 4, scope: !2818, file: !178, line: 870, type: !1807)
!2826 = !DILocalVariable(name: "e", scope: !2818, file: !178, line: 872, type: !83)
!2827 = !DILocalVariable(name: "sv", scope: !2818, file: !178, line: 874, type: !205)
!2828 = !DILocalVariable(name: "preallocated", scope: !2829, file: !178, line: 881, type: !53)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !178, line: 880, column: 5)
!2830 = distinct !DILexicalBlock(scope: !2818, file: !178, line: 879, column: 7)
!2831 = !DILocalVariable(name: "size", scope: !2832, file: !178, line: 894, type: !47)
!2832 = distinct !DILexicalBlock(scope: !2818, file: !178, line: 893, column: 3)
!2833 = !DILocalVariable(name: "val", scope: !2832, file: !178, line: 895, type: !42)
!2834 = !DILocalVariable(name: "flags", scope: !2832, file: !178, line: 897, type: !83)
!2835 = !DILocalVariable(name: "qsize", scope: !2832, file: !178, line: 898, type: !47)
!2836 = !DILocation(line: 869, column: 25, scope: !2818)
!2837 = !DILocation(line: 869, column: 40, scope: !2818)
!2838 = !DILocation(line: 869, column: 52, scope: !2818)
!2839 = !DILocation(line: 870, column: 51, scope: !2818)
!2840 = !DILocation(line: 872, column: 11, scope: !2818)
!2841 = !DILocation(line: 872, column: 7, scope: !2818)
!2842 = !DILocation(line: 874, column: 24, scope: !2818)
!2843 = !DILocation(line: 874, column: 19, scope: !2818)
!2844 = !DILocation(line: 876, column: 9, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2818, file: !178, line: 876, column: 7)
!2846 = !DILocation(line: 876, column: 7, scope: !2818)
!2847 = !DILocation(line: 877, column: 5, scope: !2845)
!2848 = !DILocation(line: 879, column: 7, scope: !2830)
!2849 = !DILocation(line: 879, column: 14, scope: !2830)
!2850 = !DILocation(line: 879, column: 7, scope: !2818)
!2851 = !DILocation(line: 881, column: 31, scope: !2829)
!2852 = !DILocation(line: 883, column: 67, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2829, file: !178, line: 883, column: 11)
!2854 = !DILocation(line: 883, column: 11, scope: !2829)
!2855 = !DILocation(line: 884, column: 9, scope: !2853)
!2856 = !DILocation(line: 886, column: 32, scope: !2829)
!2857 = !DILocation(line: 886, column: 61, scope: !2829)
!2858 = !DILocation(line: 886, column: 58, scope: !2829)
!2859 = !DILocation(line: 886, column: 66, scope: !2829)
!2860 = !DILocation(line: 886, column: 22, scope: !2829)
!2861 = !DILocation(line: 886, column: 15, scope: !2829)
!2862 = !DILocation(line: 887, column: 11, scope: !2829)
!2863 = !DILocation(line: 888, column: 15, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2829, file: !178, line: 887, column: 11)
!2865 = !{i64 0, i64 8, !1735, i64 8, i64 8, !676}
!2866 = !DILocation(line: 888, column: 9, scope: !2864)
!2867 = !DILocation(line: 889, column: 20, scope: !2829)
!2868 = !DILocation(line: 889, column: 18, scope: !2829)
!2869 = !DILocation(line: 889, column: 7, scope: !2829)
!2870 = !DILocation(line: 889, column: 38, scope: !2829)
!2871 = !DILocation(line: 889, column: 31, scope: !2829)
!2872 = !DILocation(line: 889, column: 48, scope: !2829)
!2873 = !DILocation(line: 890, column: 14, scope: !2829)
!2874 = !DILocation(line: 891, column: 5, scope: !2829)
!2875 = !DILocation(line: 894, column: 19, scope: !2832)
!2876 = !DILocation(line: 894, column: 25, scope: !2832)
!2877 = !DILocation(line: 894, column: 12, scope: !2832)
!2878 = !DILocation(line: 895, column: 23, scope: !2832)
!2879 = !DILocation(line: 895, column: 11, scope: !2832)
!2880 = !DILocation(line: 897, column: 26, scope: !2832)
!2881 = !DILocation(line: 897, column: 32, scope: !2832)
!2882 = !DILocation(line: 897, column: 9, scope: !2832)
!2883 = !DILocation(line: 899, column: 55, scope: !2832)
!2884 = !DILocation(line: 900, column: 46, scope: !2832)
!2885 = !DILocation(line: 901, column: 55, scope: !2832)
!2886 = !DILocation(line: 902, column: 55, scope: !2832)
!2887 = !DILocation(line: 898, column: 20, scope: !2832)
!2888 = !DILocation(line: 898, column: 12, scope: !2832)
!2889 = !DILocation(line: 904, column: 14, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2832, file: !178, line: 904, column: 9)
!2891 = !DILocation(line: 904, column: 9, scope: !2832)
!2892 = !DILocation(line: 906, column: 35, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !178, line: 905, column: 7)
!2894 = !DILocation(line: 906, column: 20, scope: !2893)
!2895 = !DILocation(line: 907, column: 17, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !178, line: 907, column: 13)
!2897 = !DILocation(line: 907, column: 13, scope: !2893)
!2898 = !DILocation(line: 908, column: 11, scope: !2896)
!2899 = !DILocation(line: 220, column: 20, scope: !2722, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 909, column: 27, scope: !2893)
!2901 = !DILocation(line: 222, column: 10, scope: !2722, inlinedAt: !2900)
!2902 = !DILocation(line: 909, column: 19, scope: !2893)
!2903 = !DILocation(line: 910, column: 69, scope: !2893)
!2904 = !DILocation(line: 912, column: 44, scope: !2893)
!2905 = !DILocation(line: 913, column: 44, scope: !2893)
!2906 = !DILocation(line: 910, column: 9, scope: !2893)
!2907 = !DILocation(line: 914, column: 7, scope: !2893)
!2908 = !DILocation(line: 916, column: 11, scope: !2832)
!2909 = !DILocation(line: 917, column: 5, scope: !2832)
!2910 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !178, file: !178, line: 928, type: !2911, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!42, !83, !60, !47}
!2913 = !{!2914, !2915, !2916}
!2914 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !178, line: 928, type: !83)
!2915 = !DILocalVariable(name: "arg", arg: 2, scope: !2910, file: !178, line: 928, type: !60)
!2916 = !DILocalVariable(name: "argsize", arg: 3, scope: !2910, file: !178, line: 928, type: !47)
!2917 = !DILocation(line: 928, column: 21, scope: !2910)
!2918 = !DILocation(line: 928, column: 36, scope: !2910)
!2919 = !DILocation(line: 928, column: 48, scope: !2910)
!2920 = !DILocation(line: 930, column: 10, scope: !2910)
!2921 = !DILocation(line: 930, column: 3, scope: !2910)
!2922 = distinct !DISubprogram(name: "quotearg", scope: !178, file: !178, line: 934, type: !2923, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!42, !60}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "arg", arg: 1, scope: !2922, file: !178, line: 934, type: !60)
!2927 = !DILocation(line: 934, column: 23, scope: !2922)
!2928 = !DILocation(line: 922, column: 17, scope: !2808, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 936, column: 10, scope: !2922)
!2930 = !DILocation(line: 922, column: 32, scope: !2808, inlinedAt: !2929)
!2931 = !DILocation(line: 924, column: 10, scope: !2808, inlinedAt: !2929)
!2932 = !DILocation(line: 936, column: 3, scope: !2922)
!2933 = distinct !DISubprogram(name: "quotearg_mem", scope: !178, file: !178, line: 940, type: !2934, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!42, !60, !47}
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2933, file: !178, line: 940, type: !60)
!2938 = !DILocalVariable(name: "argsize", arg: 2, scope: !2933, file: !178, line: 940, type: !47)
!2939 = !DILocation(line: 940, column: 27, scope: !2933)
!2940 = !DILocation(line: 940, column: 39, scope: !2933)
!2941 = !DILocation(line: 928, column: 21, scope: !2910, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 942, column: 10, scope: !2933)
!2943 = !DILocation(line: 928, column: 36, scope: !2910, inlinedAt: !2942)
!2944 = !DILocation(line: 928, column: 48, scope: !2910, inlinedAt: !2942)
!2945 = !DILocation(line: 930, column: 10, scope: !2910, inlinedAt: !2942)
!2946 = !DILocation(line: 942, column: 3, scope: !2933)
!2947 = distinct !DISubprogram(name: "quotearg_n_style", scope: !178, file: !178, line: 946, type: !2948, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!42, !83, !5, !60}
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DILocalVariable(name: "n", arg: 1, scope: !2947, file: !178, line: 946, type: !83)
!2952 = !DILocalVariable(name: "s", arg: 2, scope: !2947, file: !178, line: 946, type: !5)
!2953 = !DILocalVariable(name: "arg", arg: 3, scope: !2947, file: !178, line: 946, type: !60)
!2954 = !DILocalVariable(name: "o", scope: !2947, file: !178, line: 948, type: !1808)
!2955 = !DILocalVariable(name: "o", scope: !2956, file: !178, line: 187, type: !185)
!2956 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !178, file: !178, line: 185, type: !2957, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!185, !5}
!2959 = !{!2960, !2955}
!2960 = !DILocalVariable(name: "style", arg: 1, scope: !2956, file: !178, line: 185, type: !5)
!2961 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2962 = !DILocation(line: 187, column: 26, scope: !2956, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 948, column: 36, scope: !2947)
!2964 = !DILocation(line: 946, column: 23, scope: !2947)
!2965 = !DILocation(line: 946, column: 45, scope: !2947)
!2966 = !DILocation(line: 946, column: 60, scope: !2947)
!2967 = !DILocation(line: 948, column: 3, scope: !2947)
!2968 = !DILocation(line: 948, column: 32, scope: !2947)
!2969 = !DILocation(line: 185, column: 48, scope: !2956, inlinedAt: !2963)
!2970 = !DILocation(line: 187, column: 3, scope: !2956, inlinedAt: !2963)
!2971 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2972 = !DILocation(line: 188, column: 13, scope: !2973, inlinedAt: !2963)
!2973 = distinct !DILexicalBlock(scope: !2956, file: !178, line: 188, column: 7)
!2974 = !DILocation(line: 188, column: 7, scope: !2956, inlinedAt: !2963)
!2975 = !DILocation(line: 189, column: 5, scope: !2973, inlinedAt: !2963)
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"quoting_options_from_style: argument 0"}
!2978 = distinct !{!2978, !"quoting_options_from_style"}
!2979 = !DILocation(line: 191, column: 10, scope: !2956, inlinedAt: !2963)
!2980 = !DILocation(line: 192, column: 1, scope: !2956, inlinedAt: !2963)
!2981 = !DILocation(line: 949, column: 10, scope: !2947)
!2982 = !DILocation(line: 950, column: 1, scope: !2947)
!2983 = !DILocation(line: 949, column: 3, scope: !2947)
!2984 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !178, file: !178, line: 953, type: !2985, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!42, !83, !5, !60, !47}
!2987 = !{!2988, !2989, !2990, !2991, !2992}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !178, line: 953, type: !83)
!2989 = !DILocalVariable(name: "s", arg: 2, scope: !2984, file: !178, line: 953, type: !5)
!2990 = !DILocalVariable(name: "arg", arg: 3, scope: !2984, file: !178, line: 954, type: !60)
!2991 = !DILocalVariable(name: "argsize", arg: 4, scope: !2984, file: !178, line: 954, type: !47)
!2992 = !DILocalVariable(name: "o", scope: !2984, file: !178, line: 956, type: !1808)
!2993 = !DILocation(line: 187, column: 26, scope: !2956, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 956, column: 36, scope: !2984)
!2995 = !DILocation(line: 953, column: 27, scope: !2984)
!2996 = !DILocation(line: 953, column: 49, scope: !2984)
!2997 = !DILocation(line: 954, column: 35, scope: !2984)
!2998 = !DILocation(line: 954, column: 47, scope: !2984)
!2999 = !DILocation(line: 956, column: 3, scope: !2984)
!3000 = !DILocation(line: 956, column: 32, scope: !2984)
!3001 = !DILocation(line: 185, column: 48, scope: !2956, inlinedAt: !2994)
!3002 = !DILocation(line: 187, column: 3, scope: !2956, inlinedAt: !2994)
!3003 = !DILocation(line: 188, column: 13, scope: !2973, inlinedAt: !2994)
!3004 = !DILocation(line: 188, column: 7, scope: !2956, inlinedAt: !2994)
!3005 = !DILocation(line: 189, column: 5, scope: !2973, inlinedAt: !2994)
!3006 = !{!3007}
!3007 = distinct !{!3007, !3008, !"quoting_options_from_style: argument 0"}
!3008 = distinct !{!3008, !"quoting_options_from_style"}
!3009 = !DILocation(line: 191, column: 10, scope: !2956, inlinedAt: !2994)
!3010 = !DILocation(line: 192, column: 1, scope: !2956, inlinedAt: !2994)
!3011 = !DILocation(line: 957, column: 10, scope: !2984)
!3012 = !DILocation(line: 958, column: 1, scope: !2984)
!3013 = !DILocation(line: 957, column: 3, scope: !2984)
!3014 = distinct !DISubprogram(name: "quotearg_style", scope: !178, file: !178, line: 961, type: !3015, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!42, !5, !60}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "s", arg: 1, scope: !3014, file: !178, line: 961, type: !5)
!3019 = !DILocalVariable(name: "arg", arg: 2, scope: !3014, file: !178, line: 961, type: !60)
!3020 = !DILocation(line: 187, column: 26, scope: !2956, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 948, column: 36, scope: !2947, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 963, column: 10, scope: !3014)
!3023 = !DILocation(line: 961, column: 36, scope: !3014)
!3024 = !DILocation(line: 961, column: 51, scope: !3014)
!3025 = !DILocation(line: 946, column: 23, scope: !2947, inlinedAt: !3022)
!3026 = !DILocation(line: 946, column: 45, scope: !2947, inlinedAt: !3022)
!3027 = !DILocation(line: 946, column: 60, scope: !2947, inlinedAt: !3022)
!3028 = !DILocation(line: 948, column: 3, scope: !2947, inlinedAt: !3022)
!3029 = !DILocation(line: 948, column: 32, scope: !2947, inlinedAt: !3022)
!3030 = !DILocation(line: 185, column: 48, scope: !2956, inlinedAt: !3021)
!3031 = !DILocation(line: 187, column: 3, scope: !2956, inlinedAt: !3021)
!3032 = !DILocation(line: 188, column: 13, scope: !2973, inlinedAt: !3021)
!3033 = !DILocation(line: 188, column: 7, scope: !2956, inlinedAt: !3021)
!3034 = !DILocation(line: 189, column: 5, scope: !2973, inlinedAt: !3021)
!3035 = !{!3036}
!3036 = distinct !{!3036, !3037, !"quoting_options_from_style: argument 0"}
!3037 = distinct !{!3037, !"quoting_options_from_style"}
!3038 = !DILocation(line: 191, column: 10, scope: !2956, inlinedAt: !3021)
!3039 = !DILocation(line: 192, column: 1, scope: !2956, inlinedAt: !3021)
!3040 = !DILocation(line: 949, column: 10, scope: !2947, inlinedAt: !3022)
!3041 = !DILocation(line: 950, column: 1, scope: !2947, inlinedAt: !3022)
!3042 = !DILocation(line: 963, column: 3, scope: !3014)
!3043 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !178, file: !178, line: 967, type: !3044, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!42, !5, !60, !47}
!3046 = !{!3047, !3048, !3049}
!3047 = !DILocalVariable(name: "s", arg: 1, scope: !3043, file: !178, line: 967, type: !5)
!3048 = !DILocalVariable(name: "arg", arg: 2, scope: !3043, file: !178, line: 967, type: !60)
!3049 = !DILocalVariable(name: "argsize", arg: 3, scope: !3043, file: !178, line: 967, type: !47)
!3050 = !DILocation(line: 187, column: 26, scope: !2956, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 956, column: 36, scope: !2984, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 969, column: 10, scope: !3043)
!3053 = !DILocation(line: 967, column: 40, scope: !3043)
!3054 = !DILocation(line: 967, column: 55, scope: !3043)
!3055 = !DILocation(line: 967, column: 67, scope: !3043)
!3056 = !DILocation(line: 953, column: 27, scope: !2984, inlinedAt: !3052)
!3057 = !DILocation(line: 953, column: 49, scope: !2984, inlinedAt: !3052)
!3058 = !DILocation(line: 954, column: 35, scope: !2984, inlinedAt: !3052)
!3059 = !DILocation(line: 954, column: 47, scope: !2984, inlinedAt: !3052)
!3060 = !DILocation(line: 956, column: 3, scope: !2984, inlinedAt: !3052)
!3061 = !DILocation(line: 956, column: 32, scope: !2984, inlinedAt: !3052)
!3062 = !DILocation(line: 185, column: 48, scope: !2956, inlinedAt: !3051)
!3063 = !DILocation(line: 187, column: 3, scope: !2956, inlinedAt: !3051)
!3064 = !DILocation(line: 188, column: 13, scope: !2973, inlinedAt: !3051)
!3065 = !DILocation(line: 188, column: 7, scope: !2956, inlinedAt: !3051)
!3066 = !DILocation(line: 189, column: 5, scope: !2973, inlinedAt: !3051)
!3067 = !{!3068}
!3068 = distinct !{!3068, !3069, !"quoting_options_from_style: argument 0"}
!3069 = distinct !{!3069, !"quoting_options_from_style"}
!3070 = !DILocation(line: 191, column: 10, scope: !2956, inlinedAt: !3051)
!3071 = !DILocation(line: 192, column: 1, scope: !2956, inlinedAt: !3051)
!3072 = !DILocation(line: 957, column: 10, scope: !2984, inlinedAt: !3052)
!3073 = !DILocation(line: 958, column: 1, scope: !2984, inlinedAt: !3052)
!3074 = !DILocation(line: 969, column: 3, scope: !3043)
!3075 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !178, file: !178, line: 973, type: !3076, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!42, !60, !47, !43}
!3078 = !{!3079, !3080, !3081, !3082}
!3079 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !178, line: 973, type: !60)
!3080 = !DILocalVariable(name: "argsize", arg: 2, scope: !3075, file: !178, line: 973, type: !47)
!3081 = !DILocalVariable(name: "ch", arg: 3, scope: !3075, file: !178, line: 973, type: !43)
!3082 = !DILocalVariable(name: "options", scope: !3075, file: !178, line: 975, type: !185)
!3083 = !DILocation(line: 973, column: 32, scope: !3075)
!3084 = !DILocation(line: 973, column: 44, scope: !3075)
!3085 = !DILocation(line: 973, column: 58, scope: !3075)
!3086 = !DILocation(line: 975, column: 3, scope: !3075)
!3087 = !DILocation(line: 976, column: 13, scope: !3075)
!3088 = !{i64 0, i64 4, !881, i64 4, i64 4, !742, i64 8, i64 32, !881, i64 40, i64 8, !676, i64 48, i64 8, !676}
!3089 = !DILocation(line: 975, column: 26, scope: !3075)
!3090 = !DILocation(line: 144, column: 43, scope: !1829, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 977, column: 3, scope: !3075)
!3092 = !DILocation(line: 144, column: 51, scope: !1829, inlinedAt: !3091)
!3093 = !DILocation(line: 144, column: 58, scope: !1829, inlinedAt: !3091)
!3094 = !DILocation(line: 146, column: 17, scope: !1829, inlinedAt: !3091)
!3095 = !DILocation(line: 148, column: 62, scope: !1829, inlinedAt: !3091)
!3096 = !DILocation(line: 148, column: 57, scope: !1829, inlinedAt: !3091)
!3097 = !DILocation(line: 147, column: 17, scope: !1829, inlinedAt: !3091)
!3098 = !DILocation(line: 149, column: 18, scope: !1829, inlinedAt: !3091)
!3099 = !DILocation(line: 149, column: 15, scope: !1829, inlinedAt: !3091)
!3100 = !DILocation(line: 149, column: 7, scope: !1829, inlinedAt: !3091)
!3101 = !DILocation(line: 150, column: 12, scope: !1829, inlinedAt: !3091)
!3102 = !DILocation(line: 150, column: 15, scope: !1829, inlinedAt: !3091)
!3103 = !DILocation(line: 150, column: 25, scope: !1829, inlinedAt: !3091)
!3104 = !DILocation(line: 150, column: 7, scope: !1829, inlinedAt: !3091)
!3105 = !DILocation(line: 151, column: 18, scope: !1829, inlinedAt: !3091)
!3106 = !DILocation(line: 151, column: 23, scope: !1829, inlinedAt: !3091)
!3107 = !DILocation(line: 151, column: 6, scope: !1829, inlinedAt: !3091)
!3108 = !DILocation(line: 978, column: 10, scope: !3075)
!3109 = !DILocation(line: 979, column: 1, scope: !3075)
!3110 = !DILocation(line: 978, column: 3, scope: !3075)
!3111 = distinct !DISubprogram(name: "quotearg_char", scope: !178, file: !178, line: 982, type: !3112, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!42, !60, !43}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "arg", arg: 1, scope: !3111, file: !178, line: 982, type: !60)
!3116 = !DILocalVariable(name: "ch", arg: 2, scope: !3111, file: !178, line: 982, type: !43)
!3117 = !DILocation(line: 982, column: 28, scope: !3111)
!3118 = !DILocation(line: 982, column: 38, scope: !3111)
!3119 = !DILocation(line: 973, column: 32, scope: !3075, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 984, column: 10, scope: !3111)
!3121 = !DILocation(line: 973, column: 44, scope: !3075, inlinedAt: !3120)
!3122 = !DILocation(line: 973, column: 58, scope: !3075, inlinedAt: !3120)
!3123 = !DILocation(line: 975, column: 3, scope: !3075, inlinedAt: !3120)
!3124 = !DILocation(line: 976, column: 13, scope: !3075, inlinedAt: !3120)
!3125 = !DILocation(line: 975, column: 26, scope: !3075, inlinedAt: !3120)
!3126 = !DILocation(line: 144, column: 43, scope: !1829, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 977, column: 3, scope: !3075, inlinedAt: !3120)
!3128 = !DILocation(line: 144, column: 51, scope: !1829, inlinedAt: !3127)
!3129 = !DILocation(line: 144, column: 58, scope: !1829, inlinedAt: !3127)
!3130 = !DILocation(line: 146, column: 17, scope: !1829, inlinedAt: !3127)
!3131 = !DILocation(line: 148, column: 62, scope: !1829, inlinedAt: !3127)
!3132 = !DILocation(line: 148, column: 57, scope: !1829, inlinedAt: !3127)
!3133 = !DILocation(line: 147, column: 17, scope: !1829, inlinedAt: !3127)
!3134 = !DILocation(line: 149, column: 18, scope: !1829, inlinedAt: !3127)
!3135 = !DILocation(line: 149, column: 15, scope: !1829, inlinedAt: !3127)
!3136 = !DILocation(line: 149, column: 7, scope: !1829, inlinedAt: !3127)
!3137 = !DILocation(line: 150, column: 12, scope: !1829, inlinedAt: !3127)
!3138 = !DILocation(line: 150, column: 15, scope: !1829, inlinedAt: !3127)
!3139 = !DILocation(line: 150, column: 25, scope: !1829, inlinedAt: !3127)
!3140 = !DILocation(line: 150, column: 7, scope: !1829, inlinedAt: !3127)
!3141 = !DILocation(line: 151, column: 18, scope: !1829, inlinedAt: !3127)
!3142 = !DILocation(line: 151, column: 23, scope: !1829, inlinedAt: !3127)
!3143 = !DILocation(line: 151, column: 6, scope: !1829, inlinedAt: !3127)
!3144 = !DILocation(line: 978, column: 10, scope: !3075, inlinedAt: !3120)
!3145 = !DILocation(line: 979, column: 1, scope: !3075, inlinedAt: !3120)
!3146 = !DILocation(line: 984, column: 3, scope: !3111)
!3147 = distinct !DISubprogram(name: "quotearg_colon", scope: !178, file: !178, line: 988, type: !2923, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3148)
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3147, file: !178, line: 988, type: !60)
!3150 = !DILocation(line: 988, column: 29, scope: !3147)
!3151 = !DILocation(line: 982, column: 28, scope: !3111, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 990, column: 10, scope: !3147)
!3153 = !DILocation(line: 982, column: 38, scope: !3111, inlinedAt: !3152)
!3154 = !DILocation(line: 973, column: 32, scope: !3075, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 984, column: 10, scope: !3111, inlinedAt: !3152)
!3156 = !DILocation(line: 973, column: 44, scope: !3075, inlinedAt: !3155)
!3157 = !DILocation(line: 973, column: 58, scope: !3075, inlinedAt: !3155)
!3158 = !DILocation(line: 975, column: 3, scope: !3075, inlinedAt: !3155)
!3159 = !DILocation(line: 976, column: 13, scope: !3075, inlinedAt: !3155)
!3160 = !DILocation(line: 975, column: 26, scope: !3075, inlinedAt: !3155)
!3161 = !DILocation(line: 144, column: 43, scope: !1829, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 977, column: 3, scope: !3075, inlinedAt: !3155)
!3163 = !DILocation(line: 144, column: 51, scope: !1829, inlinedAt: !3162)
!3164 = !DILocation(line: 144, column: 58, scope: !1829, inlinedAt: !3162)
!3165 = !DILocation(line: 146, column: 17, scope: !1829, inlinedAt: !3162)
!3166 = !DILocation(line: 148, column: 57, scope: !1829, inlinedAt: !3162)
!3167 = !DILocation(line: 147, column: 17, scope: !1829, inlinedAt: !3162)
!3168 = !DILocation(line: 149, column: 7, scope: !1829, inlinedAt: !3162)
!3169 = !DILocation(line: 150, column: 12, scope: !1829, inlinedAt: !3162)
!3170 = !DILocation(line: 151, column: 6, scope: !1829, inlinedAt: !3162)
!3171 = !DILocation(line: 978, column: 10, scope: !3075, inlinedAt: !3155)
!3172 = !DILocation(line: 979, column: 1, scope: !3075, inlinedAt: !3155)
!3173 = !DILocation(line: 990, column: 3, scope: !3147)
!3174 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !178, file: !178, line: 994, type: !2934, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3175)
!3175 = !{!3176, !3177}
!3176 = !DILocalVariable(name: "arg", arg: 1, scope: !3174, file: !178, line: 994, type: !60)
!3177 = !DILocalVariable(name: "argsize", arg: 2, scope: !3174, file: !178, line: 994, type: !47)
!3178 = !DILocation(line: 994, column: 33, scope: !3174)
!3179 = !DILocation(line: 994, column: 45, scope: !3174)
!3180 = !DILocation(line: 973, column: 32, scope: !3075, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 996, column: 10, scope: !3174)
!3182 = !DILocation(line: 973, column: 44, scope: !3075, inlinedAt: !3181)
!3183 = !DILocation(line: 973, column: 58, scope: !3075, inlinedAt: !3181)
!3184 = !DILocation(line: 975, column: 3, scope: !3075, inlinedAt: !3181)
!3185 = !DILocation(line: 976, column: 13, scope: !3075, inlinedAt: !3181)
!3186 = !DILocation(line: 975, column: 26, scope: !3075, inlinedAt: !3181)
!3187 = !DILocation(line: 144, column: 43, scope: !1829, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 977, column: 3, scope: !3075, inlinedAt: !3181)
!3189 = !DILocation(line: 144, column: 51, scope: !1829, inlinedAt: !3188)
!3190 = !DILocation(line: 144, column: 58, scope: !1829, inlinedAt: !3188)
!3191 = !DILocation(line: 146, column: 17, scope: !1829, inlinedAt: !3188)
!3192 = !DILocation(line: 148, column: 57, scope: !1829, inlinedAt: !3188)
!3193 = !DILocation(line: 147, column: 17, scope: !1829, inlinedAt: !3188)
!3194 = !DILocation(line: 149, column: 7, scope: !1829, inlinedAt: !3188)
!3195 = !DILocation(line: 150, column: 12, scope: !1829, inlinedAt: !3188)
!3196 = !DILocation(line: 151, column: 6, scope: !1829, inlinedAt: !3188)
!3197 = !DILocation(line: 978, column: 10, scope: !3075, inlinedAt: !3181)
!3198 = !DILocation(line: 979, column: 1, scope: !3075, inlinedAt: !3181)
!3199 = !DILocation(line: 996, column: 3, scope: !3174)
!3200 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !178, file: !178, line: 1000, type: !2948, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3201)
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !178, line: 1000, type: !83)
!3203 = !DILocalVariable(name: "s", arg: 2, scope: !3200, file: !178, line: 1000, type: !5)
!3204 = !DILocalVariable(name: "arg", arg: 3, scope: !3200, file: !178, line: 1000, type: !60)
!3205 = !DILocalVariable(name: "options", scope: !3200, file: !178, line: 1002, type: !185)
!3206 = !DILocation(line: 187, column: 26, scope: !2956, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1003, column: 13, scope: !3200)
!3208 = !DILocation(line: 1000, column: 29, scope: !3200)
!3209 = !DILocation(line: 1000, column: 51, scope: !3200)
!3210 = !DILocation(line: 1000, column: 66, scope: !3200)
!3211 = !DILocation(line: 1002, column: 3, scope: !3200)
!3212 = !DILocation(line: 185, column: 48, scope: !2956, inlinedAt: !3207)
!3213 = !DILocation(line: 187, column: 3, scope: !2956, inlinedAt: !3207)
!3214 = !DILocation(line: 188, column: 13, scope: !2973, inlinedAt: !3207)
!3215 = !DILocation(line: 188, column: 7, scope: !2956, inlinedAt: !3207)
!3216 = !DILocation(line: 189, column: 5, scope: !2973, inlinedAt: !3207)
!3217 = !{!3218}
!3218 = distinct !{!3218, !3219, !"quoting_options_from_style: argument 0"}
!3219 = distinct !{!3219, !"quoting_options_from_style"}
!3220 = !DILocation(line: 191, column: 10, scope: !2956, inlinedAt: !3207)
!3221 = !DILocation(line: 192, column: 1, scope: !2956, inlinedAt: !3207)
!3222 = !DILocation(line: 1003, column: 13, scope: !3200)
!3223 = !DILocation(line: 1002, column: 26, scope: !3200)
!3224 = !DILocation(line: 144, column: 43, scope: !1829, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1004, column: 3, scope: !3200)
!3226 = !DILocation(line: 144, column: 51, scope: !1829, inlinedAt: !3225)
!3227 = !DILocation(line: 144, column: 58, scope: !1829, inlinedAt: !3225)
!3228 = !DILocation(line: 146, column: 17, scope: !1829, inlinedAt: !3225)
!3229 = !DILocation(line: 148, column: 57, scope: !1829, inlinedAt: !3225)
!3230 = !DILocation(line: 147, column: 17, scope: !1829, inlinedAt: !3225)
!3231 = !DILocation(line: 149, column: 7, scope: !1829, inlinedAt: !3225)
!3232 = !DILocation(line: 150, column: 12, scope: !1829, inlinedAt: !3225)
!3233 = !DILocation(line: 151, column: 6, scope: !1829, inlinedAt: !3225)
!3234 = !DILocation(line: 1005, column: 10, scope: !3200)
!3235 = !DILocation(line: 1006, column: 1, scope: !3200)
!3236 = !DILocation(line: 1005, column: 3, scope: !3200)
!3237 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !178, file: !178, line: 1009, type: !3238, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!42, !83, !60, !60, !60}
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !178, line: 1009, type: !83)
!3242 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3237, file: !178, line: 1009, type: !60)
!3243 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3237, file: !178, line: 1010, type: !60)
!3244 = !DILocalVariable(name: "arg", arg: 4, scope: !3237, file: !178, line: 1010, type: !60)
!3245 = !DILocation(line: 1009, column: 24, scope: !3237)
!3246 = !DILocation(line: 1009, column: 39, scope: !3237)
!3247 = !DILocation(line: 1010, column: 32, scope: !3237)
!3248 = !DILocation(line: 1010, column: 57, scope: !3237)
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3250, file: !178, line: 1017, type: !83)
!3250 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !178, file: !178, line: 1017, type: !3251, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!42, !83, !60, !60, !60, !47}
!3253 = !{!3249, !3254, !3255, !3256, !3257, !3258}
!3254 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3250, file: !178, line: 1017, type: !60)
!3255 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3250, file: !178, line: 1018, type: !60)
!3256 = !DILocalVariable(name: "arg", arg: 4, scope: !3250, file: !178, line: 1019, type: !60)
!3257 = !DILocalVariable(name: "argsize", arg: 5, scope: !3250, file: !178, line: 1019, type: !47)
!3258 = !DILocalVariable(name: "o", scope: !3250, file: !178, line: 1021, type: !185)
!3259 = !DILocation(line: 1017, column: 28, scope: !3250, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1012, column: 10, scope: !3237)
!3261 = !DILocation(line: 1017, column: 43, scope: !3250, inlinedAt: !3260)
!3262 = !DILocation(line: 1018, column: 36, scope: !3250, inlinedAt: !3260)
!3263 = !DILocation(line: 1019, column: 36, scope: !3250, inlinedAt: !3260)
!3264 = !DILocation(line: 1019, column: 48, scope: !3250, inlinedAt: !3260)
!3265 = !DILocation(line: 1021, column: 3, scope: !3250, inlinedAt: !3260)
!3266 = !DILocation(line: 1021, column: 30, scope: !3250, inlinedAt: !3260)
!3267 = !DILocation(line: 1021, column: 26, scope: !3250, inlinedAt: !3260)
!3268 = !DILocation(line: 171, column: 45, scope: !1878, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1022, column: 3, scope: !3250, inlinedAt: !3260)
!3270 = !DILocation(line: 172, column: 33, scope: !1878, inlinedAt: !3269)
!3271 = !DILocation(line: 172, column: 57, scope: !1878, inlinedAt: !3269)
!3272 = !DILocation(line: 176, column: 6, scope: !1878, inlinedAt: !3269)
!3273 = !DILocation(line: 176, column: 12, scope: !1878, inlinedAt: !3269)
!3274 = !DILocation(line: 177, column: 8, scope: !1894, inlinedAt: !3269)
!3275 = !DILocation(line: 177, column: 23, scope: !1894, inlinedAt: !3269)
!3276 = !DILocation(line: 177, column: 19, scope: !1894, inlinedAt: !3269)
!3277 = !DILocation(line: 178, column: 5, scope: !1894, inlinedAt: !3269)
!3278 = !DILocation(line: 179, column: 6, scope: !1878, inlinedAt: !3269)
!3279 = !DILocation(line: 179, column: 17, scope: !1878, inlinedAt: !3269)
!3280 = !DILocation(line: 180, column: 6, scope: !1878, inlinedAt: !3269)
!3281 = !DILocation(line: 180, column: 18, scope: !1878, inlinedAt: !3269)
!3282 = !DILocation(line: 1023, column: 10, scope: !3250, inlinedAt: !3260)
!3283 = !DILocation(line: 1024, column: 1, scope: !3250, inlinedAt: !3260)
!3284 = !DILocation(line: 1012, column: 3, scope: !3237)
!3285 = !DILocation(line: 1017, column: 28, scope: !3250)
!3286 = !DILocation(line: 1017, column: 43, scope: !3250)
!3287 = !DILocation(line: 1018, column: 36, scope: !3250)
!3288 = !DILocation(line: 1019, column: 36, scope: !3250)
!3289 = !DILocation(line: 1019, column: 48, scope: !3250)
!3290 = !DILocation(line: 1021, column: 3, scope: !3250)
!3291 = !DILocation(line: 1021, column: 30, scope: !3250)
!3292 = !DILocation(line: 1021, column: 26, scope: !3250)
!3293 = !DILocation(line: 171, column: 45, scope: !1878, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 1022, column: 3, scope: !3250)
!3295 = !DILocation(line: 172, column: 33, scope: !1878, inlinedAt: !3294)
!3296 = !DILocation(line: 172, column: 57, scope: !1878, inlinedAt: !3294)
!3297 = !DILocation(line: 176, column: 6, scope: !1878, inlinedAt: !3294)
!3298 = !DILocation(line: 176, column: 12, scope: !1878, inlinedAt: !3294)
!3299 = !DILocation(line: 177, column: 8, scope: !1894, inlinedAt: !3294)
!3300 = !DILocation(line: 177, column: 23, scope: !1894, inlinedAt: !3294)
!3301 = !DILocation(line: 177, column: 19, scope: !1894, inlinedAt: !3294)
!3302 = !DILocation(line: 178, column: 5, scope: !1894, inlinedAt: !3294)
!3303 = !DILocation(line: 179, column: 6, scope: !1878, inlinedAt: !3294)
!3304 = !DILocation(line: 179, column: 17, scope: !1878, inlinedAt: !3294)
!3305 = !DILocation(line: 180, column: 6, scope: !1878, inlinedAt: !3294)
!3306 = !DILocation(line: 180, column: 18, scope: !1878, inlinedAt: !3294)
!3307 = !DILocation(line: 1023, column: 10, scope: !3250)
!3308 = !DILocation(line: 1024, column: 1, scope: !3250)
!3309 = !DILocation(line: 1023, column: 3, scope: !3250)
!3310 = distinct !DISubprogram(name: "quotearg_custom", scope: !178, file: !178, line: 1027, type: !3311, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!42, !60, !60, !60}
!3313 = !{!3314, !3315, !3316}
!3314 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3310, file: !178, line: 1027, type: !60)
!3315 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3310, file: !178, line: 1027, type: !60)
!3316 = !DILocalVariable(name: "arg", arg: 3, scope: !3310, file: !178, line: 1028, type: !60)
!3317 = !DILocation(line: 1027, column: 30, scope: !3310)
!3318 = !DILocation(line: 1027, column: 54, scope: !3310)
!3319 = !DILocation(line: 1028, column: 30, scope: !3310)
!3320 = !DILocation(line: 1009, column: 24, scope: !3237, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1030, column: 10, scope: !3310)
!3322 = !DILocation(line: 1009, column: 39, scope: !3237, inlinedAt: !3321)
!3323 = !DILocation(line: 1010, column: 32, scope: !3237, inlinedAt: !3321)
!3324 = !DILocation(line: 1010, column: 57, scope: !3237, inlinedAt: !3321)
!3325 = !DILocation(line: 1017, column: 28, scope: !3250, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 1012, column: 10, scope: !3237, inlinedAt: !3321)
!3327 = !DILocation(line: 1017, column: 43, scope: !3250, inlinedAt: !3326)
!3328 = !DILocation(line: 1018, column: 36, scope: !3250, inlinedAt: !3326)
!3329 = !DILocation(line: 1019, column: 36, scope: !3250, inlinedAt: !3326)
!3330 = !DILocation(line: 1019, column: 48, scope: !3250, inlinedAt: !3326)
!3331 = !DILocation(line: 1021, column: 3, scope: !3250, inlinedAt: !3326)
!3332 = !DILocation(line: 1021, column: 30, scope: !3250, inlinedAt: !3326)
!3333 = !DILocation(line: 1021, column: 26, scope: !3250, inlinedAt: !3326)
!3334 = !DILocation(line: 171, column: 45, scope: !1878, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 1022, column: 3, scope: !3250, inlinedAt: !3326)
!3336 = !DILocation(line: 172, column: 33, scope: !1878, inlinedAt: !3335)
!3337 = !DILocation(line: 172, column: 57, scope: !1878, inlinedAt: !3335)
!3338 = !DILocation(line: 176, column: 6, scope: !1878, inlinedAt: !3335)
!3339 = !DILocation(line: 176, column: 12, scope: !1878, inlinedAt: !3335)
!3340 = !DILocation(line: 177, column: 8, scope: !1894, inlinedAt: !3335)
!3341 = !DILocation(line: 177, column: 23, scope: !1894, inlinedAt: !3335)
!3342 = !DILocation(line: 177, column: 19, scope: !1894, inlinedAt: !3335)
!3343 = !DILocation(line: 178, column: 5, scope: !1894, inlinedAt: !3335)
!3344 = !DILocation(line: 179, column: 6, scope: !1878, inlinedAt: !3335)
!3345 = !DILocation(line: 179, column: 17, scope: !1878, inlinedAt: !3335)
!3346 = !DILocation(line: 180, column: 6, scope: !1878, inlinedAt: !3335)
!3347 = !DILocation(line: 180, column: 18, scope: !1878, inlinedAt: !3335)
!3348 = !DILocation(line: 1023, column: 10, scope: !3250, inlinedAt: !3326)
!3349 = !DILocation(line: 1024, column: 1, scope: !3250, inlinedAt: !3326)
!3350 = !DILocation(line: 1030, column: 3, scope: !3310)
!3351 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !178, file: !178, line: 1034, type: !3352, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!42, !60, !60, !60, !47}
!3354 = !{!3355, !3356, !3357, !3358}
!3355 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3351, file: !178, line: 1034, type: !60)
!3356 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3351, file: !178, line: 1034, type: !60)
!3357 = !DILocalVariable(name: "arg", arg: 3, scope: !3351, file: !178, line: 1035, type: !60)
!3358 = !DILocalVariable(name: "argsize", arg: 4, scope: !3351, file: !178, line: 1035, type: !47)
!3359 = !DILocation(line: 1034, column: 34, scope: !3351)
!3360 = !DILocation(line: 1034, column: 58, scope: !3351)
!3361 = !DILocation(line: 1035, column: 34, scope: !3351)
!3362 = !DILocation(line: 1035, column: 46, scope: !3351)
!3363 = !DILocation(line: 1017, column: 28, scope: !3250, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 1037, column: 10, scope: !3351)
!3365 = !DILocation(line: 1017, column: 43, scope: !3250, inlinedAt: !3364)
!3366 = !DILocation(line: 1018, column: 36, scope: !3250, inlinedAt: !3364)
!3367 = !DILocation(line: 1019, column: 36, scope: !3250, inlinedAt: !3364)
!3368 = !DILocation(line: 1019, column: 48, scope: !3250, inlinedAt: !3364)
!3369 = !DILocation(line: 1021, column: 3, scope: !3250, inlinedAt: !3364)
!3370 = !DILocation(line: 1021, column: 30, scope: !3250, inlinedAt: !3364)
!3371 = !DILocation(line: 1021, column: 26, scope: !3250, inlinedAt: !3364)
!3372 = !DILocation(line: 171, column: 45, scope: !1878, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1022, column: 3, scope: !3250, inlinedAt: !3364)
!3374 = !DILocation(line: 172, column: 33, scope: !1878, inlinedAt: !3373)
!3375 = !DILocation(line: 172, column: 57, scope: !1878, inlinedAt: !3373)
!3376 = !DILocation(line: 176, column: 6, scope: !1878, inlinedAt: !3373)
!3377 = !DILocation(line: 176, column: 12, scope: !1878, inlinedAt: !3373)
!3378 = !DILocation(line: 177, column: 8, scope: !1894, inlinedAt: !3373)
!3379 = !DILocation(line: 177, column: 23, scope: !1894, inlinedAt: !3373)
!3380 = !DILocation(line: 177, column: 19, scope: !1894, inlinedAt: !3373)
!3381 = !DILocation(line: 178, column: 5, scope: !1894, inlinedAt: !3373)
!3382 = !DILocation(line: 179, column: 6, scope: !1878, inlinedAt: !3373)
!3383 = !DILocation(line: 179, column: 17, scope: !1878, inlinedAt: !3373)
!3384 = !DILocation(line: 180, column: 6, scope: !1878, inlinedAt: !3373)
!3385 = !DILocation(line: 180, column: 18, scope: !1878, inlinedAt: !3373)
!3386 = !DILocation(line: 1023, column: 10, scope: !3250, inlinedAt: !3364)
!3387 = !DILocation(line: 1024, column: 1, scope: !3250, inlinedAt: !3364)
!3388 = !DILocation(line: 1037, column: 3, scope: !3351)
!3389 = distinct !DISubprogram(name: "quote_n_mem", scope: !178, file: !178, line: 1052, type: !3390, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!60, !83, !60, !47}
!3392 = !{!3393, !3394, !3395}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !178, line: 1052, type: !83)
!3394 = !DILocalVariable(name: "arg", arg: 2, scope: !3389, file: !178, line: 1052, type: !60)
!3395 = !DILocalVariable(name: "argsize", arg: 3, scope: !3389, file: !178, line: 1052, type: !47)
!3396 = !DILocation(line: 1052, column: 18, scope: !3389)
!3397 = !DILocation(line: 1052, column: 33, scope: !3389)
!3398 = !DILocation(line: 1052, column: 45, scope: !3389)
!3399 = !DILocation(line: 1054, column: 10, scope: !3389)
!3400 = !DILocation(line: 1054, column: 3, scope: !3389)
!3401 = distinct !DISubprogram(name: "quote_mem", scope: !178, file: !178, line: 1058, type: !3402, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!60, !60, !47}
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "arg", arg: 1, scope: !3401, file: !178, line: 1058, type: !60)
!3406 = !DILocalVariable(name: "argsize", arg: 2, scope: !3401, file: !178, line: 1058, type: !47)
!3407 = !DILocation(line: 1058, column: 24, scope: !3401)
!3408 = !DILocation(line: 1058, column: 36, scope: !3401)
!3409 = !DILocation(line: 1052, column: 18, scope: !3389, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 1060, column: 10, scope: !3401)
!3411 = !DILocation(line: 1052, column: 33, scope: !3389, inlinedAt: !3410)
!3412 = !DILocation(line: 1052, column: 45, scope: !3389, inlinedAt: !3410)
!3413 = !DILocation(line: 1054, column: 10, scope: !3389, inlinedAt: !3410)
!3414 = !DILocation(line: 1060, column: 3, scope: !3401)
!3415 = distinct !DISubprogram(name: "quote_n", scope: !178, file: !178, line: 1064, type: !3416, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!60, !83, !60}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "n", arg: 1, scope: !3415, file: !178, line: 1064, type: !83)
!3420 = !DILocalVariable(name: "arg", arg: 2, scope: !3415, file: !178, line: 1064, type: !60)
!3421 = !DILocation(line: 1064, column: 14, scope: !3415)
!3422 = !DILocation(line: 1064, column: 29, scope: !3415)
!3423 = !DILocation(line: 1052, column: 18, scope: !3389, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 1066, column: 10, scope: !3415)
!3425 = !DILocation(line: 1052, column: 33, scope: !3389, inlinedAt: !3424)
!3426 = !DILocation(line: 1052, column: 45, scope: !3389, inlinedAt: !3424)
!3427 = !DILocation(line: 1054, column: 10, scope: !3389, inlinedAt: !3424)
!3428 = !DILocation(line: 1066, column: 3, scope: !3415)
!3429 = distinct !DISubprogram(name: "quote", scope: !178, file: !178, line: 1070, type: !3430, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !150, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!60, !60}
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3429, file: !178, line: 1070, type: !60)
!3434 = !DILocation(line: 1070, column: 20, scope: !3429)
!3435 = !DILocation(line: 1064, column: 14, scope: !3415, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 1072, column: 10, scope: !3429)
!3437 = !DILocation(line: 1064, column: 29, scope: !3415, inlinedAt: !3436)
!3438 = !DILocation(line: 1052, column: 18, scope: !3389, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1066, column: 10, scope: !3415, inlinedAt: !3436)
!3440 = !DILocation(line: 1052, column: 33, scope: !3389, inlinedAt: !3439)
!3441 = !DILocation(line: 1052, column: 45, scope: !3389, inlinedAt: !3439)
!3442 = !DILocation(line: 1054, column: 10, scope: !3389, inlinedAt: !3439)
!3443 = !DILocation(line: 1072, column: 3, scope: !3429)
!3444 = !DILocation(line: 56, column: 14, scope: !594)
!3445 = !DILocation(line: 56, column: 30, scope: !594)
!3446 = !DILocation(line: 56, column: 42, scope: !594)
!3447 = !DILocation(line: 66, column: 24, scope: !602)
!3448 = !DILocation(line: 66, column: 15, scope: !602)
!3449 = !DILocation(line: 68, column: 13, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !602, file: !593, line: 68, column: 11)
!3451 = !DILocation(line: 68, column: 11, scope: !602)
!3452 = !DILocation(line: 70, column: 16, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3450, file: !593, line: 70, column: 16)
!3454 = distinct !{!3454, !3455, !3456}
!3455 = !DILocation(line: 64, column: 3, scope: !604)
!3456 = !DILocation(line: 76, column: 5, scope: !604)
!3457 = !DILocation(line: 70, column: 16, scope: !3450)
!3458 = !DILocation(line: 72, column: 22, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3453, file: !593, line: 72, column: 16)
!3460 = !DILocation(line: 72, column: 54, scope: !3459)
!3461 = !DILocation(line: 72, column: 32, scope: !3459)
!3462 = !DILocation(line: 77, column: 1, scope: !594)
!3463 = distinct !DISubprogram(name: "version_etc_arn", scope: !616, file: !616, line: 62, type: !3464, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3507)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !3466, !60, !60, !60, !3506, !47}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3468, file: !781, line: 242, baseType: !83, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3468, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3468, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3468, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3468, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3468, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3468, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3468, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3468, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3468, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3468, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3468, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3468, file: !781, line: 260, baseType: !3483, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !3485)
!3485 = !{!3486, !3487, !3489}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3484, file: !781, line: 157, baseType: !3483, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3484, file: !781, line: 158, baseType: !3488, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3484, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3468, file: !781, line: 262, baseType: !3488, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3468, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3468, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3468, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3468, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3468, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3468, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3468, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3468, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3468, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3468, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3468, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3468, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3468, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3468, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3468, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513}
!3508 = !DILocalVariable(name: "stream", arg: 1, scope: !3463, file: !616, line: 62, type: !3466)
!3509 = !DILocalVariable(name: "command_name", arg: 2, scope: !3463, file: !616, line: 63, type: !60)
!3510 = !DILocalVariable(name: "package", arg: 3, scope: !3463, file: !616, line: 63, type: !60)
!3511 = !DILocalVariable(name: "version", arg: 4, scope: !3463, file: !616, line: 64, type: !60)
!3512 = !DILocalVariable(name: "authors", arg: 5, scope: !3463, file: !616, line: 65, type: !3506)
!3513 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3463, file: !616, line: 65, type: !47)
!3514 = !DILocation(line: 62, column: 24, scope: !3463)
!3515 = !DILocation(line: 63, column: 30, scope: !3463)
!3516 = !DILocation(line: 63, column: 56, scope: !3463)
!3517 = !DILocation(line: 64, column: 30, scope: !3463)
!3518 = !DILocation(line: 65, column: 39, scope: !3463)
!3519 = !DILocation(line: 65, column: 55, scope: !3463)
!3520 = !DILocation(line: 67, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3463, file: !616, line: 67, column: 7)
!3522 = !DILocation(line: 67, column: 7, scope: !3463)
!3523 = !DILocation(line: 68, column: 5, scope: !3521)
!3524 = !DILocation(line: 70, column: 5, scope: !3521)
!3525 = !DILocation(line: 84, column: 3, scope: !3463)
!3526 = !DILocation(line: 86, column: 3, scope: !3463)
!3527 = !DILocation(line: 95, column: 3, scope: !3463)
!3528 = !DILocation(line: 99, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3463, file: !616, line: 96, column: 5)
!3530 = !DILocation(line: 102, column: 7, scope: !3529)
!3531 = !DILocation(line: 103, column: 7, scope: !3529)
!3532 = !DILocation(line: 106, column: 7, scope: !3529)
!3533 = !DILocation(line: 107, column: 7, scope: !3529)
!3534 = !DILocation(line: 110, column: 7, scope: !3529)
!3535 = !DILocation(line: 112, column: 7, scope: !3529)
!3536 = !DILocation(line: 117, column: 7, scope: !3529)
!3537 = !DILocation(line: 119, column: 7, scope: !3529)
!3538 = !DILocation(line: 124, column: 7, scope: !3529)
!3539 = !DILocation(line: 126, column: 7, scope: !3529)
!3540 = !DILocation(line: 131, column: 7, scope: !3529)
!3541 = !DILocation(line: 134, column: 7, scope: !3529)
!3542 = !DILocation(line: 139, column: 7, scope: !3529)
!3543 = !DILocation(line: 142, column: 7, scope: !3529)
!3544 = !DILocation(line: 147, column: 7, scope: !3529)
!3545 = !DILocation(line: 151, column: 7, scope: !3529)
!3546 = !DILocation(line: 156, column: 7, scope: !3529)
!3547 = !DILocation(line: 160, column: 7, scope: !3529)
!3548 = !DILocation(line: 167, column: 7, scope: !3529)
!3549 = !DILocation(line: 171, column: 7, scope: !3529)
!3550 = !DILocation(line: 173, column: 1, scope: !3463)
!3551 = distinct !DISubprogram(name: "version_etc_ar", scope: !616, file: !616, line: 180, type: !3552, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3466, !60, !60, !60, !3506}
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560}
!3555 = !DILocalVariable(name: "stream", arg: 1, scope: !3551, file: !616, line: 180, type: !3466)
!3556 = !DILocalVariable(name: "command_name", arg: 2, scope: !3551, file: !616, line: 181, type: !60)
!3557 = !DILocalVariable(name: "package", arg: 3, scope: !3551, file: !616, line: 181, type: !60)
!3558 = !DILocalVariable(name: "version", arg: 4, scope: !3551, file: !616, line: 182, type: !60)
!3559 = !DILocalVariable(name: "authors", arg: 5, scope: !3551, file: !616, line: 182, type: !3506)
!3560 = !DILocalVariable(name: "n_authors", scope: !3551, file: !616, line: 184, type: !47)
!3561 = !DILocation(line: 180, column: 23, scope: !3551)
!3562 = !DILocation(line: 181, column: 29, scope: !3551)
!3563 = !DILocation(line: 181, column: 55, scope: !3551)
!3564 = !DILocation(line: 182, column: 29, scope: !3551)
!3565 = !DILocation(line: 182, column: 59, scope: !3551)
!3566 = !DILocation(line: 184, column: 10, scope: !3551)
!3567 = !DILocation(line: 186, column: 8, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3551, file: !616, line: 186, column: 3)
!3569 = !DILocation(line: 186, column: 23, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3568, file: !616, line: 186, column: 3)
!3571 = !DILocation(line: 186, column: 3, scope: !3568)
!3572 = !DILocation(line: 186, column: 52, scope: !3570)
!3573 = distinct !{!3573, !3571, !3574}
!3574 = !DILocation(line: 187, column: 5, scope: !3568)
!3575 = !DILocation(line: 188, column: 3, scope: !3551)
!3576 = !DILocation(line: 189, column: 1, scope: !3551)
!3577 = distinct !DISubprogram(name: "version_etc_va", scope: !616, file: !616, line: 196, type: !3578, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3587)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !3466, !60, !60, !60, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !613, line: 189, size: 192, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3581, file: !613, line: 189, baseType: !191, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3581, file: !613, line: 189, baseType: !191, size: 32, offset: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3581, file: !613, line: 189, baseType: !44, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3581, file: !613, line: 189, baseType: !44, size: 64, offset: 128)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3588 = !DILocalVariable(name: "stream", arg: 1, scope: !3577, file: !616, line: 196, type: !3466)
!3589 = !DILocalVariable(name: "command_name", arg: 2, scope: !3577, file: !616, line: 197, type: !60)
!3590 = !DILocalVariable(name: "package", arg: 3, scope: !3577, file: !616, line: 197, type: !60)
!3591 = !DILocalVariable(name: "version", arg: 4, scope: !3577, file: !616, line: 198, type: !60)
!3592 = !DILocalVariable(name: "authors", arg: 5, scope: !3577, file: !616, line: 198, type: !3580)
!3593 = !DILocalVariable(name: "n_authors", scope: !3577, file: !616, line: 200, type: !47)
!3594 = !DILocalVariable(name: "authtab", scope: !3577, file: !616, line: 201, type: !3595)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 640, elements: !181)
!3596 = !DILocation(line: 196, column: 23, scope: !3577)
!3597 = !DILocation(line: 197, column: 29, scope: !3577)
!3598 = !DILocation(line: 197, column: 55, scope: !3577)
!3599 = !DILocation(line: 198, column: 29, scope: !3577)
!3600 = !DILocation(line: 198, column: 46, scope: !3577)
!3601 = !DILocation(line: 201, column: 3, scope: !3577)
!3602 = !DILocation(line: 201, column: 15, scope: !3577)
!3603 = !DILocation(line: 200, column: 10, scope: !3577)
!3604 = !DILocation(line: 205, column: 35, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !616, line: 203, column: 3)
!3606 = distinct !DILexicalBlock(scope: !3577, file: !616, line: 203, column: 3)
!3607 = !DILocation(line: 205, column: 14, scope: !3605)
!3608 = !DILocation(line: 205, column: 33, scope: !3605)
!3609 = !DILocation(line: 205, column: 67, scope: !3605)
!3610 = !DILocation(line: 203, column: 3, scope: !3606)
!3611 = !DILocation(line: 208, column: 3, scope: !3577)
!3612 = !DILocation(line: 210, column: 1, scope: !3577)
!3613 = distinct !DISubprogram(name: "version_etc", scope: !616, file: !616, line: 227, type: !3614, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3466, !60, !60, !60, null}
!3616 = !{!3617, !3618, !3619, !3620, !3621}
!3617 = !DILocalVariable(name: "stream", arg: 1, scope: !3613, file: !616, line: 227, type: !3466)
!3618 = !DILocalVariable(name: "command_name", arg: 2, scope: !3613, file: !616, line: 228, type: !60)
!3619 = !DILocalVariable(name: "package", arg: 3, scope: !3613, file: !616, line: 228, type: !60)
!3620 = !DILocalVariable(name: "version", arg: 4, scope: !3613, file: !616, line: 229, type: !60)
!3621 = !DILocalVariable(name: "authors", scope: !3613, file: !616, line: 231, type: !3622)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1089, line: 46, baseType: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3624, line: 48, baseType: !3625)
!3624 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !613, line: 231, baseType: !3626)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3581, size: 192, elements: !813)
!3627 = !DILocation(line: 227, column: 20, scope: !3613)
!3628 = !DILocation(line: 228, column: 26, scope: !3613)
!3629 = !DILocation(line: 228, column: 52, scope: !3613)
!3630 = !DILocation(line: 229, column: 26, scope: !3613)
!3631 = !DILocation(line: 231, column: 3, scope: !3613)
!3632 = !DILocation(line: 231, column: 11, scope: !3613)
!3633 = !DILocation(line: 233, column: 3, scope: !3613)
!3634 = !DILocation(line: 234, column: 3, scope: !3613)
!3635 = !DILocation(line: 235, column: 3, scope: !3613)
!3636 = !DILocation(line: 236, column: 1, scope: !3613)
!3637 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !616, file: !616, line: 239, type: !237, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !93)
!3638 = !DILocation(line: 245, column: 3, scope: !3637)
!3639 = !DILocation(line: 251, column: 3, scope: !3637)
!3640 = !DILocation(line: 256, column: 3, scope: !3637)
!3641 = !DILocation(line: 258, column: 1, scope: !3637)
!3642 = distinct !DISubprogram(name: "xnmalloc", scope: !624, file: !624, line: 105, type: !3643, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!44, !47, !47}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3642, file: !624, line: 105, type: !47)
!3647 = !DILocalVariable(name: "s", arg: 2, scope: !3642, file: !624, line: 105, type: !47)
!3648 = !DILocation(line: 105, column: 18, scope: !3642)
!3649 = !DILocation(line: 105, column: 28, scope: !3642)
!3650 = !DILocation(line: 107, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3642, file: !624, line: 107, column: 7)
!3652 = !DILocation(line: 107, column: 7, scope: !3642)
!3653 = !DILocation(line: 108, column: 5, scope: !3651)
!3654 = !DILocation(line: 109, column: 21, scope: !3642)
!3655 = !DILocalVariable(name: "n", arg: 1, scope: !3656, file: !3657, line: 39, type: !47)
!3656 = distinct !DISubprogram(name: "xmalloc", scope: !3657, file: !3657, line: 39, type: !3658, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3660)
!3657 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!44, !47}
!3660 = !{!3655, !3661}
!3661 = !DILocalVariable(name: "p", scope: !3656, file: !3657, line: 41, type: !44)
!3662 = !DILocation(line: 39, column: 17, scope: !3656, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 109, column: 10, scope: !3642)
!3664 = !DILocation(line: 41, column: 13, scope: !3656, inlinedAt: !3663)
!3665 = !DILocation(line: 41, column: 9, scope: !3656, inlinedAt: !3663)
!3666 = !DILocation(line: 42, column: 8, scope: !3667, inlinedAt: !3663)
!3667 = distinct !DILexicalBlock(scope: !3656, file: !3657, line: 42, column: 7)
!3668 = !DILocation(line: 42, column: 15, scope: !3667, inlinedAt: !3663)
!3669 = !DILocation(line: 42, column: 10, scope: !3667, inlinedAt: !3663)
!3670 = !DILocation(line: 43, column: 5, scope: !3667, inlinedAt: !3663)
!3671 = !DILocation(line: 109, column: 3, scope: !3642)
!3672 = !DILocation(line: 39, column: 17, scope: !3656)
!3673 = !DILocation(line: 41, column: 13, scope: !3656)
!3674 = !DILocation(line: 41, column: 9, scope: !3656)
!3675 = !DILocation(line: 42, column: 8, scope: !3667)
!3676 = !DILocation(line: 42, column: 15, scope: !3667)
!3677 = !DILocation(line: 42, column: 10, scope: !3667)
!3678 = !DILocation(line: 43, column: 5, scope: !3667)
!3679 = !DILocation(line: 44, column: 3, scope: !3656)
!3680 = distinct !DISubprogram(name: "xnrealloc", scope: !624, file: !624, line: 118, type: !3681, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!44, !44, !47, !47}
!3683 = !{!3684, !3685, !3686}
!3684 = !DILocalVariable(name: "p", arg: 1, scope: !3680, file: !624, line: 118, type: !44)
!3685 = !DILocalVariable(name: "n", arg: 2, scope: !3680, file: !624, line: 118, type: !47)
!3686 = !DILocalVariable(name: "s", arg: 3, scope: !3680, file: !624, line: 118, type: !47)
!3687 = !DILocation(line: 118, column: 18, scope: !3680)
!3688 = !DILocation(line: 118, column: 28, scope: !3680)
!3689 = !DILocation(line: 118, column: 38, scope: !3680)
!3690 = !DILocation(line: 120, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3680, file: !624, line: 120, column: 7)
!3692 = !DILocation(line: 120, column: 7, scope: !3680)
!3693 = !DILocation(line: 121, column: 5, scope: !3691)
!3694 = !DILocation(line: 122, column: 25, scope: !3680)
!3695 = !DILocalVariable(name: "p", arg: 1, scope: !3696, file: !3657, line: 51, type: !44)
!3696 = distinct !DISubprogram(name: "xrealloc", scope: !3657, file: !3657, line: 51, type: !3697, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!44, !44, !47}
!3699 = !{!3695, !3700}
!3700 = !DILocalVariable(name: "n", arg: 2, scope: !3696, file: !3657, line: 51, type: !47)
!3701 = !DILocation(line: 51, column: 17, scope: !3696, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 122, column: 10, scope: !3680)
!3703 = !DILocation(line: 51, column: 27, scope: !3696, inlinedAt: !3702)
!3704 = !DILocation(line: 53, column: 8, scope: !3705, inlinedAt: !3702)
!3705 = distinct !DILexicalBlock(scope: !3696, file: !3657, line: 53, column: 7)
!3706 = !DILocation(line: 53, column: 13, scope: !3705, inlinedAt: !3702)
!3707 = !DILocation(line: 53, column: 10, scope: !3705, inlinedAt: !3702)
!3708 = !DILocation(line: 57, column: 7, scope: !3709, inlinedAt: !3702)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !3657, line: 54, column: 5)
!3710 = !DILocation(line: 58, column: 7, scope: !3709, inlinedAt: !3702)
!3711 = !DILocation(line: 61, column: 7, scope: !3696, inlinedAt: !3702)
!3712 = !DILocation(line: 62, column: 8, scope: !3713, inlinedAt: !3702)
!3713 = distinct !DILexicalBlock(scope: !3696, file: !3657, line: 62, column: 7)
!3714 = !DILocation(line: 62, column: 13, scope: !3713, inlinedAt: !3702)
!3715 = !DILocation(line: 62, column: 10, scope: !3713, inlinedAt: !3702)
!3716 = !DILocation(line: 63, column: 5, scope: !3713, inlinedAt: !3702)
!3717 = !DILocation(line: 122, column: 3, scope: !3680)
!3718 = !DILocation(line: 51, column: 17, scope: !3696)
!3719 = !DILocation(line: 51, column: 27, scope: !3696)
!3720 = !DILocation(line: 53, column: 8, scope: !3705)
!3721 = !DILocation(line: 53, column: 13, scope: !3705)
!3722 = !DILocation(line: 53, column: 10, scope: !3705)
!3723 = !DILocation(line: 57, column: 7, scope: !3709)
!3724 = !DILocation(line: 58, column: 7, scope: !3709)
!3725 = !DILocation(line: 61, column: 7, scope: !3696)
!3726 = !DILocation(line: 62, column: 8, scope: !3713)
!3727 = !DILocation(line: 62, column: 13, scope: !3713)
!3728 = !DILocation(line: 62, column: 10, scope: !3713)
!3729 = !DILocation(line: 63, column: 5, scope: !3713)
!3730 = !DILocation(line: 65, column: 1, scope: !3696)
!3731 = !DILocation(line: 180, column: 19, scope: !625)
!3732 = !DILocation(line: 180, column: 30, scope: !625)
!3733 = !DILocation(line: 180, column: 41, scope: !625)
!3734 = !DILocation(line: 182, column: 14, scope: !625)
!3735 = !DILocation(line: 182, column: 10, scope: !625)
!3736 = !DILocation(line: 184, column: 9, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !625, file: !624, line: 184, column: 7)
!3738 = !DILocation(line: 184, column: 7, scope: !625)
!3739 = !DILocation(line: 186, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !624, line: 186, column: 11)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !624, line: 185, column: 5)
!3742 = !DILocation(line: 186, column: 11, scope: !3741)
!3743 = !DILocation(line: 194, column: 30, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !624, line: 187, column: 9)
!3745 = !DILocation(line: 195, column: 16, scope: !3744)
!3746 = !DILocation(line: 195, column: 13, scope: !3744)
!3747 = !DILocation(line: 196, column: 9, scope: !3744)
!3748 = !DILocation(line: 204, column: 69, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !624, line: 204, column: 11)
!3750 = distinct !DILexicalBlock(scope: !3737, file: !624, line: 199, column: 5)
!3751 = !DILocation(line: 205, column: 11, scope: !3749)
!3752 = !DILocation(line: 204, column: 11, scope: !3750)
!3753 = !DILocation(line: 206, column: 9, scope: !3749)
!3754 = !DILocation(line: 210, column: 7, scope: !625)
!3755 = !DILocation(line: 211, column: 25, scope: !625)
!3756 = !DILocation(line: 51, column: 17, scope: !3696, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 211, column: 10, scope: !625)
!3758 = !DILocation(line: 51, column: 27, scope: !3696, inlinedAt: !3757)
!3759 = !DILocation(line: 53, column: 10, scope: !3705, inlinedAt: !3757)
!3760 = !DILocation(line: 207, column: 14, scope: !3750)
!3761 = !DILocation(line: 207, column: 18, scope: !3750)
!3762 = !DILocation(line: 207, column: 9, scope: !3750)
!3763 = !DILocation(line: 53, column: 8, scope: !3705, inlinedAt: !3757)
!3764 = !DILocation(line: 57, column: 7, scope: !3709, inlinedAt: !3757)
!3765 = !DILocation(line: 58, column: 7, scope: !3709, inlinedAt: !3757)
!3766 = !DILocation(line: 61, column: 7, scope: !3696, inlinedAt: !3757)
!3767 = !DILocation(line: 62, column: 8, scope: !3713, inlinedAt: !3757)
!3768 = !DILocation(line: 62, column: 13, scope: !3713, inlinedAt: !3757)
!3769 = !DILocation(line: 62, column: 10, scope: !3713, inlinedAt: !3757)
!3770 = !DILocation(line: 63, column: 5, scope: !3713, inlinedAt: !3757)
!3771 = !DILocation(line: 211, column: 3, scope: !625)
!3772 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !2723, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !624, line: 220, type: !47)
!3775 = !DILocation(line: 220, column: 20, scope: !3772)
!3776 = !DILocation(line: 39, column: 17, scope: !3656, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 222, column: 10, scope: !3772)
!3778 = !DILocation(line: 41, column: 13, scope: !3656, inlinedAt: !3777)
!3779 = !DILocation(line: 41, column: 9, scope: !3656, inlinedAt: !3777)
!3780 = !DILocation(line: 42, column: 8, scope: !3667, inlinedAt: !3777)
!3781 = !DILocation(line: 42, column: 15, scope: !3667, inlinedAt: !3777)
!3782 = !DILocation(line: 42, column: 10, scope: !3667, inlinedAt: !3777)
!3783 = !DILocation(line: 43, column: 5, scope: !3667, inlinedAt: !3777)
!3784 = !DILocation(line: 222, column: 3, scope: !3772)
!3785 = distinct !DISubprogram(name: "x2realloc", scope: !3657, file: !3657, line: 74, type: !3786, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!44, !44, !628}
!3788 = !{!3789, !3790}
!3789 = !DILocalVariable(name: "p", arg: 1, scope: !3785, file: !3657, line: 74, type: !44)
!3790 = !DILocalVariable(name: "pn", arg: 2, scope: !3785, file: !3657, line: 74, type: !628)
!3791 = !DILocation(line: 74, column: 18, scope: !3785)
!3792 = !DILocation(line: 74, column: 29, scope: !3785)
!3793 = !DILocation(line: 180, column: 19, scope: !625, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 76, column: 10, scope: !3785)
!3795 = !DILocation(line: 180, column: 30, scope: !625, inlinedAt: !3794)
!3796 = !DILocation(line: 180, column: 41, scope: !625, inlinedAt: !3794)
!3797 = !DILocation(line: 182, column: 14, scope: !625, inlinedAt: !3794)
!3798 = !DILocation(line: 182, column: 10, scope: !625, inlinedAt: !3794)
!3799 = !DILocation(line: 184, column: 9, scope: !3737, inlinedAt: !3794)
!3800 = !DILocation(line: 184, column: 7, scope: !625, inlinedAt: !3794)
!3801 = !DILocation(line: 186, column: 13, scope: !3740, inlinedAt: !3794)
!3802 = !DILocation(line: 186, column: 11, scope: !3741, inlinedAt: !3794)
!3803 = !DILocation(line: 210, column: 7, scope: !625, inlinedAt: !3794)
!3804 = !DILocation(line: 51, column: 17, scope: !3696, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 211, column: 10, scope: !625, inlinedAt: !3794)
!3806 = !DILocation(line: 51, column: 27, scope: !3696, inlinedAt: !3805)
!3807 = !DILocation(line: 53, column: 10, scope: !3705, inlinedAt: !3805)
!3808 = !DILocation(line: 205, column: 11, scope: !3749, inlinedAt: !3794)
!3809 = !DILocation(line: 204, column: 11, scope: !3750, inlinedAt: !3794)
!3810 = !DILocation(line: 206, column: 9, scope: !3749, inlinedAt: !3794)
!3811 = !DILocation(line: 207, column: 14, scope: !3750, inlinedAt: !3794)
!3812 = !DILocation(line: 207, column: 18, scope: !3750, inlinedAt: !3794)
!3813 = !DILocation(line: 207, column: 9, scope: !3750, inlinedAt: !3794)
!3814 = !DILocation(line: 53, column: 8, scope: !3705, inlinedAt: !3805)
!3815 = !DILocation(line: 57, column: 7, scope: !3709, inlinedAt: !3805)
!3816 = !DILocation(line: 58, column: 7, scope: !3709, inlinedAt: !3805)
!3817 = !DILocation(line: 61, column: 7, scope: !3696, inlinedAt: !3805)
!3818 = !DILocation(line: 62, column: 8, scope: !3713, inlinedAt: !3805)
!3819 = !DILocation(line: 62, column: 13, scope: !3713, inlinedAt: !3805)
!3820 = !DILocation(line: 62, column: 10, scope: !3713, inlinedAt: !3805)
!3821 = !DILocation(line: 63, column: 5, scope: !3713, inlinedAt: !3805)
!3822 = !DILocation(line: 76, column: 3, scope: !3785)
!3823 = distinct !DISubprogram(name: "xzalloc", scope: !3657, file: !3657, line: 84, type: !3658, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "s", arg: 1, scope: !3823, file: !3657, line: 84, type: !47)
!3826 = !DILocation(line: 84, column: 17, scope: !3823)
!3827 = !DILocation(line: 39, column: 17, scope: !3656, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 86, column: 18, scope: !3823)
!3829 = !DILocation(line: 41, column: 13, scope: !3656, inlinedAt: !3828)
!3830 = !DILocation(line: 41, column: 9, scope: !3656, inlinedAt: !3828)
!3831 = !DILocation(line: 42, column: 8, scope: !3667, inlinedAt: !3828)
!3832 = !DILocation(line: 42, column: 15, scope: !3667, inlinedAt: !3828)
!3833 = !DILocation(line: 42, column: 10, scope: !3667, inlinedAt: !3828)
!3834 = !DILocation(line: 43, column: 5, scope: !3667, inlinedAt: !3828)
!3835 = !DILocation(line: 86, column: 10, scope: !3823)
!3836 = !DILocation(line: 86, column: 3, scope: !3823)
!3837 = distinct !DISubprogram(name: "xcalloc", scope: !3657, file: !3657, line: 93, type: !3643, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3837, file: !3657, line: 93, type: !47)
!3840 = !DILocalVariable(name: "s", arg: 2, scope: !3837, file: !3657, line: 93, type: !47)
!3841 = !DILocalVariable(name: "p", scope: !3837, file: !3657, line: 95, type: !44)
!3842 = !DILocation(line: 93, column: 17, scope: !3837)
!3843 = !DILocation(line: 93, column: 27, scope: !3837)
!3844 = !DILocation(line: 100, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3837, file: !3657, line: 100, column: 7)
!3846 = !DILocation(line: 101, column: 7, scope: !3845)
!3847 = !DILocation(line: 101, column: 18, scope: !3845)
!3848 = !DILocation(line: 95, column: 9, scope: !3837)
!3849 = !DILocation(line: 101, column: 16, scope: !3845)
!3850 = !DILocation(line: 100, column: 7, scope: !3837)
!3851 = !DILocation(line: 102, column: 5, scope: !3845)
!3852 = !DILocation(line: 103, column: 3, scope: !3837)
!3853 = distinct !DISubprogram(name: "xmemdup", scope: !3657, file: !3657, line: 111, type: !3854, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3858)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!44, !3856, !47}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3858 = !{!3859, !3860}
!3859 = !DILocalVariable(name: "p", arg: 1, scope: !3853, file: !3657, line: 111, type: !3856)
!3860 = !DILocalVariable(name: "s", arg: 2, scope: !3853, file: !3657, line: 111, type: !47)
!3861 = !DILocation(line: 111, column: 22, scope: !3853)
!3862 = !DILocation(line: 111, column: 32, scope: !3853)
!3863 = !DILocation(line: 39, column: 17, scope: !3656, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 113, column: 18, scope: !3853)
!3865 = !DILocation(line: 41, column: 13, scope: !3656, inlinedAt: !3864)
!3866 = !DILocation(line: 41, column: 9, scope: !3656, inlinedAt: !3864)
!3867 = !DILocation(line: 42, column: 8, scope: !3667, inlinedAt: !3864)
!3868 = !DILocation(line: 42, column: 15, scope: !3667, inlinedAt: !3864)
!3869 = !DILocation(line: 42, column: 10, scope: !3667, inlinedAt: !3864)
!3870 = !DILocation(line: 43, column: 5, scope: !3667, inlinedAt: !3864)
!3871 = !DILocation(line: 113, column: 10, scope: !3853)
!3872 = !DILocation(line: 113, column: 3, scope: !3853)
!3873 = distinct !DISubprogram(name: "xstrdup", scope: !3657, file: !3657, line: 119, type: !2923, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "string", arg: 1, scope: !3873, file: !3657, line: 119, type: !60)
!3876 = !DILocation(line: 119, column: 22, scope: !3873)
!3877 = !DILocation(line: 121, column: 27, scope: !3873)
!3878 = !DILocation(line: 121, column: 43, scope: !3873)
!3879 = !DILocation(line: 111, column: 22, scope: !3853, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 121, column: 10, scope: !3873)
!3881 = !DILocation(line: 111, column: 32, scope: !3853, inlinedAt: !3880)
!3882 = !DILocation(line: 39, column: 17, scope: !3656, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 113, column: 18, scope: !3853, inlinedAt: !3880)
!3884 = !DILocation(line: 41, column: 13, scope: !3656, inlinedAt: !3883)
!3885 = !DILocation(line: 41, column: 9, scope: !3656, inlinedAt: !3883)
!3886 = !DILocation(line: 42, column: 8, scope: !3667, inlinedAt: !3883)
!3887 = !DILocation(line: 42, column: 15, scope: !3667, inlinedAt: !3883)
!3888 = !DILocation(line: 42, column: 10, scope: !3667, inlinedAt: !3883)
!3889 = !DILocation(line: 43, column: 5, scope: !3667, inlinedAt: !3883)
!3890 = !DILocation(line: 113, column: 10, scope: !3853, inlinedAt: !3880)
!3891 = !DILocation(line: 121, column: 3, scope: !3873)
!3892 = distinct !DISubprogram(name: "xalloc_die", scope: !3893, file: !3893, line: 32, type: !237, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !637, variables: !93)
!3893 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3894 = !DILocation(line: 34, column: 10, scope: !3892)
!3895 = !DILocation(line: 34, column: 33, scope: !3892)
!3896 = !DILocation(line: 34, column: 3, scope: !3892)
!3897 = !DILocation(line: 40, column: 3, scope: !3892)
!3898 = distinct !DISubprogram(name: "xstrtoumax", scope: !3899, file: !3899, line: 88, type: !3900, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !3902)
!3899 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!1647, !60, !708, !83, !1641, !60}
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3915, !3916, !3919, !3920}
!3903 = !DILocalVariable(name: "s", arg: 1, scope: !3898, file: !3899, line: 88, type: !60)
!3904 = !DILocalVariable(name: "ptr", arg: 2, scope: !3898, file: !3899, line: 88, type: !708)
!3905 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3898, file: !3899, line: 88, type: !83)
!3906 = !DILocalVariable(name: "val", arg: 4, scope: !3898, file: !3899, line: 89, type: !1641)
!3907 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3898, file: !3899, line: 89, type: !60)
!3908 = !DILocalVariable(name: "t_ptr", scope: !3898, file: !3899, line: 91, type: !42)
!3909 = !DILocalVariable(name: "p", scope: !3898, file: !3899, line: 92, type: !708)
!3910 = !DILocalVariable(name: "tmp", scope: !3898, file: !3899, line: 93, type: !832)
!3911 = !DILocalVariable(name: "err", scope: !3898, file: !3899, line: 94, type: !1647)
!3912 = !DILocalVariable(name: "q", scope: !3913, file: !3899, line: 104, type: !60)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3899, line: 103, column: 5)
!3914 = distinct !DILexicalBlock(scope: !3898, file: !3899, line: 102, column: 7)
!3915 = !DILocalVariable(name: "ch", scope: !3913, file: !3899, line: 105, type: !46)
!3916 = !DILocalVariable(name: "base", scope: !3917, file: !3899, line: 141, type: !83)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3899, line: 140, column: 5)
!3918 = distinct !DILexicalBlock(scope: !3898, file: !3899, line: 139, column: 7)
!3919 = !DILocalVariable(name: "suffixes", scope: !3917, file: !3899, line: 142, type: !83)
!3920 = !DILocalVariable(name: "overflow", scope: !3917, file: !3899, line: 143, type: !1647)
!3921 = !DILocation(line: 88, column: 24, scope: !3898)
!3922 = !DILocation(line: 88, column: 34, scope: !3898)
!3923 = !DILocation(line: 88, column: 43, scope: !3898)
!3924 = !DILocation(line: 89, column: 24, scope: !3898)
!3925 = !DILocation(line: 89, column: 41, scope: !3898)
!3926 = !DILocation(line: 91, column: 3, scope: !3898)
!3927 = !DILocation(line: 94, column: 16, scope: !3898)
!3928 = !DILocation(line: 96, column: 3, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3899, line: 96, column: 3)
!3930 = distinct !DILexicalBlock(scope: !3898, file: !3899, line: 96, column: 3)
!3931 = !DILocation(line: 98, column: 8, scope: !3898)
!3932 = !DILocation(line: 92, column: 10, scope: !3898)
!3933 = !DILocation(line: 100, column: 3, scope: !3898)
!3934 = !DILocation(line: 100, column: 9, scope: !3898)
!3935 = !DILocation(line: 104, column: 19, scope: !3913)
!3936 = !DIExpression(DW_OP_deref)
!3937 = !DILocation(line: 105, column: 21, scope: !3913)
!3938 = !DILocation(line: 106, column: 14, scope: !3913)
!3939 = !DILocation(line: 106, column: 7, scope: !3913)
!3940 = !DILocation(line: 107, column: 15, scope: !3913)
!3941 = distinct !{!3941, !3939, !3942}
!3942 = !DILocation(line: 107, column: 17, scope: !3913)
!3943 = !DILocation(line: 108, column: 14, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3913, file: !3899, line: 108, column: 11)
!3945 = !DILocalVariable(name: "nptr", arg: 1, scope: !3946, file: !3947, line: 336, type: !3950)
!3946 = distinct !DISubprogram(name: "strtoumax", scope: !3947, file: !3947, line: 336, type: !3948, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !3952)
!3947 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!832, !3950, !3951, !83}
!3950 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!3951 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !708)
!3952 = !{!3945, !3953, !3954}
!3953 = !DILocalVariable(name: "endptr", arg: 2, scope: !3946, file: !3947, line: 336, type: !3951)
!3954 = !DILocalVariable(name: "base", arg: 3, scope: !3946, file: !3947, line: 336, type: !83)
!3955 = !DILocation(line: 336, column: 1, scope: !3946, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 112, column: 9, scope: !3898)
!3957 = !DILocation(line: 339, column: 10, scope: !3946, inlinedAt: !3956)
!3958 = !DILocation(line: 93, column: 14, scope: !3898)
!3959 = !DILocation(line: 114, column: 7, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3898, file: !3899, line: 114, column: 7)
!3961 = !DILocation(line: 114, column: 10, scope: !3960)
!3962 = !DILocation(line: 114, column: 7, scope: !3898)
!3963 = !DILocation(line: 118, column: 11, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !3899, line: 118, column: 11)
!3965 = distinct !DILexicalBlock(scope: !3960, file: !3899, line: 115, column: 5)
!3966 = !DILocation(line: 118, column: 26, scope: !3964)
!3967 = !DILocation(line: 118, column: 29, scope: !3964)
!3968 = !DILocation(line: 118, column: 33, scope: !3964)
!3969 = !DILocation(line: 118, column: 36, scope: !3964)
!3970 = !DILocation(line: 118, column: 11, scope: !3965)
!3971 = !DILocation(line: 123, column: 12, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3960, file: !3899, line: 123, column: 12)
!3973 = !DILocation(line: 123, column: 12, scope: !3960)
!3974 = !DILocation(line: 128, column: 5, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !3899, line: 124, column: 5)
!3976 = !DILocation(line: 133, column: 8, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3898, file: !3899, line: 133, column: 7)
!3978 = !DILocation(line: 133, column: 7, scope: !3898)
!3979 = !DILocation(line: 135, column: 12, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3899, line: 134, column: 5)
!3981 = !DILocation(line: 136, column: 7, scope: !3980)
!3982 = !DILocation(line: 139, column: 7, scope: !3918)
!3983 = !DILocation(line: 139, column: 11, scope: !3918)
!3984 = !DILocation(line: 139, column: 7, scope: !3898)
!3985 = !DILocation(line: 141, column: 11, scope: !3917)
!3986 = !DILocation(line: 142, column: 11, scope: !3917)
!3987 = !DILocation(line: 145, column: 12, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3917, file: !3899, line: 145, column: 11)
!3989 = !DILocation(line: 145, column: 11, scope: !3917)
!3990 = !DILocation(line: 147, column: 16, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !3899, line: 146, column: 9)
!3992 = !DILocation(line: 148, column: 22, scope: !3991)
!3993 = !DILocation(line: 148, column: 11, scope: !3991)
!3994 = !DILocation(line: 151, column: 7, scope: !3917)
!3995 = !DILocation(line: 163, column: 15, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3899, line: 163, column: 15)
!3997 = distinct !DILexicalBlock(scope: !3917, file: !3899, line: 152, column: 9)
!3998 = !DILocation(line: 163, column: 15, scope: !3997)
!3999 = !DILocation(line: 164, column: 21, scope: !3996)
!4000 = !DILocation(line: 164, column: 13, scope: !3996)
!4001 = !DILocation(line: 167, column: 21, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3899, line: 167, column: 21)
!4003 = distinct !DILexicalBlock(scope: !3996, file: !3899, line: 165, column: 15)
!4004 = !DILocation(line: 167, column: 29, scope: !4002)
!4005 = !DILocation(line: 167, column: 21, scope: !4003)
!4006 = !DILocation(line: 175, column: 17, scope: !4003)
!4007 = !DILocation(line: 179, column: 7, scope: !3917)
!4008 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4009, file: !3899, line: 60, type: !83)
!4009 = distinct !DISubprogram(name: "bkm_scale", scope: !3899, file: !3899, line: 60, type: !4010, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!1647, !1641, !83}
!4012 = !{!4013, !4008}
!4013 = !DILocalVariable(name: "x", arg: 1, scope: !4009, file: !3899, line: 60, type: !1641)
!4014 = !DILocation(line: 60, column: 31, scope: !4009, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 182, column: 22, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3917, file: !3899, line: 180, column: 9)
!4017 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4015)
!4018 = distinct !DILexicalBlock(scope: !4009, file: !3899, line: 67, column: 7)
!4019 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4015)
!4020 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4015)
!4021 = !DILocation(line: 143, column: 20, scope: !3917)
!4022 = !DILocation(line: 183, column: 11, scope: !4016)
!4023 = !DILocation(line: 60, column: 31, scope: !4009, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 189, column: 22, scope: !4016)
!4025 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4024)
!4026 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4024)
!4027 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4024)
!4028 = !DILocation(line: 190, column: 11, scope: !4016)
!4029 = !DILocalVariable(name: "power", arg: 3, scope: !4030, file: !3899, line: 77, type: !83)
!4030 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3899, file: !3899, line: 77, type: !4031, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!1647, !1641, !83, !83}
!4033 = !{!4034, !4035, !4029, !4036}
!4034 = !DILocalVariable(name: "x", arg: 1, scope: !4030, file: !3899, line: 77, type: !1641)
!4035 = !DILocalVariable(name: "base", arg: 2, scope: !4030, file: !3899, line: 77, type: !83)
!4036 = !DILocalVariable(name: "err", scope: !4030, file: !3899, line: 79, type: !1647)
!4037 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 197, column: 22, scope: !4016)
!4039 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4038)
!4040 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4038)
!4042 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4041)
!4043 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4041)
!4044 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4038)
!4045 = !DILocation(line: 241, column: 11, scope: !3917)
!4046 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 202, column: 22, scope: !4016)
!4048 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4047)
!4049 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4047)
!4051 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4050)
!4052 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4050)
!4053 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4047)
!4054 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 207, column: 22, scope: !4016)
!4056 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4055)
!4057 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4055)
!4059 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4058)
!4060 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4058)
!4061 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 212, column: 22, scope: !4016)
!4063 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4062)
!4064 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4062)
!4066 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4065)
!4067 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4065)
!4068 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4062)
!4069 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 216, column: 22, scope: !4016)
!4071 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4070)
!4072 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4070)
!4074 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4073)
!4075 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4073)
!4076 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4070)
!4077 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 221, column: 22, scope: !4016)
!4079 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4078)
!4080 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4078)
!4082 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4081)
!4083 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4081)
!4084 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4078)
!4085 = !DILocation(line: 60, column: 31, scope: !4009, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 225, column: 22, scope: !4016)
!4087 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4086)
!4088 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4086)
!4089 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4086)
!4090 = !DILocation(line: 226, column: 11, scope: !4016)
!4091 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 229, column: 22, scope: !4016)
!4093 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4092)
!4094 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4092)
!4096 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4095)
!4097 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4095)
!4098 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4092)
!4099 = !DILocation(line: 77, column: 50, scope: !4030, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 233, column: 22, scope: !4016)
!4101 = !DILocation(line: 79, column: 16, scope: !4030, inlinedAt: !4100)
!4102 = !DILocation(line: 67, column: 39, scope: !4018, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 81, column: 12, scope: !4030, inlinedAt: !4100)
!4104 = !DILocation(line: 72, column: 6, scope: !4009, inlinedAt: !4103)
!4105 = !DILocation(line: 67, column: 7, scope: !4009, inlinedAt: !4103)
!4106 = !DILocation(line: 81, column: 9, scope: !4030, inlinedAt: !4100)
!4107 = !DILocation(line: 237, column: 16, scope: !4016)
!4108 = !DILocation(line: 238, column: 22, scope: !4016)
!4109 = !DILocation(line: 238, column: 11, scope: !4016)
!4110 = !DILocation(line: 242, column: 10, scope: !3917)
!4111 = !DILocation(line: 243, column: 11, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !3917, file: !3899, line: 243, column: 11)
!4113 = !DILocation(line: 244, column: 13, scope: !4112)
!4114 = !DILocation(line: 243, column: 11, scope: !3917)
!4115 = !DILocation(line: 247, column: 8, scope: !3898)
!4116 = !DILocation(line: 248, column: 3, scope: !3898)
!4117 = !DILocation(line: 249, column: 1, scope: !3898)
!4118 = distinct !DISubprogram(name: "rpl_calloc", scope: !4119, file: !4119, line: 42, type: !3643, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4120)
!4119 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4120 = !{!4121, !4122, !4123, !4124}
!4121 = !DILocalVariable(name: "n", arg: 1, scope: !4118, file: !4119, line: 42, type: !47)
!4122 = !DILocalVariable(name: "s", arg: 2, scope: !4118, file: !4119, line: 42, type: !47)
!4123 = !DILocalVariable(name: "result", scope: !4118, file: !4119, line: 44, type: !44)
!4124 = !DILocalVariable(name: "bytes", scope: !4125, file: !4119, line: 56, type: !47)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !4119, line: 53, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4118, file: !4119, line: 47, column: 7)
!4127 = !DILocation(line: 42, column: 20, scope: !4118)
!4128 = !DILocation(line: 42, column: 30, scope: !4118)
!4129 = !DILocation(line: 47, column: 9, scope: !4126)
!4130 = !DILocation(line: 47, column: 19, scope: !4126)
!4131 = !DILocation(line: 47, column: 14, scope: !4126)
!4132 = !DILocation(line: 56, column: 24, scope: !4125)
!4133 = !DILocation(line: 56, column: 14, scope: !4125)
!4134 = !DILocation(line: 57, column: 17, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4125, file: !4119, line: 57, column: 11)
!4136 = !DILocation(line: 57, column: 21, scope: !4135)
!4137 = !DILocation(line: 57, column: 11, scope: !4125)
!4138 = !DILocation(line: 59, column: 11, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4135, file: !4119, line: 58, column: 9)
!4140 = !DILocation(line: 59, column: 17, scope: !4139)
!4141 = !DILocation(line: 65, column: 12, scope: !4118)
!4142 = !DILocation(line: 44, column: 9, scope: !4118)
!4143 = !DILocation(line: 72, column: 3, scope: !4118)
!4144 = !DILocation(line: 73, column: 1, scope: !4118)
!4145 = distinct !DISubprogram(name: "rpl_fclose", scope: !4146, file: !4146, line: 56, type: !4147, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !4189)
!4146 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!83, !4149}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4151, file: !781, line: 242, baseType: !83, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4151, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4151, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4151, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4151, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4151, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4151, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4151, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4151, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4151, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4151, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4151, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4151, file: !781, line: 260, baseType: !4166, size: 64, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4168)
!4168 = !{!4169, !4170, !4172}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4167, file: !781, line: 157, baseType: !4166, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4167, file: !781, line: 158, baseType: !4171, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4167, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4151, file: !781, line: 262, baseType: !4171, size: 64, offset: 832)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4151, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4151, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4151, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4151, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4151, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4151, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4151, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4151, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4151, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4151, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4151, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4151, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4151, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4151, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4151, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "fp", arg: 1, scope: !4145, file: !4146, line: 56, type: !4149)
!4191 = !DILocalVariable(name: "saved_errno", scope: !4145, file: !4146, line: 58, type: !83)
!4192 = !DILocalVariable(name: "fd", scope: !4145, file: !4146, line: 59, type: !83)
!4193 = !DILocalVariable(name: "result", scope: !4145, file: !4146, line: 60, type: !83)
!4194 = !DILocation(line: 56, column: 19, scope: !4145)
!4195 = !DILocation(line: 58, column: 7, scope: !4145)
!4196 = !DILocation(line: 60, column: 7, scope: !4145)
!4197 = !DILocation(line: 63, column: 8, scope: !4145)
!4198 = !DILocation(line: 59, column: 7, scope: !4145)
!4199 = !DILocation(line: 64, column: 10, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4145, file: !4146, line: 64, column: 7)
!4201 = !DILocation(line: 64, column: 7, scope: !4145)
!4202 = !DILocation(line: 65, column: 12, scope: !4200)
!4203 = !DILocation(line: 65, column: 5, scope: !4200)
!4204 = !DILocation(line: 70, column: 9, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4145, file: !4146, line: 70, column: 7)
!4206 = !DILocation(line: 70, column: 23, scope: !4205)
!4207 = !DILocation(line: 70, column: 33, scope: !4205)
!4208 = !DILocation(line: 70, column: 26, scope: !4205)
!4209 = !DILocation(line: 70, column: 59, scope: !4205)
!4210 = !DILocation(line: 71, column: 7, scope: !4205)
!4211 = !DILocation(line: 71, column: 10, scope: !4205)
!4212 = !DILocation(line: 70, column: 7, scope: !4145)
!4213 = !DILocation(line: 98, column: 12, scope: !4145)
!4214 = !DILocation(line: 103, column: 7, scope: !4145)
!4215 = !DILocation(line: 72, column: 19, scope: !4205)
!4216 = !DILocation(line: 103, column: 19, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4145, file: !4146, line: 103, column: 7)
!4218 = !DILocation(line: 105, column: 13, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4217, file: !4146, line: 104, column: 5)
!4220 = !DILocation(line: 107, column: 5, scope: !4219)
!4221 = !DILocation(line: 110, column: 1, scope: !4145)
!4222 = distinct !DISubprogram(name: "rpl_fflush", scope: !4223, file: !4223, line: 127, type: !4224, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !4266)
!4223 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!83, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4228)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4229)
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4228, file: !781, line: 242, baseType: !83, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4228, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4228, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4228, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4228, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4228, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4228, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4228, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4228, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4228, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4228, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4228, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4228, file: !781, line: 260, baseType: !4243, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4245)
!4245 = !{!4246, !4247, !4249}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4244, file: !781, line: 157, baseType: !4243, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4244, file: !781, line: 158, baseType: !4248, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4244, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4228, file: !781, line: 262, baseType: !4248, size: 64, offset: 832)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4228, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4228, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4228, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4228, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4228, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4228, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4228, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4228, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4228, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4228, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4228, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4228, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4228, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4228, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4228, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "stream", arg: 1, scope: !4222, file: !4223, line: 127, type: !4226)
!4268 = !DILocation(line: 127, column: 19, scope: !4222)
!4269 = !DILocation(line: 148, column: 14, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4222, file: !4223, line: 148, column: 7)
!4271 = !DILocation(line: 148, column: 22, scope: !4270)
!4272 = !DILocation(line: 148, column: 27, scope: !4270)
!4273 = !DILocation(line: 148, column: 7, scope: !4222)
!4274 = !DILocation(line: 149, column: 12, scope: !4270)
!4275 = !DILocation(line: 149, column: 5, scope: !4270)
!4276 = !DILocalVariable(name: "fp", arg: 1, scope: !4277, file: !4223, line: 40, type: !4226)
!4277 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4223, file: !4223, line: 40, type: !4278, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !4226}
!4280 = !{!4276}
!4281 = !DILocation(line: 40, column: 48, scope: !4277, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 153, column: 3, scope: !4222)
!4283 = !DILocation(line: 42, column: 11, scope: !4284, inlinedAt: !4282)
!4284 = distinct !DILexicalBlock(scope: !4277, file: !4223, line: 42, column: 7)
!4285 = !DILocation(line: 42, column: 18, scope: !4284, inlinedAt: !4282)
!4286 = !DILocation(line: 42, column: 7, scope: !4277, inlinedAt: !4282)
!4287 = !DILocation(line: 44, column: 5, scope: !4284, inlinedAt: !4282)
!4288 = !DILocation(line: 155, column: 10, scope: !4222)
!4289 = !DILocation(line: 155, column: 3, scope: !4222)
!4290 = !DILocation(line: 229, column: 1, scope: !4222)
!4291 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4292, file: !4292, line: 28, type: !4293, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4335)
!4292 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!83, !4295, !1088, !83}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4297, file: !781, line: 242, baseType: !83, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4297, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4297, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4297, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4297, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4297, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4297, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4297, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4297, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4297, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4297, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4297, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4297, file: !781, line: 260, baseType: !4312, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4314)
!4314 = !{!4315, !4316, !4318}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4313, file: !781, line: 157, baseType: !4312, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4313, file: !781, line: 158, baseType: !4317, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4313, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4297, file: !781, line: 262, baseType: !4317, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4297, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4297, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4297, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4297, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4297, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4297, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4297, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4297, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4297, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4297, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4297, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4297, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4297, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4297, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4297, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DILocalVariable(name: "fp", arg: 1, scope: !4291, file: !4292, line: 28, type: !4295)
!4337 = !DILocalVariable(name: "offset", arg: 2, scope: !4291, file: !4292, line: 28, type: !1088)
!4338 = !DILocalVariable(name: "whence", arg: 3, scope: !4291, file: !4292, line: 28, type: !83)
!4339 = !DILocalVariable(name: "pos", scope: !4340, file: !4292, line: 116, type: !1088)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !4292, line: 112, column: 5)
!4341 = distinct !DILexicalBlock(scope: !4291, file: !4292, line: 51, column: 7)
!4342 = !DILocation(line: 28, column: 15, scope: !4291)
!4343 = !DILocation(line: 28, column: 25, scope: !4291)
!4344 = !DILocation(line: 28, column: 37, scope: !4291)
!4345 = !DILocation(line: 51, column: 11, scope: !4341)
!4346 = !DILocation(line: 51, column: 31, scope: !4341)
!4347 = !DILocation(line: 51, column: 24, scope: !4341)
!4348 = !DILocation(line: 52, column: 7, scope: !4341)
!4349 = !DILocation(line: 52, column: 14, scope: !4341)
!4350 = !DILocation(line: 52, column: 35, scope: !4341)
!4351 = !{!876, !677, i64 32}
!4352 = !DILocation(line: 52, column: 28, scope: !4341)
!4353 = !DILocation(line: 53, column: 7, scope: !4341)
!4354 = !DILocation(line: 53, column: 14, scope: !4341)
!4355 = !{!876, !677, i64 72}
!4356 = !DILocation(line: 53, column: 28, scope: !4341)
!4357 = !DILocation(line: 51, column: 7, scope: !4291)
!4358 = !DILocation(line: 116, column: 26, scope: !4340)
!4359 = !DILocation(line: 116, column: 19, scope: !4340)
!4360 = !DILocation(line: 116, column: 13, scope: !4340)
!4361 = !DILocation(line: 117, column: 15, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4340, file: !4292, line: 117, column: 11)
!4363 = !DILocation(line: 117, column: 11, scope: !4340)
!4364 = !DILocation(line: 127, column: 11, scope: !4340)
!4365 = !DILocation(line: 127, column: 18, scope: !4340)
!4366 = !DILocation(line: 128, column: 11, scope: !4340)
!4367 = !DILocation(line: 128, column: 19, scope: !4340)
!4368 = !{!876, !877, i64 144}
!4369 = !DILocation(line: 159, column: 7, scope: !4340)
!4370 = !DILocation(line: 161, column: 10, scope: !4291)
!4371 = !DILocation(line: 161, column: 3, scope: !4291)
!4372 = !DILocation(line: 162, column: 1, scope: !4291)
!4373 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4374, file: !4374, line: 334, type: !4375, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4389)
!4374 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!47, !4377, !60, !47, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1977, line: 6, baseType: !4380)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1979, line: 21, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1979, line: 13, size: 64, elements: !4382)
!4382 = !{!4383, !4384}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4381, file: !1979, line: 15, baseType: !83, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4381, file: !1979, line: 20, baseType: !4385, size: 32, offset: 32)
!4385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !1979, line: 16, size: 32, elements: !4386)
!4386 = !{!4387, !4388}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4385, file: !1979, line: 18, baseType: !191, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4385, file: !1979, line: 19, baseType: !1988, size: 32)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4390 = !DILocalVariable(name: "pwc", arg: 1, scope: !4373, file: !4374, line: 334, type: !4377)
!4391 = !DILocalVariable(name: "s", arg: 2, scope: !4373, file: !4374, line: 334, type: !60)
!4392 = !DILocalVariable(name: "n", arg: 3, scope: !4373, file: !4374, line: 334, type: !47)
!4393 = !DILocalVariable(name: "ps", arg: 4, scope: !4373, file: !4374, line: 334, type: !4378)
!4394 = !DILocalVariable(name: "ret", scope: !4373, file: !4374, line: 336, type: !47)
!4395 = !DILocalVariable(name: "wc", scope: !4373, file: !4374, line: 337, type: !1991)
!4396 = !DILocalVariable(name: "uc", scope: !4397, file: !4374, line: 398, type: !46)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !4374, line: 397, column: 5)
!4398 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 396, column: 7)
!4399 = !DILocation(line: 334, column: 23, scope: !4373)
!4400 = !DILocation(line: 334, column: 40, scope: !4373)
!4401 = !DILocation(line: 334, column: 50, scope: !4373)
!4402 = !DILocation(line: 334, column: 64, scope: !4373)
!4403 = !DILocation(line: 337, column: 3, scope: !4373)
!4404 = !DILocation(line: 353, column: 9, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 353, column: 7)
!4406 = !DILocation(line: 353, column: 7, scope: !4373)
!4407 = !DILocation(line: 388, column: 9, scope: !4373)
!4408 = !DILocation(line: 336, column: 10, scope: !4373)
!4409 = !DILocation(line: 396, column: 19, scope: !4398)
!4410 = !DILocation(line: 396, column: 31, scope: !4398)
!4411 = !DILocation(line: 396, column: 26, scope: !4398)
!4412 = !DILocation(line: 396, column: 41, scope: !4398)
!4413 = !DILocation(line: 396, column: 7, scope: !4373)
!4414 = !DILocation(line: 398, column: 26, scope: !4397)
!4415 = !DILocation(line: 398, column: 21, scope: !4397)
!4416 = !DILocation(line: 399, column: 14, scope: !4397)
!4417 = !DILocation(line: 399, column: 12, scope: !4397)
!4418 = !DILocation(line: 405, column: 1, scope: !4373)
!4419 = distinct !DISubprogram(name: "__argmatch_die", scope: !233, file: !233, line: 62, type: !237, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !93)
!4420 = !DILocation(line: 64, column: 3, scope: !4419)
!4421 = !DILocation(line: 65, column: 1, scope: !4419)
!4422 = distinct !DISubprogram(name: "argmatch", scope: !233, file: !233, line: 84, type: !4423, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4426)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4425, !60, !3506, !60, !47}
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !48, line: 51, baseType: !609)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4427 = !DILocalVariable(name: "arg", arg: 1, scope: !4422, file: !233, line: 84, type: !60)
!4428 = !DILocalVariable(name: "arglist", arg: 2, scope: !4422, file: !233, line: 84, type: !3506)
!4429 = !DILocalVariable(name: "vallist", arg: 3, scope: !4422, file: !233, line: 85, type: !60)
!4430 = !DILocalVariable(name: "valsize", arg: 4, scope: !4422, file: !233, line: 85, type: !47)
!4431 = !DILocalVariable(name: "i", scope: !4422, file: !233, line: 87, type: !47)
!4432 = !DILocalVariable(name: "arglen", scope: !4422, file: !233, line: 88, type: !47)
!4433 = !DILocalVariable(name: "matchind", scope: !4422, file: !233, line: 89, type: !4425)
!4434 = !DILocalVariable(name: "ambiguous", scope: !4422, file: !233, line: 90, type: !53)
!4435 = !DILocation(line: 84, column: 23, scope: !4422)
!4436 = !DILocation(line: 84, column: 47, scope: !4422)
!4437 = !DILocation(line: 85, column: 23, scope: !4422)
!4438 = !DILocation(line: 85, column: 39, scope: !4422)
!4439 = !DILocation(line: 89, column: 13, scope: !4422)
!4440 = !DILocation(line: 90, column: 8, scope: !4422)
!4441 = !DILocation(line: 92, column: 12, scope: !4422)
!4442 = !DILocation(line: 88, column: 10, scope: !4422)
!4443 = !DILocation(line: 87, column: 10, scope: !4422)
!4444 = !DILocation(line: 95, column: 15, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !233, line: 95, column: 3)
!4446 = distinct !DILexicalBlock(scope: !4422, file: !233, line: 95, column: 3)
!4447 = !DILocation(line: 95, column: 3, scope: !4446)
!4448 = !DILocation(line: 97, column: 12, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !233, line: 97, column: 11)
!4450 = distinct !DILexicalBlock(scope: !4445, file: !233, line: 96, column: 5)
!4451 = !DILocation(line: 97, column: 11, scope: !4450)
!4452 = !DILocation(line: 99, column: 15, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !233, line: 99, column: 15)
!4454 = distinct !DILexicalBlock(scope: !4449, file: !233, line: 98, column: 9)
!4455 = !DILocation(line: 99, column: 35, scope: !4453)
!4456 = !DILocation(line: 99, column: 15, scope: !4454)
!4457 = !DILocation(line: 102, column: 29, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !233, line: 102, column: 20)
!4459 = !DILocation(line: 102, column: 20, scope: !4453)
!4460 = !DILocation(line: 109, column: 19, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !233, line: 108, column: 19)
!4462 = distinct !DILexicalBlock(scope: !4458, file: !233, line: 106, column: 13)
!4463 = !DILocation(line: 109, column: 48, scope: !4461)
!4464 = !DILocation(line: 109, column: 38, scope: !4461)
!4465 = !DILocation(line: 110, column: 48, scope: !4461)
!4466 = !DILocation(line: 110, column: 38, scope: !4461)
!4467 = !DILocation(line: 109, column: 22, scope: !4461)
!4468 = !DILocation(line: 108, column: 19, scope: !4462)
!4469 = !DILocation(line: 115, column: 17, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4461, file: !233, line: 111, column: 17)
!4471 = !DILocation(line: 95, column: 28, scope: !4445)
!4472 = distinct !{!4472, !4447, !4473}
!4473 = !DILocation(line: 118, column: 5, scope: !4446)
!4474 = !DILocation(line: 119, column: 7, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4422, file: !233, line: 119, column: 7)
!4476 = !DILocation(line: 122, column: 5, scope: !4475)
!4477 = !DILocation(line: 123, column: 1, scope: !4422)
!4478 = distinct !DISubprogram(name: "argmatch_invalid", scope: !233, file: !233, line: 131, type: !4479, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !60, !60, !4425}
!4481 = !{!4482, !4483, !4484, !4485}
!4482 = !DILocalVariable(name: "context", arg: 1, scope: !4478, file: !233, line: 131, type: !60)
!4483 = !DILocalVariable(name: "value", arg: 2, scope: !4478, file: !233, line: 131, type: !60)
!4484 = !DILocalVariable(name: "problem", arg: 3, scope: !4478, file: !233, line: 131, type: !4425)
!4485 = !DILocalVariable(name: "format", scope: !4478, file: !233, line: 133, type: !60)
!4486 = !DILocation(line: 131, column: 31, scope: !4478)
!4487 = !DILocation(line: 131, column: 52, scope: !4478)
!4488 = !DILocation(line: 131, column: 69, scope: !4478)
!4489 = !DILocation(line: 133, column: 33, scope: !4478)
!4490 = !DILocation(line: 133, column: 25, scope: !4478)
!4491 = !DILocation(line: 135, column: 27, scope: !4478)
!4492 = !DILocation(line: 133, column: 15, scope: !4478)
!4493 = !DILocation(line: 137, column: 24, scope: !4478)
!4494 = !DILocation(line: 138, column: 10, scope: !4478)
!4495 = !DILocation(line: 137, column: 3, scope: !4478)
!4496 = !DILocation(line: 139, column: 1, scope: !4478)
!4497 = distinct !DISubprogram(name: "argmatch_valid", scope: !233, file: !233, line: 146, type: !4498, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !3506, !60, !47}
!4500 = !{!4501, !4502, !4503, !4504, !4505}
!4501 = !DILocalVariable(name: "arglist", arg: 1, scope: !4497, file: !233, line: 146, type: !3506)
!4502 = !DILocalVariable(name: "vallist", arg: 2, scope: !4497, file: !233, line: 147, type: !60)
!4503 = !DILocalVariable(name: "valsize", arg: 3, scope: !4497, file: !233, line: 147, type: !47)
!4504 = !DILocalVariable(name: "i", scope: !4497, file: !233, line: 149, type: !47)
!4505 = !DILocalVariable(name: "last_val", scope: !4497, file: !233, line: 150, type: !60)
!4506 = !DILocation(line: 146, column: 36, scope: !4497)
!4507 = !DILocation(line: 147, column: 29, scope: !4497)
!4508 = !DILocation(line: 147, column: 45, scope: !4497)
!4509 = !DILocation(line: 150, column: 15, scope: !4497)
!4510 = !DILocation(line: 154, column: 3, scope: !4497)
!4511 = !DILocation(line: 149, column: 10, scope: !4497)
!4512 = !DILocation(line: 155, column: 15, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !233, line: 155, column: 3)
!4514 = distinct !DILexicalBlock(scope: !4497, file: !233, line: 155, column: 3)
!4515 = !DILocation(line: 155, column: 3, scope: !4514)
!4516 = !DILocation(line: 156, column: 12, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4513, file: !233, line: 156, column: 9)
!4518 = !DILocation(line: 157, column: 9, scope: !4517)
!4519 = !DILocation(line: 157, column: 12, scope: !4517)
!4520 = !DILocation(line: 156, column: 9, scope: !4513)
!4521 = !DILocation(line: 159, column: 9, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4517, file: !233, line: 158, column: 7)
!4523 = !DILocation(line: 161, column: 7, scope: !4522)
!4524 = !DILocation(line: 164, column: 9, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4517, file: !233, line: 163, column: 7)
!4526 = !DILocation(line: 155, column: 28, scope: !4513)
!4527 = distinct !{!4527, !4515, !4528}
!4528 = !DILocation(line: 165, column: 7, scope: !4514)
!4529 = !DILocation(line: 166, column: 3, scope: !4497)
!4530 = !DILocalVariable(name: "__c", arg: 1, scope: !4531, file: !868, line: 98, type: !83)
!4531 = distinct !DISubprogram(name: "putc_unlocked", scope: !868, file: !868, line: 98, type: !4532, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4574)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!83, !83, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4536)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4537)
!4537 = !{!4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4536, file: !781, line: 242, baseType: !83, size: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4536, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4536, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4536, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4536, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4536, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4536, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4536, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4536, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4536, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4536, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4536, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4536, file: !781, line: 260, baseType: !4551, size: 64, offset: 768)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4553)
!4553 = !{!4554, !4555, !4557}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4552, file: !781, line: 157, baseType: !4551, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4552, file: !781, line: 158, baseType: !4556, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4552, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4536, file: !781, line: 262, baseType: !4556, size: 64, offset: 832)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4536, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4536, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4536, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4536, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4536, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4536, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4536, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4536, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4536, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4536, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4536, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4536, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4536, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4536, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4536, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4574 = !{!4530, !4575}
!4575 = !DILocalVariable(name: "__stream", arg: 2, scope: !4531, file: !868, line: 98, type: !4534)
!4576 = !DILocation(line: 98, column: 20, scope: !4531, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 166, column: 3, scope: !4497)
!4578 = !DILocation(line: 98, column: 31, scope: !4531, inlinedAt: !4577)
!4579 = !DILocation(line: 100, column: 10, scope: !4531, inlinedAt: !4577)
!4580 = !DILocation(line: 167, column: 1, scope: !4497)
!4581 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !233, file: !233, line: 176, type: !4582, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4425, !60, !60, !3506, !60, !47, !234}
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591}
!4585 = !DILocalVariable(name: "context", arg: 1, scope: !4581, file: !233, line: 176, type: !60)
!4586 = !DILocalVariable(name: "arg", arg: 2, scope: !4581, file: !233, line: 177, type: !60)
!4587 = !DILocalVariable(name: "arglist", arg: 3, scope: !4581, file: !233, line: 177, type: !3506)
!4588 = !DILocalVariable(name: "vallist", arg: 4, scope: !4581, file: !233, line: 178, type: !60)
!4589 = !DILocalVariable(name: "valsize", arg: 5, scope: !4581, file: !233, line: 178, type: !47)
!4590 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !4581, file: !233, line: 179, type: !234)
!4591 = !DILocalVariable(name: "res", scope: !4581, file: !233, line: 181, type: !4425)
!4592 = !DILocation(line: 176, column: 35, scope: !4581)
!4593 = !DILocation(line: 177, column: 35, scope: !4581)
!4594 = !DILocation(line: 177, column: 59, scope: !4581)
!4595 = !DILocation(line: 178, column: 35, scope: !4581)
!4596 = !DILocation(line: 178, column: 51, scope: !4581)
!4597 = !DILocation(line: 179, column: 40, scope: !4581)
!4598 = !DILocation(line: 84, column: 23, scope: !4422, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 181, column: 19, scope: !4581)
!4600 = !DILocation(line: 84, column: 47, scope: !4422, inlinedAt: !4599)
!4601 = !DILocation(line: 85, column: 23, scope: !4422, inlinedAt: !4599)
!4602 = !DILocation(line: 85, column: 39, scope: !4422, inlinedAt: !4599)
!4603 = !DILocation(line: 89, column: 13, scope: !4422, inlinedAt: !4599)
!4604 = !DILocation(line: 90, column: 8, scope: !4422, inlinedAt: !4599)
!4605 = !DILocation(line: 92, column: 12, scope: !4422, inlinedAt: !4599)
!4606 = !DILocation(line: 88, column: 10, scope: !4422, inlinedAt: !4599)
!4607 = !DILocation(line: 87, column: 10, scope: !4422, inlinedAt: !4599)
!4608 = !DILocation(line: 95, column: 15, scope: !4445, inlinedAt: !4599)
!4609 = !DILocation(line: 95, column: 3, scope: !4446, inlinedAt: !4599)
!4610 = !DILocation(line: 97, column: 12, scope: !4449, inlinedAt: !4599)
!4611 = !DILocation(line: 97, column: 11, scope: !4450, inlinedAt: !4599)
!4612 = !DILocation(line: 99, column: 15, scope: !4453, inlinedAt: !4599)
!4613 = !DILocation(line: 99, column: 35, scope: !4453, inlinedAt: !4599)
!4614 = !DILocation(line: 99, column: 15, scope: !4454, inlinedAt: !4599)
!4615 = !DILocation(line: 102, column: 29, scope: !4458, inlinedAt: !4599)
!4616 = !DILocation(line: 102, column: 20, scope: !4453, inlinedAt: !4599)
!4617 = !DILocation(line: 109, column: 19, scope: !4461, inlinedAt: !4599)
!4618 = !DILocation(line: 109, column: 48, scope: !4461, inlinedAt: !4599)
!4619 = !DILocation(line: 109, column: 38, scope: !4461, inlinedAt: !4599)
!4620 = !DILocation(line: 110, column: 48, scope: !4461, inlinedAt: !4599)
!4621 = !DILocation(line: 110, column: 38, scope: !4461, inlinedAt: !4599)
!4622 = !DILocation(line: 109, column: 22, scope: !4461, inlinedAt: !4599)
!4623 = !DILocation(line: 108, column: 19, scope: !4462, inlinedAt: !4599)
!4624 = !DILocation(line: 115, column: 17, scope: !4470, inlinedAt: !4599)
!4625 = !DILocation(line: 95, column: 28, scope: !4445, inlinedAt: !4599)
!4626 = !DILocation(line: 119, column: 7, scope: !4475, inlinedAt: !4599)
!4627 = !DILocation(line: 181, column: 13, scope: !4581)
!4628 = !DILocation(line: 182, column: 11, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4581, file: !233, line: 182, column: 7)
!4630 = !DILocation(line: 182, column: 7, scope: !4581)
!4631 = !DILocation(line: 131, column: 31, scope: !4478, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 187, column: 3, scope: !4581)
!4633 = !DILocation(line: 131, column: 52, scope: !4478, inlinedAt: !4632)
!4634 = !DILocation(line: 131, column: 69, scope: !4478, inlinedAt: !4632)
!4635 = !DILocation(line: 133, column: 33, scope: !4478, inlinedAt: !4632)
!4636 = !DILocation(line: 133, column: 25, scope: !4478, inlinedAt: !4632)
!4637 = !DILocation(line: 135, column: 27, scope: !4478, inlinedAt: !4632)
!4638 = !DILocation(line: 133, column: 15, scope: !4478, inlinedAt: !4632)
!4639 = !DILocation(line: 137, column: 24, scope: !4478, inlinedAt: !4632)
!4640 = !DILocation(line: 138, column: 10, scope: !4478, inlinedAt: !4632)
!4641 = !DILocation(line: 137, column: 3, scope: !4478, inlinedAt: !4632)
!4642 = !DILocation(line: 188, column: 3, scope: !4581)
!4643 = !DILocation(line: 189, column: 3, scope: !4581)
!4644 = !DILocation(line: 191, column: 3, scope: !4581)
!4645 = !DILocation(line: 192, column: 1, scope: !4581)
!4646 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !233, file: !233, line: 197, type: !4647, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !4649)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!60, !60, !3506, !60, !47}
!4649 = !{!4650, !4651, !4652, !4653, !4654}
!4650 = !DILocalVariable(name: "value", arg: 1, scope: !4646, file: !233, line: 197, type: !60)
!4651 = !DILocalVariable(name: "arglist", arg: 2, scope: !4646, file: !233, line: 198, type: !3506)
!4652 = !DILocalVariable(name: "vallist", arg: 3, scope: !4646, file: !233, line: 199, type: !60)
!4653 = !DILocalVariable(name: "valsize", arg: 4, scope: !4646, file: !233, line: 199, type: !47)
!4654 = !DILocalVariable(name: "i", scope: !4646, file: !233, line: 201, type: !47)
!4655 = !DILocation(line: 197, column: 35, scope: !4646)
!4656 = !DILocation(line: 198, column: 42, scope: !4646)
!4657 = !DILocation(line: 199, column: 35, scope: !4646)
!4658 = !DILocation(line: 199, column: 51, scope: !4646)
!4659 = !DILocation(line: 201, column: 10, scope: !4646)
!4660 = !DILocation(line: 203, column: 15, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !233, line: 203, column: 3)
!4662 = distinct !DILexicalBlock(scope: !4646, file: !233, line: 203, column: 3)
!4663 = !DILocation(line: 203, column: 3, scope: !4662)
!4664 = !DILocation(line: 204, column: 43, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4661, file: !233, line: 204, column: 9)
!4666 = distinct !{!4666, !4663, !4667}
!4667 = !DILocation(line: 205, column: 23, scope: !4662)
!4668 = !DILocation(line: 204, column: 33, scope: !4665)
!4669 = !DILocation(line: 204, column: 10, scope: !4665)
!4670 = !DILocation(line: 203, column: 28, scope: !4661)
!4671 = !DILocation(line: 204, column: 9, scope: !4661)
!4672 = !DILocation(line: 207, column: 1, scope: !4646)
!4673 = distinct !DISubprogram(name: "close_stream", scope: !4674, file: !4674, line: 56, type: !4675, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4717)
!4674 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!83, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4679, file: !781, line: 242, baseType: !83, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4679, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4679, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4679, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4679, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4679, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4679, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4679, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4679, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4679, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4679, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4679, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4679, file: !781, line: 260, baseType: !4694, size: 64, offset: 768)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4696)
!4696 = !{!4697, !4698, !4700}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4695, file: !781, line: 157, baseType: !4694, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4695, file: !781, line: 158, baseType: !4699, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4695, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4679, file: !781, line: 262, baseType: !4699, size: 64, offset: 832)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4679, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4679, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4679, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4679, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4679, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4679, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4679, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4679, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4679, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4679, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4679, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4679, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4679, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4679, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4679, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4717 = !{!4718, !4719, !4721, !4722}
!4718 = !DILocalVariable(name: "stream", arg: 1, scope: !4673, file: !4674, line: 56, type: !4677)
!4719 = !DILocalVariable(name: "some_pending", scope: !4673, file: !4674, line: 58, type: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!4721 = !DILocalVariable(name: "prev_fail", scope: !4673, file: !4674, line: 59, type: !4720)
!4722 = !DILocalVariable(name: "fclose_fail", scope: !4673, file: !4674, line: 60, type: !4720)
!4723 = !DILocation(line: 56, column: 21, scope: !4673)
!4724 = !DILocation(line: 58, column: 30, scope: !4673)
!4725 = !DILocalVariable(name: "__stream", arg: 1, scope: !4726, file: !868, line: 132, type: !4677)
!4726 = distinct !DISubprogram(name: "ferror_unlocked", scope: !868, file: !868, line: 132, type: !4675, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4727)
!4727 = !{!4725}
!4728 = !DILocation(line: 132, column: 1, scope: !4726, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 59, column: 27, scope: !4673)
!4730 = !DILocation(line: 134, column: 10, scope: !4726, inlinedAt: !4729)
!4731 = !DILocation(line: 59, column: 43, scope: !4673)
!4732 = !DILocation(line: 60, column: 29, scope: !4673)
!4733 = !DILocation(line: 60, column: 45, scope: !4673)
!4734 = !DILocation(line: 70, column: 17, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4673, file: !4674, line: 70, column: 7)
!4736 = !DILocation(line: 58, column: 50, scope: !4673)
!4737 = !DILocation(line: 70, column: 33, scope: !4735)
!4738 = !DILocation(line: 70, column: 53, scope: !4735)
!4739 = !DILocation(line: 70, column: 59, scope: !4735)
!4740 = !DILocation(line: 70, column: 7, scope: !4673)
!4741 = !DILocation(line: 72, column: 11, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4735, file: !4674, line: 71, column: 5)
!4743 = !DILocation(line: 73, column: 9, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !4674, line: 72, column: 11)
!4745 = !DILocation(line: 73, column: 15, scope: !4744)
!4746 = !DILocation(line: 78, column: 1, scope: !4673)
!4747 = distinct !DISubprogram(name: "hard_locale", scope: !4748, file: !4748, line: 38, type: !4749, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4751)
!4748 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!53, !83}
!4751 = !{!4752, !4753, !4754}
!4752 = !DILocalVariable(name: "category", arg: 1, scope: !4747, file: !4748, line: 38, type: !83)
!4753 = !DILocalVariable(name: "hard", scope: !4747, file: !4748, line: 40, type: !53)
!4754 = !DILocalVariable(name: "p", scope: !4747, file: !4748, line: 41, type: !60)
!4755 = !DILocation(line: 38, column: 18, scope: !4747)
!4756 = !DILocation(line: 40, column: 8, scope: !4747)
!4757 = !DILocation(line: 41, column: 19, scope: !4747)
!4758 = !DILocation(line: 41, column: 15, scope: !4747)
!4759 = !DILocation(line: 43, column: 7, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4747, file: !4748, line: 43, column: 7)
!4761 = !DILocation(line: 43, column: 7, scope: !4747)
!4762 = !DILocation(line: 47, column: 15, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !4748, line: 47, column: 15)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4748, line: 46, column: 9)
!4765 = distinct !DILexicalBlock(scope: !4766, file: !4748, line: 45, column: 11)
!4766 = distinct !DILexicalBlock(scope: !4760, file: !4748, line: 44, column: 5)
!4767 = !DILocation(line: 47, column: 31, scope: !4763)
!4768 = !DILocation(line: 47, column: 36, scope: !4763)
!4769 = !DILocation(line: 47, column: 39, scope: !4763)
!4770 = !DILocation(line: 47, column: 59, scope: !4763)
!4771 = !DILocation(line: 47, column: 15, scope: !4764)
!4772 = !DILocation(line: 48, column: 13, scope: !4763)
!4773 = !DILocation(line: 71, column: 3, scope: !4747)
!4774 = distinct !DISubprogram(name: "locale_charset", scope: !584, file: !584, line: 393, type: !4775, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4776)
!4775 = !DISubroutineType(types: !123)
!4776 = !{!4777, !4778}
!4777 = !DILocalVariable(name: "codeset", scope: !4774, file: !584, line: 395, type: !60)
!4778 = !DILocalVariable(name: "aliases", scope: !4774, file: !584, line: 396, type: !60)
!4779 = !DILocalVariable(name: "buf1", scope: !4780, file: !584, line: 196, type: !4847)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !584, line: 194, column: 21)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !584, line: 193, column: 19)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !584, line: 193, column: 19)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !584, line: 188, column: 17)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !584, line: 181, column: 19)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !584, line: 177, column: 13)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !584, line: 173, column: 15)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !584, line: 161, column: 9)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !584, line: 157, column: 11)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !584, line: 130, column: 5)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !584, line: 129, column: 7)
!4791 = distinct !DISubprogram(name: "get_charset_aliases", scope: !584, file: !584, line: 124, type: !4775, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4799, !4800, !4801, !4802, !4843, !4844, !4845, !4779, !4846, !4850, !4851, !4852}
!4793 = !DILocalVariable(name: "cp", scope: !4791, file: !584, line: 126, type: !60)
!4794 = !DILocalVariable(name: "dir", scope: !4789, file: !584, line: 132, type: !60)
!4795 = !DILocalVariable(name: "base", scope: !4789, file: !584, line: 133, type: !60)
!4796 = !DILocalVariable(name: "file_name", scope: !4789, file: !584, line: 134, type: !42)
!4797 = !DILocalVariable(name: "dir_len", scope: !4798, file: !584, line: 144, type: !47)
!4798 = distinct !DILexicalBlock(scope: !4789, file: !584, line: 143, column: 7)
!4799 = !DILocalVariable(name: "base_len", scope: !4798, file: !584, line: 145, type: !47)
!4800 = !DILocalVariable(name: "add_slash", scope: !4798, file: !584, line: 146, type: !83)
!4801 = !DILocalVariable(name: "fd", scope: !4787, file: !584, line: 162, type: !83)
!4802 = !DILocalVariable(name: "fp", scope: !4785, file: !584, line: 178, type: !4803)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !779, line: 7, baseType: !4805)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !781, line: 241, size: 1728, elements: !4806)
!4806 = !{!4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4805, file: !781, line: 242, baseType: !83, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4805, file: !781, line: 247, baseType: !42, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4805, file: !781, line: 248, baseType: !42, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4805, file: !781, line: 249, baseType: !42, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4805, file: !781, line: 250, baseType: !42, size: 64, offset: 256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4805, file: !781, line: 251, baseType: !42, size: 64, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4805, file: !781, line: 252, baseType: !42, size: 64, offset: 384)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4805, file: !781, line: 253, baseType: !42, size: 64, offset: 448)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4805, file: !781, line: 254, baseType: !42, size: 64, offset: 512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4805, file: !781, line: 256, baseType: !42, size: 64, offset: 576)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4805, file: !781, line: 257, baseType: !42, size: 64, offset: 640)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4805, file: !781, line: 258, baseType: !42, size: 64, offset: 704)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4805, file: !781, line: 260, baseType: !4820, size: 64, offset: 768)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !781, line: 156, size: 192, elements: !4822)
!4822 = !{!4823, !4824, !4826}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4821, file: !781, line: 157, baseType: !4820, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4821, file: !781, line: 158, baseType: !4825, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4821, file: !781, line: 162, baseType: !83, size: 32, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4805, file: !781, line: 262, baseType: !4825, size: 64, offset: 832)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4805, file: !781, line: 264, baseType: !83, size: 32, offset: 896)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4805, file: !781, line: 268, baseType: !83, size: 32, offset: 928)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4805, file: !781, line: 270, baseType: !807, size: 64, offset: 960)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4805, file: !781, line: 274, baseType: !174, size: 16, offset: 1024)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4805, file: !781, line: 275, baseType: !810, size: 8, offset: 1040)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4805, file: !781, line: 276, baseType: !812, size: 8, offset: 1048)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4805, file: !781, line: 280, baseType: !816, size: 64, offset: 1088)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4805, file: !781, line: 289, baseType: !819, size: 64, offset: 1152)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4805, file: !781, line: 297, baseType: !44, size: 64, offset: 1216)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4805, file: !781, line: 298, baseType: !44, size: 64, offset: 1280)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4805, file: !781, line: 299, baseType: !44, size: 64, offset: 1344)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4805, file: !781, line: 300, baseType: !44, size: 64, offset: 1408)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4805, file: !781, line: 302, baseType: !47, size: 64, offset: 1472)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4805, file: !781, line: 303, baseType: !83, size: 32, offset: 1536)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4805, file: !781, line: 305, baseType: !827, size: 160, offset: 1568)
!4843 = !DILocalVariable(name: "res_ptr", scope: !4783, file: !584, line: 190, type: !42)
!4844 = !DILocalVariable(name: "res_size", scope: !4783, file: !584, line: 191, type: !47)
!4845 = !DILocalVariable(name: "c", scope: !4780, file: !584, line: 195, type: !83)
!4846 = !DILocalVariable(name: "buf2", scope: !4780, file: !584, line: 197, type: !4847)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 408, elements: !4848)
!4848 = !{!4849}
!4849 = !DISubrange(count: 51)
!4850 = !DILocalVariable(name: "l1", scope: !4780, file: !584, line: 198, type: !47)
!4851 = !DILocalVariable(name: "l2", scope: !4780, file: !584, line: 198, type: !47)
!4852 = !DILocalVariable(name: "old_res_ptr", scope: !4780, file: !584, line: 199, type: !42)
!4853 = !DILocation(line: 196, column: 28, scope: !4780, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 589, column: 18, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4774, file: !584, line: 589, column: 3)
!4856 = !DILocation(line: 197, column: 28, scope: !4780, inlinedAt: !4854)
!4857 = !DILocation(line: 403, column: 13, scope: !4774)
!4858 = !DILocation(line: 395, column: 15, scope: !4774)
!4859 = !DILocation(line: 584, column: 15, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4774, file: !584, line: 584, column: 7)
!4861 = !DILocation(line: 584, column: 7, scope: !4774)
!4862 = !DILocation(line: 128, column: 8, scope: !4791, inlinedAt: !4854)
!4863 = !DILocation(line: 126, column: 15, scope: !4791, inlinedAt: !4854)
!4864 = !DILocation(line: 129, column: 10, scope: !4790, inlinedAt: !4854)
!4865 = !DILocation(line: 129, column: 7, scope: !4791, inlinedAt: !4854)
!4866 = !DILocation(line: 138, column: 13, scope: !4789, inlinedAt: !4854)
!4867 = !DILocation(line: 132, column: 19, scope: !4789, inlinedAt: !4854)
!4868 = !DILocation(line: 139, column: 15, scope: !4869, inlinedAt: !4854)
!4869 = distinct !DILexicalBlock(scope: !4789, file: !584, line: 139, column: 11)
!4870 = !DILocation(line: 139, column: 23, scope: !4869, inlinedAt: !4854)
!4871 = !DILocation(line: 139, column: 26, scope: !4869, inlinedAt: !4854)
!4872 = !DILocation(line: 139, column: 33, scope: !4869, inlinedAt: !4854)
!4873 = !DILocation(line: 139, column: 11, scope: !4789, inlinedAt: !4854)
!4874 = !DILocation(line: 140, column: 9, scope: !4869, inlinedAt: !4854)
!4875 = !DILocation(line: 144, column: 26, scope: !4798, inlinedAt: !4854)
!4876 = !DILocation(line: 144, column: 16, scope: !4798, inlinedAt: !4854)
!4877 = !DILocation(line: 145, column: 16, scope: !4798, inlinedAt: !4854)
!4878 = !DILocation(line: 146, column: 34, scope: !4798, inlinedAt: !4854)
!4879 = !DILocation(line: 146, column: 38, scope: !4798, inlinedAt: !4854)
!4880 = !DILocation(line: 146, column: 42, scope: !4798, inlinedAt: !4854)
!4881 = !DILocation(line: 147, column: 48, scope: !4798, inlinedAt: !4854)
!4882 = !DILocation(line: 147, column: 46, scope: !4798, inlinedAt: !4854)
!4883 = !DILocation(line: 147, column: 69, scope: !4798, inlinedAt: !4854)
!4884 = !DILocation(line: 147, column: 30, scope: !4798, inlinedAt: !4854)
!4885 = !DILocation(line: 134, column: 13, scope: !4789, inlinedAt: !4854)
!4886 = !DILocation(line: 148, column: 13, scope: !4798, inlinedAt: !4854)
!4887 = !DILocation(line: 150, column: 13, scope: !4888, inlinedAt: !4854)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !584, line: 149, column: 11)
!4889 = distinct !DILexicalBlock(scope: !4798, file: !584, line: 148, column: 13)
!4890 = !DILocation(line: 151, column: 17, scope: !4888, inlinedAt: !4854)
!4891 = !DILocation(line: 152, column: 34, scope: !4892, inlinedAt: !4854)
!4892 = distinct !DILexicalBlock(scope: !4888, file: !584, line: 151, column: 17)
!4893 = !DILocation(line: 153, column: 41, scope: !4888, inlinedAt: !4854)
!4894 = !DILocation(line: 153, column: 13, scope: !4888, inlinedAt: !4854)
!4895 = !DILocation(line: 157, column: 11, scope: !4789, inlinedAt: !4854)
!4896 = !DILocation(line: 171, column: 16, scope: !4787, inlinedAt: !4854)
!4897 = !DILocation(line: 162, column: 15, scope: !4787, inlinedAt: !4854)
!4898 = !DILocation(line: 173, column: 18, scope: !4786, inlinedAt: !4854)
!4899 = !DILocation(line: 173, column: 15, scope: !4787, inlinedAt: !4854)
!4900 = !DILocation(line: 180, column: 20, scope: !4785, inlinedAt: !4854)
!4901 = !DILocation(line: 178, column: 21, scope: !4785, inlinedAt: !4854)
!4902 = !DILocation(line: 181, column: 22, scope: !4784, inlinedAt: !4854)
!4903 = !DILocation(line: 181, column: 19, scope: !4785, inlinedAt: !4854)
!4904 = !DILocation(line: 184, column: 19, scope: !4905, inlinedAt: !4854)
!4905 = distinct !DILexicalBlock(scope: !4784, file: !584, line: 182, column: 17)
!4906 = !DILocation(line: 186, column: 17, scope: !4905, inlinedAt: !4854)
!4907 = !DILocation(line: 190, column: 25, scope: !4783, inlinedAt: !4854)
!4908 = !DILocation(line: 191, column: 26, scope: !4783, inlinedAt: !4854)
!4909 = !DILocation(line: 193, column: 19, scope: !4783, inlinedAt: !4854)
!4910 = !DILocation(line: 196, column: 23, scope: !4780, inlinedAt: !4854)
!4911 = !DILocation(line: 197, column: 23, scope: !4780, inlinedAt: !4854)
!4912 = !DILocalVariable(name: "__fp", arg: 1, scope: !4913, file: !868, line: 63, type: !4803)
!4913 = distinct !DISubprogram(name: "getc_unlocked", scope: !868, file: !868, line: 63, type: !4914, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4916)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!83, !4803}
!4916 = !{!4912}
!4917 = !DILocation(line: 63, column: 22, scope: !4913, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 201, column: 27, scope: !4780, inlinedAt: !4854)
!4919 = !DILocation(line: 65, column: 10, scope: !4913, inlinedAt: !4918)
!4920 = !DILocation(line: 195, column: 27, scope: !4780, inlinedAt: !4854)
!4921 = !DILocation(line: 202, column: 27, scope: !4780, inlinedAt: !4854)
!4922 = distinct !{!4922, !4923, !4926}
!4923 = !DILocation(line: 209, column: 27, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !584, line: 207, column: 25)
!4925 = distinct !DILexicalBlock(scope: !4780, file: !584, line: 206, column: 27)
!4926 = !DILocation(line: 211, column: 58, scope: !4924)
!4927 = !DILocation(line: 65, column: 10, scope: !4913, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 210, column: 33, scope: !4924, inlinedAt: !4854)
!4929 = !DILocation(line: 63, column: 22, scope: !4913, inlinedAt: !4928)
!4930 = !DILocation(line: 210, column: 29, scope: !4924, inlinedAt: !4854)
!4931 = distinct !{!4931, !4932, !4933}
!4932 = !DILocation(line: 193, column: 19, scope: !4782)
!4933 = !DILocation(line: 241, column: 21, scope: !4782)
!4934 = !DILocation(line: 216, column: 23, scope: !4780, inlinedAt: !4854)
!4935 = !DILocation(line: 217, column: 27, scope: !4936, inlinedAt: !4854)
!4936 = distinct !DILexicalBlock(scope: !4780, file: !584, line: 217, column: 27)
!4937 = !DILocation(line: 217, column: 64, scope: !4936, inlinedAt: !4854)
!4938 = !DILocation(line: 217, column: 27, scope: !4780, inlinedAt: !4854)
!4939 = !DILocation(line: 219, column: 28, scope: !4780, inlinedAt: !4854)
!4940 = !DILocation(line: 198, column: 30, scope: !4780, inlinedAt: !4854)
!4941 = !DILocation(line: 220, column: 28, scope: !4780, inlinedAt: !4854)
!4942 = !DILocation(line: 198, column: 34, scope: !4780, inlinedAt: !4854)
!4943 = !DILocation(line: 199, column: 29, scope: !4780, inlinedAt: !4854)
!4944 = !DILocation(line: 222, column: 36, scope: !4945, inlinedAt: !4854)
!4945 = distinct !DILexicalBlock(scope: !4780, file: !584, line: 222, column: 27)
!4946 = !DILocation(line: 222, column: 27, scope: !4780, inlinedAt: !4854)
!4947 = !DILocation(line: 225, column: 63, scope: !4948, inlinedAt: !4854)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !584, line: 223, column: 25)
!4949 = !DILocation(line: 225, column: 46, scope: !4948, inlinedAt: !4854)
!4950 = !DILocation(line: 226, column: 25, scope: !4948, inlinedAt: !4854)
!4951 = !DILocation(line: 229, column: 36, scope: !4952, inlinedAt: !4854)
!4952 = distinct !DILexicalBlock(scope: !4945, file: !584, line: 228, column: 25)
!4953 = !DILocation(line: 230, column: 73, scope: !4952, inlinedAt: !4854)
!4954 = !DILocation(line: 230, column: 46, scope: !4952, inlinedAt: !4854)
!4955 = !DILocation(line: 232, column: 35, scope: !4956, inlinedAt: !4854)
!4956 = distinct !DILexicalBlock(scope: !4780, file: !584, line: 232, column: 27)
!4957 = !DILocation(line: 232, column: 27, scope: !4780, inlinedAt: !4854)
!4958 = !DILocation(line: 236, column: 27, scope: !4959, inlinedAt: !4854)
!4959 = distinct !DILexicalBlock(scope: !4956, file: !584, line: 233, column: 25)
!4960 = !DILocation(line: 237, column: 27, scope: !4959, inlinedAt: !4854)
!4961 = !DILocation(line: 241, column: 21, scope: !4781, inlinedAt: !4854)
!4962 = !DILocation(line: 239, column: 39, scope: !4780, inlinedAt: !4854)
!4963 = !DILocation(line: 239, column: 50, scope: !4780, inlinedAt: !4854)
!4964 = !DILocation(line: 239, column: 61, scope: !4780, inlinedAt: !4854)
!4965 = !DILocalVariable(name: "__dest", arg: 1, scope: !4966, file: !4967, line: 88, type: !4970)
!4966 = distinct !DISubprogram(name: "strcpy", scope: !4967, file: !4967, line: 88, type: !4968, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4971)
!4967 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!42, !4970, !3950}
!4970 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!4971 = !{!4965, !4972}
!4972 = !DILocalVariable(name: "__src", arg: 2, scope: !4966, file: !4967, line: 88, type: !3950)
!4973 = !DILocation(line: 88, column: 1, scope: !4966, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 239, column: 23, scope: !4780, inlinedAt: !4854)
!4975 = !DILocation(line: 90, column: 49, scope: !4966, inlinedAt: !4974)
!4976 = !DILocation(line: 90, column: 10, scope: !4966, inlinedAt: !4974)
!4977 = !DILocation(line: 88, column: 1, scope: !4966, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 240, column: 23, scope: !4780, inlinedAt: !4854)
!4979 = !DILocation(line: 90, column: 49, scope: !4966, inlinedAt: !4978)
!4980 = !DILocation(line: 90, column: 10, scope: !4966, inlinedAt: !4978)
!4981 = !DILocation(line: 193, column: 19, scope: !4781, inlinedAt: !4854)
!4982 = !DILocation(line: 242, column: 19, scope: !4783, inlinedAt: !4854)
!4983 = !DILocation(line: 243, column: 32, scope: !4984, inlinedAt: !4854)
!4984 = distinct !DILexicalBlock(scope: !4783, file: !584, line: 243, column: 23)
!4985 = !DILocation(line: 243, column: 23, scope: !4783, inlinedAt: !4854)
!4986 = !DILocation(line: 247, column: 33, scope: !4987, inlinedAt: !4854)
!4987 = distinct !DILexicalBlock(scope: !4984, file: !584, line: 246, column: 21)
!4988 = !DILocation(line: 247, column: 45, scope: !4987, inlinedAt: !4854)
!4989 = !DILocation(line: 253, column: 11, scope: !4787, inlinedAt: !4854)
!4990 = !DILocation(line: 377, column: 23, scope: !4789, inlinedAt: !4854)
!4991 = !DILocation(line: 378, column: 5, scope: !4789, inlinedAt: !4854)
!4992 = !DILocation(line: 396, column: 15, scope: !4774)
!4993 = !DILocation(line: 590, column: 8, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4855, file: !584, line: 589, column: 3)
!4995 = !DILocation(line: 590, column: 17, scope: !4994)
!4996 = !DILocation(line: 589, column: 3, scope: !4855)
!4997 = !DILocation(line: 592, column: 9, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4994, file: !584, line: 592, column: 9)
!4999 = !DILocation(line: 592, column: 35, scope: !4998)
!5000 = !DILocation(line: 593, column: 9, scope: !4998)
!5001 = !DILocation(line: 593, column: 24, scope: !4998)
!5002 = !DILocation(line: 593, column: 31, scope: !4998)
!5003 = !DILocation(line: 593, column: 34, scope: !4998)
!5004 = !DILocation(line: 593, column: 45, scope: !4998)
!5005 = !DILocation(line: 592, column: 9, scope: !4994)
!5006 = !DILocation(line: 595, column: 29, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4998, file: !584, line: 594, column: 7)
!5008 = !DILocation(line: 595, column: 27, scope: !5007)
!5009 = !DILocation(line: 595, column: 46, scope: !5007)
!5010 = !DILocation(line: 596, column: 9, scope: !5007)
!5011 = !DILocation(line: 591, column: 19, scope: !4994)
!5012 = !DILocation(line: 591, column: 36, scope: !4994)
!5013 = !DILocation(line: 591, column: 16, scope: !4994)
!5014 = !DILocation(line: 591, column: 52, scope: !4994)
!5015 = !DILocation(line: 591, column: 69, scope: !4994)
!5016 = !DILocation(line: 591, column: 49, scope: !4994)
!5017 = distinct !{!5017, !4996, !5018}
!5018 = !DILocation(line: 597, column: 7, scope: !4855)
!5019 = !DILocation(line: 602, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4774, file: !584, line: 602, column: 7)
!5021 = !DILocation(line: 602, column: 18, scope: !5020)
!5022 = !DILocation(line: 602, column: 7, scope: !4774)
!5023 = !DILocation(line: 612, column: 3, scope: !4774)
